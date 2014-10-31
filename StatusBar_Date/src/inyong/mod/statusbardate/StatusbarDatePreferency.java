package inyong.mod.statusbardate;
import android.content.*;
import android.graphics.*;
import android.os.*;
import android.preference.*;
import android.preference.Preference.*;
import android.provider.*;
import android.widget.*;

public  class StatusbarDatePreferency extends PreferenceFragment implements OnPreferenceChangeListener,OnPreferenceClickListener 
{

		private static final 	Intent intent=new Intent("inyong.statusbardate");
		ContentResolver contResolver;
		Button tombolSizeMin, tombolSizePlus;
		private PreferenceCategory categoryDateMode,categoryDateStyle;
		private	Preference
		checkBoxEnable,
		checkBoxDateMode,
		dateFormatDuaBaris,
		dateFormatSatuBaris,
		dateStyle,
		dateSizeSatuBaris,
		dateSizeDuaBaris,
		dateColor,
		datePrependText,
		dateAppendText;

		private SharedPreferences sharedPref;

		public void onCreate(Bundle savedInstanceState)
		{
        super.onCreate(savedInstanceState);
				addPreferencesFromResource(R.xml.preferences);
				sharedPref = getPreferenceScreen().getSharedPreferences();
				categoryDateMode = (PreferenceCategory)findPreference("category_date_mode");
				categoryDateStyle = (PreferenceCategory) findPreference("category_date_style");
				checkBoxEnable = findPreference("aktifkan");
				checkBoxEnable.setOnPreferenceClickListener(this);
				checkBoxDateMode = findPreference("mode_dua_baris");
				checkBoxDateMode.setOnPreferenceClickListener(this);
				dateFormatDuaBaris = findPreference("mode_tanggal_dua_baris");
				dateFormatDuaBaris.setOnPreferenceChangeListener(this);
				dateFormatSatuBaris = findPreference("mode_tanggal_satu_baris");
				dateFormatSatuBaris.setOnPreferenceChangeListener(this);
				dateStyle = findPreference("style_teks");
				dateStyle.setOnPreferenceChangeListener(this);
				dateSizeSatuBaris = findPreference("ukuran_teks_satu_baris");
				dateSizeDuaBaris = findPreference("ukuran_teks_dua_baris");
				dateColor = findPreference("warna_teks_tanggal");
				dateColor.setOnPreferenceChangeListener(this);
				datePrependText = findPreference("prepend_teks");
				datePrependText.setOnPreferenceChangeListener(this);
				dateAppendText = findPreference("append_teks");
				dateAppendText.setOnPreferenceChangeListener(this);
				contResolver = getActivity().getContentResolver();
				setSummary();

		}

		public boolean onPreferenceChange(Preference pref, Object obj)
		{
				if (pref.equals(dateFormatDuaBaris))
				{
						Settings.System.putInt(contResolver, dateFormatDuaBaris.getKey(), Integer.valueOf(obj.toString()));}
				else if (pref.equals(dateFormatSatuBaris))
				{
						Settings.System.putInt(contResolver, dateFormatSatuBaris.getKey(), Integer.valueOf(obj.toString())); }
				else if (pref.equals(dateStyle))
				{
						Settings.System.putInt(contResolver, dateStyle.getKey(), Integer.valueOf(obj.toString()));
				}
				else if (pref.equals(dateColor))
				{
						Settings.System.putInt(contResolver, dateColor.getKey(), Integer.valueOf(obj.toString()));
				}
				else if (pref.equals(datePrependText))
				{
						Settings.System.putString(contResolver, datePrependText.getKey(), obj.toString());
				}
				else if (pref.equals(dateAppendText))
				{
						Settings.System.putString(contResolver, dateAppendText.getKey(), obj.toString());
				}

				getActivity().sendBroadcast(intent);
				setSummary();
				return true;
		}

		public boolean onPreferenceClick(Preference pref)
		{
				if (pref.equals(checkBoxEnable))
				{
						if (sharedPref.getBoolean(checkBoxEnable.getKey(), true))
						{
								Settings.System.putInt(contResolver, checkBoxEnable.getKey(), 1);
						}
						else
								Settings.System.putInt(contResolver, checkBoxEnable.getKey(), 0);
				}
				else if (pref.equals(checkBoxDateMode))
				{

						if (sharedPref.getBoolean(checkBoxDateMode.getKey(), true))
						{
								Settings.System.putInt(contResolver, checkBoxDateMode.getKey(), 1);
						}
						else Settings.System.putInt(contResolver, checkBoxDateMode.getKey(), 0);
				}


				getActivity().sendBroadcast(intent);
				setSummary();
				return true;
		}


		private void setSummary()
		{
				if (Settings.System.getInt(contResolver, checkBoxDateMode.getKey(), 1) == 1)
				{
						//checkBoxDateMode.setDefaultValue(true);	
						categoryDateMode.removePreference(dateFormatSatuBaris);
						categoryDateMode.addPreference(dateFormatDuaBaris);
						categoryDateStyle.removePreference(dateSizeSatuBaris);
						categoryDateStyle.addPreference(dateSizeDuaBaris);
				}
				else
				{

						//		checkBoxDateMode.setDefaultValue(false);
						categoryDateMode.removePreference(dateFormatDuaBaris);
						categoryDateMode.addPreference(dateFormatSatuBaris);
						categoryDateStyle.removePreference(dateSizeDuaBaris);
						categoryDateStyle.addPreference(dateSizeSatuBaris);
				}	

				int dateFormatSatuBarisValue=Settings.System.getInt(contResolver, dateFormatSatuBaris.getKey(), 4);
				String dateFormatSatuBarisEntry=getResources().getStringArray(R.array.entries_mode_tanggal_satu_baris)[dateFormatSatuBarisValue];
				dateFormatSatuBaris.setSummary(dateFormatSatuBarisEntry);

				int dateFormatDuaBarisValue=Settings.System.getInt(contResolver, dateFormatDuaBaris.getKey(), 3);
				String dateFormatDuaBarisEntry=getResources().getStringArray(R.array.entries_mode_tanggal_dua_baris)[dateFormatDuaBarisValue];
				dateFormatDuaBaris.setSummary(dateFormatDuaBarisEntry);

				int dateStyleValue=Settings.System.getInt(contResolver, dateStyle.getKey(), 1);
				String dateStyleEntry=getResources().getStringArray(R.array.entries_list_pref_style_tanggal)[dateStyleValue];
				dateStyle.setSummary(dateStyleEntry);

				if (Settings.System.getInt(contResolver, checkBoxEnable.getKey(), 1) == 1)
				{
						checkBoxEnable.setSummary(getResources().getString(R.string.summary_enabled_chekbox_pref_enable_date));
				}
				else checkBoxEnable.setSummary(getResources().getString(R.string.summary_disabled_chekbox_pref_enable_date));

				String prependText=Settings.System.getString(contResolver, datePrependText.getKey());
				prependText=String.valueOf(prependText);
				if (prependText != "" && prependText != null)
				{
						datePrependText.setSummary(prependText);
				}else if (prependText.trim().length() <=0)datePrependText.setSummary(getResources().getString(R.string.summary_prepend_text));

				String appendText=Settings.System.getString(contResolver, dateAppendText.getKey());
				appendText=String.valueOf(appendText);
				if (appendText != "" && appendText != null){
						dateAppendText.setSummary(appendText);
				}else if (appendText.trim().length() <=0)dateAppendText.setSummary(getResources().getString(R.string.summary_append_text));

		}



}
