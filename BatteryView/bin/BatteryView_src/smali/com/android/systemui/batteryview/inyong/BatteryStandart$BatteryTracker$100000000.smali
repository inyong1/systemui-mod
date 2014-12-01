.class Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker$100000000;
.super Ljava/lang/Object;
.source "BatteryStandart.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000000"
.end annotation


# instance fields
.field curLevel:I

.field dummy:Landroid/content/Intent;

.field incr:I

.field saveLevel:I

.field savePlugged:I

.field private final this$0:Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker;


# direct methods
.method constructor <init>(Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker$100000000;->this$0:Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker;

    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker$100000000;->curLevel:I

    move-object v3, v0

    const/4 v4, 0x1

    iput v4, v3, Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker$100000000;->incr:I

    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker$100000000;->this$0:Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker;

    iget v4, v4, Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker;->level:I

    iput v4, v3, Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker$100000000;->saveLevel:I

    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker$100000000;->this$0:Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker;

    iget v4, v4, Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker;->plugType:I

    iput v4, v3, Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker$100000000;->savePlugged:I

    move-object v3, v0

    new-instance v4, Landroid/content/Intent;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v4, v3, Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker$100000000;->dummy:Landroid/content/Intent;

    return-void
.end method

.method static access$0(Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker$100000000;)Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker$100000000;->this$0:Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 130
    move-object v0, p0

    move-object v2, v0

    iget v2, v2, Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker$100000000;->curLevel:I

    const/4 v3, 0x0

    if-ge v2, v3, :cond_0

    .line 132
    move-object v2, v0

    iget-object v2, v2, Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker$100000000;->this$0:Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker;->testmode:Z

    .line 133
    move-object v2, v0

    iget-object v2, v2, Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker$100000000;->dummy:Landroid/content/Intent;

    const-string v3, "level"

    move-object v4, v0

    iget v4, v4, Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker$100000000;->saveLevel:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    .line 134
    move-object v2, v0

    iget-object v2, v2, Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker$100000000;->dummy:Landroid/content/Intent;

    const-string v3, "plugged"

    move-object v4, v0

    iget v4, v4, Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker$100000000;->savePlugged:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    .line 135
    move-object v2, v0

    iget-object v2, v2, Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker$100000000;->dummy:Landroid/content/Intent;

    const-string v3, "testmode"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    .line 143
    :goto_0
    move-object v2, v0

    iget-object v2, v2, Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker$100000000;->this$0:Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker;

    invoke-static {v2}, Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker;->access$0(Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker;)Lcom/android/systemui/batteryview/inyong/BatteryStandart;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker$100000000;->dummy:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 145
    move-object v2, v0

    iget-object v2, v2, Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker$100000000;->this$0:Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker;

    iget-boolean v2, v2, Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker;->testmode:Z

    if-nez v2, :cond_2

    .line 152
    :goto_1
    return-void

    .line 139
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker$100000000;->dummy:Landroid/content/Intent;

    const-string v3, "level"

    move-object v4, v0

    iget v4, v4, Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker$100000000;->curLevel:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    .line 140
    move-object v2, v0

    iget-object v2, v2, Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker$100000000;->dummy:Landroid/content/Intent;

    const-string v3, "plugged"

    move-object v4, v0

    iget v4, v4, Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker$100000000;->incr:I

    const/4 v5, 0x0

    if-le v4, v5, :cond_1

    const/4 v4, 0x1

    :goto_2
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    .line 141
    move-object v2, v0

    iget-object v2, v2, Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker$100000000;->dummy:Landroid/content/Intent;

    const-string v3, "testmode"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    goto :goto_0

    .line 140
    :cond_1
    const/4 v4, 0x0

    goto :goto_2

    .line 147
    :cond_2
    move-object v2, v0

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    iget v3, v3, Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker$100000000;->curLevel:I

    move-object v4, v0

    iget v4, v4, Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker$100000000;->incr:I

    add-int/2addr v3, v4

    iput v3, v2, Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker$100000000;->curLevel:I

    .line 148
    move-object v2, v0

    iget v2, v2, Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker$100000000;->curLevel:I

    const/16 v3, 0x64

    if-ne v2, v3, :cond_3

    .line 150
    move-object v2, v0

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    iget v3, v3, Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker$100000000;->incr:I

    const/4 v4, -0x1

    mul-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker$100000000;->incr:I

    .line 152
    :cond_3
    move-object v2, v0

    iget-object v2, v2, Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker$100000000;->this$0:Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker;

    invoke-static {v2}, Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker;->access$0(Lcom/android/systemui/batteryview/inyong/BatteryStandart$BatteryTracker;)Lcom/android/systemui/batteryview/inyong/BatteryStandart;

    move-result-object v2

    move-object v3, v0

    const/16 v4, 0xc8

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/systemui/batteryview/inyong/BatteryStandart;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v2

    goto :goto_1
.end method
