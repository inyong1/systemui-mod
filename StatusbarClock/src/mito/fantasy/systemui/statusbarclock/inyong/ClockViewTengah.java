package mito.fantasy.systemui.statusbarclock.inyong;

import android.content.*;
import android.graphics.*;
import android.os.*;
import android.provider.*;
import android.text.*;
import android.text.format.*;
import android.text.style.*;
import android.util.*;
import android.view.*;
import android.view.View.*;
import android.widget.*;
import java.text.*;
import java.util.*;

import android.text.format.DateFormat;

/**
 * This widget display an analogic clock with two hands for hours and
 * minutes.
 */
public class ClockViewTengah extends TextView /*implements OnLongClickListener*/
    {


    private boolean mAttached;
    private Calendar mCalendar;
    private String mClockFormatString;
    private SimpleDateFormat mClockFormat;
    private static final int AM_PM_STYLE_NORMAL  = 0;
    private static final int AM_PM_STYLE_SMALL   = 1;
    private static final int AM_PM_STYLE_GONE    = 2;
    private static final int AM_PM_STYLE = AM_PM_STYLE_GONE;
    //------
    private   Handler handler;  
    private Runnable runnable;
    private Context context;
    private ContentResolver contentResolver;
    //-----
    private boolean jamAktif=true, detikAktif=false,detikjalan=false,jamKiri=false;
    private String formatHari="";
    private int warnaJam=Color.GREEN;

    private void detekSeting()
    {
        detikAktif = Settings.System.getInt(contentResolver, ClockViewSetting.DETIK_AKTIF, 0) == 1;
        jamKiri=Settings.System.getInt(contentResolver,ClockViewSetting.JAM_YANG_AKTIF,2)==2;
        formatHari=ClockViewSetting.FORMAT_TAMPILAN_HARI[Settings.System.getInt(contentResolver,ClockViewSetting.FORMAT_HARI,2)];
        if(!formatHari.toString().contains("E")) formatHari="";
        warnaJam = Settings.System.getInt(contentResolver, ClockViewSetting.WARNA_JAM,Color.WHITE);
        jamAktif=Settings.System.getInt(contentResolver,ClockViewSetting.JAM_AKTIF,1)==1;
    }

    private void setUp()
    {
        contentResolver = context.getContentResolver();
        handler = new Handler();
        setGravity(Gravity.CENTER);
    }



    private void updateClockMod()
    {
        if(!jamAktif){
            setVisibility(View.GONE);
            return;
        }
        if(jamKiri){
            setVisibility(View.VISIBLE);
        }else setVisibility(View.GONE);
        setTextColor(warnaJam);
        if (detikAktif)
        {
            jalankanDetik();
            detikjalan = true;
        }
        else if (detikjalan)
        {
            hentikanDetik();
            updateClock();
        }
        else updateClock();

    }

    public ClockViewTengah(Context context, AttributeSet attrs)
    {
        super(context, attrs);
        this.context = context;
        setUp();

    }

    @Override
    protected void onAttachedToWindow()
    {
        super.onAttachedToWindow();
     //   setOnLongClickListener(this);
        if (!mAttached)
        {
            mAttached = true;
            IntentFilter filter = new IntentFilter("inyong_statusbar_clock");
            filter.addAction(Intent.ACTION_TIME_TICK);
            filter.addAction(Intent.ACTION_TIME_CHANGED);
            filter.addAction(Intent.ACTION_TIMEZONE_CHANGED);
            filter.addAction(Intent.ACTION_CONFIGURATION_CHANGED);
            context.registerReceiver(mIntentReceiver, filter, null, getHandler());
        }

        mCalendar = Calendar.getInstance(TimeZone.getDefault());
        detekSeting();
        updateClockMod();
    }
    @Override
    protected void onDetachedFromWindow()
    {
        super.onDetachedFromWindow();
        if (mAttached)
        {
            context.unregisterReceiver(mIntentReceiver);
            mAttached = false;
        }
        hentikanDetik();
    }
    private final BroadcastReceiver mIntentReceiver = new BroadcastReceiver() {
        @Override
        public void onReceive(Context context, Intent intent)
        {
            String action = intent.getAction();
            if (action.equals(Intent.ACTION_TIMEZONE_CHANGED))
            {
                String tz = intent.getStringExtra("time-zone");
                mCalendar = Calendar.getInstance(TimeZone.getTimeZone(tz));
                if (mClockFormat != null)
                {
                    mClockFormat.setTimeZone(mCalendar.getTimeZone());
                }
            }         
            detekSeting();
            updateClockMod();
        }
    };
    final void updateClock()
    {


        mCalendar.setTimeInMillis(System.currentTimeMillis());
        setText(getSmallTime());
    }
    private final CharSequence getSmallTime()
    {
        boolean b24 = DateFormat.is24HourFormat(context);
        String format;
        if (b24)
        {
            format = "HH:mm";
            if(detikAktif)format="HH:mm:ss";
        }
        else
        {
            format = "h:mm a";
            if(detikAktif)format="h:mm:ss a";
        }
        if(formatHari !="") format=formatHari+" "+format;

        final char MAGIC1 = '\uEF00';
        final char MAGIC2 = '\uEF01';
        SimpleDateFormat sdf; 
        if (!format.equals(mClockFormatString))
        {
            /*
             * Search for an unquoted "a" in the format string, so we can
             * add dummy characters around it to let us find it again after
             * formatting and change its size.
             */
            if (AM_PM_STYLE != AM_PM_STYLE_NORMAL)
            {
                int a = -1;
                boolean quoted = false;
                for (int i = 0; i < format.length(); i++)
                {
                    char c = format.charAt(i);
                    if (c == '\'')
                    {
                        quoted = !quoted;
                    }
                    if (!quoted && c == 'a')
                    {
                        a = i;
                        break;
                    }
                }
                if (a >= 0)
                {
                    // Move a back so any whitespace before AM/PM is also in the alternate size.
                    final int b = a;
                    while (a > 0 && Character.isWhitespace(format.charAt(a - 1)))
                    {
                        a--;
                    }
                    format = format.substring(0, a) + MAGIC1 + format.substring(a, b)
                        + "a" + MAGIC2 + format.substring(b + 1);
                }
            }
            mClockFormat = sdf = new SimpleDateFormat(format);
            mClockFormatString = format;
        }
        else
        {
            sdf = mClockFormat;
        }
        String result = sdf.format(mCalendar.getTime());
        //-----
        if (formatHari.equals("EE"))
        {
            char[] resultArray=result.toCharArray();
            String resultAkhir="";
            for (int i=0;i < resultArray.length;i++)
            {
                if (i != 2) resultAkhir += resultArray[i];
            }
            result = resultAkhir;
        }
        //------
        if (AM_PM_STYLE != AM_PM_STYLE_NORMAL)
        {
            int magic1 = result.indexOf(MAGIC1);
            int magic2 = result.indexOf(MAGIC2);
            if (magic1 >= 0 && magic2 > magic1)
            {
                SpannableStringBuilder formatted = new SpannableStringBuilder(result);
                if (AM_PM_STYLE == AM_PM_STYLE_GONE)
                {
                    formatted.delete(magic1, magic2 + 1);
                }
                else
                {
                    if (AM_PM_STYLE == AM_PM_STYLE_SMALL)
                    {
                        CharacterStyle style = new RelativeSizeSpan(0.7f);
                        formatted.setSpan(style, magic1, magic2,
                                          Spannable.SPAN_EXCLUSIVE_INCLUSIVE);
                    }
                    formatted.delete(magic2, magic2 + 1);
                    formatted.delete(magic1, magic1 + 1);
                }
                return formatted;
            }
        }

        return result;
    }

    //---------
    private Runnable settingRunnable()
    {
        return  new Runnable(){
            public void run()
            {
                updateClock();
                long sekarang=SystemClock.uptimeMillis();
                long selanjutnya=sekarang + (1000 - sekarang % 100);
                handler.postAtTime(runnable, selanjutnya);
            } 
        };

    }
    private void jalankanDetik()
    {
        if (detikjalan) return;
        if (runnable == null)runnable = settingRunnable();
        runnable.run();
    }

    private void hentikanDetik()
    {
        runnable = null;
        detikjalan = false;
    }

/*
    @Override
    public boolean onLongClick(View p1)
    {

        context. startActivity(new Intent().setComponent(new ComponentName("mito.fantasy.systemui.statusbarclock","mito.fantasy.systemui.statusbarclock.MainActivity")));
        return true;
    }
*/
}

