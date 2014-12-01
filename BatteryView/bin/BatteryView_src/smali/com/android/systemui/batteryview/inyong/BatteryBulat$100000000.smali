.class Lcom/android/systemui/batteryview/inyong/BatteryBulat$100000000;
.super Ljava/lang/Object;
.source "BatteryBulat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/batteryview/inyong/BatteryBulat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000000"
.end annotation


# instance fields
.field private final this$0:Lcom/android/systemui/batteryview/inyong/BatteryBulat;


# direct methods
.method constructor <init>(Lcom/android/systemui/batteryview/inyong/BatteryBulat;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/android/systemui/batteryview/inyong/BatteryBulat$100000000;->this$0:Lcom/android/systemui/batteryview/inyong/BatteryBulat;

    return-void
.end method

.method static access$0(Lcom/android/systemui/batteryview/inyong/BatteryBulat$100000000;)Lcom/android/systemui/batteryview/inyong/BatteryBulat;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/android/systemui/batteryview/inyong/BatteryBulat$100000000;->this$0:Lcom/android/systemui/batteryview/inyong/BatteryBulat;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 95
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/android/systemui/batteryview/inyong/BatteryBulat$100000000;->this$0:Lcom/android/systemui/batteryview/inyong/BatteryBulat;

    invoke-static {v2}, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->access$L1000003(Lcom/android/systemui/batteryview/inyong/BatteryBulat;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/android/systemui/batteryview/inyong/BatteryBulat$100000000;->this$0:Lcom/android/systemui/batteryview/inyong/BatteryBulat;

    invoke-static {v2}, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->access$L1000002(Lcom/android/systemui/batteryview/inyong/BatteryBulat;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 97
    move-object v2, v0

    iget-object v2, v2, Lcom/android/systemui/batteryview/inyong/BatteryBulat$100000000;->this$0:Lcom/android/systemui/batteryview/inyong/BatteryBulat;

    invoke-virtual {v2}, Lcom/android/systemui/batteryview/inyong/BatteryBulat;->invalidate()V

    :cond_0
    return-void
.end method
