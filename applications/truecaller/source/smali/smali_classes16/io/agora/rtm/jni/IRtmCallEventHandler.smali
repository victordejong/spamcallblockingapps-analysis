.class public abstract Lio/agora/rtm/jni/IRtmCallEventHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 4
    invoke-static {}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->new_IRtmCallEventHandler()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lio/agora/rtm/jni/IRtmCallEventHandler;-><init>(JZ)V

    .line 5
    iget-wide v0, p0, Lio/agora/rtm/jni/IRtmCallEventHandler;->swigCPtr:J

    iget-boolean v3, p0, Lio/agora/rtm/jni/IRtmCallEventHandler;->swigCMemOwn:Z

    invoke-static {p0, v0, v1, v3, v2}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->IRtmCallEventHandler_director_connect(Lio/agora/rtm/jni/IRtmCallEventHandler;JZZ)V

    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p3, p0, Lio/agora/rtm/jni/IRtmCallEventHandler;->swigCMemOwn:Z

    .line 3
    iput-wide p1, p0, Lio/agora/rtm/jni/IRtmCallEventHandler;->swigCPtr:J

    return-void
.end method

.method public static getCPtr(Lio/agora/rtm/jni/IRtmCallEventHandler;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 1
    :cond_0
    iget-wide v0, p0, Lio/agora/rtm/jni/IRtmCallEventHandler;->swigCPtr:J

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-wide v0, p0, Lio/agora/rtm/jni/IRtmCallEventHandler;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 2
    iget-boolean v4, p0, Lio/agora/rtm/jni/IRtmCallEventHandler;->swigCMemOwn:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    .line 3
    iput-boolean v4, p0, Lio/agora/rtm/jni/IRtmCallEventHandler;->swigCMemOwn:Z

    .line 4
    invoke-static {v0, v1}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->delete_IRtmCallEventHandler(J)V

    .line 5
    :cond_0
    iput-wide v2, p0, Lio/agora/rtm/jni/IRtmCallEventHandler;->swigCPtr:J
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
    invoke-virtual {p0}, Lio/agora/rtm/jni/IRtmCallEventHandler;->delete()V

    return-void
.end method

.method public abstract onLocalInvitationAccepted(Lio/agora/rtm/jni/ILocalCallInvitation;Ljava/lang/String;)V
.end method

.method public abstract onLocalInvitationCanceled(Lio/agora/rtm/jni/ILocalCallInvitation;)V
.end method

.method public abstract onLocalInvitationFailure(Lio/agora/rtm/jni/ILocalCallInvitation;Lio/agora/rtm/jni/LOCAL_INVITATION_ERR_CODE;)V
.end method

.method public abstract onLocalInvitationReceivedByPeer(Lio/agora/rtm/jni/ILocalCallInvitation;)V
.end method

.method public abstract onLocalInvitationRefused(Lio/agora/rtm/jni/ILocalCallInvitation;Ljava/lang/String;)V
.end method

.method public abstract onRemoteInvitationAccepted(Lio/agora/rtm/jni/IRemoteCallInvitation;)V
.end method

.method public abstract onRemoteInvitationCanceled(Lio/agora/rtm/jni/IRemoteCallInvitation;)V
.end method

.method public abstract onRemoteInvitationFailure(Lio/agora/rtm/jni/IRemoteCallInvitation;Lio/agora/rtm/jni/REMOTE_INVITATION_ERR_CODE;)V
.end method

.method public abstract onRemoteInvitationReceived(Lio/agora/rtm/jni/IRemoteCallInvitation;)V
.end method

.method public abstract onRemoteInvitationRefused(Lio/agora/rtm/jni/IRemoteCallInvitation;)V
.end method

.method public swigDirectorDisconnect()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lio/agora/rtm/jni/IRtmCallEventHandler;->swigCMemOwn:Z

    .line 2
    invoke-virtual {p0}, Lio/agora/rtm/jni/IRtmCallEventHandler;->delete()V

    return-void
.end method

.method public swigReleaseOwnership()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lio/agora/rtm/jni/IRtmCallEventHandler;->swigCMemOwn:Z

    .line 2
    iget-wide v1, p0, Lio/agora/rtm/jni/IRtmCallEventHandler;->swigCPtr:J

    invoke-static {p0, v1, v2, v0}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->IRtmCallEventHandler_change_ownership(Lio/agora/rtm/jni/IRtmCallEventHandler;JZ)V

    return-void
.end method

.method public swigTakeOwnership()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lio/agora/rtm/jni/IRtmCallEventHandler;->swigCMemOwn:Z

    .line 2
    iget-wide v1, p0, Lio/agora/rtm/jni/IRtmCallEventHandler;->swigCPtr:J

    invoke-static {p0, v1, v2, v0}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->IRtmCallEventHandler_change_ownership(Lio/agora/rtm/jni/IRtmCallEventHandler;JZ)V

    return-void
.end method
