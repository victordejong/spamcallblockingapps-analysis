.class public Lio/agora/rtc/internal/AudioRoutingController$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/internal/AudioRoutingController;
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
    iput-object p1, p0, Lio/agora/rtc/internal/AudioRoutingController$2;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController$2;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    iget-object v0, v0, Lio/agora/rtc/internal/AudioRoutingController;->am:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController$2;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    iget-object v0, v0, Lio/agora/rtc/internal/AudioRoutingController;->am:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "AudioRoute"

    const-string v1, "bluetooth routing start failed a2dp:false sco:false"

    .line 2
    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController$2;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {v0}, Lio/agora/rtc/internal/AudioRoutingController;->access$100(Lio/agora/rtc/internal/AudioRoutingController;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lio/agora/rtc/internal/AudioRoutingController$2;->this$0:Lio/agora/rtc/internal/AudioRoutingController;

    invoke-static {v0}, Lio/agora/rtc/internal/AudioRoutingController;->access$100(Lio/agora/rtc/internal/AudioRoutingController;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/agora/rtc/internal/AudioRoutingListener;

    const/16 v1, 0x708

    invoke-interface {v0, v1}, Lio/agora/rtc/internal/AudioRoutingListener;->onAudioRoutingError(I)V

    :cond_0
    return-void
.end method
