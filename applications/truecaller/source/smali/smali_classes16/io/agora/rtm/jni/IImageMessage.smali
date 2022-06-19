.class public Lio/agora/rtm/jni/IImageMessage;
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
    iput-wide p1, p0, Lio/agora/rtm/jni/IImageMessage;->swigCPtr:J

    return-void
.end method

.method public static getCPtr(Lio/agora/rtm/jni/IImageMessage;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 1
    :cond_0
    iget-wide v0, p0, Lio/agora/rtm/jni/IImageMessage;->swigCPtr:J

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-wide v0, p0, Lio/agora/rtm/jni/IImageMessage;->swigCPtr:J

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
    invoke-static {v0, v1}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->delete_IImageMessage(J)V

    .line 5
    :cond_0
    iput-wide v2, p0, Lio/agora/rtm/jni/IImageMessage;->swigCPtr:J

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
    invoke-virtual {p0}, Lio/agora/rtm/jni/IImageMessage;->delete()V

    return-void
.end method

.method public getFileName()Ljava/lang/String;
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/agora/rtm/jni/IImageMessage;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->IImageMessage_getFileName(JLio/agora/rtm/jni/IImageMessage;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/agora/rtm/jni/IImageMessage;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->IImageMessage_getHeight(JLio/agora/rtm/jni/IImageMessage;)I

    move-result v0

    return v0
.end method

.method public getMediaId()Ljava/lang/String;
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/agora/rtm/jni/IImageMessage;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->IImageMessage_getMediaId(JLio/agora/rtm/jni/IImageMessage;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/agora/rtm/jni/IImageMessage;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->IImageMessage_getSize(JLio/agora/rtm/jni/IImageMessage;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getThumbnailData()[B
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/agora/rtm/jni/IImageMessage;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->IImageMessage_getThumbnailData(JLio/agora/rtm/jni/IImageMessage;)[B

    move-result-object v0

    return-object v0
.end method

.method public getThumbnailHeight()I
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/agora/rtm/jni/IImageMessage;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->IImageMessage_getThumbnailHeight(JLio/agora/rtm/jni/IImageMessage;)I

    move-result v0

    return v0
.end method

.method public getThumbnailLength()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/agora/rtm/jni/IImageMessage;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->IImageMessage_getThumbnailLength(JLio/agora/rtm/jni/IImageMessage;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getThumbnailWidth()I
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/agora/rtm/jni/IImageMessage;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->IImageMessage_getThumbnailWidth(JLio/agora/rtm/jni/IImageMessage;)I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/agora/rtm/jni/IImageMessage;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->IImageMessage_getWidth(JLio/agora/rtm/jni/IImageMessage;)I

    move-result v0

    return v0
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/agora/rtm/jni/IImageMessage;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->IImageMessage_setFileName(JLio/agora/rtm/jni/IImageMessage;Ljava/lang/String;)V

    return-void
.end method

.method public setHeight(I)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/agora/rtm/jni/IImageMessage;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->IImageMessage_setHeight(JLio/agora/rtm/jni/IImageMessage;I)V

    return-void
.end method

.method public setSize(J)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/agora/rtm/jni/IImageMessage;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->IImageMessage_setSize(JLio/agora/rtm/jni/IImageMessage;J)V

    return-void
.end method

.method public setThumbnail([BJ)V
    .locals 6

    .line 1
    iget-wide v0, p0, Lio/agora/rtm/jni/IImageMessage;->swigCPtr:J

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->IImageMessage_setThumbnail(JLio/agora/rtm/jni/IImageMessage;[BJ)V

    return-void
.end method

.method public setThumbnailHeight(I)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/agora/rtm/jni/IImageMessage;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->IImageMessage_setThumbnailHeight(JLio/agora/rtm/jni/IImageMessage;I)V

    return-void
.end method

.method public setThumbnailWidth(I)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/agora/rtm/jni/IImageMessage;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->IImageMessage_setThumbnailWidth(JLio/agora/rtm/jni/IImageMessage;I)V

    return-void
.end method

.method public setWidth(I)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/agora/rtm/jni/IImageMessage;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->IImageMessage_setWidth(JLio/agora/rtm/jni/IImageMessage;I)V

    return-void
.end method
