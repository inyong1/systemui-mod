package mito.fantasy.systemui.lockscreenclock.inyong;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.BroadcastReceiver;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.os.CountDownTimer;
import android.os.Handler;
import android.text.format.Time;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Toast;
import android.widget.RemoteViews.RemoteView;

import java.util.TimeZone;
import mito.fantasy.systemui.lockscreenclock.*;
import android.provider.*;
import android.content.*;
import java.util.*;


@RemoteView
public class JamAnalogView extends View
{    
    private Time mCalendar;   
    private Drawable mHourHand,mMinuteHand,mSecondHand,mDial;
    private int mDialWidth,mDialHeight;
    private boolean mAttached;
    private final Handler mHandler = new Handler();
    private float mMinutes,mHour;
    private boolean mChanged;

    Context mContext;
    private IntentFilter filter;
    private Resources r;
    //----
    // untuk setingan
    private final int jamLatarDefault=R.drawable.jam_latar00;
    private final int jamJamDefault=R.drawable.jam_jam00;
    private final int jamMenitDefault=R.drawable.jam_menit00;
    private final int jamDetikDefault=R.drawable.jam_detik00;

    private ContentResolver contentResolver;
    private  static int jamTema=0;
    private boolean jamAktif=true;
    private boolean jamAnalogAktif=true;

    private void persiapan()
    {
        contentResolver = mContext.getContentResolver();
        r = mContext.getResources();
        filter = new IntentFilter("inyong.lockscreenclock");
        filter.addAction(Intent.ACTION_TIME_TICK);
        filter.addAction(Intent.ACTION_TIME_CHANGED);
        filter.addAction(Intent.ACTION_TIMEZONE_CHANGED);

        //   mDial = r.getDrawable(R.drawable.jam_latar00+jamTema);
        //  mHourHand = r.getDrawable(R.drawable.jam_jam00+jamTema);
        //  mMinuteHand = r.getDrawable(R.drawable.jam_menit00+jamTema);
        //  mSecondHand = r.getDrawable(R.drawable.jam_detik00);
        mDial = r.getDrawable(jamLatarDefault + jamTema);
        mHourHand = r.getDrawable(jamJamDefault + jamTema);
        mMinuteHand = r.getDrawable(jamMenitDefault + jamTema);
        mSecondHand = r.getDrawable(jamDetikDefault+jamTema);
        mCalendar = new Time();
        mDialWidth = mDial.getIntrinsicWidth();
        mDialHeight = mDial.getIntrinsicHeight();
       
    }

    private void detekSetting()
    {
        jamAktif=Settings.System.getInt(contentResolver,JamSetting.JAM_AKTIF,1)==1;
        jamTema = Settings.System.getInt(contentResolver, JamSetting.jamAnalogTemaSetting, 0);
        jamAnalogAktif = Settings.System.getInt(contentResolver, JamSetting.JAM_YANG_AKTIF, 1) == 1 ;
        //Toast.makeText(mContext,jamTema+"",500).show();
        mDial = r.getDrawable(jamLatarDefault + jamTema);
        mHourHand = r.getDrawable(jamJamDefault + jamTema);
        mMinuteHand = r.getDrawable(jamMenitDefault + jamTema);
        mSecondHand = r.getDrawable(jamDetikDefault+jamTema);
    }

    private void jalankanJam()
    {
        if (jamAktif&& jamAnalogAktif)
        {
            setVisibility(VISIBLE);
            onTimeChanged();
            counter.start();
        }
        else
        {
            setVisibility(GONE);
        }
       // Toast.makeText(mContext,String.valueOf(jamAktif)+" "+String.valueOf(jamAnalogAktif),1000).show();
    }

    @Override
    protected void onAttachedToWindow()
    {
        super.onAttachedToWindow();
        if (!mAttached)
        {
            mAttached = true;
            mContext.registerReceiver(mIntentReceiver, filter, null, mHandler);
            mCalendar = new Time();
            detekSetting();
            jalankanJam();
        }
    }

    @Override
    protected void onDetachedFromWindow()
    {
        super.onDetachedFromWindow();
        if (mAttached)
        {
            counter.cancel();
            getContext().unregisterReceiver(mIntentReceiver);
            mAttached = false;
        }
    }

    @Override
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec)
    {

        int widthMode = MeasureSpec.getMode(widthMeasureSpec);
        int widthSize =  MeasureSpec.getSize(widthMeasureSpec);
        int heightMode = MeasureSpec.getMode(heightMeasureSpec);
        int heightSize =  MeasureSpec.getSize(heightMeasureSpec);

        float hScale = 1.0f;
        float vScale = 1.0f;

        if (widthMode != MeasureSpec.UNSPECIFIED && widthSize < mDialWidth)
        {
            hScale = (float) widthSize / (float) mDialWidth;
        }

        if (heightMode != MeasureSpec.UNSPECIFIED && heightSize < mDialHeight)
        {
            vScale = (float )heightSize / (float) mDialHeight;
        }

        float scale = Math.min(hScale, vScale);

        setMeasuredDimension(resolveSize((int) (mDialWidth * scale), widthMeasureSpec),
                             resolveSize((int) (mDialHeight * scale), heightMeasureSpec));
    }

    @Override
    protected void onSizeChanged(int w, int h, int oldw, int oldh)
    {
        super.onSizeChanged(w, h, oldw, oldh);
        mChanged = true;
    }

    @Override
    protected void onDraw(Canvas canvas)
    {
        super.onDraw(canvas);

        boolean changed = mChanged;
        if (changed)
        {
            mChanged = false;
        }
        boolean seconds = mSeconds;
        if (seconds)
        {
            mSeconds = false;
        }
        int availableWidth = 220;
        int availableHeight = 220;

        int x = availableWidth / 2;
        int y = availableHeight / 2;

        final Drawable dial = mDial;
        int w = dial.getIntrinsicWidth();
        int h = dial.getIntrinsicHeight();

        boolean scaled = false;

        if (availableWidth < w || availableHeight < h)
        {
            scaled = true;
            float scale = Math.min((float) availableWidth / (float) w,
                                   (float) availableHeight / (float) h);
            canvas.save();
            canvas.scale(scale, scale, x, y);
        }

        if (changed)
        {
            dial.setBounds(x - (w / 2), y - (h / 2), x + (w / 2), y + (h / 2));
        }
        dial.draw(canvas);

        canvas.save();
        canvas.rotate(mHour / 12.0f * 360.0f, x, y);
        final Drawable hourHand = mHourHand;
        if (changed)
        {
            w = hourHand.getIntrinsicWidth();
            h = hourHand.getIntrinsicHeight();
            hourHand.setBounds(x - (w / 2), y - (h / 2), x + (w / 2), y + (h / 2));
        }
        hourHand.draw(canvas);
        canvas.restore();

        canvas.save();
        canvas.rotate(mMinutes / 60.0f * 360.0f, x, y);
        //canvas.rotate(mSecond, x, y);
        final Drawable minuteHand = mMinuteHand;
        if (changed)
        {
            w = minuteHand.getIntrinsicWidth();
            h = minuteHand.getIntrinsicHeight();
            minuteHand.setBounds(x - (w / 2), y - (h / 2), x + (w / 2), y + (h / 2));
        }
        minuteHand.draw(canvas);
        canvas.restore();
        canvas.save();
        canvas.rotate(mSecond, x, y);

        //minuteHand = mMinuteHand;
        if (seconds)
        {
            w = mSecondHand.getIntrinsicWidth();
            h = mSecondHand.getIntrinsicHeight();
            mSecondHand.setBounds(x - (w / 2), y - (h / 2), x + (w / 2), y + (h / 2));
        }
        mSecondHand.draw(canvas);
        canvas.restore();
        if (scaled)
        {
            canvas.restore();
        }
    }
    MyCount counter = new MyCount(10000, 1000);
    public class MyCount extends CountDownTimer
    {
        public MyCount(long millisInFuture, long countDownInterval)
        {
            super(millisInFuture, countDownInterval);
        }

        @Override
        public void onFinish()
        {
            counter.start();
        }

        @Override
        public void onTick(long millisUntilFinished)
        {
            mCalendar.setToNow();

            int hour = mCalendar.hour;
            int minute = mCalendar.minute;
            int second = mCalendar.second;

            mSecond = 6.0f * second;
            mSeconds = true;
            //mChanged = true;
            JamAnalogView.this.invalidate();
            //Toast.makeText(mContext, "text", 100).show();
        }
    }
    boolean mSeconds=false;
    float mSecond=0;
    private void onTimeChanged()
    {
        mCalendar.setToNow();

        int hour = mCalendar.hour;
        int minute = mCalendar.minute;
        int second = mCalendar.second;

        mMinutes = minute + second / 60.0f;
        mHour = hour + mMinutes / 60.0f;
        mChanged = true;
    }

    private final BroadcastReceiver mIntentReceiver = new BroadcastReceiver() {
        @Override
        public void onReceive(Context context, Intent intent)
        {
            if (intent.getAction().equals(Intent.ACTION_TIMEZONE_CHANGED))
            {
                String tz = intent.getStringExtra("time-zone");
                mCalendar = new Time(TimeZone.getTimeZone(tz).getID());
            }
            //    Toast.makeText(mContext,"test",500).show();
            detekSetting();
            jalankanJam();
            
            //  counter.cancel();
            //  counter.start();
        }
    };

    public JamAnalogView(Context context)
    {
        super(context);
        mContext = context;
        persiapan();
    }

    public JamAnalogView(Context context, AttributeSet attrs)
    {
        this(context, attrs, 0);
        mContext = context;
        persiapan();
    }

    public JamAnalogView(Context context, AttributeSet attrs,     int defStyle)
    {
        super(context, attrs, defStyle);
        mContext = context; 
        persiapan();
    }
}
