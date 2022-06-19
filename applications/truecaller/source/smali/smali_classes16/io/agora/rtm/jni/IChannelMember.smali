.class public Lio/agora/rtm/jni/IChannelMember;
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
    iput-boolean p3, p0, Lio/agora/rtm/jni/IChannelMember;->swigCMemOwn:Z

    .line 3
    iput-wide p1, p0, Lio/agora/rtm/jni/IChannelMember;->swigCPtr:J

    return-void
.end method

.method public static getCPtr(Lio/agora/rtm/jni/IChannelMember;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 1
    :cond_0
    iget-wide v0, p0, Lio/agora/rtm/jni/IChannelMember;->swigCPtr:J

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-wide v0, p0, Lio/agora/rtm/jni/IChannelMember;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v0, p0, Lio/agora/rtm/jni/IChannelMember;->swigCMemOwn:Z

    if-nez v0, :cond_0

    .line 3
    iput-wide v2, p0, Lio/agora/rtm/jni/IChannelMember;->swigCPtr:J

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lio/agora/rtm/jni/IChannelMember;->swigCMemOwn:Z

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

.method public getChannelId()Ljava/lang/String;
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/agora/rtm/jni/IChannelMember;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->IChannelMember_getChannelId(JLio/agora/rtm/jni/IChannelMember;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/agora/rtm/jni/IChannelMember;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->IChannelMember_getUserId(JLio/agora/rtm/jni/IChannelMember;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public release()V
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/agora/rtm/jni/IChannelMember;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->IChannelMember_release(JLio/agora/rtm/jni/IChannelMember;)V

    return-void
.end method
