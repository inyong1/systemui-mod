package mito.fantasy.systemui.statusbardate.inyong;

import android.content.*;
import android.graphics.*;
import android.util.*;
import android.widget.*;
import java.text.*;
import java.util.*;
import android.view.*;
import android.provider.*;

public class DateView extends TextView
{
	Context context;
	private static IntentFilter intentFilter=new IntentFilter("inyong.statusbardate");
	private ContentResolver cResolver;
	private static Calendar calendar;
	private static Date date;
	private static String dateFormat;
	private static SimpleDateFormat dateFormater =null;

	private static String OutputDateString="";
	private static String prependText="";
	private static String appendText="";
	private static int textColor=Color.RED;
	private static int textStyle=1;
	private static int two_line=1;
	private static int aktif=0;
	private static float fontSize=10.5f;

	private void detekSetingPengguna()
	{
		prependText = Settings.System.getString(cResolver, DateViewSetting.PREPEND_TEKS);
		if (prependText != "" && prependText != null)
		{
			prependText += " ";
		}
		else prependText = "";
		appendText = Settings.System.getString(cResolver, DateViewSetting.APPEND_TEKS);
		if (appendText != "" && appendText != null)
		{
			appendText = " " + appendText;
		}
		else appendText = "";
		textColor = Settings.System.getInt(cResolver, DateViewSetting.WARNA_TEKS, Color.RED);
		textStyle = Settings.System.getInt(cResolver, DateViewSetting.STYLE_TEKS, 1);
		two_line = Settings.System.getInt(cResolver, DateViewSetting.MODE_DUA_BARIS, 1);
		if (two_line == 1)
		{
			fontSize = Settings.System.getFloat(cResolver, DateViewSetting.UKURAN_TEKS_DUA_BARIS, 10.5f);
			dateFormat = DateViewSetting.modeTanggalDuaBaris[Settings.System.getInt(cResolver, DateViewSetting.MODE_TANGGAL_DUA_BARIS, 3)];

		}
		else
		{
			fontSize = Settings.System.getFloat(cResolver, DateViewSetting.UKURAN_TEKS_SATU_BARIS, 16f);
			dateFormat = DateViewSetting.modeTanggalSatuBaris[Settings.System.getInt(cResolver, DateViewSetting.MODE_TANGGAL_SATU_BARIS, 4)];
		}

		aktif = Settings.System.getInt(cResolver, DateViewSetting.AKTIF, 0);
	}

	private final BroadcastReceiver receiver=new BroadcastReceiver(){
		public void onReceive(Context p1, Intent intent)
		{
			detekSetingPengguna();
			updateDate();
		}		
	};


	private void setUp()
	{
		cResolver = context.getContentResolver();
		calendar = Calendar.getInstance();
		date = calendar.getTime();
		setGravity(Gravity.CENTER);

	}

	public void onAttachedToWindow()
	{
		detekSetingPengguna();
		updateDate();
		intentFilter.addAction(Intent.ACTION_TIME_CHANGED);
		intentFilter.addAction(Intent.ACTION_TIME_TICK);
		intentFilter.addAction(Intent.ACTION_TIMEZONE_CHANGED);
		intentFilter.addAction(Intent.ACTION_LOCALE_CHANGED);

		context.registerReceiver(receiver, intentFilter);
	}
	public void onDetachedFromWindow()
	{
		context.unregisterReceiver(receiver);
	}

	private void updateDate()
	{
		if (aktif != 1)
		{
			setVisibility(View.GONE);
			return;
		}
		else setVisibility(View.VISIBLE);

		dateFormater = new SimpleDateFormat(dateFormat);
		date.setTime(System.currentTimeMillis());
		OutputDateString = dateFormater.format(date);
		setTextColor(textColor);
		setTextSize(fontSize);

		if (textStyle == 1)
		{
			setTypeface(null, Typeface.BOLD);
		}
		else if (textStyle == 2)
		{
			setTypeface(null, Typeface.ITALIC);
		}
		else if (textStyle == 3)
		{
			setTypeface(null, Typeface.BOLD_ITALIC);
		}
		else
		{
			setTypeface(null, Typeface.NORMAL);
		}

		setText((prependText + OutputDateString + appendText).trim());
	}


	public DateView(Context context)
	{
		super(context);
		this.context = context;
		setUp();
	}
	public DateView(Context context, AttributeSet attrs)
	{
		super(context, attrs);
		this.context = context;
		setUp();
	}
	public DateView(Context context, AttributeSet attrs, int defStyle)
	{
		super(context, attrs, defStyle);
		this.context = context;
		setUp();
	}
}
