.class Lnet/margaritov/preference/colorpicker/ColorPickerPreference$SavedState$100000000;
.super Ljava/lang/Object;
.source "ColorPickerPreference.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/margaritov/preference/colorpicker/ColorPickerPreference$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000000"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lnet/margaritov/preference/colorpicker/ColorPickerPreference$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 3

    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference$SavedState$100000000;->createFromParcel(Landroid/os/Parcel;)Lnet/margaritov/preference/colorpicker/ColorPickerPreference$SavedState;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lnet/margaritov/preference/colorpicker/ColorPickerPreference$SavedState;
    .locals 7

    .prologue
    .line 333
    move-object v0, p0

    move-object v1, p1

    new-instance v3, Lnet/margaritov/preference/colorpicker/ColorPickerPreference$SavedState;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference$SavedState;-><init>(Landroid/os/Parcel;)V

    move-object v0, v3

    return-object v0
.end method

.method public bridge newArray(I)[Ljava/lang/Object;
    .locals 5

    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference$SavedState$100000000;->newArray(I)[Lnet/margaritov/preference/colorpicker/ColorPickerPreference$SavedState;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public newArray(I)[Lnet/margaritov/preference/colorpicker/ColorPickerPreference$SavedState;
    .locals 4

    .prologue
    .line 337
    move-object v0, p0

    move v1, p1

    move v3, v1

    new-array v3, v3, [Lnet/margaritov/preference/colorpicker/ColorPickerPreference$SavedState;

    move-object v0, v3

    return-object v0
.end method
