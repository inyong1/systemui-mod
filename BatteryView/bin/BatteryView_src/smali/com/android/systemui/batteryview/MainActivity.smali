.class public Lcom/android/systemui/batteryview/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 18
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
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
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-static {v3}, LLogCatBroadcaster;->start(Landroid/content/Context;)V

    .line 14
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 15
    move-object v3, v0

    const v4, 0x7f030001

    invoke-virtual {v3, v4}, Lcom/android/systemui/batteryview/MainActivity;->setContentView(I)V

    .line 16
    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/systemui/batteryview/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    const v4, 0x1020002

    new-instance v5, Lcom/android/systemui/batteryview/BatteryPreference;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Lcom/android/systemui/batteryview/BatteryPreference;-><init>()V

    const/4 v6, 0x0

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I

    move-result v3

    return-void
.end method
