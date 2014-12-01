.class Lnet/margaritov/preference/colorpicker/ColorPickerDialog$100000000;
.super Ljava/lang/Object;
.source "ColorPickerDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/margaritov/preference/colorpicker/ColorPickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000000"
.end annotation


# instance fields
.field private final this$0:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;


# direct methods
.method constructor <init>(Lnet/margaritov/preference/colorpicker/ColorPickerDialog;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lnet/margaritov/preference/colorpicker/ColorPickerDialog$100000000;->this$0:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    return-void
.end method

.method static access$0(Lnet/margaritov/preference/colorpicker/ColorPickerDialog$100000000;)Lnet/margaritov/preference/colorpicker/ColorPickerDialog;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lnet/margaritov/preference/colorpicker/ColorPickerDialog$100000000;->this$0:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Editable;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 94
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-object v4, v4, Lnet/margaritov/preference/colorpicker/ColorPickerDialog$100000000;->this$0:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    invoke-static {v4}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->access$L1000005(Lnet/margaritov/preference/colorpicker/ColorPickerDialog;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 95
    move-object v4, v0

    iget-object v4, v4, Lnet/margaritov/preference/colorpicker/ColorPickerDialog$100000000;->this$0:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    invoke-static {v4}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->access$L1000004(Lnet/margaritov/preference/colorpicker/ColorPickerDialog;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 108
    :goto_0
    return-void

    .line 97
    :cond_0
    move-object v4, v1

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    const/4 v5, 0x5

    if-gt v4, v5, :cond_1

    move-object v4, v1

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    const/16 v5, 0xa

    if-ge v4, v5, :cond_3

    .line 99
    :cond_1
    move-object v4, v1

    :try_start_0
    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->convertToColorInt(Ljava/lang/String;)I

    move-result v4

    move v2, v4

    .line 100
    move-object v4, v0

    iget-object v4, v4, Lnet/margaritov/preference/colorpicker/ColorPickerDialog$100000000;->this$0:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->access$S1000004(Lnet/margaritov/preference/colorpicker/ColorPickerDialog;Z)V

    .line 101
    move-object v4, v0

    iget-object v4, v4, Lnet/margaritov/preference/colorpicker/ColorPickerDialog$100000000;->this$0:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    invoke-static {v4}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->access$L1000000(Lnet/margaritov/preference/colorpicker/ColorPickerDialog;)Lnet/margaritov/preference/colorpicker/ColorPickerView;

    move-result-object v4

    move v5, v2

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lnet/margaritov/preference/colorpicker/ColorPickerView;->setColor(IZ)V

    .line 102
    move-object v4, v0

    iget-object v4, v4, Lnet/margaritov/preference/colorpicker/ColorPickerDialog$100000000;->this$0:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->access$S1000004(Lnet/margaritov/preference/colorpicker/ColorPickerDialog;Z)V

    .line 103
    move-object v4, v0

    iget-object v4, v4, Lnet/margaritov/preference/colorpicker/ColorPickerDialog$100000000;->this$0:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    invoke-static {v4}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->access$L1000003(Lnet/margaritov/preference/colorpicker/ColorPickerDialog;)Landroid/widget/EditText;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lnet/margaritov/preference/colorpicker/ColorPickerDialog$100000000;->this$0:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    invoke-static {v5}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->access$L1000006(Lnet/margaritov/preference/colorpicker/ColorPickerDialog;)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setTextColor(Landroid/content/res/ColorStateList;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :cond_2
    :goto_1
    goto :goto_0

    .line 103
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 105
    move-object v4, v0

    iget-object v4, v4, Lnet/margaritov/preference/colorpicker/ColorPickerDialog$100000000;->this$0:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    invoke-static {v4}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->access$L1000003(Lnet/margaritov/preference/colorpicker/ColorPickerDialog;)Landroid/widget/EditText;

    move-result-object v4

    const/high16 v5, -0x10000

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setTextColor(I)V

    goto :goto_1

    .line 108
    :cond_3
    move-object v4, v0

    iget-object v4, v4, Lnet/margaritov/preference/colorpicker/ColorPickerDialog$100000000;->this$0:Lnet/margaritov/preference/colorpicker/ColorPickerDialog;

    invoke-static {v4}, Lnet/margaritov/preference/colorpicker/ColorPickerDialog;->access$L1000003(Lnet/margaritov/preference/colorpicker/ColorPickerDialog;)Landroid/widget/EditText;

    move-result-object v4

    const/high16 v5, -0x10000

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setTextColor(I)V

    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "III)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "III)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    return-void
.end method
