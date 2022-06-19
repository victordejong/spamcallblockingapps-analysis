.class public Lio/agora/rtc/internal/AudioRoutingController$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/rtc/internal/AudioRoutingController;->initialize()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lio/agora/rtc/internal/AudioRoutingController;


# direct methods
.method public constructor <init>(Lio/agora/rtc/internal/AudioRoutingController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$3;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 4

    const-string v0, "onServiceConnected "

    const-string v1, " =? headset("

    const/4 v2, 0x1

    const-string v3, ")"

    .line 1
    invoke-static {v0, p1, v1, v2, v3}, Le/d/c/a/a;->n2(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioRoute"

    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-ne p1, v2, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "on BT service connected: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$3;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    invoke-static {p1, p2}, Lio/agora/rtc/internal/AudioRoutingController;->access$202(Lio/agora/rtc/internal/AudioRoutingController;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 4
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$3;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    check-cast p2, Landroid/bluetooth/BluetoothA2dp;

    invoke-static {p1, p2}, Lio/agora/rtc/internal/AudioRoutingController;->access$3402(Lio/agora/rtc/internal/AudioRoutingController;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    :cond_1
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 4

    const-string v0, "onServiceDisconnected "

    const-string v1, " =? headset("

    const/4 v2, 0x1

    const-string v3, ")"

    .line 1
    invoke-static {v0, p1, v1, v2, v3}, Le/d/c/a/a;->n2(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioRoute"

    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-ne p1, v2, :cond_0

    .line 2
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$3;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    iget-object p1, p1, Lio/agora/rtc/internal/AudioRoutingController;->am:Landroid/media/AudioManager;

    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 3
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$3;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    iget-object p1, p1, Lio/agora/rtc/internal/AudioRoutingController;->am:Landroid/media/AudioManager;

    invoke-virtual {p1}, Landroid/media/AudioManager;->stopBluetoothSco()V

    .line 4
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$3;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$2400(Lio/agora/rtc/internal/AudioRoutingController;)V

    .line 5
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$3;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1, v0}, Lio/agora/rtc/internal/AudioRoutingController;->access$202(Lio/agora/rtc/internal/AudioRoutingController;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 6
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$3;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1, v1}, Lio/agora/rtc/internal/AudioRoutingController;->access$3002(Lio/agora/rtc/internal/AudioRoutingController;Z)Z

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    .line 7
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$3;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1, v1}, Lio/agora/rtc/internal/AudioRoutingController;->access$1902(Lio/agora/rtc/internal/AudioRoutingController;Z)Z

    .line 8
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$3;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1, v0}, Lio/agora/rtc/internal/AudioRoutingController;->access$3402(Lio/agora/rtc/internal/AudioRoutingController;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    :cond_1
    :goto_0
    return-void
.end method
