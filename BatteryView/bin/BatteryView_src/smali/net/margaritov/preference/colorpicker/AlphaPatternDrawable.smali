.class public Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "AlphaPatternDrawable.java"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mPaint:Landroid/graphics/Paint;

.field private mPaintGray:Landroid/graphics/Paint;

.field private mPaintWhite:Landroid/graphics/Paint;

.field private mRectangleSize:I

.field private numRectanglesHorizontal:I

.field private numRectanglesVertical:I


# direct methods
.method public constructor <init>(I)V
    .locals 7

    .prologue
    .line 49
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    invoke-direct {v3}, Landroid/graphics/drawable/Drawable;-><init>()V

    move-object v3, v0

    const/16 v4, 0xa

    iput v4, v3, Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;->mRectangleSize:I

    move-object v3, v0

    new-instance v4, Landroid/graphics/Paint;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, v3, Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v3, v0

    new-instance v4, Landroid/graphics/Paint;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, v3, Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;->mPaintWhite:Landroid/graphics/Paint;

    move-object v3, v0

    new-instance v4, Landroid/graphics/Paint;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, v3, Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;->mPaintGray:Landroid/graphics/Paint;

    .line 50
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;->mRectangleSize:I

    .line 51
    move-object v3, v0

    iget-object v3, v3, Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;->mPaintWhite:Landroid/graphics/Paint;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 52
    move-object v3, v0

    iget-object v3, v3, Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;->mPaintGray:Landroid/graphics/Paint;

    const v4, -0x343435

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private generatePatternBitmap()V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 98
    move-object v0, p0

    move-object v8, v0

    invoke-virtual {v8}, Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    const/4 v9, 0x0

    if-le v8, v9, :cond_0

    move-object v8, v0

    invoke-virtual {v8}, Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    const/4 v9, 0x0

    if-gt v8, v9, :cond_1

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    move-object v8, v0

    move-object v9, v0

    invoke-virtual {v9}, Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    move-object v10, v0

    invoke-virtual {v10}, Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    iput-object v9, v8, Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 103
    new-instance v8, Landroid/graphics/Canvas;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v0

    iget-object v10, v10, Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v9, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object v1, v8

    .line 105
    new-instance v8, Landroid/graphics/Rect;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    move-object v2, v8

    .line 106
    const/4 v8, 0x1

    move v3, v8

    .line 107
    const/4 v8, 0x0

    move v4, v8

    :goto_1
    move v8, v4

    move-object v9, v0

    iget v9, v9, Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;->numRectanglesVertical:I

    if-le v8, v9, :cond_2

    goto :goto_0

    .line 109
    :cond_2
    move v8, v3

    move v5, v8

    .line 110
    const/4 v8, 0x0

    move v6, v8

    :goto_2
    move v8, v6

    move-object v9, v0

    iget v9, v9, Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;->numRectanglesHorizontal:I

    if-le v8, v9, :cond_3

    .line 122
    move v8, v3

    if-eqz v8, :cond_6

    const/4 v8, 0x0

    :goto_3
    move v3, v8

    .line 107
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 112
    :cond_3
    move-object v8, v2

    move v9, v4

    move-object v10, v0

    iget v10, v10, Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;->mRectangleSize:I

    mul-int/2addr v9, v10

    iput v9, v8, Landroid/graphics/Rect;->top:I

    .line 113
    move-object v8, v2

    move v9, v6

    move-object v10, v0

    iget v10, v10, Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;->mRectangleSize:I

    mul-int/2addr v9, v10

    iput v9, v8, Landroid/graphics/Rect;->left:I

    .line 114
    move-object v8, v2

    move-object v9, v2

    iget v9, v9, Landroid/graphics/Rect;->top:I

    move-object v10, v0

    iget v10, v10, Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;->mRectangleSize:I

    add-int/2addr v9, v10

    iput v9, v8, Landroid/graphics/Rect;->bottom:I

    .line 115
    move-object v8, v2

    move-object v9, v2

    iget v9, v9, Landroid/graphics/Rect;->left:I

    move-object v10, v0

    iget v10, v10, Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;->mRectangleSize:I

    add-int/2addr v9, v10

    iput v9, v8, Landroid/graphics/Rect;->right:I

    .line 117
    move-object v8, v1

    move-object v9, v2

    move v10, v5

    if-eqz v10, :cond_4

    move-object v10, v0

    iget-object v10, v10, Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;->mPaintWhite:Landroid/graphics/Paint;

    :goto_4
    invoke-virtual {v8, v9, v10}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 119
    move v8, v5

    if-eqz v8, :cond_5

    const/4 v8, 0x0

    :goto_5
    move v5, v8

    .line 110
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 117
    :cond_4
    move-object v10, v0

    iget-object v10, v10, Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;->mPaintGray:Landroid/graphics/Paint;

    goto :goto_4

    .line 119
    :cond_5
    const/4 v8, 0x1

    goto :goto_5

    .line 122
    :cond_6
    const/4 v8, 0x1

    goto :goto_3
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
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
    .line 57
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    check-cast v5, Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual {v6}, Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getOpacity()I
    .locals 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 62
    move-object v0, p0

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 77
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    move-object v6, v1

    invoke-super {v5, v6}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 79
    move-object v5, v1

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    move v2, v5

    .line 80
    move-object v5, v1

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    move v3, v5

    .line 82
    move-object v5, v0

    move v6, v3

    move-object v7, v0

    iget v7, v7, Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;->mRectangleSize:I

    div-int/2addr v6, v7

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    iput v6, v5, Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;->numRectanglesHorizontal:I

    .line 83
    move-object v5, v0

    move v6, v2

    move-object v7, v0

    iget v7, v7, Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;->mRectangleSize:I

    div-int/2addr v6, v7

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    iput v6, v5, Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;->numRectanglesVertical:I

    .line 85
    move-object v5, v0

    invoke-direct {v5}, Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;->generatePatternBitmap()V

    return-void
.end method

.method public setAlpha(I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 67
    move-object v0, p0

    move v1, p1

    new-instance v3, Ljava/lang/UnsupportedOperationException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Alpha is not supported by this drawwable."

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/ColorFilter;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 72
    move-object v0, p0

    move-object v1, p1

    new-instance v3, Ljava/lang/UnsupportedOperationException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "ColorFilter is not supported by this drawwable."

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
