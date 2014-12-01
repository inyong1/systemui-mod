.class public Lnet/margaritov/preference/colorpicker/ColorPickerDialog;
.super Landroid/app/Dialog;
.source "ColorPickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lnet/margaritov/preference/colorpicker/ColorPickerView$OnColorChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/margaritov/preference/colorpicker/ColorPickerDialog$OnColorChangedListener;,
        Lnet/margaritov/preference/colorpicker/ColorPickerDialog$100000000;
    }
.end annotation


# instance fields
.field private mColorPicker:Lnet/margaritov/preference/colorpicker/ColorPickerView;

.field private mHexDefaultTextColor:Landroid/content/res/ColorStateList;

.field private mHexInternalTextChange:Z

.field private mHexVal:Landroid/widget/EditText;

.field private mHexValueEnabled:Z

.field private mListener:Lnet/margaritov/preference/colorpicker/ColorPickerDialog$OnColorChangedListener;

.field private mNewColor:Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

.field private mOldColor:Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 6

    .prologue
    .line 58
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mHexValueEnabled:Z

    .line 60
    move-object v4, v0

    move v5, v2

    invoke-direct {v4, v5}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->init(I)V

    return-void
.end method

.method static synthetic access$L1000000(Lnet/margaritov/preference/colorpicker/ColorPickerDialog;)Lnet/margaritov/preference/colorpicker/ColorPickerView;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mColorPicker:Lnet/margaritov/preference/colorpicker/ColorPickerView;

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$L1000003(Lnet/margaritov/preference/colorpicker/ColorPickerDialog;)Landroid/widget/EditText;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$L1000004(Lnet/margaritov/preference/colorpicker/ColorPickerDialog;)Z
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-boolean v3, v3, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mHexInternalTextChange:Z

    move v0, v3

    return v0
.end method

.method static synthetic access$L1000005(Lnet/margaritov/preference/colorpicker/ColorPickerDialog;)Z
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-boolean v3, v3, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mHexValueEnabled:Z

    move v0, v3

    return v0
.end method

.method static synthetic access$L1000006(Lnet/margaritov/preference/colorpicker/ColorPickerDialog;)Landroid/content/res/ColorStateList;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mHexDefaultTextColor:Landroid/content/res/ColorStateList;

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$S1000000(Lnet/margaritov/preference/colorpicker/ColorPickerDialog;Lnet/margaritov/preference/colorpicker/ColorPickerView;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mColorPicker:Lnet/margaritov/preference/colorpicker/ColorPickerView;

    return-void
.end method

.method static synthetic access$S1000003(Lnet/margaritov/preference/colorpicker/ColorPickerDialog;Landroid/widget/EditText;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    return-void
.end method

.method static synthetic access$S1000004(Lnet/margaritov/preference/colorpicker/ColorPickerDialog;Z)V
    .locals 6

    move-object v0, p0

    move v1, p1

    move-object v4, v0

    move v5, v1

    iput-boolean v5, v4, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mHexInternalTextChange:Z

    return-void
.end method

.method static synthetic access$S1000005(Lnet/margaritov/preference/colorpicker/ColorPickerDialog;Z)V
    .locals 6

    move-object v0, p0

    move v1, p1

    move-object v4, v0

    move v5, v1

    iput-boolean v5, v4, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mHexValueEnabled:Z

    return-void
.end method

.method static synthetic access$S1000006(Lnet/margaritov/preference/colorpicker/ColorPickerDialog;Landroid/content/res/ColorStateList;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mHexDefaultTextColor:Landroid/content/res/ColorStateList;

    return-void
.end method

.method private init(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 65
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    invoke-virtual {v3}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/Window;->setFormat(I)V

    .line 67
    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->setUp(I)V

    return-void
.end method

.method private setUp(I)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 73
    move-object v0, p0

    move v1, p1

    move-object v5, v0

    invoke-virtual {v5}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    move-object v2, v5

    .line 75
    move-object v5, v2

    const/high16 v6, 0x7f030000

    const/4 v7, 0x0

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    move-object v3, v5

    .line 77
    move-object v5, v0

    move-object v6, v3

    invoke-virtual {v5, v6}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->setContentView(Landroid/view/View;)V

    .line 79
    move-object v5, v0

    const v6, 0x7f07000b

    invoke-virtual {v5, v6}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->setTitle(I)V

    .line 81
    move-object v5, v0

    move-object v6, v3

    const/high16 v7, 0x7f080000

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lnet/margaritov/preference/colorpicker/ColorPickerView;

    iput-object v6, v5, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mColorPicker:Lnet/margaritov/preference/colorpicker/ColorPickerView;

    .line 82
    move-object v5, v0

    move-object v6, v3

    const v7, 0x7f080003

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

    iput-object v6, v5, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mOldColor:Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

    .line 83
    move-object v5, v0

    move-object v6, v3

    const v7, 0x7f080004

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

    iput-object v6, v5, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mNewColor:Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

    .line 85
    move-object v5, v0

    move-object v6, v3

    const v7, 0x7f080002

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, v5, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    .line 86
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, v5, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mHexDefaultTextColor:Landroid/content/res/ColorStateList;

    .line 87
    move-object v5, v0

    iget-object v5, v5, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    new-instance v6, Lnet/margaritov/preference/colorpicker/ColorPickerDialog$100000000;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    invoke-direct {v7, v8}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog$100000000;-><init>(Lnet/margaritov/preference/colorpicker/ColorPickerDialog;)V

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 112
    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->setHexValueEnabled(Z)V

    .line 114
    move-object v5, v0

    iget-object v5, v5, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mOldColor:Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

    invoke-virtual {v5}, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    move-object v6, v0

    iget-object v6, v6, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mColorPicker:Lnet/margaritov/preference/colorpicker/ColorPickerView;

    invoke-virtual {v6}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->getDrawingOffset()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    const/4 v7, 0x0

    move-object v8, v0

    iget-object v8, v8, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mColorPicker:Lnet/margaritov/preference/colorpicker/ColorPickerView;

    invoke-virtual {v8}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->getDrawingOffset()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 121
    move-object v5, v0

    iget-object v5, v5, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mOldColor:Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

    move-object v6, v0

    invoke-virtual {v5, v6}, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    move-object v5, v0

    iget-object v5, v5, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mNewColor:Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

    move-object v6, v0

    invoke-virtual {v5, v6}, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    move-object v5, v0

    iget-object v5, v5, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mColorPicker:Lnet/margaritov/preference/colorpicker/ColorPickerView;

    move-object v6, v0

    invoke-virtual {v5, v6}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->setOnColorChangedListener(Lnet/margaritov/preference/colorpicker/ColorPickerView$OnColorChangedListener;)V

    .line 124
    move-object v5, v0

    iget-object v5, v5, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mOldColor:Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

    move v6, v1

    invoke-virtual {v5, v6}, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->setColor(I)V

    .line 125
    move-object v5, v0

    iget-object v5, v5, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mColorPicker:Lnet/margaritov/preference/colorpicker/ColorPickerView;

    move v6, v1

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->setColor(IZ)V

    return-void
.end method

.method private updateHexLengthFilter()V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 161
    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->getAlphaSliderVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 162
    move-object v2, v0

    iget-object v2, v2, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/text/InputFilter;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const/4 v5, 0x0

    new-instance v6, Landroid/text/InputFilter$LengthFilter;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const/16 v8, 0x9

    invoke-direct {v7, v8}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v6, v4, v5

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 164
    :goto_0
    return-void

    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/text/InputFilter;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const/4 v5, 0x0

    new-instance v6, Landroid/text/InputFilter$LengthFilter;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const/4 v8, 0x7

    invoke-direct {v7, v8}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v6, v4, v5

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0
.end method

.method private updateHexValue(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 168
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-boolean v3, v3, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mHexInternalTextChange:Z

    if-eqz v3, :cond_0

    .line 175
    :goto_0
    return-void

    .line 170
    :cond_0
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mHexInternalTextChange:Z

    .line 171
    move-object v3, v0

    invoke-virtual {v3}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->getAlphaSliderVisible()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 172
    move-object v3, v0

    iget-object v3, v3, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    move v4, v1

    invoke-static {v4}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->convertToARGB(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 175
    :goto_1
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mHexInternalTextChange:Z

    goto :goto_0

    .line 174
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    move v4, v1

    invoke-static {v4}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->convertToRGB(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method


# virtual methods
.method public getAlphaSliderVisible()Z
    .locals 3

    .prologue
    .line 187
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mColorPicker:Lnet/margaritov/preference/colorpicker/ColorPickerView;

    invoke-virtual {v2}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->getAlphaSliderVisible()Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public getColor()I
    .locals 3

    .prologue
    .line 200
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mColorPicker:Lnet/margaritov/preference/colorpicker/ColorPickerView;

    invoke-virtual {v2}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->getColor()I

    move-result v2

    move v0, v2

    return v0
.end method

.method public getHexValueEnabled()Z
    .locals 3

    .prologue
    .line 157
    move-object v0, p0

    move-object v2, v0

    iget-boolean v2, v2, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mHexValueEnabled:Z

    move v0, v2

    return v0
.end method

.method public onClick(Landroid/view/View;)V
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
    .line 205
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f080004

    if-ne v3, v4, :cond_0

    .line 206
    move-object v3, v0

    iget-object v3, v3, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mListener:Lnet/margaritov/preference/colorpicker/ColorPickerDialog$OnColorChangedListener;

    if-eqz v3, :cond_0

    .line 207
    move-object v3, v0

    iget-object v3, v3, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mListener:Lnet/margaritov/preference/colorpicker/ColorPickerDialog$OnColorChangedListener;

    move-object v4, v0

    iget-object v4, v4, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mNewColor:Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

    invoke-virtual {v4}, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->getColor()I

    move-result v4

    invoke-interface {v3, v4}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog$OnColorChangedListener;->onColorChanged(I)V

    .line 210
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->dismiss()V

    return-void
.end method

.method public onColorChanged(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 132
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-object v3, v3, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mNewColor:Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

    move v4, v1

    invoke-virtual {v3, v4}, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->setColor(I)V

    .line 134
    move-object v3, v0

    iget-boolean v3, v3, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mHexValueEnabled:Z

    if-eqz v3, :cond_0

    .line 135
    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->updateHexValue(I)V

    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
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

    move-object v4, v1

    invoke-super {v3, v4}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 224
    move-object v3, v0

    iget-object v3, v3, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mOldColor:Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

    move-object v4, v1

    const-string v5, "old_color"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->setColor(I)V

    .line 225
    move-object v3, v0

    iget-object v3, v3, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mColorPicker:Lnet/margaritov/preference/colorpicker/ColorPickerView;

    move-object v4, v1

    const-string v5, "new_color"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->setColor(IZ)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 6
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 215
    move-object v0, p0

    move-object v3, v0

    invoke-super {v3}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v3

    move-object v1, v3

    .line 216
    move-object v3, v1

    const-string v4, "old_color"

    move-object v5, v0

    iget-object v5, v5, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mOldColor:Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

    invoke-virtual {v5}, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->getColor()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 217
    move-object v3, v1

    const-string v4, "new_color"

    move-object v5, v0

    iget-object v5, v5, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mNewColor:Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;

    invoke-virtual {v5}, Lnet/margaritov/preference/colorpicker/ColorPickerPanelView;->getColor()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 218
    move-object v3, v1

    move-object v0, v3

    return-object v0
.end method

.method public setAlphaSliderVisible(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .prologue
    .line 179
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-object v3, v3, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mColorPicker:Lnet/margaritov/preference/colorpicker/ColorPickerView;

    move v4, v1

    invoke-virtual {v3, v4}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->setAlphaSliderVisible(Z)V

    .line 180
    move-object v3, v0

    iget-boolean v3, v3, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mHexValueEnabled:Z

    if-eqz v3, :cond_0

    .line 181
    move-object v3, v0

    invoke-direct {v3}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->updateHexLengthFilter()V

    .line 182
    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v4}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->getColor()I

    move-result v4

    invoke-direct {v3, v4}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->updateHexValue(I)V

    :cond_0
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
    .line 146
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    iput-boolean v4, v3, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mHexValueEnabled:Z

    .line 147
    move v3, v1

    if-eqz v3, :cond_0

    .line 148
    move-object v3, v0

    iget-object v3, v3, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 149
    move-object v3, v0

    invoke-direct {v3}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->updateHexLengthFilter()V

    .line 150
    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v4}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->getColor()I

    move-result v4

    invoke-direct {v3, v4}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->updateHexValue(I)V

    .line 153
    :goto_0
    return-void

    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_0
.end method

.method public setOnColorChangedListener(Lnet/margaritov/preference/colorpicker/ColorPickerDialog$OnColorChangedListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/margaritov/preference/colorpicker/ColorPickerDialog$OnColorChangedListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 196
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->mListener:Lnet/margaritov/preference/colorpicker/ColorPickerDialog$OnColorChangedListener;

    return-void
.end method
