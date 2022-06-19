.class public Lio/agora/rtm/internal/RtmChannelImpl;
.super Lio/agora/rtm/RtmChannel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/agora/rtm/internal/RtmChannelImpl$ChannelEventHandlerNative;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RtmChannelImpl"


# instance fields
.field private final mChannelCallbackLock:[B

.field private mChannelId:Ljava/lang/String;

.field private mChannelListener:Lio/agora/rtm/RtmChannelListener;

.field private mChannelListenerNative:Lio/agora/rtm/internal/RtmChannelImpl$ChannelEventHandlerNative;

.field private final mChannelLock:[B

.field private mChannelNative:Lio/agora/rtm/jni/IChannel;

.field private mGetMembersCallback:Lio/agora/rtm/ResultCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/agora/rtm/ResultCallback<",
            "Ljava/util/List<",
            "Lio/agora/rtm/RtmChannelMember;",
            ">;>;"
        }
    .end annotation
.end field

.field private mIsReleased:Z

.field private mJoinChannelCallback:Lio/agora/rtm/ResultCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/agora/rtm/ResultCallback<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mLeaveChannelCallback:Lio/agora/rtm/ResultCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/agora/rtm/ResultCallback<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mRtmClient:Lio/agora/rtm/internal/RtmClientImpl;

.field private final mSendChannelMessageCallbacks:Lio/agora/common/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/agora/common/LruCache<",
            "Ljava/lang/Long;",
            "Lio/agora/rtm/ResultCallback<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lio/agora/rtm/RtmChannelListener;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lio/agora/rtm/RtmChannel;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [B

    .line 2
    iput-object v1, p0, Lio/agora/rtm/internal/RtmChannelImpl;->mChannelLock:[B

    new-array v1, v0, [B

    .line 3
    iput-object v1, p0, Lio/agora/rtm/internal/RtmChannelImpl;->mChannelCallbackLock:[B

    .line 4
    new-instance v1, Lio/agora/common/LruCache;

    const/16 v2, 0x2710

    invoke-direct {v1, v2}, Lio/agora/common/LruCache;-><init>(I)V

    iput-object v1, p0, Lio/agora/rtm/internal/RtmChannelImpl;->mSendChannelMessageCallbacks:Lio/agora/common/LruCache;

    .line 5
    iput-boolean v0, p0, Lio/agora/rtm/internal/RtmChannelImpl;->mIsReleased:Z

    .line 6
    iput-object p1, p0, Lio/agora/rtm/internal/RtmChannelImpl;->mChannelId:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lio/agora/rtm/internal/RtmChannelImpl;->mChannelListener:Lio/agora/rtm/RtmChannelListener;

    return-void
.end method

.method public static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lio/agora/rtm/internal/RtmChannelImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$200(Lio/agora/rtm/internal/RtmChannelImpl;)[B
    .locals 0

    .line 1
    iget-object p0, p0, Lio/agora/rtm/internal/RtmChannelImpl;->mChannelCallbackLock:[B

    return-object p0
.end method

.method public static synthetic access$300(Lio/agora/rtm/internal/RtmChannelImpl;)Lio/agora/rtm/ResultCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/agora/rtm/internal/RtmChannelImpl;->mJoinChannelCallback:Lio/agora/rtm/ResultCallback;

    return-object p0
.end method

.method public static synthetic access$302(Lio/agora/rtm/internal/RtmChannelImpl;Lio/agora/rtm/ResultCallback;)Lio/agora/rtm/ResultCallback;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/agora/rtm/internal/RtmChannelImpl;->mJoinChannelCallback:Lio/agora/rtm/ResultCallback;

    return-object p1
.end method

.method public static synthetic access$400(Lio/agora/rtm/internal/RtmChannelImpl;)Lio/agora/rtm/ResultCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/agora/rtm/internal/RtmChannelImpl;->mLeaveChannelCallback:Lio/agora/rtm/ResultCallback;

    return-object p0
.end method

.method public static synthetic access$402(Lio/agora/rtm/internal/RtmChannelImpl;Lio/agora/rtm/ResultCallback;)Lio/agora/rtm/ResultCallback;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/agora/rtm/internal/RtmChannelImpl;->mLeaveChannelCallback:Lio/agora/rtm/ResultCallback;

    return-object p1
.end method

.method public static synthetic access$500(Lio/agora/rtm/internal/RtmChannelImpl;)Lio/agora/rtm/RtmChannelListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/agora/rtm/internal/RtmChannelImpl;->mChannelListener:Lio/agora/rtm/RtmChannelListener;

    return-object p0
.end method

.method public static synthetic access$600(Lio/agora/rtm/internal/RtmChannelImpl;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/agora/rtm/internal/RtmChannelImpl;->mChannelId:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$700(Lio/agora/rtm/internal/RtmChannelImpl;)Lio/agora/common/LruCache;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/agora/rtm/internal/RtmChannelImpl;->mSendChannelMessageCallbacks:Lio/agora/common/LruCache;

    return-object p0
.end method

.method public static synthetic access$800(Lio/agora/rtm/internal/RtmChannelImpl;)Lio/agora/rtm/ResultCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/agora/rtm/internal/RtmChannelImpl;->mGetMembersCallback:Lio/agora/rtm/ResultCallback;

    return-object p0
.end method

.method public static synthetic access$802(Lio/agora/rtm/internal/RtmChannelImpl;Lio/agora/rtm/ResultCallback;)Lio/agora/rtm/ResultCallback;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/agora/rtm/internal/RtmChannelImpl;->mGetMembersCallback:Lio/agora/rtm/ResultCallback;

    return-object p1
.end method

.method private isNativeReady()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lio/agora/rtm/internal/RtmChannelImpl;->mChannelNative:Lio/agora/rtm/jni/IChannel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/agora/rtm/internal/RtmChannelImpl;->mRtmClient:Lio/agora/rtm/internal/RtmClientImpl;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmServiceNative:Lio/agora/rtm/jni/IRtmService;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    .line 2
    :cond_1
    :goto_0
    sget-object v0, Lio/agora/rtm/internal/RtmChannelImpl;->TAG:Ljava/lang/String;

    const-string v1, "rtm native not ready"

    invoke-static {v0, v1}, Lio/agora/common/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public attach(Lio/agora/rtm/internal/RtmClientImpl;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lio/agora/rtm/internal/RtmChannelImpl;->mChannelLock:[B

    monitor-enter v0

    .line 2
    :try_start_0
    iput-object p1, p0, Lio/agora/rtm/internal/RtmChannelImpl;->mRtmClient:Lio/agora/rtm/internal/RtmClientImpl;

    .line 3
    new-instance v1, Lio/agora/rtm/internal/RtmChannelImpl$ChannelEventHandlerNative;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lio/agora/rtm/internal/RtmChannelImpl$ChannelEventHandlerNative;-><init>(Lio/agora/rtm/internal/RtmChannelImpl;Lio/agora/rtm/internal/RtmChannelImpl$1;)V

    iput-object v1, p0, Lio/agora/rtm/internal/RtmChannelImpl;->mChannelListenerNative:Lio/agora/rtm/internal/RtmChannelImpl$ChannelEventHandlerNative;

    .line 4
    iget-object p1, p1, Lio/agora/rtm/internal/RtmClientImpl;->mRtmServiceNative:Lio/agora/rtm/jni/IRtmService;

    iget-object v2, p0, Lio/agora/rtm/internal/RtmChannelImpl;->mChannelId:Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Lio/agora/rtm/jni/IRtmService;->createChannel(Ljava/lang/String;Lio/agora/rtm/jni/IChannelEventHandler;)Lio/agora/rtm/jni/IChannel;

    move-result-object p1

    iput-object p1, p0, Lio/agora/rtm/internal/RtmChannelImpl;->mChannelNative:Lio/agora/rtm/jni/IChannel;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5
    :goto_0
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public detach()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/agora/rtm/internal/RtmChannelImpl;->mChannelLock:[B

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lio/agora/rtm/internal/RtmChannelImpl;->mChannelNative:Lio/agora/rtm/jni/IChannel;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Lio/agora/rtm/jni/IChannel;->release()V

    .line 4
    iput-object v2, p0, Lio/agora/rtm/internal/RtmChannelImpl;->mChannelNative:Lio/agora/rtm/jni/IChannel;

    .line 5
    :cond_0
    iget-object v1, p0, Lio/agora/rtm/internal/RtmChannelImpl;->mChannelListenerNative:Lio/agora/rtm/internal/RtmChannelImpl$ChannelEventHandlerNative;

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v1}, Lio/agora/rtm/jni/IChannelEventHandler;->delete()V

    .line 7
    iput-object v2, p0, Lio/agora/rtm/internal/RtmChannelImpl;->mChannelListenerNative:Lio/agora/rtm/internal/RtmChannelImpl$ChannelEventHandlerNative;

    .line 8
    :cond_1
    iget-object v1, p0, Lio/agora/rtm/internal/RtmChannelImpl;->mRtmClient:Lio/agora/rtm/internal/RtmClientImpl;

    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {v1, p0}, Lio/agora/rtm/internal/RtmClientImpl;->removeChannel(Lio/agora/rtm/internal/RtmChannelImpl;)V

    .line 10
    iput-object v2, p0, Lio/agora/rtm/internal/RtmChannelImpl;->mRtmClient:Lio/agora/rtm/internal/RtmClientImpl;

    .line 11
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public finalize()V
    .locals 2

    .line 1
    sget-object v0, Lio/agora/rtm/internal/RtmChannelImpl;->TAG:Ljava/lang/String;

    const-string v1, "rtm channel is destoryed"

    invoke-static {v0, v1}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lio/agora/rtm/internal/RtmChannelImpl;->release()V

    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/agora/rtm/internal/RtmChannelImpl;->mChannelId:Ljava/lang/String;

    return-object v0
.end method

.method public getMembers(Lio/agora/rtm/ResultCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/agora/rtm/ResultCallback<",
            "Ljava/util/List<",
            "Lio/agora/rtm/RtmChannelMember;",
            ">;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    sget-object v0, Lio/agora/rtm/internal/RtmChannelImpl;->TAG:Ljava/lang/String;

    const-string v1, "get members of channel "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/agora/rtm/internal/RtmChannelImpl;->mChannelId:Ljava/lang/String;

    invoke-static {v2}, Lio/agora/common/Logging;->desensetize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 2
    iget-object v2, p0, Lio/agora/rtm/internal/RtmChannelImpl;->mChannelLock:[B

    monitor-enter v2

    .line 3
    :try_start_0
    invoke-direct {p0}, Lio/agora/rtm/internal/RtmChannelImpl;->isNativeReady()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4
    iget-object v1, p0, Lio/agora/rtm/internal/RtmChannelImpl;->mChannelCallbackLock:[B

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    iget-object v3, p0, Lio/agora/rtm/internal/RtmChannelImpl;->mChannelNative:Lio/agora/rtm/jni/IChannel;

    invoke-virtual {v3}, Lio/agora/rtm/jni/IChannel;->getMembers()I

    move-result v3

    .line 6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get members of channel "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lio/agora/rtm/internal/RtmChannelImpl;->mChannelId:Ljava/lang/String;

    invoke-static {v5}, Lio/agora/common/Logging;->desensetize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ret: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    const-class v0, Lio/agora/rtm/jni/GET_MEMBERS_ERR;

    invoke-static {v3, v0}, Lio/agora/rtm/internal/RtmSdkContext;->swigValueToEnumSafe(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/agora/rtm/jni/GET_MEMBERS_ERR;

    .line 8
    sget-object v3, Lio/agora/rtm/jni/GET_MEMBERS_ERR;->GET_MEMBERS_ERR_OK:Lio/agora/rtm/jni/GET_MEMBERS_ERR;

    if-ne v0, v3, :cond_1

    .line 9
    iput-object p1, p0, Lio/agora/rtm/internal/RtmChannelImpl;->mGetMembersCallback:Lio/agora/rtm/ResultCallback;

    .line 10
    :cond_1
    monitor-exit v1

    move-object v1, v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1

    .line 11
    :cond_2
    :goto_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 12
    sget-object v0, Lio/agora/rtm/jni/GET_MEMBERS_ERR;->GET_MEMBERS_ERR_OK:Lio/agora/rtm/jni/GET_MEMBERS_ERR;

    if-eq v1, v0, :cond_4

    if-nez v1, :cond_3

    .line 13
    sget-object v1, Lio/agora/rtm/jni/GET_MEMBERS_ERR;->GET_MEMBERS_ERR_FAILURE:Lio/agora/rtm/jni/GET_MEMBERS_ERR;

    .line 14
    :cond_3
    new-instance v0, Lio/agora/rtm/ErrorInfo;

    invoke-virtual {v1}, Lio/agora/rtm/jni/GET_MEMBERS_ERR;->swigValue()I

    move-result v2

    invoke-virtual {v1}, Lio/agora/rtm/jni/GET_MEMBERS_ERR;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lio/agora/rtm/ErrorInfo;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v0}, Lio/agora/rtm/ResultCallback;->onFailure(Lio/agora/rtm/ErrorInfo;)V

    :cond_4
    return-void

    :catchall_1
    move-exception p1

    .line 15
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public isChannelNativeReady()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lio/agora/rtm/internal/RtmChannelImpl;->mChannelLock:[B

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lio/agora/rtm/internal/RtmChannelImpl;->isNativeReady()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public join(Lio/agora/rtm/ResultCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/agora/rtm/ResultCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/agora/rtm/internal/RtmChannelImpl;->TAG:Ljava/lang/String;

    const-string v1, "join channel: "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/agora/rtm/internal/RtmChannelImpl;->mChannelId:Ljava/lang/String;

    invoke-static {v2}, Lio/agora/common/Logging;->desensetize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lio/agora/rtm/internal/RtmChannelImpl;->mChannelLock:[B

    monitor-enter v1

    .line 3
    :try_start_0
    invoke-direct {p0}, Lio/agora/rtm/internal/RtmChannelImpl;->isNativeReady()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    iget-object v2, p0, Lio/agora/rtm/internal/RtmChannelImpl;->mChannelCallbackLock:[B

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    iget-object v3, p0, Lio/agora/rtm/internal/RtmChannelImpl;->mChannelNative:Lio/agora/rtm/jni/IChannel;

    invoke-virtual {v3}, Lio/agora/rtm/jni/IChannel;->join()I

    move-result v3

    .line 6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "join channel "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lio/agora/rtm/internal/RtmChannelImpl;->mChannelId:Ljava/lang/String;

    invoke-static {v5}, Lio/agora/common/Logging;->desensetize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ret: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    const-class v0, Lio/agora/rtm/jni/JOIN_CHANNEL_ERR;

    invoke-static {v3, v0}, Lio/agora/rtm/internal/RtmSdkContext;->swigValueToEnumSafe(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/agora/rtm/jni/JOIN_CHANNEL_ERR;

    .line 8
    sget-object v3, Lio/agora/rtm/jni/JOIN_CHANNEL_ERR;->JOIN_CHANNEL_ERR_OK:Lio/agora/rtm/jni/JOIN_CHANNEL_ERR;

    if-ne v0, v3, :cond_0

    .line 9
    iput-object p1, p0, Lio/agora/rtm/internal/RtmChannelImpl;->mJoinChannelCallback:Lio/agora/rtm/ResultCallback;

    .line 10
    :cond_0
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1

    :cond_1
    const/4 v0, 0x0

    .line 11
    :goto_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 12
    sget-object v1, Lio/agora/rtm/jni/JOIN_CHANNEL_ERR;->JOIN_CHANNEL_ERR_OK:Lio/agora/rtm/jni/JOIN_CHANNEL_ERR;

    if-eq v0, v1, :cond_3

    if-eqz p1, :cond_3

    if-nez v0, :cond_2

    .line 13
    sget-object v0, Lio/agora/rtm/jni/JOIN_CHANNEL_ERR;->JOIN_CHANNEL_ERR_REJECTED:Lio/agora/rtm/jni/JOIN_CHANNEL_ERR;

    .line 14
    :cond_2
    new-instance v1, Lio/agora/rtm/ErrorInfo;

    invoke-virtual {v0}, Lio/agora/rtm/jni/JOIN_CHANNEL_ERR;->swigValue()I

    move-result v2

    invoke-virtual {v0}, Lio/agora/rtm/jni/JOIN_CHANNEL_ERR;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lio/agora/rtm/ErrorInfo;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v1}, Lio/agora/rtm/ResultCallback;->onFailure(Lio/agora/rtm/ErrorInfo;)V

    :cond_3
    return-void

    :catchall_1
    move-exception p1

    .line 15
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public leave(Lio/agora/rtm/ResultCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/agora/rtm/ResultCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/agora/rtm/internal/RtmChannelImpl;->TAG:Ljava/lang/String;

    const-string v1, "leave channel: "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/agora/rtm/internal/RtmChannelImpl;->mChannelId:Ljava/lang/String;

    invoke-static {v2}, Lio/agora/common/Logging;->desensetize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lio/agora/rtm/internal/RtmChannelImpl;->mChannelLock:[B

    monitor-enter v1

    .line 3
    :try_start_0
    invoke-direct {p0}, Lio/agora/rtm/internal/RtmChannelImpl;->isNativeReady()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    iget-object v2, p0, Lio/agora/rtm/internal/RtmChannelImpl;->mChannelCallbackLock:[B

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    iget-object v3, p0, Lio/agora/rtm/internal/RtmChannelImpl;->mChannelNative:Lio/agora/rtm/jni/IChannel;

    invoke-virtual {v3}, Lio/agora/rtm/jni/IChannel;->leave()I

    move-result v3

    .line 6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "leave channel "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lio/agora/rtm/internal/RtmChannelImpl;->mChannelId:Ljava/lang/String;

    invoke-static {v5}, Lio/agora/common/Logging;->desensetize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ret: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    const-class v0, Lio/agora/rtm/jni/LEAVE_CHANNEL_ERR;

    invoke-static {v3, v0}, Lio/agora/rtm/internal/RtmSdkContext;->swigValueToEnumSafe(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/agora/rtm/jni/LEAVE_CHANNEL_ERR;

    .line 8
    sget-object v3, Lio/agora/rtm/jni/LEAVE_CHANNEL_ERR;->LEAVE_CHANNEL_ERR_OK:Lio/agora/rtm/jni/LEAVE_CHANNEL_ERR;

    if-ne v0, v3, :cond_0

    .line 9
    iput-object p1, p0, Lio/agora/rtm/internal/RtmChannelImpl;->mLeaveChannelCallback:Lio/agora/rtm/ResultCallback;

    .line 10
    :cond_0
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1

    :cond_1
    const/4 v0, 0x0

    .line 11
    :goto_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 12
    sget-object v1, Lio/agora/rtm/jni/LEAVE_CHANNEL_ERR;->LEAVE_CHANNEL_ERR_OK:Lio/agora/rtm/jni/LEAVE_CHANNEL_ERR;

    if-eq v0, v1, :cond_3

    if-eqz p1, :cond_3

    if-nez v0, :cond_2

    .line 13
    sget-object v0, Lio/agora/rtm/jni/LEAVE_CHANNEL_ERR;->LEAVE_CHANNEL_ERR_REJECTED:Lio/agora/rtm/jni/LEAVE_CHANNEL_ERR;

    .line 14
    :cond_2
    new-instance v1, Lio/agora/rtm/ErrorInfo;

    invoke-virtual {v0}, Lio/agora/rtm/jni/LEAVE_CHANNEL_ERR;->swigValue()I

    move-result v2

    invoke-virtual {v0}, Lio/agora/rtm/jni/LEAVE_CHANNEL_ERR;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lio/agora/rtm/ErrorInfo;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v1}, Lio/agora/rtm/ResultCallback;->onFailure(Lio/agora/rtm/ErrorInfo;)V

    :cond_3
    return-void

    :catchall_1
    move-exception p1

    .line 15
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public release()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lio/agora/rtm/internal/RtmChannelImpl;->mIsReleased:Z

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lio/agora/rtm/internal/RtmChannelImpl;->TAG:Ljava/lang/String;

    const-string v1, "release"

    invoke-static {v0, v1}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lio/agora/rtm/internal/RtmChannelImpl;->detach()V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lio/agora/rtm/internal/RtmChannelImpl;->mIsReleased:Z

    :cond_0
    return-void
.end method

.method public sendMessage(Lio/agora/rtm/RtmMessage;Lio/agora/rtm/ResultCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/agora/rtm/RtmMessage;",
            "Lio/agora/rtm/ResultCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, p2}, Lio/agora/rtm/internal/RtmChannelImpl;->sendMessage(Lio/agora/rtm/RtmMessage;Lio/agora/rtm/SendMessageOptions;Lio/agora/rtm/ResultCallback;)V

    return-void
.end method

.method public sendMessage(Lio/agora/rtm/RtmMessage;Lio/agora/rtm/SendMessageOptions;Lio/agora/rtm/ResultCallback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/agora/rtm/RtmMessage;",
            "Lio/agora/rtm/SendMessageOptions;",
            "Lio/agora/rtm/ResultCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 2
    sget-object v0, Lio/agora/rtm/internal/RtmChannelImpl;->TAG:Ljava/lang/String;

    const-string v1, "send message to channel "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/agora/rtm/internal/RtmChannelImpl;->mChannelId:Ljava/lang/String;

    invoke-static {v2}, Lio/agora/common/Logging;->desensetize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/common/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lio/agora/rtm/internal/RtmChannelImpl;->mChannelLock:[B

    monitor-enter v1

    .line 4
    :try_start_0
    invoke-direct {p0}, Lio/agora/rtm/internal/RtmChannelImpl;->isNativeReady()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_7

    if-eqz p1, :cond_7

    .line 5
    invoke-virtual {p1}, Lio/agora/rtm/RtmMessage;->getMessageType()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 6
    iget-object v2, p0, Lio/agora/rtm/internal/RtmChannelImpl;->mRtmClient:Lio/agora/rtm/internal/RtmClientImpl;

    iget-object v2, v2, Lio/agora/rtm/internal/RtmClientImpl;->mRtmServiceNative:Lio/agora/rtm/jni/IRtmService;

    invoke-virtual {p1}, Lio/agora/rtm/RtmMessage;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lio/agora/rtm/jni/IRtmService;->createMessage(Ljava/lang/String;)Lio/agora/rtm/jni/IMessage;

    move-result-object v2

    goto/16 :goto_1

    .line 7
    :cond_0
    invoke-virtual {p1}, Lio/agora/rtm/RtmMessage;->getMessageType()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    .line 8
    invoke-virtual {p1}, Lio/agora/rtm/RtmMessage;->getRawMessage()[B

    move-result-object v2

    .line 9
    invoke-virtual {p1}, Lio/agora/rtm/RtmMessage;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 10
    iget-object v4, p0, Lio/agora/rtm/internal/RtmChannelImpl;->mRtmClient:Lio/agora/rtm/internal/RtmClientImpl;

    iget-object v4, v4, Lio/agora/rtm/internal/RtmClientImpl;->mRtmServiceNative:Lio/agora/rtm/jni/IRtmService;

    array-length v5, v2

    invoke-virtual {v4, v2, v5}, Lio/agora/rtm/jni/IRtmService;->createMessage([BI)Lio/agora/rtm/jni/IMessage;

    move-result-object v2

    goto/16 :goto_1

    .line 11
    :cond_1
    iget-object v4, p0, Lio/agora/rtm/internal/RtmChannelImpl;->mRtmClient:Lio/agora/rtm/internal/RtmClientImpl;

    iget-object v4, v4, Lio/agora/rtm/internal/RtmClientImpl;->mRtmServiceNative:Lio/agora/rtm/jni/IRtmService;

    array-length v5, v2

    invoke-virtual {p1}, Lio/agora/rtm/RtmMessage;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v2, v5, v6}, Lio/agora/rtm/jni/IRtmService;->createMessage([BILjava/lang/String;)Lio/agora/rtm/jni/IMessage;

    move-result-object v2

    goto/16 :goto_1

    .line 12
    :cond_2
    invoke-virtual {p1}, Lio/agora/rtm/RtmMessage;->getMessageType()I

    move-result v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_3

    .line 13
    move-object v2, p1

    check-cast v2, Lio/agora/rtm/RtmFileMessage;

    .line 14
    iget-object v4, p0, Lio/agora/rtm/internal/RtmChannelImpl;->mRtmClient:Lio/agora/rtm/internal/RtmClientImpl;

    iget-object v4, v4, Lio/agora/rtm/internal/RtmClientImpl;->mRtmServiceNative:Lio/agora/rtm/jni/IRtmService;

    invoke-virtual {v2}, Lio/agora/rtm/RtmFileMessage;->getMediaId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lio/agora/rtm/jni/IRtmService;->createFileMessageByMediaId(Ljava/lang/String;)Lio/agora/rtm/jni/IFileMessage;

    move-result-object v4

    .line 15
    invoke-virtual {v2}, Lio/agora/rtm/RtmMessage;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lio/agora/rtm/jni/IMessage;->setText(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v2}, Lio/agora/rtm/RtmFileMessage;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lio/agora/rtm/jni/IFileMessage;->setFileName(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v2}, Lio/agora/rtm/RtmFileMessage;->getThumbnail()[B

    move-result-object v5

    invoke-virtual {v2}, Lio/agora/rtm/RtmFileMessage;->getThumbnail()[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v4, v5, v2}, Lio/agora/rtm/jni/IFileMessage;->setThumbnail([BI)V

    :goto_0
    move-object v2, v4

    goto :goto_1

    .line 18
    :cond_3
    invoke-virtual {p1}, Lio/agora/rtm/RtmMessage;->getMessageType()I

    move-result v2

    const/4 v4, 0x4

    if-ne v2, v4, :cond_4

    .line 19
    move-object v2, p1

    check-cast v2, Lio/agora/rtm/RtmImageMessage;

    .line 20
    iget-object v4, p0, Lio/agora/rtm/internal/RtmChannelImpl;->mRtmClient:Lio/agora/rtm/internal/RtmClientImpl;

    iget-object v4, v4, Lio/agora/rtm/internal/RtmClientImpl;->mRtmServiceNative:Lio/agora/rtm/jni/IRtmService;

    invoke-virtual {v2}, Lio/agora/rtm/RtmImageMessage;->getMediaId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lio/agora/rtm/jni/IRtmService;->createImageMessageByMediaId(Ljava/lang/String;)Lio/agora/rtm/jni/IImageMessage;

    move-result-object v4

    .line 21
    invoke-virtual {v2}, Lio/agora/rtm/RtmMessage;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lio/agora/rtm/jni/IMessage;->setText(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v2}, Lio/agora/rtm/RtmImageMessage;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lio/agora/rtm/jni/IImageMessage;->setFileName(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v2}, Lio/agora/rtm/RtmImageMessage;->getThumbnail()[B

    move-result-object v5

    invoke-virtual {v2}, Lio/agora/rtm/RtmImageMessage;->getThumbnail()[B

    move-result-object v6

    array-length v6, v6

    int-to-long v6, v6

    invoke-virtual {v4, v5, v6, v7}, Lio/agora/rtm/jni/IImageMessage;->setThumbnail([BJ)V

    .line 24
    invoke-virtual {v2}, Lio/agora/rtm/RtmImageMessage;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Lio/agora/rtm/jni/IImageMessage;->setWidth(I)V

    .line 25
    invoke-virtual {v2}, Lio/agora/rtm/RtmImageMessage;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Lio/agora/rtm/jni/IImageMessage;->setHeight(I)V

    .line 26
    invoke-virtual {v2}, Lio/agora/rtm/RtmImageMessage;->getThumbnailWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Lio/agora/rtm/jni/IImageMessage;->setThumbnailWidth(I)V

    .line 27
    invoke-virtual {v2}, Lio/agora/rtm/RtmImageMessage;->getThumbnailHeight()I

    move-result v2

    invoke-virtual {v4, v2}, Lio/agora/rtm/jni/IImageMessage;->setThumbnailHeight(I)V

    goto :goto_0

    :cond_4
    move-object v2, v3

    :goto_1
    if-eqz v2, :cond_7

    .line 28
    invoke-virtual {p1}, Lio/agora/rtm/RtmMessage;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lio/agora/rtm/jni/IMessage;->setText(Ljava/lang/String;)V

    .line 29
    iget-object p1, p0, Lio/agora/rtm/internal/RtmChannelImpl;->mChannelCallbackLock:[B

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p2, :cond_5

    .line 30
    :try_start_1
    iget-object p2, p0, Lio/agora/rtm/internal/RtmChannelImpl;->mChannelNative:Lio/agora/rtm/jni/IChannel;

    invoke-virtual {p2, v2}, Lio/agora/rtm/jni/IChannel;->sendMessage(Lio/agora/rtm/jni/IMessage;)I

    move-result p2

    goto :goto_2

    .line 31
    :cond_5
    new-instance v3, Lio/agora/rtm/jni/ISendMessageOptions;

    invoke-direct {v3}, Lio/agora/rtm/jni/ISendMessageOptions;-><init>()V

    const/4 v4, 0x0

    .line 32
    invoke-virtual {v3, v4}, Lio/agora/rtm/jni/ISendMessageOptions;->setEnableOfflineMessaging(Z)V

    .line 33
    iget-boolean p2, p2, Lio/agora/rtm/SendMessageOptions;->enableHistoricalMessaging:Z

    invoke-virtual {v3, p2}, Lio/agora/rtm/jni/ISendMessageOptions;->setEnableHistoricalMessaging(Z)V

    .line 34
    iget-object p2, p0, Lio/agora/rtm/internal/RtmChannelImpl;->mChannelNative:Lio/agora/rtm/jni/IChannel;

    invoke-virtual {p2, v2, v3}, Lio/agora/rtm/jni/IChannel;->sendMessage(Lio/agora/rtm/jni/IMessage;Lio/agora/rtm/jni/ISendMessageOptions;)I

    move-result p2

    .line 35
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send message to channel "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lio/agora/rtm/internal/RtmChannelImpl;->mChannelId:Ljava/lang/String;

    invoke-static {v4}, Lio/agora/common/Logging;->desensetize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ret: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lio/agora/common/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-class v0, Lio/agora/rtm/jni/CHANNEL_MESSAGE_ERR_CODE;

    invoke-static {p2, v0}, Lio/agora/rtm/internal/RtmSdkContext;->swigValueToEnumSafe(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lio/agora/rtm/jni/CHANNEL_MESSAGE_ERR_CODE;

    .line 37
    sget-object p2, Lio/agora/rtm/jni/CHANNEL_MESSAGE_ERR_CODE;->CHANNEL_MESSAGE_ERR_OK:Lio/agora/rtm/jni/CHANNEL_MESSAGE_ERR_CODE;

    if-ne v3, p2, :cond_6

    if-eqz p3, :cond_6

    .line 38
    iget-object p2, p0, Lio/agora/rtm/internal/RtmChannelImpl;->mSendChannelMessageCallbacks:Lio/agora/common/LruCache;

    invoke-virtual {v2}, Lio/agora/rtm/jni/IMessage;->getMessageId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v0, p3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    :cond_6
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    :try_start_2
    invoke-virtual {v2}, Lio/agora/rtm/jni/IMessage;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_0
    move-exception p2

    .line 41
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p2

    .line 42
    :cond_7
    :goto_3
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 43
    sget-object p1, Lio/agora/rtm/jni/CHANNEL_MESSAGE_ERR_CODE;->CHANNEL_MESSAGE_ERR_OK:Lio/agora/rtm/jni/CHANNEL_MESSAGE_ERR_CODE;

    if-eq v3, p1, :cond_9

    if-eqz p3, :cond_9

    if-nez v3, :cond_8

    .line 44
    sget-object v3, Lio/agora/rtm/jni/CHANNEL_MESSAGE_ERR_CODE;->CHANNEL_MESSAGE_ERR_FAILURE:Lio/agora/rtm/jni/CHANNEL_MESSAGE_ERR_CODE;

    .line 45
    :cond_8
    new-instance p1, Lio/agora/rtm/ErrorInfo;

    invoke-virtual {v3}, Lio/agora/rtm/jni/CHANNEL_MESSAGE_ERR_CODE;->swigValue()I

    move-result p2

    invoke-virtual {v3}, Lio/agora/rtm/jni/CHANNEL_MESSAGE_ERR_CODE;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lio/agora/rtm/ErrorInfo;-><init>(ILjava/lang/String;)V

    invoke-interface {p3, p1}, Lio/agora/rtm/ResultCallback;->onFailure(Lio/agora/rtm/ErrorInfo;)V

    :cond_9
    return-void

    :catchall_1
    move-exception p1

    .line 46
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p1
.end method
