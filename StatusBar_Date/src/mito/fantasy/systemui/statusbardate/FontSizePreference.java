package mito.fantasy.systemui.statusbardate;

import android.content.*;
import android.content.res.*;
import android.preference.*;
import android.util.*;
import android.view.*;
import android.view.View.*;
import android.widget.*;
import android.provider.*;

public class FontSizePreference extends Preference implements OnClickListener
{
		private Context context;
		ContentResolver contResolver;
		Button tombolPlus, tombolMinus;
		private String nama_setting_system;
		private String key;
		private float defaultValue;
		private float nilaiSekarang;
		protected static final Intent 	intent=new Intent("inyong.statusbardate");

		public FontSizePreference(Context context, AttributeSet attrs)
		{
				super(context, attrs);
				this.context = context;
				contResolver = context.getContentResolver();
				nama_setting_system = getKey();
				if (nama_setting_system.contains("satu"))
				{
						defaultValue = 16f;
				}
				else defaultValue = 10.5f;
				key = getKey();
		}



		@Override
    protected View onCreateView(ViewGroup parent)
		{

        View layout = View.inflate(context, R.layout.preference_font_size, null);
				tombolPlus = (Button)layout.findViewById(R.id.tombol_size_plus);
				tombolPlus.setOnClickListener(this);
				tombolMinus = (Button)layout.findViewById(R.id.tombol_size_minus);
				tombolMinus.setOnClickListener(this);
				setSummary(String.valueOf(readSavedValue()));
				return layout;
		}


		public void onClick(View view)
		{
				switch (view.getId())
				{
						case R.id.tombol_size_plus:
								naikkanUkuranFont();
								break;
						case R.id.tombol_size_minus:
								turunkanUkuranFont();
								break;
						default: break;
				}
		}

		private float readSavedValue()
		{
				return	Settings.System.getFloat(contResolver, key, defaultValue);
		}

		private void naikkanUkuranFont()
		{
				nilaiSekarang = readSavedValue();
				nilaiSekarang += 0.5f;
				simpanNilai(nilaiSekarang);
				setSummary(String.valueOf(nilaiSekarang));
		}

		private void turunkanUkuranFont()
		{
				nilaiSekarang = readSavedValue();
				nilaiSekarang -= 0.5f;
				simpanNilai(nilaiSekarang);
				setSummary(String.valueOf(nilaiSekarang));

		}

		private void simpanNilai(float nilai)
		{

				Settings.System.putFloat(contResolver, key, nilaiSekarang);
				context.sendBroadcast(intent);
		}
}
