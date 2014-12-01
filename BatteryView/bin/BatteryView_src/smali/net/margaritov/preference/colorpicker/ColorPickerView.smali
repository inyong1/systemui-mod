.class public Lnet/margaritov/preference/colorpicker/ColorPickerView;
.super Landroid/view/View;
.source "ColorPickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/margaritov/preference/colorpicker/ColorPickerView$OnColorChangedListener;
    }
.end annotation


# static fields
.field private static final BORDER_WIDTH_PX:F = 1.0f

.field private static final PANEL_ALPHA:I = 0x2

.field private static final PANEL_HUE:I = 0x1

.field private static final PANEL_SAT_VAL:I


# instance fields
.field private ALPHA_PANEL_HEIGHT:F

.field private HUE_PANEL_WIDTH:F

.field private PALETTE_CIRCLE_TRACKER_RADIUS:F

.field private PANEL_SPACING:F

.field private RECTANGLE_TRACKER_OFFSET:F

.field private mAlpha:I

.field private mAlphaPaint:Landroid/graphics/Paint;

.field private mAlphaPattern:Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;

.field private mAlphaRect:Landroid/graphics/RectF;

.field private mAlphaShader:Landroid/graphics/Shader;

.field private mAlphaSliderText:Ljava/lang/String;

.field private mAlphaTextPaint:Landroid/graphics/Paint;

.field private mBorderColor:I

.field private mBorderPaint:Landroid/graphics/Paint;

.field private mDensity:F

.field private mDrawingOffset:F

.field private mDrawingRect:Landroid/graphics/RectF;

.field private mHue:F

.field private mHuePaint:Landroid/graphics/Paint;

.field private mHueRect:Landroid/graphics/RectF;

.field private mHueShader:Landroid/graphics/Shader;

.field private mHueTrackerPaint:Landroid/graphics/Paint;

.field private mLastTouchedPanel:I

.field private mListener:Lnet/margaritov/preference/colorpicker/ColorPickerView$OnColorChangedListener;

.field private mSat:F

.field private mSatShader:Landroid/graphics/Shader;

.field private mSatValPaint:Landroid/graphics/Paint;

.field private mSatValRect:Landroid/graphics/RectF;

.field private mSatValTrackerPaint:Landroid/graphics/Paint;

.field private mShowAlphaPanel:Z

.field private mSliderTrackerColor:I

.field private mStartTouchPoint:Landroid/graphics/Point;

.field private mVal:F

.field private mValShader:Landroid/graphics/Shader;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 142
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x0

    check-cast v5, Landroid/util/AttributeSet;

    invoke-direct {v3, v4, v5}, Lnet/margaritov/preference/colorpicker/ColorPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .prologue
    .line 146
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lnet/margaritov/preference/colorpicker/ColorPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    .prologue
    .line 150
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    invoke-direct {v5, v6, v7, v8}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    move-object v5, v0

    const/high16 v6, 0x41f00000

    iput v6, v5, Lnet/margaritov/preference/colorpicker/ColorPickerView;->HUE_PANEL_WIDTH:F

    move-object v5, v0

    const/high16 v6, 0x41a00000

    iput v6, v5, Lnet/margaritov/preference/colorpicker/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    move-object v5, v0

    const/high16 v6, 0x41200000

    iput v6, v5, Lnet/margaritov/preference/colorpicker/ColorPickerView;->PANEL_SPACING:F

    move-object v5, v0

    const/high16 v6, 0x40a00000

    iput v6, v5, Lnet/margaritov/preference/colorpicker/ColorPickerView;->PALETTE_CIRCLE_TRACKER_RADIUS:F

    move-object v5, v0

    const/high16 v6, 0x40000000

    iput v6, v5, Lnet/margaritov/preference/colorpicker/ColorPickerView;->RECTANGLE_TRACKER_OFFSET:F

    move-object v5, v0

    const/high16 v6, 0x3f800000

    iput v6, v5, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mDensity:F

    move-object v5, v0

    const/16 v6, 0xff

    iput v6, v5, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlpha:I

    move-object v5, v0

    const/high16 v6, 0x43b40000

    iput v6, v5, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mHue:F

    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mSat:F

    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mVal:F

    move-object v5, v0

    const-string v6, ""

    iput-object v6, v5, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlphaSliderText:Ljava/lang/String;

    move-object v5, v0

    const v6, -0xe3e3e4

    iput v6, v5, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mSliderTrackerColor:I

    move-object v5, v0

    const v6, -0x919192

    iput v6, v5, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mBorderColor:I

    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mShowAlphaPanel:Z

    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mLastTouchedPanel:I

    move-object v5, v0

    const/4 v6, 0x0

    check-cast v6, Landroid/graphics/Point;

    iput-object v6, v5, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mStartTouchPoint:Landroid/graphics/Point;

    .line 151
    move-object v5, v0

    invoke-direct {v5}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->init()V

    return-void
.end method

.method private alphaToPoint(I)Landroid/graphics/Point;
    .locals 11

    .prologue
    .line 377
    move-object v0, p0

    move v1, p1

    move-object v6, v0

    iget-object v6, v6, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    move-object v2, v6

    .line 378
    move-object v6, v2

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    move v3, v6

    .line 380
    new-instance v6, Landroid/graphics/Point;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    move-object v4, v6

    .line 382
    move-object v6, v4

    move v7, v3

    move v8, v1

    int-to-float v8, v8

    move v9, v3

    mul-float/2addr v8, v9

    const/16 v9, 0xff

    int-to-float v9, v9

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    move-object v8, v2

    iget v8, v8, Landroid/graphics/RectF;->left:F

    add-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v6, Landroid/graphics/Point;->x:I

    .line 383
    move-object v6, v4

    move-object v7, v2

    iget v7, v7, Landroid/graphics/RectF;->top:F

    float-to-int v7, v7

    iput v7, v6, Landroid/graphics/Point;->y:I

    .line 385
    move-object v6, v4

    move-object v0, v6

    return-object v0
.end method

.method private buildHueColorArray()[I
    .locals 12

    .prologue
    .line 209
    move-object v0, p0

    const/16 v5, 0x169

    new-array v5, v5, [I

    move-object v1, v5

    .line 211
    const/4 v5, 0x0

    move v2, v5

    .line 212
    move-object v5, v1

    array-length v5, v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v3, v5

    :goto_0
    move v5, v3

    const/4 v6, 0x0

    if-ge v5, v6, :cond_0

    .line 216
    move-object v5, v1

    move-object v0, v5

    return-object v0

    .line 213
    :cond_0
    move-object v5, v1

    move v6, v2

    const/4 v7, 0x3

    new-array v7, v7, [F

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move v10, v3

    int-to-float v10, v10

    aput v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x1

    const/high16 v10, 0x3f800000

    aput v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x2

    const/high16 v10, 0x3f800000

    aput v10, v8, v9

    invoke-static {v7}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v7

    aput v7, v5, v6

    .line 212
    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private calculateRequiredOffset()F
    .locals 6

    .prologue
    .line 201
    move-object v0, p0

    move-object v3, v0

    iget v3, v3, Lnet/margaritov/preference/colorpicker/ColorPickerView;->PALETTE_CIRCLE_TRACKER_RADIUS:F

    move-object v4, v0

    iget v4, v4, Lnet/margaritov/preference/colorpicker/ColorPickerView;->RECTANGLE_TRACKER_OFFSET:F

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    move v1, v3

    .line 202
    move v3, v1

    const/high16 v4, 0x3f800000

    move-object v5, v0

    iget v5, v5, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mDensity:F

    mul-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    move v1, v3

    .line 204
    move v3, v1

    const/high16 v4, 0x3fc00000

    mul-float/2addr v3, v4

    move v0, v3

    return v0
.end method

.method private chooseHeight(II)I
    .locals 6

    .prologue
    .line 704
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v1

    const/high16 v5, -0x80000000

    if-eq v4, v5, :cond_0

    move v4, v1

    const/high16 v5, 0x40000000

    if-ne v4, v5, :cond_1

    .line 705
    :cond_0
    move v4, v2

    move v0, v4

    .line 707
    :goto_0
    return v0

    :cond_1
    move-object v4, v0

    invoke-direct {v4}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->getPrefferedHeight()I

    move-result v4

    move v0, v4

    goto :goto_0
.end method

.method private chooseWidth(II)I
    .locals 6

    .prologue
    .line 696
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v1

    const/high16 v5, -0x80000000

    if-eq v4, v5, :cond_0

    move v4, v1

    const/high16 v5, 0x40000000

    if-ne v4, v5, :cond_1

    .line 697
    :cond_0
    move v4, v2

    move v0, v4

    .line 699
    :goto_0
    return v0

    :cond_1
    move-object v4, v0

    invoke-direct {v4}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->getPrefferedWidth()I

    move-result v4

    move v0, v4

    goto :goto_0
.end method

.method private drawAlphaPanel(Landroid/graphics/Canvas;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            ")V"
        }
    .end annotation

    .prologue
    .line 301
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v11, v1

    iget-boolean v11, v11, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mShowAlphaPanel:Z

    if-eqz v11, :cond_0

    move-object v11, v1

    iget-object v11, v11, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    if-eqz v11, :cond_0

    move-object v11, v1

    iget-object v11, v11, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlphaPattern:Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;

    if-nez v11, :cond_1

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 303
    :cond_1
    move-object v11, v1

    iget-object v11, v11, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    move-object v3, v11

    .line 305
    move-object v11, v1

    iget-object v11, v11, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mBorderPaint:Landroid/graphics/Paint;

    move-object v12, v1

    iget v12, v12, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mBorderColor:I

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 307
    move-object v11, v2

    move-object v12, v3

    iget v12, v12, Landroid/graphics/RectF;->left:F

    const/high16 v13, 0x3f800000

    sub-float/2addr v12, v13

    move-object v13, v3

    iget v13, v13, Landroid/graphics/RectF;->top:F

    const/high16 v14, 0x3f800000

    sub-float/2addr v13, v14

    move-object v14, v3

    iget v14, v14, Landroid/graphics/RectF;->right:F

    const/high16 v15, 0x3f800000

    add-float/2addr v14, v15

    move-object v15, v3

    iget v15, v15, Landroid/graphics/RectF;->bottom:F

    const/high16 v16, 0x3f800000

    add-float v15, v15, v16

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mBorderPaint:Landroid/graphics/Paint;

    move-object/from16 v16, v0

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 315
    move-object v11, v1

    iget-object v11, v11, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlphaPattern:Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;

    move-object v12, v2

    invoke-virtual {v11, v12}, Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 317
    const/4 v11, 0x3

    new-array v11, v11, [F

    move-object/from16 v21, v11

    move-object/from16 v11, v21

    move-object/from16 v12, v21

    const/4 v13, 0x0

    move-object v14, v1

    iget v14, v14, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mHue:F

    aput v14, v12, v13

    move-object/from16 v21, v11

    move-object/from16 v11, v21

    move-object/from16 v12, v21

    const/4 v13, 0x1

    move-object v14, v1

    iget v14, v14, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mSat:F

    aput v14, v12, v13

    move-object/from16 v21, v11

    move-object/from16 v11, v21

    move-object/from16 v12, v21

    const/4 v13, 0x2

    move-object v14, v1

    iget v14, v14, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mVal:F

    aput v14, v12, v13

    move-object v4, v11

    .line 318
    move-object v11, v4

    invoke-static {v11}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v11

    move v5, v11

    .line 319
    const/4 v11, 0x0

    move-object v12, v4

    invoke-static {v11, v12}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v11

    move v6, v11

    .line 321
    move-object v11, v1

    new-instance v12, Landroid/graphics/LinearGradient;

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    move-object v14, v3

    iget v14, v14, Landroid/graphics/RectF;->left:F

    move-object v15, v3

    iget v15, v15, Landroid/graphics/RectF;->top:F

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v16, v0

    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v17, v0

    move/from16 v18, v5

    move/from16 v19, v6

    sget-object v20, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v13 .. v20}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v12, v11, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlphaShader:Landroid/graphics/Shader;

    .line 325
    move-object v11, v1

    iget-object v11, v11, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlphaPaint:Landroid/graphics/Paint;

    move-object v12, v1

    iget-object v12, v12, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlphaShader:Landroid/graphics/Shader;

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    move-result-object v11

    .line 327
    move-object v11, v2

    move-object v12, v3

    move-object v13, v1

    iget-object v13, v13, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlphaPaint:Landroid/graphics/Paint;

    invoke-virtual {v11, v12, v13}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 329
    move-object v11, v1

    iget-object v11, v11, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlphaSliderText:Ljava/lang/String;

    if-eqz v11, :cond_2

    move-object v11, v1

    iget-object v11, v11, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlphaSliderText:Ljava/lang/String;

    const-string v12, ""

    if-eq v11, v12, :cond_2

    .line 330
    move-object v11, v2

    move-object v12, v1

    iget-object v12, v12, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlphaSliderText:Ljava/lang/String;

    move-object v13, v3

    invoke-virtual {v13}, Landroid/graphics/RectF;->centerX()F

    move-result v13

    move-object v14, v3

    invoke-virtual {v14}, Landroid/graphics/RectF;->centerY()F

    move-result v14

    const/4 v15, 0x4

    int-to-float v15, v15

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget v0, v0, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mDensity:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    move-object v15, v1

    iget-object v15, v15, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlphaTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 333
    :cond_2
    const/4 v11, 0x4

    int-to-float v11, v11

    move-object v12, v1

    iget v12, v12, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mDensity:F

    mul-float/2addr v11, v12

    const/4 v12, 0x2

    int-to-float v12, v12

    div-float/2addr v11, v12

    move v7, v11

    .line 335
    move-object v11, v1

    move-object v12, v1

    iget v12, v12, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlpha:I

    invoke-direct {v11, v12}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->alphaToPoint(I)Landroid/graphics/Point;

    move-result-object v11

    move-object v8, v11

    .line 337
    new-instance v11, Landroid/graphics/RectF;

    move-object/from16 v21, v11

    move-object/from16 v11, v21

    move-object/from16 v12, v21

    invoke-direct {v12}, Landroid/graphics/RectF;-><init>()V

    move-object v9, v11

    .line 338
    move-object v11, v9

    move-object v12, v8

    iget v12, v12, Landroid/graphics/Point;->x:I

    int-to-float v12, v12

    move v13, v7

    sub-float/2addr v12, v13

    iput v12, v11, Landroid/graphics/RectF;->left:F

    .line 339
    move-object v11, v9

    move-object v12, v8

    iget v12, v12, Landroid/graphics/Point;->x:I

    int-to-float v12, v12

    move v13, v7

    add-float/2addr v12, v13

    iput v12, v11, Landroid/graphics/RectF;->right:F

    .line 340
    move-object v11, v9

    move-object v12, v3

    iget v12, v12, Landroid/graphics/RectF;->top:F

    move-object v13, v1

    iget v13, v13, Lnet/margaritov/preference/colorpicker/ColorPickerView;->RECTANGLE_TRACKER_OFFSET:F

    sub-float/2addr v12, v13

    iput v12, v11, Landroid/graphics/RectF;->top:F

    .line 341
    move-object v11, v9

    move-object v12, v3

    iget v12, v12, Landroid/graphics/RectF;->bottom:F

    move-object v13, v1

    iget v13, v13, Lnet/margaritov/preference/colorpicker/ColorPickerView;->RECTANGLE_TRACKER_OFFSET:F

    add-float/2addr v12, v13

    iput v12, v11, Landroid/graphics/RectF;->bottom:F

    .line 343
    move-object v11, v2

    move-object v12, v9

    const/4 v13, 0x2

    int-to-float v13, v13

    const/4 v14, 0x2

    int-to-float v14, v14

    move-object v15, v1

    iget-object v15, v15, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mHueTrackerPaint:Landroid/graphics/Paint;

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method private drawHuePanel(Landroid/graphics/Canvas;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            ")V"
        }
    .end annotation

    .prologue
    .line 266
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v7, v0

    iget-object v7, v7, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mHueRect:Landroid/graphics/RectF;

    move-object v2, v7

    .line 268
    move-object v7, v0

    iget-object v7, v7, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mBorderPaint:Landroid/graphics/Paint;

    move-object v8, v0

    iget v8, v8, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mBorderColor:I

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 270
    move-object v7, v1

    move-object v8, v2

    iget v8, v8, Landroid/graphics/RectF;->left:F

    const/high16 v9, 0x3f800000

    sub-float/2addr v8, v9

    move-object v9, v2

    iget v9, v9, Landroid/graphics/RectF;->top:F

    const/high16 v10, 0x3f800000

    sub-float/2addr v9, v10

    move-object v10, v2

    iget v10, v10, Landroid/graphics/RectF;->right:F

    const/high16 v11, 0x3f800000

    add-float/2addr v10, v11

    move-object v11, v2

    iget v11, v11, Landroid/graphics/RectF;->bottom:F

    const/high16 v12, 0x3f800000

    add-float/2addr v11, v12

    move-object v12, v0

    iget-object v12, v12, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 277
    move-object v7, v0

    iget-object v7, v7, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mHueShader:Landroid/graphics/Shader;

    if-nez v7, :cond_0

    .line 278
    move-object v7, v0

    new-instance v8, Landroid/graphics/LinearGradient;

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    move-object v10, v2

    iget v10, v10, Landroid/graphics/RectF;->left:F

    move-object v11, v2

    iget v11, v11, Landroid/graphics/RectF;->top:F

    move-object v12, v2

    iget v12, v12, Landroid/graphics/RectF;->left:F

    move-object v13, v2

    iget v13, v13, Landroid/graphics/RectF;->bottom:F

    move-object v14, v0

    invoke-direct {v14}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->buildHueColorArray()[I

    move-result-object v14

    const/4 v15, 0x0

    check-cast v15, [F

    sget-object v16, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v9 .. v16}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v8, v7, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mHueShader:Landroid/graphics/Shader;

    .line 279
    move-object v7, v0

    iget-object v7, v7, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mHuePaint:Landroid/graphics/Paint;

    move-object v8, v0

    iget-object v8, v8, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mHueShader:Landroid/graphics/Shader;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    move-result-object v7

    .line 282
    :cond_0
    move-object v7, v1

    move-object v8, v2

    move-object v9, v0

    iget-object v9, v9, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mHuePaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 284
    const/4 v7, 0x4

    int-to-float v7, v7

    move-object v8, v0

    iget v8, v8, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mDensity:F

    mul-float/2addr v7, v8

    const/4 v8, 0x2

    int-to-float v8, v8

    div-float/2addr v7, v8

    move v3, v7

    .line 286
    move-object v7, v0

    move-object v8, v0

    iget v8, v8, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mHue:F

    invoke-direct {v7, v8}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->hueToPoint(F)Landroid/graphics/Point;

    move-result-object v7

    move-object v4, v7

    .line 288
    new-instance v7, Landroid/graphics/RectF;

    move-object/from16 v17, v7

    move-object/from16 v7, v17

    move-object/from16 v8, v17

    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    move-object v5, v7

    .line 289
    move-object v7, v5

    move-object v8, v2

    iget v8, v8, Landroid/graphics/RectF;->left:F

    move-object v9, v0

    iget v9, v9, Lnet/margaritov/preference/colorpicker/ColorPickerView;->RECTANGLE_TRACKER_OFFSET:F

    sub-float/2addr v8, v9

    iput v8, v7, Landroid/graphics/RectF;->left:F

    .line 290
    move-object v7, v5

    move-object v8, v2

    iget v8, v8, Landroid/graphics/RectF;->right:F

    move-object v9, v0

    iget v9, v9, Lnet/margaritov/preference/colorpicker/ColorPickerView;->RECTANGLE_TRACKER_OFFSET:F

    add-float/2addr v8, v9

    iput v8, v7, Landroid/graphics/RectF;->right:F

    .line 291
    move-object v7, v5

    move-object v8, v4

    iget v8, v8, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    move v9, v3

    sub-float/2addr v8, v9

    iput v8, v7, Landroid/graphics/RectF;->top:F

    .line 292
    move-object v7, v5

    move-object v8, v4

    iget v8, v8, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    move v9, v3

    add-float/2addr v8, v9

    iput v8, v7, Landroid/graphics/RectF;->bottom:F

    .line 295
    move-object v7, v1

    move-object v8, v5

    const/4 v9, 0x2

    int-to-float v9, v9

    const/4 v10, 0x2

    int-to-float v10, v10

    move-object v11, v0

    iget-object v11, v11, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mHueTrackerPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawSatValPanel(Landroid/graphics/Canvas;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            ")V"
        }
    .end annotation

    .prologue
    .line 233
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v7, v0

    iget-object v7, v7, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mSatValRect:Landroid/graphics/RectF;

    move-object v2, v7

    .line 235
    move-object v7, v0

    iget-object v7, v7, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mBorderPaint:Landroid/graphics/Paint;

    move-object v8, v0

    iget v8, v8, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mBorderColor:I

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 237
    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    move-object v9, v0

    iget-object v9, v9, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->top:F

    move-object v10, v2

    iget v10, v10, Landroid/graphics/RectF;->right:F

    const/high16 v11, 0x3f800000

    add-float/2addr v10, v11

    move-object v11, v2

    iget v11, v11, Landroid/graphics/RectF;->bottom:F

    const/high16 v12, 0x3f800000

    add-float/2addr v11, v12

    move-object v12, v0

    iget-object v12, v12, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 240
    move-object v7, v0

    iget-object v7, v7, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mValShader:Landroid/graphics/Shader;

    if-nez v7, :cond_0

    .line 241
    move-object v7, v0

    new-instance v8, Landroid/graphics/LinearGradient;

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    move-object v10, v2

    iget v10, v10, Landroid/graphics/RectF;->left:F

    move-object v11, v2

    iget v11, v11, Landroid/graphics/RectF;->top:F

    move-object v12, v2

    iget v12, v12, Landroid/graphics/RectF;->left:F

    move-object v13, v2

    iget v13, v13, Landroid/graphics/RectF;->bottom:F

    const/4 v14, -0x1

    const/high16 v15, -0x1000000

    sget-object v16, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v9 .. v16}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v8, v7, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mValShader:Landroid/graphics/Shader;

    .line 245
    :cond_0
    const/4 v7, 0x3

    new-array v7, v7, [F

    move-object/from16 v17, v7

    move-object/from16 v7, v17

    move-object/from16 v8, v17

    const/4 v9, 0x0

    move-object v10, v0

    iget v10, v10, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mHue:F

    aput v10, v8, v9

    move-object/from16 v17, v7

    move-object/from16 v7, v17

    move-object/from16 v8, v17

    const/4 v9, 0x1

    const/high16 v10, 0x3f800000

    aput v10, v8, v9

    move-object/from16 v17, v7

    move-object/from16 v7, v17

    move-object/from16 v8, v17

    const/4 v9, 0x2

    const/high16 v10, 0x3f800000

    aput v10, v8, v9

    invoke-static {v7}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v7

    move v3, v7

    .line 247
    move-object v7, v0

    new-instance v8, Landroid/graphics/LinearGradient;

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    move-object v10, v2

    iget v10, v10, Landroid/graphics/RectF;->left:F

    move-object v11, v2

    iget v11, v11, Landroid/graphics/RectF;->top:F

    move-object v12, v2

    iget v12, v12, Landroid/graphics/RectF;->right:F

    move-object v13, v2

    iget v13, v13, Landroid/graphics/RectF;->top:F

    const/4 v14, -0x1

    move v15, v3

    sget-object v16, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v9 .. v16}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v8, v7, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mSatShader:Landroid/graphics/Shader;

    .line 249
    new-instance v7, Landroid/graphics/ComposeShader;

    move-object/from16 v17, v7

    move-object/from16 v7, v17

    move-object/from16 v8, v17

    move-object v9, v0

    iget-object v9, v9, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mValShader:Landroid/graphics/Shader;

    move-object v10, v0

    iget-object v10, v10, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mSatShader:Landroid/graphics/Shader;

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v8, v9, v10, v11}, Landroid/graphics/ComposeShader;-><init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/PorterDuff$Mode;)V

    move-object v4, v7

    .line 250
    move-object v7, v0

    iget-object v7, v7, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mSatValPaint:Landroid/graphics/Paint;

    move-object v8, v4

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    move-result-object v7

    .line 252
    move-object v7, v1

    move-object v8, v2

    move-object v9, v0

    iget-object v9, v9, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mSatValPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 254
    move-object v7, v0

    move-object v8, v0

    iget v8, v8, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mSat:F

    move-object v9, v0

    iget v9, v9, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mVal:F

    invoke-direct {v7, v8, v9}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->satValToPoint(FF)Landroid/graphics/Point;

    move-result-object v7

    move-object v5, v7

    .line 256
    move-object v7, v0

    iget-object v7, v7, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mSatValTrackerPaint:Landroid/graphics/Paint;

    const/high16 v8, -0x1000000

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 257
    move-object v7, v1

    move-object v8, v5

    iget v8, v8, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    move-object v9, v5

    iget v9, v9, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    move-object v10, v0

    iget v10, v10, Lnet/margaritov/preference/colorpicker/ColorPickerView;->PALETTE_CIRCLE_TRACKER_RADIUS:F

    const/high16 v11, 0x3f800000

    move-object v12, v0

    iget v12, v12, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mDensity:F

    mul-float/2addr v11, v12

    sub-float/2addr v10, v11

    move-object v11, v0

    iget-object v11, v11, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mSatValTrackerPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 259
    move-object v7, v0

    iget-object v7, v7, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mSatValTrackerPaint:Landroid/graphics/Paint;

    const v8, -0x222223

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 260
    move-object v7, v1

    move-object v8, v5

    iget v8, v8, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    move-object v9, v5

    iget v9, v9, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    move-object v10, v0

    iget v10, v10, Lnet/margaritov/preference/colorpicker/ColorPickerView;->PALETTE_CIRCLE_TRACKER_RADIUS:F

    move-object v11, v0

    iget-object v11, v11, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mSatValTrackerPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private getPrefferedHeight()I
    .locals 6

    .prologue
    .line 726
    move-object v0, p0

    const/16 v3, 0xc8

    int-to-float v3, v3

    move-object v4, v0

    iget v4, v4, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mDensity:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    move v1, v3

    .line 728
    move-object v3, v0

    iget-boolean v3, v3, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mShowAlphaPanel:Z

    if-eqz v3, :cond_0

    .line 729
    move v3, v1

    int-to-float v3, v3

    move-object v4, v0

    iget v4, v4, Lnet/margaritov/preference/colorpicker/ColorPickerView;->PANEL_SPACING:F

    move-object v5, v0

    iget v5, v5, Lnet/margaritov/preference/colorpicker/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    add-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    move v1, v3

    .line 732
    :cond_0
    move v3, v1

    move v0, v3

    return v0
.end method

.method private getPrefferedWidth()I
    .locals 6

    .prologue
    .line 713
    move-object v0, p0

    move-object v3, v0

    invoke-direct {v3}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->getPrefferedHeight()I

    move-result v3

    move v1, v3

    .line 715
    move-object v3, v0

    iget-boolean v3, v3, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mShowAlphaPanel:Z

    if-eqz v3, :cond_0

    .line 716
    move v3, v1

    int-to-float v3, v3

    move-object v4, v0

    iget v4, v4, Lnet/margaritov/preference/colorpicker/ColorPickerView;->PANEL_SPACING:F

    move-object v5, v0

    iget v5, v5, Lnet/margaritov/preference/colorpicker/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    add-float/2addr v4, v5

    sub-float/2addr v3, v4

    float-to-int v3, v3

    move v1, v3

    .line 720
    :cond_0
    move v3, v1

    int-to-float v3, v3

    move-object v4, v0

    iget v4, v4, Lnet/margaritov/preference/colorpicker/ColorPickerView;->HUE_PANEL_WIDTH:F

    add-float/2addr v3, v4

    move-object v4, v0

    iget v4, v4, Lnet/margaritov/preference/colorpicker/ColorPickerView;->PANEL_SPACING:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    move v0, v3

    return v0
.end method

.method private hueToPoint(F)Landroid/graphics/Point;
    .locals 11

    .prologue
    .line 350
    move-object v0, p0

    move v1, p1

    move-object v6, v0

    iget-object v6, v6, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mHueRect:Landroid/graphics/RectF;

    move-object v2, v6

    .line 351
    move-object v6, v2

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    move v3, v6

    .line 353
    new-instance v6, Landroid/graphics/Point;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    move-object v4, v6

    .line 355
    move-object v6, v4

    move v7, v3

    move v8, v1

    move v9, v3

    mul-float/2addr v8, v9

    const/high16 v9, 0x43b40000

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    move-object v8, v2

    iget v8, v8, Landroid/graphics/RectF;->top:F

    add-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v6, Landroid/graphics/Point;->y:I

    .line 356
    move-object v6, v4

    move-object v7, v2

    iget v7, v7, Landroid/graphics/RectF;->left:F

    float-to-int v7, v7

    iput v7, v6, Landroid/graphics/Point;->x:I

    .line 358
    move-object v6, v4

    move-object v0, v6

    return-object v0
.end method

.method private init()V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 155
    move-object v0, p0

    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    iput v3, v2, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mDensity:F

    .line 156
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lnet/margaritov/preference/colorpicker/ColorPickerView;->PALETTE_CIRCLE_TRACKER_RADIUS:F

    move-object v4, v0

    iget v4, v4, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mDensity:F

    mul-float/2addr v3, v4

    iput v3, v2, Lnet/margaritov/preference/colorpicker/ColorPickerView;->PALETTE_CIRCLE_TRACKER_RADIUS:F

    .line 157
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lnet/margaritov/preference/colorpicker/ColorPickerView;->RECTANGLE_TRACKER_OFFSET:F

    move-object v4, v0

    iget v4, v4, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mDensity:F

    mul-float/2addr v3, v4

    iput v3, v2, Lnet/margaritov/preference/colorpicker/ColorPickerView;->RECTANGLE_TRACKER_OFFSET:F

    .line 158
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lnet/margaritov/preference/colorpicker/ColorPickerView;->HUE_PANEL_WIDTH:F

    move-object v4, v0

    iget v4, v4, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mDensity:F

    mul-float/2addr v3, v4

    iput v3, v2, Lnet/margaritov/preference/colorpicker/ColorPickerView;->HUE_PANEL_WIDTH:F

    .line 159
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lnet/margaritov/preference/colorpicker/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    move-object v4, v0

    iget v4, v4, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mDensity:F

    mul-float/2addr v3, v4

    iput v3, v2, Lnet/margaritov/preference/colorpicker/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    .line 160
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lnet/margaritov/preference/colorpicker/ColorPickerView;->PANEL_SPACING:F

    move-object v4, v0

    iget v4, v4, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mDensity:F

    mul-float/2addr v3, v4

    iput v3, v2, Lnet/margaritov/preference/colorpicker/ColorPickerView;->PANEL_SPACING:F

    .line 162
    move-object v2, v0

    move-object v3, v0

    invoke-direct {v3}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->calculateRequiredOffset()F

    move-result v3

    iput v3, v2, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mDrawingOffset:F

    .line 164
    move-object v2, v0

    invoke-direct {v2}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->initPaintTools()V

    .line 167
    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->setFocusable(Z)V

    .line 168
    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->setFocusableInTouchMode(Z)V

    return-void
.end method

.method private initPaintTools()V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 173
    move-object v0, p0

    move-object v2, v0

    new-instance v3, Landroid/graphics/Paint;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, v2, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mSatValPaint:Landroid/graphics/Paint;

    .line 174
    move-object v2, v0

    new-instance v3, Landroid/graphics/Paint;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, v2, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mSatValTrackerPaint:Landroid/graphics/Paint;

    .line 175
    move-object v2, v0

    new-instance v3, Landroid/graphics/Paint;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, v2, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mHuePaint:Landroid/graphics/Paint;

    .line 176
    move-object v2, v0

    new-instance v3, Landroid/graphics/Paint;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, v2, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mHueTrackerPaint:Landroid/graphics/Paint;

    .line 177
    move-object v2, v0

    new-instance v3, Landroid/graphics/Paint;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, v2, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlphaPaint:Landroid/graphics/Paint;

    .line 178
    move-object v2, v0

    new-instance v3, Landroid/graphics/Paint;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, v2, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlphaTextPaint:Landroid/graphics/Paint;

    .line 179
    move-object v2, v0

    new-instance v3, Landroid/graphics/Paint;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, v2, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mBorderPaint:Landroid/graphics/Paint;

    .line 182
    move-object v2, v0

    iget-object v2, v2, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mSatValTrackerPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 183
    move-object v2, v0

    iget-object v2, v2, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mSatValTrackerPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x40000000

    move-object v4, v0

    iget v4, v4, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mDensity:F

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 184
    move-object v2, v0

    iget-object v2, v2, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mSatValTrackerPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 186
    move-object v2, v0

    iget-object v2, v2, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mHueTrackerPaint:Landroid/graphics/Paint;

    move-object v3, v0

    iget v3, v3, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mSliderTrackerColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 187
    move-object v2, v0

    iget-object v2, v2, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mHueTrackerPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 188
    move-object v2, v0

    iget-object v2, v2, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mHueTrackerPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x40000000

    move-object v4, v0

    iget v4, v4, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mDensity:F

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 189
    move-object v2, v0

    iget-object v2, v2, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mHueTrackerPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 191
    move-object v2, v0

    iget-object v2, v2, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlphaTextPaint:Landroid/graphics/Paint;

    const v3, -0xe3e3e4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 192
    move-object v2, v0

    iget-object v2, v2, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlphaTextPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x41600000

    move-object v4, v0

    iget v4, v4, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mDensity:F

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 193
    move-object v2, v0

    iget-object v2, v2, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlphaTextPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 194
    move-object v2, v0

    iget-object v2, v2, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlphaTextPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 195
    move-object v2, v0

    iget-object v2, v2, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlphaTextPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    return-void
.end method

.method private moveTrackersIfNeeded(Landroid/view/MotionEvent;)Z
    .locals 10

    .prologue
    .line 611
    move-object v0, p0

    move-object v1, p1

    move-object v7, v0

    iget-object v7, v7, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mStartTouchPoint:Landroid/graphics/Point;

    if-nez v7, :cond_0

    const/4 v7, 0x0

    move v0, v7

    .line 647
    :goto_0
    return v0

    .line 613
    :cond_0
    const/4 v7, 0x0

    move v2, v7

    .line 615
    move-object v7, v0

    iget-object v7, v7, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mStartTouchPoint:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    move v3, v7

    .line 616
    move-object v7, v0

    iget-object v7, v7, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mStartTouchPoint:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    move v4, v7

    .line 619
    move-object v7, v0

    iget-object v7, v7, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mHueRect:Landroid/graphics/RectF;

    move v8, v3

    int-to-float v8, v8

    move v9, v4

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 620
    move-object v7, v0

    const/4 v8, 0x1

    iput v8, v7, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mLastTouchedPanel:I

    .line 622
    move-object v7, v0

    move-object v8, v0

    move-object v9, v1

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-direct {v8, v9}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->pointToHue(F)F

    move-result v8

    iput v8, v7, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mHue:F

    .line 624
    const/4 v7, 0x1

    move v2, v7

    .line 647
    :cond_1
    :goto_1
    move v7, v2

    move v0, v7

    goto :goto_0

    .line 626
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mSatValRect:Landroid/graphics/RectF;

    move v8, v3

    int-to-float v8, v8

    move v9, v4

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 628
    move-object v7, v0

    const/4 v8, 0x0

    iput v8, v7, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mLastTouchedPanel:I

    .line 630
    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    move-object v9, v1

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-direct {v7, v8, v9}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->pointToSatVal(FF)[F

    move-result-object v7

    move-object v5, v7

    .line 632
    move-object v7, v0

    move-object v8, v5

    const/4 v9, 0x0

    aget v8, v8, v9

    iput v8, v7, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mSat:F

    .line 633
    move-object v7, v0

    move-object v8, v5

    const/4 v9, 0x1

    aget v8, v8, v9

    iput v8, v7, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mVal:F

    .line 635
    const/4 v7, 0x1

    move v2, v7

    goto :goto_1

    .line 637
    :cond_3
    move-object v7, v0

    iget-object v7, v7, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    if-eqz v7, :cond_1

    move-object v7, v0

    iget-object v7, v7, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    move v8, v3

    int-to-float v8, v8

    move v9, v4

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 639
    move-object v7, v0

    const/4 v8, 0x2

    iput v8, v7, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mLastTouchedPanel:I

    .line 641
    move-object v7, v0

    move-object v8, v0

    move-object v9, v1

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v9, v9

    invoke-direct {v8, v9}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->pointToAlpha(I)I

    move-result v8

    iput v8, v7, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlpha:I

    .line 643
    const/4 v7, 0x1

    move v2, v7

    goto :goto_1
.end method

.method private pointToAlpha(I)I
    .locals 8

    .prologue
    .line 445
    move-object v0, p0

    move v1, p1

    move-object v5, v0

    iget-object v5, v5, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    move-object v2, v5

    .line 446
    move-object v5, v2

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    float-to-int v5, v5

    move v3, v5

    .line 448
    move v5, v1

    int-to-float v5, v5

    move-object v6, v2

    iget v6, v6, Landroid/graphics/RectF;->left:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_0

    .line 449
    const/4 v5, 0x0

    move v1, v5

    .line 458
    :goto_0
    const/16 v5, 0xff

    move v6, v1

    const/16 v7, 0xff

    mul-int/lit16 v6, v6, 0xff

    move v7, v3

    div-int/2addr v6, v7

    rsub-int v5, v6, 0xff

    move v0, v5

    return v0

    .line 451
    :cond_0
    move v5, v1

    int-to-float v5, v5

    move-object v6, v2

    iget v6, v6, Landroid/graphics/RectF;->right:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    .line 452
    move v5, v3

    move v1, v5

    goto :goto_0

    .line 455
    :cond_1
    move v5, v1

    move-object v6, v2

    iget v6, v6, Landroid/graphics/RectF;->left:F

    float-to-int v6, v6

    sub-int/2addr v5, v6

    move v1, v5

    goto :goto_0
.end method

.method private pointToHue(F)F
    .locals 8

    .prologue
    .line 426
    move-object v0, p0

    move v1, p1

    move-object v5, v0

    iget-object v5, v5, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mHueRect:Landroid/graphics/RectF;

    move-object v2, v5

    .line 428
    move-object v5, v2

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    move v3, v5

    .line 430
    move v5, v1

    move-object v6, v2

    iget v6, v6, Landroid/graphics/RectF;->top:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_0

    .line 431
    const/4 v5, 0x0

    move v1, v5

    .line 440
    :goto_0
    const/high16 v5, 0x43b40000

    move v6, v1

    const/high16 v7, 0x43b40000

    mul-float/2addr v6, v7

    move v7, v3

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    move v0, v5

    return v0

    .line 433
    :cond_0
    move v5, v1

    move-object v6, v2

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    .line 434
    move v5, v3

    move v1, v5

    goto :goto_0

    .line 437
    :cond_1
    move v5, v1

    move-object v6, v2

    iget v6, v6, Landroid/graphics/RectF;->top:F

    sub-float/2addr v5, v6

    move v1, v5

    goto :goto_0
.end method

.method private pointToSatVal(FF)[F
    .locals 13

    .prologue
    .line 391
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v8, v0

    iget-object v8, v8, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mSatValRect:Landroid/graphics/RectF;

    move-object v3, v8

    .line 392
    const/4 v8, 0x2

    new-array v8, v8, [F

    move-object v4, v8

    .line 394
    move-object v8, v3

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v8

    move v5, v8

    .line 395
    move-object v8, v3

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v8

    move v6, v8

    .line 397
    move v8, v1

    move-object v9, v3

    iget v9, v9, Landroid/graphics/RectF;->left:F

    cmpg-float v8, v8, v9

    if-gez v8, :cond_0

    .line 398
    const/4 v8, 0x0

    move v1, v8

    .line 407
    :goto_0
    move v8, v2

    move-object v9, v3

    iget v9, v9, Landroid/graphics/RectF;->top:F

    cmpg-float v8, v8, v9

    if-gez v8, :cond_2

    .line 408
    const/4 v8, 0x0

    move v2, v8

    .line 418
    :goto_1
    move-object v8, v4

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000

    move v11, v5

    div-float/2addr v10, v11

    move v11, v1

    mul-float/2addr v10, v11

    aput v10, v8, v9

    .line 419
    move-object v8, v4

    const/4 v9, 0x1

    const/high16 v10, 0x3f800000

    const/high16 v11, 0x3f800000

    move v12, v6

    div-float/2addr v11, v12

    move v12, v2

    mul-float/2addr v11, v12

    sub-float/2addr v10, v11

    aput v10, v8, v9

    .line 421
    move-object v8, v4

    move-object v0, v8

    return-object v0

    .line 400
    :cond_0
    move v8, v1

    move-object v9, v3

    iget v9, v9, Landroid/graphics/RectF;->right:F

    cmpl-float v8, v8, v9

    if-lez v8, :cond_1

    .line 401
    move v8, v5

    move v1, v8

    goto :goto_0

    .line 404
    :cond_1
    move v8, v1

    move-object v9, v3

    iget v9, v9, Landroid/graphics/RectF;->left:F

    sub-float/2addr v8, v9

    move v1, v8

    goto :goto_0

    .line 410
    :cond_2
    move v8, v2

    move-object v9, v3

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    cmpl-float v8, v8, v9

    if-lez v8, :cond_3

    .line 411
    move v8, v6

    move v2, v8

    goto :goto_1

    .line 414
    :cond_3
    move v8, v2

    move-object v9, v3

    iget v9, v9, Landroid/graphics/RectF;->top:F

    sub-float/2addr v8, v9

    move v2, v8

    goto :goto_1
.end method

.method private satValToPoint(FF)Landroid/graphics/Point;
    .locals 12

    .prologue
    .line 363
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v8, v0

    iget-object v8, v8, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mSatValRect:Landroid/graphics/RectF;

    move-object v3, v8

    .line 364
    move-object v8, v3

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v8

    move v4, v8

    .line 365
    move-object v8, v3

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v8

    move v5, v8

    .line 367
    new-instance v8, Landroid/graphics/Point;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Landroid/graphics/Point;-><init>()V

    move-object v6, v8

    .line 369
    move-object v8, v6

    move v9, v1

    move v10, v5

    mul-float/2addr v9, v10

    move-object v10, v3

    iget v10, v10, Landroid/graphics/RectF;->left:F

    add-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v8, Landroid/graphics/Point;->x:I

    .line 370
    move-object v8, v6

    const/high16 v9, 0x3f800000

    move v10, v2

    sub-float/2addr v9, v10

    move v10, v4

    mul-float/2addr v9, v10

    move-object v10, v3

    iget v10, v10, Landroid/graphics/RectF;->top:F

    add-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v8, Landroid/graphics/Point;->y:I

    .line 372
    move-object v8, v6

    move-object v0, v8

    return-object v0
.end method

.method private setUpAlphaRect()V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 782
    move-object v0, p0

    move-object v7, v0

    iget-boolean v7, v7, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mShowAlphaPanel:Z

    if-nez v7, :cond_0

    .line 794
    :goto_0
    return-void

    .line 784
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    move-object v1, v7

    .line 786
    move-object v7, v1

    iget v7, v7, Landroid/graphics/RectF;->left:F

    const/high16 v8, 0x3f800000

    add-float/2addr v7, v8

    move v2, v7

    .line 787
    move-object v7, v1

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    move-object v8, v0

    iget v8, v8, Lnet/margaritov/preference/colorpicker/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    sub-float/2addr v7, v8

    const/high16 v8, 0x3f800000

    add-float/2addr v7, v8

    move v3, v7

    .line 788
    move-object v7, v1

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    const/high16 v8, 0x3f800000

    sub-float/2addr v7, v8

    move v4, v7

    .line 789
    move-object v7, v1

    iget v7, v7, Landroid/graphics/RectF;->right:F

    const/high16 v8, 0x3f800000

    sub-float/2addr v7, v8

    move v5, v7

    .line 791
    move-object v7, v0

    new-instance v8, Landroid/graphics/RectF;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move v10, v2

    move v11, v3

    move v12, v5

    move v13, v4

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v8, v7, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    .line 793
    move-object v7, v0

    new-instance v8, Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    const/4 v10, 0x5

    int-to-float v10, v10

    move-object v11, v0

    iget v11, v11, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mDensity:F

    mul-float/2addr v10, v11

    float-to-int v10, v10

    invoke-direct {v9, v10}, Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;-><init>(I)V

    iput-object v8, v7, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlphaPattern:Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;

    .line 794
    move-object v7, v0

    iget-object v7, v7, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlphaPattern:Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;

    move-object v8, v0

    iget-object v8, v8, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    move-object v9, v0

    iget-object v9, v9, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->top:F

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    move-object v10, v0

    iget-object v10, v10, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->right:F

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    move-object v11, v0

    iget-object v11, v11, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->bottom:F

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-virtual {v7, v8, v9, v10, v11}, Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;->setBounds(IIII)V

    goto :goto_0
.end method

.method private setUpHueRect()V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 770
    move-object/from16 v0, p0

    move-object v7, v0

    iget-object v7, v7, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    move-object v1, v7

    .line 772
    move-object v7, v1

    iget v7, v7, Landroid/graphics/RectF;->right:F

    move-object v8, v0

    iget v8, v8, Lnet/margaritov/preference/colorpicker/ColorPickerView;->HUE_PANEL_WIDTH:F

    sub-float/2addr v7, v8

    const/high16 v8, 0x3f800000

    add-float/2addr v7, v8

    move v2, v7

    .line 773
    move-object v7, v1

    iget v7, v7, Landroid/graphics/RectF;->top:F

    const/high16 v8, 0x3f800000

    add-float/2addr v7, v8

    move v3, v7

    .line 774
    move-object v7, v1

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    const/high16 v8, 0x3f800000

    sub-float/2addr v7, v8

    move-object v8, v0

    iget-boolean v8, v8, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mShowAlphaPanel:Z

    if-eqz v8, :cond_0

    move-object v8, v0

    iget v8, v8, Lnet/margaritov/preference/colorpicker/ColorPickerView;->PANEL_SPACING:F

    move-object v9, v0

    iget v9, v9, Lnet/margaritov/preference/colorpicker/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    add-float/2addr v8, v9

    :goto_0
    sub-float/2addr v7, v8

    move v4, v7

    .line 775
    move-object v7, v1

    iget v7, v7, Landroid/graphics/RectF;->right:F

    const/high16 v8, 0x3f800000

    sub-float/2addr v7, v8

    move v5, v7

    .line 777
    move-object v7, v0

    new-instance v8, Landroid/graphics/RectF;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    move v10, v2

    move v11, v3

    move v12, v5

    move v13, v4

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v8, v7, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mHueRect:Landroid/graphics/RectF;

    return-void

    .line 774
    :cond_0
    const/4 v8, 0x0

    int-to-float v8, v8

    goto :goto_0
.end method

.method private setUpSatValRect()V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 754
    move-object/from16 v0, p0

    move-object v8, v0

    iget-object v8, v8, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    move-object v1, v8

    .line 755
    move-object v8, v1

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v8

    const/high16 v9, 0x40000000

    sub-float/2addr v8, v9

    move v2, v8

    .line 757
    move-object v8, v0

    iget-boolean v8, v8, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mShowAlphaPanel:Z

    if-eqz v8, :cond_0

    .line 758
    move v8, v2

    move-object v9, v0

    iget v9, v9, Lnet/margaritov/preference/colorpicker/ColorPickerView;->PANEL_SPACING:F

    move-object v10, v0

    iget v10, v10, Lnet/margaritov/preference/colorpicker/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    add-float/2addr v9, v10

    sub-float/2addr v8, v9

    move v2, v8

    .line 761
    :cond_0
    move-object v8, v1

    iget v8, v8, Landroid/graphics/RectF;->left:F

    const/high16 v9, 0x3f800000

    add-float/2addr v8, v9

    move v3, v8

    .line 762
    move-object v8, v1

    iget v8, v8, Landroid/graphics/RectF;->top:F

    const/high16 v9, 0x3f800000

    add-float/2addr v8, v9

    move v4, v8

    .line 763
    move v8, v4

    move v9, v2

    add-float/2addr v8, v9

    move v5, v8

    .line 764
    move v8, v3

    move v9, v2

    add-float/2addr v8, v9

    move v6, v8

    .line 766
    move-object v8, v0

    new-instance v9, Landroid/graphics/RectF;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move v11, v3

    move v12, v4

    move v13, v6

    move v14, v5

    invoke-direct {v10, v11, v12, v13, v14}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v9, v8, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mSatValRect:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public getAlphaSliderText()Ljava/lang/String;
    .locals 3

    .prologue
    .line 954
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlphaSliderText:Ljava/lang/String;

    move-object v0, v2

    return-object v0
.end method

.method public getAlphaSliderVisible()Z
    .locals 3

    .prologue
    .line 912
    move-object v0, p0

    move-object v2, v0

    iget-boolean v2, v2, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mShowAlphaPanel:Z

    move v0, v2

    return v0
.end method

.method public getBorderColor()I
    .locals 3

    .prologue
    .line 826
    move-object v0, p0

    move-object v2, v0

    iget v2, v2, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mBorderColor:I

    move v0, v2

    return v0
.end method

.method public getColor()I
    .locals 8

    .prologue
    .line 834
    move-object v0, p0

    move-object v2, v0

    iget v2, v2, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlpha:I

    const/4 v3, 0x3

    new-array v3, v3, [F

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    move-object v6, v0

    iget v6, v6, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mHue:F

    aput v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    move-object v6, v0

    iget v6, v6, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mSat:F

    aput v6, v4, v5

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x2

    move-object v6, v0

    iget v6, v6, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mVal:F

    aput v6, v4, v5

    invoke-static {v2, v3}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public getDrawingOffset()F
    .locals 3

    .prologue
    .line 883
    move-object v0, p0

    move-object v2, v0

    iget v2, v2, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mDrawingOffset:F

    move v0, v2

    return v0
.end method

.method public getSliderTrackerColor()I
    .locals 3

    .prologue
    .line 924
    move-object v0, p0

    move-object v2, v0

    iget v2, v2, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mSliderTrackerColor:I

    move v0, v2

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
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
    .line 223
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    const/4 v4, 0x0

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    const/4 v4, 0x0

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_1

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->drawSatValPanel(Landroid/graphics/Canvas;)V

    .line 226
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->drawHuePanel(Landroid/graphics/Canvas;)V

    .line 227
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->drawAlphaPanel(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 653
    move-object v0, p0

    move v1, p1

    move v2, p2

    const/4 v10, 0x0

    move v3, v10

    .line 654
    const/4 v10, 0x0

    move v4, v10

    .line 656
    move v10, v1

    invoke-static {v10}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    move v5, v10

    .line 657
    move v10, v2

    invoke-static {v10}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    move v6, v10

    .line 659
    move v10, v1

    invoke-static {v10}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    move v7, v10

    .line 660
    move v10, v2

    invoke-static {v10}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    move v8, v10

    .line 662
    move-object v10, v0

    move v11, v5

    move v12, v7

    invoke-direct {v10, v11, v12}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->chooseWidth(II)I

    move-result v10

    move v7, v10

    .line 663
    move-object v10, v0

    move v11, v6

    move v12, v8

    invoke-direct {v10, v11, v12}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->chooseHeight(II)I

    move-result v10

    move v8, v10

    .line 665
    move-object v10, v0

    iget-boolean v10, v10, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mShowAlphaPanel:Z

    if-nez v10, :cond_2

    .line 667
    move v10, v7

    int-to-float v10, v10

    move-object v11, v0

    iget v11, v11, Lnet/margaritov/preference/colorpicker/ColorPickerView;->PANEL_SPACING:F

    sub-float/2addr v10, v11

    move-object v11, v0

    iget v11, v11, Lnet/margaritov/preference/colorpicker/ColorPickerView;->HUE_PANEL_WIDTH:F

    sub-float/2addr v10, v11

    float-to-int v10, v10

    move v4, v10

    .line 670
    move v10, v4

    move v11, v8

    if-gt v10, v11, :cond_0

    move-object v10, v0

    invoke-virtual {v10}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->getTag()Ljava/lang/Object;

    move-result-object v10

    const-string v11, "landscape"

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 671
    :cond_0
    move v10, v8

    move v4, v10

    .line 672
    move v10, v4

    int-to-float v10, v10

    move-object v11, v0

    iget v11, v11, Lnet/margaritov/preference/colorpicker/ColorPickerView;->PANEL_SPACING:F

    add-float/2addr v10, v11

    move-object v11, v0

    iget v11, v11, Lnet/margaritov/preference/colorpicker/ColorPickerView;->HUE_PANEL_WIDTH:F

    add-float/2addr v10, v11

    float-to-int v10, v10

    move v3, v10

    .line 692
    :goto_0
    move-object v10, v0

    move v11, v3

    move v12, v4

    invoke-virtual {v10, v11, v12}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->setMeasuredDimension(II)V

    return-void

    .line 675
    :cond_1
    move v10, v7

    move v3, v10

    goto :goto_0

    .line 680
    :cond_2
    move v10, v8

    int-to-float v10, v10

    move-object v11, v0

    iget v11, v11, Lnet/margaritov/preference/colorpicker/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    sub-float/2addr v10, v11

    move-object v11, v0

    iget v11, v11, Lnet/margaritov/preference/colorpicker/ColorPickerView;->HUE_PANEL_WIDTH:F

    add-float/2addr v10, v11

    float-to-int v10, v10

    move v3, v10

    .line 682
    move v10, v3

    move v11, v7

    if-le v10, v11, :cond_3

    .line 683
    move v10, v7

    move v3, v10

    .line 684
    move v10, v7

    int-to-float v10, v10

    move-object v11, v0

    iget v11, v11, Lnet/margaritov/preference/colorpicker/ColorPickerView;->HUE_PANEL_WIDTH:F

    sub-float/2addr v10, v11

    move-object v11, v0

    iget v11, v11, Lnet/margaritov/preference/colorpicker/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    add-float/2addr v10, v11

    float-to-int v10, v10

    move v4, v10

    goto :goto_0

    .line 687
    :cond_3
    move v10, v8

    move v4, v10

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 739
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move-object v6, v0

    move v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    invoke-super {v6, v7, v8, v9, v10}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 741
    move-object v6, v0

    new-instance v7, Landroid/graphics/RectF;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    iput-object v7, v6, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    .line 742
    move-object v6, v0

    iget-object v6, v6, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    move-object v7, v0

    iget v7, v7, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mDrawingOffset:F

    move-object v8, v0

    invoke-virtual {v8}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->getPaddingLeft()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    iput v7, v6, Landroid/graphics/RectF;->left:F

    .line 743
    move-object v6, v0

    iget-object v6, v6, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    move v7, v1

    int-to-float v7, v7

    move-object v8, v0

    iget v8, v8, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mDrawingOffset:F

    sub-float/2addr v7, v8

    move-object v8, v0

    invoke-virtual {v8}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->getPaddingRight()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    iput v7, v6, Landroid/graphics/RectF;->right:F

    .line 744
    move-object v6, v0

    iget-object v6, v6, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    move-object v7, v0

    iget v7, v7, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mDrawingOffset:F

    move-object v8, v0

    invoke-virtual {v8}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->getPaddingTop()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    iput v7, v6, Landroid/graphics/RectF;->top:F

    .line 745
    move-object v6, v0

    iget-object v6, v6, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    move v7, v2

    int-to-float v7, v7

    move-object v8, v0

    iget v8, v8, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mDrawingOffset:F

    sub-float/2addr v7, v8

    move-object v8, v0

    invoke-virtual {v8}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->getPaddingBottom()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    iput v7, v6, Landroid/graphics/RectF;->bottom:F

    .line 747
    move-object v6, v0

    invoke-direct {v6}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->setUpSatValRect()V

    .line 748
    move-object v6, v0

    invoke-direct {v6}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->setUpHueRect()V

    .line 749
    move-object v6, v0

    invoke-direct {v6}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->setUpAlphaRect()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 567
    move-object v0, p0

    move-object v1, p1

    const/4 v4, 0x0

    move v2, v4

    .line 569
    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 595
    :goto_0
    move v4, v2

    if-eqz v4, :cond_1

    .line 597
    move-object v4, v0

    iget-object v4, v4, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mListener:Lnet/margaritov/preference/colorpicker/ColorPickerView$OnColorChangedListener;

    if-eqz v4, :cond_0

    .line 598
    move-object v4, v0

    iget-object v4, v4, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mListener:Lnet/margaritov/preference/colorpicker/ColorPickerView$OnColorChangedListener;

    move-object v5, v0

    iget v5, v5, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlpha:I

    const/4 v6, 0x3

    new-array v6, v6, [F

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v0

    iget v9, v9, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mHue:F

    aput v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x1

    move-object v9, v0

    iget v9, v9, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mSat:F

    aput v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x2

    move-object v9, v0

    iget v9, v9, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mVal:F

    aput v9, v7, v8

    invoke-static {v5, v6}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v5

    invoke-interface {v4, v5}, Lnet/margaritov/preference/colorpicker/ColorPickerView$OnColorChangedListener;->onColorChanged(I)V

    .line 601
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->invalidate()V

    .line 602
    const/4 v4, 0x1

    move v0, v4

    .line 606
    :goto_1
    return v0

    .line 573
    :pswitch_0
    move-object v4, v0

    new-instance v5, Landroid/graphics/Point;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v7, v7

    move-object v8, v1

    invoke-virtual {v8}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v8, v8

    invoke-direct {v6, v7, v8}, Landroid/graphics/Point;-><init>(II)V

    iput-object v5, v4, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mStartTouchPoint:Landroid/graphics/Point;

    .line 575
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->moveTrackersIfNeeded(Landroid/view/MotionEvent;)Z

    move-result v4

    move v2, v4

    .line 577
    goto :goto_0

    .line 581
    :pswitch_1
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->moveTrackersIfNeeded(Landroid/view/MotionEvent;)Z

    move-result v4

    move v2, v4

    .line 583
    goto :goto_0

    .line 587
    :pswitch_2
    move-object v4, v0

    const/4 v5, 0x0

    check-cast v5, Landroid/graphics/Point;

    iput-object v5, v4, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mStartTouchPoint:Landroid/graphics/Point;

    .line 589
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->moveTrackersIfNeeded(Landroid/view/MotionEvent;)Z

    move-result v4

    move v2, v4

    .line 591
    goto :goto_0

    .line 606
    :cond_1
    move-object v4, v0

    move-object v5, v1

    invoke-super {v4, v5}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    move v0, v4

    goto :goto_1

    .line 569
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 17
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 466
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v10, v1

    invoke-virtual {v10}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    move v2, v10

    .line 467
    move-object v10, v1

    invoke-virtual {v10}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    move v3, v10

    .line 469
    const/4 v10, 0x0

    move v4, v10

    .line 472
    move-object v10, v1

    invoke-virtual {v10}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_0

    .line 474
    move-object v10, v0

    iget v10, v10, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mLastTouchedPanel:I

    packed-switch v10, :pswitch_data_0

    .line 550
    :cond_0
    :goto_0
    move v10, v4

    if-eqz v10, :cond_c

    .line 552
    move-object v10, v0

    iget-object v10, v10, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mListener:Lnet/margaritov/preference/colorpicker/ColorPickerView$OnColorChangedListener;

    if-eqz v10, :cond_1

    .line 553
    move-object v10, v0

    iget-object v10, v10, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mListener:Lnet/margaritov/preference/colorpicker/ColorPickerView$OnColorChangedListener;

    move-object v11, v0

    iget v11, v11, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlpha:I

    const/4 v12, 0x3

    new-array v12, v12, [F

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    const/4 v14, 0x0

    move-object v15, v0

    iget v15, v15, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mHue:F

    aput v15, v13, v14

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    const/4 v14, 0x1

    move-object v15, v0

    iget v15, v15, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mSat:F

    aput v15, v13, v14

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    const/4 v14, 0x2

    move-object v15, v0

    iget v15, v15, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mVal:F

    aput v15, v13, v14

    invoke-static {v11, v12}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v11

    invoke-interface {v10, v11}, Lnet/margaritov/preference/colorpicker/ColorPickerView$OnColorChangedListener;->onColorChanged(I)V

    .line 556
    :cond_1
    move-object v10, v0

    invoke-virtual {v10}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->invalidate()V

    .line 557
    const/4 v10, 0x1

    move v0, v10

    .line 561
    :goto_1
    return v0

    .line 478
    :pswitch_0
    move-object v10, v0

    iget v10, v10, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mSat:F

    move v11, v2

    const/high16 v12, 0x42480000

    div-float/2addr v11, v12

    add-float/2addr v10, v11

    move v5, v10

    .line 481
    move-object v10, v0

    iget v10, v10, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mVal:F

    move v11, v3

    const/high16 v12, 0x42480000

    div-float/2addr v11, v12

    sub-float/2addr v10, v11

    move v6, v10

    .line 483
    move v10, v5

    const/4 v11, 0x0

    cmpg-float v10, v10, v11

    if-gez v10, :cond_4

    .line 484
    const/4 v10, 0x0

    move v5, v10

    .line 490
    :cond_2
    :goto_2
    move v10, v6

    const/4 v11, 0x0

    cmpg-float v10, v10, v11

    if-gez v10, :cond_5

    .line 491
    const/4 v10, 0x0

    move v6, v10

    .line 497
    :cond_3
    :goto_3
    move-object v10, v0

    move v11, v5

    iput v11, v10, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mSat:F

    .line 498
    move-object v10, v0

    move v11, v6

    iput v11, v10, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mVal:F

    .line 500
    const/4 v10, 0x1

    move v4, v10

    .line 502
    goto :goto_0

    .line 486
    :cond_4
    move v10, v5

    const/high16 v11, 0x3f800000

    cmpl-float v10, v10, v11

    if-lez v10, :cond_2

    .line 487
    const/high16 v10, 0x3f800000

    move v5, v10

    goto :goto_2

    .line 493
    :cond_5
    move v10, v6

    const/high16 v11, 0x3f800000

    cmpl-float v10, v10, v11

    if-lez v10, :cond_3

    .line 494
    const/high16 v10, 0x3f800000

    move v6, v10

    goto :goto_3

    .line 506
    :pswitch_1
    move-object v10, v0

    iget v10, v10, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mHue:F

    move v11, v3

    const/high16 v12, 0x41200000

    mul-float/2addr v11, v12

    sub-float/2addr v10, v11

    move v7, v10

    .line 508
    move v10, v7

    const/4 v11, 0x0

    cmpg-float v10, v10, v11

    if-gez v10, :cond_7

    .line 509
    const/4 v10, 0x0

    move v7, v10

    .line 515
    :cond_6
    :goto_4
    move-object v10, v0

    move v11, v7

    iput v11, v10, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mHue:F

    .line 517
    const/4 v10, 0x1

    move v4, v10

    .line 519
    goto/16 :goto_0

    .line 511
    :cond_7
    move v10, v7

    const/high16 v11, 0x43b40000

    cmpl-float v10, v10, v11

    if-lez v10, :cond_6

    .line 512
    const/high16 v10, 0x43b40000

    move v7, v10

    goto :goto_4

    .line 523
    :pswitch_2
    move-object v10, v0

    iget-boolean v10, v10, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mShowAlphaPanel:Z

    if-eqz v10, :cond_8

    move-object v10, v0

    iget-object v10, v10, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    if-nez v10, :cond_9

    .line 524
    :cond_8
    const/4 v10, 0x0

    move v4, v10

    .line 543
    :goto_5
    goto/16 :goto_0

    .line 528
    :cond_9
    move-object v10, v0

    iget v10, v10, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlpha:I

    int-to-float v10, v10

    move v11, v2

    const/16 v12, 0xa

    int-to-float v12, v12

    mul-float/2addr v11, v12

    sub-float/2addr v10, v11

    float-to-int v10, v10

    move v8, v10

    .line 530
    move v10, v8

    const/4 v11, 0x0

    if-ge v10, v11, :cond_b

    .line 531
    const/4 v10, 0x0

    move v8, v10

    .line 537
    :cond_a
    :goto_6
    move-object v10, v0

    move v11, v8

    iput v11, v10, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlpha:I

    .line 540
    const/4 v10, 0x1

    move v4, v10

    goto :goto_5

    .line 533
    :cond_b
    move v10, v8

    const/16 v11, 0xff

    if-le v10, v11, :cond_a

    .line 534
    const/16 v10, 0xff

    move v8, v10

    goto :goto_6

    .line 561
    :cond_c
    move-object v10, v0

    move-object v11, v1

    invoke-super {v10, v11}, Landroid/view/View;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v10

    move v0, v10

    goto/16 :goto_1

    .line 474
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setAlphaSliderText(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 933
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    invoke-virtual {v4}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->getContext()Landroid/content/Context;

    move-result-object v4

    move v5, v1

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 934
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->setAlphaSliderText(Ljava/lang/String;)V

    return-void
.end method

.method public setAlphaSliderText(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 943
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlphaSliderText:Ljava/lang/String;

    .line 944
    move-object v3, v0

    invoke-virtual {v3}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->invalidate()V

    return-void
.end method

.method public setAlphaSliderVisible(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .prologue
    .line 893
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-boolean v3, v3, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mShowAlphaPanel:Z

    if-nez v3, :cond_1

    move v3, v1

    if-eqz v3, :cond_0

    .line 894
    :goto_0
    move-object v3, v0

    move v4, v1

    iput-boolean v4, v3, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mShowAlphaPanel:Z

    .line 901
    move-object v3, v0

    const/4 v4, 0x0

    check-cast v4, Landroid/graphics/Shader;

    iput-object v4, v3, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mValShader:Landroid/graphics/Shader;

    .line 902
    move-object v3, v0

    const/4 v4, 0x0

    check-cast v4, Landroid/graphics/Shader;

    iput-object v4, v3, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mSatShader:Landroid/graphics/Shader;

    .line 903
    move-object v3, v0

    const/4 v4, 0x0

    check-cast v4, Landroid/graphics/Shader;

    iput-object v4, v3, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mHueShader:Landroid/graphics/Shader;

    .line 904
    move-object v3, v0

    const/4 v4, 0x0

    check-cast v4, Landroid/graphics/Shader;

    iput-object v4, v3, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlphaShader:Landroid/graphics/Shader;

    .line 906
    move-object v3, v0

    invoke-virtual {v3}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->requestLayout()V

    :cond_0
    return-void

    .line 893
    :cond_1
    move v3, v1

    if-nez v3, :cond_0

    goto :goto_0
.end method

.method public setBorderColor(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 818
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    iput v4, v3, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mBorderColor:I

    .line 819
    move-object v3, v0

    invoke-virtual {v3}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->invalidate()V

    return-void
.end method

.method public setColor(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 842
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->setColor(IZ)V

    return-void
.end method

.method public setColor(IZ)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)V"
        }
    .end annotation

    .prologue
    .line 853
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move v9, v1

    invoke-static {v9}, Landroid/graphics/Color;->alpha(I)I

    move-result v9

    move v3, v9

    .line 854
    move v9, v1

    invoke-static {v9}, Landroid/graphics/Color;->red(I)I

    move-result v9

    move v4, v9

    .line 855
    move v9, v1

    invoke-static {v9}, Landroid/graphics/Color;->blue(I)I

    move-result v9

    move v5, v9

    .line 856
    move v9, v1

    invoke-static {v9}, Landroid/graphics/Color;->green(I)I

    move-result v9

    move v6, v9

    .line 858
    const/4 v9, 0x3

    new-array v9, v9, [F

    move-object v7, v9

    .line 860
    move v9, v4

    move v10, v6

    move v11, v5

    move-object v12, v7

    invoke-static {v9, v10, v11, v12}, Landroid/graphics/Color;->RGBToHSV(III[F)V

    .line 862
    move-object v9, v0

    move v10, v3

    iput v10, v9, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlpha:I

    .line 863
    move-object v9, v0

    move-object v10, v7

    const/4 v11, 0x0

    aget v10, v10, v11

    iput v10, v9, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mHue:F

    .line 864
    move-object v9, v0

    move-object v10, v7

    const/4 v11, 0x1

    aget v10, v10, v11

    iput v10, v9, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mSat:F

    .line 865
    move-object v9, v0

    move-object v10, v7

    const/4 v11, 0x2

    aget v10, v10, v11

    iput v10, v9, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mVal:F

    .line 867
    move v9, v2

    if-eqz v9, :cond_0

    move-object v9, v0

    iget-object v9, v9, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mListener:Lnet/margaritov/preference/colorpicker/ColorPickerView$OnColorChangedListener;

    if-eqz v9, :cond_0

    .line 868
    move-object v9, v0

    iget-object v9, v9, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mListener:Lnet/margaritov/preference/colorpicker/ColorPickerView$OnColorChangedListener;

    move-object v10, v0

    iget v10, v10, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mAlpha:I

    const/4 v11, 0x3

    new-array v11, v11, [F

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x0

    move-object v14, v0

    iget v14, v14, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mHue:F

    aput v14, v12, v13

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x1

    move-object v14, v0

    iget v14, v14, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mSat:F

    aput v14, v12, v13

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x2

    move-object v14, v0

    iget v14, v14, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mVal:F

    aput v14, v12, v13

    invoke-static {v10, v11}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v10

    invoke-interface {v9, v10}, Lnet/margaritov/preference/colorpicker/ColorPickerView$OnColorChangedListener;->onColorChanged(I)V

    .line 871
    :cond_0
    move-object v9, v0

    invoke-virtual {v9}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->invalidate()V

    return-void
.end method

.method public setOnColorChangedListener(Lnet/margaritov/preference/colorpicker/ColorPickerView$OnColorChangedListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/margaritov/preference/colorpicker/ColorPickerView$OnColorChangedListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 810
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mListener:Lnet/margaritov/preference/colorpicker/ColorPickerView$OnColorChangedListener;

    return-void
.end method

.method public setSliderTrackerColor(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 916
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    iput v4, v3, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mSliderTrackerColor:I

    .line 918
    move-object v3, v0

    iget-object v3, v3, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mHueTrackerPaint:Landroid/graphics/Paint;

    move-object v4, v0

    iget v4, v4, Lnet/margaritov/preference/colorpicker/ColorPickerView;->mSliderTrackerColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 920
    move-object v3, v0

    invoke-virtual {v3}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->invalidate()V

    return-void
.end method
