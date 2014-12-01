.class Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker;
.super Landroid/content/BroadcastReceiver;
.source "BatteryStandart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/batteryview/inyong/BatteryStandart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x22
    name = "BatteryTracker"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker$100000000;
    }
.end annotation


# static fields
.field public static final UNKNOWN_LEVEL:I = -0x1


# instance fields
.field health:I

.field level:I

.field percentStr:Ljava/lang/String;

.field plugType:I

.field plugged:Z

.field status:I

.field technology:Ljava/lang/String;

.field temperature:I

.field testmode:Z

.field private final this$0:Lcom/android/systemui/batteryview/inyong/BatteryStandart;

.field voltage:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/batteryview/inyong/BatteryStandart;)V
    .locals 5

    .prologue
    .line 160
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Landroid/content/BroadcastReceiver;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker;->this$0:Lcom/android/systemui/batteryview/inyong/BatteryStandart;

    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker;->level:I

    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker;->testmode:Z

    return-void
.end method

.method static access$0(Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker;)Lcom/android/systemui/batteryview/inyong/BatteryStandart;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker;->this$0:Lcom/android/systemui/batteryview/inyong/BatteryStandart;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 95
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v2

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 96
    move-object v5, v3

    const-string v6, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 98
    move-object v5, v0

    iget-boolean v5, v5, Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker;->testmode:Z

    if-eqz v5, :cond_0

    move-object v5, v2

    const-string v6, "testmode"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_0

    .line 158
    :goto_0
    return-void

    .line 100
    :cond_0
    move-object v5, v0

    const/high16 v6, 0x42c80000

    move-object v7, v2

    const-string v8, "level"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    move-object v7, v2

    const-string v8, "scale"

    const/16 v9, 0x64

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v5, Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker;->level:I

    .line 104
    move-object v5, v0

    move-object v6, v2

    const-string v7, "plugged"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, v5, Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker;->plugType:I

    .line 105
    move-object v5, v0

    move-object v6, v0

    iget v6, v6, Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker;->plugType:I

    const/4 v7, 0x0

    if-ne v6, v7, :cond_2

    const/4 v6, 0x0

    :goto_1
    iput-boolean v6, v5, Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker;->plugged:Z

    .line 106
    move-object v5, v0

    move-object v6, v2

    const-string v7, "health"

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, v5, Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker;->health:I

    .line 108
    move-object v5, v0

    move-object v6, v2

    const-string v7, "status"

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, v5, Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker;->status:I

    .line 110
    move-object v5, v0

    move-object v6, v2

    const-string v7, "technology"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker;->technology:Ljava/lang/String;

    .line 111
    move-object v5, v0

    move-object v6, v2

    const-string v7, "voltage"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, v5, Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker;->voltage:I

    .line 112
    move-object v5, v0

    move-object v6, v2

    const-string v7, "temperature"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, v5, Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker;->temperature:I

    .line 116
    move-object v5, v0

    iget-object v5, v5, Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker;->this$0:Lcom/android/systemui/batteryview/inyong/BatteryStandart;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker;->this$0:Lcom/android/systemui/batteryview/inyong/BatteryStandart;

    iget-boolean v6, v6, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->mIsQuickSettings:Z

    invoke-virtual {v5, v6}, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->updateSettings(Z)V

    .line 158
    :cond_1
    :goto_2
    goto :goto_0

    .line 105
    :cond_2
    const/4 v6, 0x1

    goto :goto_1

    .line 118
    :cond_3
    move-object v5, v3

    const-string v6, "com.android.systemui.BATTERY_LEVEL_TEST"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 120
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker;->testmode:Z

    .line 121
    move-object v5, v0

    iget-object v5, v5, Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker;->this$0:Lcom/android/systemui/batteryview/inyong/BatteryStandart;

    new-instance v6, Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker$100000000;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    invoke-direct {v7, v8}, Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker$100000000;-><init>(Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker;)V

    invoke-virtual {v5, v6}, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->post(Ljava/lang/Runnable;)Z

    move-result v5

    goto :goto_2

    .line 156
    :cond_4
    move-object v5, v3

    const-string v6, "inyong.batteryview"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 158
    move-object v5, v0

    iget-object v5, v5, Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker;->this$0:Lcom/android/systemui/batteryview/inyong/BatteryStandart;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->updateSettings(Z)V

    goto :goto_2
.end method
