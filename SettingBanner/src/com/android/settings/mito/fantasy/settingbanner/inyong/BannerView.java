package com.android.settings.mito.fantasy.settingbanner.inyong;

import android.app.*;
import android.content.*;
import android.content.res.*;
import android.graphics.*;
import android.os.*;
import android.util.*;
import android.view.*;
import android.view.View.*;
import android.widget.*;
import java.io.*;
import java.util.*;

public class BannerView extends ImageView implements OnLongClickListener
{

  

    

    private Context context;
    private boolean terdaftar;
    private final IntentFilter intentFilter=new IntentFilter("inyong.setting.banner");
    private final BroadcastReceiver broadcastReceiver=new BroadcastReceiver(){

        @Override
        public void onReceive(Context p1, Intent p2)
        {
            setGambar();
        }
    };
    
    public BannerView(Context context)
    {
        super(context);
        this.context = context;
        persiapan();
    }
    
    public BannerView(Context context, AttributeSet attrs)
    {
        super(context, attrs);
        this.context = context;
        persiapan();
    }
    
    public BannerView(Context context, AttributeSet attrs, int ds)
    {
        super(context, attrs, ds);
        this.context = context;
        persiapan();
    }
    //======= PERSIAPAN
    private AssetManager assetManager;
    public static String fileBannerPath;
    
    //  private String judulDialogGantiGambar="Change Picture";
    private SharedPreferences preference;
    private final String namaPref="prefTips",namaPrefTipsCheckbox="prefTipsCheckbox";   
    //---------
    private void persiapan()
    {
        assetManager = context.getAssets();
       
        setOnLongClickListener(this);
        ///
        preference = context.getSharedPreferences(namaPref, Context.MODE_PRIVATE);
        new Handler().postDelayed(new Runnable(){

                @Override
                public void run()
                {
                    if (!preference.getBoolean(namaPrefTipsCheckbox, false))
                    {
                        tampilkanTips();
                    }
                }
            }, 500);
    }

    
    @Override
    protected void onAttachedToWindow()
    {
        super.onAttachedToWindow();
        setGambar();
        if(!terdaftar){
            terdaftar=true;
            context.registerReceiver(broadcastReceiver,intentFilter);
        }
    }

    @Override
    protected void onDetachedFromWindow()
    {
        // TODO: Implement this method
        super.onDetachedFromWindow();
        if(terdaftar){
            terdaftar=false;
            context.unregisterReceiver(broadcastReceiver);
           gambar=null;
        }
    }
    
    

    //=========
    private  Bitmap gambar=null;
    private void setGambar()
    {
        try
        {
            gambar = BitmapFactory.decodeFile(StringKu.FILE_BANNER_PATH);
        }
        catch (Exception e)
        {}

        if (gambar == null)
        {
            try
            {
                gambar = BitmapFactory.decodeStream(assetManager.open(StringKu.bannerDiAsset[0]));
            }
            catch (Exception e)
            {
                toast("gambar sing nang asset ora ketemu");
            }
        }

        setImageBitmap(gambar);
    }

    
    

    private void tampilkanTips()
    {
        AlertDialog.Builder tips=new AlertDialog.Builder(context);

        tips.setTitle("Tips");
        tips.setMessage(StringKu.pesanTips);
        CheckBox cekbok=new CheckBox(context);
        TextView tv=new TextView(context);
        tv.setText(StringKu.janganTampilkanLagi);
        tv.setTextColor(Color.RED);
        LinearLayout view=new LinearLayout(context);
        view.setOrientation(LinearLayout.HORIZONTAL);
        view.addView(cekbok);
        view.addView(tv);
        view.setGravity(Gravity.CENTER_VERTICAL);

        cekbok.setOnCheckedChangeListener(detekChek());
        tips.setView(view);
        tips.setPositiveButton("OK", new DialogInterface.OnClickListener(){

                @Override
                public void onClick(DialogInterface p1, int p2)
                {
                    // TODO: Implement this method
                    p1.dismiss();
                }
            });
        tips.show();
    }

    private CompoundButton.OnCheckedChangeListener detekChek()
    { return new CompoundButton.OnCheckedChangeListener(){

            @Override
            public void onCheckedChanged(CompoundButton p1, boolean checked)
            {
                SharedPreferences.Editor editor=preference.edit();
                if (checked)
                {

                    editor.putBoolean(namaPrefTipsCheckbox, true);
                }
                else
                {
                    editor.putBoolean(namaPrefTipsCheckbox, false);
                }
                editor.commit();
            }
        };
    }
    
    //8========
    @Override
    public boolean onLongClick(View p1)
    {
        Intent i=new Intent();
        i.setComponent(new ComponentName("com.android.settings.mito.fantasy.settingbanner","com.android.settings.mito.fantasy.settingbanner.MainActivity"));
        try{
            context.startActivity(i);
        }catch(Exception e){
            toast("apkne urung diinstall ya mas bro");
        }
        return true;
    }
    
//"==========
    private void toast(String s)
    {
        Toast.makeText(context, s, 500).show();
    }
}
