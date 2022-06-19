.class public Lio/agora/rtc/AgoraMediaRecorder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/agora/rtc/AgoraMediaRecorder$IMediaRecorderCallback;,
        Lio/agora/rtc/AgoraMediaRecorder$RecorderInfo;,
        Lio/agora/rtc/AgoraMediaRecorder$MediaRecorderConfiguration;
    }
.end annotation


# static fields
.field public static final CONTAINER_MP4:I = 0x1

.field public static final RECORDER_ERROR_CONFIG_CHANGED:I = 0x4

.field public static final RECORDER_ERROR_CUSTOM_STREAM_DETECTED:I = 0x5

.field public static final RECORDER_ERROR_NONE:I = 0x0

.field public static final RECORDER_ERROR_NO_STREAM:I = 0x2

.field public static final RECORDER_ERROR_OVER_MAX_DURATION:I = 0x3

.field public static final RECORDER_ERROR_WRITE_FAILED:I = 0x1

.field public static final RECORDER_STATE_ERROR:I = -0x1

.field public static final RECORDER_STATE_START:I = 0x2

.field public static final RECORDER_STATE_STOP:I = 0x3

.field public static final STREAM_TYPE_AUDIO:I = 0x1

.field public static final STREAM_TYPE_BOTH:I = 0x3

.field public static final STREAM_TYPE_VIDEO:I = 0x2

.field private static volatile mRecorder:Lio/agora/rtc/AgoraMediaRecorder;


# instance fields
.field public mEngineReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lio/agora/rtc/internal/RtcEngineImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lio/agora/rtc/internal/RtcEngineImpl;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/agora/rtc/AgoraMediaRecorder;->mEngineReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static getMediaRecorder(Lio/agora/rtc/RtcEngine;Lio/agora/rtc/AgoraMediaRecorder$IMediaRecorderCallback;)Lio/agora/rtc/AgoraMediaRecorder;
    .locals 1

    .line 1
    check-cast p0, Lio/agora/rtc/internal/RtcEngineImpl;

    .line 2
    invoke-virtual {p0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->getMediaRecorder(Lio/agora/rtc/AgoraMediaRecorder$IMediaRecorderCallback;)I

    move-result p1

    if-eqz p1, :cond_0

    const-string p0, "getMediaRecorder failed, please ensure the RtcEngine has been initialized and already join the channel"

    .line 3
    invoke-static {p0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 4
    :cond_0
    sget-object p1, Lio/agora/rtc/AgoraMediaRecorder;->mRecorder:Lio/agora/rtc/AgoraMediaRecorder;

    if-nez p1, :cond_2

    .line 5
    const-class p1, Lio/agora/rtc/AgoraMediaRecorder;

    monitor-enter p1

    .line 6
    :try_start_0
    sget-object v0, Lio/agora/rtc/AgoraMediaRecorder;->mRecorder:Lio/agora/rtc/AgoraMediaRecorder;

    if-nez v0, :cond_1

    .line 7
    new-instance v0, Lio/agora/rtc/AgoraMediaRecorder;

    invoke-direct {v0, p0}, Lio/agora/rtc/AgoraMediaRecorder;-><init>(Lio/agora/rtc/internal/RtcEngineImpl;)V

    sput-object v0, Lio/agora/rtc/AgoraMediaRecorder;->mRecorder:Lio/agora/rtc/AgoraMediaRecorder;

    .line 8
    :cond_1
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 9
    :cond_2
    sget-object p1, Lio/agora/rtc/AgoraMediaRecorder;->mRecorder:Lio/agora/rtc/AgoraMediaRecorder;

    invoke-direct {p1, p0}, Lio/agora/rtc/AgoraMediaRecorder;->setEngine(Lio/agora/rtc/internal/RtcEngineImpl;)V

    .line 10
    :goto_0
    sget-object p0, Lio/agora/rtc/AgoraMediaRecorder;->mRecorder:Lio/agora/rtc/AgoraMediaRecorder;

    return-object p0
.end method

.method private setEngine(Lio/agora/rtc/internal/RtcEngineImpl;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/agora/rtc/AgoraMediaRecorder;->mEngineReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public release()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/agora/rtc/AgoraMediaRecorder;->mEngineReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/agora/rtc/internal/RtcEngineImpl;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lio/agora/rtc/internal/RtcEngineImpl;->releaseRecorder()V

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lio/agora/rtc/AgoraMediaRecorder;->mEngineReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public startRecording(Lio/agora/rtc/AgoraMediaRecorder$MediaRecorderConfiguration;)I
    .locals 7

    .line 1
    iget-object v0, p0, Lio/agora/rtc/AgoraMediaRecorder;->mEngineReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lio/agora/rtc/internal/RtcEngineImpl;

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v2, p1, Lio/agora/rtc/AgoraMediaRecorder$MediaRecorderConfiguration;->storagePath:Ljava/lang/String;

    iget v3, p1, Lio/agora/rtc/AgoraMediaRecorder$MediaRecorderConfiguration;->containerFormat:I

    iget v4, p1, Lio/agora/rtc/AgoraMediaRecorder$MediaRecorderConfiguration;->streamType:I

    iget v5, p1, Lio/agora/rtc/AgoraMediaRecorder$MediaRecorderConfiguration;->maxDurationMs:I

    iget v6, p1, Lio/agora/rtc/AgoraMediaRecorder$MediaRecorderConfiguration;->recorderInfoUpdateInterval:I

    invoke-virtual/range {v1 .. v6}, Lio/agora/rtc/internal/RtcEngineImpl;->startRecording(Ljava/lang/String;IIII)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lio/agora/rtc/AgoraMediaRecorder;->mEngineReference:Ljava/lang/ref/WeakReference;

    const/4 p1, -0x7

    return p1
.end method

.method public stopRecording()I
    .locals 1

    .line 1
    iget-object v0, p0, Lio/agora/rtc/AgoraMediaRecorder;->mEngineReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/agora/rtc/internal/RtcEngineImpl;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lio/agora/rtc/internal/RtcEngineImpl;->stopRecording()I

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lio/agora/rtc/AgoraMediaRecorder;->mEngineReference:Ljava/lang/ref/WeakReference;

    const/4 v0, -0x7

    return v0
.end method
