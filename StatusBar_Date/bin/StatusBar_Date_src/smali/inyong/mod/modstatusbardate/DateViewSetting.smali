.class public Linyong/mod/modstatusbardate/DateViewSetting;
.super Ljava/lang/Object;
.source "DateViewSetting.java"


# static fields
.field public static final AKTIF:Ljava/lang/String; = "aktifkan"

.field public static final APPEND_TEKS:Ljava/lang/String; = "append_teks"

.field public static final MODE_DUA_BARIS:Ljava/lang/String; = "mode_dua_baris"

.field public static final MODE_TANGGAL_DUA_BARIS:Ljava/lang/String; = "mode_tanggal_dua_baris"

.field public static final MODE_TANGGAL_SATU_BARIS:Ljava/lang/String; = "mode_tanggal_satu_baris"

.field public static final PREPEND_TEKS:Ljava/lang/String; = "prepend_teks"

.field public static final STYLE_TEKS:Ljava/lang/String; = "style_teks"

.field public static final UKURAN_TEKS_DUA_BARIS:Ljava/lang/String; = "ukuran_teks_dua_baris"

.field public static final UKURAN_TEKS_SATU_BARIS:Ljava/lang/String; = "ukuran_teks_satu_baris"

.field public static final WARNA_TEKS:Ljava/lang/String; = "warna_teks_tanggal"

.field public static final modeTanggalDuaBaris:[Ljava/lang/String;

.field public static final modeTanggalSatuBaris:[Ljava/lang/String;


# direct methods
.method static final constructor <clinit>()V
    .locals 7

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/String;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    const-string v5, "dd\nMM"

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x1

    const-string v5, "dd/MM\nyyyy"

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x2

    const-string v5, "dd/MMM\nyyyy"

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x3

    const-string v5, "dd\nMMM"

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x4

    const-string v5, "dd\nMMMM"

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x5

    const-string v5, "EEE\ndd-MMM"

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x6

    const-string v5, "EEEE\ndd-MMM-yy"

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x7

    const-string v5, "EEEE\ndd-MMMM"

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0x8

    const-string v5, "EEEE\ndd-MMM-yyyy"

    aput-object v5, v3, v4

    sput-object v2, Linyong/mod/modstatusbardate/DateViewSetting;->modeTanggalDuaBaris:[Ljava/lang/String;

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/String;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    const-string v5, "dd"

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x1

    const-string v5, "dd/MM"

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x2

    const-string v5, "dd/MM/yy"

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x3

    const-string v5, "dd/MM/yyyy"

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x4

    const-string v5, "dd-MMM"

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x5

    const-string v5, "dd-MMM-yy"

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x6

    const-string v5, "dd-MMM-yyyy"

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x7

    const-string v5, "EEE dd-MMM"

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0x8

    const-string v5, "EEE dd-MMMM"

    aput-object v5, v3, v4

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/16 v4, 0x9

    const-string v5, "EEEE dd-MMMM"

    aput-object v5, v3, v4

    sput-object v2, Linyong/mod/modstatusbardate/DateViewSetting;->modeTanggalSatuBaris:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 40
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method
