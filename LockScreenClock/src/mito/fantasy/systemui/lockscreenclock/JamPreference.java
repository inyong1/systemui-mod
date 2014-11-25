package mito.fantasy.systemui.lockscreenclock;
import android.os.*;
import android.preference.*;
import android.preference.Preference.*;
import mito.fantasy.systemui.lockscreenclock.inyong.*;
import android.content.*;
import android.provider.*;
import java.util.*;
import android.app.*;
import android.widget.*;
import android.view.*;

public class JamPreference extends PreferenceFragment implements OnPreferenceClickListener,OnPreferenceChangeListener
{


    private final Intent intent=new Intent("inyong.lockscreenclock");
    private final Intent intentJamDigital=new Intent(JamSetting.INTENT_ACTION);

    private SharedPreferences sharedPreference;
    private ContentResolver contentResolver;
    private PreferenceScreen prefScreen;
    private Preference
    prefCategoryJamAnalog,
    prefCategoryJamDigital,
    prefCheckBoxJamAktif,
    prefListJamYangAktif,
    prefJamAnalogPilihTema,
    prefJamDigitalPilihFont,
    prefJamDigitalPilihWarna;

    public void onCreate(Bundle savedInstanceState)
    {
        super.onCreate(savedInstanceState);
        addPreferencesFromResource(R.xml.preferences);
        sharedPreference = getPreferenceScreen().getSharedPreferences();
        contentResolver = getActivity().getContentResolver();
        prefScreen = (PreferenceScreen)findPreference("preference_screen");
        prefCategoryJamAnalog = findPreference("preference_category_jam_analog");
        prefCategoryJamDigital = findPreference("preference_category_jam_digital");
        prefCheckBoxJamAktif = findPreference(JamSetting.JAM_AKTIF);
        prefCheckBoxJamAktif.setOnPreferenceChangeListener(this);
        prefListJamYangAktif = findPreference(JamSetting.JAM_YANG_AKTIF);
        prefListJamYangAktif.setOnPreferenceChangeListener(this);
        prefJamAnalogPilihTema = findPreference(JamSetting.jamAnalogTemaSetting);
        prefJamAnalogPilihTema.setOnPreferenceClickListener(this);
        prefJamDigitalPilihFont = findPreference(JamSetting.JAM_FONT);
        prefJamDigitalPilihFont.setOnPreferenceClickListener(this);
        prefJamDigitalPilihWarna = findPreference(JamSetting.JAM_WARNA);
        prefJamDigitalPilihWarna.setOnPreferenceChangeListener(this);

  int i=Settings.System.getInt(contentResolver,JamSetting.JAM_YANG_AKTIF,1);
  tampilkanDanSembunyikanPref(i);
     //   
    }

    

  

    @Override
    public boolean onPreferenceClick(Preference pref)
    {
        if (pref.equals(prefJamAnalogPilihTema))
        {
            tampilkanDialogPilihTema();
        }
        else if (pref.equals(prefJamDigitalPilihFont))
        {
            tampilkanDialogPilihFont();
        }


        return true;
    }

    @Override
    public boolean onPreferenceChange(Preference pref, Object obj)
    {
        if (pref.equals(prefCheckBoxJamAktif))
        {
            boolean jamAktif=Boolean.valueOf(obj.toString());
            Settings.System.putInt(contentResolver, JamSetting.JAM_AKTIF, jamAktif ? 1: 0);
            getActivity().sendBroadcast(intent);
            getActivity().sendBroadcast(intentJamDigital);

        }
        else if (pref.equals(prefListJamYangAktif))
        {
            int jamYangAktif=Integer.valueOf(obj.toString());
            Settings.System.putInt(contentResolver, JamSetting.JAM_YANG_AKTIF, jamYangAktif);
            getActivity().sendBroadcast(intent);
            getActivity().sendBroadcast(intentJamDigital);
           tampilkanDanSembunyikanPref(jamYangAktif);
        }
        else if (pref.equals(prefJamDigitalPilihWarna))
        {
            int warna=Integer.valueOf(obj.toString());
            Settings.System.putInt(contentResolver, JamSetting.JAM_WARNA, warna);
            getActivity().sendBroadcast(intentJamDigital);
        }

        return true;
    }

    private void tampilkanDialogPilihTema()
    {
        ArrayList<Integer> listIdTema=new ArrayList<Integer>();
        for (Integer id:JamLatar.ID_LATAR_JAM)
        {
            listIdTema.add(id);
        }
        AlertDialog.Builder pilihTemaDialog=new AlertDialog.Builder(getActivity());
        pilihTemaDialog.setTitle(getActivity().getResources().getString(R.string.dialog_title_pilih_tema_jam_analg));
        pilihTemaDialog.setAdapter(new AdapterDialogPilihTema(getActivity(), listIdTema), new DialogInterface.OnClickListener(){

                @Override
                public void onClick(DialogInterface p1, int posisi)
                {
                    Settings.System.putInt(contentResolver, JamSetting.jamAnalogTemaSetting, posisi);
                    getActivity().sendBroadcast(intent);
                    //  toast( Settings.System.getInt(contentResolver,JamSetting.jamAnalogTemaSetting,0)+"");
                }
            });

        pilihTemaDialog.show();
    }

    private void tampilkanDialogPilihFont()
    {
        ArrayList<String> listfont=new ArrayList<String>();
        for (String s:JamSetting.fontDiAsset)listfont.add(s);

        AlertDialog.Builder pilihFont=new AlertDialog.Builder(getActivity());
        pilihFont.setTitle(getActivity().getResources().getString(R.string.dialog_title_digital_clock_pilih_font));
        pilihFont.setAdapter(new AdapterDialogPilihFont(getActivity(), listfont), new DialogInterface.OnClickListener(){

                @Override
                public void onClick(DialogInterface p1, int posisi)
                {
                    Settings.System.putInt(contentResolver, JamSetting.JAM_FONT, posisi);
                    getActivity().sendBroadcast(intentJamDigital);
                }
            });
        pilihFont.show();
    }

    
    private void tampilkanDanSembunyikanPref(int i){
        if (i == 1)
        {
            prefScreen.removePreference(prefCategoryJamDigital);
            prefScreen.addPreference(prefCategoryJamAnalog);
        }
        else
        {
            prefScreen.removePreference(prefCategoryJamAnalog);
            prefScreen.addPreference(prefCategoryJamDigital);
        }
    }
    
    private void toast(String s)
    {
        Toast.makeText(getActivity(), s, 500).show();
    }
}
