.class public Lcom/android/systemui/batteryview/inyong/BatteryBulat;
.super Landroid/widget/ImageView;
.source "BatteryBulat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/batteryview/inyong/BatteryBulat$BatteryReceiver;,
        Lcom/android/systemui/batteryview/inyong/BatteryBulat$100000000;
    }
.end annotation


# instance fields
.field private mActivated:Z

.field private mAnimOffset:I

.field private mAttached:Z

.field private mBackPaint:Landroid/graphics/Paint;

.field mBatteryReceiver:Lcom/android/systemui/batteryview/inyong/BatteryBulat$BatteryReceiver;

.field private mBatteryStyle:I

.field private mCircleAnimSpeed:I

.field private mCircleBatteryView:Ljava/lang/String;

.field private mCircleColor:I

.field private mCircleSize:I

.field private mCircleTextChargingColor:I

.field private mCircleTextColor:I

.field private mCustomColor:Z

.field private mDockIsCharging:Z

.field private mDockLevel:I

.field private mFrontPaint:Landroid/graphics/Paint;

.field private mHandler:Landroid/os/Handler;

.field private final mInvalidate:Ljava/lang/Runnable;

.field private mIsAnimating:Z

.field private mIsCharging:Z

.field private mIsDocked:Z

.field private mIsQuickSettings:Z

.field private mLevel:I

.field private mPaintFont:Landroid/graphics/Paint;

.field private mPaintGray:Landroid/graphics/Paint;

.field private mPaintRed:Landroid/graphics/Paint;

.field private mPaintSystem:Landroid/graphics/Paint;

.field private mPathEffect:Landroid/graphics/DashPathEffect;

.field private mPercentage:Z

.field private mRectLeft:Landroid/graphics/RectF;

.field private mRectRight:Landroid/graphics/RectF;

.field private mTextLeftX:Ljava/lang/Float;

.field private mTextRightX:Ljava/lang/Float;

.field private mTextY:Ljava/lang/Float;

.field private systemColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 139
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x0

    check-cast v5, Landroid/util/AttributeSet;

    invoke-direct {v3, v4, v5}, Lcom/android/systemui/batteryview/inyong/BatteryBulat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .prologue
    .line 144
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lcom/android/systemui/batteryview/inyong/BatteryBulat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 15

    .prologue
    .line 149
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move v10, v3

    invoke-direct {v7, v8, v9, v10}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    move-object v7, v0

    new-instance v8, Landroid/os/Handler;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    invoke-direct {v9}, Landroid/os/Handler;-><init>()V

    iput-object v8, v7, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mHandler:Landroid/os/Handler;

    move-object v7, v0

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mIsDocked:Z

    move-object v7, v0

    new-instance v8, Lcom/android/systemui/batteryview/inyong/BatteryBulat$100000000;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v0

    invoke-direct {v9, v10}, Lcom/android/systemui/batteryview/inyong/BatteryBulat$100000000;-><init>(Lcom/android/systemui/batteryview/inyong/BatteryBulat;)V

    iput-object v8, v7, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mInvalidate:Ljava/lang/Runnable;

    move-object v7, v0

    new-instance v8, Lcom/android/systemui/batteryview/inyong/BatteryBulat$BatteryReceiver;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v0

    invoke-direct {v9, v10}, Lcom/android/systemui/batteryview/inyong/BatteryBulat$BatteryReceiver;-><init>(Lcom/android/systemui/batteryview/inyong/BatteryBulat;)V

    iput-object v8, v7, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mBatteryReceiver:Lcom/android/systemui/batteryview/inyong/BatteryBulat$BatteryReceiver;

    .line 160
    move-object v7, v0

    const-string v8, "statusbar"

    iput-object v8, v7, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mCircleBatteryView:Ljava/lang/String;

    .line 166
    move-object v7, v0

    invoke-virtual {v7}, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move-object v4, v7

    .line 168
    move-object v7, v0

    new-instance v8, Landroid/graphics/Paint;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    const/4 v10, 0x1

    invoke-direct {v9, v10}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v8, v7, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mFrontPaint:Landroid/graphics/Paint;

    .line 169
    move-object v7, v0

    iget-object v7, v7, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mFrontPaint:Landroid/graphics/Paint;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setDither(Z)V

    .line 170
    move-object v7, v0

    iget-object v7, v7, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mFrontPaint:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 172
    move-object v7, v0

    new-instance v8, Landroid/graphics/Paint;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    const/4 v10, 0x1

    invoke-direct {v9, v10}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v8, v7, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mBackPaint:Landroid/graphics/Paint;

    .line 173
    move-object v7, v0

    iget-object v7, v7, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mBackPaint:Landroid/graphics/Paint;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setDither(Z)V

    .line 174
    move-object v7, v0

    iget-object v7, v7, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mBackPaint:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 176
    move-object v7, v0

    new-instance v8, Landroid/graphics/Paint;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    const/4 v10, 0x1

    invoke-direct {v9, v10}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v8, v7, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mPaintFont:Landroid/graphics/Paint;

    .line 177
    move-object v7, v0

    iget-object v7, v7, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mPaintFont:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 178
    const-string v7, "sans-serif-condensed"

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v7

    move-object v5, v7

    .line 179
    move-object v7, v0

    iget-object v7, v7, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mPaintFont:Landroid/graphics/Paint;

    move-object v8, v5

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object v7

    .line 180
    move-object v7, v0

    iget-object v7, v7, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mPaintFont:Landroid/graphics/Paint;

    sget-object v8, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 182
    move-object v7, v0

    new-instance v8, Landroid/graphics/Paint;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v0

    iget-object v10, v10, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mFrontPaint:Landroid/graphics/Paint;

    invoke-direct {v9, v10}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v8, v7, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mPaintSystem:Landroid/graphics/Paint;

    .line 183
    move-object v7, v0

    new-instance v8, Landroid/graphics/Paint;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v0

    iget-object v10, v10, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mFrontPaint:Landroid/graphics/Paint;

    invoke-direct {v9, v10}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v8, v7, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mPaintRed:Landroid/graphics/Paint;

    .line 184
    move-object v7, v0

    new-instance v8, Landroid/graphics/Paint;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v0

    iget-object v10, v10, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mBackPaint:Landroid/graphics/Paint;

    invoke-direct {v9, v10}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v8, v7, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mPaintGray:Landroid/graphics/Paint;

    .line 188
    move-object v7, v0

    iget-object v7, v7, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mPaintGray:Landroid/graphics/Paint;

    const v8, -0x777778

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 189
    move-object v7, v0

    iget-object v7, v7, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mPaintRed:Landroid/graphics/Paint;

    const/high16 v8, -0x10000

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 191
    move-object v7, v0

    new-instance v8, Landroid/graphics/DashPathEffect;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    const/4 v10, 0x2

    new-array v10, v10, [F

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x0

    const/4 v13, 0x3

    int-to-float v13, v13

    aput v13, v11, v12

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x1

    const/4 v13, 0x2

    int-to-float v13, v13

    aput v13, v11, v12

    const/4 v11, 0x0

    int-to-float v11, v11

    invoke-direct {v9, v10, v11}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    iput-object v8, v7, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mPathEffect:Landroid/graphics/DashPathEffect;

    .line 192
    move-object v7, v0

    move-object v8, v0

    iget-boolean v8, v8, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mIsQuickSettings:Z

    invoke-virtual {v7, v8}, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->updateSettings(Z)V

    return-void
.end method

.method static synthetic access$L1000002(Lcom/android/systemui/batteryview/inyong/BatteryBulat;)Z
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-boolean v3, v3, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mAttached:Z

    move v0, v3

    return v0
.end method

.method static synthetic access$L1000003(Lcom/android/systemui/batteryview/inyong/BatteryBulat;)Z
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-boolean v3, v3, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mActivated:Z

    move v0, v3

    return v0
.end method

.method static synthetic access$L1000005(Lcom/android/systemui/batteryview/inyong/BatteryBulat;)Z
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-boolean v3, v3, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mIsCharging:Z

    move v0, v3

    return v0
.end method

.method static synthetic access$L1000006(Lcom/android/systemui/batteryview/inyong/BatteryBulat;)I
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget v3, v3, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mLevel:I

    move v0, v3

    return v0
.end method

.method static synthetic access$L1000011(Lcom/android/systemui/batteryview/inyong/BatteryBulat;)Z
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-boolean v3, v3, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mIsDocked:Z

    move v0, v3

    return v0
.end method

.method static synthetic access$L1000012(Lcom/android/systemui/batteryview/inyong/BatteryBulat;)I
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget v3, v3, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mCircleSize:I

    move v0, v3

    return v0
.end method

.method static synthetic access$S1000002(Lcom/android/systemui/batteryview/inyong/BatteryBulat;Z)V
    .locals 6

    move-object v0, p0

    move v1, p1

    move-object v4, v0

    move v5, v1

    iput-boolean v5, v4, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mAttached:Z

    return-void
.end method

.method static synthetic access$S1000003(Lcom/android/systemui/batteryview/inyong/BatteryBulat;Z)V
    .locals 6

    move-object v0, p0

    move v1, p1

    move-object v4, v0

    move v5, v1

    iput-boolean v5, v4, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mActivated:Z

    return-void
.end method

.method static synthetic access$S1000005(Lcom/android/systemui/batteryview/inyong/BatteryBulat;Z)V
    .locals 6

    move-object v0, p0

    move v1, p1

    move-object v4, v0

    move v5, v1

    iput-boolean v5, v4, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mIsCharging:Z

    return-void
.end method

.method static synthetic access$S1000006(Lcom/android/systemui/batteryview/inyong/BatteryBulat;I)V
    .locals 6

    move-object v0, p0

    move v1, p1

    move-object v4, v0

    move v5, v1

    iput v5, v4, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mLevel:I

    return-void
.end method

.method static synthetic access$S1000011(Lcom/android/systemui/batteryview/inyong/BatteryBulat;Z)V
    .locals 6

    move-object v0, p0

    move v1, p1

    move-object v4, v0

    move v5, v1

    iput-boolean v5, v4, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mIsDocked:Z

    return-void
.end method

.method static synthetic access$S1000012(Lcom/android/systemui/batteryview/inyong/BatteryBulat;I)V
    .locals 6

    move-object v0, p0

    move v1, p1

    move-object v4, v0

    move v5, v1

    iput v5, v4, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mCircleSize:I

    return-void
.end method

.method private drawCircle(Landroid/graphics/Canvas;IIFLandroid/graphics/RectF;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "IIF",
            "Landroid/graphics/RectF;",
            ")V"
        }
    .end annotation

    .prologue
    .line 241
    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move v9, v2

    const/16 v10, 0xf

    if-gt v9, v10, :cond_4

    move-object v9, v0

    iget-boolean v9, v9, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mIsCharging:Z

    if-nez v9, :cond_4

    move-object v9, v0

    iget-object v9, v9, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mPaintRed:Landroid/graphics/Paint;

    :goto_0
    move-object v6, v9

    .line 243
    move-object v9, v6

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 244
    move-object v9, v0

    iget v9, v9, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mBatteryStyle:I

    const/4 v10, 0x6

    if-eq v9, v10, :cond_0

    move-object v9, v0

    iget v9, v9, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mBatteryStyle:I

    const/4 v10, 0x5

    if-ne v9, v10, :cond_5

    .line 248
    :cond_0
    move-object v9, v6

    move-object v10, v0

    iget-object v10, v10, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mPathEffect:Landroid/graphics/DashPathEffect;

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    move-result-object v9

    .line 258
    :goto_1
    move v9, v2

    move v7, v9

    .line 259
    move v9, v7

    const/16 v10, 0x61

    if-lt v9, v10, :cond_1

    .line 261
    const/16 v9, 0x64

    move v7, v9

    .line 263
    :cond_1
    move-object v9, v0

    iget v9, v9, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mLevel:I

    const/16 v10, 0xf

    if-le v9, v10, :cond_2

    .line 265
    move-object v9, v0

    iget-boolean v9, v9, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mIsCharging:Z

    if-eqz v9, :cond_6

    .line 267
    move-object v9, v6

    move-object v10, v0

    iget v10, v10, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mCircleTextChargingColor:I

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 276
    :cond_2
    :goto_2
    move-object v9, v1

    move-object v10, v5

    const/16 v11, 0x10e

    int-to-float v11, v11

    const/16 v12, 0x168

    int-to-float v12, v12

    const/4 v13, 0x0

    move-object v14, v0

    iget-object v14, v14, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mPaintGray:Landroid/graphics/Paint;

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 278
    move-object v9, v1

    move-object v10, v5

    const/16 v11, 0x10e

    move v12, v3

    add-int/2addr v11, v12

    int-to-float v11, v11

    const v12, 0x40666666

    move v13, v7

    int-to-float v13, v13

    mul-float/2addr v12, v13

    const/4 v13, 0x0

    move-object v14, v6

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 281
    move v9, v2

    const/16 v10, 0x64

    if-ge v9, v10, :cond_3

    move-object v9, v0

    iget-boolean v9, v9, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mPercentage:Z

    if-eqz v9, :cond_3

    .line 283
    move v9, v2

    const/16 v10, 0xf

    if-gt v9, v10, :cond_7

    .line 285
    move-object v9, v0

    iget-object v9, v9, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mPaintFont:Landroid/graphics/Paint;

    move-object v10, v0

    iget-object v10, v10, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mPaintRed:Landroid/graphics/Paint;

    invoke-virtual {v10}, Landroid/graphics/Paint;->getColor()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 303
    :goto_3
    move-object v9, v1

    move v10, v2

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    move v11, v4

    move-object v12, v0

    iget-object v12, v12, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mTextY:Ljava/lang/Float;

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    move-object v13, v0

    iget-object v13, v13, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mPaintFont:Landroid/graphics/Paint;

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_3
    return-void

    .line 241
    :cond_4
    move-object v9, v0

    iget-object v9, v9, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mPaintSystem:Landroid/graphics/Paint;

    goto/16 :goto_0

    .line 252
    :cond_5
    move-object v9, v6

    const/4 v10, 0x0

    check-cast v10, Landroid/graphics/PathEffect;

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    move-result-object v9

    goto :goto_1

    .line 272
    :cond_6
    move-object v9, v6

    move-object v10, v0

    iget v10, v10, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mCircleColor:I

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    .line 287
    :cond_7
    move-object v9, v0

    iget-boolean v9, v9, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mIsCharging:Z

    if-eqz v9, :cond_8

    move v9, v2

    const/16 v10, 0x59

    if-le v9, v10, :cond_8

    .line 289
    move-object v9, v0

    iget-object v9, v9, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mPaintFont:Landroid/graphics/Paint;

    const v10, -0xff0100

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_3

    .line 293
    :cond_8
    move-object v9, v0

    iget-boolean v9, v9, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mCustomColor:Z

    if-eqz v9, :cond_9

    .line 295
    move-object v9, v0

    iget-object v9, v9, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mPaintFont:Landroid/graphics/Paint;

    move-object v10, v0

    iget v10, v10, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->systemColor:I

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_3

    .line 299
    :cond_9
    move-object v9, v0

    iget-object v9, v9, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mPaintFont:Landroid/graphics/Paint;

    move-object v10, v0

    iget v10, v10, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mCircleTextColor:I

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_3
.end method

.method private initSizeBasedStuff()V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 448
    move-object/from16 v0, p0

    move-object v6, v0

    iget v6, v6, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mCircleSize:I

    const/4 v7, 0x0

    if-ne v6, v7, :cond_0

    .line 450
    move-object v6, v0

    invoke-direct {v6}, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->initSizeMeasureIconHeight()V

    .line 453
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mPaintFont:Landroid/graphics/Paint;

    move-object v7, v0

    iget v7, v7, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mCircleSize:I

    int-to-float v7, v7

    const/high16 v8, 0x40000000

    div-float/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 455
    move-object v6, v0

    iget v6, v6, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mCircleSize:I

    int-to-float v6, v6

    const/high16 v7, 0x40e00000

    div-float/2addr v6, v7

    move v1, v6

    .line 456
    move-object v6, v0

    iget-object v6, v6, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mPaintRed:Landroid/graphics/Paint;

    move v7, v1

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 457
    move-object v6, v0

    iget-object v6, v6, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mPaintSystem:Landroid/graphics/Paint;

    move v7, v1

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 458
    move-object v6, v0

    iget v6, v6, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mBatteryStyle:I

    const/4 v7, 0x6

    if-eq v6, v7, :cond_1

    move-object v6, v0

    iget v6, v6, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mBatteryStyle:I

    const/4 v7, 0x5

    if-ne v6, v7, :cond_3

    .line 461
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mPaintGray:Landroid/graphics/Paint;

    move v7, v1

    const/high16 v8, 0x40600000

    div-float/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 468
    :goto_0
    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->getPaddingLeft()I

    move-result v6

    move v2, v6

    .line 469
    move-object v6, v0

    new-instance v7, Landroid/graphics/RectF;

    move-object v15, v7

    move-object v7, v15

    move-object v8, v15

    move v9, v2

    int-to-float v9, v9

    move v10, v1

    const/high16 v11, 0x40000000

    div-float/2addr v10, v11

    add-float/2addr v9, v10

    const/4 v10, 0x0

    int-to-float v10, v10

    move v11, v1

    const/high16 v12, 0x40000000

    div-float/2addr v11, v12

    add-float/2addr v10, v11

    move-object v11, v0

    iget v11, v11, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mCircleSize:I

    int-to-float v11, v11

    move v12, v1

    const/high16 v13, 0x40000000

    div-float/2addr v12, v13

    sub-float/2addr v11, v12

    move v12, v2

    int-to-float v12, v12

    add-float/2addr v11, v12

    move-object v12, v0

    iget v12, v12, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mCircleSize:I

    int-to-float v12, v12

    move v13, v1

    const/high16 v14, 0x40000000

    div-float/2addr v13, v14

    sub-float/2addr v12, v13

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v7, v6, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mRectLeft:Landroid/graphics/RectF;

    .line 471
    move v6, v2

    move-object v7, v0

    iget v7, v7, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mCircleSize:I

    add-int/2addr v6, v7

    move v3, v6

    .line 472
    move-object v6, v0

    new-instance v7, Landroid/graphics/RectF;

    move-object v15, v7

    move-object v7, v15

    move-object v8, v15

    move-object v9, v0

    iget-object v9, v9, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mRectLeft:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->left:F

    move v10, v3

    int-to-float v10, v10

    add-float/2addr v9, v10

    move-object v10, v0

    iget-object v10, v10, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mRectLeft:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->top:F

    move-object v11, v0

    iget-object v11, v11, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mRectLeft:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->right:F

    move v12, v3

    int-to-float v12, v12

    add-float/2addr v11, v12

    move-object v12, v0

    iget-object v12, v12, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mRectLeft:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v7, v6, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mRectRight:Landroid/graphics/RectF;

    .line 476
    new-instance v6, Landroid/graphics/Rect;

    move-object v15, v6

    move-object v6, v15

    move-object v7, v15

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    move-object v4, v6

    .line 477
    move-object v6, v0

    iget-object v6, v6, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mPaintFont:Landroid/graphics/Paint;

    const-string v7, "99"

    const/4 v8, 0x0

    const-string v9, "99"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    move-object v10, v4

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 478
    move-object v6, v0

    move-object v7, v0

    iget v7, v7, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mCircleSize:I

    int-to-float v7, v7

    const/high16 v8, 0x40000000

    div-float/2addr v7, v8

    move-object v8, v0

    invoke-virtual {v8}, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->getPaddingLeft()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    new-instance v8, Ljava/lang/Float;

    move v15, v7

    move-object/from16 v16, v8

    move-object/from16 v7, v16

    move v8, v15

    move-object/from16 v9, v16

    move v15, v8

    move-object/from16 v16, v9

    move-object/from16 v8, v16

    move v9, v15

    invoke-direct {v8, v9}, Ljava/lang/Float;-><init>(F)V

    iput-object v7, v6, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mTextLeftX:Ljava/lang/Float;

    .line 479
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mTextLeftX:Ljava/lang/Float;

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    move v8, v3

    int-to-float v8, v8

    add-float/2addr v7, v8

    new-instance v8, Ljava/lang/Float;

    move v15, v7

    move-object/from16 v16, v8

    move-object/from16 v7, v16

    move v8, v15

    move-object/from16 v9, v16

    move v15, v8

    move-object/from16 v16, v9

    move-object/from16 v8, v16

    move v9, v15

    invoke-direct {v8, v9}, Ljava/lang/Float;-><init>(F)V

    iput-object v7, v6, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mTextRightX:Ljava/lang/Float;

    .line 481
    move-object v6, v0

    move-object v7, v0

    iget v7, v7, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mCircleSize:I

    int-to-float v7, v7

    const/high16 v8, 0x40000000

    div-float/2addr v7, v8

    move-object v8, v4

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    move-object v9, v4

    iget v9, v9, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    const/high16 v9, 0x40000000

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    move v8, v1

    const/high16 v9, 0x40000000

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    new-instance v8, Ljava/lang/Float;

    move v15, v7

    move-object/from16 v16, v8

    move-object/from16 v7, v16

    move v8, v15

    move-object/from16 v9, v16

    move v15, v8

    move-object/from16 v16, v9

    move-object/from16 v8, v16

    move v9, v15

    invoke-direct {v8, v9}, Ljava/lang/Float;-><init>(F)V

    iput-object v7, v6, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mTextY:Ljava/lang/Float;

    .line 484
    move-object v6, v0

    iget-object v6, v6, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mCircleBatteryView:Ljava/lang/String;

    const-string v7, "quicksettings"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 486
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mTextY:Ljava/lang/Float;

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    const/4 v8, 0x1

    const/high16 v9, 0x3fc00000

    move-object v10, v0

    invoke-virtual {v10}, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    invoke-static {v8, v9, v10}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v8

    add-float/2addr v7, v8

    new-instance v8, Ljava/lang/Float;

    move v15, v7

    move-object/from16 v16, v8

    move-object/from16 v7, v16

    move v8, v15

    move-object/from16 v9, v16

    move v15, v8

    move-object/from16 v16, v9

    move-object/from16 v8, v16

    move v9, v15

    invoke-direct {v8, v9}, Ljava/lang/Float;-><init>(F)V

    iput-object v7, v6, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mTextY:Ljava/lang/Float;

    .line 495
    :cond_2
    :goto_1
    move-object v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->onMeasure(II)V

    return-void

    .line 465
    :cond_3
    move-object v6, v0

    iget-object v6, v6, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mPaintGray:Landroid/graphics/Paint;

    move v7, v1

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/16 :goto_0

    .line 489
    :cond_4
    move-object v6, v0

    iget-object v6, v6, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mCircleBatteryView:Ljava/lang/String;

    const-string v7, "statusbar"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 491
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mTextY:Ljava/lang/Float;

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    const/4 v8, 0x1

    const/high16 v9, 0x3f000000

    move-object v10, v0

    invoke-virtual {v10}, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    invoke-static {v8, v9, v10}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v8

    add-float/2addr v7, v8

    new-instance v8, Ljava/lang/Float;

    move v15, v7

    move-object/from16 v16, v8

    move-object/from16 v7, v16

    move v8, v15

    move-object/from16 v9, v16

    move v15, v8

    move-object/from16 v16, v9

    move-object/from16 v8, v16

    move v9, v15

    invoke-direct {v8, v9}, Ljava/lang/Float;-><init>(F)V

    iput-object v7, v6, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mTextY:Ljava/lang/Float;

    goto :goto_1
.end method

.method private initSizeMeasureIconHeight()V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 523
    move-object v0, p0

    const/16 v3, 0xd

    move v1, v3

    .line 525
    move-object v3, v0

    const/16 v4, 0x1a

    iput v4, v3, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mCircleSize:I

    return-void
.end method

.method private updateChargeAnim()V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 416
    move-object v0, p0

    move-object v2, v0

    iget-boolean v2, v2, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mIsCharging:Z

    if-nez v2, :cond_0

    move-object v2, v0

    iget-boolean v2, v2, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mDockIsCharging:Z

    if-eqz v2, :cond_1

    :cond_0
    move-object v2, v0

    iget v2, v2, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mLevel:I

    const/16 v3, 0x61

    if-lt v2, v3, :cond_3

    move-object v2, v0

    iget v2, v2, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mDockLevel:I

    const/16 v3, 0x61

    if-lt v2, v3, :cond_3

    .line 418
    :cond_1
    move-object v2, v0

    iget-boolean v2, v2, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mIsAnimating:Z

    if-eqz v2, :cond_2

    .line 420
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mIsAnimating:Z

    .line 421
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mAnimOffset:I

    .line 422
    move-object v2, v0

    iget-object v2, v2, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mHandler:Landroid/os/Handler;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mInvalidate:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 438
    :cond_2
    :goto_0
    return-void

    .line 426
    :cond_3
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mIsAnimating:Z

    .line 428
    move-object v2, v0

    iget v2, v2, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mAnimOffset:I

    const/16 v3, 0x168

    if-le v2, v3, :cond_4

    .line 430
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mAnimOffset:I

    .line 437
    :goto_1
    move-object v2, v0

    iget-object v2, v2, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mHandler:Landroid/os/Handler;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mInvalidate:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 438
    move-object v2, v0

    iget-object v2, v2, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mHandler:Landroid/os/Handler;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mInvalidate:Ljava/lang/Runnable;

    const/16 v4, 0x32

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v2

    goto :goto_0

    .line 434
    :cond_4
    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mAnimOffset:I

    move-object v4, v0

    iget v4, v4, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mCircleAnimSpeed:I

    add-int/2addr v3, v4

    iput v3, v2, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mAnimOffset:I

    goto :goto_1
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 198
    move-object v0, p0

    move-object v4, v0

    invoke-super {v4}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 199
    move-object v4, v0

    iget-boolean v4, v4, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mAttached:Z

    if-nez v4, :cond_1

    .line 201
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mAttached:Z

    .line 202
    new-instance v4, Landroid/content/IntentFilter;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    move-object v1, v4

    .line 203
    move-object v4, v1

    const-string v5, "inyong.batteryview"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 204
    move-object v4, v1

    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 205
    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mBatteryReceiver:Lcom/android/systemui/batteryview/inyong/BatteryBulat$BatteryReceiver;

    move-object v6, v1

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v4

    move-object v2, v4

    .line 206
    move-object v4, v2

    if-eqz v4, :cond_0

    .line 209
    move-object v4, v0

    iget-object v4, v4, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mBatteryReceiver:Lcom/android/systemui/batteryview/inyong/BatteryBulat$BatteryReceiver;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/batteryview/inyong/BatteryBulat$BatteryReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 212
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mHandler:Landroid/os/Handler;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mInvalidate:Ljava/lang/Runnable;

    const/16 v6, 0xfa

    int-to-long v6, v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v4

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 219
    move-object v0, p0

    move-object v2, v0

    invoke-super {v2}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 220
    move-object v2, v0

    iget-boolean v2, v2, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mAttached:Z

    if-eqz v2, :cond_0

    .line 222
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mAttached:Z

    .line 223
    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mBatteryReceiver:Lcom/android/systemui/batteryview/inyong/BatteryBulat$BatteryReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
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
    .line 310
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mRectLeft:Landroid/graphics/RectF;

    if-nez v3, :cond_0

    .line 312
    move-object v3, v0

    invoke-direct {v3}, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->initSizeBasedStuff()V

    .line 315
    :cond_0
    move-object v3, v0

    invoke-direct {v3}, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->updateChargeAnim()V

    .line 317
    move-object v3, v0

    iget-boolean v3, v3, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mIsDocked:Z

    if-eqz v3, :cond_3

    .line 319
    move-object v3, v0

    move-object v4, v1

    move-object v5, v0

    iget v5, v5, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mDockLevel:I

    move-object v6, v0

    iget-boolean v6, v6, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mDockIsCharging:Z

    if-eqz v6, :cond_1

    move-object v6, v0

    iget v6, v6, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mAnimOffset:I

    :goto_0
    move-object v7, v0

    iget-object v7, v7, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mTextLeftX:Ljava/lang/Float;

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    move-object v8, v0

    iget-object v8, v8, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mRectLeft:Landroid/graphics/RectF;

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->drawCircle(Landroid/graphics/Canvas;IIFLandroid/graphics/RectF;)V

    .line 321
    move-object v3, v0

    move-object v4, v1

    move-object v5, v0

    iget v5, v5, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mLevel:I

    move-object v6, v0

    iget-boolean v6, v6, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mIsCharging:Z

    if-eqz v6, :cond_2

    move-object v6, v0

    iget v6, v6, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mAnimOffset:I

    :goto_1
    move-object v7, v0

    iget-object v7, v7, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mTextRightX:Ljava/lang/Float;

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    move-object v8, v0

    iget-object v8, v8, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mRectRight:Landroid/graphics/RectF;

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->drawCircle(Landroid/graphics/Canvas;IIFLandroid/graphics/RectF;)V

    .line 325
    :goto_2
    return-void

    .line 319
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 321
    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    .line 325
    :cond_3
    move-object v3, v0

    move-object v4, v1

    move-object v5, v0

    iget v5, v5, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mLevel:I

    move-object v6, v0

    iget-boolean v6, v6, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mIsCharging:Z

    if-eqz v6, :cond_4

    move-object v6, v0

    iget v6, v6, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mAnimOffset:I

    :goto_3
    move-object v7, v0

    iget-object v7, v7, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mTextLeftX:Ljava/lang/Float;

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    move-object v8, v0

    iget-object v8, v8, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mRectLeft:Landroid/graphics/RectF;

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->drawCircle(Landroid/graphics/Canvas;IIFLandroid/graphics/RectF;)V

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    goto :goto_3
.end method

.method protected onMeasure(II)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 229
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, v0

    iget v4, v4, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mCircleSize:I

    const/4 v5, 0x0

    if-ne v4, v5, :cond_0

    .line 231
    move-object v4, v0

    invoke-direct {v4}, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->initSizeMeasureIconHeight()V

    .line 234
    :cond_0
    move-object v4, v0

    move-object v5, v0

    iget v5, v5, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mCircleSize:I

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->getPaddingLeft()I

    move-result v6

    add-int/2addr v5, v6

    move-object v6, v0

    iget-boolean v6, v6, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mIsDocked:Z

    if-eqz v6, :cond_1

    move-object v6, v0

    iget v6, v6, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mCircleSize:I

    move-object v7, v0

    invoke-virtual {v7}, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->getPaddingLeft()I

    move-result v7

    add-int/2addr v6, v7

    :goto_0
    add-int/2addr v5, v6

    move-object v6, v0

    iget v6, v6, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mCircleSize:I

    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->setMeasuredDimension(II)V

    return-void

    :cond_1
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public updateSettings(Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .prologue
    .line 330
    move-object v0, p0

    move v1, p1

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object v2, v5

    .line 342
    move-object v5, v0

    move-object v6, v2

    const-string v7, "battery_bulat_style"

    const/4 v8, 0x4

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    iput v6, v5, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mBatteryStyle:I

    .line 343
    move-object v5, v0

    move-object v6, v2

    const-string v7, "battery_aktif"

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    move-object v6, v2

    const-string v7, "battery_yang_aktif"

    const/4 v8, 0x2

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    const/4 v6, 0x1

    :goto_0
    iput-boolean v6, v5, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mActivated:Z

    .line 345
    move-object v5, v0

    move-object v6, v0

    iget-boolean v6, v6, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mActivated:Z

    if-eqz v6, :cond_4

    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v5, v6}, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->setVisibility(I)V

    .line 347
    move-object v5, v0

    move-object v6, v2

    const-string v7, "battery_warna"

    const/4 v8, -0x1

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    iput v6, v5, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mCircleColor:I

    .line 350
    move-object v5, v0

    move-object v6, v0

    iget v6, v6, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mCircleColor:I

    iput v6, v5, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mCircleTextColor:I

    .line 354
    move-object v5, v0

    const v6, -0xff0100

    iput v6, v5, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mCircleTextChargingColor:I

    .line 358
    move-object v5, v0

    const/4 v6, 0x3

    iput v6, v5, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mCircleAnimSpeed:I

    .line 361
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mCustomColor:Z

    .line 364
    move-object v5, v0

    const/4 v6, -0x2

    iput v6, v5, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->systemColor:I

    .line 365
    const v5, -0xff0100

    move v3, v5

    .line 367
    move-object v5, v0

    iget v5, v5, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mCircleTextColor:I

    const/4 v6, -0x2

    if-ne v5, v6, :cond_0

    .line 369
    move-object v5, v0

    move v6, v3

    iput v6, v5, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mCircleTextColor:I

    .line 371
    :cond_0
    move-object v5, v0

    iget v5, v5, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mCircleTextChargingColor:I

    const/4 v6, -0x2

    if-ne v5, v6, :cond_1

    .line 373
    move-object v5, v0

    move v6, v3

    iput v6, v5, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mCircleTextChargingColor:I

    .line 375
    :cond_1
    move-object v5, v0

    iget v5, v5, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mCircleColor:I

    const/4 v6, -0x2

    if-ne v5, v6, :cond_2

    .line 377
    move-object v5, v0

    move v6, v3

    iput v6, v5, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mCircleColor:I

    .line 380
    :cond_2
    move-object v5, v0

    iget-boolean v5, v5, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mCustomColor:Z

    if-eqz v5, :cond_5

    .line 382
    move-object v5, v0

    iget-object v5, v5, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mPaintSystem:Landroid/graphics/Paint;

    move-object v6, v0

    iget v6, v6, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->systemColor:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 388
    :goto_2
    move-object v5, v0

    const/4 v6, 0x0

    check-cast v6, Landroid/graphics/RectF;

    iput-object v6, v5, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mRectLeft:Landroid/graphics/RectF;

    .line 389
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mCircleSize:I

    .line 391
    move v5, v1

    if-eqz v5, :cond_6

    move-object v5, v0

    iget v5, v5, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mBatteryStyle:I

    const/16 v6, 0x8

    if-ne v5, v6, :cond_6

    .line 393
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mActivated:Z

    .line 402
    :goto_3
    move-object v5, v0

    move-object v6, v0

    iget v6, v6, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mBatteryStyle:I

    const/4 v7, 0x4

    if-eq v6, v7, :cond_8

    move-object v6, v0

    iget v6, v6, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mBatteryStyle:I

    const/4 v7, 0x6

    if-eq v6, v7, :cond_8

    const/4 v6, 0x0

    :goto_4
    iput-boolean v6, v5, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mPercentage:Z

    .line 407
    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->invalidate()V

    return-void

    .line 343
    :cond_3
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 345
    :cond_4
    const/16 v6, 0x8

    goto/16 :goto_1

    .line 386
    :cond_5
    move-object v5, v0

    iget-object v5, v5, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mPaintSystem:Landroid/graphics/Paint;

    move-object v6, v0

    iget v6, v6, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mCircleColor:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    .line 397
    :cond_6
    move-object v5, v0

    move-object v6, v0

    iget v6, v6, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mBatteryStyle:I

    const/4 v7, 0x3

    if-eq v6, v7, :cond_7

    move-object v6, v0

    iget v6, v6, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mBatteryStyle:I

    const/4 v7, 0x4

    if-eq v6, v7, :cond_7

    move-object v6, v0

    iget v6, v6, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mBatteryStyle:I

    const/4 v7, 0x5

    if-eq v6, v7, :cond_7

    move-object v6, v0

    iget v6, v6, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mBatteryStyle:I

    const/4 v7, 0x6

    if-eq v6, v7, :cond_7

    const/4 v6, 0x0

    :goto_5
    iput-boolean v6, v5, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->mActivated:Z

    goto :goto_3

    :cond_7
    const/4 v6, 0x1

    goto :goto_5

    .line 402
    :cond_8
    const/4 v6, 0x1

    goto :goto_4
.end method
