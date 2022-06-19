.class public Lio/agora/rtc/internal/AudioRoutingController$StopState;
.super Lio/agora/rtc/internal/AudioRoutingController$AudioRouteBaseState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/internal/AudioRoutingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StopState"
.end annotation


# instance fields
.field public final synthetic this$0:Lio/agora/rtc/internal/AudioRoutingController;


# direct methods
.method private constructor <init>(Lio/agora/rtc/internal/AudioRoutingController;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$StopState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/agora/rtc/internal/AudioRoutingController$AudioRouteBaseState;-><init>(Lio/agora/rtc/internal/AudioRoutingController;Lio/agora/rtc/internal/AudioRoutingController$1;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/agora/rtc/internal/AudioRoutingController;Lio/agora/rtc/internal/AudioRoutingController$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/agora/rtc/internal/AudioRoutingController$StopState;-><init>(Lio/agora/rtc/internal/AudioRoutingController;)V

    return-void
.end method


# virtual methods
.method public switchtoTargetRoute()V
    .locals 3

    const-string v0, "AudioRoute"

    const-string v1, "Coming to Stop state, switchtoTargetRoute"

    .line 1
    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController$StopState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {v0}, Lio/agora/rtc/internal/AudioRoutingController;->access$2400(Lio/agora/rtc/internal/AudioRoutingController;)V

    .line 3
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController$StopState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {v0}, Lio/agora/rtc/internal/AudioRoutingController;->access$2500(Lio/agora/rtc/internal/AudioRoutingController;)V

    .line 4
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController$StopState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {v0}, Lio/agora/rtc/internal/AudioRoutingController;->access$1600(Lio/agora/rtc/internal/AudioRoutingController;)Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;

    move-result-object v0

    iget-object v1, p0, Lio/agora/rtc/internal/AudioRoutingController$StopState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {v1}, Lio/agora/rtc/internal/AudioRoutingController;->access$2000(Lio/agora/rtc/internal/AudioRoutingController;)I

    move-result v1

    const/4 v2, -0x1

    if-lez v1, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput v1, v0, Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;->mBTRoute:I

    .line 5
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController$StopState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {v0}, Lio/agora/rtc/internal/AudioRoutingController;->access$1600(Lio/agora/rtc/internal/AudioRoutingController;)Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;

    move-result-object v0

    iget-object v1, p0, Lio/agora/rtc/internal/AudioRoutingController$StopState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    .line 6
    invoke-static {v1}, Lio/agora/rtc/internal/AudioRoutingController;->access$2600(Lio/agora/rtc/internal/AudioRoutingController;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput v1, v0, Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;->mHeadSetRoute:I

    .line 7
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController$StopState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {v0}, Lio/agora/rtc/internal/AudioRoutingController;->access$1600(Lio/agora/rtc/internal/AudioRoutingController;)Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;

    move-result-object v0

    iput v2, v0, Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;->mDefaultRoute:I

    .line 8
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController$StopState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {v0}, Lio/agora/rtc/internal/AudioRoutingController;->access$1600(Lio/agora/rtc/internal/AudioRoutingController;)Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;

    move-result-object v0

    iput v2, v0, Lio/agora/rtc/internal/AudioRoutingController$AudioDeviceList;->mForcedRoute:I

    .line 9
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController$StopState;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {v0, v2}, Lio/agora/rtc/internal/AudioRoutingController;->access$502(Lio/agora/rtc/internal/AudioRoutingController;I)I

    return-void
.end method
