.class public Lio/agora/rtm/jni/IChannel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>(JZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p3, p0, Lio/agora/rtm/jni/IChannel;->swigCMemOwn:Z

    .line 3
    iput-wide p1, p0, Lio/agora/rtm/jni/IChannel;->swigCPtr:J

    return-void
.end method

.method public static getCPtr(Lio/agora/rtm/jni/IChannel;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 1
    :cond_0
    iget-wide v0, p0, Lio/agora/rtm/jni/IChannel;->swigCPtr:J

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-wide v0, p0, Lio/agora/rtm/jni/IChannel;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v0, p0, Lio/agora/rtm/jni/IChannel;->swigCMemOwn:Z

    if-nez v0, :cond_0

    .line 3
    iput-wide v2, p0, Lio/agora/rtm/jni/IChannel;->swigCPtr:J

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lio/agora/rtm/jni/IChannel;->swigCMemOwn:Z

    .line 5
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "C++ destructor does not have public access"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/agora/rtm/jni/IChannel;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->IChannel_getId(JLio/agora/rtm/jni/IChannel;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMembers()I
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/agora/rtm/jni/IChannel;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->IChannel_getMembers(JLio/agora/rtm/jni/IChannel;)I

    move-result v0

    return v0
.end method

.method public join()I
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/agora/rtm/jni/IChannel;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->IChannel_join(JLio/agora/rtm/jni/IChannel;)I

    move-result v0

    return v0
.end method

.method public leave()I
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/agora/rtm/jni/IChannel;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->IChannel_leave(JLio/agora/rtm/jni/IChannel;)I

    move-result v0

    return v0
.end method

.method public release()V
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/agora/rtm/jni/IChannel;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->IChannel_release(JLio/agora/rtm/jni/IChannel;)V

    return-void
.end method

.method public sendMessage(Lio/agora/rtm/jni/IMessage;)I
    .locals 6

    .line 1
    iget-wide v0, p0, Lio/agora/rtm/jni/IChannel;->swigCPtr:J

    invoke-static {p1}, Lio/agora/rtm/jni/IMessage;->getCPtr(Lio/agora/rtm/jni/IMessage;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->IChannel_sendMessage__SWIG_0(JLio/agora/rtm/jni/IChannel;JLio/agora/rtm/jni/IMessage;)I

    move-result p1

    return p1
.end method

.method public sendMessage(Lio/agora/rtm/jni/IMessage;Lio/agora/rtm/jni/ISendMessageOptions;)I
    .locals 9

    .line 2
    iget-wide v0, p0, Lio/agora/rtm/jni/IChannel;->swigCPtr:J

    invoke-static {p1}, Lio/agora/rtm/jni/IMessage;->getCPtr(Lio/agora/rtm/jni/IMessage;)J

    move-result-wide v3

    invoke-static {p2}, Lio/agora/rtm/jni/ISendMessageOptions;->getCPtr(Lio/agora/rtm/jni/ISendMessageOptions;)J

    move-result-wide v6

    move-object v2, p0

    move-object v5, p1

    move-object v8, p2

    invoke-static/range {v0 .. v8}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->IChannel_sendMessage__SWIG_1(JLio/agora/rtm/jni/IChannel;JLio/agora/rtm/jni/IMessage;JLio/agora/rtm/jni/ISendMessageOptions;)I

    move-result p1

    return p1
.end method
