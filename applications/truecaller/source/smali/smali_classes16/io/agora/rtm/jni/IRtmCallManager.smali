.class public Lio/agora/rtm/jni/IRtmCallManager;
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
    iput-boolean p3, p0, Lio/agora/rtm/jni/IRtmCallManager;->swigCMemOwn:Z

    .line 3
    iput-wide p1, p0, Lio/agora/rtm/jni/IRtmCallManager;->swigCPtr:J

    return-void
.end method

.method public static getCPtr(Lio/agora/rtm/jni/IRtmCallManager;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 1
    :cond_0
    iget-wide v0, p0, Lio/agora/rtm/jni/IRtmCallManager;->swigCPtr:J

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public acceptRemoteInvitation(Lio/agora/rtm/jni/IRemoteCallInvitation;)I
    .locals 6

    .line 1
    iget-wide v0, p0, Lio/agora/rtm/jni/IRtmCallManager;->swigCPtr:J

    invoke-static {p1}, Lio/agora/rtm/jni/IRemoteCallInvitation;->getCPtr(Lio/agora/rtm/jni/IRemoteCallInvitation;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->IRtmCallManager_acceptRemoteInvitation(JLio/agora/rtm/jni/IRtmCallManager;JLio/agora/rtm/jni/IRemoteCallInvitation;)I

    move-result p1

    return p1
.end method

.method public cancelLocalInvitation(Lio/agora/rtm/jni/ILocalCallInvitation;)I
    .locals 6

    .line 1
    iget-wide v0, p0, Lio/agora/rtm/jni/IRtmCallManager;->swigCPtr:J

    invoke-static {p1}, Lio/agora/rtm/jni/ILocalCallInvitation;->getCPtr(Lio/agora/rtm/jni/ILocalCallInvitation;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->IRtmCallManager_cancelLocalInvitation(JLio/agora/rtm/jni/IRtmCallManager;JLio/agora/rtm/jni/ILocalCallInvitation;)I

    move-result p1

    return p1
.end method

.method public createLocalCallInvitation(Ljava/lang/String;)Lio/agora/rtm/jni/ILocalCallInvitation;
    .locals 4

    .line 1
    iget-wide v0, p0, Lio/agora/rtm/jni/IRtmCallManager;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->IRtmCallManager_createLocalCallInvitation(JLio/agora/rtm/jni/IRtmCallManager;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Lio/agora/rtm/jni/ILocalCallInvitation;

    const/4 v2, 0x1

    invoke-direct {p1, v0, v1, v2}, Lio/agora/rtm/jni/ILocalCallInvitation;-><init>(JZ)V

    :goto_0
    return-object p1
.end method

.method public declared-synchronized delete()V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-wide v0, p0, Lio/agora/rtm/jni/IRtmCallManager;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v0, p0, Lio/agora/rtm/jni/IRtmCallManager;->swigCMemOwn:Z

    if-nez v0, :cond_0

    .line 3
    iput-wide v2, p0, Lio/agora/rtm/jni/IRtmCallManager;->swigCPtr:J

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lio/agora/rtm/jni/IRtmCallManager;->swigCMemOwn:Z

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

.method public refuseRemoteInvitation(Lio/agora/rtm/jni/IRemoteCallInvitation;)I
    .locals 6

    .line 1
    iget-wide v0, p0, Lio/agora/rtm/jni/IRtmCallManager;->swigCPtr:J

    invoke-static {p1}, Lio/agora/rtm/jni/IRemoteCallInvitation;->getCPtr(Lio/agora/rtm/jni/IRemoteCallInvitation;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->IRtmCallManager_refuseRemoteInvitation(JLio/agora/rtm/jni/IRtmCallManager;JLio/agora/rtm/jni/IRemoteCallInvitation;)I

    move-result p1

    return p1
.end method

.method public release()V
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/agora/rtm/jni/IRtmCallManager;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->IRtmCallManager_release(JLio/agora/rtm/jni/IRtmCallManager;)V

    return-void
.end method

.method public sendLocalInvitation(Lio/agora/rtm/jni/ILocalCallInvitation;)I
    .locals 6

    .line 1
    iget-wide v0, p0, Lio/agora/rtm/jni/IRtmCallManager;->swigCPtr:J

    invoke-static {p1}, Lio/agora/rtm/jni/ILocalCallInvitation;->getCPtr(Lio/agora/rtm/jni/ILocalCallInvitation;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->IRtmCallManager_sendLocalInvitation(JLio/agora/rtm/jni/IRtmCallManager;JLio/agora/rtm/jni/ILocalCallInvitation;)I

    move-result p1

    return p1
.end method
