package mito.fantasy.systemui.carrierbackground;

import android.app.*;
import android.content.*;
import android.content.res.*;
import android.database.*;
import android.graphics.*;
import android.media.*;
import android.net.*;
import android.os.*;
import android.provider.*;
import android.view.*;
import android.widget.*;
import java.io.*;
import java.util.*;

public class MainActivity extends Activity implements View.OnClickListener
{

		Context context;

		private Resources res;
		private ListView listView;
		private ArrayList<ItemGambar> listItemGambar;
		private AdapterKu adapter;

		private Button tombol;

		private AssetManager assetManager;
		private final String namaFolderDiAsset="carrier_bg";

		private String filebg;
		private final Intent broadcastIntent=new Intent("inyong.carriermod");
    /** Called when the activity is first created. */
    @Override
    public void onCreate(Bundle savedInstanceState)
		{
        super.onCreate(savedInstanceState);
        setContentView(R.layout.main);
				context = getApplicationContext();
				res = getResources();
				filebg = getFilesDir() + "/bg.png";
				tombol = (Button) findViewById(R.id.tombol_ganti_latar);
				tombol.setOnClickListener(this);
				//	listView = (ListView)findViewById(R.id.listview);
				//		listItemGambar = new ArrayList<ItemGambar>();
				//		adapter = new AdapterKu(context, listItemGambar);
				//			listView.setAdapter(adapter);

				//-----TEST
				/*		ItemGambar itemGambar=new ItemGambar();
				 itemGambar.setBitmap(BitmapFactory.decodeResource(getResources(), R.drawable.ic_launcher));
				 listItemGambar.add(itemGambar);
				 adapter.notifyDataSetChanged();
				 */
    }

		//------
		String[] pilihan;
		public void onClick(View v)
		{ 
				pilihan = new String[]{res.getString(R.string.dari_koleksi_system),res.getString(R.string.dari_galery)};
				AlertDialog.Builder dialog=new AlertDialog.Builder(this);
				dialog.setTitle(res.getString(R.string.pilih_gambar));
				dialog.setItems(pilihan, new DialogInterface.OnClickListener(){

								public void onClick(DialogInterface p1, int posisi)
								{
										// TODO: Implement this method
										if (posisi == 0)
										{
												tampilkanPilihanGambarBawaan();
										}
										else tampilkanPencarianGambarGallery();
								}
						});
				dialog.show();
		}

		private void tampilkanPilihanGambarBawaan()
		{
				assetManager = context.getAssets();
				String[] file2diAsset=null;
				try
				{
						file2diAsset = assetManager.list(namaFolderDiAsset);
				}
				catch (IOException e)
				{}
				if (file2diAsset == null) return;
				listItemGambar = new ArrayList<ItemGambar>();
				for (String file:file2diAsset)
				{
						ItemGambar item=new ItemGambar();
						item.setNamaFile(file);
						try
						{
								item.setBitmap(BitmapFactory.decodeStream(assetManager.open(namaFolderDiAsset + "/" + file)));
						}
						catch (IOException e)
						{}
						listItemGambar.add(item);
				}
				listView = new ListView(context);
				adapter = new AdapterKu(context, listItemGambar);
				AlertDialog.Builder dialog=new AlertDialog.Builder(this);
				dialog.setTitle(res.getString(R.string.pilih_gambar));	
				dialog.setAdapter(adapter, new DialogInterface.OnClickListener(){
								public void onClick(DialogInterface p1, int posisi)
								{
										// TODO: Implement this method
										ItemGambar item=listItemGambar.get(posisi);
										String namafile=item.getNamaFile();
										ambilFileDariAsset(namafile);				
								}
						});
				dialog.show();
		}

		private void ambilFileDariAsset(String file)
		{
				try
				{
						//	Toast.makeText(this,"test",500).show();
						InputStream is=assetManager.open(namaFolderDiAsset + "/" + file);
						terapkanFile(is);			
				}
				catch (IOException e)
				{
						Toast.makeText(this, "kode_error 11", 500).show();
				}
		}

		private void terapkanFile(final InputStream is)
		{
				File fileLama=new File(filebg);
				if (fileLama.exists()) fileLama.delete();
				try
				{
						OutputStream os=new FileOutputStream(fileLama);
						byte[] buffer=new byte[1024];
						int baca;
						while ((baca = is.read(buffer)) != -1)
						{
								os.write(buffer, 0, baca);
						}
						is.close();
						os.close();

						if (fileLama.exists())
						{
								fileLama = new File(filebg);
								fileLama.setReadable(true, false);
								sendBroadcast(broadcastIntent);
						}
						else
						{
								Toast.makeText(this, "kode_error 10", 500).show();
						} 
				}
				catch (Exception a)
				{
						Toast.makeText(this, "kode error 15", 500).show();
				}
		}

		private void tampilkanPencarianGambarGallery()
		{
				//	Toast.makeText(this,"blm dikerjakan",500).show();
				Intent i=new Intent(Intent.ACTION_PICK);
				i.setType("image/*");
				startActivityForResult((Intent.createChooser(i, res.getString(R.string.open_with))), 123456);
		}

		public void onActivityResult(int kodePesanan, int kodeHasil, Intent data)
		{
				if (kodeHasil == RESULT_OK)
				{
						if (kodePesanan == 123456)
						{
								Uri urihasil=data.getData();
								String hasil=getDir(urihasil);
								File file=new File(hasil);
								if (!file.exists())
								{
										Toast.makeText(this, "kode error 14", 500).show();
										return;
								}
								//	try
								//	{
								//			InputStream istream=new FileInputStream(file);
								//			terapkanFile(istream);
								//	}
								//	catch (FileNotFoundException e)
								//	{}
								//	Toast.makeText(this,hasil,2000).show();

								//-----------
								// mencoba tidak mengambil file imagenya secara full
								// tapi cukup ambil thumbnailnya saja
								potongDanSimpanGambar(hasil);
						}
						else Toast.makeText(this, "kode error 13", 500).show();
				}
				else	Toast.makeText(this, "kode error 12", 500).show();
		}

		/// method getdir ngambil dr sc jmkl
		private String getDir(Uri contentUri)
		{
				String[] proj = { MediaStore.Images.Media.DATA };
				CursorLoader loader = new CursorLoader(getBaseContext(), contentUri,
																							 proj, null, null, null);
				Cursor cursor = loader.loadInBackground();
				int column_index = cursor
						.getColumnIndexOrThrow(MediaStore.Images.Media.DATA);
				cursor.moveToFirst();
				return cursor.getString(column_index);
		}

//ambil file dr galery 
		// ambil thumbnailnya saja sebesar 540*300
		private void potongDanSimpanGambar(String filePath)
		{
				Bitmap bm=null;
				try
				{
						bm = BitmapFactory.decodeFile(filePath);
						int lebar=bm.getWidth(), lebarMau=540,tinggiMau=300, tinggi=bm.getHeight();
						if (lebar > lebarMau || tinggi > tinggiMau)
						{
								bm = ThumbnailUtils.extractThumbnail(bm, lebarMau, tinggiMau);
						}
				}
				catch (Exception e)
				{}


				if (bm == null)
				{
						Toast.makeText(this, "kode error 16", 500).show();
						return;
				}

				File fileAkhir=new File(filebg);

				try
				{
						if (!fileAkhir.exists()) fileAkhir.createNewFile();
						OutputStream os=new FileOutputStream(fileAkhir);
						if (bm.compress(Bitmap.CompressFormat.PNG, 80, os))
						{
								fileAkhir.setReadable(true, false);
								sendBroadcast(broadcastIntent);
								bm=null;
						}
						else Toast.makeText(this, "Kode error 17", 500).show();
						os.close();
						os = null;
				}
				catch (Exception e)
				{}


		}

}
