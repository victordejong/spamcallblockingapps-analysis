.class public abstract Lio/agora/rtc/internal/AudioRoutingController$AudioRouteBaseState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/agora/rtc/internal/AudioRoutingController$AudioRouteState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/internal/AudioRoutingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "AudioRouteBaseState"
.end annotation


# instance fields
.field public final synthetic this$0:Lio/agora/rtc/internal/AudioRoutingController;


# direct methods
.method private constructor <init>(Lio/agora/rtc/internal/AudioRoutingController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$AudioRouteBaseState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/agora/rtc/internal/AudioRoutingController;Lio/agora/rtc/internal/AudioRoutingController$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/agora/rtc/internal/AudioRoutingController$AudioRouteBaseState;-><init>(Lio/agora/rtc/internal/AudioRoutingController;)V

    return-void
.end method


# virtual methods
.method public btPlugInProcess(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController$AudioRouteBaseState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {v0}, Lio/agora/rtc/internal/AudioRoutingController;->access$1800(Lio/agora/rtc/internal/AudioRoutingController;)V

    .line 2
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController$AudioRouteBaseState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-virtual {v0, p1, p2}, Lio/agora/rtc/internal/AudioRoutingController;->changeAvailDevices(II)V

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "At AudioRouteBaseState Process BT plugin event mA2dpEnable= "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lio/agora/rtc/internal/AudioRoutingController$AudioRouteBaseState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p2}, Lio/agora/rtc/internal/AudioRoutingController;->access$1900(Lio/agora/rtc/internal/AudioRoutingController;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AudioRoute"

    invoke-static {p2, p1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public btPlugOutProcess(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController$AudioRouteBaseState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {v0}, Lio/agora/rtc/internal/AudioRoutingController;->access$1800(Lio/agora/rtc/internal/AudioRoutingController;)V

    .line 2
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController$AudioRouteBaseState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-virtual {v0, p1, p2}, Lio/agora/rtc/internal/AudioRoutingController;->changeAvailDevices(II)V

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "At AudioRouteBaseState Process BT plugout event mA2dpEnable= "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lio/agora/rtc/internal/AudioRoutingController$AudioRouteBaseState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 4
    invoke-static {p2}, Lio/agora/rtc/internal/AudioRoutingController;->access$1900(Lio/agora/rtc/internal/AudioRoutingController;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AudioRoute"

    .line 5
    invoke-static {p2, p1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public btScoConnectProcess(II)V
    .locals 0

    const-string p1, "AudioRoute"

    const-string p2, "At AudioRouteBaseState Process BT SCO Connect event "

    .line 1
    invoke-static {p1, p2}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public btScoDisConnectProcess(II)V
    .locals 0

    .line 1
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$AudioRouteBaseState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$1800(Lio/agora/rtc/internal/AudioRoutingController;)V

    .line 2
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$AudioRouteBaseState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$2000(Lio/agora/rtc/internal/AudioRoutingController;)I

    move-result p1

    if-lez p1, :cond_0

    .line 3
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$AudioRouteBaseState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$1600(Lio/agora/rtc/internal/AudioRoutingController;)Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;

    move-result-object p1

    const/4 p2, 0x5

    iput p2, p1, Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;->mBTRoute:I

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$AudioRouteBaseState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p1}, Lio/agora/rtc/internal/AudioRoutingController;->access$1600(Lio/agora/rtc/internal/AudioRoutingController;)Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;

    move-result-object p1

    const/4 p2, -0x1

    iput p2, p1, Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;->mBTRoute:I

    :goto_0
    const-string p1, "At AudioRouteBaseState Process BT SCO Disconnect, bt route: "

    .line 5
    invoke-static {p1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lio/agora/rtc/internal/AudioRoutingController$AudioRouteBaseState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {p2}, Lio/agora/rtc/internal/AudioRoutingController;->access$1600(Lio/agora/rtc/internal/AudioRoutingController;)Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;

    move-result-object p2

    iget p2, p2, Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;->mBTRoute:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AudioRoute"

    invoke-static {p2, p1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public commStreamEvtProcess(II)V
    .locals 0

    .line 1
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$AudioRouteBaseState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lio/agora/rtc/internal/AudioRoutingController;->access$2202(Lio/agora/rtc/internal/AudioRoutingController;I)I

    const-string p1, "AudioRoute"

    const-string p2, "At AudioRouteBaseState Process Communication stream event "

    .line 2
    invoke-static {p1, p2}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public forceEarpieceProcess(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController$AudioRouteBaseState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-virtual {v0, p1, p2}, Lio/agora/rtc/internal/AudioRoutingController;->changeAvailDevices(II)V

    const-string p1, "AudioRoute"

    const-string p2, "At AudioRouteBaseState Process ForceEarpiece event "

    .line 2
    invoke-static {p1, p2}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public forceSpkProcess(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController$AudioRouteBaseState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-virtual {v0, p1, p2}, Lio/agora/rtc/internal/AudioRoutingController;->changeAvailDevices(II)V

    const-string p1, "AudioRoute"

    const-string p2, "At AudioRouteBaseState Process ForceSpeaker event "

    .line 2
    invoke-static {p1, p2}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public headSetPlugInProcess(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController$AudioRouteBaseState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-virtual {v0, p1, p2}, Lio/agora/rtc/internal/AudioRoutingController;->changeAvailDevices(II)V

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Process HeadSet plugin event at AudioRouteBaseState mAvailDevices.mHeadSetRoute = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lio/agora/rtc/internal/AudioRoutingController$AudioRouteBaseState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 3
    invoke-static {p2}, Lio/agora/rtc/internal/AudioRoutingController;->access$1600(Lio/agora/rtc/internal/AudioRoutingController;)Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;

    move-result-object v0

    iget v0, v0, Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;->mHeadSetRoute:I

    invoke-static {p2, v0}, Lio/agora/rtc/internal/AudioRoutingController;->access$1700(Lio/agora/rtc/internal/AudioRoutingController;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AudioRoute"

    .line 4
    invoke-static {p2, p1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public headSetPlugOutProcess(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController$AudioRouteBaseState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-virtual {v0, p1, p2}, Lio/agora/rtc/internal/AudioRoutingController;->changeAvailDevices(II)V

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Process HeadSet plugout event at AudioRouteBaseState mAvailDevices.mHeadSetRoute = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lio/agora/rtc/internal/AudioRoutingController$AudioRouteBaseState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 3
    invoke-static {p2}, Lio/agora/rtc/internal/AudioRoutingController;->access$1600(Lio/agora/rtc/internal/AudioRoutingController;)Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;

    move-result-object v0

    iget v0, v0, Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;->mHeadSetRoute:I

    invoke-static {p2, v0}, Lio/agora/rtc/internal/AudioRoutingController;->access$1700(Lio/agora/rtc/internal/AudioRoutingController;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AudioRoute"

    .line 4
    invoke-static {p2, p1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public musicStreamEvtProcess(II)V
    .locals 0

    .line 1
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$AudioRouteBaseState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    const/4 p2, 0x3

    invoke-static {p1, p2}, Lio/agora/rtc/internal/AudioRoutingController;->access$2202(Lio/agora/rtc/internal/AudioRoutingController;I)I

    const-string p1, "AudioRoute"

    const-string p2, "At AudioRouteBaseState Process Music stream event"

    .line 2
    invoke-static {p1, p2}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public phoneChangeEvtProcess(II)V
    .locals 1

    .line 1
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$AudioRouteBaseState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    if-lez p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Lio/agora/rtc/internal/AudioRoutingController;->access$2102(Lio/agora/rtc/internal/AudioRoutingController;Z)Z

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "At AudioRouteBaseState Process Phone state change event "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AudioRoute"

    invoke-static {p2, p1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public switchtoTargetRoute()V
    .locals 0

    return-void
.end method
