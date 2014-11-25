package mito.fantasy.systemui.appshortcut.inyong;

import android.content.*;
import android.content.pm.*;
import android.graphics.drawable.*;
import android.util.*;
import android.view.*;
import android.widget.*;
import android.widget.AdapterView.*;
import java.util.*;
import mito.fantasy.systemui.appshortcut.*;
import android.provider.*;

public class ShortCutListView extends ListView implements OnItemClickListener,OnItemLongClickListener
{

		public static final String NAMA_SETING_PACKAGE_STRING="daftar_package_tersimpan";
		public static final String NAMA_SETING_SHORTCUT_AKTIF="shortcut_aktif";
		public static final String DEFAULT_PACKAGE_STRING="com.bbm com.facebook.katana com.mediatek.filemanager com.android.gallery3d com.android.vending com.mediatek.FMRadio com.google.android.gm com.android.mms ";
		private	Context context;
		private PackageManager packageManager;
		private final IntentFilter intentFilter= new IntentFilter("inyong.appshortcutview");
		private Ikon ikon;
		private IkonAdapter ikonAdapter;
		private	ArrayList<Ikon> listIkon;
		private String packageStringTersimpan="";
		private int shortcutAktif=1;
		private ContentResolver contentResolver;
		private boolean teregister=false;

		private	BroadcastReceiver broadcastReceiver;
		//-----
		public ShortCutListView(Context context)
		{
				super(context);
				this.context = context;
				persiapan();
		}
		//-----
		public ShortCutListView(Context context, AttributeSet attrs)
		{
				super(context, attrs);
				this.context = context;
				persiapan();
		}
		//----
		public ShortCutListView(Context context, AttributeSet attrs, int defStyle)
		{
				super(context, attrs, defStyle);
				this.context = context;
				persiapan();
		}
		//-------
		private void persiapan()
		{
				contentResolver = context.getContentResolver();
				setDividerHeight(0);

				setOnItemClickListener(this);
				setOnItemLongClickListener(this);
				packageManager = context.getPackageManager();
				listIkon = new ArrayList<Ikon>();
				ikonAdapter = new IkonAdapter(context, listIkon);
				setAdapter(ikonAdapter);
				broadcastReceiver = new BroadcastReceiver(){

						public void onReceive(Context p1, Intent p2)
						{
								detekSeting();
								updateListIkonShortCut();
						}
				};
		}
		//------
		private void detekSeting()
		{ 	//Settings.System.putString(contentResolver, NAMA_SETING_PACKAGE_STRING, "");
				packageStringTersimpan = Settings.System.getString(contentResolver, NAMA_SETING_PACKAGE_STRING);
				if (packageStringTersimpan == null || packageStringTersimpan == "" || !packageStringTersimpan.contains("."))
				{
						packageStringTersimpan = DEFAULT_PACKAGE_STRING;
						Settings.System.putString(contentResolver, NAMA_SETING_PACKAGE_STRING, DEFAULT_PACKAGE_STRING);
				}
				//StringKu.STRING_NAMA_PACKAGE_TERSIMPAN=packageStringTersimpan;
				shortcutAktif=Settings.System.getInt(contentResolver,NAMA_SETING_SHORTCUT_AKTIF,1);
		}
		//--------
		public void onAttachedToWindow()
		{	
				if (!teregister)
				{
						teregister = true;
						context.registerReceiver(broadcastReceiver, intentFilter);
				}
				detekSeting();
				updateListIkonShortCut();
		}
		//-------
		public void onDetachedFromWindow()
		{
				if (teregister)
				{
						teregister = false;
						context.unregisterReceiver(broadcastReceiver);
				}

		}
		//-------
		private void updateListIkonShortCut()
		{
				if(shortcutAktif !=1){
						setVisibility(View.GONE);
				}else setVisibility(View.VISIBLE);
				String[] splitedPackageName=packageStringTersimpan.split(" ");
				if (splitedPackageName.length < 1)return;
				listIkon.clear();
				for (String packageString:splitedPackageName)
				{
						ikon = new Ikon();
						ikon.setNamaPackage(packageString);
						Drawable d=null;
						try
						{
								d = packageManager.getApplicationIcon(packageString);
						}
						catch (Exception e)
						{}
						ikon.setIkon(d);
						listIkon.add(ikon);
				}
				ikonAdapter.notifyDataSetChanged();

		}

  //  public static ArrayList<Ikon> getListIkon(){
    //    ArrayList<Ikon> hasil=new ArrayList<Ikon>();
        
     //   return hasil;
  //  }
		//--------
		public void onItemClick(AdapterView<?> adptr, View view, int posisi, long p4)
		{
				String namaPackage=listIkon.get(posisi).getNamaPackage();
				//	Toast.makeText(context,namaPackage+"tttt",1000).show();
				Intent i=packageManager.getLaunchIntentForPackage(namaPackage);
				//	i.addCategory(Intent.CATEGORY_LAUNCHER);
				//		i.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
                try{
				context.startActivity(i);	
                }catch(Exception e){
                    Log.e("klik recent shortcut",e.getMessage());
                }
		}

		public boolean onItemLongClick(AdapterView<?> p1, View p2, int p3, long p4)
		{
				//	Toast.makeText(context,"test",1000).show();
				//Intent i=packageManager.getLaunchIntentForPackage("mito.fantasy.systemui.appshortcut");
        Intent i=new Intent();
				i.setComponent(new ComponentName("mito.fantasy.systemui.appshortcut","mito.fantasy.systemui.appshortcut.MainActivity"));
				context.startActivity(i);
				return true;
		}
}
