package com.android.systemui.batteryview;

import android.preference.*;
import android.preference.Preference.*;
import android.os.*;
import com.android.systemui.batteryview.inyong.*;
import android.provider.*;
import android.content.*;

public class BatteryPreference extends PreferenceFragment implements OnPreferenceChangeListener
{
	private ContentResolver contResolver;
	private Intent intent=new Intent("inyong.batteryview");
	private Preference
	prefCheckboxBatteryAktif,
	prefListBatteryYangAktif,
	prefStyleIkonBulat,
	prefPersenIkonStandar,
	prefWarnaIkon;

	PreferenceScreen prefScreen;
	@Override
	public void onCreate(Bundle savedInstanceState)
	{

		// TODO: Implement this method
		super.onCreate(savedInstanceState);
		addPreferencesFromResource(R.xml.preferences);

		contResolver = getActivity().getContentResolver();

		prefScreen = (PreferenceScreen) findPreference("preferensi");

		prefCheckboxBatteryAktif = findPreference(BatterySettings.BATTERY_AKTIF);
		prefCheckboxBatteryAktif.setOnPreferenceChangeListener(this);

		prefListBatteryYangAktif = findPreference(BatterySettings.BATTERY_YANG_AKTIF);
		prefListBatteryYangAktif.setOnPreferenceChangeListener(this);

		prefStyleIkonBulat = findPreference(BatterySettings.BATTERY_BULAT_STYLE);
		prefStyleIkonBulat.setOnPreferenceChangeListener(this);

		prefPersenIkonStandar = findPreference(BatterySettings.BATTERY_STANDART_PERSEN);
		prefPersenIkonStandar.setOnPreferenceChangeListener(this);

		prefWarnaIkon = findPreference(BatterySettings.BATTERY_WARNA);
		prefWarnaIkon.setOnPreferenceChangeListener(this);

		int ikon=Settings.System.getInt(contResolver, BatterySettings.BATTERY_YANG_AKTIF, 2);
		hideDannUnhidePref(ikon);
	}

	@Override
	public boolean onPreferenceChange(Preference pref, Object objNilai)
	{
		// TODO: Implement this method
		if (pref.equals(prefCheckboxBatteryAktif))
		{
			final boolean aktif=Boolean.valueOf(objNilai.toString());
			Settings.System.putInt(contResolver, BatterySettings.BATTERY_AKTIF, aktif ? 1: 0);
		}
		else if (pref.equals(prefListBatteryYangAktif))
		{
			int yangAktif=Integer.valueOf(objNilai.toString());
			Settings.System.putInt(contResolver, BatterySettings.BATTERY_YANG_AKTIF, yangAktif);
			hideDannUnhidePref(yangAktif);
		}
		else if (pref.equals(prefStyleIkonBulat))
		{
			int style=Integer.valueOf(objNilai.toString());
			Settings.System.putInt(contResolver, BatterySettings.BATTERY_BULAT_STYLE, style);
		}
		else if (pref.equals(prefPersenIkonStandar))
		{
			boolean persenAktif=Boolean.valueOf(objNilai.toString());
			Settings.System.putInt(contResolver, BatterySettings.BATTERY_STANDART_PERSEN, persenAktif ? 1: 0);
		}
		else if (pref.equals(prefWarnaIkon))
		{
			int warna=Integer.valueOf(objNilai.toString());
			Settings.System.putInt(contResolver, BatterySettings.BATTERY_WARNA, warna);
		}



		getActivity().sendBroadcast(intent);
		return true;
	}

	private void hideDannUnhidePref(int ikonStandart)
	{	
		if (ikonStandart == 1)
		{
			prefScreen.addPreference(prefPersenIkonStandar);
			prefScreen.removePreference(prefStyleIkonBulat);
		}
		else
		{
			prefScreen.addPreference(prefStyleIkonBulat);
			prefScreen.removePreference(prefPersenIkonStandar);

		}
	}



}
