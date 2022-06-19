.class public Lio/agora/rtm/internal/RtmCallManagerImpl;
.super Lio/agora/rtm/RtmCallManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/agora/rtm/internal/RtmCallManagerImpl$CallEventHandlerNative;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RtmCallManagerImpl"


# instance fields
.field private callEventListenerNative:Lio/agora/rtm/internal/RtmCallManagerImpl$CallEventHandlerNative;

.field private callManagerNative:Lio/agora/rtm/jni/IRtmCallManager;

.field private eventListenerAtomic:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/agora/rtm/RtmCallEventListener;",
            ">;"
        }
    .end annotation
.end field

.field public isNativeAttached:Z

.field private localInvitationLruCache:Lio/agora/common/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/agora/common/LruCache<",
            "Ljava/lang/Long;",
            "Lio/agora/rtm/internal/LocalInvitationWrapper;",
            ">;"
        }
    .end annotation
.end field

.field public final lock:[B

.field private remoteInvitationLruCache:Lio/agora/common/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/agora/common/LruCache<",
            "Ljava/lang/Long;",
            "Lio/agora/rtm/internal/RemoteInvitationWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private rtmClient:Lio/agora/rtm/internal/RtmClientImpl;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lio/agora/rtm/RtmCallManager;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/agora/rtm/internal/RtmCallManagerImpl;->eventListenerAtomic:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    new-array v1, v0, [B

    .line 3
    iput-object v1, p0, Lio/agora/rtm/internal/RtmCallManagerImpl;->lock:[B

    .line 4
    iput-boolean v0, p0, Lio/agora/rtm/internal/RtmCallManagerImpl;->isNativeAttached:Z

    .line 5
    new-instance v0, Lio/agora/common/LruCache;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lio/agora/common/LruCache;-><init>(I)V

    iput-object v0, p0, Lio/agora/rtm/internal/RtmCallManagerImpl;->localInvitationLruCache:Lio/agora/common/LruCache;

    .line 6
    new-instance v0, Lio/agora/common/LruCache;

    invoke-direct {v0, v1}, Lio/agora/common/LruCache;-><init>(I)V

    iput-object v0, p0, Lio/agora/rtm/internal/RtmCallManagerImpl;->remoteInvitationLruCache:Lio/agora/common/LruCache;

    return-void
.end method

.method public static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lio/agora/rtm/internal/RtmCallManagerImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$200(Lio/agora/rtm/internal/RtmCallManagerImpl;)Lio/agora/common/LruCache;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/agora/rtm/internal/RtmCallManagerImpl;->localInvitationLruCache:Lio/agora/common/LruCache;

    return-object p0
.end method

.method public static synthetic access$300(Lio/agora/rtm/internal/RtmCallManagerImpl;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/agora/rtm/internal/RtmCallManagerImpl;->eventListenerAtomic:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method public static synthetic access$400(Lio/agora/rtm/internal/RtmCallManagerImpl;)Lio/agora/common/LruCache;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/agora/rtm/internal/RtmCallManagerImpl;->remoteInvitationLruCache:Lio/agora/common/LruCache;

    return-object p0
.end method

.method private static handleApiCallResult(Lio/agora/rtm/jni/INVITATION_API_CALL_ERR_CODE;Lio/agora/rtm/ResultCallback;)V
    .locals 2
    .param p0    # Lio/agora/rtm/jni/INVITATION_API_CALL_ERR_CODE;
        .annotation build Lio/agora/common/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/agora/rtm/jni/INVITATION_API_CALL_ERR_CODE;",
            "Lio/agora/rtm/ResultCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    sget-object v0, Lio/agora/rtm/jni/INVITATION_API_CALL_ERR_CODE;->INVITATION_API_CALL_ERR_OK:Lio/agora/rtm/jni/INVITATION_API_CALL_ERR_CODE;

    if-ne p0, v0, :cond_1

    const/4 p0, 0x0

    .line 2
    invoke-interface {p1, p0}, Lio/agora/rtm/ResultCallback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_1
    new-instance v0, Lio/agora/rtm/ErrorInfo;

    invoke-virtual {p0}, Lio/agora/rtm/jni/INVITATION_API_CALL_ERR_CODE;->swigValue()I

    move-result v1

    invoke-virtual {p0}, Lio/agora/rtm/jni/INVITATION_API_CALL_ERR_CODE;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lio/agora/rtm/ErrorInfo;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v0}, Lio/agora/rtm/ResultCallback;->onFailure(Lio/agora/rtm/ErrorInfo;)V

    :goto_0
    return-void
.end method

.method private nativeNotInitialized()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lio/agora/rtm/internal/RtmCallManagerImpl;->callManagerNative:Lio/agora/rtm/jni/IRtmCallManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/agora/rtm/internal/RtmCallManagerImpl;->rtmClient:Lio/agora/rtm/internal/RtmClientImpl;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmServiceNative:Lio/agora/rtm/jni/IRtmService;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    :goto_0
    sget-object v0, Lio/agora/rtm/internal/RtmCallManagerImpl;->TAG:Ljava/lang/String;

    const-string v1, "rtm native not ready"

    invoke-static {v0, v1}, Lio/agora/common/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method private static valueToApiCallErrEnumSafe(I)Lio/agora/rtm/jni/INVITATION_API_CALL_ERR_CODE;
    .locals 1
    .annotation build Lio/agora/common/annotation/NonNull;
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0}, Lio/agora/rtm/jni/INVITATION_API_CALL_ERR_CODE;->swigToEnum(I)Lio/agora/rtm/jni/INVITATION_API_CALL_ERR_CODE;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "RTM_EXCEPTION"

    invoke-static {v0, p0}, Lio/agora/common/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget-object p0, Lio/agora/rtm/jni/INVITATION_API_CALL_ERR_CODE;->INVITATION_API_CALL_ERR_INVALID_ARGUMENT:Lio/agora/rtm/jni/INVITATION_API_CALL_ERR_CODE;

    return-object p0
.end method


# virtual methods
.method public acceptRemoteInvitation(Lio/agora/rtm/RemoteInvitation;Lio/agora/rtm/ResultCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/agora/rtm/RemoteInvitation;",
            "Lio/agora/rtm/ResultCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/agora/rtm/internal/RtmCallManagerImpl;->TAG:Ljava/lang/String;

    const-string v1, "accept invitation"

    invoke-static {v0, v1}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    instance-of v1, p1, Lio/agora/rtm/internal/RemoteInvitationWrapper;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid invitation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lio/agora/common/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    sget-object p1, Lio/agora/rtm/jni/INVITATION_API_CALL_ERR_CODE;->INVITATION_API_CALL_ERR_INVALID_ARGUMENT:Lio/agora/rtm/jni/INVITATION_API_CALL_ERR_CODE;

    goto :goto_1

    .line 5
    :cond_0
    iget-object v1, p0, Lio/agora/rtm/internal/RtmCallManagerImpl;->lock:[B

    monitor-enter v1

    .line 6
    :try_start_0
    check-cast p1, Lio/agora/rtm/internal/RemoteInvitationWrapper;

    .line 7
    invoke-direct {p0}, Lio/agora/rtm/internal/RtmCallManagerImpl;->nativeNotInitialized()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    sget-object p1, Lio/agora/rtm/jni/INVITATION_API_CALL_ERR_CODE;->INVITATION_API_CALL_ERR_NOT_STARTED:Lio/agora/rtm/jni/INVITATION_API_CALL_ERR_CODE;

    goto :goto_0

    .line 9
    :cond_1
    iget-object v2, p0, Lio/agora/rtm/internal/RtmCallManagerImpl;->callManagerNative:Lio/agora/rtm/jni/IRtmCallManager;

    iget-object v3, p1, Lio/agora/rtm/internal/RemoteInvitationWrapper;->invitationNative:Lio/agora/rtm/jni/IRemoteCallInvitation;

    invoke-virtual {v2, v3}, Lio/agora/rtm/jni/IRtmCallManager;->acceptRemoteInvitation(Lio/agora/rtm/jni/IRemoteCallInvitation;)I

    move-result v2

    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "accept invite from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lio/agora/rtm/internal/RemoteInvitationWrapper;->getCallerId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/agora/common/Logging;->desensetize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ret: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-static {v2}, Lio/agora/rtm/internal/RtmCallManagerImpl;->valueToApiCallErrEnumSafe(I)Lio/agora/rtm/jni/INVITATION_API_CALL_ERR_CODE;

    move-result-object p1

    .line 12
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    :goto_1
    invoke-static {p1, p2}, Lio/agora/rtm/internal/RtmCallManagerImpl;->handleApiCallResult(Lio/agora/rtm/jni/INVITATION_API_CALL_ERR_CODE;Lio/agora/rtm/ResultCallback;)V

    return-void

    :catchall_0
    move-exception p1

    .line 14
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public attach(Lio/agora/rtm/internal/RtmClientImpl;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lio/agora/rtm/internal/RtmCallManagerImpl;->lock:[B

    monitor-enter v0

    .line 2
    :try_start_0
    iput-object p1, p0, Lio/agora/rtm/internal/RtmCallManagerImpl;->rtmClient:Lio/agora/rtm/internal/RtmClientImpl;

    .line 3
    new-instance v1, Lio/agora/rtm/internal/RtmCallManagerImpl$CallEventHandlerNative;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lio/agora/rtm/internal/RtmCallManagerImpl$CallEventHandlerNative;-><init>(Lio/agora/rtm/internal/RtmCallManagerImpl;Lio/agora/rtm/internal/RtmCallManagerImpl$1;)V

    iput-object v1, p0, Lio/agora/rtm/internal/RtmCallManagerImpl;->callEventListenerNative:Lio/agora/rtm/internal/RtmCallManagerImpl$CallEventHandlerNative;

    .line 4
    iget-object p1, p1, Lio/agora/rtm/internal/RtmClientImpl;->mRtmServiceNative:Lio/agora/rtm/jni/IRtmService;

    invoke-virtual {p1, v1}, Lio/agora/rtm/jni/IRtmService;->getRtmCallManager(Lio/agora/rtm/jni/IRtmCallEventHandler;)Lio/agora/rtm/jni/IRtmCallManager;

    move-result-object p1

    iput-object p1, p0, Lio/agora/rtm/internal/RtmCallManagerImpl;->callManagerNative:Lio/agora/rtm/jni/IRtmCallManager;

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Lio/agora/rtm/internal/RtmCallManagerImpl;->isNativeAttached:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 6
    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p1

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public cancelLocalInvitation(Lio/agora/rtm/LocalInvitation;Lio/agora/rtm/ResultCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/agora/rtm/LocalInvitation;",
            "Lio/agora/rtm/ResultCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/agora/rtm/internal/RtmCallManagerImpl;->TAG:Ljava/lang/String;

    const-string v1, "cancel invitation"

    invoke-static {v0, v1}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    instance-of v1, p1, Lio/agora/rtm/internal/LocalInvitationWrapper;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid invitation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lio/agora/common/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    sget-object p1, Lio/agora/rtm/jni/INVITATION_API_CALL_ERR_CODE;->INVITATION_API_CALL_ERR_INVALID_ARGUMENT:Lio/agora/rtm/jni/INVITATION_API_CALL_ERR_CODE;

    goto :goto_1

    .line 5
    :cond_0
    iget-object v1, p0, Lio/agora/rtm/internal/RtmCallManagerImpl;->lock:[B

    monitor-enter v1

    .line 6
    :try_start_0
    check-cast p1, Lio/agora/rtm/internal/LocalInvitationWrapper;

    .line 7
    invoke-direct {p0}, Lio/agora/rtm/internal/RtmCallManagerImpl;->nativeNotInitialized()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    sget-object p1, Lio/agora/rtm/jni/INVITATION_API_CALL_ERR_CODE;->INVITATION_API_CALL_ERR_NOT_STARTED:Lio/agora/rtm/jni/INVITATION_API_CALL_ERR_CODE;

    goto :goto_0

    .line 9
    :cond_1
    iget-object v2, p0, Lio/agora/rtm/internal/RtmCallManagerImpl;->callManagerNative:Lio/agora/rtm/jni/IRtmCallManager;

    iget-object v3, p1, Lio/agora/rtm/internal/LocalInvitationWrapper;->invitationNative:Lio/agora/rtm/jni/ILocalCallInvitation;

    invoke-virtual {v2, v3}, Lio/agora/rtm/jni/IRtmCallManager;->cancelLocalInvitation(Lio/agora/rtm/jni/ILocalCallInvitation;)I

    move-result v2

    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cancel invite to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lio/agora/rtm/internal/LocalInvitationWrapper;->getCalleeId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/agora/common/Logging;->desensetize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ret: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-static {v2}, Lio/agora/rtm/internal/RtmCallManagerImpl;->valueToApiCallErrEnumSafe(I)Lio/agora/rtm/jni/INVITATION_API_CALL_ERR_CODE;

    move-result-object p1

    .line 12
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    :goto_1
    invoke-static {p1, p2}, Lio/agora/rtm/internal/RtmCallManagerImpl;->handleApiCallResult(Lio/agora/rtm/jni/INVITATION_API_CALL_ERR_CODE;Lio/agora/rtm/ResultCallback;)V

    return-void

    :catchall_0
    move-exception p1

    .line 14
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public createLocalInvitation(Ljava/lang/String;)Lio/agora/rtm/LocalInvitation;
    .locals 4

    .line 1
    sget-object v0, Lio/agora/rtm/internal/RtmCallManagerImpl;->TAG:Ljava/lang/String;

    const-string v1, "create call invitation, callee: "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lio/agora/common/Logging;->desensetize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lio/agora/rtm/internal/RtmCallManagerImpl;->lock:[B

    monitor-enter v1

    .line 3
    :try_start_0
    invoke-direct {p0}, Lio/agora/rtm/internal/RtmCallManagerImpl;->nativeNotInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x0

    .line 4
    monitor-exit v1

    return-object p1

    .line 5
    :cond_0
    iget-object v2, p0, Lio/agora/rtm/internal/RtmCallManagerImpl;->callManagerNative:Lio/agora/rtm/jni/IRtmCallManager;

    invoke-static {v2, p1}, Lio/agora/rtm/internal/LocalInvitationWrapper;->create(Lio/agora/rtm/jni/IRtmCallManager;Ljava/lang/String;)Lio/agora/rtm/internal/LocalInvitationWrapper;

    move-result-object p1

    if-nez p1, :cond_1

    const-string v2, "failed to create invitation"

    .line 6
    invoke-static {v0, v2}, Lio/agora/common/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lio/agora/rtm/internal/RtmCallManagerImpl;->localInvitationLruCache:Lio/agora/common/LruCache;

    iget-object v2, p1, Lio/agora/rtm/internal/LocalInvitationWrapper;->invitationNative:Lio/agora/rtm/jni/ILocalCallInvitation;

    invoke-static {v2}, Lio/agora/rtm/jni/AgoraRtmServiceJNI;->getLocalInvitationKey(Lio/agora/rtm/jni/ILocalCallInvitation;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :goto_0
    monitor-exit v1

    return-object p1

    :catchall_0
    move-exception p1

    .line 9
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public detach()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/agora/rtm/internal/RtmCallManagerImpl;->lock:[B

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lio/agora/rtm/internal/RtmCallManagerImpl;->callManagerNative:Lio/agora/rtm/jni/IRtmCallManager;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Lio/agora/rtm/jni/IRtmCallManager;->release()V

    .line 4
    iput-object v2, p0, Lio/agora/rtm/internal/RtmCallManagerImpl;->callManagerNative:Lio/agora/rtm/jni/IRtmCallManager;

    .line 5
    :cond_0
    iget-object v1, p0, Lio/agora/rtm/internal/RtmCallManagerImpl;->callEventListenerNative:Lio/agora/rtm/internal/RtmCallManagerImpl$CallEventHandlerNative;

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v1}, Lio/agora/rtm/jni/IRtmCallEventHandler;->delete()V

    .line 7
    iput-object v2, p0, Lio/agora/rtm/internal/RtmCallManagerImpl;->callEventListenerNative:Lio/agora/rtm/internal/RtmCallManagerImpl$CallEventHandlerNative;

    .line 8
    :cond_1
    iput-object v2, p0, Lio/agora/rtm/internal/RtmCallManagerImpl;->rtmClient:Lio/agora/rtm/internal/RtmClientImpl;

    const/4 v1, 0x0

    .line 9
    iput-boolean v1, p0, Lio/agora/rtm/internal/RtmCallManagerImpl;->isNativeAttached:Z

    .line 10
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public refuseRemoteInvitation(Lio/agora/rtm/RemoteInvitation;Lio/agora/rtm/ResultCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/agora/rtm/RemoteInvitation;",
            "Lio/agora/rtm/ResultCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/agora/rtm/internal/RtmCallManagerImpl;->TAG:Ljava/lang/String;

    const-string v1, "refuse invitation"

    invoke-static {v0, v1}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    instance-of v1, p1, Lio/agora/rtm/internal/RemoteInvitationWrapper;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refuse invalid invitation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lio/agora/common/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    sget-object p1, Lio/agora/rtm/jni/INVITATION_API_CALL_ERR_CODE;->INVITATION_API_CALL_ERR_INVALID_ARGUMENT:Lio/agora/rtm/jni/INVITATION_API_CALL_ERR_CODE;

    goto :goto_1

    .line 5
    :cond_0
    iget-object v1, p0, Lio/agora/rtm/internal/RtmCallManagerImpl;->lock:[B

    monitor-enter v1

    .line 6
    :try_start_0
    check-cast p1, Lio/agora/rtm/internal/RemoteInvitationWrapper;

    .line 7
    invoke-direct {p0}, Lio/agora/rtm/internal/RtmCallManagerImpl;->nativeNotInitialized()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    sget-object p1, Lio/agora/rtm/jni/INVITATION_API_CALL_ERR_CODE;->INVITATION_API_CALL_ERR_NOT_STARTED:Lio/agora/rtm/jni/INVITATION_API_CALL_ERR_CODE;

    goto :goto_0

    .line 9
    :cond_1
    iget-object v2, p0, Lio/agora/rtm/internal/RtmCallManagerImpl;->callManagerNative:Lio/agora/rtm/jni/IRtmCallManager;

    iget-object v3, p1, Lio/agora/rtm/internal/RemoteInvitationWrapper;->invitationNative:Lio/agora/rtm/jni/IRemoteCallInvitation;

    invoke-virtual {v2, v3}, Lio/agora/rtm/jni/IRtmCallManager;->refuseRemoteInvitation(Lio/agora/rtm/jni/IRemoteCallInvitation;)I

    move-result v2

    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "refuse invite from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lio/agora/rtm/internal/RemoteInvitationWrapper;->getCallerId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/agora/common/Logging;->desensetize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ret: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-static {v2}, Lio/agora/rtm/internal/RtmCallManagerImpl;->valueToApiCallErrEnumSafe(I)Lio/agora/rtm/jni/INVITATION_API_CALL_ERR_CODE;

    move-result-object p1

    .line 12
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    :goto_1
    invoke-static {p1, p2}, Lio/agora/rtm/internal/RtmCallManagerImpl;->handleApiCallResult(Lio/agora/rtm/jni/INVITATION_API_CALL_ERR_CODE;Lio/agora/rtm/ResultCallback;)V

    return-void

    :catchall_0
    move-exception p1

    .line 14
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public sendLocalInvitation(Lio/agora/rtm/LocalInvitation;Lio/agora/rtm/ResultCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/agora/rtm/LocalInvitation;",
            "Lio/agora/rtm/ResultCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/agora/rtm/internal/RtmCallManagerImpl;->TAG:Ljava/lang/String;

    const-string v1, "send invite"

    invoke-static {v0, v1}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    instance-of v1, p1, Lio/agora/rtm/internal/LocalInvitationWrapper;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[send] invalid invitation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lio/agora/common/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    sget-object p1, Lio/agora/rtm/jni/INVITATION_API_CALL_ERR_CODE;->INVITATION_API_CALL_ERR_INVALID_ARGUMENT:Lio/agora/rtm/jni/INVITATION_API_CALL_ERR_CODE;

    goto :goto_1

    .line 5
    :cond_0
    check-cast p1, Lio/agora/rtm/internal/LocalInvitationWrapper;

    .line 6
    iget-object v1, p0, Lio/agora/rtm/internal/RtmCallManagerImpl;->lock:[B

    monitor-enter v1

    .line 7
    :try_start_0
    invoke-direct {p0}, Lio/agora/rtm/internal/RtmCallManagerImpl;->nativeNotInitialized()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    sget-object p1, Lio/agora/rtm/jni/INVITATION_API_CALL_ERR_CODE;->INVITATION_API_CALL_ERR_NOT_STARTED:Lio/agora/rtm/jni/INVITATION_API_CALL_ERR_CODE;

    goto :goto_0

    .line 9
    :cond_1
    iget-object v2, p0, Lio/agora/rtm/internal/RtmCallManagerImpl;->callManagerNative:Lio/agora/rtm/jni/IRtmCallManager;

    iget-object v3, p1, Lio/agora/rtm/internal/LocalInvitationWrapper;->invitationNative:Lio/agora/rtm/jni/ILocalCallInvitation;

    invoke-virtual {v2, v3}, Lio/agora/rtm/jni/IRtmCallManager;->sendLocalInvitation(Lio/agora/rtm/jni/ILocalCallInvitation;)I

    move-result v2

    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send invite to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lio/agora/rtm/internal/LocalInvitationWrapper;->getCalleeId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/agora/common/Logging;->desensetize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ret: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-static {v2}, Lio/agora/rtm/internal/RtmCallManagerImpl;->valueToApiCallErrEnumSafe(I)Lio/agora/rtm/jni/INVITATION_API_CALL_ERR_CODE;

    move-result-object p1

    .line 12
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    :goto_1
    invoke-static {p1, p2}, Lio/agora/rtm/internal/RtmCallManagerImpl;->handleApiCallResult(Lio/agora/rtm/jni/INVITATION_API_CALL_ERR_CODE;Lio/agora/rtm/ResultCallback;)V

    return-void

    :catchall_0
    move-exception p1

    .line 14
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setEventListener(Lio/agora/rtm/RtmCallEventListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/agora/rtm/internal/RtmCallManagerImpl;->eventListenerAtomic:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method
