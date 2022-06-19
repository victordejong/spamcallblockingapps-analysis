.class public Lio/agora/rtc/internal/AudioRoutingController$BTState;
.super Lio/agora/rtc/internal/AudioRoutingController$AudioRouteBaseState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/internal/AudioRoutingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BTState"
.end annotation


# instance fields
.field public final synthetic this$0:Lio/agora/rtc/internal/AudioRoutingController;


# direct methods
.method private constructor <init>(Lio/agora/rtc/internal/AudioRoutingController;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$BTState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/agora/rtc/internal/AudioRoutingController$AudioRouteBaseState;-><init>(Lio/agora/rtc/internal/AudioRoutingController;Lio/agora/rtc/internal/AudioRoutingController$1;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/agora/rtc/internal/AudioRoutingController;Lio/agora/rtc/internal/AudioRoutingController$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/agora/rtc/internal/AudioRoutingController$BTState;-><init>(Lio/agora/rtc/internal/AudioRoutingController;)V

    return-void
.end method


# virtual methods
.method public btPlugInProcess(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lio/agora/rtc/internal/AudioRoutingController$AudioRouteBaseState;->btPlugInProcess(II)V

    .line 2
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$BTState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    const/4 p2, 0x5

    invoke-static {p1, p2}, Lio/agora/rtc/internal/AudioRoutingController;->access$2800(Lio/agora/rtc/internal/AudioRoutingController;I)V

    return-void
.end method

.method public btPlugOutProcess(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lio/agora/rtc/internal/AudioRoutingController$AudioRouteBaseState;->btPlugOutProcess(II)V

    .line 2
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$BTState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$2100(Lio/agora/rtc/internal/AudioRoutingController;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$BTState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$2000(Lio/agora/rtc/internal/AudioRoutingController;)I

    move-result p1

    if-lez p1, :cond_1

    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$BTState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$2900(Lio/agora/rtc/internal/AudioRoutingController;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$BTState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    const/4 p2, 0x5

    invoke-static {p1, p2}, Lio/agora/rtc/internal/AudioRoutingController;->access$700(Lio/agora/rtc/internal/AudioRoutingController;I)V

    .line 5
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$BTState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1, p2}, Lio/agora/rtc/internal/AudioRoutingController;->access$2800(Lio/agora/rtc/internal/AudioRoutingController;I)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$BTState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$1600(Lio/agora/rtc/internal/AudioRoutingController;)Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;

    move-result-object p1

    iget p1, p1, Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;->mHeadSetRoute:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_2

    .line 7
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$BTState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lio/agora/rtc/internal/AudioRoutingController;->access$700(Lio/agora/rtc/internal/AudioRoutingController;I)V

    goto :goto_0

    .line 8
    :cond_2
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$BTState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$1600(Lio/agora/rtc/internal/AudioRoutingController;)Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;

    move-result-object p1

    iget p1, p1, Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;->mForcedRoute:I

    if-eq p1, p2, :cond_3

    .line 9
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$BTState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$1600(Lio/agora/rtc/internal/AudioRoutingController;)Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;

    move-result-object p2

    iget p2, p2, Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;->mForcedRoute:I

    invoke-static {p1, p2}, Lio/agora/rtc/internal/AudioRoutingController;->access$700(Lio/agora/rtc/internal/AudioRoutingController;I)V

    goto :goto_0

    :cond_3
    const-string p1, "At BTState Process btPlugOutProcess default device:"

    .line 10
    invoke-static {p1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lio/agora/rtc/internal/AudioRoutingController$BTState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 11
    invoke-static {p2}, Lio/agora/rtc/internal/AudioRoutingController;->access$1600(Lio/agora/rtc/internal/AudioRoutingController;)Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;

    move-result-object p2

    iget p2, p2, Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;->mDefaultRoute:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AudioRoute"

    .line 12
    invoke-static {p2, p1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$BTState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$1600(Lio/agora/rtc/internal/AudioRoutingController;)Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;

    move-result-object p2

    iget p2, p2, Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;->mDefaultRoute:I

    invoke-static {p1, p2}, Lio/agora/rtc/internal/AudioRoutingController;->access$700(Lio/agora/rtc/internal/AudioRoutingController;I)V

    :goto_0
    return-void
.end method

.method public btScoConnectProcess(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lio/agora/rtc/internal/AudioRoutingController$AudioRouteBaseState;->btScoConnectProcess(II)V

    .line 2
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$BTState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$2100(Lio/agora/rtc/internal/AudioRoutingController;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$BTState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    iget-object p1, p1, Lio/agora/rtc/internal/AudioRoutingController;->am:Landroid/media/AudioManager;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 4
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$BTState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    iget-object p1, p1, Lio/agora/rtc/internal/AudioRoutingController;->am:Landroid/media/AudioManager;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    const-string p1, "AudioRoute"

    const-string p2, "At BTState Process SCO Connect,Nothing todo since already in BT State"

    .line 5
    invoke-static {p1, p2}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public btScoDisConnectProcess(II)V
    .locals 3

    const-string v0, "AudioRoute"

    const-string v1, "At BTState Process BT SCO DisConnect"

    .line 1
    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-super {p0, p1, p2}, Lio/agora/rtc/internal/AudioRoutingController$AudioRouteBaseState;->btScoDisConnectProcess(II)V

    .line 3
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$BTState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    iget-object p1, p1, Lio/agora/rtc/internal/AudioRoutingController;->am:Landroid/media/AudioManager;

    invoke-virtual {p1}, Landroid/media/AudioManager;->getMode()I

    move-result p1

    const/4 p2, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x3

    if-ne p1, v2, :cond_3

    .line 4
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$BTState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$3000(Lio/agora/rtc/internal/AudioRoutingController;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$BTState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$2900(Lio/agora/rtc/internal/AudioRoutingController;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "At BTState Process not proceed with sco disconnect!"

    .line 5
    invoke-static {v0, p1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$BTState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$1600(Lio/agora/rtc/internal/AudioRoutingController;)Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;

    move-result-object p1

    iget p1, p1, Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;->mHeadSetRoute:I

    if-eq p1, v1, :cond_1

    .line 7
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$BTState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1, p2}, Lio/agora/rtc/internal/AudioRoutingController;->access$700(Lio/agora/rtc/internal/AudioRoutingController;I)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$BTState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$1600(Lio/agora/rtc/internal/AudioRoutingController;)Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;

    move-result-object p1

    iget p1, p1, Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;->mForcedRoute:I

    if-eq p1, v1, :cond_2

    .line 9
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$BTState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$1600(Lio/agora/rtc/internal/AudioRoutingController;)Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;

    move-result-object p2

    iget p2, p2, Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;->mForcedRoute:I

    invoke-static {p1, p2}, Lio/agora/rtc/internal/AudioRoutingController;->access$700(Lio/agora/rtc/internal/AudioRoutingController;I)V

    goto :goto_0

    .line 10
    :cond_2
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$BTState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$1600(Lio/agora/rtc/internal/AudioRoutingController;)Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;

    move-result-object p2

    iget p2, p2, Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;->mDefaultRoute:I

    invoke-static {p1, p2}, Lio/agora/rtc/internal/AudioRoutingController;->access$700(Lio/agora/rtc/internal/AudioRoutingController;I)V

    goto :goto_0

    .line 11
    :cond_3
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$BTState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$1900(Lio/agora/rtc/internal/AudioRoutingController;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$BTState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$2900(Lio/agora/rtc/internal/AudioRoutingController;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 12
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$BTState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    const/4 p2, 0x5

    invoke-static {p1, p2}, Lio/agora/rtc/internal/AudioRoutingController;->access$700(Lio/agora/rtc/internal/AudioRoutingController;I)V

    goto :goto_0

    .line 13
    :cond_4
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$BTState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$1600(Lio/agora/rtc/internal/AudioRoutingController;)Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;

    move-result-object p1

    iget p1, p1, Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;->mHeadSetRoute:I

    if-eq p1, v1, :cond_5

    .line 14
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$BTState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1, p2}, Lio/agora/rtc/internal/AudioRoutingController;->access$700(Lio/agora/rtc/internal/AudioRoutingController;I)V

    goto :goto_0

    .line 15
    :cond_5
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$BTState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$1600(Lio/agora/rtc/internal/AudioRoutingController;)Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;

    move-result-object p2

    iget p2, p2, Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;->mDefaultRoute:I

    invoke-static {p1, p2}, Lio/agora/rtc/internal/AudioRoutingController;->access$700(Lio/agora/rtc/internal/AudioRoutingController;I)V

    .line 16
    :goto_0
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$BTState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$2100(Lio/agora/rtc/internal/AudioRoutingController;)Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_6
    return-void
.end method

.method public commStreamEvtProcess(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lio/agora/rtc/internal/AudioRoutingController$AudioRouteBaseState;->commStreamEvtProcess(II)V

    .line 2
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$BTState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$3100(Lio/agora/rtc/internal/AudioRoutingController;)V

    .line 3
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$BTState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$3200(Lio/agora/rtc/internal/AudioRoutingController;)V

    .line 4
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$BTState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    iget-object p1, p1, Lio/agora/rtc/internal/AudioRoutingController;->am:Landroid/media/AudioManager;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/media/AudioManager;->setMode(I)V

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "At BTState Process CommStream mode ="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lio/agora/rtc/internal/AudioRoutingController$BTState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    iget-object p2, p2, Lio/agora/rtc/internal/AudioRoutingController;->am:Landroid/media/AudioManager;

    invoke-virtual {p2}, Landroid/media/AudioManager;->getMode()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AudioRoute"

    invoke-static {p2, p1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public forceEarpieceProcess(II)V
    .locals 0

    const-string p1, "AudioRoute"

    const-string p2, "At BTState Process Cannot Support ForceEarpiece event "

    .line 1
    invoke-static {p1, p2}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public forceSpkProcess(II)V
    .locals 0

    const-string p1, "AudioRoute"

    const-string p2, "At BTState Process Cannot Support ForceSpeaker event "

    .line 1
    invoke-static {p1, p2}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public headSetPlugInProcess(II)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "At BTState Process HeadSet connect event param = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioRoute"

    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-super {p0, p1, p2}, Lio/agora/rtc/internal/AudioRoutingController$AudioRouteBaseState;->headSetPlugInProcess(II)V

    .line 3
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$BTState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$2100(Lio/agora/rtc/internal/AudioRoutingController;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$BTState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$2200(Lio/agora/rtc/internal/AudioRoutingController;)I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$BTState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$2500(Lio/agora/rtc/internal/AudioRoutingController;)V

    .line 5
    :cond_1
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$BTState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lio/agora/rtc/internal/AudioRoutingController;->access$700(Lio/agora/rtc/internal/AudioRoutingController;I)V

    return-void
.end method

.method public headSetPlugOutProcess(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lio/agora/rtc/internal/AudioRoutingController$AudioRouteBaseState;->headSetPlugOutProcess(II)V

    const-string p1, "AudioRoute"

    const-string p2, "At BTState Process HeadSet disconnect,Nothting need todo "

    .line 2
    invoke-static {p1, p2}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public musicStreamEvtProcess(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lio/agora/rtc/internal/AudioRoutingController$AudioRouteBaseState;->musicStreamEvtProcess(II)V

    .line 2
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$BTState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$2400(Lio/agora/rtc/internal/AudioRoutingController;)V

    .line 3
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$BTState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$2500(Lio/agora/rtc/internal/AudioRoutingController;)V

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "At BTState Process MusicStream mode ="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lio/agora/rtc/internal/AudioRoutingController$BTState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    iget-object p2, p2, Lio/agora/rtc/internal/AudioRoutingController;->am:Landroid/media/AudioManager;

    invoke-virtual {p2}, Landroid/media/AudioManager;->getMode()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AudioRoute"

    invoke-static {p2, p1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public switchtoTargetRoute()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController$BTState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {v0}, Lio/agora/rtc/internal/AudioRoutingController;->access$500(Lio/agora/rtc/internal/AudioRoutingController;)I

    move-result v0

    const/4 v1, 0x5

    if-eq v1, v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController$BTState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {v0, v1}, Lio/agora/rtc/internal/AudioRoutingController;->access$502(Lio/agora/rtc/internal/AudioRoutingController;I)I

    .line 3
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController$BTState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/agora/rtc/internal/AudioRoutingController;->muteAudioStream(Z)V

    .line 4
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController$BTState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {v0}, Lio/agora/rtc/internal/AudioRoutingController;->access$500(Lio/agora/rtc/internal/AudioRoutingController;)I

    move-result v1

    invoke-static {v0, v1}, Lio/agora/rtc/internal/AudioRoutingController;->access$2800(Lio/agora/rtc/internal/AudioRoutingController;I)V

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "At BT State switchtoTargetRoute:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/agora/rtc/internal/AudioRoutingController$BTState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 6
    invoke-static {v1}, Lio/agora/rtc/internal/AudioRoutingController;->access$500(Lio/agora/rtc/internal/AudioRoutingController;)I

    move-result v2

    invoke-static {v1, v2}, Lio/agora/rtc/internal/AudioRoutingController;->access$1700(Lio/agora/rtc/internal/AudioRoutingController;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Audiomode:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/agora/rtc/internal/AudioRoutingController$BTState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    iget-object v1, v1, Lio/agora/rtc/internal/AudioRoutingController;->am:Landroid/media/AudioManager;

    .line 7
    invoke-virtual {v1}, Landroid/media/AudioManager;->getMode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioRoute"

    .line 8
    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
