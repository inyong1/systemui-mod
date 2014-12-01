.class public Lcom/android/systemui/batteryview/inyong/BatteryStandart;
.super Landroid/view/View;
.source "BatteryStandart.java"

# interfaces
.implements Lcom/android/systemui/DemoMode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker;
    }
.end annotation


# static fields
.field public static final ACTION_LEVEL_TEST:Ljava/lang/String; = "com.android.systemui.BATTERY_LEVEL_TEST"

.field public static final BATTERY_STYLE_CIRCLE:I = 0x3

.field public static final BATTERY_STYLE_CIRCLE_PERCENT:I = 0x4

.field public static final BATTERY_STYLE_DOTTED_CIRCLE:I = 0x5

.field public static final BATTERY_STYLE_DOTTED_CIRCLE_PERCENT:I = 0x6

.field public static final BATTERY_STYLE_GONE:I = 0x8

.field public static final BATTERY_STYLE_ICON_JBSTYLE_PERCENT:I = 0x7

.field public static final BATTERY_STYLE_ICON_PERCENT:I = 0x2

.field public static final BATTERY_STYLE_NORMAL:I = 0x0

.field public static final BATTERY_STYLE_PERCENT:I = 0x1

.field public static final EMPTY:I = 0x4

.field public static final ENABLE_PERCENT:Z = true

.field public static final FULL:I = 0x60

.field public static final SINGLE_DIGIT_PERCENT:Z = false

.field public static final SUBPIXEL:F = 0.4f

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public SHOW_100_PERCENT:Z

.field private activated:Z

.field private batteryStandartAktif:Z

.field private batteryWarna:I

.field private mBatteryColor:I

.field mBatteryPaint:Landroid/graphics/Paint;

.field private mBatteryStyle:I

.field private mBatteryTypeView:Ljava/lang/String;

.field private final mBoltFrame:Landroid/graphics/RectF;

.field mBoltPaint:Landroid/graphics/Paint;

.field private final mBoltPath:Landroid/graphics/Path;

.field private final mBoltPoints:[F

.field private final mButtonFrame:Landroid/graphics/RectF;

.field mButtonHeight:I

.field private final mClipFrame:Landroid/graphics/RectF;

.field mColors:[I

.field private mContext:Landroid/content/Context;

.field private mCustomColor:Z

.field private mDemoMode:Z

.field private mDemoTracker:Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker;

.field private final mFrame:Landroid/graphics/RectF;

.field mFramePaint:Landroid/graphics/Paint;

.field private mHeight:I

.field mIsQuickSettings:Z

.field private mPercentageChargingColor:I

.field private mPercentageColor:I

.field private mPercentageOnly:Z

.field mShowIcon:Z

.field mShowPercent:Z

.field private mTextHeight:F

.field mTextPaint:Landroid/graphics/Paint;

.field mTracker:Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker;

.field private mWarningString:Ljava/lang/String;

.field private mWarningTextHeight:F

.field mWarningTextPaint:Landroid/graphics/Paint;

.field private mWidth:I

.field private systemColor:I


# direct methods
.method static final constructor <clinit>()V
    .locals 7

    :try_start_0
    const-string v2, "com.android.systemui.batteryview.inyong.BatteryStandart"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->TAG:Ljava/lang/String;

    return-void

    :catch_0
    move-exception v2

    move-object v0, v2

    new-instance v2, Ljava/lang/NoClassDefFoundError;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .prologue
    .line 192
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x0

    check-cast v5, Landroid/util/AttributeSet;

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/android/systemui/batteryview/inyong/BatteryStandart;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 193
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .prologue
    .line 198
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lcom/android/systemui/batteryview/inyong/BatteryStandart;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 199
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 17

    .prologue
    .line 204
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object v9, v0

    move-object v10, v1

    move-object v11, v2

    move v12, v3

    invoke-direct {v9, v10, v11, v12}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    move-object v9, v0

    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->SHOW_100_PERCENT:Z

    move-object v9, v0

    const/4 v10, 0x1

    iput-boolean v10, v9, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->activated:Z

    move-object v9, v0

    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->batteryStandartAktif:Z

    move-object v9, v0

    const/4 v10, -0x1

    iput v10, v9, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->batteryWarna:I

    move-object v9, v0

    const/4 v10, 0x1

    iput-boolean v10, v9, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mShowIcon:Z

    move-object v9, v0

    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mIsQuickSettings:Z

    move-object v9, v0

    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mShowPercent:Z

    move-object v9, v0

    new-instance v10, Landroid/graphics/Path;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    invoke-direct {v11}, Landroid/graphics/Path;-><init>()V

    iput-object v10, v9, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mBoltPath:Landroid/graphics/Path;

    move-object v9, v0

    new-instance v10, Landroid/graphics/RectF;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    invoke-direct {v11}, Landroid/graphics/RectF;-><init>()V

    iput-object v10, v9, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mFrame:Landroid/graphics/RectF;

    move-object v9, v0

    new-instance v10, Landroid/graphics/RectF;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    invoke-direct {v11}, Landroid/graphics/RectF;-><init>()V

    iput-object v10, v9, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mButtonFrame:Landroid/graphics/RectF;

    move-object v9, v0

    new-instance v10, Landroid/graphics/RectF;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    invoke-direct {v11}, Landroid/graphics/RectF;-><init>()V

    iput-object v10, v9, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mClipFrame:Landroid/graphics/RectF;

    move-object v9, v0

    new-instance v10, Landroid/graphics/RectF;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    invoke-direct {v11}, Landroid/graphics/RectF;-><init>()V

    iput-object v10, v9, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mBoltFrame:Landroid/graphics/RectF;

    move-object v9, v0

    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mPercentageOnly:Z

    move-object v9, v0

    new-instance v10, Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move-object v12, v0

    invoke-direct {v11, v12}, Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker;-><init>(Lcom/android/systemui/batteryview/inyong/BatteryStandart;)V

    iput-object v10, v9, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mTracker:Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker;

    move-object v9, v0

    new-instance v10, Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move-object v12, v0

    invoke-direct {v11, v12}, Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker;-><init>(Lcom/android/systemui/batteryview/inyong/BatteryStandart;)V

    iput-object v10, v9, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mDemoTracker:Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker;

    .line 205
    move-object v9, v0

    move-object v10, v1

    iput-object v10, v9, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mContext:Landroid/content/Context;

    .line 208
    const/4 v9, 0x3

    new-array v9, v9, [I

    fill-array-data v9, :array_0

    move-object v4, v9

    .line 210
    const/4 v9, 0x3

    new-array v9, v9, [I

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    const/4 v11, 0x0

    const/16 v12, 0xff

    const/16 v13, 0xff

    const/16 v14, 0x33

    const/4 v15, 0x0

    invoke-static {v12, v13, v14, v15}, Landroid/graphics/Color;->argb(IIII)I

    move-result v12

    aput v12, v10, v11

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    const/4 v11, 0x1

    const/16 v12, 0xff

    const/16 v13, 0xfb

    const/16 v14, 0x33

    const/4 v15, 0x0

    invoke-static {v12, v13, v14, v15}, Landroid/graphics/Color;->argb(IIII)I

    move-result v12

    aput v12, v10, v11

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    const/4 v11, 0x2

    const/4 v12, -0x1

    aput v12, v10, v11

    move-object v5, v9

    .line 217
    move-object v9, v0

    const-string v10, "statusbar"

    iput-object v10, v9, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mBatteryTypeView:Ljava/lang/String;

    .line 220
    move-object v9, v4

    array-length v9, v9

    move v6, v9

    .line 221
    move-object v9, v0

    const/4 v10, 0x2

    move v11, v6

    mul-int/2addr v10, v11

    new-array v10, v10, [I

    iput-object v10, v9, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mColors:[I

    .line 222
    const/4 v9, 0x0

    move v7, v9

    :goto_0
    move v9, v7

    move v10, v6

    if-lt v9, v10, :cond_0

    .line 231
    move-object v9, v0

    const-string v10, "!"

    iput-object v10, v9, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mWarningString:Ljava/lang/String;

    .line 233
    move-object v9, v0

    new-instance v10, Landroid/graphics/Paint;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    const/4 v12, 0x1

    invoke-direct {v11, v12}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v10, v9, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mFramePaint:Landroid/graphics/Paint;

    .line 234
    move-object v9, v0

    iget-object v9, v9, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mFramePaint:Landroid/graphics/Paint;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setDither(Z)V

    .line 235
    move-object v9, v0

    iget-object v9, v9, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mFramePaint:Landroid/graphics/Paint;

    const/4 v10, 0x0

    int-to-float v10, v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 236
    move-object v9, v0

    iget-object v9, v9, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mFramePaint:Landroid/graphics/Paint;

    sget-object v10, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 237
    move-object v9, v0

    iget-object v9, v9, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mFramePaint:Landroid/graphics/Paint;

    new-instance v10, Landroid/graphics/PorterDuffXfermode;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    sget-object v12, Landroid/graphics/PorterDuff$Mode;->DST_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v11, v12}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    move-result-object v9

    .line 239
    move-object v9, v0

    new-instance v10, Landroid/graphics/Paint;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    const/4 v12, 0x1

    invoke-direct {v11, v12}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v10, v9, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mBatteryPaint:Landroid/graphics/Paint;

    .line 240
    move-object v9, v0

    iget-object v9, v9, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mBatteryPaint:Landroid/graphics/Paint;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setDither(Z)V

    .line 241
    move-object v9, v0

    iget-object v9, v9, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mBatteryPaint:Landroid/graphics/Paint;

    const/4 v10, 0x0

    int-to-float v10, v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 242
    move-object v9, v0

    iget-object v9, v9, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mBatteryPaint:Landroid/graphics/Paint;

    sget-object v10, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 244
    move-object v9, v0

    new-instance v10, Landroid/graphics/Paint;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    const/4 v12, 0x1

    invoke-direct {v11, v12}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v10, v9, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mTextPaint:Landroid/graphics/Paint;

    .line 245
    move-object v9, v0

    iget-object v9, v9, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mTextPaint:Landroid/graphics/Paint;

    sget-object v10, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 247
    move-object v9, v0

    new-instance v10, Landroid/graphics/Paint;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    const/4 v12, 0x1

    invoke-direct {v11, v12}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v10, v9, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mWarningTextPaint:Landroid/graphics/Paint;

    .line 248
    move-object v9, v0

    iget-object v9, v9, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mWarningTextPaint:Landroid/graphics/Paint;

    move-object v10, v0

    iget-object v10, v10, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mColors:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 249
    const-string v9, "sans-serif-condensed"

    const/4 v10, 0x1

    invoke-static {v9, v10}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v9

    move-object v7, v9

    .line 250
    move-object v9, v0

    iget-object v9, v9, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mWarningTextPaint:Landroid/graphics/Paint;

    move-object v10, v7

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object v9

    .line 251
    move-object v9, v0

    iget-object v9, v9, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mWarningTextPaint:Landroid/graphics/Paint;

    sget-object v10, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 253
    move-object v9, v0

    new-instance v10, Landroid/graphics/Paint;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    iput-object v10, v9, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mBoltPaint:Landroid/graphics/Paint;

    .line 254
    move-object v9, v0

    iget-object v9, v9, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mBoltPaint:Landroid/graphics/Paint;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 255
    move-object v9, v0

    invoke-static {}, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->loadBoltPoints()[F

    move-result-object v10

    iput-object v10, v9, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mBoltPoints:[F

    .line 256
    move-object v9, v0

    const/4 v10, 0x1

    const/4 v11, 0x0

    check-cast v11, Landroid/graphics/Paint;

    invoke-virtual {v9, v10, v11}, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->setLayerType(ILandroid/graphics/Paint;)V

    .line 258
    move-object v9, v0

    move-object v10, v0

    iget-boolean v10, v10, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mIsQuickSettings:Z

    invoke-virtual {v9, v10}, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->updateSettings(Z)V

    return-void

    .line 224
    :cond_0
    move-object v9, v0

    iget-object v9, v9, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mColors:[I

    const/4 v10, 0x2

    move v11, v7

    mul-int/2addr v10, v11

    move-object v11, v4

    move v12, v7

    aget v11, v11, v12

    aput v11, v9, v10

    .line 225
    move-object v9, v0

    iget-object v9, v9, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mColors:[I

    const/4 v10, 0x2

    move v11, v7

    mul-int/2addr v10, v11

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    move-object v11, v5

    move v12, v7

    aget v11, v11, v12

    aput v11, v9, v10

    .line 222
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 208
    :array_0
    .array-data 4
        0x4
        0xf
        0x64
    .end array-data
.end method

.method private getColorForLevel(I)I
    .locals 9

    .prologue
    .line 291
    move-object v0, p0

    move v1, p1

    const/4 v6, 0x0

    move v3, v6

    .line 292
    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move-object v7, v0

    iget-object v7, v7, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mColors:[I

    array-length v7, v7

    if-lt v6, v7, :cond_0

    .line 298
    move v6, v3

    move v0, v6

    :goto_1
    return v0

    .line 294
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mColors:[I

    move v7, v4

    aget v6, v6, v7

    move v2, v6

    .line 295
    move-object v6, v0

    iget-object v6, v6, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mColors:[I

    move v7, v4

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    aget v6, v6, v7

    move v3, v6

    .line 296
    move v6, v1

    move v7, v2

    if-gt v6, v7, :cond_1

    move v6, v3

    move v0, v6

    goto :goto_1

    .line 292
    :cond_1
    move v6, v4

    const/4 v7, 0x2

    add-int/lit8 v6, v6, 0x2

    move v4, v6

    goto :goto_0
.end method

.method private static loadBoltPoints()[F
    .locals 11

    .prologue
    .line 263
    const/16 v6, 0xe

    new-array v6, v6, [I

    fill-array-data v6, :array_0

    move-object v0, v6

    .line 265
    const/4 v6, 0x0

    move v1, v6

    const/4 v6, 0x0

    move v2, v6

    .line 266
    const/4 v6, 0x0

    move v3, v6

    :goto_0
    move v6, v3

    move-object v7, v0

    array-length v7, v7

    if-lt v6, v7, :cond_0

    .line 271
    move-object v6, v0

    array-length v6, v6

    new-array v6, v6, [F

    move-object v3, v6

    .line 272
    const/4 v6, 0x0

    move v4, v6

    :goto_1
    move v6, v4

    move-object v7, v0

    array-length v7, v7

    if-lt v6, v7, :cond_1

    .line 277
    move-object v6, v3

    move-object v0, v6

    return-object v0

    .line 268
    :cond_0
    move v6, v1

    move-object v7, v0

    move v8, v3

    aget v7, v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    move v1, v6

    .line 269
    move v6, v2

    move-object v7, v0

    move v8, v3

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    aget v7, v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    move v2, v6

    .line 266
    move v6, v3

    const/4 v7, 0x2

    add-int/lit8 v6, v6, 0x2

    move v3, v6

    goto :goto_0

    .line 274
    :cond_1
    move-object v6, v3

    move v7, v4

    move-object v8, v0

    move v9, v4

    aget v8, v8, v9

    int-to-float v8, v8

    move v9, v1

    int-to-float v9, v9

    div-float/2addr v8, v9

    aput v8, v6, v7

    .line 275
    move-object v6, v3

    move v7, v4

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move-object v8, v0

    move v9, v4

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    aget v8, v8, v9

    int-to-float v8, v8

    move v9, v2

    int-to-float v9, v9

    div-float/2addr v8, v9

    aput v8, v6, v7

    .line 272
    move v6, v4

    const/4 v7, 0x2

    add-int/lit8 v6, v6, 0x2

    move v4, v6

    goto :goto_1

    .line 263
    nop

    :array_0
    .array-data 4
        0x49
        0x0
        0x188
        0x0
        0xc9
        0x103
        0x1ba
        0x103
        0x4
        0x2bf
        0x9d
        0x14e
        0x0
        0x14e
    .end array-data
.end method

.method private updateBattery()V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 622
    move-object v0, p0

    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mPercentageOnly:Z

    .line 623
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->SHOW_100_PERCENT:Z

    .line 625
    const-string v5, "sans-serif-condensed"

    const/4 v6, 0x1

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    move-object v1, v5

    .line 626
    move-object v5, v0

    iget v5, v5, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mBatteryStyle:I

    const/4 v6, 0x0

    if-ne v5, v6, :cond_3

    .line 628
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mShowIcon:Z

    .line 629
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mShowPercent:Z

    .line 652
    :cond_0
    :goto_0
    move-object v5, v0

    iget-object v5, v5, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mTextPaint:Landroid/graphics/Paint;

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object v5

    .line 654
    move-object v5, v0

    iget-boolean v5, v5, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mDemoMode:Z

    if-eqz v5, :cond_6

    move-object v5, v0

    iget-object v5, v5, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mDemoTracker:Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker;

    :goto_1
    move-object v2, v5

    .line 656
    move-object v5, v2

    iget v5, v5, Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker;->level:I

    const/16 v6, 0xf

    if-gt v5, v6, :cond_7

    move-object v5, v2

    iget-boolean v5, v5, Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker;->plugged:Z

    if-nez v5, :cond_7

    .line 658
    move-object v5, v0

    iget-object v5, v5, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mBatteryPaint:Landroid/graphics/Paint;

    const/high16 v6, -0x10000

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 659
    move-object v5, v0

    iget-object v5, v5, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mFramePaint:Landroid/graphics/Paint;

    const/16 v6, 0x50

    const/16 v7, 0x50

    const/16 v8, 0x50

    invoke-static {v6, v7, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 681
    :goto_2
    const/4 v5, 0x0

    move v3, v5

    .line 682
    move-object v5, v2

    iget v5, v5, Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker;->level:I

    const/16 v6, 0xf

    if-gt v5, v6, :cond_9

    move-object v5, v0

    iget v5, v5, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mBatteryStyle:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1

    move-object v5, v0

    iget v5, v5, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mBatteryStyle:I

    const/4 v6, 0x7

    if-eq v5, v6, :cond_1

    move-object v5, v0

    iget v5, v5, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mBatteryStyle:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_9

    .line 686
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mTextPaint:Landroid/graphics/Paint;

    const/high16 v6, -0x10000

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 687
    const/4 v5, 0x1

    move v3, v5

    .line 714
    :goto_3
    move-object v5, v2

    iget-boolean v5, v5, Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker;->plugged:Z

    if-eqz v5, :cond_2

    .line 716
    move-object v5, v0

    iget v5, v5, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mPercentageChargingColor:I

    const/4 v6, -0x2

    if-ne v5, v6, :cond_d

    .line 718
    move-object v5, v0

    iget v5, v5, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mBatteryStyle:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_c

    .line 720
    move-object v5, v0

    iget-object v5, v5, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mBoltPaint:Landroid/graphics/Paint;

    const v6, -0xff0100

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 733
    :goto_4
    move-object v5, v0

    iget v5, v5, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mBatteryStyle:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    move v5, v3

    if-nez v5, :cond_2

    .line 735
    move-object v5, v0

    iget-object v5, v5, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mTextPaint:Landroid/graphics/Paint;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mBoltPaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getColor()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 738
    :cond_2
    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->postInvalidate()V

    return-void

    .line 631
    :cond_3
    move-object v5, v0

    iget v5, v5, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mBatteryStyle:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_4

    .line 633
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mShowIcon:Z

    .line 634
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mShowPercent:Z

    .line 635
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->SHOW_100_PERCENT:Z

    goto/16 :goto_0

    .line 637
    :cond_4
    move-object v5, v0

    iget v5, v5, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mBatteryStyle:I

    const/4 v6, 0x7

    if-ne v5, v6, :cond_5

    .line 639
    const-string v5, "sans-serif"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    move-object v1, v5

    .line 640
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mShowIcon:Z

    .line 641
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mShowPercent:Z

    .line 642
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->SHOW_100_PERCENT:Z

    goto/16 :goto_0

    .line 644
    :cond_5
    move-object v5, v0

    iget v5, v5, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mBatteryStyle:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 646
    const-string v5, "sans-serif"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v5

    move-object v1, v5

    .line 647
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mShowIcon:Z

    .line 648
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mShowPercent:Z

    .line 649
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mPercentageOnly:Z

    .line 650
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->SHOW_100_PERCENT:Z

    goto/16 :goto_0

    .line 654
    :cond_6
    move-object v5, v0

    iget-object v5, v5, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mTracker:Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker;

    goto/16 :goto_1

    .line 662
    :cond_7
    move-object v5, v0

    iget-boolean v5, v5, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mCustomColor:Z

    if-eqz v5, :cond_8

    .line 664
    move-object v5, v0

    iget-object v5, v5, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mBatteryPaint:Landroid/graphics/Paint;

    move-object v6, v0

    iget v6, v6, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->batteryWarna:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 665
    move-object v5, v0

    iget-object v5, v5, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mFramePaint:Landroid/graphics/Paint;

    const/16 v6, 0x50

    const/16 v7, 0x50

    const/16 v8, 0x50

    invoke-static {v6, v7, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_2

    .line 677
    :cond_8
    move-object v5, v0

    iget-object v5, v5, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mBatteryPaint:Landroid/graphics/Paint;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 678
    move-object v5, v0

    iget-object v5, v5, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mFramePaint:Landroid/graphics/Paint;

    const/16 v6, 0x50

    const/16 v7, 0x50

    const/16 v8, 0x50

    invoke-static {v6, v7, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_2

    .line 689
    :cond_9
    move-object v5, v2

    iget v5, v5, Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker;->level:I

    const/16 v6, 0x5a

    if-lt v5, v6, :cond_b

    move-object v5, v2

    iget-boolean v5, v5, Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker;->plugged:Z

    if-eqz v5, :cond_b

    move-object v5, v0

    iget v5, v5, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mBatteryStyle:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_a

    move-object v5, v0

    iget v5, v5, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mBatteryStyle:I

    const/4 v6, 0x7

    if-ne v5, v6, :cond_b

    .line 693
    :cond_a
    move-object v5, v0

    iget-object v5, v5, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mTextPaint:Landroid/graphics/Paint;

    const v6, -0xff0100

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 694
    const/4 v5, 0x1

    move v3, v5

    goto/16 :goto_3

    .line 711
    :cond_b
    move-object v5, v0

    iget-object v5, v5, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mTextPaint:Landroid/graphics/Paint;

    move-object v6, v0

    iget v6, v6, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mPercentageColor:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_3

    .line 725
    :cond_c
    move-object v5, v0

    iget-object v5, v5, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mBoltPaint:Landroid/graphics/Paint;

    const/high16 v6, -0x1000000

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_4

    .line 731
    :cond_d
    move-object v5, v0

    iget-object v5, v5, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mBoltPaint:Landroid/graphics/Paint;

    move-object v6, v0

    iget v6, v6, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mPercentageChargingColor:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_4
.end method


# virtual methods
.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 490
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v0

    iget-boolean v6, v6, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mDemoMode:Z

    if-nez v6, :cond_1

    move-object v6, v1

    const-string v7, "enter"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 492
    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mDemoMode:Z

    .line 493
    move-object v6, v0

    iget-object v6, v6, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mDemoTracker:Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker;

    move-object v7, v0

    iget-object v7, v7, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mTracker:Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker;

    iget v7, v7, Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker;->level:I

    iput v7, v6, Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker;->level:I

    .line 494
    move-object v6, v0

    iget-object v6, v6, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mDemoTracker:Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker;

    move-object v7, v0

    iget-object v7, v7, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mTracker:Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker;

    iget-boolean v7, v7, Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker;->plugged:Z

    iput-boolean v7, v6, Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker;->plugged:Z

    .line 513
    :cond_0
    :goto_0
    return-void

    .line 496
    :cond_1
    move-object v6, v0

    iget-boolean v6, v6, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mDemoMode:Z

    if-eqz v6, :cond_2

    move-object v6, v1

    const-string v7, "exit"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 498
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mDemoMode:Z

    .line 499
    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->postInvalidate()V

    goto :goto_0

    .line 501
    :cond_2
    move-object v6, v0

    iget-boolean v6, v6, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mDemoMode:Z

    if-eqz v6, :cond_0

    move-object v6, v1

    const-string v7, "battery"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 503
    move-object v6, v2

    const-string v7, "level"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 504
    move-object v6, v2

    const-string v7, "plugged"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 505
    move-object v6, v3

    if-eqz v6, :cond_3

    .line 507
    move-object v6, v0

    iget-object v6, v6, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mDemoTracker:Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker;

    move-object v7, v3

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x0

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    const/16 v8, 0x64

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    iput v7, v6, Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker;->level:I

    .line 509
    :cond_3
    move-object v6, v4

    if-eqz v6, :cond_4

    .line 511
    move-object v6, v0

    iget-object v6, v6, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mDemoTracker:Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker;

    move-object v7, v4

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, v6, Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker;->plugged:Z

    .line 513
    :cond_4
    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->postInvalidate()V

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 305
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mDemoMode:Z

    move/from16 v19, v0

    if-eqz v19, :cond_0

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mDemoTracker:Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker;

    move-object/from16 v19, v0

    :goto_0
    move-object/from16 v4, v19

    .line 306
    move-object/from16 v19, v4

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker;->level:I

    move/from16 v19, v0

    move/from16 v5, v19

    .line 308
    move/from16 v19, v5

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 477
    :goto_1
    return-void

    .line 305
    :cond_0
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mTracker:Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker;

    move-object/from16 v19, v0

    goto :goto_0

    .line 310
    :cond_1
    move/from16 v19, v5

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x42c80000

    div-float v19, v19, v20

    move/from16 v6, v19

    .line 311
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->getPaddingTop()I

    move-result v19

    move/from16 v7, v19

    .line 312
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->getPaddingLeft()I

    move-result v19

    move/from16 v8, v19

    .line 313
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->getPaddingRight()I

    move-result v19

    move/from16 v9, v19

    .line 314
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->getPaddingBottom()I

    move-result v19

    move/from16 v10, v19

    .line 315
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mHeight:I

    move/from16 v19, v0

    move/from16 v20, v7

    sub-int v19, v19, v20

    move/from16 v20, v10

    sub-int v19, v19, v20

    move/from16 v11, v19

    .line 316
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mWidth:I

    move/from16 v19, v0

    move/from16 v20, v8

    sub-int v19, v19, v20

    move/from16 v20, v9

    sub-int v19, v19, v20

    move/from16 v12, v19

    .line 318
    move-object/from16 v19, v2

    move/from16 v20, v11

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const v21, 0x3df5c28f

    mul-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mButtonHeight:I

    .line 320
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mBatteryStyle:I

    move/from16 v19, v0

    const/16 v20, 0x7

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_c

    .line 322
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/16 v21, 0x0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v22, v12

    const/16 v23, 0x3

    div-int/lit8 v22, v22, 0x3

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v23, v11

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    invoke-virtual/range {v19 .. v23}, Landroid/graphics/RectF;->set(FFFF)V

    .line 323
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    move/from16 v20, v8

    move/from16 v21, v12

    const/16 v22, 0x3

    div-int/lit8 v21, v21, 0x3

    const/16 v22, 0x2

    mul-int/lit8 v21, v21, 0x2

    add-int v20, v20, v21

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v21, v7

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Landroid/graphics/RectF;->offset(FF)V

    .line 331
    :goto_2
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mButtonFrame:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v20, v0

    move/from16 v21, v12

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x3e800000

    mul-float v21, v21, v22

    add-float v20, v20, v21

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v21, v0

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v22, v0

    move/from16 v23, v12

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x3e800000

    mul-float v23, v23, v24

    sub-float v22, v22, v23

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v23, v0

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mButtonHeight:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    add-float v23, v23, v24

    const/16 v24, 0x5

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    add-float v23, v23, v24

    invoke-virtual/range {v19 .. v23}, Landroid/graphics/RectF;->set(FFFF)V

    .line 337
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mButtonFrame:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    move-object/from16 v32, v19

    move-object/from16 v19, v32

    move-object/from16 v20, v32

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v20, v0

    const v21, 0x3ecccccd

    add-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/graphics/RectF;->top:F

    .line 338
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mButtonFrame:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    move-object/from16 v32, v19

    move-object/from16 v19, v32

    move-object/from16 v20, v32

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v20, v0

    const v21, 0x3ecccccd

    add-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/graphics/RectF;->left:F

    .line 339
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mButtonFrame:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    move-object/from16 v32, v19

    move-object/from16 v19, v32

    move-object/from16 v20, v32

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v20, v0

    const v21, 0x3ecccccd

    sub-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/graphics/RectF;->right:F

    .line 341
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    move-object/from16 v32, v19

    move-object/from16 v19, v32

    move-object/from16 v20, v32

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v20, v0

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mButtonHeight:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    add-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/graphics/RectF;->top:F

    .line 342
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    move-object/from16 v32, v19

    move-object/from16 v19, v32

    move-object/from16 v20, v32

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v20, v0

    const v21, 0x3ecccccd

    add-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/graphics/RectF;->left:F

    .line 343
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    move-object/from16 v32, v19

    move-object/from16 v19, v32

    move-object/from16 v20, v32

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v20, v0

    const v21, 0x3ecccccd

    add-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/graphics/RectF;->top:F

    .line 344
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    move-object/from16 v32, v19

    move-object/from16 v19, v32

    move-object/from16 v20, v32

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v20, v0

    const v21, 0x3ecccccd

    sub-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/graphics/RectF;->right:F

    .line 345
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    move-object/from16 v32, v19

    move-object/from16 v19, v32

    move-object/from16 v20, v32

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v20, v0

    const v21, 0x3ecccccd

    sub-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    .line 348
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mShowIcon:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2

    .line 350
    move-object/from16 v19, v3

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v20, v0

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 353
    :cond_2
    move/from16 v19, v5

    const/16 v20, 0x60

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_d

    .line 355
    const/high16 v19, 0x3f800000

    move/from16 v6, v19

    .line 362
    :cond_3
    :goto_3
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mShowIcon:Z

    move/from16 v19, v0

    if-eqz v19, :cond_4

    .line 364
    move-object/from16 v19, v3

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mButtonFrame:Landroid/graphics/RectF;

    move-object/from16 v20, v0

    move/from16 v21, v6

    const/high16 v22, 0x3f800000

    cmpg-float v21, v21, v22

    if-nez v21, :cond_e

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mBatteryPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    :goto_4
    invoke-virtual/range {v19 .. v21}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 366
    :cond_4
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mClipFrame:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 367
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mClipFrame:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    move-object/from16 v32, v19

    move-object/from16 v19, v32

    move-object/from16 v20, v32

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v20, v0

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/RectF;->height()F

    move-result v21

    const/high16 v22, 0x3f800000

    move/from16 v23, v6

    sub-float v22, v22, v23

    mul-float v21, v21, v22

    add-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Landroid/graphics/RectF;->top:F

    .line 369
    move-object/from16 v19, v3

    const/16 v20, 0x2

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Canvas;->save(I)I

    move-result v19

    .line 370
    move-object/from16 v19, v3

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mClipFrame:Landroid/graphics/RectF;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    move-result v19

    .line 371
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mShowIcon:Z

    move/from16 v19, v0

    if-eqz v19, :cond_5

    .line 373
    move-object/from16 v19, v3

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v20, v0

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mBatteryPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 375
    :cond_5
    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Canvas;->restore()V

    .line 377
    move-object/from16 v19, v4

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker;->plugged:Z

    move/from16 v19, v0

    if-eqz v19, :cond_10

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mPercentageOnly:Z

    move/from16 v19, v0

    if-nez v19, :cond_10

    .line 380
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v19, v0

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/RectF;->width()F

    move-result v20

    const/high16 v21, 0x40900000

    div-float v20, v20, v21

    add-float v19, v19, v20

    move/from16 v13, v19

    .line 381
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v19, v0

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/RectF;->height()F

    move-result v20

    const/high16 v21, 0x40c00000

    div-float v20, v20, v21

    add-float v19, v19, v20

    move/from16 v14, v19

    .line 382
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v19, v0

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/RectF;->width()F

    move-result v20

    const/high16 v21, 0x40e00000

    div-float v20, v20, v21

    sub-float v19, v19, v20

    move/from16 v15, v19

    .line 383
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v19, v0

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/RectF;->height()F

    move-result v20

    const/high16 v21, 0x41200000

    div-float v20, v20, v21

    sub-float v19, v19, v20

    move/from16 v16, v19

    .line 384
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v19, v0

    move/from16 v20, v13

    cmpg-float v19, v19, v20

    if-nez v19, :cond_6

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v19, v0

    move/from16 v20, v14

    cmpg-float v19, v19, v20

    if-nez v19, :cond_6

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v19, v0

    move/from16 v20, v15

    cmpg-float v19, v19, v20

    if-nez v19, :cond_6

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v19, v0

    move/from16 v20, v16

    cmpl-float v19, v19, v20

    if-eqz v19, :cond_7

    .line 387
    :cond_6
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    move/from16 v20, v13

    move/from16 v21, v14

    move/from16 v22, v15

    move/from16 v23, v16

    invoke-virtual/range {v19 .. v23}, Landroid/graphics/RectF;->set(FFFF)V

    .line 388
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mBoltPath:Landroid/graphics/Path;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Path;->reset()V

    .line 389
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mBoltPath:Landroid/graphics/Path;

    move-object/from16 v19, v0

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v20, v0

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mBoltPoints:[F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget v21, v21, v22

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/RectF;->width()F

    move-result v22

    mul-float v21, v21, v22

    add-float v20, v20, v21

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v21, v0

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mBoltPoints:[F

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget v22, v22, v23

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/RectF;->height()F

    move-result v23

    mul-float v22, v22, v23

    add-float v21, v21, v22

    invoke-virtual/range {v19 .. v21}, Landroid/graphics/Path;->moveTo(FF)V

    .line 392
    const/16 v19, 0x2

    move/from16 v17, v19

    :goto_5
    move/from16 v19, v17

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mBoltPoints:[F

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_f

    .line 398
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mBoltPath:Landroid/graphics/Path;

    move-object/from16 v19, v0

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v20, v0

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mBoltPoints:[F

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget v21, v21, v22

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/RectF;->width()F

    move-result v22

    mul-float v21, v21, v22

    add-float v20, v20, v21

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v21, v0

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mBoltPoints:[F

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget v22, v22, v23

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/RectF;->height()F

    move-result v23

    mul-float v22, v22, v23

    add-float v21, v21, v22

    invoke-virtual/range {v19 .. v21}, Landroid/graphics/Path;->lineTo(FF)V

    .line 402
    :cond_7
    move-object/from16 v19, v3

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mBoltPath:Landroid/graphics/Path;

    move-object/from16 v20, v0

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mBoltPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 410
    :cond_8
    :goto_6
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mShowPercent:Z

    move/from16 v19, v0

    if-eqz v19, :cond_b

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mBatteryStyle:I

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_9

    move-object/from16 v19, v4

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker;->plugged:Z

    move/from16 v19, v0

    if-nez v19, :cond_b

    .line 412
    :cond_9
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mPercentageOnly:Z

    move/from16 v19, v0

    if-eqz v19, :cond_12

    .line 414
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v19

    move-object/from16 v13, v19

    .line 415
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mBatteryTypeView:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "statusbar"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_11

    .line 417
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    move-object/from16 v20, v13

    move-object/from16 v0, v20

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v20, v0

    const/high16 v21, 0x41800000

    mul-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 444
    :cond_a
    :goto_7
    move-object/from16 v19, v2

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    move/from16 v20, v0

    move/from16 v0, v20

    neg-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mTextHeight:F

    .line 446
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mPercentageOnly:Z

    move/from16 v19, v0

    if-eqz v19, :cond_17

    .line 449
    new-instance v19, Ljava/lang/StringBuffer;

    move-object/from16 v32, v19

    move-object/from16 v19, v32

    move-object/from16 v20, v32

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuffer;-><init>()V

    move/from16 v20, v5

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    const-string v20, "%"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v13, v19

    .line 456
    :goto_8
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mBatteryStyle:I

    move/from16 v19, v0

    const/16 v20, 0x7

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1a

    .line 459
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mBatteryTypeView:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "statusbar"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_18

    .line 461
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x3f000000

    mul-float v19, v19, v20

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mWidth:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x3e800000

    mul-float v20, v20, v21

    sub-float v19, v19, v20

    move/from16 v14, v19

    .line 476
    :goto_9
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mHeight:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mTextHeight:F

    move/from16 v20, v0

    add-float v19, v19, v20

    const v20, 0x3ef0a3d7

    mul-float v19, v19, v20

    move/from16 v15, v19

    .line 477
    move-object/from16 v19, v3

    move-object/from16 v20, v13

    move/from16 v21, v14

    move/from16 v22, v15

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    invoke-virtual/range {v19 .. v23}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_b
    goto/16 :goto_1

    .line 327
    :cond_c
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/16 v21, 0x0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v22, v12

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v23, v11

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    invoke-virtual/range {v19 .. v23}, Landroid/graphics/RectF;->set(FFFF)V

    .line 328
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    move/from16 v20, v8

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v21, v7

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Landroid/graphics/RectF;->offset(FF)V

    goto/16 :goto_2

    .line 357
    :cond_d
    move/from16 v19, v5

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_3

    .line 359
    const/16 v19, 0x0

    move/from16 v6, v19

    goto/16 :goto_3

    .line 364
    :cond_e
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    goto/16 :goto_4

    .line 394
    :cond_f
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mBoltPath:Landroid/graphics/Path;

    move-object/from16 v19, v0

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v20, v0

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mBoltPoints:[F

    move-object/from16 v21, v0

    move/from16 v22, v17

    aget v21, v21, v22

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/RectF;->width()F

    move-result v22

    mul-float v21, v21, v22

    add-float v20, v20, v21

    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v21, v0

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mBoltPoints:[F

    move-object/from16 v22, v0

    move/from16 v23, v17

    const/16 v24, 0x1

    add-int/lit8 v23, v23, 0x1

    aget v22, v22, v23

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/RectF;->height()F

    move-result v23

    mul-float v22, v22, v23

    add-float v21, v21, v22

    invoke-virtual/range {v19 .. v21}, Landroid/graphics/Path;->lineTo(FF)V

    .line 392
    move/from16 v19, v17

    const/16 v20, 0x2

    add-int/lit8 v19, v19, 0x2

    move/from16 v17, v19

    goto/16 :goto_5

    .line 404
    :cond_10
    move/from16 v19, v5

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_8

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mBatteryStyle:I

    move/from16 v19, v0

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    .line 406
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x3f000000

    mul-float v19, v19, v20

    move/from16 v13, v19

    .line 407
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mHeight:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mWarningTextHeight:F

    move/from16 v20, v0

    add-float v19, v19, v20

    const v20, 0x3ef5c28f

    mul-float v19, v19, v20

    move/from16 v14, v19

    .line 408
    move-object/from16 v19, v3

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mWarningString:Ljava/lang/String;

    move-object/from16 v20, v0

    move/from16 v21, v13

    move/from16 v22, v14

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mWarningTextPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    invoke-virtual/range {v19 .. v23}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_6

    .line 419
    :cond_11
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mBatteryTypeView:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "quicksettings"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 421
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    move-object/from16 v20, v13

    move-object/from16 v0, v20

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v20, v0

    const/high16 v21, 0x41b00000

    mul-float v20, v20, v21

    const/high16 v21, 0x3f000000

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setTextSize(F)V

    goto/16 :goto_7

    .line 424
    :cond_12
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mBatteryStyle:I

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_14

    .line 426
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    move/from16 v20, v11

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v21, v4

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker;->level:I

    move/from16 v21, v0

    const/16 v22, 0x64

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_13

    const v21, 0x3ec28f5c

    :goto_a
    mul-float v20, v20, v21

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setTextSize(F)V

    goto/16 :goto_7

    :cond_13
    const/high16 v21, 0x3f000000

    goto :goto_a

    .line 430
    :cond_14
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mBatteryStyle:I

    move/from16 v19, v0

    const/16 v20, 0x7

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_a

    .line 432
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v19

    move-object/from16 v13, v19

    .line 433
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mBatteryTypeView:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "statusbar"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_16

    .line 435
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    move/from16 v20, v11

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v21, v4

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker;->level:I

    move/from16 v21, v0

    const/16 v22, 0x64

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_15

    const v21, 0x3f147ae1

    :goto_b
    mul-float v20, v20, v21

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setTextSize(F)V

    goto/16 :goto_7

    :cond_15
    const v21, 0x3f333333

    goto :goto_b

    .line 439
    :cond_16
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mBatteryTypeView:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "quicksettings"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 441
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    move-object/from16 v20, v13

    move-object/from16 v0, v20

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v20, v0

    const/high16 v21, 0x41600000

    mul-float v20, v20, v21

    const/high16 v21, 0x3f000000

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setTextSize(F)V

    goto/16 :goto_7

    .line 453
    :cond_17
    move/from16 v19, v5

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v13, v19

    goto/16 :goto_8

    .line 463
    :cond_18
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mBatteryTypeView:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "quicksettings"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_19

    .line 465
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x3f000000

    mul-float v19, v19, v20

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mWidth:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const v21, 0x3e4ccccd

    mul-float v20, v20, v21

    sub-float v19, v19, v20

    move/from16 v14, v19

    goto/16 :goto_9

    .line 469
    :cond_19
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x3f000000

    mul-float v19, v19, v20

    move/from16 v14, v19

    goto/16 :goto_9

    .line 474
    :cond_1a
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x3f000000

    mul-float v19, v19, v20

    move/from16 v14, v19

    goto/16 :goto_9
.end method

.method public onAttachedToWindow()V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 168
    move-object v0, p0

    move-object v4, v0

    invoke-super {v4}, Landroid/view/View;->onAttachedToWindow()V

    .line 170
    new-instance v4, Landroid/content/IntentFilter;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "inyong.batteryview"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v1, v4

    .line 171
    move-object v4, v1

    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 172
    move-object v4, v1

    const-string v5, "inyong.batteryview"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 174
    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mTracker:Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker;

    move-object v6, v1

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v4

    move-object v2, v4

    .line 175
    move-object v4, v2

    if-eqz v4, :cond_0

    .line 178
    move-object v4, v0

    iget-object v4, v4, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mTracker:Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 185
    move-object v0, p0

    move-object v2, v0

    invoke-super {v2}, Landroid/view/View;->onDetachedFromWindow()V

    .line 187
    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mTracker:Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 283
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, v0

    move v7, v2

    iput v7, v6, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mHeight:I

    .line 284
    move-object v6, v0

    move v7, v1

    iput v7, v6, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mWidth:I

    .line 285
    move-object v6, v0

    iget-object v6, v6, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mWarningTextPaint:Landroid/graphics/Paint;

    move v7, v2

    int-to-float v7, v7

    const/high16 v8, 0x3f400000

    mul-float/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 286
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mWarningTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v7, v7

    iput v7, v6, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mWarningTextHeight:F

    return-void
.end method

.method public updateSettings(Z)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .prologue
    .line 519
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object v9, v0

    iget-object v9, v9, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    move-object v2, v9

    .line 534
    move-object v9, v0

    move-object v10, v2

    const-string v11, "battery_aktif"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_2

    const/4 v10, 0x0

    :goto_0
    iput-boolean v10, v9, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->activated:Z

    .line 536
    move-object v9, v0

    move-object v10, v2

    const-string v11, "battery_yang_aktif"

    const/4 v12, 0x2

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_3

    const/4 v10, 0x0

    :goto_1
    iput-boolean v10, v9, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->batteryStandartAktif:Z

    .line 537
    move-object v9, v0

    move-object v10, v0

    iget-boolean v10, v10, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->activated:Z

    if-eqz v10, :cond_4

    move-object v10, v0

    iget-boolean v10, v10, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->batteryStandartAktif:Z

    if-eqz v10, :cond_4

    const/4 v10, 0x0

    :goto_2
    invoke-virtual {v9, v10}, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->setVisibility(I)V

    .line 539
    move-object v9, v0

    move-object v10, v2

    const-string v11, "battery_warna"

    const/4 v12, -0x1

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    iput v10, v9, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->batteryWarna:I

    .line 541
    move-object v9, v0

    move-object v10, v2

    const-string v11, "battery_standart_persen"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_5

    const/4 v10, 0x7

    :goto_3
    iput v10, v9, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mBatteryStyle:I

    .line 550
    move-object v9, v0

    move-object v10, v0

    iget v10, v10, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->batteryWarna:I

    iput v10, v9, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mBatteryColor:I

    .line 552
    move-object v9, v0

    move-object v10, v0

    iget v10, v10, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->batteryWarna:I

    iput v10, v9, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mPercentageColor:I

    .line 554
    move-object v9, v0

    const/16 v10, 0xb2

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v10, v11, v12, v13}, Landroid/graphics/Color;->argb(IIII)I

    move-result v10

    iput v10, v9, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mPercentageChargingColor:I

    .line 557
    move-object v9, v0

    const/4 v10, 0x1

    iput-boolean v10, v9, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mCustomColor:Z

    .line 559
    move-object v9, v0

    const v10, -0x777778

    iput v10, v9, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->systemColor:I

    .line 569
    move-object v9, v0

    iget-boolean v9, v9, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->activated:Z

    if-eqz v9, :cond_1

    .line 571
    const/4 v9, 0x0

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    move-object v3, v9

    .line 572
    const/4 v9, 0x0

    move v4, v9

    .line 573
    const/4 v9, 0x0

    move v5, v9

    .line 574
    move-object v9, v0

    iget-object v9, v9, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    move-object v6, v9

    .line 575
    move-object v9, v6

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    move-object v7, v9

    .line 576
    move-object v9, v0

    iget-object v9, v9, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mBatteryTypeView:Ljava/lang/String;

    const-string v10, "statusbar"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 578
    move-object v9, v7

    iget v9, v9, Landroid/util/DisplayMetrics;->density:F

    const/high16 v10, 0x41800000

    mul-float/2addr v9, v10

    const/high16 v10, 0x3f000000

    add-float/2addr v9, v10

    move v5, v9

    .line 579
    move-object v9, v0

    iget v9, v9, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mBatteryStyle:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_6

    .line 581
    move-object v9, v7

    iget v9, v9, Landroid/util/DisplayMetrics;->density:F

    const/high16 v10, 0x42180000

    mul-float/2addr v9, v10

    const/high16 v10, 0x3f000000

    add-float/2addr v9, v10

    move v4, v9

    .line 591
    :goto_4
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v19, v9

    move-object/from16 v9, v19

    move-object/from16 v10, v19

    move v11, v4

    float-to-int v11, v11

    move v12, v5

    float-to-int v12, v12

    invoke-direct {v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v3, v9

    .line 592
    move-object v9, v3

    move-object v10, v7

    iget v10, v10, Landroid/util/DisplayMetrics;->density:F

    const/high16 v11, 0x40c00000

    mul-float/2addr v10, v11

    const/high16 v11, 0x3f000000

    add-float/2addr v10, v11

    float-to-int v10, v10

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 593
    move-object v9, v3

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v13, v7

    iget v13, v13, Landroid/util/DisplayMetrics;->density:F

    const/high16 v14, 0x3f000000

    mul-float/2addr v13, v14

    const/high16 v14, 0x3f000000

    add-float/2addr v13, v14

    float-to-int v13, v13

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 594
    move-object v9, v0

    move-object v10, v3

    invoke-virtual {v9, v10}, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 616
    :cond_0
    :goto_5
    move-object v9, v0

    invoke-direct {v9}, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->updateBattery()V

    :cond_1
    return-void

    .line 534
    :cond_2
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 536
    :cond_3
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 537
    :cond_4
    const/16 v10, 0x8

    goto/16 :goto_2

    .line 541
    :cond_5
    const/4 v10, 0x0

    goto/16 :goto_3

    .line 583
    :cond_6
    move-object v9, v0

    iget v9, v9, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mBatteryStyle:I

    const/4 v10, 0x7

    if-ne v9, v10, :cond_7

    .line 585
    move-object v9, v7

    iget v9, v9, Landroid/util/DisplayMetrics;->density:F

    const/high16 v10, 0x41b00000

    mul-float/2addr v9, v10

    const/high16 v10, 0x3f000000

    add-float/2addr v9, v10

    move v4, v9

    goto :goto_4

    .line 589
    :cond_7
    move-object v9, v7

    iget v9, v9, Landroid/util/DisplayMetrics;->density:F

    const/high16 v10, 0x41280000

    mul-float/2addr v9, v10

    const/high16 v10, 0x3f000000

    add-float/2addr v9, v10

    move v4, v9

    goto :goto_4

    .line 596
    :cond_8
    move-object v9, v0

    iget-object v9, v9, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mBatteryTypeView:Ljava/lang/String;

    const-string v10, "quicksettings"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 598
    move-object v9, v7

    iget v9, v9, Landroid/util/DisplayMetrics;->density:F

    const/high16 v10, 0x42000000

    mul-float/2addr v9, v10

    const/high16 v10, 0x3f000000

    add-float/2addr v9, v10

    move v5, v9

    .line 599
    move-object v9, v0

    iget v9, v9, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mBatteryStyle:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_9

    .line 601
    move-object v9, v7

    iget v9, v9, Landroid/util/DisplayMetrics;->density:F

    const/high16 v10, 0x42500000

    mul-float/2addr v9, v10

    const/high16 v10, 0x3f000000

    add-float/2addr v9, v10

    move v4, v9

    .line 611
    :goto_6
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v19, v9

    move-object/from16 v9, v19

    move-object/from16 v10, v19

    move v11, v4

    float-to-int v11, v11

    move v12, v5

    float-to-int v12, v12

    invoke-direct {v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v3, v9

    .line 612
    move-object v9, v3

    const/16 v10, 0x31

    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 613
    move-object v9, v0

    move-object v10, v3

    invoke-virtual {v9, v10}, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_5

    .line 603
    :cond_9
    move-object v9, v0

    iget v9, v9, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mBatteryStyle:I

    const/4 v10, 0x7

    if-ne v9, v10, :cond_a

    .line 605
    move-object v9, v7

    iget v9, v9, Landroid/util/DisplayMetrics;->density:F

    const/high16 v10, 0x42140000

    mul-float/2addr v9, v10

    const/high16 v10, 0x3f000000

    add-float/2addr v9, v10

    move v4, v9

    goto :goto_6

    .line 609
    :cond_a
    move-object v9, v7

    iget v9, v9, Landroid/util/DisplayMetrics;->density:F

    const/high16 v10, 0x41b00000

    mul-float/2addr v9, v10

    const/high16 v10, 0x3f000000

    add-float/2addr v9, v10

    move v4, v9

    goto :goto_6
.end method
