package mito.fantasy.systemui.lockscreenclock;
import android.content.*;
import android.view.*;
import android.widget.*;
import java.util.*;

public class AdapterDialogPilihTema extends BaseAdapter
{
    Context context;
    ArrayList<Integer> listResId;
    public AdapterDialogPilihTema(Context context , ArrayList<Integer> listResId){
        this.context=context;
        this.listResId=listResId;
    }

    @Override
    public int getCount()
    {
        // TODO: Implement this method
        return listResId.size();
    }

    @Override
    public Object getItem(int p1)
    {
        // TODO: Implement this method
        return listResId.get(p1);
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
        ImageView imageView;
        if(view==null){
            view=new ImageView(context);
            imageView=(ImageView)view;
            imageView.setAdjustViewBounds(true);
            imageView.setMaxHeight(200);
            imageView.setMaxWidth(200);
            imageView.setPadding(0,5,0,5);
            
            view.setTag(imageView);
        }else{
            imageView=(ImageView)view.getTag();
        }
        imageView.setImageResource(JamLatar.ID_LATAR_JAM[posisi]);
        return view;
    }

}
