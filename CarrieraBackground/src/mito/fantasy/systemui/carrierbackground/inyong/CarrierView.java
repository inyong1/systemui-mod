package mito.fantasy.systemui.carrierbackground.inyong;

import android.content.*;
import android.util.*;
import android.view.*;
import android.view.View.*;
import android.widget.*;
import android.app.*;
import java.util.*;
import android.content.res.*;
import android.graphics.*;
import java.io.*;
import android.media.*;


public class CarrierView extends ImageView implements OnLongClickListener
{

  

		Context context;
		//	ContentResolver contResolver;
		AssetManager am;
		private final IntentFilter intentFilter =new IntentFilter("inyong.carriermod");
		private boolean teregister;

		private final BroadcastReceiver receiver=new BroadcastReceiver(){

				public void onReceive(Context p1, Intent p2)
				{
						//ngetest
							//toast("menerima broadcast");
						updateImage();
				}		
		};

		public CarrierView(Context context)
		{
				super(context);
				this.context = context;
				persiapan();
		}
		public CarrierView(Context context, AttributeSet attrs)
		{
				super(context, attrs);
				this.context = context;
				persiapan();
		}
		public CarrierView(Context context, AttributeSet attrs, int defStyle)
		{
				super(context, attrs, defStyle);
				this.context = context;
				persiapan();
		}

		private void persiapan()
		{
				//		contResolver = context.getContentResolver();
				am = context.getAssets();
        setOnLongClickListener(this);
		}

		private void detekSetting()
		{

		}


		public void onAttachedToWindow()
		{
				if (!teregister)
				{
						context.registerReceiver(receiver, intentFilter);
						teregister = true;
				}
				detekSetting();
				updateImage();
		}

		public void onDetachedFromWindow()
		{
				if (teregister)
				{
						context.unregisterReceiver(receiver);
						teregister = false;
				}
		}

		private void updateImage()
		{
				String filePath="/data/data/mito.fantasy.systemui.carrierbackground/files/bg.png";

				Bitmap bm=null;
				//		BitmapFactory.Options opsi=new BitmapFactory.Options();
				//			opsi.inJustDecodeBounds = true;
				//		BitmapFactory.decodeFile(filePath, opsi);
				try
				{
						bm = BitmapFactory.decodeFile(filePath);
						//disable.
						// gambr udh di crop di apknya
				//		int lebar=bm.getWidth(), lebarMau=540,tinggiMau=300, tinggi=bm.getHeight();
				//		if (lebar >= lebarMau || tinggi >= tinggiMau)
				//		{
				//				bm = ThumbnailUtils.extractThumbnail(bm, lebarMau, tinggiMau);
				//		}
				}
				catch (Exception e)
				{
            Log.d("carrierbackground_file_bm",e.getMessage());
        }
	

				if (bm == null)
				{
						try
						{
								toast("auto default background");
								bm = BitmapFactory.decodeStream(am.open("carrier_bg/bg1.png"));
						}
						catch (IOException e)
						{}
				}
				setImageBitmap(bm);
		}

		private void toast(String s)
		{
				Toast.makeText(context, s, 500).show();
		}
    
    @Override
    public boolean onLongClick(View p1)
    {
        Intent intent=context.getPackageManager().getLaunchIntentForPackage("mito.fantasy.systemui.carrierbackground");
        context.startActivity(intent);
        return true;
    }
}
