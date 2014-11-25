package mito.fantasy.systemui.statusbarclock;

import android.preference.*;
import android.preference.Preference.*;
import android.os.*;
import android.content.*;
import android.provider.*;
import android.widget.*;
import android.content.res.*;
import mito.fantasy.systemui.statusbarclock.R;
public class ClockViewPreference extends PreferenceFragment implements OnPreferenceChangeListener,OnPreferenceClickListener
{


		private final Intent intent=new Intent("inyong_statusbar_clock");
		private Context context;
		private Resources res;
		private ContentResolver contResolver;
		private SharedPreferences sharedPref;
		private		Preference
		jamAktifCheckBox,
		detikAktifCheckBox,
		jamPosisi,
		jamNamaHari,
		jamWarna;
		@Override
		public void onCreate(Bundle b)
		{
				super.onCreate(b);
				addPreferencesFromResource(R.xml.preferences);
				context = getActivity().getApplicationContext();
				contResolver = context.getContentResolver();
				res = context.getResources();
				sharedPref = getPreferenceScreen().getSharedPreferences();
				jamAktifCheckBox = findPreference("jam_aktif");
				jamAktifCheckBox.setOnPreferenceClickListener(this);
				detikAktifCheckBox = findPreference("detik_aktif");
				detikAktifCheckBox.setOnPreferenceClickListener(this);
				jamPosisi = findPreference("jam_yang_aktif");
				jamPosisi.setOnPreferenceChangeListener(this);
				jamNamaHari = findPreference("format_hari");
				jamNamaHari.setOnPreferenceChangeListener(this);
				jamWarna=findPreference("warna_jam");
				jamWarna.setOnPreferenceChangeListener(this);
				
				setsummary();
		}


		public boolean onPreferenceChange(Preference pref, Object obj)
		{
				if (pref.equals(jamPosisi))
				{
						Settings.System.putInt(contResolver, pref.getKey(), Integer.valueOf(obj.toString()));
				}
				else if (pref.equals(jamNamaHari))
				{
						Settings.System.putInt(contResolver, pref.getKey(), Integer.valueOf(obj.toString()));
				}else if(pref.equals(jamWarna)){
						Settings.System.putInt(contResolver,pref.getKey(),Integer.valueOf(obj.toString()));
				}
				context.sendBroadcast(intent);
				setsummary();
				return true;
		}

		public boolean onPreferenceClick(Preference pref)
		{
				if (pref.equals(jamAktifCheckBox))
				{
						boolean jamAktif=sharedPref.getBoolean(pref.getKey(), true);
						Settings.System.putInt(contResolver, pref.getKey(), jamAktif ? 1: 0);

				}
				else if (pref.equals(detikAktifCheckBox))
				{
						boolean detikAktif=sharedPref.getBoolean(pref.getKey(), false);
						Settings.System.putInt(contResolver, pref.getKey(), detikAktif ? 1: 0);
				}

				context.sendBroadcast(intent);
				setsummary();
				return true;
		}

		private void setsummary()
		{
				boolean jamAktif=sharedPref.getBoolean(jamAktifCheckBox.getKey(), true);
				jamAktifCheckBox.setSummary(jamAktif ? res.getString(R.string.summary_check_box_jam_aktif): res.getString(R.string.summary_check_box_jam_nonaktif));

				boolean detikAktif=sharedPref.getBoolean(detikAktifCheckBox.getKey(), false);
				detikAktifCheckBox.setSummary(detikAktif ? res.getString(R.string.summary_check_box_detik_jam_aktif): res.getString(R.string.summary_check_box_detik_jam_nonaktif));


				int posisiJam=Settings.System.getInt(contResolver, jamPosisi.getKey(), 2);
				String[] smuaPosisi=res.getStringArray(R.array.entries_list_pref_posisi_jam);
				jamPosisi.setSummary(smuaPosisi[posisiJam - 1]);
				
				int formatHari=Settings.System.getInt(contResolver,jamNamaHari.getKey(),2);
				String[] format2Hari=res.getStringArray(R.array.entries_list_pref_nama_hari);
				jamNamaHari.setSummary(format2Hari[formatHari]);
		}
}
