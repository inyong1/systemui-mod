.class Linyong/mod/modstatusbardate/DateView$100000000;
.super Landroid/content/BroadcastReceiver;
.source "DateView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linyong/mod/modstatusbardate/DateView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000000"
.end annotation


# instance fields
.field private final this$0:Linyong/mod/modstatusbardate/DateView;


# direct methods
.method constructor <init>(Linyong/mod/modstatusbardate/DateView;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Landroid/content/BroadcastReceiver;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Linyong/mod/modstatusbardate/DateView$100000000;->this$0:Linyong/mod/modstatusbardate/DateView;

    return-void
.end method

.method static access$0(Linyong/mod/modstatusbardate/DateView$100000000;)Linyong/mod/modstatusbardate/DateView;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Linyong/mod/modstatusbardate/DateView$100000000;->this$0:Linyong/mod/modstatusbardate/DateView;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .prologue
    .line 66
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    iget-object v4, v4, Linyong/mod/modstatusbardate/DateView$100000000;->this$0:Linyong/mod/modstatusbardate/DateView;

    invoke-static {v4}, Linyong/mod/modstatusbardate/DateView;->access$1000014(Linyong/mod/modstatusbardate/DateView;)V

    .line 67
    move-object v4, v0

    iget-object v4, v4, Linyong/mod/modstatusbardate/DateView$100000000;->this$0:Linyong/mod/modstatusbardate/DateView;

    invoke-static {v4}, Linyong/mod/modstatusbardate/DateView;->access$1000018(Linyong/mod/modstatusbardate/DateView;)V

    return-void
.end method
