package mito.fantasy.systemui.appshortcut;
import android.graphics.drawable.*;

public class DetilItemApp
{
    private Drawable ikon=null;
    private String namaAplikasi="", namaPackageAplikasi="";

    public void setNamaAplikasi(String namaAplikasi)
    {
        this.namaAplikasi = namaAplikasi;
    }

    public String getNamaAplikasi()
    {
        return namaAplikasi;
    }

    public void setNamaPackageAplikasi(String namaPackageAplikasi)
    {
        this.namaPackageAplikasi = namaPackageAplikasi;
    }

    public String getNamaPackageAplikasi()
    {
        return namaPackageAplikasi;
    }


    public void setIkon(Drawable ikon)
    {
        this.ikon = ikon;
    }

    public Drawable getIkon()
    {
        return ikon;
    }}
