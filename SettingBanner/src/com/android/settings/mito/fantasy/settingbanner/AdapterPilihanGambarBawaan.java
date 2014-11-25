package com.android.settings.mito.fantasy.settingbanner;

import android.content.*;
import android.view.*;
import android.widget.*;
import java.util.*;
import android.content.res.*;
import android.graphics.*;
import java.io.*;
import com.android.settings.mito.fantasy.settingbanner.inyong.StringKu;

public class AdapterPilihanGambarBawaan extends BaseAdapter
{

    private Context context;
    private ArrayList<String> listBannerAsset;
    private AssetManager am;

    public AdapterPilihanGambarBawaan(Context context){
        this.context=context;
        this.listBannerAsset=new ArrayList<String>();
        for(String s:StringKu.bannerDiAsset) listBannerAsset.add(s);
        am=context.getAssets();
    }

    @Override
    public int getCount()
    {
        // TODO: Implement this method
        return listBannerAsset.size();
    }

    @Override
    public Object getItem(int p1)
    {
        // TODO: Implement this method
        return listBannerAsset.get(p1);
    }

    @Override
    public long getItemId(int p1)
    {
        // TODO: Implement this method
        return p1;
    }

    @Override
    public View getView(int posisi, View view, ViewGroup p3)
    {
        ImageView iv;
        if(view==null){
            view=new ImageView(context);
            iv=(ImageView) view;
            //iv.setAdjustViewBounds(true);
            view.setTag(iv);
        }else iv=(ImageView) view.getTag();
        try
        {
            iv.setImageBitmap(BitmapFactory.decodeStream(am.open(StringKu.bannerDiAsset[posisi])));
        }
        catch (IOException e)
        {}
        return view;
    }


}
