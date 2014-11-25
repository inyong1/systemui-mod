package mito.fantasy.systemui.appshortcut.inyong;
import android.graphics.drawable.*;

public class Ikon
{
private Drawable ikon=null;
		private String namaPackage="";

		public void setNamaPackage(String namaPackage)
		{
				this.namaPackage = namaPackage;
		}

		public String getNamaPackage()
		{
				return namaPackage;
		}


		public void setIkon(Drawable ikon)
		{
				this.ikon = ikon;
		}

		public Drawable getIkon()
		{
				return ikon;
		}}
