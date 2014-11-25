package mito.fantasy.systemui.appshortcut.inyong;

import android.content.*;
import android.view.*;
import android.widget.*;
import java.util.*;
import mito.fantasy.systemui.appshortcut.*;

public class IkonAdapter extends BaseAdapter
{
		private Context context;
		private List<Ikon> listIkon;
  //  private LayoutInflater layoutInflater;

		public IkonAdapter(Context context, ArrayList<Ikon> listIkon)
		{
				this.context = context;
				this.listIkon = listIkon;
       // layoutInflater = LayoutInflater.from(context);
  }

		public int getCount()
		{
				// TODO: Implement this method
				return listIkon.size();
		}

		public Object getItem(int p1)
		{
				// TODO: Implement this method
				return listIkon.get(p1);
		}

		public long getItemId(int p1)
		{
				// TODO: Implement this method
				return p1;
		}
//-------

		public View getView(int posisi, View view, ViewGroup p3)
		{
     //   if(!context.getPackageName().contains("fantasy"))return null;
		
        ImageView ikonView;

				if (view == null)
				{
            view = new ImageView(context);
            ikonView = (ImageView)view;
            ikonView.setAdjustViewBounds(true);			
            ikonView.setMaxWidth(150);
            ikonView.setMaxHeight(150);
            ikonView.setPadding(10, 10, 10, 20);	

						view.setTag(ikonView);
				}
				else
				{
						ikonView = (ImageView) view.getTag();
				}
				ikonView.
            setImageDrawable(
            listIkon.get(posisi).getIkon());

				return view;
		}

}
