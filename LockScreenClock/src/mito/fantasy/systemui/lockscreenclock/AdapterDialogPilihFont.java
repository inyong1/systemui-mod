package mito.fantasy.systemui.lockscreenclock;

import android.widget.*;
import android.view.*;
import java.util.*;
import android.content.*;
import android.content.res.*;
import android.graphics.*;
import mito.fantasy.systemui.lockscreenclock.inyong.*;

public class AdapterDialogPilihFont extends BaseAdapter
{
    private Context context;
    private ArrayList<String> listFontName;
    private AssetManager assetManager;
    
    public AdapterDialogPilihFont(Context contex,ArrayList<String> listFontName){
        this.context=contex;
        this.listFontName=listFontName;
        assetManager=contex.getAssets();
    }

    @Override
    public int getCount()
    {
        // TODO: Implement this method
        return listFontName.size();
    }

    @Override
    public Object getItem(int p1)
    {
        // TODO: Implement this method
        return listFontName.get(p1);
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
        
        TextView tv;
        if(view==null){
            view=new TextView(context);
            tv=(TextView)view;
            tv.setGravity(Gravity.CENTER);
            tv.setPadding(0,5,0,5);
            tv.setTextSize(30f);
            view.setTag(tv);
        }else{
            tv=(TextView) view.getTag();
        }
        
        tv.setTypeface(Typeface.createFromAsset(assetManager,JamSetting.fontDiAsset[posisi]));
        tv.setText("12:34:56");
        
        return view;
    }

}
