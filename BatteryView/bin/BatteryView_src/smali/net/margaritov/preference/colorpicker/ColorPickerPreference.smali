.class public Lnet/margaritov/preference/colorpicker/ColorPickerPreference;
.super Landroid/preference/Preference;
.source "ColorPickerPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lnet/margaritov/preference/colorpicker/ColorPickerDialog$OnColorChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/margaritov/preference/colorpicker/ColorPickerPreference$SavedState;
    }
.end annotation


# instance fields
.field private mAlphaSliderEnabled:Z

.field private mDensity:F

.field mDialog:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

.field private mHexValueEnabled:Z

.field private mValue:I

.field mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 52
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    move-object v3, v0

    const/high16 v4, -0x1000000

    iput v4, v3, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mValue:I

    move-object v3, v0

    const/4 v4, 0x0

    int-to-float v4, v4

    iput v4, v3, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mDensity:F

    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mAlphaSliderEnabled:Z

    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mHexValueEnabled:Z

    .line 53
    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x0

    check-cast v5, Landroid/util/AttributeSet;

    invoke-direct {v3, v4, v5}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    .line 57
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v4, v0

    const/high16 v5, -0x1000000

    iput v5, v4, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mValue:I

    move-object v4, v0

    const/4 v5, 0x0

    int-to-float v5, v5

    iput v5, v4, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mDensity:F

    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mAlphaSliderEnabled:Z

    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mHexValueEnabled:Z

    .line 58
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    .prologue
    .line 62
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    invoke-direct {v5, v6, v7, v8}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    move-object v5, v0

    const/high16 v6, -0x1000000

    iput v6, v5, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mValue:I

    move-object v5, v0

    const/4 v6, 0x0

    int-to-float v6, v6

    iput v6, v5, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mDensity:F

    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mAlphaSliderEnabled:Z

    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mHexValueEnabled:Z

    .line 63
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static convertToARGB(I)Ljava/lang/String;
    .locals 12

    .prologue
    .line 203
    move v0, p0

    move v6, v0

    invoke-static {v6}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    move-object v1, v6

    .line 204
    move v6, v0

    invoke-static {v6}, Landroid/graphics/Color;->red(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    .line 205
    move v6, v0

    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 206
    move v6, v0

    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 208
    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 209
    new-instance v6, Ljava/lang/StringBuffer;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v1, v6

    .line 212
    :cond_0
    move-object v6, v2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 213
    new-instance v6, Ljava/lang/StringBuffer;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    .line 216
    :cond_1
    move-object v6, v3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 217
    new-instance v6, Ljava/lang/StringBuffer;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    move-object v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 220
    :cond_2
    move-object v6, v4

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    .line 221
    new-instance v6, Ljava/lang/StringBuffer;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    move-object v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 224
    :cond_3
    new-instance v6, Ljava/lang/StringBuffer;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v7, Ljava/lang/StringBuffer;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v8, Ljava/lang/StringBuffer;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v9, Ljava/lang/StringBuffer;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "#"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    move-object v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    move-object v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    move-object v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    move-object v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    return-object v0
.end method

.method public static convertToColorInt(Ljava/lang/String;)I
    .locals 12

    .prologue
    .line 262
    move-object v0, p0

    move-object v6, v0

    const-string v7, "#"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 263
    move-object v6, v0

    const-string v7, "#"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .line 266
    :cond_0
    const/4 v6, -0x1

    move v1, v6

    const/4 v6, -0x1

    move v2, v6

    const/4 v6, -0x1

    move v3, v6

    const/4 v6, -0x1

    move v4, v6

    .line 268
    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_1

    .line 269
    move-object v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x2

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    move v1, v6

    .line 270
    move-object v6, v0

    const/4 v7, 0x2

    const/4 v8, 0x4

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    move v2, v6

    .line 271
    move-object v6, v0

    const/4 v7, 0x4

    const/4 v8, 0x6

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    move v3, v6

    .line 272
    move-object v6, v0

    const/4 v7, 0x6

    const/16 v8, 0x8

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    move v4, v6

    .line 283
    :goto_0
    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-static {v6, v7, v8, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    move v0, v6

    return v0

    .line 274
    :cond_1
    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x6

    if-ne v6, v7, :cond_2

    .line 275
    const/16 v6, 0xff

    move v1, v6

    .line 276
    move-object v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x2

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    move v2, v6

    .line 277
    move-object v6, v0

    const/4 v7, 0x2

    const/4 v8, 0x4

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    move v3, v6

    .line 278
    move-object v6, v0

    const/4 v7, 0x4

    const/4 v8, 0x6

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    move v4, v6

    goto :goto_0

    .line 281
    :cond_2
    new-instance v6, Ljava/lang/NumberFormatException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    new-instance v8, Ljava/lang/StringBuffer;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v9, Ljava/lang/StringBuffer;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "string "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    move-object v10, v0

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "did not meet length requirements"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public static convertToRGB(I)Ljava/lang/String;
    .locals 10

    .prologue
    .line 235
    move v0, p0

    move v5, v0

    invoke-static {v5}, Landroid/graphics/Color;->red(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 236
    move v5, v0

    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 237
    move v5, v0

    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 239
    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 240
    new-instance v5, Ljava/lang/StringBuffer;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 243
    :cond_0
    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 244
    new-instance v5, Ljava/lang/StringBuffer;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 247
    :cond_1
    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 248
    new-instance v5, Ljava/lang/StringBuffer;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 251
    :cond_2
    new-instance v5, Ljava/lang/StringBuffer;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v6, Ljava/lang/StringBuffer;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v7, Ljava/lang/StringBuffer;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "#"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    return-object v0
.end method

.method private getPreviewBitmap()Landroid/graphics/Bitmap;
    .locals 14

    .prologue
    .line 116
    move-object v0, p0

    move-object v10, v0

    iget v10, v10, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mDensity:F

    const/16 v11, 0x1f

    int-to-float v11, v11

    mul-float/2addr v10, v11

    float-to-int v10, v10

    move v1, v10

    .line 117
    move-object v10, v0

    iget v10, v10, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mValue:I

    move v2, v10

    .line 118
    move v10, v1

    move v11, v1

    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v11, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    move-object v3, v10

    .line 119
    move-object v10, v3

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    move v4, v10

    .line 120
    move-object v10, v3

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    move v5, v10

    .line 121
    move v10, v2

    move v6, v10

    .line 122
    const/4 v10, 0x0

    move v7, v10

    :goto_0
    move v10, v7

    move v11, v4

    if-lt v10, v11, :cond_0

    .line 132
    move-object v10, v3

    move-object v0, v10

    return-object v0

    .line 123
    :cond_0
    move v10, v7

    move v8, v10

    :goto_1
    move v10, v8

    move v11, v5

    if-lt v10, v11, :cond_1

    .line 122
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 124
    :cond_1
    move v10, v7

    const/4 v11, 0x1

    if-le v10, v11, :cond_2

    move v10, v8

    const/4 v11, 0x1

    if-le v10, v11, :cond_2

    move v10, v7

    move v11, v4

    const/4 v12, 0x2

    add-int/lit8 v11, v11, -0x2

    if-ge v10, v11, :cond_2

    move v10, v8

    move v11, v5

    const/4 v12, 0x2

    add-int/lit8 v11, v11, -0x2

    if-lt v10, v11, :cond_4

    :cond_2
    const v10, -0x777778

    :goto_2
    move v6, v10

    .line 125
    move-object v10, v3

    move v11, v7

    move v12, v8

    move v13, v6

    invoke-virtual {v10, v11, v12, v13}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 126
    move v10, v7

    move v11, v8

    if-eq v10, v11, :cond_3

    .line 127
    move-object v10, v3

    move v11, v8

    move v12, v7

    move v13, v6

    invoke-virtual {v10, v11, v12, v13}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 123
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 124
    :cond_4
    move v10, v2

    goto :goto_2
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            ")V"
        }
    .end annotation

    .prologue
    .line 77
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v5}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    iput v5, v4, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mDensity:F

    .line 78
    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v4, v5}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 79
    move-object v4, v2

    if-eqz v4, :cond_0

    .line 80
    move-object v4, v0

    move-object v5, v2

    const/4 v6, 0x0

    check-cast v6, Ljava/lang/String;

    const-string v7, "alphaSlider"

    const/4 v8, 0x0

    invoke-interface {v5, v6, v7, v8}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, v4, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mAlphaSliderEnabled:Z

    .line 81
    move-object v4, v0

    move-object v5, v2

    const/4 v6, 0x0

    check-cast v6, Ljava/lang/String;

    const-string v7, "hexValue"

    const/4 v8, 0x0

    invoke-interface {v5, v6, v7, v8}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, v4, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mHexValueEnabled:Z

    :cond_0
    return-void
.end method

.method private setPreviewColor()V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 93
    move-object v0, p0

    move-object v5, v0

    iget-object v5, v5, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mView:Landroid/view/View;

    if-nez v5, :cond_0

    .line 112
    :goto_0
    return-void

    .line 94
    :cond_0
    new-instance v5, Landroid/widget/ImageView;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    invoke-virtual {v7}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object v1, v5

    .line 95
    move-object v5, v0

    iget-object v5, v5, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mView:Landroid/view/View;

    const v6, 0x1020018

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    move-object v2, v5

    .line 96
    move-object v5, v2

    if-nez v5, :cond_1

    goto :goto_0

    .line 97
    :cond_1
    move-object v5, v2

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 98
    move-object v5, v2

    move-object v6, v2

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v6

    move-object v7, v2

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v7

    move-object v8, v0

    iget v8, v8, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mDensity:F

    const/16 v9, 0x8

    int-to-float v9, v9

    mul-float/2addr v8, v9

    float-to-int v8, v8

    move-object v9, v2

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 105
    move-object v5, v2

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    move v3, v5

    .line 106
    move v5, v3

    const/4 v6, 0x0

    if-le v5, v6, :cond_2

    .line 107
    move-object v5, v2

    const/4 v6, 0x0

    move v7, v3

    invoke-virtual {v5, v6, v7}, Landroid/widget/LinearLayout;->removeViews(II)V

    .line 109
    :cond_2
    move-object v5, v2

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 110
    move-object v5, v2

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setMinimumWidth(I)V

    .line 111
    move-object v5, v1

    new-instance v6, Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x5

    int-to-float v8, v8

    move-object v9, v0

    iget v9, v9, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mDensity:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-direct {v7, v8}, Lnet/margaritov/preference/colorpicker/AlphaPatternDrawable;-><init>(I)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 112
    move-object v5, v1

    move-object v6, v0

    invoke-direct {v6}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->getPreviewBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method


# virtual methods
.method public getValue()I
    .locals 3

    .prologue
    .line 150
    move-object v0, p0

    move-object v2, v0

    iget v2, v2, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mValue:I

    move v0, v2

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 87
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 88
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mView:Landroid/view/View;

    .line 89
    move-object v3, v0

    invoke-direct {v3}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->setPreviewColor()V

    return-void
.end method

.method public onColorChanged(I)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 137
    move-object v0, p0

    move v1, p1

    move-object v4, v0

    invoke-virtual {v4}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->isPersistent()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 138
    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->persistInt(I)Z

    move-result v4

    .line 140
    :cond_0
    move-object v4, v0

    move v5, v1

    iput v5, v4, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mValue:I

    .line 141
    move-object v4, v0

    invoke-direct {v4}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->setPreviewColor()V

    .line 143
    move-object v4, v0

    :try_start_0
    invoke-virtual {v4}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->getOnPreferenceChangeListener()Landroid/preference/Preference$OnPreferenceChangeListener;

    move-result-object v4

    move-object v5, v0

    move v6, v1

    new-instance v7, Ljava/lang/Integer;

    move v9, v6

    move-object v10, v7

    move-object v6, v10

    move v7, v9

    move-object v8, v10

    move v9, v7

    move-object v10, v8

    move-object v7, v10

    move v8, v9

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v4, v5, v6}, Landroid/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    :goto_0
    return-void

    :catch_0
    move-exception v4

    move-object v2, v4

    goto :goto_0
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 9
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 68
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v1

    move v5, v2

    const/high16 v6, -0x1000000

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    new-instance v5, Ljava/lang/Integer;

    move v7, v4

    move-object v8, v5

    move-object v4, v8

    move v5, v7

    move-object v6, v8

    move v7, v5

    move-object v8, v6

    move-object v5, v8

    move v6, v7

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    move-object v0, v4

    return-object v0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5

    .prologue
    .line 162
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    const/4 v4, 0x0

    check-cast v4, Landroid/os/Bundle;

    invoke-virtual {v3, v4}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->showDialog(Landroid/os/Bundle;)V

    .line 163
    const/4 v3, 0x0

    move v0, v3

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcelable;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 300
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    if-eqz v4, :cond_0

    move-object v4, v1

    instance-of v4, v4, Lnet/margaritov/preference/colorpicker/ColorPickerPreference$SavedState;

    if-nez v4, :cond_1

    .line 302
    :cond_0
    move-object v4, v0

    move-object v5, v1

    invoke-super {v4, v5}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 308
    :goto_0
    return-void

    .line 306
    :cond_1
    move-object v4, v1

    check-cast v4, Lnet/margaritov/preference/colorpicker/ColorPickerPreference$SavedState;

    move-object v2, v4

    .line 307
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v5}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v5

    invoke-super {v4, v5}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 308
    move-object v4, v0

    move-object v5, v2

    iget-object v5, v5, Lnet/margaritov/preference/colorpicker/ColorPickerPreference$SavedState;->dialogBundle:Landroid/os/Bundle;

    invoke-virtual {v4, v5}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->showDialog(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 8
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 288
    move-object v0, p0

    move-object v4, v0

    invoke-super {v4}, Landroid/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v4

    move-object v1, v4

    .line 289
    move-object v4, v0

    iget-object v4, v4, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mDialog:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mDialog:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    invoke-virtual {v4}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->isShowing()Z

    move-result v4

    if-nez v4, :cond_1

    .line 290
    :cond_0
    move-object v4, v1

    move-object v0, v4

    .line 295
    :goto_0
    return-object v0

    .line 293
    :cond_1
    new-instance v4, Lnet/margaritov/preference/colorpicker/ColorPickerPreference$SavedState;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    move-object v2, v4

    .line 294
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mDialog:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    invoke-virtual {v5}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v5

    iput-object v5, v4, Lnet/margaritov/preference/colorpicker/ColorPickerPreference$SavedState;->dialogBundle:Landroid/os/Bundle;

    .line 295
    move-object v4, v2

    move-object v0, v4

    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 73
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, v0

    move v5, v1

    if-eqz v5, :cond_0

    move-object v5, v0

    move-object v6, v0

    iget v6, v6, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mValue:I

    invoke-virtual {v5, v6}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->getPersistedInt(I)I

    move-result v5

    :goto_0
    invoke-virtual {v4, v5}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->onColorChanged(I)V

    return-void

    :cond_0
    move-object v5, v2

    check-cast v5, Ljava/lang/Integer;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_0
.end method

.method public setAlphaSliderEnabled(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .prologue
    .line 186
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    iput-boolean v4, v3, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mAlphaSliderEnabled:Z

    return-void
.end method

.method public setHexValueEnabled(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .prologue
    .line 194
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    iput-boolean v4, v3, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mHexValueEnabled:Z

    return-void
.end method

.method public setValue(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 154
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    invoke-virtual {v3}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->isPersistent()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 155
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->persistInt(I)Z

    move-result v3

    .line 157
    :cond_0
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mValue:I

    .line 158
    move-object v3, v0

    invoke-direct {v3}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->setPreviewColor()V

    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 167
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    new-instance v4, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    invoke-virtual {v6}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    move-object v7, v0

    iget v7, v7, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mValue:I

    invoke-direct {v5, v6, v7}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;-><init>(Landroid/content/Context;I)V

    iput-object v4, v3, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mDialog:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    .line 168
    move-object v3, v0

    iget-object v3, v3, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mDialog:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    move-object v4, v0

    invoke-virtual {v3, v4}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->setOnColorChangedListener(Lnet/margaritov/preference/colorpicker/ColorPickerDialog$OnColorChangedListener;)V

    .line 169
    move-object v3, v0

    iget-boolean v3, v3, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mAlphaSliderEnabled:Z

    if-eqz v3, :cond_0

    .line 170
    move-object v3, v0

    iget-object v3, v3, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mDialog:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->setAlphaSliderVisible(Z)V

    .line 172
    :cond_0
    move-object v3, v0

    iget-boolean v3, v3, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mHexValueEnabled:Z

    if-eqz v3, :cond_1

    .line 173
    move-object v3, v0

    iget-object v3, v3, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mDialog:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->setHexValueEnabled(Z)V

    .line 175
    :cond_1
    move-object v3, v1

    if-eqz v3, :cond_2

    .line 176
    move-object v3, v0

    iget-object v3, v3, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mDialog:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 178
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->mDialog:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    invoke-virtual {v3}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->show()V

    return-void
.end method
