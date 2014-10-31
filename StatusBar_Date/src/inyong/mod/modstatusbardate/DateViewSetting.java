package inyong.mod.modstatusbardate;
public class DateViewSetting
{
		public static final String 
		AKTIF="aktifkan", //beres
		WARNA_TEKS="warna_teks_tanggal",
		UKURAN_TEKS_SATU_BARIS="ukuran_teks_satu_baris",
		UKURAN_TEKS_DUA_BARIS="ukuran_teks_dua_baris",
		STYLE_TEKS="style_teks", //beres
		PREPEND_TEKS="prepend_teks", 
		APPEND_TEKS="append_teks",
		MODE_DUA_BARIS="mode_dua_baris", //beres
		MODE_TANGGAL_DUA_BARIS="mode_tanggal_dua_baris", //beres
		MODE_TANGGAL_SATU_BARIS="mode_tanggal_satu_baris"; //beres
		
		public static final String[] modeTanggalDuaBaris={
			"dd\nMM",//0
			"dd/MM\nyyyy",//1
			"dd/MMM\nyyyy",//2
			"dd\nMMM",//3
			"dd\nMMMM",//4
			"EEE\ndd-MMM",//5
			"EEEE\ndd-MMM-yy",//6
			"EEEE\ndd-MMMM",//7
			"EEEE\ndd-MMM-yyyy"//8
		};
		
		public static final String[] modeTanggalSatuBaris={
				"dd", //0
				"dd/MM",//1
				"dd/MM/yy",//2
				"dd/MM/yyyy",//3
				"dd-MMM",//4
				"dd-MMM-yy",//5
				"dd-MMM-yyyy",//6
				"EEE dd-MMM",//7
				"EEE dd-MMMM",//8
				"EEEE dd-MMMM"//9
				
		};
}
