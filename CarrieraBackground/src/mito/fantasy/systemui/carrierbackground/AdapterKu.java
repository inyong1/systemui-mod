package mito.fantasy.systemui.carrierbackground;

import android.content.*;
import android.view.*;
import android.widget.*;
import java.util.*;

public class AdapterKu extends BaseAdapter
{ 
		private Context context;
	//	private LayoutInflater inflater;
		private ArrayList<ItemGambar> listGambar;

		public AdapterKu(Context context, ArrayList<ItemGambar> listGambar)
		{
				this.listGambar = listGambar;
				this.context = context;
		//		inflater = LayoutInflater.from(context);
		}

		public int getCount()
		{
				// TODO: Implement this method
				return listGambar.size();
		}

		public Object getItem(int p1)
		{
				// TODO: Implement this method
				return listGambar.get(p1);
		}

		public long getItemId(int p1)
		{
				// TODO: Implement this method
				return p1;
		}

		private static class ViewHolder
		{
				ImageView imageView;
		}
		public View getView(int posisi, View view, ViewGroup p3)
		{
				// TODO: Implement this method
				ViewHolder holder;
				if (view == null)
				{
						holder = new ViewHolder();
						view = new ImageView(context);
						view.setPadding(3,10,3,10);
					//	view.setLayoutParams(new ViewGroup.LayoutParams());
						holder.imageView = (ImageView)view;
						view.setTag(holder);
				}
				else
				{
						holder = (ViewHolder) view.getTag();
				}
				holder.imageView.setImageBitmap(listGambar.get(posisi).getBitmap());
				return view;
		}

}
