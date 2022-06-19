.class public abstract Lio/agora/rtm/jni/IRtmServiceEventHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 4
    invoke-static {}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->new_IRtmServiceEventHandler()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lio/agora/rtm/jni/IRtmServiceEventHandler;-><init>(JZ)V

    .line 5
    iget-wide v0, p0, Lio/agora/rtm/jni/IRtmServiceEventHandler;->swigCPtr:J

    iget-boolean v3, p0, Lio/agora/rtm/jni/IRtmServiceEventHandler;->swigCMemOwn:Z

    invoke-static {p0, v0, v1, v3, v2}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->IRtmServiceEventHandler_director_connect(Lio/agora/rtm/jni/IRtmServiceEventHandler;JZZ)V

    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p3, p0, Lio/agora/rtm/jni/IRtmServiceEventHandler;->swigCMemOwn:Z

    .line 3
    iput-wide p1, p0, Lio/agora/rtm/jni/IRtmServiceEventHandler;->swigCPtr:J

    return-void
.end method

.method public static getCPtr(Lio/agora/rtm/jni/IRtmServiceEventHandler;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 1
    :cond_0
    iget-wide v0, p0, Lio/agora/rtm/jni/IRtmServiceEventHandler;->swigCPtr:J

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-wide v0, p0, Lio/agora/rtm/jni/IRtmServiceEventHandler;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 2
    iget-boolean v4, p0, Lio/agora/rtm/jni/IRtmServiceEventHandler;->swigCMemOwn:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    .line 3
    iput-boolean v4, p0, Lio/agora/rtm/jni/IRtmServiceEventHandler;->swigCMemOwn:Z

    .line 4
    invoke-static {v0, v1}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->delete_IRtmServiceEventHandler(J)V

    .line 5
    :cond_0
    iput-wide v2, p0, Lio/agora/rtm/jni/IRtmServiceEventHandler;->swigCPtr:J
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
    invoke-virtual {p0}, Lio/agora/rtm/jni/IRtmServiceEventHandler;->delete()V

    return-void
.end method

.method public abstract onAddOrUpdateChannelAttributesResult(JLio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;)V
.end method

.method public abstract onAddOrUpdateLocalUserAttributesResult(JLio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;)V
.end method

.method public abstract onClearChannelAttributesResult(JLio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;)V
.end method

.method public abstract onClearLocalUserAttributesResult(JLio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;)V
.end method

.method public abstract onConnectionStateChanged(Lio/agora/rtm/jni/CONNECTION_STATE;Lio/agora/rtm/jni/CONNECTION_CHANGE_REASON;)V
.end method

.method public abstract onDeleteChannelAttributesResult(JLio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;)V
.end method

.method public abstract onDeleteLocalUserAttributesResult(JLio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;)V
.end method

.method public abstract onFileMediaUploadResult(JLio/agora/rtm/jni/IFileMessage;Lio/agora/rtm/jni/UPLOAD_MEDIA_ERR_CODE;)V
.end method

.method public abstract onFileMessageReceivedFromPeer(Ljava/lang/String;Lio/agora/rtm/jni/IFileMessage;)V
.end method

.method public abstract onGetChannelAttributesResult(J[Lio/agora/rtm/jni/IRtmChannelAttribute;ILio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;)V
.end method

.method public abstract onGetChannelMemberCountResult(J[Lio/agora/rtm/jni/IRtmChannelMemberCount;ILio/agora/rtm/jni/GET_CHANNEL_MEMBER_COUNT_ERR;)V
.end method

.method public abstract onGetUserAttributesResult(JLjava/lang/String;[Lio/agora/rtm/jni/IRtmAttribute;ILio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;)V
.end method

.method public abstract onImageMediaUploadResult(JLio/agora/rtm/jni/IImageMessage;Lio/agora/rtm/jni/UPLOAD_MEDIA_ERR_CODE;)V
.end method

.method public abstract onImageMessageReceivedFromPeer(Ljava/lang/String;Lio/agora/rtm/jni/IImageMessage;)V
.end method

.method public abstract onLoginFailure(Lio/agora/rtm/jni/LOGIN_ERR_CODE;)V
.end method

.method public abstract onLoginSuccess()V
.end method

.method public abstract onLogout(Lio/agora/rtm/jni/LOGOUT_ERR_CODE;)V
.end method

.method public abstract onMediaCancelResult(JLio/agora/rtm/jni/CANCEL_MEDIA_ERR_CODE;)V
.end method

.method public abstract onMediaDownloadToFileResult(JLio/agora/rtm/jni/DOWNLOAD_MEDIA_ERR_CODE;)V
.end method

.method public abstract onMediaDownloadToMemoryResult(J[BLio/agora/rtm/jni/DOWNLOAD_MEDIA_ERR_CODE;)V
.end method

.method public abstract onMediaDownloadingProgress(JLio/agora/rtm/jni/MediaOperationProgress;)V
.end method

.method public abstract onMediaUploadingProgress(JLio/agora/rtm/jni/MediaOperationProgress;)V
.end method

.method public abstract onMessageReceivedFromPeer(Ljava/lang/String;Lio/agora/rtm/jni/IMessage;)V
.end method

.method public abstract onPeersOnlineStatusChanged([Lio/agora/rtm/jni/PeerOnlineStatus;I)V
.end method

.method public abstract onQueryPeersBySubscriptionOptionResult(J[Ljava/lang/String;ILio/agora/rtm/jni/QUERY_PEERS_BY_SUBSCRIPTION_OPTION_ERR;)V
.end method

.method public abstract onQueryPeersOnlineStatusResult(J[Lio/agora/rtm/jni/PeerOnlineStatus;ILio/agora/rtm/jni/QUERY_PEERS_ONLINE_STATUS_ERR;)V
.end method

.method public abstract onRenewTokenResult(Ljava/lang/String;Lio/agora/rtm/jni/RENEW_TOKEN_ERR_CODE;)V
.end method

.method public abstract onSendMessageResult(JLio/agora/rtm/jni/PEER_MESSAGE_ERR_CODE;)V
.end method

.method public abstract onSetChannelAttributesResult(JLio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;)V
.end method

.method public abstract onSetLocalUserAttributesResult(JLio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;)V
.end method

.method public abstract onSubscriptionRequestResult(JLio/agora/rtm/jni/PEER_SUBSCRIPTION_STATUS_ERR;)V
.end method

.method public abstract onTokenExpired()V
.end method

.method public swigDirectorDisconnect()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lio/agora/rtm/jni/IRtmServiceEventHandler;->swigCMemOwn:Z

    .line 2
    invoke-virtual {p0}, Lio/agora/rtm/jni/IRtmServiceEventHandler;->delete()V

    return-void
.end method

.method public swigReleaseOwnership()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lio/agora/rtm/jni/IRtmServiceEventHandler;->swigCMemOwn:Z

    .line 2
    iget-wide v1, p0, Lio/agora/rtm/jni/IRtmServiceEventHandler;->swigCPtr:J

    invoke-static {p0, v1, v2, v0}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->IRtmServiceEventHandler_change_ownership(Lio/agora/rtm/jni/IRtmServiceEventHandler;JZ)V

    return-void
.end method

.method public swigTakeOwnership()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/agora/rtm/jni/IRtmServiceEventHandler;->swigCMemOwn:Z

    .line 2
    iget-wide v1, p0, Lio/agora/rtm/jni/IRtmServiceEventHandler;->swigCPtr:J

    invoke-static {p0, v1, v2, v0}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->IRtmServiceEventHandler_change_ownership(Lio/agora/rtm/jni/IRtmServiceEventHandler;JZ)V

    return-void
.end method
