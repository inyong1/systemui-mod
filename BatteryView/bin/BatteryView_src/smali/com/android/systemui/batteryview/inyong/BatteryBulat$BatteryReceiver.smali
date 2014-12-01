.class Lcom/android/systemui/batteryview/inyong/BatteryBulat$BatteryReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BatteryBulat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/batteryview/inyong/BatteryBulat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x22
    name = "BatteryReceiver"
.end annotation


# instance fields
.field private final this$0:Lcom/android/systemui/batteryview/inyong/BatteryBulat;


# direct methods
.method public constructor <init>(Lcom/android/systemui/batteryview/inyong/BatteryBulat;)V
    .locals 5

    .prologue
    .line 131
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Landroid/content/BroadcastReceiver;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/android/systemui/batteryview/inyong/BatteryBulat$BatteryReceiver;->this$0:Lcom/android/systemui/batteryview/inyong/BatteryBulat;

    return-void
.end method

.method static access$0(Lcom/android/systemui/batteryview/inyong/BatteryBulat$BatteryReceiver;)Lcom/android/systemui/batteryview/inyong/BatteryBulat;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/android/systemui/batteryview/inyong/BatteryBulat$BatteryReceiver;->this$0:Lcom/android/systemui/batteryview/inyong/BatteryBulat;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
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
    .line 109
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v2

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 110
    move-object v6, v3

    const-string v7, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 112
    move-object v6, v0

    iget-object v6, v6, Lcom/android/systemui/batteryview/inyong/BatteryBulat$BatteryReceiver;->this$0:Lcom/android/systemui/batteryview/inyong/BatteryBulat;

    move-object v7, v2

    const-string v8, "level"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    invoke-static {v6, v7}, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->access$S1000006(Lcom/android/systemui/batteryview/inyong/BatteryBulat;I)V

    .line 113
    move-object v6, v0

    iget-object v6, v6, Lcom/android/systemui/batteryview/inyong/BatteryBulat$BatteryReceiver;->this$0:Lcom/android/systemui/batteryview/inyong/BatteryBulat;

    move-object v7, v2

    const-string v8, "plugged"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    const/4 v8, 0x0

    if-ne v7, v8, :cond_1

    const/4 v7, 0x0

    :goto_0
    invoke-static {v6, v7}, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->access$S1000005(Lcom/android/systemui/batteryview/inyong/BatteryBulat;Z)V

    .line 118
    move-object v6, v0

    iget-object v6, v6, Lcom/android/systemui/batteryview/inyong/BatteryBulat$BatteryReceiver;->this$0:Lcom/android/systemui/batteryview/inyong/BatteryBulat;

    invoke-static {v6}, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->access$L1000003(Lcom/android/systemui/batteryview/inyong/BatteryBulat;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 120
    move-object v6, v0

    iget-object v6, v6, Lcom/android/systemui/batteryview/inyong/BatteryBulat$BatteryReceiver;->this$0:Lcom/android/systemui/batteryview/inyong/BatteryBulat;

    invoke-virtual {v6}, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    move-object v4, v6

    .line 121
    move-object v6, v4

    move-object v7, v0

    iget-object v7, v7, Lcom/android/systemui/batteryview/inyong/BatteryBulat$BatteryReceiver;->this$0:Lcom/android/systemui/batteryview/inyong/BatteryBulat;

    invoke-static {v7}, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->access$L1000012(Lcom/android/systemui/batteryview/inyong/BatteryBulat;)I

    move-result v7

    move-object v8, v0

    iget-object v8, v8, Lcom/android/systemui/batteryview/inyong/BatteryBulat$BatteryReceiver;->this$0:Lcom/android/systemui/batteryview/inyong/BatteryBulat;

    invoke-virtual {v8}, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->getPaddingLeft()I

    move-result v8

    add-int/2addr v7, v8

    move-object v8, v0

    iget-object v8, v8, Lcom/android/systemui/batteryview/inyong/BatteryBulat$BatteryReceiver;->this$0:Lcom/android/systemui/batteryview/inyong/BatteryBulat;

    invoke-static {v8}, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->access$L1000011(Lcom/android/systemui/batteryview/inyong/BatteryBulat;)Z

    move-result v8

    if-eqz v8, :cond_2

    move-object v8, v0

    iget-object v8, v8, Lcom/android/systemui/batteryview/inyong/BatteryBulat$BatteryReceiver;->this$0:Lcom/android/systemui/batteryview/inyong/BatteryBulat;

    invoke-static {v8}, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->access$L1000012(Lcom/android/systemui/batteryview/inyong/BatteryBulat;)I

    move-result v8

    move-object v9, v0

    iget-object v9, v9, Lcom/android/systemui/batteryview/inyong/BatteryBulat$BatteryReceiver;->this$0:Lcom/android/systemui/batteryview/inyong/BatteryBulat;

    invoke-virtual {v9}, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->getPaddingLeft()I

    move-result v9

    add-int/2addr v8, v9

    :goto_1
    add-int/2addr v7, v8

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 123
    move-object v6, v0

    iget-object v6, v6, Lcom/android/systemui/batteryview/inyong/BatteryBulat$BatteryReceiver;->this$0:Lcom/android/systemui/batteryview/inyong/BatteryBulat;

    move-object v7, v4

    invoke-virtual {v6, v7}, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    move-object v6, v0

    iget-object v6, v6, Lcom/android/systemui/batteryview/inyong/BatteryBulat$BatteryReceiver;->this$0:Lcom/android/systemui/batteryview/inyong/BatteryBulat;

    invoke-virtual {v6}, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->invalidate()V

    .line 129
    :cond_0
    :goto_2
    return-void

    .line 113
    :cond_1
    const/4 v7, 0x1

    goto :goto_0

    .line 121
    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    .line 127
    :cond_3
    move-object v6, v3

    const-string v7, "inyong.batteryview"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 129
    move-object v6, v0

    iget-object v6, v6, Lcom/android/systemui/batteryview/inyong/BatteryBulat$BatteryReceiver;->this$0:Lcom/android/systemui/batteryview/inyong/BatteryBulat;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->updateSettings(Z)V

    goto :goto_2
.end method
