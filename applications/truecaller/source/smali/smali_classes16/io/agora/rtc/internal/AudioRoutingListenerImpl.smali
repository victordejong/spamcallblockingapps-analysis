.class public Lio/agora/rtc/internal/AudioRoutingListenerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/agora/rtc/internal/AudioRoutingListener;


# instance fields
.field private mAudioRoutingNativeHandle:J


# direct methods
.method public constructor <init>(J)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lio/agora/rtc/internal/AudioRoutingListenerImpl;->mAudioRoutingNativeHandle:J

    .line 3
    iput-wide p1, p0, Lio/agora/rtc/internal/AudioRoutingListenerImpl;->mAudioRoutingNativeHandle:J

    return-void
.end method


# virtual methods
.method public native nativeAudioBtProfileChanged(JI)V
.end method

.method public native nativeAudioRoutingChanged(JI)V
.end method

.method public native nativeAudioRoutingError(JI)V
.end method

.method public onAudioBtProfileChanged(I)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lio/agora/rtc/internal/AudioRoutingListenerImpl;->mAudioRoutingNativeHandle:J

    invoke-virtual {p0, v0, v1, p1}, Lio/agora/rtc/internal/AudioRoutingListenerImpl;->nativeAudioBtProfileChanged(JI)V

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onAudioRoutingChanged(I)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lio/agora/rtc/internal/AudioRoutingListenerImpl;->mAudioRoutingNativeHandle:J

    invoke-virtual {p0, v0, v1, p1}, Lio/agora/rtc/internal/AudioRoutingListenerImpl;->nativeAudioRoutingChanged(JI)V

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onAudioRoutingDestroyed()V
    .locals 2

    .line 1
    monitor-enter p0

    const-wide/16 v0, 0x0

    .line 2
    :try_start_0
    iput-wide v0, p0, Lio/agora/rtc/internal/AudioRoutingListenerImpl;->mAudioRoutingNativeHandle:J

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onAudioRoutingError(I)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lio/agora/rtc/internal/AudioRoutingListenerImpl;->mAudioRoutingNativeHandle:J

    invoke-virtual {p0, v0, v1, p1}, Lio/agora/rtc/internal/AudioRoutingListenerImpl;->nativeAudioRoutingError(JI)V

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
