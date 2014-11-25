package com.android.settings.mito.fantasy.settingbanner;

import android.app.*;
import android.content.*;
import android.database.*;
import android.graphics.*;
import android.media.*;
import android.net.*;
import android.os.*;
import android.provider.*;
import android.util.*;
import android.widget.*;
import com.android.settings.mito.fantasy.settingbanner.inyong.*;
import java.io.*;

public class MainActivity extends Activity
{
    private final Intent intent =new Intent("inyong.setting.banner");
    /** Called when the activity is first created. */
    @Override
    public void onCreate(Bundle savedInstanceState)
	{
        super.onCreate(savedInstanceState);
        //setContentView(R.layout.main);
        StringKu.FILE_BANNER_PATH=getFilesDir().toString()+"/banner.png";
        tampilkanDialogGantiGambar();
    }

    private void tampilkanDialogGantiGambar()
    {
        AlertDialog.Builder dialog=new AlertDialog.Builder(this);
        dialog.setTitle(StringKu.judulDialogGantiGambar);
        dialog.setItems(StringKu.pilihangantiGambar(), new DialogInterface.OnClickListener(){

                @Override
                public void onClick(DialogInterface p1, int dipilih)
                {
                    // TODO: Implement this method
                    if (dipilih == 0)
                    {
                        tampilkanDialogAmbilGambarDariGallery();
                    }
                    else
                    {
                        tampilkanDialogPilihanGambarBawaan();
                    }
                }
            });
        dialog.setOnCancelListener(new DialogInterface.OnCancelListener(){

                @Override
                public void onCancel(DialogInterface p1)
                {
                    // TODO: Implement this method
                    finish();
                }
            });
        dialog.show();
    }

    private void tampilkanDialogAmbilGambarDariGallery()
    {
        Intent i=new Intent(Intent.ACTION_PICK);
        i.setType("image/*");
        //  Intent intentPilih=Intent.createChooser(i,StringKu.pilihGallery);
        startActivityForResult((Intent.createChooser(i, StringKu.pilihGallery)), 123456);
        // startActivityForResult(i, 123456);
    }

    private void tampilkanDialogPilihanGambarBawaan()
    {
        AlertDialog.Builder dialogPilihGambarBawaan=new AlertDialog.Builder(this);
        dialogPilihGambarBawaan.setTitle(StringKu.judulDialogPilihGambarBawaan);
        dialogPilihGambarBawaan.setAdapter(new AdapterPilihanGambarBawaan(this), new DialogInterface.OnClickListener(){

                @Override
                public void onClick(DialogInterface p1, int posisiDipilih)
                {

                    terapkanGambar(StringKu.bannerDiAsset[posisiDipilih], false);

                    finish();
                }
            });
        dialogPilihGambarBawaan.setOnCancelListener(new DialogInterface.OnCancelListener(){

                @Override
                public void onCancel(DialogInterface p1)
                {
                    // TODO: Implement this method
                    finish();
                }
            });
        dialogPilihGambarBawaan.show();

    }

    private void terapkanGambar(String path, boolean isFile)
    {
        InputStream is=null;
        if (isFile)
        {
            try
            {
                is = new FileInputStream(path);
            }
            catch (FileNotFoundException e)
            {}
        }
        else
        {
            try
            {
                is = getAssets().open(path);
            }
            catch (IOException e)
            {}
        }

        try
        {
            FileOutputStream fos =new FileOutputStream(StringKu.FILE_BANNER_PATH);
            BufferedInputStream bis =new BufferedInputStream(is);
            byte[] buffer=new byte[1024];
            int i;
            while ((i = bis.read(buffer)) > 0)
            {
                fos.write(buffer, 0, i);
            }
            is.close();
            fos.close();
            bis.close();
            File hasil=new File(StringKu.FILE_BANNER_PATH);
            if (hasil.exists())
            {
                hasil.setReadable(true, false);
                sendBroadcast(intent);
            }else{
                Log.e("bannersetting","kopi file dari gallery gagal");
            }
        }
        catch (Exception e)
        {}
    }

    @Override
    public void onActivityResult(int kodePesanan, int kodeHasil, Intent data)
    {super.onActivityResult(kodePesanan, kodeHasil, data);


        // TODO: Implement this method
        //Toast.makeText(this, "result", 500).show();
//          //  toast("test");
        //    
        // Log.d(TAG,"onAntivity result diterima");
        if (kodeHasil == RESULT_OK)
        {
            // Log.d(TAG,"result kode ok");
            if (kodePesanan == 123456)
            {
                //  Log.d(TAG,"kode pesanan cocok");
                Uri urihasil=data.getData();
                String hasil=getDir(urihasil);
                //  Log.d(TAG,hasil);
                File file=new File(hasil);
                if (!file.exists())
                {
                    Toast.makeText(this, "kode error 2", 500).show();
                    finish();
                }
                 potongDanSimpanGambar(hasil);
            }
            else Toast.makeText(this, "kode error 3", 500).show();
        }
        // else  Log.d(TAG,"onActivity result code ora ok");// Toast.makeText(this.activity, "Canceled", 500).show();
        
        sendBroadcast(intent);
      finish();
    }

    /// method getdir
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
            //  Toast.makeText(getActivity(), "path ambil gambar= "+filePath,500).show();
            int lebar=bm.getWidth(), lebarMau=540,tinggiMau=200, tinggi=bm.getHeight();
            if (lebar > lebarMau || tinggi > tinggiMau)
            {
                bm = ThumbnailUtils.extractThumbnail(bm, lebarMau, tinggiMau);
            }
        }
        catch (Exception e)
        {}


        if (bm == null)
        {
            Toast.makeText(this, "kode error 5", 500).show();
            return;
        }

        File fileAkhir=new File(StringKu.FILE_BANNER_PATH);
        //  Toast.makeText(this.activity,"filedirs = "+fileAkhir.toString(),500).show();

        try
        {
            if (!fileAkhir.exists()) fileAkhir.createNewFile();
            OutputStream os=new FileOutputStream(fileAkhir);
            if (bm.compress(Bitmap.CompressFormat.PNG, 80, os))
            {
                fileAkhir.setReadable(true, false);
                //  sendBroadcast(broadcastIntent);
                bm = null;
            }
            else Toast.makeText(this, "Kode error 7", 500).show();
            os.close();
            os = null;
        }
        catch (Exception e)
        {}

    }


}
