package mito.fantasy.systemui.appshortcut;
import android.content.*;
import android.view.*;
import android.widget.*;
import java.util.*;

public class AdapterListAplikasi extends BaseAdapter
{
    private Context context;
    private LayoutInflater layoutInflater;
    private ArrayList<DetilItemApp> listApp;
    
    public AdapterListAplikasi(Context context, ArrayList<DetilItemApp> listApp){
        this.context=context;
        this.listApp=listApp;
        layoutInflater=LayoutInflater.from(context);
    }
    
    

    @Override
    public int getCount()
    {
        // TODO: Implement this method
        return listApp.size();
    }

    @Override
    public Object getItem(int p1)
    {
        // TODO: Implement this method
        return listApp.get(p1);
    }

    @Override
    public long getItemId(int p1)
    {
        // TODO: Implement this method
        return p1;
    }

    
    private static class PenampungView{
        ImageView ikon;
        TextView namaApp;
    }
    
    @Override
    public View getView(int posisi, View view, ViewGroup p3)
    {
        PenampungView penampungView;
        if(view==null){
            penampungView=new PenampungView();
            view=layoutInflater.inflate(R.layout.baris_list_app,null);
            penampungView.ikon=(ImageView)view.findViewById(R.id.barislistapp_ikon);
            penampungView.namaApp=(TextView)view.findViewById(R.id.barislistapp_nama_app);
            view.setTag(penampungView);
        }else{
            penampungView=(PenampungView)view.getTag();
        }
        penampungView.ikon.setImageDrawable(listApp.get(posisi).getIkon());
        penampungView.namaApp.setText(listApp.get(posisi).getNamaAplikasi());
       
        return view;
    }

    
}
