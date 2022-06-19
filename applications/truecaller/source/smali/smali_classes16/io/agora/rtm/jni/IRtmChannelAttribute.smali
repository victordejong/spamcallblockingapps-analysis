.class public Lio/agora/rtm/jni/IRtmChannelAttribute;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .line 4
    invoke-static {p1, p2}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->new_RtmChannelAttribute(J)J

    move-result-wide p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lio/agora/rtm/jni/IRtmChannelAttribute;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p3, p0, Lio/agora/rtm/jni/IRtmChannelAttribute;->swigCMemOwn:Z

    .line 3
    iput-wide p1, p0, Lio/agora/rtm/jni/IRtmChannelAttribute;->swigCPtr:J

    return-void
.end method

.method public static getCPtr(Lio/agora/rtm/jni/IRtmChannelAttribute;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 1
    :cond_0
    iget-wide v0, p0, Lio/agora/rtm/jni/IRtmChannelAttribute;->swigCPtr:J

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-wide v0, p0, Lio/agora/rtm/jni/IRtmChannelAttribute;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 2
    iget-boolean v4, p0, Lio/agora/rtm/jni/IRtmChannelAttribute;->swigCMemOwn:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    .line 3
    iput-boolean v4, p0, Lio/agora/rtm/jni/IRtmChannelAttribute;->swigCMemOwn:Z

    .line 4
    invoke-static {v0, v1}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->delete_RtmChannelAttribute(J)V

    .line 5
    :cond_0
    iput-wide v2, p0, Lio/agora/rtm/jni/IRtmChannelAttribute;->swigCPtr:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_1
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
    invoke-virtual {p0}, Lio/agora/rtm/jni/IRtmChannelAttribute;->delete()V

    return-void
.end method

.method public getKey()Ljava/lang/String;
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/agora/rtm/jni/IRtmChannelAttribute;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->RtmChannelAttribute_key_get(JLio/agora/rtm/jni/IRtmChannelAttribute;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastUpdateTs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/agora/rtm/jni/IRtmChannelAttribute;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->RtmChannelAttribute_LastUpdateTs_get(JLio/agora/rtm/jni/IRtmChannelAttribute;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastUpdateUserId()Ljava/lang/String;
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/agora/rtm/jni/IRtmChannelAttribute;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->RtmChannelAttribute_LastUpdateUserId_get(JLio/agora/rtm/jni/IRtmChannelAttribute;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/agora/rtm/jni/IRtmChannelAttribute;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->RtmChannelAttribute_value_get(JLio/agora/rtm/jni/IRtmChannelAttribute;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/agora/rtm/jni/IRtmChannelAttribute;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->RtmChannelAttribute_key_set(JLio/agora/rtm/jni/IRtmChannelAttribute;Ljava/lang/String;)V

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/agora/rtm/jni/IRtmChannelAttribute;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->RtmChannelAttribute_value_set(JLio/agora/rtm/jni/IRtmChannelAttribute;Ljava/lang/String;)V

    return-void
.end method
