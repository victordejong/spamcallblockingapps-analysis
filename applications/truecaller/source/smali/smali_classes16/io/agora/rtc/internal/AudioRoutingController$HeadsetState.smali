.class public Lio/agora/rtc/internal/AudioRoutingController$HeadsetState;
.super Lio/agora/rtc/internal/AudioRoutingController$AudioRouteBaseState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/internal/AudioRoutingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HeadsetState"
.end annotation


# instance fields
.field public final synthetic this$0:Lio/agora/rtc/internal/AudioRoutingController;


# direct methods
.method private constructor <init>(Lio/agora/rtc/internal/AudioRoutingController;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$HeadsetState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/agora/rtc/internal/AudioRoutingController$AudioRouteBaseState;-><init>(Lio/agora/rtc/internal/AudioRoutingController;Lio/agora/rtc/internal/AudioRoutingController$1;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/agora/rtc/internal/AudioRoutingController;Lio/agora/rtc/internal/AudioRoutingController$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/agora/rtc/internal/AudioRoutingController$HeadsetState;-><init>(Lio/agora/rtc/internal/AudioRoutingController;)V

    return-void
.end method


# virtual methods
.method public btPlugInProcess(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lio/agora/rtc/internal/AudioRoutingController$AudioRouteBaseState;->btPlugInProcess(II)V

    .line 2
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$HeadsetState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$2100(Lio/agora/rtc/internal/AudioRoutingController;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const-string p1, "At BT HeadSet headSetPlugOutProcess sco:"

    .line 3
    invoke-static {p1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lio/agora/rtc/internal/AudioRoutingController$HeadsetState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    iget-object p2, p2, Lio/agora/rtc/internal/AudioRoutingController;->am:Landroid/media/AudioManager;

    invoke-virtual {p2}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " a2dp:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lio/agora/rtc/internal/AudioRoutingController$HeadsetState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    iget-object p2, p2, Lio/agora/rtc/internal/AudioRoutingController;->am:Landroid/media/AudioManager;

    invoke-virtual {p2}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AudioRoute"

    invoke-static {p2, p1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$HeadsetState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    const/4 p2, 0x5

    invoke-static {p1, p2}, Lio/agora/rtc/internal/AudioRoutingController;->access$700(Lio/agora/rtc/internal/AudioRoutingController;I)V

    return-void
.end method

.method public btPlugOutProcess(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lio/agora/rtc/internal/AudioRoutingController$AudioRouteBaseState;->btPlugOutProcess(II)V

    return-void
.end method

.method public btScoConnectProcess(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lio/agora/rtc/internal/AudioRoutingController$AudioRouteBaseState;->btScoConnectProcess(II)V

    const-string p1, "AudioRoute"

    const-string p2, "At HeadSet btScoConnectProcess Nothing to-do"

    .line 2
    invoke-static {p1, p2}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$HeadsetState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    const/4 p2, 0x5

    invoke-static {p1, p2}, Lio/agora/rtc/internal/AudioRoutingController;->access$700(Lio/agora/rtc/internal/AudioRoutingController;I)V

    return-void
.end method

.method public btScoDisConnectProcess(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lio/agora/rtc/internal/AudioRoutingController$AudioRouteBaseState;->btScoDisConnectProcess(II)V

    const-string p1, "AudioRoute"

    const-string p2, "At HeadSet btScoDisConnectProcess Nothing to-do"

    .line 2
    invoke-static {p1, p2}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public commStreamEvtProcess(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lio/agora/rtc/internal/AudioRoutingController$AudioRouteBaseState;->commStreamEvtProcess(II)V

    const-string p1, "AudioRoute"

    const-string p2, "At HeadSetState Process CommStream"

    .line 2
    invoke-static {p1, p2}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public forceEarpieceProcess(II)V
    .locals 0

    const-string p1, "AudioRoute"

    const-string p2, "At HeadState Process Cannot Support ForceEarpiece event "

    .line 1
    invoke-static {p1, p2}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public forceSpkProcess(II)V
    .locals 0

    const-string p1, "AudioRoute"

    const-string p2, "At HeadState Process Cannot Support ForceSpeaker event "

    .line 1
    invoke-static {p1, p2}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public headSetPlugInProcess(II)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lio/agora/rtc/internal/AudioRoutingController$AudioRouteBaseState;->headSetPlugInProcess(II)V

    .line 2
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$HeadsetState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$2100(Lio/agora/rtc/internal/AudioRoutingController;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "At HeadSet Process HeadSet connect event param = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AudioRoute"

    invoke-static {p2, p1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$HeadsetState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lio/agora/rtc/internal/AudioRoutingController;->access$700(Lio/agora/rtc/internal/AudioRoutingController;I)V

    return-void
.end method

.method public headSetPlugOutProcess(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lio/agora/rtc/internal/AudioRoutingController$AudioRouteBaseState;->headSetPlugOutProcess(II)V

    .line 2
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$HeadsetState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$2100(Lio/agora/rtc/internal/AudioRoutingController;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const-string p1, "At BT HeadSet headSetPlugOutProcess sco:"

    .line 3
    invoke-static {p1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lio/agora/rtc/internal/AudioRoutingController$HeadsetState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    iget-object p2, p2, Lio/agora/rtc/internal/AudioRoutingController;->am:Landroid/media/AudioManager;

    invoke-virtual {p2}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " a2dp:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lio/agora/rtc/internal/AudioRoutingController$HeadsetState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    iget-object p2, p2, Lio/agora/rtc/internal/AudioRoutingController;->am:Landroid/media/AudioManager;

    invoke-virtual {p2}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AudioRoute"

    invoke-static {p2, p1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$HeadsetState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$2000(Lio/agora/rtc/internal/AudioRoutingController;)I

    move-result p1

    if-lez p1, :cond_1

    .line 5
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$HeadsetState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    const/4 p2, 0x5

    invoke-static {p1, p2}, Lio/agora/rtc/internal/AudioRoutingController;->access$700(Lio/agora/rtc/internal/AudioRoutingController;I)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$HeadsetState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$1600(Lio/agora/rtc/internal/AudioRoutingController;)Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;

    move-result-object p1

    iget p1, p1, Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;->mForcedRoute:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_2

    .line 7
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$HeadsetState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$1600(Lio/agora/rtc/internal/AudioRoutingController;)Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;

    move-result-object p2

    iget p2, p2, Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;->mForcedRoute:I

    invoke-static {p1, p2}, Lio/agora/rtc/internal/AudioRoutingController;->access$700(Lio/agora/rtc/internal/AudioRoutingController;I)V

    goto :goto_0

    .line 8
    :cond_2
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$HeadsetState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$1600(Lio/agora/rtc/internal/AudioRoutingController;)Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;

    move-result-object p2

    iget p2, p2, Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;->mDefaultRoute:I

    invoke-static {p1, p2}, Lio/agora/rtc/internal/AudioRoutingController;->access$700(Lio/agora/rtc/internal/AudioRoutingController;I)V

    :goto_0
    return-void
.end method

.method public musicStreamEvtProcess(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lio/agora/rtc/internal/AudioRoutingController$AudioRouteBaseState;->musicStreamEvtProcess(II)V

    const-string p1, "AudioRoute"

    const-string p2, "At HeadSetState Process MusicStream"

    .line 2
    invoke-static {p1, p2}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public switchtoTargetRoute()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController$HeadsetState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {v0}, Lio/agora/rtc/internal/AudioRoutingController;->access$500(Lio/agora/rtc/internal/AudioRoutingController;)I

    move-result v0

    iget-object v1, p0, Lio/agora/rtc/internal/AudioRoutingController$HeadsetState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {v1}, Lio/agora/rtc/internal/AudioRoutingController;->access$1600(Lio/agora/rtc/internal/AudioRoutingController;)Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;

    move-result-object v1

    iget v1, v1, Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;->mHeadSetRoute:I

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController$HeadsetState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {v0}, Lio/agora/rtc/internal/AudioRoutingController;->access$1600(Lio/agora/rtc/internal/AudioRoutingController;)Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;

    move-result-object v1

    iget v1, v1, Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;->mHeadSetRoute:I

    invoke-static {v0, v1}, Lio/agora/rtc/internal/AudioRoutingController;->access$502(Lio/agora/rtc/internal/AudioRoutingController;I)I

    .line 3
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController$HeadsetState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    iget-object v0, v0, Lio/agora/rtc/internal/AudioRoutingController;->am:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 4
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController$HeadsetState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-virtual {v0, v1}, Lio/agora/rtc/internal/AudioRoutingController;->muteAudioStream(Z)V

    .line 5
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController$HeadsetState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {v0}, Lio/agora/rtc/internal/AudioRoutingController;->access$500(Lio/agora/rtc/internal/AudioRoutingController;)I

    move-result v1

    invoke-static {v0, v1}, Lio/agora/rtc/internal/AudioRoutingController;->access$2800(Lio/agora/rtc/internal/AudioRoutingController;I)V

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "At HeadSet State switchtoTargetRoute:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/agora/rtc/internal/AudioRoutingController$HeadsetState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 7
    invoke-static {v1}, Lio/agora/rtc/internal/AudioRoutingController;->access$500(Lio/agora/rtc/internal/AudioRoutingController;)I

    move-result v2

    invoke-static {v1, v2}, Lio/agora/rtc/internal/AudioRoutingController;->access$1700(Lio/agora/rtc/internal/AudioRoutingController;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Audiomode:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/agora/rtc/internal/AudioRoutingController$HeadsetState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    iget-object v1, v1, Lio/agora/rtc/internal/AudioRoutingController;->am:Landroid/media/AudioManager;

    .line 8
    invoke-virtual {v1}, Landroid/media/AudioManager;->getMode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioRoute"

    .line 9
    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
