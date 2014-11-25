package mito.fantasy.systemui.appshortcut;

import android.app.*; 
import android.content.*;
import android.content.pm.*;
import android.os.*;
import android.preference.*;
import android.provider.*;
import android.widget.*;
import java.util.*;
import mito.fantasy.systemui.appshortcut.inyong.*;
import android.graphics.drawable.*;
import android.content.pm.PackageManager.*;

public class ShortCutPreference extends PreferenceFragment implements Preference.OnPreferenceClickListener
{

	private ContentResolver contentResolver;
	private final Intent intent=new Intent("inyong.appshortcutview");
	private Preference 
	prefEnableDisable,
	prefTambahShortcut,
    prefDeletShorcut;
	private SharedPreferences 	sharedPref;

    private PackageManager packageManager;
    //  private ArrayList<DetilItemApp> listAppTemp;
    private ArrayList<DetilItemApp> listAppUrut;
    //   private ArrayList<DetilItemApp> listAppfinal;
    //  private ArrayList<DetilItemApp> listAppPadaShortcut;
    AdapterListAplikasi adapterListAplikasi;
    private Thread threadPekerja;
    private boolean prosesDibelakang;



	public void onCreate(Bundle b)
	{

		super.onCreate(b);
		addPreferencesFromResource(R.xml.preferences);
		contentResolver = getActivity().getContentResolver();
        packageManager = getActivity().getPackageManager();

        //     listAppTemp = new ArrayList<DetilItemApp>();
        listAppUrut = new ArrayList<DetilItemApp>();
        // listAppfinal=new ArrayList<DetilItemApp>();

        //  listAppPadaShortcut=new ArrayList<DetilItemApp>();

        buatListDibelakang();
		sharedPref = getPreferenceScreen().getSharedPreferences();
		prefEnableDisable = findPreference(ShortCutListView.NAMA_SETING_SHORTCUT_AKTIF);
		prefEnableDisable.setOnPreferenceClickListener(this);
		prefTambahShortcut = findPreference("tambah_shortcut");
		prefTambahShortcut.setOnPreferenceClickListener(this);
        prefDeletShorcut = findPreference("hapus_shortcut");
        prefDeletShorcut.setOnPreferenceClickListener(this);
	}


	public boolean onPreferenceClick(Preference pref)
	{
		if (pref.equals(prefEnableDisable))
		{
			boolean aktif=sharedPref.getBoolean(ShortCutListView.NAMA_SETING_SHORTCUT_AKTIF, true);	
			Settings.System.putInt(contentResolver, ShortCutListView.NAMA_SETING_SHORTCUT_AKTIF, aktif ? 1: 0);
		}
        else if (pref.equals(prefTambahShortcut))
        {
            if (prosesDibelakang)
            {
                tampilkanHarapTunggu();
            }
            else
            {
                tampilkanDialogTambahShortcut();
            }

		}
        else if (pref.equals(prefDeletShorcut))
        {//disable dialog hapus shortcut pake ikon
			//ganti pake dialog hapus multi choice
			//  tampilkanDialogHapusShortcut();
			tampilkanDialogHapusMulti();
        }
		getActivity().sendBroadcast(intent);
		return true;
	}

    private void tampilkanHarapTunggu()
    {
        final ProgressDialog progressDialog=ProgressDialog.show(getActivity(), null, getActivity().getResources().getString(R.string.membuat_list_app));
        final Handler handler = new Handler();
        new Thread(new Runnable(){

                @Override
                public void run()
                {
                    while (prosesDibelakang)
                    {
                        try
                        {
                            Thread.sleep(100);
                        }
                        catch (InterruptedException e)
                        {}
                    }
                    handler.post(new Runnable(){

                            @Override
                            public void run()
                            {
                                progressDialog.dismiss();
                                tampilkanDialogTambahShortcut();
                            }
                        });

                }
            }).start();

    }

    private void tampilkanDialogTambahShortcut()
    {
        AlertDialog.Builder dialog=new AlertDialog.Builder(getActivity());
        dialog.setTitle(getActivity().getResources().getString(R.string.pilih_aplikasi_tambah_shortcut));
        dialog.setAdapter(adapterListAplikasi, new Dialog.OnClickListener(){

                @Override
                public void onClick(DialogInterface p1, int posisi)
                {
                    tambahShorcut(listAppUrut.get(posisi).getNamaPackageAplikasi(), posisi);
                }
            });
        dialog.show();
    }

    private void tambahShorcut(String namaPackage, int posisi)
    {

        String tersimpan=Settings.System.getString(contentResolver, ShortCutListView.NAMA_SETING_PACKAGE_STRING);
        Settings.System.putString(contentResolver, ShortCutListView.NAMA_SETING_PACKAGE_STRING, String.valueOf(tersimpan + namaPackage + " "));
        // Toast.makeText(getActivity(),String.valueOf( tersimpan+namaPackage+" "),2000).show();
		//  listAppUrut.remove(posisi);
        getActivity().sendBroadcast(intent);
    }

    private void  tampilkanDialogHapusShortcut()
    {
        String tersimpan=Settings.System.getString(contentResolver, ShortCutListView.NAMA_SETING_PACKAGE_STRING);
        final String[] tersimpanArray=tersimpan.split(" ");
        if (tersimpanArray.length < 1)return;
        ArrayList<Ikon> listIkon=new ArrayList<Ikon>();
        Ikon ikon;
        for (String namaPackage:tersimpanArray)
        {
            ikon = new Ikon();
            Drawable d=null;
            try
            {
                d = packageManager.getApplicationIcon(namaPackage);
            }
            catch (Exception e)
            {}
            ikon.setIkon(d);
            listIkon.add(ikon);
        }
        AlertDialog.Builder dialog=new AlertDialog.Builder(getActivity());
        dialog.setTitle(getActivity().getResources().getString(R.string.title_dialog_hapus_shortcut));

        dialog.setAdapter(new IkonAdapter(getActivity(), listIkon), new DialogInterface.OnClickListener(){

                @Override
                public void onClick(DialogInterface p1, int posisi)
                {
                    String setelahDihapus="";
                    for (int i=0;i < tersimpanArray.length;i++)
                    {
                        if (i == posisi)
                        {
                            continue;
                        }
                        else
                        {
                            setelahDihapus += tersimpanArray[i] + " ";
                        }
                    }
                    Settings.System.putString(contentResolver, ShortCutListView.NAMA_SETING_PACKAGE_STRING, setelahDihapus);
                    getActivity().sendBroadcast(intent);
                    if (setelahDihapus.equals("") || !setelahDihapus.contains(" "))tampilkanDialogAutoDefault();
                }
            });

        dialog.show();
    }
    //--------
    boolean[] checklistArray; //untuk dialog delete shorcut multi
    //-------
    private void tampilkanDialogHapusMulti()
	{
		String tersimpan="";
		try
		{
			//Toast.makeText(getActivity(), "try", 500).show();
			//tersimpan= ShortCutListView.packageStringTersimpan;
		tersimpan = Settings.System.getString(getActivity().getContentResolver()/*contentResolver*/, "daftar_package_tersimpan");
		//tersimpan="com.bbm com.bbm com.bbm null ";
		}
		catch (Exception e)
		{
			Toast.makeText(getActivity(), "pembacaan setting gagal\n", 500).show();
			return;
		}
		//Toast.makeText(getActivity(), "pembacaan setting gagal", 500).show();
		final String[] strings=tersimpan.trim().split(" ");
		ArrayList<String> arrayStrings=new ArrayList<String>();
		for(String s:strings){
			if(!s.contains(".")) continue;
			arrayStrings.add(s);
		}
		
		if(arrayStrings.size() <1)return;
		
        

		
        String[] namaAppArrayTemp=new String[arrayStrings.size()];
		boolean[] arrayPackageOk=new boolean[arrayStrings.size()];
      for (int i=0;i < arrayStrings.size();i++)
		{
			arrayPackageOk[i]=true;
            try
            {
                namaAppArrayTemp[i] = packageManager.getApplicationInfo(arrayStrings.get(i), 0).loadLabel(packageManager).toString();
            }
            catch (PackageManager.NameNotFoundException e)
            {
				arrayPackageOk[i]=false;
			}
			//Toast.makeText(getActivity(),namaAppArrayTemp[i],500).show();
			
        }
		
	ArrayList<String> listAppValid=new ArrayList<String>();
ArrayList<String> listPackageValid=new ArrayList<String>();
		
		for(int i=0;i<arrayPackageOk.length;i++){
			if(arrayPackageOk[i]){
				listAppValid.add(namaAppArrayTemp[i]);
				listPackageValid.add(arrayStrings.get(i));
			}
		}
		
		final String[] arrayAppFinal=new String[listAppValid.size()];
		final String[] arrayPackageFinal=new String[listPackageValid.size()];
		checklistArray=new boolean[listAppValid.size()];
		for(int i=0;i<arrayAppFinal.length;i++){
			arrayAppFinal[i]=listAppValid.get(i);
			arrayPackageFinal[i]=listPackageValid.get(i);
			checklistArray[i]=false;
		}
		
  
        AlertDialog.Builder dialog=new AlertDialog.Builder(getActivity());
        dialog.setTitle(getActivity().getResources().getString(R.string.title_dialog_hapus_shortcut));
        dialog.setMultiChoiceItems(arrayAppFinal, checklistArray, new DialogInterface.OnMultiChoiceClickListener(){

                @Override
                public void onClick(DialogInterface p1, int posisi, boolean checked)
                {
					checklistArray[posisi] = checked;
                }
            });
        dialog.setNegativeButton(getResources().getString(R.string.dialog_batal), new DialogInterface.OnClickListener(){

                @Override
                public void onClick(DialogInterface p1, int p2)
                {
                    p1.dismiss();
                }
            });
        dialog.setPositiveButton("OK", new DialogInterface.OnClickListener(){

                @Override
                public void onClick(DialogInterface p1, int p2)
                {
                    String hasilHapus="";
                    for (int i=0;i < checklistArray.length;i++)
					{
                        if (checklistArray[i])
						{
                            continue;
                        }
						else
						{
                            hasilHapus +=arrayPackageFinal[i] + " ";
                        }
                    }
                    Settings.System.putString(contentResolver, ShortCutListView.NAMA_SETING_PACKAGE_STRING, hasilHapus);
                    getActivity().sendBroadcast(intent);
                    if (hasilHapus.equals("") || !hasilHapus.contains(" ") || !hasilHapus.contains("."))tampilkanDialogAutoDefault();
                }
            });
		dialog.show();
	
    }
    //--------
    private void tampilkanDialogAutoDefault()
    {
        AlertDialog.Builder dialog=new AlertDialog.Builder(getActivity());
        dialog.setTitle(getActivity().getResources().getString(R.string.title_dialog_auto_default_shortcut));
        dialog.setMessage(getActivity().getResources().getString(R.string.pesan_dialog_auto_default_shortcut));
        dialog.setPositiveButton("OK", new DialogInterface.OnClickListener(){

                @Override
                public void onClick(DialogInterface p1, int p2)
                {
                    p1.dismiss();
                }
            });
        dialog.show();
    }
    private void buatListDibelakang()
    {
        prosesDibelakang = true;
        threadPekerja = new Thread(new Runnable(){
                @Override
                public void run()
                {
                    adapterListAplikasi = new AdapterListAplikasi(getActivity(), listAppUrut);
                    Intent intent = new Intent(Intent.ACTION_MAIN, null);
                    intent.addCategory(Intent.CATEGORY_LAUNCHER);
                    List<ResolveInfo> listResolveInfo = packageManager.queryIntentActivities(intent, PackageManager.GET_META_DATA);
					// ArrayList<String> listStringApkPlusNamaPackage=new ArrayList<String>();
					Map<String,String> mapAppPackage=new HashMap<String,String>();
					//  String string="";
                    for (ResolveInfo resolveInfo:listResolveInfo)
                    {
						// string = resolveInfo.loadLabel(packageManager).toString() + " " + resolveInfo.activityInfo.packageName;
						// listStringApkPlusNamaPackage.add(string);
						mapAppPackage.put(resolveInfo.loadLabel(packageManager).toString(), resolveInfo.activityInfo.packageName);
                    }

					// Collections.sort(listStringApkPlusNamaPackage , new PembandingIgnoreCase());
					TreeMap<String, String> TreeMapAppPackage=new TreeMap<String,String>(mapAppPackage);
					//    String[] arrayStringTerpisah;
                    Drawable ikon=null;
                    DetilItemApp detilApp;
                    listAppUrut.clear();
					//   String tersimpan=Settings.System.getString(contentResolver, ShortCutListView.NAMA_SETING_PACKAGE_STRING);
					Set keySet=TreeMapAppPackage.keySet();
					Iterator itr= keySet.iterator();
					while (itr.hasNext())
					{
						String key= itr.next().toString();
						detilApp = new DetilItemApp();
						detilApp.setNamaAplikasi(key);
						detilApp.setNamaPackageAplikasi(TreeMapAppPackage.get(key));
						try
						{
							ikon = packageManager.getApplicationIcon(TreeMapAppPackage.get(key));
						}
						catch (Exception e)
						{}
						detilApp.setIkon(ikon);
						listAppUrut.add(detilApp);
					}
					/*
					 for (String stringGabungan:listStringApkPlusNamaPackage)
					 {
					 arrayStringTerpisah = stringGabungan.split(" ");
					 //    if (tersimpan.contains(arrayStringTerpisah[1]))continue;
					 try
					 {
					 ikon = packageManager.getApplicationIcon(arrayStringTerpisah[1]);
					 detilApp = new DetilItemApp();
					 detilApp.setIkon(ikon);
					 detilApp.setNamaAplikasi(arrayStringTerpisah[0]);
					 detilApp.setNamaPackageAplikasi(arrayStringTerpisah[1]);
					 listAppUrut.add(detilApp);
					 }
					 catch (Exception e)
					 {}
					 }

					 /* listAppTemp.clear();
                     DetilItemApp detilItemApp=null;
                     for (ResolveInfo resolveInfo:listResolveInfo)
                     {
                     detilItemApp = new DetilItemApp();
                     detilItemApp.setNamaAplikasi(resolveInfo.loadLabel(packageManager).toString());
                     detilItemApp.setNamaPackageAplikasi(resolveInfo.activityInfo.packageName);
                     detilItemApp.setIkon(resolveInfo.loadIcon(packageManager));
                     listAppTemp.add(detilItemApp);

                     }
                     */
                    listResolveInfo = null;
                    mapAppPackage = null;
                    TreeMapAppPackage = null;
					//   listStringApkPlusNamaPackage = null;
                    // listAppUrut.clear();
                    // listAppUrut.addAll(listAppTemp);
                    prosesDibelakang = false;
                    // listAppTemp.clear();



                }
            });   
        threadPekerja.start();   
    }

    private class PembandingIgnoreCase implements Comparator<String>
    {
        public int compare(String strA, String strB)
        {
            return strA.compareToIgnoreCase(strB);
        }
    }
}