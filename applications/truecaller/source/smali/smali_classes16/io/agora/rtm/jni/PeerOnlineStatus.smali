.class public Lio/agora/rtm/jni/PeerOnlineStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 4
    invoke-static {}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->new_PeerOnlineStatus()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lio/agora/rtm/jni/PeerOnlineStatus;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p3, p0, Lio/agora/rtm/jni/PeerOnlineStatus;->swigCMemOwn:Z

    .line 3
    iput-wide p1, p0, Lio/agora/rtm/jni/PeerOnlineStatus;->swigCPtr:J

    return-void
.end method

.method public static cArrayUnwrap([Lio/agora/rtm/jni/PeerOnlineStatus;)[J
    .locals 4

    .line 1
    array-length v0, p0

    new-array v0, v0, [J

    const/4 v1, 0x0

    .line 2
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 3
    aget-object v2, p0, v1

    invoke-static {v2}, Lio/agora/rtm/jni/PeerOnlineStatus;->getCPtr(Lio/agora/rtm/jni/PeerOnlineStatus;)J

    move-result-wide v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static cArrayWrap([JZ)[Lio/agora/rtm/jni/PeerOnlineStatus;
    .locals 5

    .line 1
    array-length v0, p0

    new-array v0, v0, [Lio/agora/rtm/jni/PeerOnlineStatus;

    const/4 v1, 0x0

    .line 2
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 3
    new-instance v2, Lio/agora/rtm/jni/PeerOnlineStatus;

    aget-wide v3, p0, v1

    invoke-direct {v2, v3, v4, p1}, Lio/agora/rtm/jni/PeerOnlineStatus;-><init>(JZ)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getCPtr(Lio/agora/rtm/jni/PeerOnlineStatus;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 1
    :cond_0
    iget-wide v0, p0, Lio/agora/rtm/jni/PeerOnlineStatus;->swigCPtr:J

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-wide v0, p0, Lio/agora/rtm/jni/PeerOnlineStatus;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 2
    iget-boolean v4, p0, Lio/agora/rtm/jni/PeerOnlineStatus;->swigCMemOwn:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    .line 3
    iput-boolean v4, p0, Lio/agora/rtm/jni/PeerOnlineStatus;->swigCMemOwn:Z

    .line 4
    invoke-static {v0, v1}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->delete_PeerOnlineStatus(J)V

    .line 5
    :cond_0
    iput-wide v2, p0, Lio/agora/rtm/jni/PeerOnlineStatus;->swigCPtr:J
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
    invoke-virtual {p0}, Lio/agora/rtm/jni/PeerOnlineStatus;->delete()V

    return-void
.end method

.method public getIsOnline()Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/agora/rtm/jni/PeerOnlineStatus;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->PeerOnlineStatus_isOnline_get(JLio/agora/rtm/jni/PeerOnlineStatus;)Z

    move-result v0

    return v0
.end method

.method public getOnlineState()Lio/agora/rtm/jni/PEER_ONLINE_STATE;
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/agora/rtm/jni/PeerOnlineStatus;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->PeerOnlineStatus_onlineState_get(JLio/agora/rtm/jni/PeerOnlineStatus;)I

    move-result v0

    invoke-static {v0}, Lio/agora/rtm/jni/PEER_ONLINE_STATE;->swigToEnum(I)Lio/agora/rtm/jni/PEER_ONLINE_STATE;

    move-result-object v0

    return-object v0
.end method

.method public getPeerId()Ljava/lang/String;
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/agora/rtm/jni/PeerOnlineStatus;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->PeerOnlineStatus_peerId_get(JLio/agora/rtm/jni/PeerOnlineStatus;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setIsOnline(Z)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/agora/rtm/jni/PeerOnlineStatus;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->PeerOnlineStatus_isOnline_set(JLio/agora/rtm/jni/PeerOnlineStatus;Z)V

    return-void
.end method

.method public setOnlineState(Lio/agora/rtm/jni/PEER_ONLINE_STATE;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/agora/rtm/jni/PeerOnlineStatus;->swigCPtr:J

    invoke-virtual {p1}, Lio/agora/rtm/jni/PEER_ONLINE_STATE;->swigValue()I

    move-result p1

    invoke-static {v0, v1, p0, p1}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->PeerOnlineStatus_onlineState_set(JLio/agora/rtm/jni/PeerOnlineStatus;I)V

    return-void
.end method

.method public setPeerId(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/agora/rtm/jni/PeerOnlineStatus;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->PeerOnlineStatus_peerId_set(JLio/agora/rtm/jni/PeerOnlineStatus;Ljava/lang/String;)V

    return-void
.end method
