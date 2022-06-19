.class public Lio/agora/rtc/internal/AudioRoutingController$HeadsetBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/internal/AudioRoutingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HeadsetBroadcastReceiver"
.end annotation


# instance fields
.field private isRegistered:Z

.field public final synthetic this$0:Lio/agora/rtc/internal/AudioRoutingController;


# direct methods
.method private constructor <init>(Lio/agora/rtc/internal/AudioRoutingController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$HeadsetBroadcastReceiver;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lio/agora/rtc/internal/AudioRoutingController$HeadsetBroadcastReceiver;->isRegistered:Z

    return-void
.end method

.method public synthetic constructor <init>(Lio/agora/rtc/internal/AudioRoutingController;Lio/agora/rtc/internal/AudioRoutingController$1;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lio/agora/rtc/internal/AudioRoutingController$HeadsetBroadcastReceiver;-><init>(Lio/agora/rtc/internal/AudioRoutingController;)V

    return-void
.end method


# virtual methods
.method public getRegistered()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/agora/rtc/internal/AudioRoutingController$HeadsetBroadcastReceiver;->isRegistered:Z

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "state"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, -0x1

    .line 2
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v1, "AudioRoute"

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    const-string p1, "microphone"

    .line 3
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v2, :cond_0

    const-string p1, "Receive Event Headset w/ mic connected"

    .line 4
    invoke-static {v1, p1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$HeadsetBroadcastReceiver;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    const/4 p2, 0x0

    invoke-virtual {p1, v2, p2}, Lio/agora/rtc/internal/AudioRoutingController;->sendEvent(II)V

    goto :goto_0

    :cond_0
    const-string p1, "Receive Event Headset w/o mic connected"

    .line 6
    invoke-static {v1, p1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$HeadsetBroadcastReceiver;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    const/4 p2, 0x2

    invoke-virtual {p1, v2, p2}, Lio/agora/rtc/internal/AudioRoutingController;->sendEvent(II)V

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    const-string p1, "Receive Event Headset disconnected"

    .line 8
    invoke-static {v1, p1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$HeadsetBroadcastReceiver;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-virtual {p1, v2, v0}, Lio/agora/rtc/internal/AudioRoutingController;->sendEvent(II)V

    goto :goto_0

    .line 10
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Receive Event Headset unknown event detected, state="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setRegistered(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/agora/rtc/internal/AudioRoutingController$HeadsetBroadcastReceiver;->isRegistered:Z

    return-void
.end method
