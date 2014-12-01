package com.android.systemui.batteryview.inyong;

import android.content.*;
import android.content.res.*;
import android.graphics.*;
import android.os.*;
import android.provider.*;
import android.util.*;
import android.view.*;
import android.widget.*;
import com.android.systemui.*;

public class BatteryStandart extends View implements DemoMode
{
    public static final String TAG = BatteryStandart.class.getSimpleName();
    public static final String ACTION_LEVEL_TEST = "com.android.systemui.BATTERY_LEVEL_TEST";

    public static final boolean ENABLE_PERCENT = true;
    public static final boolean SINGLE_DIGIT_PERCENT = false;
    public boolean SHOW_100_PERCENT = false;

    public static final int BATTERY_STYLE_NORMAL                = 0;
    public static final int BATTERY_STYLE_PERCENT               = 1;
    public static final int BATTERY_STYLE_ICON_PERCENT          = 2;
    public static final int BATTERY_STYLE_CIRCLE                = 3;
    public static final int BATTERY_STYLE_CIRCLE_PERCENT        = 4;
    public static final int BATTERY_STYLE_DOTTED_CIRCLE         = 5;
    public static final int BATTERY_STYLE_DOTTED_CIRCLE_PERCENT = 6;
    public static final int BATTERY_STYLE_ICON_JBSTYLE_PERCENT  = 7;
    public static final int BATTERY_STYLE_GONE                  = 8;

	//   private static final int OPAQUE_MASK = 0xff000000;
	//  private static final int FRAME_MASK = 0x66000000;

    public static final int FULL = 96;
    public static final int EMPTY = 4;

    public static final float SUBPIXEL = 0.4f;  // inset rects for softer edges

    int[] mColors;

	private boolean activated=true;
	private boolean batteryStandartAktif=false;
	private int batteryWarna=Color.WHITE;
	//private boolean batteryPersen=false;

    boolean mShowIcon = true;
    boolean mIsQuickSettings = false;
    boolean mShowPercent = false;
    Paint mFramePaint, mBatteryPaint, mWarningTextPaint, mTextPaint, mBoltPaint;
    int mButtonHeight;
    private float mTextHeight, mWarningTextHeight;

    private int mHeight;
    private int mWidth;
    private String mWarningString;
    private final float[] mBoltPoints;
    private final Path mBoltPath = new Path();

    private final RectF mFrame = new RectF();
    private final RectF mButtonFrame = new RectF();
    private final RectF mClipFrame = new RectF();
    private final RectF mBoltFrame = new RectF();

    private int mBatteryStyle;
    private int mBatteryColor;
    private int mPercentageColor;
    private int mPercentageChargingColor;
    private boolean mPercentageOnly = false;
    private String mBatteryTypeView;

    private boolean mCustomColor;
    private int systemColor;
	private Context mContext;

    private class BatteryTracker extends BroadcastReceiver
	{
        public static final int UNKNOWN_LEVEL = -1;

        // current battery status
        int level = UNKNOWN_LEVEL;
        String percentStr;
        int plugType;
        boolean plugged;
        int health;
        int status;
        String technology;
        int voltage;
        int temperature;
        boolean testmode = false;

        @Override
        public void onReceive(Context context, Intent intent)
		{
            final String action = intent.getAction();
            if (action.equals(Intent.ACTION_BATTERY_CHANGED))
			{
                if (testmode && ! intent.getBooleanExtra("testmode", false)) return;

                level = (int)(100f
					* intent.getIntExtra(BatteryManager.EXTRA_LEVEL, 0)
					/ intent.getIntExtra(BatteryManager.EXTRA_SCALE, 100));

                plugType = intent.getIntExtra(BatteryManager.EXTRA_PLUGGED, 0);
                plugged = plugType != 0;
                health = intent.getIntExtra(BatteryManager.EXTRA_HEALTH,
											BatteryManager.BATTERY_HEALTH_UNKNOWN);
                status = intent.getIntExtra(BatteryManager.EXTRA_STATUS,
											BatteryManager.BATTERY_STATUS_UNKNOWN);
                technology = intent.getStringExtra(BatteryManager.EXTRA_TECHNOLOGY);
                voltage = intent.getIntExtra(BatteryManager.EXTRA_VOLTAGE, 0);
                temperature = intent.getIntExtra(BatteryManager.EXTRA_TEMPERATURE, 0);

				//    setContentDescription(
				//		context.getString(R.string.accessibility_battery_level, level));
                updateSettings(mIsQuickSettings);
            }
			else if (action.equals(ACTION_LEVEL_TEST))
			{
                testmode = true;
                post(new Runnable() {
						int curLevel = 0;
						int incr = 1;
						int saveLevel = level;
						int savePlugged = plugType;
						Intent dummy = new Intent(Intent.ACTION_BATTERY_CHANGED);
						@Override
						public void run()
						{
							if (curLevel < 0)
							{
								testmode = false;
								dummy.putExtra("level", saveLevel);
								dummy.putExtra("plugged", savePlugged);
								dummy.putExtra("testmode", false);
							}
							else
							{
								dummy.putExtra("level", curLevel);
								dummy.putExtra("plugged", incr > 0 ? BatteryManager.BATTERY_PLUGGED_AC : 0);
								dummy.putExtra("testmode", true);
							}
							getContext().sendBroadcast(dummy);

							if (!testmode) return;

							curLevel += incr;
							if (curLevel == 100)
							{
								incr *= -1;
							}
							postDelayed(this, 200);
						}
					});
            }
			else if (action.equals(BatterySettings.INTENT_STRING))
			{
				updateSettings(false);
			}
        }
    }

    BatteryTracker mTracker = new BatteryTracker();

    @Override
    public void onAttachedToWindow()
	{
        super.onAttachedToWindow();

        IntentFilter filter = new IntentFilter(BatterySettings.INTENT_STRING);
        filter.addAction(Intent.ACTION_BATTERY_CHANGED);
		filter.addAction(BatterySettings.INTENT_STRING);
		//    filter.addAction(ACTION_LEVEL_TEST);
        final Intent sticky = getContext().registerReceiver(mTracker, filter);
        if (sticky != null)
		{
            // preload the battery level
            mTracker.onReceive(getContext(), sticky);
        }
    }

    @Override
    public void onDetachedFromWindow()
	{
        super.onDetachedFromWindow();

        getContext().unregisterReceiver(mTracker);
    }

    public BatteryStandart(Context context)
	{
        this(context, null, 0);
		this.mContext = context;
    }

    public BatteryStandart(Context context, AttributeSet attrs)
	{
        this(context, attrs, 0);
		this.mContext = context;
    }

    public BatteryStandart(Context context, AttributeSet attrs, int defStyle)
	{
        super(context, attrs, defStyle);
		this.mContext = context;
		//   final Resources res = context.getResources();
		//    TypedArray levels = res.obtainTypedArray(com.android.systemui.R.array.batterymeter_color_levels);
		int[] levels=new int[]{4,15,100};
		//  TypedArray colors = res.obtainTypedArray(com.android.systemui.R.array.batterymeter_color_values);
		int[] colors =new int[]{Color.argb(255, 255, 51, 0),Color.argb(255, 251, 51, 0),Color.WHITE};
		//  TypedArray batteryType = context.obtainStyledAttributes(attrs,
		//														com.android.systemui.R.styleable.BatteryIcon, 0, 0);
		// mBatteryTypeView = batteryType.getString(
        //    com.android.systemui.R.styleable.BatteryIcon_batteryView);

		//   if (mBatteryTypeView == null) {
		mBatteryTypeView = "statusbar";
		//   }

        final int N = levels.length;
        mColors = new int[2 * N];
        for (int i=0; i < N; i++)
		{
            mColors[2 * i] = levels[i];//.getInt(i, 0);
            mColors[2 * i + 1] = colors[i];
        }
		// levels.recycle();
		// colors.recycle();
		//   batteryType.recycle();

        mWarningString = "!";// context.getString(R.string.battery_meter_very_low_overlay_symbol);

        mFramePaint = new Paint(Paint.ANTI_ALIAS_FLAG);
        mFramePaint.setDither(true);
        mFramePaint.setStrokeWidth(0);
        mFramePaint.setStyle(Paint.Style.FILL_AND_STROKE);
        mFramePaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_ATOP));

        mBatteryPaint = new Paint(Paint.ANTI_ALIAS_FLAG);
        mBatteryPaint.setDither(true);
        mBatteryPaint.setStrokeWidth(0);
        mBatteryPaint.setStyle(Paint.Style.FILL_AND_STROKE);

        mTextPaint = new Paint(Paint.ANTI_ALIAS_FLAG);
        mTextPaint.setTextAlign(Paint.Align.CENTER);

        mWarningTextPaint = new Paint(Paint.ANTI_ALIAS_FLAG);
        mWarningTextPaint.setColor(mColors[1]);
        Typeface font = Typeface.create("sans-serif-condensed", Typeface.BOLD);
        mWarningTextPaint.setTypeface(font);
        mWarningTextPaint.setTextAlign(Paint.Align.CENTER);

        mBoltPaint = new Paint();
        mBoltPaint.setAntiAlias(true);
		mBoltPoints = loadBoltPoints();
        setLayerType(View.LAYER_TYPE_SOFTWARE, null);

        updateSettings(mIsQuickSettings);
    }

    private static float[] loadBoltPoints()
	{
        final int[] pts  =new int[]{73,0,392,0,201,259,442,259,4,703,157,334,0,334};
		//res.getIntArray(R.array.batterymeter_bolt_points);
        int maxX = 0, maxY = 0;
        for (int i = 0; i < pts.length; i += 2)
		{
            maxX = Math.max(maxX, pts[i]);
            maxY = Math.max(maxY, pts[i + 1]);
        }
        final float[] ptsF = new float[pts.length];
        for (int i = 0; i < pts.length; i += 2)
		{
            ptsF[i] = (float)pts[i] / maxX;
            ptsF[i + 1] = (float)pts[i + 1] / maxY;
        }
        return ptsF;
    }

    @Override
    protected void onSizeChanged(int w, int h, int oldw, int oldh)
	{
        mHeight = h;
        mWidth = w;
        mWarningTextPaint.setTextSize(h * 0.75f);
        mWarningTextHeight = -mWarningTextPaint.getFontMetrics().ascent;
    }

    private int getColorForLevel(int percent)
	{
        int thresh, color = 0;
        for (int i=0; i < mColors.length; i += 2)
		{
            thresh = mColors[i];
            color = mColors[i + 1];
            if (percent <= thresh) return color;
        }
        return color;
    }


    @Override
    public void draw(Canvas c)
	{
        BatteryTracker tracker = mDemoMode ? mDemoTracker : mTracker;
        final int level = tracker.level;

        if (level == BatteryTracker.UNKNOWN_LEVEL) return;

        float drawFrac = (float) level / 100f;
        final int pt = getPaddingTop();
        final int pl = getPaddingLeft();
        final int pr = getPaddingRight();
        final int pb = getPaddingBottom();
        int height = mHeight - pt - pb;
		int width = mWidth - pl - pr;

        mButtonHeight = (int) (height * 0.12f);

        if (mBatteryStyle == BATTERY_STYLE_ICON_JBSTYLE_PERCENT)
		{
            mFrame.set(0, 0, (width / 3), height);
            mFrame.offset(pl + ((width / 3) * 2), pt);
        }
		else
		{
            mFrame.set(0, 0, width, height);
            mFrame.offset(pl, pt);
        }

        mButtonFrame.set(
			mFrame.left + width * 0.25f,
			mFrame.top,
			mFrame.right - width * 0.25f,
			mFrame.top + mButtonHeight + 5);

        mButtonFrame.top += SUBPIXEL;
        mButtonFrame.left += SUBPIXEL;
        mButtonFrame.right -= SUBPIXEL;

        mFrame.top += mButtonHeight;
        mFrame.left += SUBPIXEL;
        mFrame.top += SUBPIXEL;
        mFrame.right -= SUBPIXEL;
        mFrame.bottom -= SUBPIXEL;

        // first, draw the battery shape
        if (mShowIcon)
		{
            c.drawRect(mFrame, mFramePaint);
        }

        if (level >= FULL)
		{
            drawFrac = 1f;
        }
		else if (level <= EMPTY)
		{
            drawFrac = 0f;
        }

        if (mShowIcon)
		{
            c.drawRect(mButtonFrame, drawFrac == 1f ? mBatteryPaint : mFramePaint);
        }
        mClipFrame.set(mFrame);
        mClipFrame.top += (mFrame.height() * (1f - drawFrac));

        c.save(Canvas.CLIP_SAVE_FLAG);
        c.clipRect(mClipFrame);
        if (mShowIcon)
		{
            c.drawRect(mFrame, mBatteryPaint);
        }
        c.restore();

        if (tracker.plugged && !mPercentageOnly)
		{
            // draw the bolt
            final float bl = mFrame.left + mFrame.width() / 4.5f;
            final float bt = mFrame.top + mFrame.height() / 6f;
            final float br = mFrame.right - mFrame.width() / 7f;
            final float bb = mFrame.bottom - mFrame.height() / 10f;
            if (mBoltFrame.left != bl || mBoltFrame.top != bt
				|| mBoltFrame.right != br || mBoltFrame.bottom != bb)
			{
                mBoltFrame.set(bl, bt, br, bb);
                mBoltPath.reset();
                mBoltPath.moveTo(
					mBoltFrame.left + mBoltPoints[0] * mBoltFrame.width(),
					mBoltFrame.top + mBoltPoints[1] * mBoltFrame.height());
                for (int i = 2; i < mBoltPoints.length; i += 2)
				{
                    mBoltPath.lineTo(
						mBoltFrame.left + mBoltPoints[i] * mBoltFrame.width(),
						mBoltFrame.top + mBoltPoints[i + 1] * mBoltFrame.height());
                }
                mBoltPath.lineTo(
					mBoltFrame.left + mBoltPoints[0] * mBoltFrame.width(),
					mBoltFrame.top + mBoltPoints[1] * mBoltFrame.height());
            }
            c.drawPath(mBoltPath, mBoltPaint);
        }
		else if (level <= EMPTY && mBatteryStyle == BATTERY_STYLE_NORMAL)
		{
            final float x = mWidth * 0.5f;
            final float y = (mHeight + mWarningTextHeight) * 0.48f;
            c.drawText(mWarningString, x, y, mWarningTextPaint);
        }
        if (mShowPercent && !(mBatteryStyle == BATTERY_STYLE_ICON_PERCENT && tracker.plugged))
		{
            if (mPercentageOnly)
			{
                DisplayMetrics metrics = mContext.getResources().getDisplayMetrics();
                if (mBatteryTypeView.equals("statusbar"))
				{
                    mTextPaint.setTextSize((int) (metrics.density * 16f));
                }
				else if (mBatteryTypeView.equals("quicksettings"))
				{
                    mTextPaint.setTextSize((int) (metrics.density * 22f + 0.5f));
                }
            }
			else if (mBatteryStyle == BATTERY_STYLE_ICON_PERCENT)
			{
                mTextPaint.setTextSize(height *
									   (SINGLE_DIGIT_PERCENT ? 0.75f
									   : (tracker.level == 100 ? 0.38f : 0.5f)));
            }
			else if (mBatteryStyle == BATTERY_STYLE_ICON_JBSTYLE_PERCENT)
			{
                DisplayMetrics metrics = mContext.getResources().getDisplayMetrics();
                if (mBatteryTypeView.equals("statusbar"))
				{
                    mTextPaint.setTextSize(height *
										   (SINGLE_DIGIT_PERCENT ? 0.95f
										   : (tracker.level == 100 ? 0.58f : 0.7f)));
                }
				else if (mBatteryTypeView.equals("quicksettings"))
				{
                    mTextPaint.setTextSize((int) (metrics.density * 14f + 0.5f));
                }
            }
            mTextHeight = -mTextPaint.getFontMetrics().ascent;

            String str;
            if (mPercentageOnly)
			{
                str = String.valueOf(SINGLE_DIGIT_PERCENT ? (level / 10) : level) + "%";
            }
			else
			{
                str = String.valueOf(SINGLE_DIGIT_PERCENT ? (level / 10) : level);
            }

            final float x;
            if (mBatteryStyle == BATTERY_STYLE_ICON_JBSTYLE_PERCENT)
			{
				if (mBatteryTypeView.equals("statusbar"))
				{
					x = (mWidth * 0.5f) - (mWidth * 0.25f);
				}
				else if (mBatteryTypeView.equals("quicksettings"))
				{
					x = (mWidth * 0.5f) - (mWidth * 0.2f);
				}
				else
				{
					x = mWidth * 0.5f;
				}
            }
			else
			{
				x = mWidth * 0.5f;
            }
            final float y = (mHeight + mTextHeight) * 0.47f;
            c.drawText(str,
					   x,
					   y,
					   mTextPaint);
        }
    }

    private boolean mDemoMode;
    private BatteryTracker mDemoTracker = new BatteryTracker();

    @Override
    public void dispatchDemoCommand(String command, Bundle args)
	{
        if (!mDemoMode && command.equals(COMMAND_ENTER))
		{
            mDemoMode = true;
            mDemoTracker.level = mTracker.level;
            mDemoTracker.plugged = mTracker.plugged;
        }
		else if (mDemoMode && command.equals(COMMAND_EXIT))
		{
            mDemoMode = false;
            postInvalidate();
        }
		else if (mDemoMode && command.equals(COMMAND_BATTERY))
		{
			String level = args.getString("level");
			String plugged = args.getString("plugged");
			if (level != null)
			{
				mDemoTracker.level = Math.min(Math.max(Integer.parseInt(level), 0), 100);
			}
			if (plugged != null)
			{
				mDemoTracker.plugged = Boolean.parseBoolean(plugged);
			}
			postInvalidate();
        }
    }

    public void updateSettings(final boolean isQuickSettingsTile)
	{
        ContentResolver resolver = mContext.getContentResolver();

		/*NORMAL    = 0;
		 PERCENT     = 1;
		 PERCENT      = 2;
		 CIRCLE       = 3;
		 CIRCLE_PERCENT=4;
		 DOTTED_CIRCLE = 5;
		 DOTTED_CIRCLE_PERCENT = 6;
		 ICON_JBSTYLE_PERCENT  = 7;
		 GONE           = 8;
		 */
        //Settings.System.getIntFor.User(resolver,
		//						  Settings.System.STATUS_BAR_BATTERY, 0, UserHandle.USER_CURRENT);

		activated = Settings.System.getInt(resolver, BatterySettings.BATTERY_AKTIF, 1) == 1;

		batteryStandartAktif = Settings.System.getInt(resolver, BatterySettings.BATTERY_YANG_AKTIF, 2) == 1;
		setVisibility(activated && batteryStandartAktif ? View.VISIBLE : View.GONE);

		batteryWarna = Settings.System.getInt(resolver, BatterySettings.BATTERY_WARNA, Color.WHITE);

		mBatteryStyle = Settings.System.getInt(resolver, BatterySettings.BATTERY_STANDART_PERSEN, 0) == 1 ? 7: 0;

		/*   mIsQuickSettings = isQuickSettingsTile;

		 if (isQuickSettingsTile && mBatteryStyle == BATTERY_STYLE_GONE)
		 {
		 mBatteryStyle = BATTERY_STYLE_NORMAL;
		 }
		 */
        mBatteryColor = batteryWarna;// Settings.System.getIntForUser(resolver,
		//					  Settings.System.STATUS_BAR_BATTERY_COLOR, -2, UserHandle.USER_CURRENT);
        mPercentageColor =batteryWarna;// Settings.System.getIntForUser(resolver,
		//				 Settings.System.STATUS_BAR_BATTERY_TEXT_COLOR, -2, UserHandle.USER_CURRENT);
        mPercentageChargingColor = Color.argb(178, 0, 0, 0);// Settings.System.getIntForUser(resolver,
		//						 Settings.System.STATUS_BAR_BATTERY_TEXT_CHARGING_COLOR, -2,
		//					 UserHandle.USER_CURRENT);
        mCustomColor = true;// Settings.System.getInt(resolver, BatterySettings.BATTERY_WARNA_CUSTOM, 0) == 1; //Settings.System.getIntForUser(resolver,
		//					 Settings.System.CUSTOM_SYSTEM_ICON_COLOR, 0, UserHandle.USER_CURRENT) == 1;
        systemColor = Color.GRAY;// Settings.System.getIntForUser(resolver,
		//				Settings.System.SYS.TEM_ICON_COLOR, -2, UserHandle.USER_CURRENT);
//
		/* boolean activated = (mBatteryStyle == BATTERY_STYLE_NORMAL ||
		 mBatteryStyle == BATTERY_STYLE_PERCENT ||
		 mBatteryStyle == BATTERY_STYLE_ICON_PERCENT ||
		 mBatteryStyle == BATTERY_STYLE_ICON_JBSTYLE_PERCENT);
		 */


        if (activated)
		{
            LinearLayout.LayoutParams lp = null;
            float width = 0f;
            float height = 0f;
            Resources res = mContext.getResources();
            DisplayMetrics metrics = res.getDisplayMetrics();
            if (mBatteryTypeView.equals("statusbar"))
			{
                height = metrics.density * 16f + 0.5f;
                if (mBatteryStyle == BATTERY_STYLE_PERCENT)
				{
                    width = metrics.density * 38f + 0.5f;
                }
				else if (mBatteryStyle == BATTERY_STYLE_ICON_JBSTYLE_PERCENT)
				{
                    width = metrics.density * 22f + 0.5f;
                }
				else
				{
                    width = metrics.density * 10.5f + 0.5f;
                }
                lp = new LinearLayout.LayoutParams((int) width, (int) height);
                lp.setMarginStart((int) (metrics.density * 6f + 0.5f));
                lp.setMargins(0, 0, 0, (int) (metrics.density * 0.5f + 0.5f));
                setLayoutParams(lp);
            }
			else if (mBatteryTypeView.equals("quicksettings"))
			{
                height = metrics.density * 32f + 0.5f;
                if (mBatteryStyle == BATTERY_STYLE_PERCENT)
				{
                    width = metrics.density * 52f + 0.5f;
                }
				else if (mBatteryStyle == BATTERY_STYLE_ICON_JBSTYLE_PERCENT)
				{
                    width = metrics.density * 37f + 0.5f;
                }
				else
				{
                    width = metrics.density * 22f + 0.5f;
                }
                lp = new LinearLayout.LayoutParams((int) width, (int) height);
                lp.gravity = Gravity.TOP | Gravity.CENTER_HORIZONTAL;
                setLayoutParams(lp);
            }

            updateBattery();
        }
    }

    private void updateBattery()
	{
        mPercentageOnly = false;
        SHOW_100_PERCENT = false;

        Typeface font = Typeface.create("sans-serif-condensed", Typeface.BOLD);
        if (mBatteryStyle == BATTERY_STYLE_NORMAL)
		{
            mShowIcon = true;
            mShowPercent = false;
        }
		else if (mBatteryStyle == BATTERY_STYLE_ICON_PERCENT)
		{
            mShowIcon = true;
            mShowPercent = true;
            SHOW_100_PERCENT = true;
        }
		else if (mBatteryStyle == BATTERY_STYLE_ICON_JBSTYLE_PERCENT)
		{
            font = Typeface.create("sans-serif", Typeface.NORMAL);
            mShowIcon = true;
            mShowPercent = true;
            SHOW_100_PERCENT = true;
        }
		else if (mBatteryStyle == BATTERY_STYLE_PERCENT)
		{
            font = Typeface.create("sans-serif", Typeface.NORMAL);
            mShowIcon = false;
            mShowPercent = true;
            mPercentageOnly = true;
            SHOW_100_PERCENT = true;
        }
        mTextPaint.setTypeface(font);

        BatteryTracker tracker = mDemoMode ? mDemoTracker : mTracker;

        if (tracker.level <= 15 && !tracker.plugged)
		{
            mBatteryPaint.setColor(Color.RED);
            mFramePaint.setColor(Color.rgb(80, 80, 80));// mContext.getResources().getColor(
			// R.color.batterymeter_frame_color_low));
        }
		else if (mCustomColor)
		{
            mBatteryPaint.setColor(batteryWarna);// DevUtils.extractRGB(mBatteryColor) | OPAQUE_MASK);
            mFramePaint.setColor(Color.rgb(80, 80, 80));// DevUtils.extractRGB(mBatteryColor) | FRAME_MASK);

		}
		/*else if (mBatteryColor == -2)
		 {
		 mBatteryPaint.setColor(Color.GREEN);// mContext.getResources().getColor(
		 //   R.color.batterymeter_charge_color));
		 mFramePaint.setColor(Color.GREEN);// mContext.getResources().getColor(
		 // R.color.batterymeter_frame_color));
		 }*/
		else
		{
            mBatteryPaint.setColor(Color.WHITE);// DevUtils.extractRGB(mBatteryColor) | OPAQUE_MASK);
            mFramePaint.setColor(Color.rgb(80, 80, 80));// DevUtils.extractRGB(mBatteryColor) | FRAME_MASK);
        }

        boolean isInLevelCharge = false;
        if (tracker.level <= 15 && (mBatteryStyle == BATTERY_STYLE_PERCENT
			|| mBatteryStyle == BATTERY_STYLE_ICON_JBSTYLE_PERCENT
			|| mBatteryStyle == BATTERY_STYLE_ICON_PERCENT))
		{
            mTextPaint.setColor(Color.RED);
            isInLevelCharge = true;
        }
		else if (tracker.level >= 90 && tracker.plugged &&
				 (mBatteryStyle == BATTERY_STYLE_PERCENT
				 || mBatteryStyle == BATTERY_STYLE_ICON_JBSTYLE_PERCENT))
		{
            mTextPaint.setColor(Color.GREEN);
            isInLevelCharge = true;
        }
		/*else if (mPercentageColor == -2)
		 {
		 if (mBatteryStyle == BATTERY_STYLE_ICON_PERCENT)
		 {
		 mTextPaint.setColor(mContext.getResources().getColor(
		 R.color.batterymeter_bolt_color));
		 }
		 else
		 {
		 mTextPaint.setColor(mContext.getResources().getColor(
		 R.color.batterymeter_charge_color));
		 }
		 }*/
		else
		{
			mTextPaint.setColor(mPercentageColor);
        }

        if (tracker.plugged)
		{
            if (mPercentageChargingColor == -2)
			{
                if (mBatteryStyle == BATTERY_STYLE_PERCENT)
				{
                    mBoltPaint.setColor(Color.GREEN);//  mContext.getResources().getColor(
					//R.color.batterymeter_charge_color));
                }
				else
				{
                    mBoltPaint.setColor(Color.BLACK);//mContext.getResources().getColor(
					//R.color.batterymeter_bolt_color));
                }
            }
			else
			{
                mBoltPaint.setColor(mPercentageChargingColor);
            }
            if (mBatteryStyle == BATTERY_STYLE_PERCENT && !isInLevelCharge)
			{
                mTextPaint.setColor(mBoltPaint.getColor());
            }
        }
        postInvalidate();
    }
}
