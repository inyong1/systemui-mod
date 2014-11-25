package com.android.settings.mito.fantasy.settingbanner.inyong;

public class StringKu
{
public static String 
FILE_BANNER_PATH="/data/data/com.android.settings.mito.fantasy.settingbanner/files/banner.png",
    judulDialogGantiGambar="Change Picture",
    pilihanAmbilDariGalery="Choose from gallery",
    judulDialogPilihGambarBawaan="Choose Picture",
    pilihanDefault="Default picture",
    pilihGallery="Pick Picture With...",
    janganTampilkanLagi="Don't show this message again",
    pesanTips="Long press on the banner picture to change picture.\nYou can pick your own photo from gallery";

    public static void setBahasa(String bahasa){
        if(bahasa.equals("en")){
            judulDialogGantiGambar="Change Picture";
            judulDialogPilihGambarBawaan="Choose Picture";
            pilihanAmbilDariGalery="Choose from gallery";
            pilihanDefault="Default picture";
            pilihGallery="Pick Picture With...";
            janganTampilkanLagi="Don't show this message again";
            pesanTips="Long press on the banner picture to change picture.\nYou can pick your own photo from gallery";
            
        }else{
            judulDialogGantiGambar="Ganti Gambar";
            judulDialogPilihGambarBawaan="Pilih Gambar";
            pilihanAmbilDariGalery="Pilih gambar dari gallery";
            pilihanDefault="Gunakan gambar standar";
            pilihGallery="Ambil Gambar Dengan...";
            janganTampilkanLagi="Jangan tampilkan lagi pesan ini";
            pesanTips="Tekan lama pada gambar untuk mengganti gambar.\nAnda dapat mengambil gambar foto anda sendiri dari gallery";

        }
    }

    public static String[] pilihangantiGambar(){
        return new String[]{pilihanAmbilDariGalery,pilihanDefault};
    }

    public static String[] bannerDiAsset={
        "banner/1.png",
        "banner/2.png",
        "banner/3.png",
        "banner/4.png",
        "banner/5.png"
    };
    }
