.class public Linyong/mod/modstatusbardate/DateView;
.super Landroid/widget/TextView;
.source "DateView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linyong/mod/modstatusbardate/DateView$100000000;
    }
.end annotation


# static fields
.field private static OutputDateString:Ljava/lang/String;

.field private static aktif:I

.field private static appendText:Ljava/lang/String;

.field private static calendar:Ljava/util/Calendar;

.field private static date:Ljava/util/Date;

.field private static dateFormat:Ljava/lang/String;

.field private static dateFormater:Ljava/text/SimpleDateFormat;

.field private static fontSize:F

.field private static intentFilter:Landroid/content/IntentFilter;

.field private static prependText:Ljava/lang/String;

.field private static textColor:I

.field private static textStyle:I

.field private static two_line:I


# instance fields
.field private cResolver:Landroid/content/ContentResolver;

.field context:Landroid/content/Context;

.field private final receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static final constructor <clinit>()V
    .locals 6

    new-instance v2, Landroid/content/IntentFilter;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "inyong.statusbardate"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v2, Linyong/mod/modstatusbardate/DateView;->intentFilter:Landroid/content/IntentFilter;

    const/4 v2, 0x0

    sput-object v2, Linyong/mod/modstatusbardate/DateView;->dateFormater:Ljava/text/SimpleDateFormat;

    const-string v2, ""

    sput-object v2, Linyong/mod/modstatusbardate/DateView;->OutputDateString:Ljava/lang/String;

    const-string v2, ""

    sput-object v2, Linyong/mod/modstatusbardate/DateView;->prependText:Ljava/lang/String;

    const-string v2, ""

    sput-object v2, Linyong/mod/modstatusbardate/DateView;->appendText:Ljava/lang/String;

    const/high16 v2, -0x10000

    sput v2, Linyong/mod/modstatusbardate/DateView;->textColor:I

    const/4 v2, 0x1

    sput v2, Linyong/mod/modstatusbardate/DateView;->textStyle:I

    const/4 v2, 0x1

    sput v2, Linyong/mod/modstatusbardate/DateView;->two_line:I

    const/4 v2, 0x1

    sput v2, Linyong/mod/modstatusbardate/DateView;->aktif:I

    const/high16 v2, 0x41280000

    sput v2, Linyong/mod/modstatusbardate/DateView;->fontSize:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .prologue
    .line 128
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object v3, v0

    new-instance v4, Linyong/mod/modstatusbardate/DateView$100000000;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Linyong/mod/modstatusbardate/DateView$100000000;-><init>(Linyong/mod/modstatusbardate/DateView;)V

    iput-object v4, v3, Linyong/mod/modstatusbardate/DateView;->receiver:Landroid/content/BroadcastReceiver;

    .line 129
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Linyong/mod/modstatusbardate/DateView;->context:Landroid/content/Context;

    .line 130
    move-object v3, v0

    invoke-direct {v3}, Linyong/mod/modstatusbardate/DateView;->setUp()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    .prologue
    .line 134
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v4, v0

    new-instance v5, Linyong/mod/modstatusbardate/DateView$100000000;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Linyong/mod/modstatusbardate/DateView$100000000;-><init>(Linyong/mod/modstatusbardate/DateView;)V

    iput-object v5, v4, Linyong/mod/modstatusbardate/DateView;->receiver:Landroid/content/BroadcastReceiver;

    .line 135
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Linyong/mod/modstatusbardate/DateView;->context:Landroid/content/Context;

    .line 136
    move-object v4, v0

    invoke-direct {v4}, Linyong/mod/modstatusbardate/DateView;->setUp()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10

    .prologue
    .line 140
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    invoke-direct {v5, v6, v7, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    move-object v5, v0

    new-instance v6, Linyong/mod/modstatusbardate/DateView$100000000;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    invoke-direct {v7, v8}, Linyong/mod/modstatusbardate/DateView$100000000;-><init>(Linyong/mod/modstatusbardate/DateView;)V

    iput-object v6, v5, Linyong/mod/modstatusbardate/DateView;->receiver:Landroid/content/BroadcastReceiver;

    .line 141
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Linyong/mod/modstatusbardate/DateView;->context:Landroid/content/Context;

    .line 142
    move-object v5, v0

    invoke-direct {v5}, Linyong/mod/modstatusbardate/DateView;->setUp()V

    return-void
.end method

.method static synthetic access$1000014(Linyong/mod/modstatusbardate/DateView;)V
    .locals 4

    move-object v0, p0

    move-object v3, v0

    invoke-direct {v3}, Linyong/mod/modstatusbardate/DateView;->detekSetingPengguna()V

    return-void
.end method

.method static synthetic access$1000018(Linyong/mod/modstatusbardate/DateView;)V
    .locals 4

    move-object v0, p0

    move-object v3, v0

    invoke-direct {v3}, Linyong/mod/modstatusbardate/DateView;->updateDate()V

    return-void
.end method

.method private detekSetingPengguna()V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 33
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Linyong/mod/modstatusbardate/DateView;->cResolver:Landroid/content/ContentResolver;

    const-string v3, "prepend_teks"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Linyong/mod/modstatusbardate/DateView;->prependText:Ljava/lang/String;

    .line 34
    sget-object v2, Linyong/mod/modstatusbardate/DateView;->prependText:Ljava/lang/String;

    const-string v3, ""

    if-eq v2, v3, :cond_0

    sget-object v2, Linyong/mod/modstatusbardate/DateView;->prependText:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 36
    new-instance v2, Ljava/lang/StringBuffer;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v3, Linyong/mod/modstatusbardate/DateView;->prependText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Linyong/mod/modstatusbardate/DateView;->prependText:Ljava/lang/String;

    .line 39
    :goto_0
    move-object v2, v0

    iget-object v2, v2, Linyong/mod/modstatusbardate/DateView;->cResolver:Landroid/content/ContentResolver;

    const-string v3, "append_teks"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Linyong/mod/modstatusbardate/DateView;->appendText:Ljava/lang/String;

    .line 40
    sget-object v2, Linyong/mod/modstatusbardate/DateView;->appendText:Ljava/lang/String;

    const-string v3, ""

    if-eq v2, v3, :cond_1

    sget-object v2, Linyong/mod/modstatusbardate/DateView;->appendText:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 42
    new-instance v2, Ljava/lang/StringBuffer;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    sget-object v3, Linyong/mod/modstatusbardate/DateView;->appendText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Linyong/mod/modstatusbardate/DateView;->appendText:Ljava/lang/String;

    .line 45
    :goto_1
    move-object v2, v0

    iget-object v2, v2, Linyong/mod/modstatusbardate/DateView;->cResolver:Landroid/content/ContentResolver;

    const-string v3, "warna_teks_tanggal"

    const/high16 v4, -0x10000

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    sput v2, Linyong/mod/modstatusbardate/DateView;->textColor:I

    .line 46
    move-object v2, v0

    iget-object v2, v2, Linyong/mod/modstatusbardate/DateView;->cResolver:Landroid/content/ContentResolver;

    const-string v3, "style_teks"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    sput v2, Linyong/mod/modstatusbardate/DateView;->textStyle:I

    .line 47
    move-object v2, v0

    iget-object v2, v2, Linyong/mod/modstatusbardate/DateView;->cResolver:Landroid/content/ContentResolver;

    const-string v3, "mode_dua_baris"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    sput v2, Linyong/mod/modstatusbardate/DateView;->two_line:I

    .line 48
    sget v2, Linyong/mod/modstatusbardate/DateView;->two_line:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 50
    move-object v2, v0

    iget-object v2, v2, Linyong/mod/modstatusbardate/DateView;->cResolver:Landroid/content/ContentResolver;

    const-string v3, "ukuran_teks_dua_baris"

    const/high16 v4, 0x41280000

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v2

    sput v2, Linyong/mod/modstatusbardate/DateView;->fontSize:F

    .line 51
    sget-object v2, Linyong/mod/modstatusbardate/DateViewSetting;->modeTanggalDuaBaris:[Ljava/lang/String;

    move-object v3, v0

    iget-object v3, v3, Linyong/mod/modstatusbardate/DateView;->cResolver:Landroid/content/ContentResolver;

    const-string v4, "mode_tanggal_dua_baris"

    const/4 v5, 0x3

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    aget-object v2, v2, v3

    sput-object v2, Linyong/mod/modstatusbardate/DateView;->dateFormat:Ljava/lang/String;

    .line 60
    :goto_2
    move-object v2, v0

    iget-object v2, v2, Linyong/mod/modstatusbardate/DateView;->cResolver:Landroid/content/ContentResolver;

    const-string v3, "aktifkan"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    sput v2, Linyong/mod/modstatusbardate/DateView;->aktif:I

    return-void

    .line 38
    :cond_0
    const-string v2, ""

    sput-object v2, Linyong/mod/modstatusbardate/DateView;->prependText:Ljava/lang/String;

    goto/16 :goto_0

    .line 44
    :cond_1
    const-string v2, ""

    sput-object v2, Linyong/mod/modstatusbardate/DateView;->appendText:Ljava/lang/String;

    goto :goto_1

    .line 56
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Linyong/mod/modstatusbardate/DateView;->cResolver:Landroid/content/ContentResolver;

    const-string v3, "ukuran_teks_satu_baris"

    const/high16 v4, 0x41800000

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v2

    sput v2, Linyong/mod/modstatusbardate/DateView;->fontSize:F

    .line 57
    sget-object v2, Linyong/mod/modstatusbardate/DateViewSetting;->modeTanggalSatuBaris:[Ljava/lang/String;

    move-object v3, v0

    iget-object v3, v3, Linyong/mod/modstatusbardate/DateView;->cResolver:Landroid/content/ContentResolver;

    const-string v4, "mode_tanggal_satu_baris"

    const/4 v5, 0x4

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    aget-object v2, v2, v3

    sput-object v2, Linyong/mod/modstatusbardate/DateView;->dateFormat:Ljava/lang/String;

    goto :goto_2
.end method

.method private setUp()V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 74
    move-object v0, p0

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Linyong/mod/modstatusbardate/DateView;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, v2, Linyong/mod/modstatusbardate/DateView;->cResolver:Landroid/content/ContentResolver;

    .line 75
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    sput-object v2, Linyong/mod/modstatusbardate/DateView;->calendar:Ljava/util/Calendar;

    .line 76
    sget-object v2, Linyong/mod/modstatusbardate/DateView;->calendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    sput-object v2, Linyong/mod/modstatusbardate/DateView;->date:Ljava/util/Date;

    .line 77
    move-object v2, v0

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Linyong/mod/modstatusbardate/DateView;->setGravity(I)V

    return-void
.end method

.method private updateDate()V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 95
    move-object v0, p0

    sget v2, Linyong/mod/modstatusbardate/DateView;->aktif:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 96
    move-object v2, v0

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Linyong/mod/modstatusbardate/DateView;->setVisibility(I)V

    .line 122
    :goto_0
    return-void

    .line 98
    :cond_0
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Linyong/mod/modstatusbardate/DateView;->setVisibility(I)V

    .line 100
    new-instance v2, Ljava/text/SimpleDateFormat;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    sget-object v4, Linyong/mod/modstatusbardate/DateView;->dateFormat:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v2, Linyong/mod/modstatusbardate/DateView;->dateFormater:Ljava/text/SimpleDateFormat;

    .line 101
    sget-object v2, Linyong/mod/modstatusbardate/DateView;->dateFormater:Ljava/text/SimpleDateFormat;

    sget-object v3, Linyong/mod/modstatusbardate/DateView;->date:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Linyong/mod/modstatusbardate/DateView;->OutputDateString:Ljava/lang/String;

    .line 102
    move-object v2, v0

    sget v3, Linyong/mod/modstatusbardate/DateView;->textColor:I

    invoke-virtual {v2, v3}, Linyong/mod/modstatusbardate/DateView;->setTextColor(I)V

    .line 103
    move-object v2, v0

    sget v3, Linyong/mod/modstatusbardate/DateView;->fontSize:F

    invoke-virtual {v2, v3}, Linyong/mod/modstatusbardate/DateView;->setTextSize(F)V

    .line 105
    sget v2, Linyong/mod/modstatusbardate/DateView;->textStyle:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 107
    move-object v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Linyong/mod/modstatusbardate/DateView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 122
    :goto_1
    move-object v2, v0

    new-instance v3, Ljava/lang/StringBuffer;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v5, Linyong/mod/modstatusbardate/DateView;->prependText:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    sget-object v5, Linyong/mod/modstatusbardate/DateView;->OutputDateString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    sget-object v4, Linyong/mod/modstatusbardate/DateView;->appendText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Linyong/mod/modstatusbardate/DateView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 109
    :cond_1
    sget v2, Linyong/mod/modstatusbardate/DateView;->textStyle:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 111
    move-object v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Linyong/mod/modstatusbardate/DateView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_1

    .line 113
    :cond_2
    sget v2, Linyong/mod/modstatusbardate/DateView;->textStyle:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 115
    move-object v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Linyong/mod/modstatusbardate/DateView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_1

    .line 119
    :cond_3
    move-object v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Linyong/mod/modstatusbardate/DateView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_1
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 83
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Linyong/mod/modstatusbardate/DateView;->detekSetingPengguna()V

    .line 84
    move-object v2, v0

    invoke-direct {v2}, Linyong/mod/modstatusbardate/DateView;->updateDate()V

    .line 85
    sget-object v2, Linyong/mod/modstatusbardate/DateView;->intentFilter:Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.TIME_SET"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    move-object v2, v0

    iget-object v2, v2, Linyong/mod/modstatusbardate/DateView;->context:Landroid/content/Context;

    move-object v3, v0

    iget-object v3, v3, Linyong/mod/modstatusbardate/DateView;->receiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Linyong/mod/modstatusbardate/DateView;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 90
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Linyong/mod/modstatusbardate/DateView;->context:Landroid/content/Context;

    move-object v3, v0

    iget-object v3, v3, Linyong/mod/modstatusbardate/DateView;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
