.class public Lio/agora/rtm/jni/IFileMessage;
.super Lio/agora/rtm/jni/IMessage;
.source "SourceFile"


# instance fields
.field private transient swigCPtr:J


# direct methods
.method public constructor <init>(JZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lio/agora/rtm/jni/IMessage;-><init>(JZ)V

    .line 2
    iput-wide p1, p0, Lio/agora/rtm/jni/IFileMessage;->swigCPtr:J

    return-void
.end method

.method public static getCPtr(Lio/agora/rtm/jni/IFileMessage;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 1
    :cond_0
    iget-wide v0, p0, Lio/agora/rtm/jni/IFileMessage;->swigCPtr:J

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-wide v0, p0, Lio/agora/rtm/jni/IFileMessage;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 2
    iget-boolean v4, p0, Lio/agora/rtm/jni/IMessage;->swigCMemOwn:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    .line 3
    iput-boolean v4, p0, Lio/agora/rtm/jni/IMessage;->swigCMemOwn:Z

    .line 4
    invoke-static {v0, v1}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->delete_IFileMessage(J)V

    .line 5
    :cond_0
    iput-wide v2, p0, Lio/agora/rtm/jni/IFileMessage;->swigCPtr:J

    .line 6
    :cond_1
    invoke-super {p0}, Lio/agora/rtm/jni/IMessage;->delete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public finalize()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/agora/rtm/jni/IFileMessage;->delete()V

    return-void
.end method

.method public getFileName()Ljava/lang/String;
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/agora/rtm/jni/IFileMessage;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->IFileMessage_getFileName(JLio/agora/rtm/jni/IFileMessage;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMediaId()Ljava/lang/String;
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/agora/rtm/jni/IFileMessage;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->IFileMessage_getMediaId(JLio/agora/rtm/jni/IFileMessage;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/agora/rtm/jni/IFileMessage;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->IFileMessage_getSize(JLio/agora/rtm/jni/IFileMessage;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getThumbnailData()[B
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/agora/rtm/jni/IFileMessage;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->IFileMessage_getThumbnailData(JLio/agora/rtm/jni/IFileMessage;)[B

    move-result-object v0

    return-object v0
.end method

.method public getThumbnailLength()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/agora/rtm/jni/IFileMessage;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->IFileMessage_getThumbnailLength(JLio/agora/rtm/jni/IFileMessage;)J

    move-result-wide v0

    return-wide v0
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/agora/rtm/jni/IFileMessage;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->IFileMessage_setFileName(JLio/agora/rtm/jni/IFileMessage;Ljava/lang/String;)V

    return-void
.end method

.method public setThumbnail([BI)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/agora/rtm/jni/IFileMessage;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->IFileMessage_setThumbnail(JLio/agora/rtm/jni/IFileMessage;[BI)V

    return-void
.end method
