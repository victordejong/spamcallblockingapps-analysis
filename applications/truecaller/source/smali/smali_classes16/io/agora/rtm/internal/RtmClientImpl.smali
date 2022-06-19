.class public Lio/agora/rtm/internal/RtmClientImpl;
.super Lio/agora/rtm/RtmClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/agora/rtm/internal/RtmClientImpl$RtmServiceEventHandlerNative;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RtmClientImpl"


# instance fields
.field private final mAddOrUpdateChannelAttrCallbacks:Lio/agora/common/LruCache;
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

.field private final mAddOrUpdateLocalUserAttrCallbacks:Lio/agora/common/LruCache;
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

.field private final mCancelMediaCallbacks:Lio/agora/common/LruCache;
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

.field private final mClearChannelAttrCallbacks:Lio/agora/common/LruCache;
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

.field private final mClearLocalUserAttrCallbacks:Lio/agora/common/LruCache;
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

.field private mClientListener:Lio/agora/rtm/RtmClientListener;

.field private final mDeleteChannelAttrCallbacks:Lio/agora/common/LruCache;
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

.field private final mDeleteLocalUserAttrCallbacks:Lio/agora/common/LruCache;
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

.field private final mDownloadMediaToFileCallbacks:Lio/agora/common/LruCache;
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

.field private final mDownloadMediaToMemoryCallbacks:Lio/agora/common/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/agora/common/LruCache<",
            "Ljava/lang/Long;",
            "Lio/agora/rtm/ResultCallback<",
            "[B>;>;"
        }
    .end annotation
.end field

.field private final mGetChannelAttrCallbacks:Lio/agora/common/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/agora/common/LruCache<",
            "Ljava/lang/Long;",
            "Lio/agora/rtm/ResultCallback<",
            "Ljava/util/List<",
            "Lio/agora/rtm/RtmChannelAttribute;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final mGetChannelMemberCountCallbacks:Lio/agora/common/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/agora/common/LruCache<",
            "Ljava/lang/Long;",
            "Lio/agora/rtm/ResultCallback<",
            "Ljava/util/List<",
            "Lio/agora/rtm/RtmChannelMemberCount;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final mGetUserAttrCallbacks:Lio/agora/common/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/agora/common/LruCache<",
            "Ljava/lang/Long;",
            "Lio/agora/rtm/ResultCallback<",
            "Ljava/util/List<",
            "Lio/agora/rtm/RtmAttribute;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mIsInitialized:Z

.field private mLoginCallback:Lio/agora/rtm/ResultCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/agora/rtm/ResultCallback<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mLogoutCallback:Lio/agora/rtm/ResultCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/agora/rtm/ResultCallback<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final mQueryOnlineStatusCallbacks:Lio/agora/common/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/agora/common/LruCache<",
            "Ljava/lang/Long;",
            "Lio/agora/rtm/ResultCallback<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final mQueryPeersBySubscriptionOptionCallbacks:Lio/agora/common/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/agora/common/LruCache<",
            "Ljava/lang/Long;",
            "Lio/agora/rtm/ResultCallback<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mRefChannels:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lio/agora/rtm/internal/RtmChannelImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final mRenewTokenCallbacks:Lio/agora/common/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/agora/common/LruCache<",
            "Ljava/lang/String;",
            "Lio/agora/rtm/ResultCallback<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mRtmCallbackLock:[B

.field private mRtmEventHandlerNative:Lio/agora/rtm/internal/RtmClientImpl$RtmServiceEventHandlerNative;

.field private final mRtmLock:[B

.field public mRtmServiceNative:Lio/agora/rtm/jni/IRtmService;

.field private mRtmServiceNativeHandle:J

.field private final mSendPeerMessageCallbacks:Lio/agora/common/LruCache;
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

.field private final mSetChannelAttrCallbacks:Lio/agora/common/LruCache;
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

.field private final mSetLocalUserAttrCallbacks:Lio/agora/common/LruCache;
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

.field private final mSubscribePeersOnlineStatusCallbacks:Lio/agora/common/LruCache;
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

.field private final mUploadFileMediaCallbacks:Lio/agora/common/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/agora/common/LruCache<",
            "Ljava/lang/Long;",
            "Lio/agora/rtm/ResultCallback<",
            "Lio/agora/rtm/RtmFileMessage;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mUploadImageMediaCallbacks:Lio/agora/common/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/agora/common/LruCache<",
            "Ljava/lang/Long;",
            "Lio/agora/rtm/ResultCallback<",
            "Lio/agora/rtm/RtmImageMessage;",
            ">;>;"
        }
    .end annotation
.end field

.field private rtmCallManager:Lio/agora/rtm/internal/RtmCallManagerImpl;


# direct methods
.method public constructor <init>(Lio/agora/rtm/internal/RtmSdkContext;Ljava/lang/String;Lio/agora/rtm/RtmClientListener;)V
    .locals 2
    .param p1    # Lio/agora/rtm/internal/RtmSdkContext;
        .annotation build Lio/agora/common/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lio/agora/common/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/agora/rtm/RtmClientListener;
        .annotation build Lio/agora/common/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/agora/rtm/RtmClient;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRefChannels:Ljava/util/HashSet;

    const/4 v0, 0x0

    new-array v1, v0, [B

    .line 3
    iput-object v1, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmLock:[B

    new-array v1, v0, [B

    .line 4
    iput-object v1, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmCallbackLock:[B

    .line 5
    iput-boolean v0, p0, Lio/agora/rtm/internal/RtmClientImpl;->mIsInitialized:Z

    .line 6
    new-instance v0, Lio/agora/common/LruCache;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lio/agora/common/LruCache;-><init>(I)V

    iput-object v0, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRenewTokenCallbacks:Lio/agora/common/LruCache;

    .line 7
    new-instance v0, Lio/agora/common/LruCache;

    const/16 v1, 0x2710

    invoke-direct {v0, v1}, Lio/agora/common/LruCache;-><init>(I)V

    iput-object v0, p0, Lio/agora/rtm/internal/RtmClientImpl;->mSendPeerMessageCallbacks:Lio/agora/common/LruCache;

    .line 8
    new-instance v0, Lio/agora/common/LruCache;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lio/agora/common/LruCache;-><init>(I)V

    iput-object v0, p0, Lio/agora/rtm/internal/RtmClientImpl;->mQueryOnlineStatusCallbacks:Lio/agora/common/LruCache;

    .line 9
    new-instance v0, Lio/agora/common/LruCache;

    invoke-direct {v0, v1}, Lio/agora/common/LruCache;-><init>(I)V

    iput-object v0, p0, Lio/agora/rtm/internal/RtmClientImpl;->mSubscribePeersOnlineStatusCallbacks:Lio/agora/common/LruCache;

    .line 10
    new-instance v0, Lio/agora/common/LruCache;

    invoke-direct {v0, v1}, Lio/agora/common/LruCache;-><init>(I)V

    iput-object v0, p0, Lio/agora/rtm/internal/RtmClientImpl;->mQueryPeersBySubscriptionOptionCallbacks:Lio/agora/common/LruCache;

    .line 11
    new-instance v0, Lio/agora/common/LruCache;

    invoke-direct {v0, v1}, Lio/agora/common/LruCache;-><init>(I)V

    iput-object v0, p0, Lio/agora/rtm/internal/RtmClientImpl;->mSetLocalUserAttrCallbacks:Lio/agora/common/LruCache;

    .line 12
    new-instance v0, Lio/agora/common/LruCache;

    invoke-direct {v0, v1}, Lio/agora/common/LruCache;-><init>(I)V

    iput-object v0, p0, Lio/agora/rtm/internal/RtmClientImpl;->mAddOrUpdateLocalUserAttrCallbacks:Lio/agora/common/LruCache;

    .line 13
    new-instance v0, Lio/agora/common/LruCache;

    invoke-direct {v0, v1}, Lio/agora/common/LruCache;-><init>(I)V

    iput-object v0, p0, Lio/agora/rtm/internal/RtmClientImpl;->mDeleteLocalUserAttrCallbacks:Lio/agora/common/LruCache;

    .line 14
    new-instance v0, Lio/agora/common/LruCache;

    invoke-direct {v0, v1}, Lio/agora/common/LruCache;-><init>(I)V

    iput-object v0, p0, Lio/agora/rtm/internal/RtmClientImpl;->mClearLocalUserAttrCallbacks:Lio/agora/common/LruCache;

    .line 15
    new-instance v0, Lio/agora/common/LruCache;

    invoke-direct {v0, v1}, Lio/agora/common/LruCache;-><init>(I)V

    iput-object v0, p0, Lio/agora/rtm/internal/RtmClientImpl;->mGetUserAttrCallbacks:Lio/agora/common/LruCache;

    .line 16
    new-instance v0, Lio/agora/common/LruCache;

    invoke-direct {v0, v1}, Lio/agora/common/LruCache;-><init>(I)V

    iput-object v0, p0, Lio/agora/rtm/internal/RtmClientImpl;->mSetChannelAttrCallbacks:Lio/agora/common/LruCache;

    .line 17
    new-instance v0, Lio/agora/common/LruCache;

    invoke-direct {v0, v1}, Lio/agora/common/LruCache;-><init>(I)V

    iput-object v0, p0, Lio/agora/rtm/internal/RtmClientImpl;->mAddOrUpdateChannelAttrCallbacks:Lio/agora/common/LruCache;

    .line 18
    new-instance v0, Lio/agora/common/LruCache;

    invoke-direct {v0, v1}, Lio/agora/common/LruCache;-><init>(I)V

    iput-object v0, p0, Lio/agora/rtm/internal/RtmClientImpl;->mDeleteChannelAttrCallbacks:Lio/agora/common/LruCache;

    .line 19
    new-instance v0, Lio/agora/common/LruCache;

    invoke-direct {v0, v1}, Lio/agora/common/LruCache;-><init>(I)V

    iput-object v0, p0, Lio/agora/rtm/internal/RtmClientImpl;->mClearChannelAttrCallbacks:Lio/agora/common/LruCache;

    .line 20
    new-instance v0, Lio/agora/common/LruCache;

    invoke-direct {v0, v1}, Lio/agora/common/LruCache;-><init>(I)V

    iput-object v0, p0, Lio/agora/rtm/internal/RtmClientImpl;->mGetChannelAttrCallbacks:Lio/agora/common/LruCache;

    .line 21
    new-instance v0, Lio/agora/common/LruCache;

    invoke-direct {v0, v1}, Lio/agora/common/LruCache;-><init>(I)V

    iput-object v0, p0, Lio/agora/rtm/internal/RtmClientImpl;->mGetChannelMemberCountCallbacks:Lio/agora/common/LruCache;

    .line 22
    new-instance v0, Lio/agora/common/LruCache;

    invoke-direct {v0, v1}, Lio/agora/common/LruCache;-><init>(I)V

    iput-object v0, p0, Lio/agora/rtm/internal/RtmClientImpl;->mUploadFileMediaCallbacks:Lio/agora/common/LruCache;

    .line 23
    new-instance v0, Lio/agora/common/LruCache;

    invoke-direct {v0, v1}, Lio/agora/common/LruCache;-><init>(I)V

    iput-object v0, p0, Lio/agora/rtm/internal/RtmClientImpl;->mUploadImageMediaCallbacks:Lio/agora/common/LruCache;

    .line 24
    new-instance v0, Lio/agora/common/LruCache;

    invoke-direct {v0, v1}, Lio/agora/common/LruCache;-><init>(I)V

    iput-object v0, p0, Lio/agora/rtm/internal/RtmClientImpl;->mDownloadMediaToMemoryCallbacks:Lio/agora/common/LruCache;

    .line 25
    new-instance v0, Lio/agora/common/LruCache;

    invoke-direct {v0, v1}, Lio/agora/common/LruCache;-><init>(I)V

    iput-object v0, p0, Lio/agora/rtm/internal/RtmClientImpl;->mDownloadMediaToFileCallbacks:Lio/agora/common/LruCache;

    .line 26
    new-instance v0, Lio/agora/common/LruCache;

    invoke-direct {v0, v1}, Lio/agora/common/LruCache;-><init>(I)V

    iput-object v0, p0, Lio/agora/rtm/internal/RtmClientImpl;->mCancelMediaCallbacks:Lio/agora/common/LruCache;

    .line 27
    iput-object p3, p0, Lio/agora/rtm/internal/RtmClientImpl;->mClientListener:Lio/agora/rtm/RtmClientListener;

    .line 28
    invoke-direct {p0, p1, p2}, Lio/agora/rtm/internal/RtmClientImpl;->initRtmService(Lio/agora/rtm/internal/RtmSdkContext;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lio/agora/rtm/internal/RtmClientImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$1000(Lio/agora/rtm/internal/RtmClientImpl;)Lio/agora/common/LruCache;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/agora/rtm/internal/RtmClientImpl;->mDownloadMediaToMemoryCallbacks:Lio/agora/common/LruCache;

    return-object p0
.end method

.method public static synthetic access$1100(Lio/agora/rtm/internal/RtmClientImpl;)Lio/agora/common/LruCache;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/agora/rtm/internal/RtmClientImpl;->mCancelMediaCallbacks:Lio/agora/common/LruCache;

    return-object p0
.end method

.method public static synthetic access$1200(Lio/agora/rtm/internal/RtmClientImpl;)Lio/agora/common/LruCache;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/agora/rtm/internal/RtmClientImpl;->mQueryOnlineStatusCallbacks:Lio/agora/common/LruCache;

    return-object p0
.end method

.method public static synthetic access$1300(Lio/agora/rtm/internal/RtmClientImpl;)Lio/agora/common/LruCache;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/agora/rtm/internal/RtmClientImpl;->mSubscribePeersOnlineStatusCallbacks:Lio/agora/common/LruCache;

    return-object p0
.end method

.method public static synthetic access$1400(Lio/agora/rtm/internal/RtmClientImpl;)Lio/agora/common/LruCache;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/agora/rtm/internal/RtmClientImpl;->mQueryPeersBySubscriptionOptionCallbacks:Lio/agora/common/LruCache;

    return-object p0
.end method

.method public static synthetic access$1500(Lio/agora/rtm/internal/RtmClientImpl;Lio/agora/rtm/jni/PEER_ONLINE_STATE;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/agora/rtm/internal/RtmClientImpl;->covertPeerOnlineState(Lio/agora/rtm/jni/PEER_ONLINE_STATE;)I

    move-result p0

    return p0
.end method

.method public static synthetic access$1600(Lio/agora/rtm/internal/RtmClientImpl;)Lio/agora/common/LruCache;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRenewTokenCallbacks:Lio/agora/common/LruCache;

    return-object p0
.end method

.method public static synthetic access$1700(Lio/agora/rtm/internal/RtmClientImpl;)Lio/agora/common/LruCache;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/agora/rtm/internal/RtmClientImpl;->mSetLocalUserAttrCallbacks:Lio/agora/common/LruCache;

    return-object p0
.end method

.method public static synthetic access$1800(Lio/agora/rtm/internal/RtmClientImpl;)Lio/agora/common/LruCache;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/agora/rtm/internal/RtmClientImpl;->mAddOrUpdateLocalUserAttrCallbacks:Lio/agora/common/LruCache;

    return-object p0
.end method

.method public static synthetic access$1900(Lio/agora/rtm/internal/RtmClientImpl;)Lio/agora/common/LruCache;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/agora/rtm/internal/RtmClientImpl;->mDeleteLocalUserAttrCallbacks:Lio/agora/common/LruCache;

    return-object p0
.end method

.method public static synthetic access$200(Lio/agora/rtm/internal/RtmClientImpl;)[B
    .locals 0

    .line 1
    iget-object p0, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmCallbackLock:[B

    return-object p0
.end method

.method public static synthetic access$2000(Lio/agora/rtm/internal/RtmClientImpl;)Lio/agora/common/LruCache;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/agora/rtm/internal/RtmClientImpl;->mClearLocalUserAttrCallbacks:Lio/agora/common/LruCache;

    return-object p0
.end method

.method public static synthetic access$2100(Lio/agora/rtm/internal/RtmClientImpl;)Lio/agora/common/LruCache;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/agora/rtm/internal/RtmClientImpl;->mGetUserAttrCallbacks:Lio/agora/common/LruCache;

    return-object p0
.end method

.method public static synthetic access$2200(Lio/agora/rtm/internal/RtmClientImpl;)Lio/agora/common/LruCache;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/agora/rtm/internal/RtmClientImpl;->mSetChannelAttrCallbacks:Lio/agora/common/LruCache;

    return-object p0
.end method

.method public static synthetic access$2300(Lio/agora/rtm/internal/RtmClientImpl;)Lio/agora/common/LruCache;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/agora/rtm/internal/RtmClientImpl;->mAddOrUpdateChannelAttrCallbacks:Lio/agora/common/LruCache;

    return-object p0
.end method

.method public static synthetic access$2400(Lio/agora/rtm/internal/RtmClientImpl;)Lio/agora/common/LruCache;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/agora/rtm/internal/RtmClientImpl;->mDeleteChannelAttrCallbacks:Lio/agora/common/LruCache;

    return-object p0
.end method

.method public static synthetic access$2500(Lio/agora/rtm/internal/RtmClientImpl;)Lio/agora/common/LruCache;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/agora/rtm/internal/RtmClientImpl;->mClearChannelAttrCallbacks:Lio/agora/common/LruCache;

    return-object p0
.end method

.method public static synthetic access$2600(Lio/agora/rtm/internal/RtmClientImpl;)Lio/agora/common/LruCache;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/agora/rtm/internal/RtmClientImpl;->mGetChannelAttrCallbacks:Lio/agora/common/LruCache;

    return-object p0
.end method

.method public static synthetic access$2700(Lio/agora/rtm/internal/RtmClientImpl;)Lio/agora/common/LruCache;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/agora/rtm/internal/RtmClientImpl;->mGetChannelMemberCountCallbacks:Lio/agora/common/LruCache;

    return-object p0
.end method

.method public static synthetic access$300(Lio/agora/rtm/internal/RtmClientImpl;)Lio/agora/rtm/ResultCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/agora/rtm/internal/RtmClientImpl;->mLoginCallback:Lio/agora/rtm/ResultCallback;

    return-object p0
.end method

.method public static synthetic access$302(Lio/agora/rtm/internal/RtmClientImpl;Lio/agora/rtm/ResultCallback;)Lio/agora/rtm/ResultCallback;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/agora/rtm/internal/RtmClientImpl;->mLoginCallback:Lio/agora/rtm/ResultCallback;

    return-object p1
.end method

.method public static synthetic access$400(Lio/agora/rtm/internal/RtmClientImpl;)Lio/agora/rtm/ResultCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/agora/rtm/internal/RtmClientImpl;->mLogoutCallback:Lio/agora/rtm/ResultCallback;

    return-object p0
.end method

.method public static synthetic access$402(Lio/agora/rtm/internal/RtmClientImpl;Lio/agora/rtm/ResultCallback;)Lio/agora/rtm/ResultCallback;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/agora/rtm/internal/RtmClientImpl;->mLogoutCallback:Lio/agora/rtm/ResultCallback;

    return-object p1
.end method

.method public static synthetic access$500(Lio/agora/rtm/internal/RtmClientImpl;)Lio/agora/common/LruCache;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/agora/rtm/internal/RtmClientImpl;->mSendPeerMessageCallbacks:Lio/agora/common/LruCache;

    return-object p0
.end method

.method public static synthetic access$600(Lio/agora/rtm/internal/RtmClientImpl;)Lio/agora/rtm/RtmClientListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/agora/rtm/internal/RtmClientImpl;->mClientListener:Lio/agora/rtm/RtmClientListener;

    return-object p0
.end method

.method public static synthetic access$700(Lio/agora/rtm/internal/RtmClientImpl;)Lio/agora/common/LruCache;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/agora/rtm/internal/RtmClientImpl;->mUploadFileMediaCallbacks:Lio/agora/common/LruCache;

    return-object p0
.end method

.method public static synthetic access$800(Lio/agora/rtm/internal/RtmClientImpl;)Lio/agora/common/LruCache;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/agora/rtm/internal/RtmClientImpl;->mUploadImageMediaCallbacks:Lio/agora/common/LruCache;

    return-object p0
.end method

.method public static synthetic access$900(Lio/agora/rtm/internal/RtmClientImpl;)Lio/agora/common/LruCache;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/agora/rtm/internal/RtmClientImpl;->mDownloadMediaToFileCallbacks:Lio/agora/common/LruCache;

    return-object p0
.end method

.method private convertAttrListToInternal(Ljava/util/List;)[Lio/agora/rtm/jni/IRtmAttribute;
    .locals 5
    .param p1    # Ljava/util/List;
        .annotation build Lio/agora/common/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/agora/rtm/RtmAttribute;",
            ">;)[",
            "Lio/agora/rtm/jni/IRtmAttribute;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lio/agora/rtm/jni/IRtmAttribute;

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/agora/rtm/RtmAttribute;

    .line 4
    new-instance v3, Lio/agora/rtm/jni/IRtmAttribute;

    invoke-direct {v3}, Lio/agora/rtm/jni/IRtmAttribute;-><init>()V

    .line 5
    invoke-virtual {v2}, Lio/agora/rtm/RtmAttribute;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/agora/rtm/jni/IRtmAttribute;->setKey(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v2}, Lio/agora/rtm/RtmAttribute;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lio/agora/rtm/jni/IRtmAttribute;->setValue(Ljava/lang/String;)V

    .line 7
    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private convertChannelAttrListToInternal(Ljava/util/List;)[Lio/agora/rtm/jni/IRtmChannelAttribute;
    .locals 6
    .param p1    # Ljava/util/List;
        .annotation build Lio/agora/common/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/agora/rtm/RtmChannelAttribute;",
            ">;)[",
            "Lio/agora/rtm/jni/IRtmChannelAttribute;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lio/agora/rtm/jni/IRtmChannelAttribute;

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/agora/rtm/RtmChannelAttribute;

    .line 4
    new-instance v3, Lio/agora/rtm/jni/IRtmChannelAttribute;

    iget-wide v4, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmServiceNativeHandle:J

    invoke-direct {v3, v4, v5}, Lio/agora/rtm/jni/IRtmChannelAttribute;-><init>(J)V

    .line 5
    invoke-virtual {v2}, Lio/agora/rtm/RtmChannelAttribute;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/agora/rtm/jni/IRtmChannelAttribute;->setKey(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v2}, Lio/agora/rtm/RtmChannelAttribute;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lio/agora/rtm/jni/IRtmChannelAttribute;->setValue(Ljava/lang/String;)V

    .line 7
    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private convertChannelAttrOptToInternal(Lio/agora/rtm/ChannelAttributeOptions;)Lio/agora/rtm/jni/IChannelAttributeOptions;
    .locals 1
    .param p1    # Lio/agora/rtm/ChannelAttributeOptions;
        .annotation build Lio/agora/common/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lio/agora/rtm/jni/IChannelAttributeOptions;

    invoke-direct {v0}, Lio/agora/rtm/jni/IChannelAttributeOptions;-><init>()V

    .line 2
    invoke-virtual {p1}, Lio/agora/rtm/ChannelAttributeOptions;->getEnableNotificationToChannelMembers()Z

    move-result p1

    invoke-virtual {v0, p1}, Lio/agora/rtm/jni/IChannelAttributeOptions;->setEnableNotificationToChannelMembers(Z)V

    return-object v0
.end method

.method private covertPeerOnlineState(Lio/agora/rtm/jni/PEER_ONLINE_STATE;)I
    .locals 1

    .line 1
    sget-object v0, Lio/agora/rtm/jni/PEER_ONLINE_STATE;->PEER_ONLINE_STATE_ONLINE:Lio/agora/rtm/jni/PEER_ONLINE_STATE;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    sget-object v0, Lio/agora/rtm/jni/PEER_ONLINE_STATE;->PEER_ONLINE_STATE_UNREACHABLE:Lio/agora/rtm/jni/PEER_ONLINE_STATE;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 3
    :cond_1
    sget-object v0, Lio/agora/rtm/jni/PEER_ONLINE_STATE;->PEER_ONLINE_STATE_OFFLINE:Lio/agora/rtm/jni/PEER_ONLINE_STATE;

    if-ne p1, v0, :cond_2

    const/4 p1, 0x2

    return p1

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method private static varargs formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initRtmService(Lio/agora/rtm/internal/RtmSdkContext;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p1}, Lio/agora/rtm/internal/RtmSdkContext;->getConfigDir()Ljava/lang/String;

    move-result-object v5

    .line 3
    invoke-virtual {p1}, Lio/agora/rtm/internal/RtmSdkContext;->getDataDir()Ljava/lang/String;

    move-result-object v6

    .line 4
    invoke-virtual {p1}, Lio/agora/rtm/internal/RtmSdkContext;->getPluginDir()Ljava/lang/String;

    move-result-object v7

    .line 5
    invoke-virtual {p1}, Lio/agora/rtm/internal/RtmSdkContext;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-virtual {p1}, Lio/agora/rtm/internal/RtmSdkContext;->getDeviceInfo()Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-virtual {p1}, Lio/agora/rtm/internal/RtmSdkContext;->getSystemInfo()Ljava/lang/String;

    move-result-object v4

    .line 8
    sget-object p1, Lio/agora/rtm/internal/RtmClientImpl;->TAG:Ljava/lang/String;

    const-string v0, "Initialize Agora RTM service deviceId \'"

    const-string v1, "\' deviceInfo \'"

    const-string v8, "\' systemInfo \'"

    invoke-static {v0, v2, v1, v3, v8}, Le/d/c/a/a;->M(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' dir \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmLock:[B

    monitor-enter v0

    move-object v1, p2

    .line 10
    :try_start_0
    invoke-static/range {v1 .. v7}, Lio/agora/common/AgoraServiceJNI;->createRtmService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmServiceNativeHandle:J

    .line 11
    new-instance v3, Lio/agora/rtm/jni/IRtmService;

    const/4 v4, 0x1

    invoke-direct {v3, v1, v2, v4}, Lio/agora/rtm/jni/IRtmService;-><init>(JZ)V

    iput-object v3, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmServiceNative:Lio/agora/rtm/jni/IRtmService;

    .line 12
    new-instance v1, Lio/agora/rtm/internal/RtmClientImpl$RtmServiceEventHandlerNative;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lio/agora/rtm/internal/RtmClientImpl$RtmServiceEventHandlerNative;-><init>(Lio/agora/rtm/internal/RtmClientImpl;Lio/agora/rtm/internal/RtmClientImpl$1;)V

    iput-object v1, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmEventHandlerNative:Lio/agora/rtm/internal/RtmClientImpl$RtmServiceEventHandlerNative;

    .line 13
    iget-object v2, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmServiceNative:Lio/agora/rtm/jni/IRtmService;

    invoke-virtual {v2, p2, v1}, Lio/agora/rtm/jni/IRtmService;->initialize(Ljava/lang/String;Lio/agora/rtm/jni/IRtmServiceEventHandler;)I

    move-result v1

    if-nez v1, :cond_0

    .line 14
    iput-boolean v4, p0, Lio/agora/rtm/internal/RtmClientImpl;->mIsInitialized:Z

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init done. appId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lio/agora/common/Logging;->desensetize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " this: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lio/agora/common/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    monitor-exit v0

    return-void

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot initialize Agora RTM Service, error: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 19
    :cond_1
    sget-object p1, Lio/agora/rtm/internal/RtmClientImpl;->TAG:Ljava/lang/String;

    const-string p2, "empty context or appId!"

    invoke-static {p1, p2}, Lio/agora/common/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private isNativeReady()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmServiceNative:Lio/agora/rtm/jni/IRtmService;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lio/agora/rtm/internal/RtmClientImpl;->TAG:Ljava/lang/String;

    const-string v1, "rtm native is not ready"

    invoke-static {v0, v1}, Lio/agora/common/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private processAttrApiError(Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;Lio/agora/rtm/ResultCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;",
            "Lio/agora/rtm/ResultCallback<",
            "*>;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;->ATTRIBUTE_OPERATION_ERR_OK:Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;

    if-eq p1, v0, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 2
    sget-object p1, Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;->ATTRIBUTE_OPERATION_ERR_FAILURE:Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;

    .line 3
    :cond_1
    new-instance v0, Lio/agora/rtm/ErrorInfo;

    invoke-virtual {p1}, Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;->swigValue()I

    move-result v1

    invoke-virtual {p1}, Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lio/agora/rtm/ErrorInfo;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, v0}, Lio/agora/rtm/ResultCallback;->onFailure(Lio/agora/rtm/ErrorInfo;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private processGetChannelMemberCountApiError(Lio/agora/rtm/jni/GET_CHANNEL_MEMBER_COUNT_ERR;Lio/agora/rtm/ResultCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/agora/rtm/jni/GET_CHANNEL_MEMBER_COUNT_ERR;",
            "Lio/agora/rtm/ResultCallback<",
            "*>;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/agora/rtm/jni/GET_CHANNEL_MEMBER_COUNT_ERR;->GET_CHANNEL_MEMBER_COUNT_ERR_OK:Lio/agora/rtm/jni/GET_CHANNEL_MEMBER_COUNT_ERR;

    if-eq p1, v0, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 2
    sget-object p1, Lio/agora/rtm/jni/GET_CHANNEL_MEMBER_COUNT_ERR;->GET_CHANNEL_MEMBER_COUNT_ERR_FAILURE:Lio/agora/rtm/jni/GET_CHANNEL_MEMBER_COUNT_ERR;

    .line 3
    :cond_1
    new-instance v0, Lio/agora/rtm/ErrorInfo;

    invoke-virtual {p1}, Lio/agora/rtm/jni/GET_CHANNEL_MEMBER_COUNT_ERR;->swigValue()I

    move-result v1

    invoke-virtual {p1}, Lio/agora/rtm/jni/GET_CHANNEL_MEMBER_COUNT_ERR;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lio/agora/rtm/ErrorInfo;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, v0}, Lio/agora/rtm/ResultCallback;->onFailure(Lio/agora/rtm/ErrorInfo;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private setParameter(Ljava/lang/String;D)I
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 4
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const-string p1, "{\"%s\":%f}"

    invoke-static {p1, v0}, Lio/agora/rtm/internal/RtmClientImpl;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/agora/rtm/internal/RtmClientImpl;->setParameters(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private setParameter(Ljava/lang/String;I)I
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const-string p1, "{\"%s\":%d}"

    invoke-static {p1, v0}, Lio/agora/rtm/internal/RtmClientImpl;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/agora/rtm/internal/RtmClientImpl;->setParameters(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private setParameter(Ljava/lang/String;J)I
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 3
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const-string p1, "{\"%s\":%d}"

    invoke-static {p1, v0}, Lio/agora/rtm/internal/RtmClientImpl;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/agora/rtm/internal/RtmClientImpl;->setParameters(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private setParameter(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "{\"%s\":\"%s\"}"

    .line 5
    invoke-static {p1, v0}, Lio/agora/rtm/internal/RtmClientImpl;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/agora/rtm/internal/RtmClientImpl;->setParameters(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private setParameter(Ljava/lang/String;Z)I
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 1
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const-string p1, "{\"%s\":%b}"

    invoke-static {p1, v0}, Lio/agora/rtm/internal/RtmClientImpl;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/agora/rtm/internal/RtmClientImpl;->setParameters(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private setParameterObject(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "{\"%s\":%s}"

    .line 1
    invoke-static {p1, v0}, Lio/agora/rtm/internal/RtmClientImpl;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/agora/rtm/internal/RtmClientImpl;->setParameters(Ljava/lang/String;)I

    move-result p1

    return p1
.end method


# virtual methods
.method public addOrUpdateChannelAttributes(Ljava/lang/String;Ljava/util/List;Lio/agora/rtm/ChannelAttributeOptions;Lio/agora/rtm/ResultCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lio/agora/rtm/RtmChannelAttribute;",
            ">;",
            "Lio/agora/rtm/ChannelAttributeOptions;",
            "Lio/agora/rtm/ResultCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/agora/rtm/internal/RtmClientImpl;->TAG:Ljava/lang/String;

    const-string v1, "addOrUpdateChannelAttributes"

    invoke-static {v0, v1}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_3

    .line 2
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-direct {p0, p2}, Lio/agora/rtm/internal/RtmClientImpl;->convertChannelAttrListToInternal(Ljava/util/List;)[Lio/agora/rtm/jni/IRtmChannelAttribute;

    move-result-object p2

    .line 4
    invoke-direct {p0, p3}, Lio/agora/rtm/internal/RtmClientImpl;->convertChannelAttrOptToInternal(Lio/agora/rtm/ChannelAttributeOptions;)Lio/agora/rtm/jni/IChannelAttributeOptions;

    move-result-object p3

    .line 5
    new-instance v1, Lio/agora/rtm/jni/SWIGTYPE_p_long_long;

    invoke-direct {v1}, Lio/agora/rtm/jni/SWIGTYPE_p_long_long;-><init>()V

    .line 6
    iget-object v2, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmLock:[B

    monitor-enter v2

    .line 7
    :try_start_0
    invoke-direct {p0}, Lio/agora/rtm/internal/RtmClientImpl;->isNativeReady()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 8
    iget-object v3, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmCallbackLock:[B

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    :try_start_1
    iget-object v4, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmServiceNative:Lio/agora/rtm/jni/IRtmService;

    invoke-virtual {v4, p1, p2, p3, v1}, Lio/agora/rtm/jni/IRtmService;->addOrUpdateChannelAttributes(Ljava/lang/String;[Lio/agora/rtm/jni/IRtmChannelAttribute;Lio/agora/rtm/jni/IChannelAttributeOptions;Lio/agora/rtm/jni/SWIGTYPE_p_long_long;)I

    move-result p1

    .line 10
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "addOrUpdateChannelAttributes ret: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    const-class p2, Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;

    invoke-static {p1, p2}, Lio/agora/rtm/internal/RtmSdkContext;->swigValueToEnumSafe(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;

    .line 12
    sget-object p2, Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;->ATTRIBUTE_OPERATION_ERR_OK:Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;

    if-ne p1, p2, :cond_1

    if-eqz p4, :cond_1

    .line 13
    iget-object p2, p0, Lio/agora/rtm/internal/RtmClientImpl;->mAddOrUpdateChannelAttrCallbacks:Lio/agora/common/LruCache;

    invoke-static {v1}, Lio/agora/rtm/jni/SWIGTYPE_p_long_long;->dereference(Lio/agora/rtm/jni/SWIGTYPE_p_long_long;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p2, p3, p4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :cond_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1

    :cond_2
    const/4 p1, 0x0

    .line 15
    :goto_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 16
    invoke-direct {p0, p1, p4}, Lio/agora/rtm/internal/RtmClientImpl;->processAttrApiError(Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;Lio/agora/rtm/ResultCallback;)V

    return-void

    :catchall_1
    move-exception p1

    .line 17
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :cond_3
    :goto_1
    const-string p1, "attribute list is null or empty!"

    .line 18
    invoke-static {v0, p1}, Lio/agora/common/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    sget-object p1, Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;->ATTRIBUTE_OPERATION_ERR_INVALID_ARGUMENT:Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;

    invoke-direct {p0, p1, p4}, Lio/agora/rtm/internal/RtmClientImpl;->processAttrApiError(Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;Lio/agora/rtm/ResultCallback;)V

    return-void
.end method

.method public addOrUpdateLocalUserAttributes(Ljava/util/List;Lio/agora/rtm/ResultCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/agora/rtm/RtmAttribute;",
            ">;",
            "Lio/agora/rtm/ResultCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/agora/rtm/internal/RtmClientImpl;->TAG:Ljava/lang/String;

    const-string v1, "addOrUpdateLocalUserAttributes"

    invoke-static {v0, v1}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    .line 2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lio/agora/rtm/internal/RtmClientImpl;->convertAttrListToInternal(Ljava/util/List;)[Lio/agora/rtm/jni/IRtmAttribute;

    move-result-object p1

    .line 4
    new-instance v1, Lio/agora/rtm/jni/SWIGTYPE_p_long_long;

    invoke-direct {v1}, Lio/agora/rtm/jni/SWIGTYPE_p_long_long;-><init>()V

    .line 5
    iget-object v2, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmLock:[B

    monitor-enter v2

    .line 6
    :try_start_0
    invoke-direct {p0}, Lio/agora/rtm/internal/RtmClientImpl;->isNativeReady()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 7
    iget-object v3, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmCallbackLock:[B

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    :try_start_1
    iget-object v4, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmServiceNative:Lio/agora/rtm/jni/IRtmService;

    invoke-virtual {v4, p1, v1}, Lio/agora/rtm/jni/IRtmService;->addOrUpdateLocalUserAttributes([Lio/agora/rtm/jni/IRtmAttribute;Lio/agora/rtm/jni/SWIGTYPE_p_long_long;)I

    move-result p1

    .line 9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addOrUpdateLocalUserAttributes ret: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    const-class v0, Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;

    invoke-static {p1, v0}, Lio/agora/rtm/internal/RtmSdkContext;->swigValueToEnumSafe(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;

    .line 11
    sget-object v0, Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;->ATTRIBUTE_OPERATION_ERR_OK:Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_1

    .line 12
    iget-object v0, p0, Lio/agora/rtm/internal/RtmClientImpl;->mAddOrUpdateLocalUserAttrCallbacks:Lio/agora/common/LruCache;

    invoke-static {v1}, Lio/agora/rtm/jni/SWIGTYPE_p_long_long;->dereference(Lio/agora/rtm/jni/SWIGTYPE_p_long_long;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    :cond_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1

    :cond_2
    const/4 p1, 0x0

    .line 14
    :goto_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 15
    invoke-direct {p0, p1, p2}, Lio/agora/rtm/internal/RtmClientImpl;->processAttrApiError(Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;Lio/agora/rtm/ResultCallback;)V

    return-void

    :catchall_1
    move-exception p1

    .line 16
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :cond_3
    :goto_1
    const-string p1, "attribute list is null or empty!"

    .line 17
    invoke-static {v0, p1}, Lio/agora/common/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    sget-object p1, Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;->ATTRIBUTE_OPERATION_ERR_INVALID_ARGUMENT:Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;

    invoke-direct {p0, p1, p2}, Lio/agora/rtm/internal/RtmClientImpl;->processAttrApiError(Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;Lio/agora/rtm/ResultCallback;)V

    return-void
.end method

.method public cancelMediaDownload(Lio/agora/rtm/RtmRequestId;Lio/agora/rtm/ResultCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/agora/rtm/RtmRequestId;",
            "Lio/agora/rtm/ResultCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/agora/rtm/internal/RtmClientImpl;->TAG:Ljava/lang/String;

    const-string v1, "cancelMediaDownload requestId: "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lio/agora/rtm/RtmRequestId;->getRequestId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmLock:[B

    monitor-enter v1

    .line 3
    :try_start_0
    invoke-direct {p0}, Lio/agora/rtm/internal/RtmClientImpl;->isNativeReady()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    iget-object v2, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmCallbackLock:[B

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    iget-object v3, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmServiceNative:Lio/agora/rtm/jni/IRtmService;

    invoke-virtual {p1}, Lio/agora/rtm/RtmRequestId;->getRequestId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lio/agora/rtm/jni/IRtmService;->cancelMediaDownload(J)I

    move-result v3

    .line 6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cancelMediaDownload, ret: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    const-class v0, Lio/agora/rtm/jni/CANCEL_MEDIA_ERR_CODE;

    invoke-static {v3, v0}, Lio/agora/rtm/internal/RtmSdkContext;->swigValueToEnumSafe(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/agora/rtm/jni/CANCEL_MEDIA_ERR_CODE;

    .line 8
    sget-object v3, Lio/agora/rtm/jni/CANCEL_MEDIA_ERR_CODE;->CANCEL_MEDIA_ERR_OK:Lio/agora/rtm/jni/CANCEL_MEDIA_ERR_CODE;

    if-ne v0, v3, :cond_0

    if-eqz p2, :cond_0

    .line 9
    iget-object v3, p0, Lio/agora/rtm/internal/RtmClientImpl;->mCancelMediaCallbacks:Lio/agora/common/LruCache;

    invoke-virtual {p1}, Lio/agora/rtm/RtmRequestId;->getRequestId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v3, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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
    sget-object p1, Lio/agora/rtm/jni/CANCEL_MEDIA_ERR_CODE;->CANCEL_MEDIA_ERR_OK:Lio/agora/rtm/jni/CANCEL_MEDIA_ERR_CODE;

    if-eq v0, p1, :cond_3

    if-eqz p2, :cond_3

    if-nez v0, :cond_2

    .line 13
    sget-object v0, Lio/agora/rtm/jni/CANCEL_MEDIA_ERR_CODE;->CANCEL_MEDIA_ERR_FAILURE:Lio/agora/rtm/jni/CANCEL_MEDIA_ERR_CODE;

    .line 14
    :cond_2
    new-instance p1, Lio/agora/rtm/ErrorInfo;

    invoke-virtual {v0}, Lio/agora/rtm/jni/CANCEL_MEDIA_ERR_CODE;->swigValue()I

    move-result v1

    invoke-virtual {v0}, Lio/agora/rtm/jni/CANCEL_MEDIA_ERR_CODE;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Lio/agora/rtm/ErrorInfo;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, p1}, Lio/agora/rtm/ResultCallback;->onFailure(Lio/agora/rtm/ErrorInfo;)V

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

.method public cancelMediaUpload(Lio/agora/rtm/RtmRequestId;Lio/agora/rtm/ResultCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/agora/rtm/RtmRequestId;",
            "Lio/agora/rtm/ResultCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/agora/rtm/internal/RtmClientImpl;->TAG:Ljava/lang/String;

    const-string v1, "cancelMediaUpload requestId: "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lio/agora/rtm/RtmRequestId;->getRequestId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmLock:[B

    monitor-enter v1

    .line 3
    :try_start_0
    invoke-direct {p0}, Lio/agora/rtm/internal/RtmClientImpl;->isNativeReady()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    iget-object v2, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmCallbackLock:[B

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    iget-object v3, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmServiceNative:Lio/agora/rtm/jni/IRtmService;

    invoke-virtual {p1}, Lio/agora/rtm/RtmRequestId;->getRequestId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lio/agora/rtm/jni/IRtmService;->cancelMediaUpload(J)I

    move-result v3

    .line 6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cancelMediaUpload, ret: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    const-class v0, Lio/agora/rtm/jni/CANCEL_MEDIA_ERR_CODE;

    invoke-static {v3, v0}, Lio/agora/rtm/internal/RtmSdkContext;->swigValueToEnumSafe(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/agora/rtm/jni/CANCEL_MEDIA_ERR_CODE;

    .line 8
    sget-object v3, Lio/agora/rtm/jni/CANCEL_MEDIA_ERR_CODE;->CANCEL_MEDIA_ERR_OK:Lio/agora/rtm/jni/CANCEL_MEDIA_ERR_CODE;

    if-ne v0, v3, :cond_0

    if-eqz p2, :cond_0

    .line 9
    iget-object v3, p0, Lio/agora/rtm/internal/RtmClientImpl;->mCancelMediaCallbacks:Lio/agora/common/LruCache;

    invoke-virtual {p1}, Lio/agora/rtm/RtmRequestId;->getRequestId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v3, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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
    sget-object p1, Lio/agora/rtm/jni/CANCEL_MEDIA_ERR_CODE;->CANCEL_MEDIA_ERR_OK:Lio/agora/rtm/jni/CANCEL_MEDIA_ERR_CODE;

    if-eq v0, p1, :cond_3

    if-eqz p2, :cond_3

    if-nez v0, :cond_2

    .line 13
    sget-object v0, Lio/agora/rtm/jni/CANCEL_MEDIA_ERR_CODE;->CANCEL_MEDIA_ERR_FAILURE:Lio/agora/rtm/jni/CANCEL_MEDIA_ERR_CODE;

    .line 14
    :cond_2
    new-instance p1, Lio/agora/rtm/ErrorInfo;

    invoke-virtual {v0}, Lio/agora/rtm/jni/CANCEL_MEDIA_ERR_CODE;->swigValue()I

    move-result v1

    invoke-virtual {v0}, Lio/agora/rtm/jni/CANCEL_MEDIA_ERR_CODE;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Lio/agora/rtm/ErrorInfo;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, p1}, Lio/agora/rtm/ResultCallback;->onFailure(Lio/agora/rtm/ErrorInfo;)V

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

.method public clearChannelAttributes(Ljava/lang/String;Lio/agora/rtm/ChannelAttributeOptions;Lio/agora/rtm/ResultCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/agora/rtm/ChannelAttributeOptions;",
            "Lio/agora/rtm/ResultCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/agora/rtm/internal/RtmClientImpl;->TAG:Ljava/lang/String;

    const-string v1, "clearChannelAttributes"

    invoke-static {v0, v1}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p2}, Lio/agora/rtm/internal/RtmClientImpl;->convertChannelAttrOptToInternal(Lio/agora/rtm/ChannelAttributeOptions;)Lio/agora/rtm/jni/IChannelAttributeOptions;

    move-result-object p2

    .line 3
    new-instance v1, Lio/agora/rtm/jni/SWIGTYPE_p_long_long;

    invoke-direct {v1}, Lio/agora/rtm/jni/SWIGTYPE_p_long_long;-><init>()V

    .line 4
    iget-object v2, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmLock:[B

    monitor-enter v2

    .line 5
    :try_start_0
    invoke-direct {p0}, Lio/agora/rtm/internal/RtmClientImpl;->isNativeReady()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6
    iget-object v3, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmCallbackLock:[B

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    :try_start_1
    iget-object v4, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmServiceNative:Lio/agora/rtm/jni/IRtmService;

    invoke-virtual {v4, p1, p2, v1}, Lio/agora/rtm/jni/IRtmService;->clearChannelAttributes(Ljava/lang/String;Lio/agora/rtm/jni/IChannelAttributeOptions;Lio/agora/rtm/jni/SWIGTYPE_p_long_long;)I

    move-result p1

    .line 8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clearChannelAttributes ret: "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    const-class p2, Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;

    invoke-static {p1, p2}, Lio/agora/rtm/internal/RtmSdkContext;->swigValueToEnumSafe(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;

    .line 10
    sget-object p2, Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;->ATTRIBUTE_OPERATION_ERR_OK:Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;

    if-ne p1, p2, :cond_0

    if-eqz p3, :cond_0

    .line 11
    iget-object p2, p0, Lio/agora/rtm/internal/RtmClientImpl;->mClearChannelAttrCallbacks:Lio/agora/common/LruCache;

    invoke-static {v1}, Lio/agora/rtm/jni/SWIGTYPE_p_long_long;->dereference(Lio/agora/rtm/jni/SWIGTYPE_p_long_long;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v0, p3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :cond_0
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1

    :cond_1
    const/4 p1, 0x0

    .line 13
    :goto_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 14
    invoke-direct {p0, p1, p3}, Lio/agora/rtm/internal/RtmClientImpl;->processAttrApiError(Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;Lio/agora/rtm/ResultCallback;)V

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

.method public clearLocalUserAttributes(Lio/agora/rtm/ResultCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/agora/rtm/ResultCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/agora/rtm/internal/RtmClientImpl;->TAG:Ljava/lang/String;

    const-string v1, "clearLocalUserAttributes"

    invoke-static {v0, v1}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v1, Lio/agora/rtm/jni/SWIGTYPE_p_long_long;

    invoke-direct {v1}, Lio/agora/rtm/jni/SWIGTYPE_p_long_long;-><init>()V

    .line 3
    iget-object v2, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmLock:[B

    monitor-enter v2

    .line 4
    :try_start_0
    invoke-direct {p0}, Lio/agora/rtm/internal/RtmClientImpl;->isNativeReady()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5
    iget-object v3, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmCallbackLock:[B

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :try_start_1
    iget-object v4, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmServiceNative:Lio/agora/rtm/jni/IRtmService;

    invoke-virtual {v4, v1}, Lio/agora/rtm/jni/IRtmService;->clearLocalUserAttributes(Lio/agora/rtm/jni/SWIGTYPE_p_long_long;)I

    move-result v4

    .line 7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "clearLocalUserAttributes ret: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    const-class v0, Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;

    invoke-static {v4, v0}, Lio/agora/rtm/internal/RtmSdkContext;->swigValueToEnumSafe(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;

    .line 9
    sget-object v4, Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;->ATTRIBUTE_OPERATION_ERR_OK:Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;

    if-ne v0, v4, :cond_0

    if-eqz p1, :cond_0

    .line 10
    iget-object v4, p0, Lio/agora/rtm/internal/RtmClientImpl;->mClearLocalUserAttrCallbacks:Lio/agora/common/LruCache;

    invoke-static {v1}, Lio/agora/rtm/jni/SWIGTYPE_p_long_long;->dereference(Lio/agora/rtm/jni/SWIGTYPE_p_long_long;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v1, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    :cond_0
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1

    :cond_1
    const/4 v0, 0x0

    .line 12
    :goto_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 13
    invoke-direct {p0, v0, p1}, Lio/agora/rtm/internal/RtmClientImpl;->processAttrApiError(Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;Lio/agora/rtm/ResultCallback;)V

    return-void

    :catchall_1
    move-exception p1

    .line 14
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public createChannel(Ljava/lang/String;Lio/agora/rtm/RtmChannelListener;)Lio/agora/rtm/RtmChannel;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmLock:[B

    monitor-enter v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    iget-object v2, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRefChannels:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/agora/rtm/internal/RtmChannelImpl;

    .line 3
    invoke-virtual {v3}, Lio/agora/rtm/internal/RtmChannelImpl;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4
    invoke-virtual {v3}, Lio/agora/rtm/internal/RtmChannelImpl;->isChannelNativeReady()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    sget-object p2, Lio/agora/rtm/internal/RtmClientImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "channel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lio/agora/common/Logging;->desensetize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " created already"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lio/agora/common/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    monitor-exit v0

    return-object v3

    :cond_1
    move-object v1, v3

    :cond_2
    if-eqz v1, :cond_3

    .line 7
    iget-object v2, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRefChannels:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 8
    :cond_3
    sget-object v1, Lio/agora/rtm/internal/RtmClientImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createChannel "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lio/agora/common/Logging;->desensetize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    new-instance v1, Lio/agora/rtm/internal/RtmChannelImpl;

    invoke-direct {v1, p1, p2}, Lio/agora/rtm/internal/RtmChannelImpl;-><init>(Ljava/lang/String;Lio/agora/rtm/RtmChannelListener;)V

    .line 10
    invoke-direct {p0}, Lio/agora/rtm/internal/RtmClientImpl;->isNativeReady()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 11
    invoke-virtual {v1, p0}, Lio/agora/rtm/internal/RtmChannelImpl;->attach(Lio/agora/rtm/internal/RtmClientImpl;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 12
    iget-object p1, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRefChannels:Ljava/util/HashSet;

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 13
    monitor-exit v0

    return-object v1

    .line 14
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "not allowed to create the channel or size over limit!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "RtmClient instance is released!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public createFileMessageByMediaId(Ljava/lang/String;)Lio/agora/rtm/RtmFileMessage;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lio/agora/common/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lio/agora/rtm/internal/RtmClientImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createFileMessageByMediaId mediaId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmLock:[B

    monitor-enter v1

    .line 3
    :try_start_0
    invoke-direct {p0}, Lio/agora/rtm/internal/RtmClientImpl;->isNativeReady()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    .line 4
    iget-object v2, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmServiceNative:Lio/agora/rtm/jni/IRtmService;

    invoke-virtual {v2, p1}, Lio/agora/rtm/jni/IRtmService;->createFileMessageByMediaId(Ljava/lang/String;)Lio/agora/rtm/jni/IFileMessage;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "createFileMessageByMediaId failed, mediaId maybe invalid"

    .line 5
    invoke-static {v0, p1}, Lio/agora/common/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    monitor-exit v1

    return-object v3

    .line 7
    :cond_0
    new-instance v0, Lio/agora/rtm/internal/RtmFileMessageImpl;

    invoke-direct {v0}, Lio/agora/rtm/internal/RtmFileMessageImpl;-><init>()V

    .line 8
    invoke-virtual {p1}, Lio/agora/rtm/jni/IMessage;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/agora/rtm/internal/RtmFileMessageImpl;->setText(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Lio/agora/rtm/jni/IFileMessage;->getSize()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lio/agora/rtm/internal/RtmFileMessageImpl;->setSize(J)V

    .line 10
    invoke-virtual {p1}, Lio/agora/rtm/jni/IFileMessage;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/agora/rtm/internal/RtmFileMessageImpl;->setFileName(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Lio/agora/rtm/jni/IFileMessage;->getMediaId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/agora/rtm/internal/RtmFileMessageImpl;->setMediaId(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1}, Lio/agora/rtm/jni/IFileMessage;->getThumbnailData()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/agora/rtm/internal/RtmFileMessageImpl;->setThumbnail([B)V

    .line 13
    invoke-virtual {p1}, Lio/agora/rtm/jni/IMessage;->release()V

    .line 14
    monitor-exit v1

    return-object v0

    .line 15
    :cond_1
    invoke-direct {p0}, Lio/agora/rtm/internal/RtmClientImpl;->isNativeReady()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "createFileMessageByMediaId failed, mediaId is null"

    .line 16
    invoke-static {v0, p1}, Lio/agora/common/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    monitor-exit v1

    return-object v3

    .line 18
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "RtmClient instance is released!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 19
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public createFileMessageByUploading(Ljava/lang/String;Lio/agora/rtm/RtmRequestId;Lio/agora/rtm/ResultCallback;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lio/agora/common/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/agora/rtm/RtmRequestId;",
            "Lio/agora/rtm/ResultCallback<",
            "Lio/agora/rtm/RtmFileMessage;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/agora/rtm/internal/RtmClientImpl;->TAG:Ljava/lang/String;

    const-string v1, "createFileMessageByUploading filePath:"

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lio/agora/common/Logging;->desensetize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmLock:[B

    monitor-enter v1

    .line 3
    :try_start_0
    invoke-direct {p0}, Lio/agora/rtm/internal/RtmClientImpl;->isNativeReady()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    iget-object v2, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmCallbackLock:[B

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    new-instance v3, Lio/agora/rtm/jni/SWIGTYPE_p_long_long;

    invoke-direct {v3}, Lio/agora/rtm/jni/SWIGTYPE_p_long_long;-><init>()V

    .line 6
    iget-object v4, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmServiceNative:Lio/agora/rtm/jni/IRtmService;

    invoke-virtual {v4, p1, v3}, Lio/agora/rtm/jni/IRtmService;->createFileMessageByUploading(Ljava/lang/String;Lio/agora/rtm/jni/SWIGTYPE_p_long_long;)I

    move-result p1

    .line 7
    invoke-static {v3}, Lio/agora/rtm/jni/SWIGTYPE_p_long_long;->dereference(Lio/agora/rtm/jni/SWIGTYPE_p_long_long;)J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Lio/agora/rtm/RtmRequestId;->setRequestId(J)V

    .line 8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createFileMessageByUploading, ret: "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", requestId: "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lio/agora/rtm/jni/SWIGTYPE_p_long_long;->dereference(Lio/agora/rtm/jni/SWIGTYPE_p_long_long;)J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    const-class p2, Lio/agora/rtm/jni/UPLOAD_MEDIA_ERR_CODE;

    invoke-static {p1, p2}, Lio/agora/rtm/internal/RtmSdkContext;->swigValueToEnumSafe(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/agora/rtm/jni/UPLOAD_MEDIA_ERR_CODE;

    .line 10
    sget-object p2, Lio/agora/rtm/jni/UPLOAD_MEDIA_ERR_CODE;->UPLOAD_MEDIA_ERR_OK:Lio/agora/rtm/jni/UPLOAD_MEDIA_ERR_CODE;

    if-ne p1, p2, :cond_0

    if-eqz p3, :cond_0

    .line 11
    iget-object p2, p0, Lio/agora/rtm/internal/RtmClientImpl;->mUploadFileMediaCallbacks:Lio/agora/common/LruCache;

    invoke-static {v3}, Lio/agora/rtm/jni/SWIGTYPE_p_long_long;->dereference(Lio/agora/rtm/jni/SWIGTYPE_p_long_long;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v0, p3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
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
    const/4 p1, 0x0

    .line 13
    :goto_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 14
    sget-object p2, Lio/agora/rtm/jni/UPLOAD_MEDIA_ERR_CODE;->UPLOAD_MEDIA_ERR_OK:Lio/agora/rtm/jni/UPLOAD_MEDIA_ERR_CODE;

    if-eq p1, p2, :cond_3

    if-eqz p3, :cond_3

    if-nez p1, :cond_2

    .line 15
    sget-object p1, Lio/agora/rtm/jni/UPLOAD_MEDIA_ERR_CODE;->UPLOAD_MEDIA_ERR_FAILURE:Lio/agora/rtm/jni/UPLOAD_MEDIA_ERR_CODE;

    .line 16
    :cond_2
    new-instance p2, Lio/agora/rtm/ErrorInfo;

    invoke-virtual {p1}, Lio/agora/rtm/jni/UPLOAD_MEDIA_ERR_CODE;->swigValue()I

    move-result v0

    invoke-virtual {p1}, Lio/agora/rtm/jni/UPLOAD_MEDIA_ERR_CODE;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lio/agora/rtm/ErrorInfo;-><init>(ILjava/lang/String;)V

    invoke-interface {p3, p2}, Lio/agora/rtm/ResultCallback;->onFailure(Lio/agora/rtm/ErrorInfo;)V

    :cond_3
    return-void

    :catchall_1
    move-exception p1

    .line 17
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public createImageMessageByMediaId(Ljava/lang/String;)Lio/agora/rtm/RtmImageMessage;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lio/agora/common/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lio/agora/rtm/internal/RtmClientImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createImageMessageByMediaId mediaId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmLock:[B

    monitor-enter v1

    .line 3
    :try_start_0
    invoke-direct {p0}, Lio/agora/rtm/internal/RtmClientImpl;->isNativeReady()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    .line 4
    iget-object v2, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmServiceNative:Lio/agora/rtm/jni/IRtmService;

    invoke-virtual {v2, p1}, Lio/agora/rtm/jni/IRtmService;->createImageMessageByMediaId(Ljava/lang/String;)Lio/agora/rtm/jni/IImageMessage;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "createImageMessageByMediaId failed, mediaId maybe invalid"

    .line 5
    invoke-static {v0, p1}, Lio/agora/common/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    monitor-exit v1

    return-object v3

    .line 7
    :cond_0
    new-instance v0, Lio/agora/rtm/internal/RtmImageMessageImpl;

    invoke-direct {v0}, Lio/agora/rtm/internal/RtmImageMessageImpl;-><init>()V

    .line 8
    invoke-virtual {p1}, Lio/agora/rtm/jni/IMessage;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/agora/rtm/internal/RtmImageMessageImpl;->setText(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Lio/agora/rtm/jni/IImageMessage;->getSize()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lio/agora/rtm/internal/RtmImageMessageImpl;->setSize(J)V

    .line 10
    invoke-virtual {p1}, Lio/agora/rtm/jni/IImageMessage;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/agora/rtm/internal/RtmImageMessageImpl;->setFileName(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Lio/agora/rtm/jni/IImageMessage;->getMediaId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/agora/rtm/internal/RtmImageMessageImpl;->setMediaId(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1}, Lio/agora/rtm/jni/IImageMessage;->getThumbnailData()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/agora/rtm/internal/RtmImageMessageImpl;->setThumbnail([B)V

    .line 13
    invoke-virtual {p1}, Lio/agora/rtm/jni/IImageMessage;->getHeight()I

    move-result v2

    invoke-virtual {v0, v2}, Lio/agora/rtm/internal/RtmImageMessageImpl;->setHeight(I)V

    .line 14
    invoke-virtual {p1}, Lio/agora/rtm/jni/IImageMessage;->getWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Lio/agora/rtm/internal/RtmImageMessageImpl;->setWidth(I)V

    .line 15
    invoke-virtual {p1}, Lio/agora/rtm/jni/IImageMessage;->getThumbnailHeight()I

    move-result v2

    invoke-virtual {v0, v2}, Lio/agora/rtm/internal/RtmImageMessageImpl;->setThumbnailHeight(I)V

    .line 16
    invoke-virtual {p1}, Lio/agora/rtm/jni/IImageMessage;->getThumbnailWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Lio/agora/rtm/internal/RtmImageMessageImpl;->setThumbnailWidth(I)V

    .line 17
    invoke-virtual {p1}, Lio/agora/rtm/jni/IMessage;->release()V

    .line 18
    monitor-exit v1

    return-object v0

    .line 19
    :cond_1
    invoke-direct {p0}, Lio/agora/rtm/internal/RtmClientImpl;->isNativeReady()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "createImageMessageByMediaId failed, mediaId is null"

    .line 20
    invoke-static {v0, p1}, Lio/agora/common/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    monitor-exit v1

    return-object v3

    .line 22
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "RtmClient instance is released!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 23
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public createImageMessageByUploading(Ljava/lang/String;Lio/agora/rtm/RtmRequestId;Lio/agora/rtm/ResultCallback;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lio/agora/common/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/agora/rtm/RtmRequestId;",
            "Lio/agora/rtm/ResultCallback<",
            "Lio/agora/rtm/RtmImageMessage;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/agora/rtm/internal/RtmClientImpl;->TAG:Ljava/lang/String;

    const-string v1, "createImageMessageByUploading, filePath:"

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lio/agora/common/Logging;->desensetize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmLock:[B

    monitor-enter v1

    .line 3
    :try_start_0
    invoke-direct {p0}, Lio/agora/rtm/internal/RtmClientImpl;->isNativeReady()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    iget-object v2, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmCallbackLock:[B

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    new-instance v3, Lio/agora/rtm/jni/SWIGTYPE_p_long_long;

    invoke-direct {v3}, Lio/agora/rtm/jni/SWIGTYPE_p_long_long;-><init>()V

    .line 6
    iget-object v4, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmServiceNative:Lio/agora/rtm/jni/IRtmService;

    invoke-virtual {v4, p1, v3}, Lio/agora/rtm/jni/IRtmService;->createImageMessageByUploading(Ljava/lang/String;Lio/agora/rtm/jni/SWIGTYPE_p_long_long;)I

    move-result p1

    .line 7
    invoke-static {v3}, Lio/agora/rtm/jni/SWIGTYPE_p_long_long;->dereference(Lio/agora/rtm/jni/SWIGTYPE_p_long_long;)J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Lio/agora/rtm/RtmRequestId;->setRequestId(J)V

    .line 8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createImageMessageByUploading, ret: "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", requestId: "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lio/agora/rtm/jni/SWIGTYPE_p_long_long;->dereference(Lio/agora/rtm/jni/SWIGTYPE_p_long_long;)J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    const-class p2, Lio/agora/rtm/jni/UPLOAD_MEDIA_ERR_CODE;

    invoke-static {p1, p2}, Lio/agora/rtm/internal/RtmSdkContext;->swigValueToEnumSafe(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/agora/rtm/jni/UPLOAD_MEDIA_ERR_CODE;

    .line 10
    sget-object p2, Lio/agora/rtm/jni/UPLOAD_MEDIA_ERR_CODE;->UPLOAD_MEDIA_ERR_OK:Lio/agora/rtm/jni/UPLOAD_MEDIA_ERR_CODE;

    if-ne p1, p2, :cond_0

    if-eqz p3, :cond_0

    .line 11
    iget-object p2, p0, Lio/agora/rtm/internal/RtmClientImpl;->mUploadImageMediaCallbacks:Lio/agora/common/LruCache;

    invoke-static {v3}, Lio/agora/rtm/jni/SWIGTYPE_p_long_long;->dereference(Lio/agora/rtm/jni/SWIGTYPE_p_long_long;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v0, p3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
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
    const/4 p1, 0x0

    .line 13
    :goto_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 14
    sget-object p2, Lio/agora/rtm/jni/UPLOAD_MEDIA_ERR_CODE;->UPLOAD_MEDIA_ERR_OK:Lio/agora/rtm/jni/UPLOAD_MEDIA_ERR_CODE;

    if-eq p1, p2, :cond_3

    if-eqz p3, :cond_3

    if-nez p1, :cond_2

    .line 15
    sget-object p1, Lio/agora/rtm/jni/UPLOAD_MEDIA_ERR_CODE;->UPLOAD_MEDIA_ERR_FAILURE:Lio/agora/rtm/jni/UPLOAD_MEDIA_ERR_CODE;

    .line 16
    :cond_2
    new-instance p2, Lio/agora/rtm/ErrorInfo;

    invoke-virtual {p1}, Lio/agora/rtm/jni/UPLOAD_MEDIA_ERR_CODE;->swigValue()I

    move-result v0

    invoke-virtual {p1}, Lio/agora/rtm/jni/UPLOAD_MEDIA_ERR_CODE;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lio/agora/rtm/ErrorInfo;-><init>(ILjava/lang/String;)V

    invoke-interface {p3, p2}, Lio/agora/rtm/ResultCallback;->onFailure(Lio/agora/rtm/ErrorInfo;)V

    :cond_3
    return-void

    :catchall_1
    move-exception p1

    .line 17
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public createMessage()Lio/agora/rtm/RtmMessage;
    .locals 2

    .line 1
    new-instance v0, Lio/agora/rtm/internal/RtmMessageImpl;

    const-string v1, ""

    invoke-direct {v0, v1}, Lio/agora/rtm/internal/RtmMessageImpl;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public createMessage(Ljava/lang/String;)Lio/agora/rtm/RtmMessage;
    .locals 1

    .line 2
    new-instance v0, Lio/agora/rtm/internal/RtmMessageImpl;

    invoke-direct {v0, p1}, Lio/agora/rtm/internal/RtmMessageImpl;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public createMessage([B)Lio/agora/rtm/RtmMessage;
    .locals 1

    .line 3
    new-instance v0, Lio/agora/rtm/internal/RtmMessageImpl;

    invoke-direct {v0, p1}, Lio/agora/rtm/internal/RtmMessageImpl;-><init>([B)V

    return-object v0
.end method

.method public createMessage([BLjava/lang/String;)Lio/agora/rtm/RtmMessage;
    .locals 1

    .line 4
    new-instance v0, Lio/agora/rtm/internal/RtmMessageImpl;

    invoke-direct {v0, p1, p2}, Lio/agora/rtm/internal/RtmMessageImpl;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public deleteChannelAttributesByKeys(Ljava/lang/String;Ljava/util/List;Lio/agora/rtm/ChannelAttributeOptions;Lio/agora/rtm/ResultCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lio/agora/rtm/ChannelAttributeOptions;",
            "Lio/agora/rtm/ResultCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/agora/rtm/internal/RtmClientImpl;->TAG:Ljava/lang/String;

    const-string v1, "deleteChannelAttributesByKeys"

    invoke-static {v0, v1}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_3

    .line 2
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-direct {p0, p3}, Lio/agora/rtm/internal/RtmClientImpl;->convertChannelAttrOptToInternal(Lio/agora/rtm/ChannelAttributeOptions;)Lio/agora/rtm/jni/IChannelAttributeOptions;

    move-result-object p3

    .line 4
    new-instance v1, Lio/agora/rtm/jni/SWIGTYPE_p_long_long;

    invoke-direct {v1}, Lio/agora/rtm/jni/SWIGTYPE_p_long_long;-><init>()V

    .line 5
    iget-object v2, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmLock:[B

    monitor-enter v2

    .line 6
    :try_start_0
    invoke-direct {p0}, Lio/agora/rtm/internal/RtmClientImpl;->isNativeReady()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 7
    iget-object v3, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmCallbackLock:[B

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    :try_start_1
    iget-object v4, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmServiceNative:Lio/agora/rtm/jni/IRtmService;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {p2, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-virtual {v4, p1, p2, p3, v1}, Lio/agora/rtm/jni/IRtmService;->deleteChannelAttributesByKeys(Ljava/lang/String;[Ljava/lang/String;Lio/agora/rtm/jni/IChannelAttributeOptions;Lio/agora/rtm/jni/SWIGTYPE_p_long_long;)I

    move-result p1

    .line 9
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "deleteChannelAttributesByKeys ret: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    const-class p2, Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;

    invoke-static {p1, p2}, Lio/agora/rtm/internal/RtmSdkContext;->swigValueToEnumSafe(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;

    .line 11
    sget-object p2, Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;->ATTRIBUTE_OPERATION_ERR_OK:Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;

    if-ne p1, p2, :cond_1

    if-eqz p4, :cond_1

    .line 12
    iget-object p2, p0, Lio/agora/rtm/internal/RtmClientImpl;->mDeleteChannelAttrCallbacks:Lio/agora/common/LruCache;

    invoke-static {v1}, Lio/agora/rtm/jni/SWIGTYPE_p_long_long;->dereference(Lio/agora/rtm/jni/SWIGTYPE_p_long_long;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p2, p3, p4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    :cond_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1

    :cond_2
    const/4 p1, 0x0

    .line 14
    :goto_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 15
    invoke-direct {p0, p1, p4}, Lio/agora/rtm/internal/RtmClientImpl;->processAttrApiError(Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;Lio/agora/rtm/ResultCallback;)V

    return-void

    :catchall_1
    move-exception p1

    .line 16
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :cond_3
    :goto_1
    const-string p1, "attribute keys is null or empty!"

    .line 17
    invoke-static {v0, p1}, Lio/agora/common/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    sget-object p1, Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;->ATTRIBUTE_OPERATION_ERR_INVALID_ARGUMENT:Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;

    invoke-direct {p0, p1, p4}, Lio/agora/rtm/internal/RtmClientImpl;->processAttrApiError(Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;Lio/agora/rtm/ResultCallback;)V

    return-void
.end method

.method public deleteLocalUserAttributesByKeys(Ljava/util/List;Lio/agora/rtm/ResultCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lio/agora/rtm/ResultCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/agora/rtm/internal/RtmClientImpl;->TAG:Ljava/lang/String;

    const-string v1, "deleteLocalUserAttributesByKeys"

    invoke-static {v0, v1}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    .line 2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    new-instance v1, Lio/agora/rtm/jni/SWIGTYPE_p_long_long;

    invoke-direct {v1}, Lio/agora/rtm/jni/SWIGTYPE_p_long_long;-><init>()V

    .line 4
    iget-object v2, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmLock:[B

    monitor-enter v2

    .line 5
    :try_start_0
    invoke-direct {p0}, Lio/agora/rtm/internal/RtmClientImpl;->isNativeReady()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6
    iget-object v3, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmCallbackLock:[B

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    :try_start_1
    iget-object v4, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmServiceNative:Lio/agora/rtm/jni/IRtmService;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {p1, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {v4, p1, v1}, Lio/agora/rtm/jni/IRtmService;->deleteLocalUserAttributesByKeys([Ljava/lang/String;Lio/agora/rtm/jni/SWIGTYPE_p_long_long;)I

    move-result p1

    .line 8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteLocalUserAttributesByKeys ret: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    const-class v0, Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;

    invoke-static {p1, v0}, Lio/agora/rtm/internal/RtmSdkContext;->swigValueToEnumSafe(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;

    .line 10
    sget-object v0, Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;->ATTRIBUTE_OPERATION_ERR_OK:Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_1

    .line 11
    iget-object v0, p0, Lio/agora/rtm/internal/RtmClientImpl;->mDeleteLocalUserAttrCallbacks:Lio/agora/common/LruCache;

    invoke-static {v1}, Lio/agora/rtm/jni/SWIGTYPE_p_long_long;->dereference(Lio/agora/rtm/jni/SWIGTYPE_p_long_long;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :cond_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1

    :cond_2
    const/4 p1, 0x0

    .line 13
    :goto_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 14
    invoke-direct {p0, p1, p2}, Lio/agora/rtm/internal/RtmClientImpl;->processAttrApiError(Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;Lio/agora/rtm/ResultCallback;)V

    return-void

    :catchall_1
    move-exception p1

    .line 15
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :cond_3
    :goto_1
    const-string p1, "attribute keys is null or empty!"

    .line 16
    invoke-static {v0, p1}, Lio/agora/common/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    sget-object p1, Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;->ATTRIBUTE_OPERATION_ERR_INVALID_ARGUMENT:Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;

    invoke-direct {p0, p1, p2}, Lio/agora/rtm/internal/RtmClientImpl;->processAttrApiError(Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;Lio/agora/rtm/ResultCallback;)V

    return-void
.end method

.method public downloadMediaToFile(Ljava/lang/String;Ljava/lang/String;Lio/agora/rtm/RtmRequestId;Lio/agora/rtm/ResultCallback;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lio/agora/common/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lio/agora/common/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/agora/rtm/RtmRequestId;",
            "Lio/agora/rtm/ResultCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/agora/rtm/internal/RtmClientImpl;->TAG:Ljava/lang/String;

    const-string v1, "downloadMediaToFile mediaId: "

    const-string v2, ", filePath: "

    invoke-static {v1, p1, v2}, Le/d/c/a/a;->L(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lio/agora/common/Logging;->desensetize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmLock:[B

    monitor-enter v1

    .line 3
    :try_start_0
    invoke-direct {p0}, Lio/agora/rtm/internal/RtmClientImpl;->isNativeReady()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    iget-object v2, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmCallbackLock:[B

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    new-instance v3, Lio/agora/rtm/jni/SWIGTYPE_p_long_long;

    invoke-direct {v3}, Lio/agora/rtm/jni/SWIGTYPE_p_long_long;-><init>()V

    .line 6
    iget-object v4, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmServiceNative:Lio/agora/rtm/jni/IRtmService;

    invoke-virtual {v4, p1, p2, v3}, Lio/agora/rtm/jni/IRtmService;->downloadMediaToFile(Ljava/lang/String;Ljava/lang/String;Lio/agora/rtm/jni/SWIGTYPE_p_long_long;)I

    move-result p1

    .line 7
    invoke-static {v3}, Lio/agora/rtm/jni/SWIGTYPE_p_long_long;->dereference(Lio/agora/rtm/jni/SWIGTYPE_p_long_long;)J

    move-result-wide v4

    invoke-virtual {p3, v4, v5}, Lio/agora/rtm/RtmRequestId;->setRequestId(J)V

    .line 8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "downloadMediaToFile, ret: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", requestId: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lio/agora/rtm/jni/SWIGTYPE_p_long_long;->dereference(Lio/agora/rtm/jni/SWIGTYPE_p_long_long;)J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    const-class p2, Lio/agora/rtm/jni/DOWNLOAD_MEDIA_ERR_CODE;

    invoke-static {p1, p2}, Lio/agora/rtm/internal/RtmSdkContext;->swigValueToEnumSafe(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/agora/rtm/jni/DOWNLOAD_MEDIA_ERR_CODE;

    .line 10
    sget-object p2, Lio/agora/rtm/jni/DOWNLOAD_MEDIA_ERR_CODE;->DOWNLOAD_MEDIA_ERR_OK:Lio/agora/rtm/jni/DOWNLOAD_MEDIA_ERR_CODE;

    if-ne p1, p2, :cond_0

    if-eqz p4, :cond_0

    .line 11
    iget-object p2, p0, Lio/agora/rtm/internal/RtmClientImpl;->mDownloadMediaToFileCallbacks:Lio/agora/common/LruCache;

    invoke-static {v3}, Lio/agora/rtm/jni/SWIGTYPE_p_long_long;->dereference(Lio/agora/rtm/jni/SWIGTYPE_p_long_long;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p2, p3, p4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
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
    const/4 p1, 0x0

    .line 13
    :goto_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 14
    sget-object p2, Lio/agora/rtm/jni/DOWNLOAD_MEDIA_ERR_CODE;->DOWNLOAD_MEDIA_ERR_OK:Lio/agora/rtm/jni/DOWNLOAD_MEDIA_ERR_CODE;

    if-eq p1, p2, :cond_3

    if-eqz p4, :cond_3

    if-nez p1, :cond_2

    .line 15
    sget-object p1, Lio/agora/rtm/jni/DOWNLOAD_MEDIA_ERR_CODE;->DOWNLOAD_MEDIA_ERR_FAILURE:Lio/agora/rtm/jni/DOWNLOAD_MEDIA_ERR_CODE;

    .line 16
    :cond_2
    new-instance p2, Lio/agora/rtm/ErrorInfo;

    invoke-virtual {p1}, Lio/agora/rtm/jni/DOWNLOAD_MEDIA_ERR_CODE;->swigValue()I

    move-result p3

    invoke-virtual {p1}, Lio/agora/rtm/jni/DOWNLOAD_MEDIA_ERR_CODE;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lio/agora/rtm/ErrorInfo;-><init>(ILjava/lang/String;)V

    invoke-interface {p4, p2}, Lio/agora/rtm/ResultCallback;->onFailure(Lio/agora/rtm/ErrorInfo;)V

    :cond_3
    return-void

    :catchall_1
    move-exception p1

    .line 17
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public downloadMediaToMemory(Ljava/lang/String;Lio/agora/rtm/RtmRequestId;Lio/agora/rtm/ResultCallback;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lio/agora/common/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/agora/rtm/RtmRequestId;",
            "Lio/agora/rtm/ResultCallback<",
            "[B>;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/agora/rtm/internal/RtmClientImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downloadMediaToMemory requestId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmLock:[B

    monitor-enter v1

    .line 3
    :try_start_0
    invoke-direct {p0}, Lio/agora/rtm/internal/RtmClientImpl;->isNativeReady()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    iget-object v2, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmCallbackLock:[B

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    new-instance v3, Lio/agora/rtm/jni/SWIGTYPE_p_long_long;

    invoke-direct {v3}, Lio/agora/rtm/jni/SWIGTYPE_p_long_long;-><init>()V

    .line 6
    iget-object v4, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmServiceNative:Lio/agora/rtm/jni/IRtmService;

    invoke-virtual {v4, p1, v3}, Lio/agora/rtm/jni/IRtmService;->downloadMediaToMemory(Ljava/lang/String;Lio/agora/rtm/jni/SWIGTYPE_p_long_long;)I

    move-result p1

    .line 7
    invoke-static {v3}, Lio/agora/rtm/jni/SWIGTYPE_p_long_long;->dereference(Lio/agora/rtm/jni/SWIGTYPE_p_long_long;)J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Lio/agora/rtm/RtmRequestId;->setRequestId(J)V

    .line 8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "downloadMediaToMemory, ret: "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", requestId: "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lio/agora/rtm/jni/SWIGTYPE_p_long_long;->dereference(Lio/agora/rtm/jni/SWIGTYPE_p_long_long;)J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    const-class p2, Lio/agora/rtm/jni/DOWNLOAD_MEDIA_ERR_CODE;

    invoke-static {p1, p2}, Lio/agora/rtm/internal/RtmSdkContext;->swigValueToEnumSafe(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/agora/rtm/jni/DOWNLOAD_MEDIA_ERR_CODE;

    .line 10
    sget-object p2, Lio/agora/rtm/jni/DOWNLOAD_MEDIA_ERR_CODE;->DOWNLOAD_MEDIA_ERR_OK:Lio/agora/rtm/jni/DOWNLOAD_MEDIA_ERR_CODE;

    if-ne p1, p2, :cond_0

    if-eqz p3, :cond_0

    .line 11
    iget-object p2, p0, Lio/agora/rtm/internal/RtmClientImpl;->mDownloadMediaToMemoryCallbacks:Lio/agora/common/LruCache;

    invoke-static {v3}, Lio/agora/rtm/jni/SWIGTYPE_p_long_long;->dereference(Lio/agora/rtm/jni/SWIGTYPE_p_long_long;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v0, p3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
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
    const/4 p1, 0x0

    .line 13
    :goto_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 14
    sget-object p2, Lio/agora/rtm/jni/DOWNLOAD_MEDIA_ERR_CODE;->DOWNLOAD_MEDIA_ERR_OK:Lio/agora/rtm/jni/DOWNLOAD_MEDIA_ERR_CODE;

    if-eq p1, p2, :cond_3

    if-eqz p3, :cond_3

    if-nez p1, :cond_2

    .line 15
    sget-object p1, Lio/agora/rtm/jni/DOWNLOAD_MEDIA_ERR_CODE;->DOWNLOAD_MEDIA_ERR_FAILURE:Lio/agora/rtm/jni/DOWNLOAD_MEDIA_ERR_CODE;

    .line 16
    :cond_2
    new-instance p2, Lio/agora/rtm/ErrorInfo;

    invoke-virtual {p1}, Lio/agora/rtm/jni/DOWNLOAD_MEDIA_ERR_CODE;->swigValue()I

    move-result v0

    invoke-virtual {p1}, Lio/agora/rtm/jni/DOWNLOAD_MEDIA_ERR_CODE;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lio/agora/rtm/ErrorInfo;-><init>(ILjava/lang/String;)V

    invoke-interface {p3, p2}, Lio/agora/rtm/ResultCallback;->onFailure(Lio/agora/rtm/ErrorInfo;)V

    :cond_3
    return-void

    :catchall_1
    move-exception p1

    .line 17
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public finalize()V
    .locals 2

    .line 1
    sget-object v0, Lio/agora/rtm/internal/RtmClientImpl;->TAG:Ljava/lang/String;

    const-string v1, "rtm client is destroyed"

    invoke-static {v0, v1}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lio/agora/rtm/internal/RtmClientImpl;->release()V

    return-void
.end method

.method public getChannelAttributes(Ljava/lang/String;Lio/agora/rtm/ResultCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/agora/rtm/ResultCallback<",
            "Ljava/util/List<",
            "Lio/agora/rtm/RtmChannelAttribute;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/agora/rtm/internal/RtmClientImpl;->TAG:Ljava/lang/String;

    const-string v1, "getChannelAttributes"

    invoke-static {v0, v1}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v1, Lio/agora/rtm/jni/SWIGTYPE_p_long_long;

    invoke-direct {v1}, Lio/agora/rtm/jni/SWIGTYPE_p_long_long;-><init>()V

    .line 3
    iget-object v2, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmLock:[B

    monitor-enter v2

    .line 4
    :try_start_0
    invoke-direct {p0}, Lio/agora/rtm/internal/RtmClientImpl;->isNativeReady()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5
    iget-object v3, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmCallbackLock:[B

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :try_start_1
    iget-object v4, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmServiceNative:Lio/agora/rtm/jni/IRtmService;

    invoke-virtual {v4, p1, v1}, Lio/agora/rtm/jni/IRtmService;->getChannelAttributes(Ljava/lang/String;Lio/agora/rtm/jni/SWIGTYPE_p_long_long;)I

    move-result p1

    .line 7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getChannelAttributes ret: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    const-class v0, Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;

    invoke-static {p1, v0}, Lio/agora/rtm/internal/RtmSdkContext;->swigValueToEnumSafe(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;

    .line 9
    sget-object v0, Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;->ATTRIBUTE_OPERATION_ERR_OK:Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    .line 10
    iget-object v0, p0, Lio/agora/rtm/internal/RtmClientImpl;->mGetChannelAttrCallbacks:Lio/agora/common/LruCache;

    invoke-static {v1}, Lio/agora/rtm/jni/SWIGTYPE_p_long_long;->dereference(Lio/agora/rtm/jni/SWIGTYPE_p_long_long;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    :cond_0
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1

    :cond_1
    const/4 p1, 0x0

    .line 12
    :goto_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 13
    invoke-direct {p0, p1, p2}, Lio/agora/rtm/internal/RtmClientImpl;->processAttrApiError(Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;Lio/agora/rtm/ResultCallback;)V

    return-void

    :catchall_1
    move-exception p1

    .line 14
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public getChannelAttributesByKeys(Ljava/lang/String;Ljava/util/List;Lio/agora/rtm/ResultCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lio/agora/rtm/ResultCallback<",
            "Ljava/util/List<",
            "Lio/agora/rtm/RtmChannelAttribute;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/agora/rtm/internal/RtmClientImpl;->TAG:Ljava/lang/String;

    const-string v1, "getChannelAttributesByKeys"

    invoke-static {v0, v1}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_3

    .line 2
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    new-instance v1, Lio/agora/rtm/jni/SWIGTYPE_p_long_long;

    invoke-direct {v1}, Lio/agora/rtm/jni/SWIGTYPE_p_long_long;-><init>()V

    .line 4
    iget-object v2, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmLock:[B

    monitor-enter v2

    .line 5
    :try_start_0
    invoke-direct {p0}, Lio/agora/rtm/internal/RtmClientImpl;->isNativeReady()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6
    iget-object v3, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmCallbackLock:[B

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    :try_start_1
    iget-object v4, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmServiceNative:Lio/agora/rtm/jni/IRtmService;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {p2, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-virtual {v4, p1, p2, v1}, Lio/agora/rtm/jni/IRtmService;->getChannelAttributesByKeys(Ljava/lang/String;[Ljava/lang/String;Lio/agora/rtm/jni/SWIGTYPE_p_long_long;)I

    move-result p1

    .line 8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getChannelAttributesByKeys ret: "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    const-class p2, Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;

    invoke-static {p1, p2}, Lio/agora/rtm/internal/RtmSdkContext;->swigValueToEnumSafe(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;

    .line 10
    sget-object p2, Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;->ATTRIBUTE_OPERATION_ERR_OK:Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;

    if-ne p1, p2, :cond_1

    if-eqz p3, :cond_1

    .line 11
    iget-object p2, p0, Lio/agora/rtm/internal/RtmClientImpl;->mGetChannelAttrCallbacks:Lio/agora/common/LruCache;

    invoke-static {v1}, Lio/agora/rtm/jni/SWIGTYPE_p_long_long;->dereference(Lio/agora/rtm/jni/SWIGTYPE_p_long_long;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v0, p3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :cond_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1

    :cond_2
    const/4 p1, 0x0

    .line 13
    :goto_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 14
    invoke-direct {p0, p1, p3}, Lio/agora/rtm/internal/RtmClientImpl;->processAttrApiError(Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;Lio/agora/rtm/ResultCallback;)V

    return-void

    :catchall_1
    move-exception p1

    .line 15
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :cond_3
    :goto_1
    const-string p1, "attribute keys is null or empty!"

    .line 16
    invoke-static {v0, p1}, Lio/agora/common/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    sget-object p1, Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;->ATTRIBUTE_OPERATION_ERR_INVALID_ARGUMENT:Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;

    invoke-direct {p0, p1, p3}, Lio/agora/rtm/internal/RtmClientImpl;->processAttrApiError(Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;Lio/agora/rtm/ResultCallback;)V

    return-void
.end method

.method public getChannelMemberCount(Ljava/util/List;Lio/agora/rtm/ResultCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lio/agora/rtm/ResultCallback<",
            "Ljava/util/List<",
            "Lio/agora/rtm/RtmChannelMemberCount;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/agora/rtm/internal/RtmClientImpl;->TAG:Ljava/lang/String;

    const-string v1, "getChannelMemberCount"

    invoke-static {v0, v1}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    .line 2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    new-instance v1, Lio/agora/rtm/jni/SWIGTYPE_p_long_long;

    invoke-direct {v1}, Lio/agora/rtm/jni/SWIGTYPE_p_long_long;-><init>()V

    .line 4
    iget-object v2, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmLock:[B

    monitor-enter v2

    .line 5
    :try_start_0
    invoke-direct {p0}, Lio/agora/rtm/internal/RtmClientImpl;->isNativeReady()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6
    iget-object v3, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmCallbackLock:[B

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    :try_start_1
    iget-object v4, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmServiceNative:Lio/agora/rtm/jni/IRtmService;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {p1, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {v4, p1, v1}, Lio/agora/rtm/jni/IRtmService;->getChannelMemberCount([Ljava/lang/String;Lio/agora/rtm/jni/SWIGTYPE_p_long_long;)I

    move-result p1

    .line 8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getChannelMemberCount ret: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    const-class v0, Lio/agora/rtm/jni/GET_CHANNEL_MEMBER_COUNT_ERR;

    invoke-static {p1, v0}, Lio/agora/rtm/internal/RtmSdkContext;->swigValueToEnumSafe(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/agora/rtm/jni/GET_CHANNEL_MEMBER_COUNT_ERR;

    .line 10
    sget-object v0, Lio/agora/rtm/jni/GET_CHANNEL_MEMBER_COUNT_ERR;->GET_CHANNEL_MEMBER_COUNT_ERR_OK:Lio/agora/rtm/jni/GET_CHANNEL_MEMBER_COUNT_ERR;

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_1

    .line 11
    iget-object v0, p0, Lio/agora/rtm/internal/RtmClientImpl;->mGetChannelMemberCountCallbacks:Lio/agora/common/LruCache;

    invoke-static {v1}, Lio/agora/rtm/jni/SWIGTYPE_p_long_long;->dereference(Lio/agora/rtm/jni/SWIGTYPE_p_long_long;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :cond_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1

    :cond_2
    const/4 p1, 0x0

    .line 13
    :goto_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 14
    invoke-direct {p0, p1, p2}, Lio/agora/rtm/internal/RtmClientImpl;->processGetChannelMemberCountApiError(Lio/agora/rtm/jni/GET_CHANNEL_MEMBER_COUNT_ERR;Lio/agora/rtm/ResultCallback;)V

    return-void

    :catchall_1
    move-exception p1

    .line 15
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :cond_3
    :goto_1
    const-string p1, "channel Ids is null or empty!"

    .line 16
    invoke-static {v0, p1}, Lio/agora/common/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    sget-object p1, Lio/agora/rtm/jni/GET_CHANNEL_MEMBER_COUNT_ERR;->GET_CHANNEL_MEMBER_COUNT_ERR_INVALID_ARGUMENT:Lio/agora/rtm/jni/GET_CHANNEL_MEMBER_COUNT_ERR;

    invoke-direct {p0, p1, p2}, Lio/agora/rtm/internal/RtmClientImpl;->processGetChannelMemberCountApiError(Lio/agora/rtm/jni/GET_CHANNEL_MEMBER_COUNT_ERR;Lio/agora/rtm/ResultCallback;)V

    return-void
.end method

.method public getMediaDownloadingPercentage(Lio/agora/rtm/RtmRequestId;)D
    .locals 4

    .line 1
    sget-object v0, Lio/agora/rtm/internal/RtmClientImpl;->TAG:Ljava/lang/String;

    const-string v1, "getMediaDownloadingPercentage requestId: "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lio/agora/rtm/RtmRequestId;->getRequestId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmLock:[B

    monitor-enter v1

    .line 3
    :try_start_0
    invoke-direct {p0}, Lio/agora/rtm/internal/RtmClientImpl;->isNativeReady()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    iget-object v0, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmServiceNative:Lio/agora/rtm/jni/IRtmService;

    invoke-virtual {p1}, Lio/agora/rtm/RtmRequestId;->getRequestId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lio/agora/rtm/jni/IRtmService;->getMediaDownloadingPercentage(J)D

    move-result-wide v2

    .line 5
    monitor-exit v1

    return-wide v2

    .line 6
    :cond_0
    invoke-direct {p0}, Lio/agora/rtm/internal/RtmClientImpl;->isNativeReady()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "getMediaDownloadingPercentage failed, mediaId is null"

    .line 7
    invoke-static {v0, p1}, Lio/agora/common/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    .line 8
    monitor-exit v1

    return-wide v2

    .line 9
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "RtmClient instance is released!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 10
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getMediaUploadingPercentage(Lio/agora/rtm/RtmRequestId;)D
    .locals 4

    .line 1
    sget-object v0, Lio/agora/rtm/internal/RtmClientImpl;->TAG:Ljava/lang/String;

    const-string v1, "getMediaUploadingPercentage requestId: "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lio/agora/rtm/RtmRequestId;->getRequestId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmLock:[B

    monitor-enter v1

    .line 3
    :try_start_0
    invoke-direct {p0}, Lio/agora/rtm/internal/RtmClientImpl;->isNativeReady()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    iget-object v0, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmServiceNative:Lio/agora/rtm/jni/IRtmService;

    invoke-virtual {p1}, Lio/agora/rtm/RtmRequestId;->getRequestId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lio/agora/rtm/jni/IRtmService;->getMediaUploadingPercentage(J)D

    move-result-wide v2

    .line 5
    monitor-exit v1

    return-wide v2

    .line 6
    :cond_0
    invoke-direct {p0}, Lio/agora/rtm/internal/RtmClientImpl;->isNativeReady()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "getMediaUploadingPercentage failed, mediaId is null"

    .line 7
    invoke-static {v0, p1}, Lio/agora/common/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    .line 8
    monitor-exit v1

    return-wide v2

    .line 9
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "RtmClient instance is released!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 10
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getRtmCallManager()Lio/agora/rtm/RtmCallManager;
    .locals 4

    .line 1
    sget-object v0, Lio/agora/rtm/internal/RtmClientImpl;->TAG:Ljava/lang/String;

    const-string v1, "getRtmCallManager"

    invoke-static {v0, v1}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmLock:[B

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lio/agora/rtm/internal/RtmClientImpl;->rtmCallManager:Lio/agora/rtm/internal/RtmCallManagerImpl;

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, v1, Lio/agora/rtm/internal/RtmCallManagerImpl;->lock:[B

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    iget-object v2, p0, Lio/agora/rtm/internal/RtmClientImpl;->rtmCallManager:Lio/agora/rtm/internal/RtmCallManagerImpl;

    iget-boolean v3, v2, Lio/agora/rtm/internal/RtmCallManagerImpl;->isNativeAttached:Z

    if-eqz v3, :cond_0

    .line 6
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v2

    .line 7
    :cond_0
    :try_start_3
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2

    .line 8
    :cond_1
    :goto_0
    new-instance v1, Lio/agora/rtm/internal/RtmCallManagerImpl;

    invoke-direct {v1}, Lio/agora/rtm/internal/RtmCallManagerImpl;-><init>()V

    iput-object v1, p0, Lio/agora/rtm/internal/RtmClientImpl;->rtmCallManager:Lio/agora/rtm/internal/RtmCallManagerImpl;

    .line 9
    invoke-direct {p0}, Lio/agora/rtm/internal/RtmClientImpl;->isNativeReady()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lio/agora/rtm/internal/RtmClientImpl;->rtmCallManager:Lio/agora/rtm/internal/RtmCallManagerImpl;

    invoke-virtual {v1, p0}, Lio/agora/rtm/internal/RtmCallManagerImpl;->attach(Lio/agora/rtm/internal/RtmClientImpl;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_3

    .line 10
    iget-object v1, p0, Lio/agora/rtm/internal/RtmClientImpl;->rtmCallManager:Lio/agora/rtm/internal/RtmCallManagerImpl;

    monitor-exit v0

    return-object v1

    .line 11
    :cond_3
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public getUserAttributes(Ljava/lang/String;Lio/agora/rtm/ResultCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/agora/rtm/ResultCallback<",
            "Ljava/util/List<",
            "Lio/agora/rtm/RtmAttribute;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/agora/rtm/internal/RtmClientImpl;->TAG:Ljava/lang/String;

    const-string v1, "getUserAttributes"

    invoke-static {v0, v1}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v1, Lio/agora/rtm/jni/SWIGTYPE_p_long_long;

    invoke-direct {v1}, Lio/agora/rtm/jni/SWIGTYPE_p_long_long;-><init>()V

    .line 3
    iget-object v2, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmLock:[B

    monitor-enter v2

    .line 4
    :try_start_0
    invoke-direct {p0}, Lio/agora/rtm/internal/RtmClientImpl;->isNativeReady()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5
    iget-object v3, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmCallbackLock:[B

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :try_start_1
    iget-object v4, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmServiceNative:Lio/agora/rtm/jni/IRtmService;

    invoke-virtual {v4, p1, v1}, Lio/agora/rtm/jni/IRtmService;->getUserAttributes(Ljava/lang/String;Lio/agora/rtm/jni/SWIGTYPE_p_long_long;)I

    move-result p1

    .line 7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getUserAttributes ret: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    const-class v0, Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;

    invoke-static {p1, v0}, Lio/agora/rtm/internal/RtmSdkContext;->swigValueToEnumSafe(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;

    .line 9
    sget-object v0, Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;->ATTRIBUTE_OPERATION_ERR_OK:Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    .line 10
    iget-object v0, p0, Lio/agora/rtm/internal/RtmClientImpl;->mGetUserAttrCallbacks:Lio/agora/common/LruCache;

    invoke-static {v1}, Lio/agora/rtm/jni/SWIGTYPE_p_long_long;->dereference(Lio/agora/rtm/jni/SWIGTYPE_p_long_long;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    :cond_0
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1

    :cond_1
    const/4 p1, 0x0

    .line 12
    :goto_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 13
    invoke-direct {p0, p1, p2}, Lio/agora/rtm/internal/RtmClientImpl;->processAttrApiError(Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;Lio/agora/rtm/ResultCallback;)V

    return-void

    :catchall_1
    move-exception p1

    .line 14
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public getUserAttributesByKeys(Ljava/lang/String;Ljava/util/List;Lio/agora/rtm/ResultCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lio/agora/rtm/ResultCallback<",
            "Ljava/util/List<",
            "Lio/agora/rtm/RtmAttribute;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/agora/rtm/internal/RtmClientImpl;->TAG:Ljava/lang/String;

    const-string v1, "getUserAttributesByKeys"

    invoke-static {v0, v1}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_3

    .line 2
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    new-instance v1, Lio/agora/rtm/jni/SWIGTYPE_p_long_long;

    invoke-direct {v1}, Lio/agora/rtm/jni/SWIGTYPE_p_long_long;-><init>()V

    .line 4
    iget-object v2, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmLock:[B

    monitor-enter v2

    .line 5
    :try_start_0
    invoke-direct {p0}, Lio/agora/rtm/internal/RtmClientImpl;->isNativeReady()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6
    iget-object v3, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmCallbackLock:[B

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    :try_start_1
    iget-object v4, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmServiceNative:Lio/agora/rtm/jni/IRtmService;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {p2, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-virtual {v4, p1, p2, v1}, Lio/agora/rtm/jni/IRtmService;->getUserAttributesByKeys(Ljava/lang/String;[Ljava/lang/String;Lio/agora/rtm/jni/SWIGTYPE_p_long_long;)I

    move-result p1

    .line 8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getUserAttributesByKeys ret: "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    const-class p2, Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;

    invoke-static {p1, p2}, Lio/agora/rtm/internal/RtmSdkContext;->swigValueToEnumSafe(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;

    .line 10
    sget-object p2, Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;->ATTRIBUTE_OPERATION_ERR_OK:Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;

    if-ne p1, p2, :cond_1

    if-eqz p3, :cond_1

    .line 11
    iget-object p2, p0, Lio/agora/rtm/internal/RtmClientImpl;->mGetUserAttrCallbacks:Lio/agora/common/LruCache;

    invoke-static {v1}, Lio/agora/rtm/jni/SWIGTYPE_p_long_long;->dereference(Lio/agora/rtm/jni/SWIGTYPE_p_long_long;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2, v0, p3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :cond_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1

    :cond_2
    const/4 p1, 0x0

    .line 13
    :goto_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 14
    invoke-direct {p0, p1, p3}, Lio/agora/rtm/internal/RtmClientImpl;->processAttrApiError(Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;Lio/agora/rtm/ResultCallback;)V

    return-void

    :catchall_1
    move-exception p1

    .line 15
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :cond_3
    :goto_1
    const-string p1, "attribute keys is null or empty!"

    .line 16
    invoke-static {v0, p1}, Lio/agora/common/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    sget-object p1, Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;->ATTRIBUTE_OPERATION_ERR_INVALID_ARGUMENT:Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;

    invoke-direct {p0, p1, p3}, Lio/agora/rtm/internal/RtmClientImpl;->processAttrApiError(Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;Lio/agora/rtm/ResultCallback;)V

    return-void
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;Lio/agora/rtm/ResultCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lio/agora/rtm/ResultCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/agora/rtm/internal/RtmClientImpl;->TAG:Ljava/lang/String;

    const-string v1, "login token: "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x8

    if-ge v2, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "****"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    :goto_0
    const-string v2, "invalid!"

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " uid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-static {p2}, Lio/agora/common/Logging;->desensetize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " cb: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v0, v1}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 5
    iget-object v2, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmLock:[B

    monitor-enter v2

    .line 6
    :try_start_0
    invoke-direct {p0}, Lio/agora/rtm/internal/RtmClientImpl;->isNativeReady()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 7
    iget-object v1, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmCallbackLock:[B

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    :try_start_1
    iget-object v3, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmServiceNative:Lio/agora/rtm/jni/IRtmService;

    invoke-virtual {v3, p1, p2}, Lio/agora/rtm/jni/IRtmService;->login(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 9
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "login ret: "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    const-class p2, Lio/agora/rtm/jni/LOGIN_ERR_CODE;

    invoke-static {p1, p2}, Lio/agora/rtm/internal/RtmSdkContext;->swigValueToEnumSafe(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/agora/rtm/jni/LOGIN_ERR_CODE;

    .line 11
    sget-object p2, Lio/agora/rtm/jni/LOGIN_ERR_CODE;->LOGIN_ERR_OK:Lio/agora/rtm/jni/LOGIN_ERR_CODE;

    if-ne p1, p2, :cond_2

    .line 12
    iput-object p3, p0, Lio/agora/rtm/internal/RtmClientImpl;->mLoginCallback:Lio/agora/rtm/ResultCallback;

    .line 13
    :cond_2
    monitor-exit v1

    move-object v1, p1

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1

    .line 14
    :cond_3
    :goto_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 15
    sget-object p1, Lio/agora/rtm/jni/LOGIN_ERR_CODE;->LOGIN_ERR_OK:Lio/agora/rtm/jni/LOGIN_ERR_CODE;

    if-eq v1, p1, :cond_5

    if-eqz p3, :cond_5

    if-nez v1, :cond_4

    .line 16
    sget-object v1, Lio/agora/rtm/jni/LOGIN_ERR_CODE;->LOGIN_ERR_UNKNOWN:Lio/agora/rtm/jni/LOGIN_ERR_CODE;

    .line 17
    :cond_4
    new-instance p1, Lio/agora/rtm/ErrorInfo;

    invoke-virtual {v1}, Lio/agora/rtm/jni/LOGIN_ERR_CODE;->swigValue()I

    move-result p2

    invoke-virtual {v1}, Lio/agora/rtm/jni/LOGIN_ERR_CODE;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lio/agora/rtm/ErrorInfo;-><init>(ILjava/lang/String;)V

    invoke-interface {p3, p1}, Lio/agora/rtm/ResultCallback;->onFailure(Lio/agora/rtm/ErrorInfo;)V

    :cond_5
    return-void

    :catchall_1
    move-exception p1

    .line 18
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public logout(Lio/agora/rtm/ResultCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/agora/rtm/ResultCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/agora/rtm/internal/RtmClientImpl;->TAG:Ljava/lang/String;

    const-string v1, "logout"

    invoke-static {v0, v1}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmLock:[B

    monitor-enter v1

    :try_start_0
    const-string v2, "clean up channels while logging out"

    .line 3
    invoke-static {v0, v2}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRefChannels:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 5
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/agora/rtm/internal/RtmChannelImpl;

    if-eqz v2, :cond_0

    .line 6
    sget-object v4, Lio/agora/rtm/internal/RtmClientImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "force leave channel "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lio/agora/rtm/internal/RtmChannelImpl;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lio/agora/common/Logging;->desensetize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v2, v3}, Lio/agora/rtm/internal/RtmChannelImpl;->leave(Lio/agora/rtm/ResultCallback;)V

    .line 8
    invoke-virtual {v2}, Lio/agora/rtm/internal/RtmChannelImpl;->detach()V

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRefChannels:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 10
    invoke-direct {p0}, Lio/agora/rtm/internal/RtmClientImpl;->isNativeReady()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11
    iget-object v0, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmCallbackLock:[B

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 12
    :try_start_1
    iget-object v2, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmServiceNative:Lio/agora/rtm/jni/IRtmService;

    invoke-virtual {v2}, Lio/agora/rtm/jni/IRtmService;->logout()I

    move-result v2

    .line 13
    sget-object v3, Lio/agora/rtm/internal/RtmClientImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "logout ret: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    const-class v3, Lio/agora/rtm/jni/LOGOUT_ERR_CODE;

    invoke-static {v2, v3}, Lio/agora/rtm/internal/RtmSdkContext;->swigValueToEnumSafe(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lio/agora/rtm/jni/LOGOUT_ERR_CODE;

    .line 15
    sget-object v2, Lio/agora/rtm/jni/LOGOUT_ERR_CODE;->LOGOUT_ERR_OK:Lio/agora/rtm/jni/LOGOUT_ERR_CODE;

    if-ne v3, v2, :cond_2

    .line 16
    iput-object p1, p0, Lio/agora/rtm/internal/RtmClientImpl;->mLogoutCallback:Lio/agora/rtm/ResultCallback;

    .line 17
    :cond_2
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1

    .line 18
    :cond_3
    :goto_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 19
    sget-object v0, Lio/agora/rtm/jni/LOGOUT_ERR_CODE;->LOGOUT_ERR_OK:Lio/agora/rtm/jni/LOGOUT_ERR_CODE;

    if-eq v3, v0, :cond_5

    if-eqz p1, :cond_5

    if-nez v3, :cond_4

    .line 20
    sget-object v3, Lio/agora/rtm/jni/LOGOUT_ERR_CODE;->LOGOUT_ERR_REJECTED:Lio/agora/rtm/jni/LOGOUT_ERR_CODE;

    .line 21
    :cond_4
    new-instance v0, Lio/agora/rtm/ErrorInfo;

    invoke-virtual {v3}, Lio/agora/rtm/jni/LOGOUT_ERR_CODE;->swigValue()I

    move-result v1

    invoke-virtual {v3}, Lio/agora/rtm/jni/LOGOUT_ERR_CODE;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lio/agora/rtm/ErrorInfo;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v0}, Lio/agora/rtm/ResultCallback;->onFailure(Lio/agora/rtm/ErrorInfo;)V

    :cond_5
    return-void

    :catchall_1
    move-exception p1

    .line 22
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public queryPeersBySubscriptionOption(Ljava/lang/Integer;Lio/agora/rtm/ResultCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Lio/agora/rtm/ResultCallback<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/agora/rtm/internal/RtmClientImpl;->TAG:Ljava/lang/String;

    const-string v1, "queryPeersBySubscriptionOption"

    invoke-static {v0, v1}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_4

    .line 3
    sget-object p1, Lio/agora/rtm/jni/PEER_SUBSCRIPTION_OPTION;->PEER_SUBSCRIPTION_OPTION_ONLINE_STATUS:Lio/agora/rtm/jni/PEER_SUBSCRIPTION_OPTION;

    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmLock:[B

    monitor-enter v2

    .line 5
    :try_start_0
    invoke-direct {p0}, Lio/agora/rtm/internal/RtmClientImpl;->isNativeReady()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6
    iget-object v1, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmCallbackLock:[B

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    :try_start_1
    new-instance v3, Lio/agora/rtm/jni/SWIGTYPE_p_long_long;

    invoke-direct {v3}, Lio/agora/rtm/jni/SWIGTYPE_p_long_long;-><init>()V

    .line 8
    iget-object v4, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmServiceNative:Lio/agora/rtm/jni/IRtmService;

    invoke-virtual {v4, p1, v3}, Lio/agora/rtm/jni/IRtmService;->queryPeersBySubscriptionOption(Lio/agora/rtm/jni/PEER_SUBSCRIPTION_OPTION;Lio/agora/rtm/jni/SWIGTYPE_p_long_long;)I

    move-result p1

    .line 9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "queryPeersBySubscriptionOption, ret: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    const-class v0, Lio/agora/rtm/jni/QUERY_PEERS_BY_SUBSCRIPTION_OPTION_ERR;

    invoke-static {p1, v0}, Lio/agora/rtm/internal/RtmSdkContext;->swigValueToEnumSafe(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/agora/rtm/jni/QUERY_PEERS_BY_SUBSCRIPTION_OPTION_ERR;

    .line 11
    sget-object v0, Lio/agora/rtm/jni/QUERY_PEERS_BY_SUBSCRIPTION_OPTION_ERR;->QUERY_PEERS_BY_SUBSCRIPTION_OPTION_ERR_OK:Lio/agora/rtm/jni/QUERY_PEERS_BY_SUBSCRIPTION_OPTION_ERR;

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    .line 12
    iget-object v0, p0, Lio/agora/rtm/internal/RtmClientImpl;->mQueryPeersBySubscriptionOptionCallbacks:Lio/agora/common/LruCache;

    invoke-static {v3}, Lio/agora/rtm/jni/SWIGTYPE_p_long_long;->dereference(Lio/agora/rtm/jni/SWIGTYPE_p_long_long;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    :cond_0
    monitor-exit v1

    move-object v1, p1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1

    .line 14
    :cond_1
    :goto_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 15
    sget-object p1, Lio/agora/rtm/jni/QUERY_PEERS_BY_SUBSCRIPTION_OPTION_ERR;->QUERY_PEERS_BY_SUBSCRIPTION_OPTION_ERR_OK:Lio/agora/rtm/jni/QUERY_PEERS_BY_SUBSCRIPTION_OPTION_ERR;

    if-eq v1, p1, :cond_3

    if-eqz p2, :cond_3

    if-nez v1, :cond_2

    .line 16
    sget-object v1, Lio/agora/rtm/jni/QUERY_PEERS_BY_SUBSCRIPTION_OPTION_ERR;->QUERY_PEERS_BY_SUBSCRIPTION_OPTION_ERR_FAILURE:Lio/agora/rtm/jni/QUERY_PEERS_BY_SUBSCRIPTION_OPTION_ERR;

    .line 17
    :cond_2
    new-instance p1, Lio/agora/rtm/ErrorInfo;

    invoke-virtual {v1}, Lio/agora/rtm/jni/QUERY_PEERS_BY_SUBSCRIPTION_OPTION_ERR;->swigValue()I

    move-result v0

    invoke-virtual {v1}, Lio/agora/rtm/jni/QUERY_PEERS_BY_SUBSCRIPTION_OPTION_ERR;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lio/agora/rtm/ErrorInfo;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, p1}, Lio/agora/rtm/ResultCallback;->onFailure(Lio/agora/rtm/ErrorInfo;)V

    :cond_3
    return-void

    :catchall_1
    move-exception p1

    .line 18
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :cond_4
    const-string p1, "invalid subscription option"

    .line 19
    invoke-static {v0, p1}, Lio/agora/common/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public queryPeersOnlineStatus(Ljava/util/Set;Lio/agora/rtm/ResultCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lio/agora/rtm/ResultCallback<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/agora/rtm/internal/RtmClientImpl;->TAG:Ljava/lang/String;

    const-string v1, "queryPeersOnlineStatus"

    invoke-static {v0, v1}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmLock:[B

    monitor-enter v1

    .line 3
    :try_start_0
    invoke-direct {p0}, Lio/agora/rtm/internal/RtmClientImpl;->isNativeReady()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4
    iget-object v2, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmCallbackLock:[B

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x0

    :try_start_1
    new-array v3, v3, [Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 5
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 6
    invoke-interface {p1, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, [Ljava/lang/String;

    .line 7
    :cond_0
    new-instance p1, Lio/agora/rtm/jni/SWIGTYPE_p_long_long;

    invoke-direct {p1}, Lio/agora/rtm/jni/SWIGTYPE_p_long_long;-><init>()V

    .line 8
    iget-object v4, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmServiceNative:Lio/agora/rtm/jni/IRtmService;

    array-length v5, v3

    invoke-virtual {v4, v3, v5, p1}, Lio/agora/rtm/jni/IRtmService;->queryPeersOnlineStatus([Ljava/lang/String;ILio/agora/rtm/jni/SWIGTYPE_p_long_long;)I

    move-result v3

    .line 9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "queryPeersOnlineStatus, ret: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    const-class v0, Lio/agora/rtm/jni/QUERY_PEERS_ONLINE_STATUS_ERR;

    invoke-static {v3, v0}, Lio/agora/rtm/internal/RtmSdkContext;->swigValueToEnumSafe(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/agora/rtm/jni/QUERY_PEERS_ONLINE_STATUS_ERR;

    .line 11
    sget-object v3, Lio/agora/rtm/jni/QUERY_PEERS_ONLINE_STATUS_ERR;->QUERY_PEERS_ONLINE_STATUS_ERR_OK:Lio/agora/rtm/jni/QUERY_PEERS_ONLINE_STATUS_ERR;

    if-ne v0, v3, :cond_1

    if-eqz p2, :cond_1

    .line 12
    iget-object v3, p0, Lio/agora/rtm/internal/RtmClientImpl;->mQueryOnlineStatusCallbacks:Lio/agora/common/LruCache;

    invoke-static {p1}, Lio/agora/rtm/jni/SWIGTYPE_p_long_long;->dereference(Lio/agora/rtm/jni/SWIGTYPE_p_long_long;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v3, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    :cond_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1

    :cond_2
    const/4 v0, 0x0

    .line 14
    :goto_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 15
    sget-object p1, Lio/agora/rtm/jni/QUERY_PEERS_ONLINE_STATUS_ERR;->QUERY_PEERS_ONLINE_STATUS_ERR_OK:Lio/agora/rtm/jni/QUERY_PEERS_ONLINE_STATUS_ERR;

    if-eq v0, p1, :cond_4

    if-eqz p2, :cond_4

    if-nez v0, :cond_3

    .line 16
    sget-object v0, Lio/agora/rtm/jni/QUERY_PEERS_ONLINE_STATUS_ERR;->QUERY_PEERS_ONLINE_STATUS_ERR_FAILURE:Lio/agora/rtm/jni/QUERY_PEERS_ONLINE_STATUS_ERR;

    .line 17
    :cond_3
    new-instance p1, Lio/agora/rtm/ErrorInfo;

    invoke-virtual {v0}, Lio/agora/rtm/jni/QUERY_PEERS_ONLINE_STATUS_ERR;->swigValue()I

    move-result v1

    invoke-virtual {v0}, Lio/agora/rtm/jni/QUERY_PEERS_ONLINE_STATUS_ERR;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Lio/agora/rtm/ErrorInfo;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, p1}, Lio/agora/rtm/ResultCallback;->onFailure(Lio/agora/rtm/ErrorInfo;)V

    :cond_4
    return-void

    :catchall_1
    move-exception p1

    .line 18
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public release()V
    .locals 6

    .line 1
    sget-object v0, Lio/agora/rtm/internal/RtmClientImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "release "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmLock:[B

    monitor-enter v0

    .line 3
    :try_start_0
    iget-boolean v1, p0, Lio/agora/rtm/internal/RtmClientImpl;->mIsInitialized:Z

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lio/agora/rtm/internal/RtmClientImpl;->mIsInitialized:Z

    .line 5
    iget-object v1, p0, Lio/agora/rtm/internal/RtmClientImpl;->rtmCallManager:Lio/agora/rtm/internal/RtmCallManagerImpl;

    if-eqz v1, :cond_1

    .line 6
    iget-object v1, v1, Lio/agora/rtm/internal/RtmCallManagerImpl;->lock:[B

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    :try_start_1
    iget-object v2, p0, Lio/agora/rtm/internal/RtmClientImpl;->rtmCallManager:Lio/agora/rtm/internal/RtmCallManagerImpl;

    iget-boolean v3, v2, Lio/agora/rtm/internal/RtmCallManagerImpl;->isNativeAttached:Z

    if-eqz v3, :cond_0

    .line 8
    invoke-virtual {v2}, Lio/agora/rtm/internal/RtmCallManagerImpl;->detach()V

    .line 9
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2

    .line 10
    :cond_1
    :goto_0
    iget-object v1, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRefChannels:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/agora/rtm/internal/RtmChannelImpl;

    if-eqz v2, :cond_2

    .line 11
    sget-object v3, Lio/agora/rtm/internal/RtmClientImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "force leave channel "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lio/agora/rtm/internal/RtmChannelImpl;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lio/agora/common/Logging;->desensetize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v2}, Lio/agora/rtm/internal/RtmChannelImpl;->release()V

    goto :goto_1

    .line 13
    :cond_3
    iget-object v1, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmServiceNative:Lio/agora/rtm/jni/IRtmService;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    const/4 v3, 0x1

    .line 14
    invoke-virtual {v1, v3}, Lio/agora/rtm/jni/IRtmService;->release(Z)V

    .line 15
    iput-object v2, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmServiceNative:Lio/agora/rtm/jni/IRtmService;

    .line 16
    :cond_4
    iget-object v1, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmEventHandlerNative:Lio/agora/rtm/internal/RtmClientImpl$RtmServiceEventHandlerNative;

    if-eqz v1, :cond_5

    .line 17
    invoke-virtual {v1}, Lio/agora/rtm/jni/IRtmServiceEventHandler;->delete()V

    .line 18
    iput-object v2, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmEventHandlerNative:Lio/agora/rtm/internal/RtmClientImpl$RtmServiceEventHandlerNative;

    .line 19
    :cond_5
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public removeChannel(Lio/agora/rtm/internal/RtmChannelImpl;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    sget-object v0, Lio/agora/rtm/internal/RtmClientImpl;->TAG:Ljava/lang/String;

    const-string v1, "remove channel "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lio/agora/rtm/internal/RtmChannelImpl;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/agora/common/Logging;->desensetize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from rtm client"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRefChannels:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public renewToken(Ljava/lang/String;Lio/agora/rtm/ResultCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/agora/rtm/ResultCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/agora/rtm/internal/RtmClientImpl;->TAG:Ljava/lang/String;

    const-string v1, "renewToken: "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x8

    if-ge v2, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x4

    .line 2
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "****"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    :goto_0
    const-string v2, "invalid!"

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmLock:[B

    monitor-enter v2

    .line 5
    :try_start_0
    invoke-direct {p0}, Lio/agora/rtm/internal/RtmClientImpl;->isNativeReady()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 6
    iget-object v1, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmCallbackLock:[B

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    :try_start_1
    iget-object v3, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmServiceNative:Lio/agora/rtm/jni/IRtmService;

    invoke-virtual {v3, p1}, Lio/agora/rtm/jni/IRtmService;->renewToken(Ljava/lang/String;)I

    move-result v3

    .line 8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "renewToken ret: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    const-class v0, Lio/agora/rtm/jni/RENEW_TOKEN_ERR_CODE;

    invoke-static {v3, v0}, Lio/agora/rtm/internal/RtmSdkContext;->swigValueToEnumSafe(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/agora/rtm/jni/RENEW_TOKEN_ERR_CODE;

    .line 10
    sget-object v3, Lio/agora/rtm/jni/RENEW_TOKEN_ERR_CODE;->RENEW_TOKEN_ERR_OK:Lio/agora/rtm/jni/RENEW_TOKEN_ERR_CODE;

    if-ne v0, v3, :cond_2

    if-eqz p2, :cond_2

    .line 11
    iget-object v3, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRenewTokenCallbacks:Lio/agora/common/LruCache;

    invoke-virtual {v3, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :cond_2
    monitor-exit v1

    move-object v1, v0

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1

    .line 13
    :cond_3
    :goto_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 14
    sget-object p1, Lio/agora/rtm/jni/RENEW_TOKEN_ERR_CODE;->RENEW_TOKEN_ERR_OK:Lio/agora/rtm/jni/RENEW_TOKEN_ERR_CODE;

    if-eq v1, p1, :cond_5

    if-eqz p2, :cond_5

    if-nez v1, :cond_4

    .line 15
    sget-object v1, Lio/agora/rtm/jni/RENEW_TOKEN_ERR_CODE;->RENEW_TOKEN_ERR_FAILURE:Lio/agora/rtm/jni/RENEW_TOKEN_ERR_CODE;

    .line 16
    :cond_4
    new-instance p1, Lio/agora/rtm/ErrorInfo;

    invoke-virtual {v1}, Lio/agora/rtm/jni/RENEW_TOKEN_ERR_CODE;->swigValue()I

    move-result v0

    invoke-virtual {v1}, Lio/agora/rtm/jni/RENEW_TOKEN_ERR_CODE;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lio/agora/rtm/ErrorInfo;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, p1}, Lio/agora/rtm/ResultCallback;->onFailure(Lio/agora/rtm/ErrorInfo;)V

    :cond_5
    return-void

    :catchall_1
    move-exception p1

    .line 17
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public sendMessageToPeer(Ljava/lang/String;Lio/agora/rtm/RtmMessage;Lio/agora/rtm/ResultCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/agora/rtm/RtmMessage;",
            "Lio/agora/rtm/ResultCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0, p3}, Lio/agora/rtm/internal/RtmClientImpl;->sendMessageToPeer(Ljava/lang/String;Lio/agora/rtm/RtmMessage;Lio/agora/rtm/SendMessageOptions;Lio/agora/rtm/ResultCallback;)V

    return-void
.end method

.method public sendMessageToPeer(Ljava/lang/String;Lio/agora/rtm/RtmMessage;Lio/agora/rtm/SendMessageOptions;Lio/agora/rtm/ResultCallback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/agora/rtm/RtmMessage;",
            "Lio/agora/rtm/SendMessageOptions;",
            "Lio/agora/rtm/ResultCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 2
    sget-object v0, Lio/agora/rtm/internal/RtmClientImpl;->TAG:Ljava/lang/String;

    const-string v1, "sendMessageToPeer peerId: "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lio/agora/common/Logging;->desensetize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " options: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmLock:[B

    monitor-enter v1

    .line 4
    :try_start_0
    invoke-direct {p0}, Lio/agora/rtm/internal/RtmClientImpl;->isNativeReady()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_7

    if-eqz p1, :cond_7

    if-eqz p2, :cond_7

    .line 5
    invoke-virtual {p2}, Lio/agora/rtm/RtmMessage;->getMessageType()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 6
    iget-object v2, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmServiceNative:Lio/agora/rtm/jni/IRtmService;

    invoke-virtual {p2}, Lio/agora/rtm/RtmMessage;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lio/agora/rtm/jni/IRtmService;->createMessage(Ljava/lang/String;)Lio/agora/rtm/jni/IMessage;

    move-result-object v2

    goto/16 :goto_1

    .line 7
    :cond_0
    invoke-virtual {p2}, Lio/agora/rtm/RtmMessage;->getMessageType()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    .line 8
    invoke-virtual {p2}, Lio/agora/rtm/RtmMessage;->getRawMessage()[B

    move-result-object v2

    .line 9
    invoke-virtual {p2}, Lio/agora/rtm/RtmMessage;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 10
    iget-object v4, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmServiceNative:Lio/agora/rtm/jni/IRtmService;

    array-length v5, v2

    invoke-virtual {v4, v2, v5}, Lio/agora/rtm/jni/IRtmService;->createMessage([BI)Lio/agora/rtm/jni/IMessage;

    move-result-object v2

    goto/16 :goto_1

    .line 11
    :cond_1
    iget-object v4, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmServiceNative:Lio/agora/rtm/jni/IRtmService;

    array-length v5, v2

    invoke-virtual {p2}, Lio/agora/rtm/RtmMessage;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v2, v5, v6}, Lio/agora/rtm/jni/IRtmService;->createMessage([BILjava/lang/String;)Lio/agora/rtm/jni/IMessage;

    move-result-object v2

    goto/16 :goto_1

    .line 12
    :cond_2
    invoke-virtual {p2}, Lio/agora/rtm/RtmMessage;->getMessageType()I

    move-result v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_3

    .line 13
    move-object v2, p2

    check-cast v2, Lio/agora/rtm/RtmFileMessage;

    .line 14
    iget-object v4, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmServiceNative:Lio/agora/rtm/jni/IRtmService;

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
    invoke-virtual {p2}, Lio/agora/rtm/RtmMessage;->getMessageType()I

    move-result v2

    const/4 v4, 0x4

    if-ne v2, v4, :cond_4

    .line 19
    move-object v2, p2

    check-cast v2, Lio/agora/rtm/RtmImageMessage;

    .line 20
    iget-object v4, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmServiceNative:Lio/agora/rtm/jni/IRtmService;

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
    invoke-virtual {p2}, Lio/agora/rtm/RtmMessage;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Lio/agora/rtm/jni/IMessage;->setText(Ljava/lang/String;)V

    .line 29
    iget-object p2, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmCallbackLock:[B

    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p3, :cond_5

    .line 30
    :try_start_1
    iget-object p3, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmServiceNative:Lio/agora/rtm/jni/IRtmService;

    invoke-virtual {p3, p1, v2}, Lio/agora/rtm/jni/IRtmService;->sendMessageToPeer(Ljava/lang/String;Lio/agora/rtm/jni/IMessage;)I

    move-result p3

    goto :goto_2

    .line 31
    :cond_5
    new-instance v3, Lio/agora/rtm/jni/ISendMessageOptions;

    invoke-direct {v3}, Lio/agora/rtm/jni/ISendMessageOptions;-><init>()V

    .line 32
    iget-boolean v4, p3, Lio/agora/rtm/SendMessageOptions;->enableOfflineMessaging:Z

    invoke-virtual {v3, v4}, Lio/agora/rtm/jni/ISendMessageOptions;->setEnableOfflineMessaging(Z)V

    .line 33
    iget-boolean p3, p3, Lio/agora/rtm/SendMessageOptions;->enableHistoricalMessaging:Z

    invoke-virtual {v3, p3}, Lio/agora/rtm/jni/ISendMessageOptions;->setEnableHistoricalMessaging(Z)V

    .line 34
    iget-object p3, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmServiceNative:Lio/agora/rtm/jni/IRtmService;

    invoke-virtual {p3, p1, v2, v3}, Lio/agora/rtm/jni/IRtmService;->sendMessageToPeer(Ljava/lang/String;Lio/agora/rtm/jni/IMessage;Lio/agora/rtm/jni/ISendMessageOptions;)I

    move-result p3

    .line 35
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendMessageToPeer peerId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lio/agora/common/Logging;->desensetize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ret: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lio/agora/common/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-class p1, Lio/agora/rtm/jni/PEER_MESSAGE_ERR_CODE;

    invoke-static {p3, p1}, Lio/agora/rtm/internal/RtmSdkContext;->swigValueToEnumSafe(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lio/agora/rtm/jni/PEER_MESSAGE_ERR_CODE;

    .line 37
    sget-object p1, Lio/agora/rtm/jni/PEER_MESSAGE_ERR_CODE;->PEER_MESSAGE_ERR_OK:Lio/agora/rtm/jni/PEER_MESSAGE_ERR_CODE;

    if-ne v3, p1, :cond_6

    if-eqz p4, :cond_6

    .line 38
    iget-object p1, p0, Lio/agora/rtm/internal/RtmClientImpl;->mSendPeerMessageCallbacks:Lio/agora/common/LruCache;

    invoke-virtual {v2}, Lio/agora/rtm/jni/IMessage;->getMessageId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p3, p4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    :cond_6
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    :try_start_2
    invoke-virtual {v2}, Lio/agora/rtm/jni/IMessage;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_0
    move-exception p1

    .line 41
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    .line 42
    :cond_7
    :goto_3
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 43
    sget-object p1, Lio/agora/rtm/jni/PEER_MESSAGE_ERR_CODE;->PEER_MESSAGE_ERR_OK:Lio/agora/rtm/jni/PEER_MESSAGE_ERR_CODE;

    if-eq v3, p1, :cond_9

    if-eqz p4, :cond_9

    if-nez v3, :cond_8

    .line 44
    sget-object v3, Lio/agora/rtm/jni/PEER_MESSAGE_ERR_CODE;->PEER_MESSAGE_ERR_FAILURE:Lio/agora/rtm/jni/PEER_MESSAGE_ERR_CODE;

    .line 45
    :cond_8
    new-instance p1, Lio/agora/rtm/ErrorInfo;

    invoke-virtual {v3}, Lio/agora/rtm/jni/PEER_MESSAGE_ERR_CODE;->swigValue()I

    move-result p2

    invoke-virtual {v3}, Lio/agora/rtm/jni/PEER_MESSAGE_ERR_CODE;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lio/agora/rtm/ErrorInfo;-><init>(ILjava/lang/String;)V

    invoke-interface {p4, p1}, Lio/agora/rtm/ResultCallback;->onFailure(Lio/agora/rtm/ErrorInfo;)V

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

.method public setChannelAttributes(Ljava/lang/String;Ljava/util/List;Lio/agora/rtm/ChannelAttributeOptions;Lio/agora/rtm/ResultCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lio/agora/rtm/RtmChannelAttribute;",
            ">;",
            "Lio/agora/rtm/ChannelAttributeOptions;",
            "Lio/agora/rtm/ResultCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/agora/rtm/internal/RtmClientImpl;->TAG:Ljava/lang/String;

    const-string v1, "setChannelAttributes"

    invoke-static {v0, v1}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_3

    .line 2
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-direct {p0, p2}, Lio/agora/rtm/internal/RtmClientImpl;->convertChannelAttrListToInternal(Ljava/util/List;)[Lio/agora/rtm/jni/IRtmChannelAttribute;

    move-result-object p2

    .line 4
    invoke-direct {p0, p3}, Lio/agora/rtm/internal/RtmClientImpl;->convertChannelAttrOptToInternal(Lio/agora/rtm/ChannelAttributeOptions;)Lio/agora/rtm/jni/IChannelAttributeOptions;

    move-result-object p3

    .line 5
    new-instance v1, Lio/agora/rtm/jni/SWIGTYPE_p_long_long;

    invoke-direct {v1}, Lio/agora/rtm/jni/SWIGTYPE_p_long_long;-><init>()V

    .line 6
    iget-object v2, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmLock:[B

    monitor-enter v2

    .line 7
    :try_start_0
    invoke-direct {p0}, Lio/agora/rtm/internal/RtmClientImpl;->isNativeReady()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 8
    iget-object v3, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmCallbackLock:[B

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    :try_start_1
    iget-object v4, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmServiceNative:Lio/agora/rtm/jni/IRtmService;

    invoke-virtual {v4, p1, p2, p3, v1}, Lio/agora/rtm/jni/IRtmService;->setChannelAttributes(Ljava/lang/String;[Lio/agora/rtm/jni/IRtmChannelAttribute;Lio/agora/rtm/jni/IChannelAttributeOptions;Lio/agora/rtm/jni/SWIGTYPE_p_long_long;)I

    move-result p1

    .line 10
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setChannelAttributes ret: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    const-class p2, Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;

    invoke-static {p1, p2}, Lio/agora/rtm/internal/RtmSdkContext;->swigValueToEnumSafe(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;

    .line 12
    sget-object p2, Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;->ATTRIBUTE_OPERATION_ERR_OK:Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;

    if-ne p1, p2, :cond_1

    if-eqz p4, :cond_1

    .line 13
    iget-object p2, p0, Lio/agora/rtm/internal/RtmClientImpl;->mSetChannelAttrCallbacks:Lio/agora/common/LruCache;

    invoke-static {v1}, Lio/agora/rtm/jni/SWIGTYPE_p_long_long;->dereference(Lio/agora/rtm/jni/SWIGTYPE_p_long_long;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p2, p3, p4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :cond_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1

    :cond_2
    const/4 p1, 0x0

    .line 15
    :goto_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 16
    invoke-direct {p0, p1, p4}, Lio/agora/rtm/internal/RtmClientImpl;->processAttrApiError(Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;Lio/agora/rtm/ResultCallback;)V

    return-void

    :catchall_1
    move-exception p1

    .line 17
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :cond_3
    :goto_1
    const-string p1, "attribute list is null or empty!"

    .line 18
    invoke-static {v0, p1}, Lio/agora/common/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    sget-object p1, Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;->ATTRIBUTE_OPERATION_ERR_INVALID_ARGUMENT:Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;

    invoke-direct {p0, p1, p4}, Lio/agora/rtm/internal/RtmClientImpl;->processAttrApiError(Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;Lio/agora/rtm/ResultCallback;)V

    return-void
.end method

.method public setLocalUserAttributes(Ljava/util/List;Lio/agora/rtm/ResultCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/agora/rtm/RtmAttribute;",
            ">;",
            "Lio/agora/rtm/ResultCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/agora/rtm/internal/RtmClientImpl;->TAG:Ljava/lang/String;

    const-string v1, "setLocalUserAttributes"

    invoke-static {v0, v1}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    .line 2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lio/agora/rtm/internal/RtmClientImpl;->convertAttrListToInternal(Ljava/util/List;)[Lio/agora/rtm/jni/IRtmAttribute;

    move-result-object p1

    .line 4
    new-instance v1, Lio/agora/rtm/jni/SWIGTYPE_p_long_long;

    invoke-direct {v1}, Lio/agora/rtm/jni/SWIGTYPE_p_long_long;-><init>()V

    .line 5
    iget-object v2, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmLock:[B

    monitor-enter v2

    .line 6
    :try_start_0
    invoke-direct {p0}, Lio/agora/rtm/internal/RtmClientImpl;->isNativeReady()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 7
    iget-object v3, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmCallbackLock:[B

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    :try_start_1
    iget-object v4, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmServiceNative:Lio/agora/rtm/jni/IRtmService;

    invoke-virtual {v4, p1, v1}, Lio/agora/rtm/jni/IRtmService;->setLocalUserAttributes([Lio/agora/rtm/jni/IRtmAttribute;Lio/agora/rtm/jni/SWIGTYPE_p_long_long;)I

    move-result p1

    .line 9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setLocalUserAttributes ret: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    const-class v0, Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;

    invoke-static {p1, v0}, Lio/agora/rtm/internal/RtmSdkContext;->swigValueToEnumSafe(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;

    .line 11
    sget-object v0, Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;->ATTRIBUTE_OPERATION_ERR_OK:Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_1

    .line 12
    iget-object v0, p0, Lio/agora/rtm/internal/RtmClientImpl;->mSetLocalUserAttrCallbacks:Lio/agora/common/LruCache;

    invoke-static {v1}, Lio/agora/rtm/jni/SWIGTYPE_p_long_long;->dereference(Lio/agora/rtm/jni/SWIGTYPE_p_long_long;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    :cond_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1

    :cond_2
    const/4 p1, 0x0

    .line 14
    :goto_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 15
    invoke-direct {p0, p1, p2}, Lio/agora/rtm/internal/RtmClientImpl;->processAttrApiError(Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;Lio/agora/rtm/ResultCallback;)V

    return-void

    :catchall_1
    move-exception p1

    .line 16
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :cond_3
    :goto_1
    const-string p1, "attribute list is null or empty!"

    .line 17
    invoke-static {v0, p1}, Lio/agora/common/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    sget-object p1, Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;->ATTRIBUTE_OPERATION_ERR_INVALID_ARGUMENT:Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;

    invoke-direct {p0, p1, p2}, Lio/agora/rtm/internal/RtmClientImpl;->processAttrApiError(Lio/agora/rtm/jni/ATTRIBUTE_OPERATION_ERR;Lio/agora/rtm/ResultCallback;)V

    return-void
.end method

.method public setLogFile(Ljava/lang/String;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmServiceNative:Lio/agora/rtm/jni/IRtmService;

    invoke-virtual {v0, p1}, Lio/agora/rtm/jni/IRtmService;->setLogFile(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public setLogFileSize(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmServiceNative:Lio/agora/rtm/jni/IRtmService;

    invoke-virtual {v0, p1}, Lio/agora/rtm/jni/IRtmService;->setLogFileSize(I)I

    move-result p1

    return p1
.end method

.method public setLogFilter(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmServiceNative:Lio/agora/rtm/jni/IRtmService;

    invoke-virtual {v0, p1}, Lio/agora/rtm/jni/IRtmService;->setLogFilter(I)I

    move-result p1

    return p1
.end method

.method public setParameters(Ljava/lang/String;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmServiceNative:Lio/agora/rtm/jni/IRtmService;

    invoke-virtual {v0, p1}, Lio/agora/rtm/jni/IRtmService;->setParameters(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public subscribePeersOnlineStatus(Ljava/util/Set;Lio/agora/rtm/ResultCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lio/agora/rtm/ResultCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/agora/rtm/internal/RtmClientImpl;->TAG:Ljava/lang/String;

    const-string v1, "subscribePeersOnlineStatus"

    invoke-static {v0, v1}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmLock:[B

    monitor-enter v1

    .line 3
    :try_start_0
    invoke-direct {p0}, Lio/agora/rtm/internal/RtmClientImpl;->isNativeReady()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4
    iget-object v2, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmCallbackLock:[B

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x0

    :try_start_1
    new-array v3, v3, [Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 5
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 6
    invoke-interface {p1, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, [Ljava/lang/String;

    .line 7
    :cond_0
    new-instance p1, Lio/agora/rtm/jni/SWIGTYPE_p_long_long;

    invoke-direct {p1}, Lio/agora/rtm/jni/SWIGTYPE_p_long_long;-><init>()V

    .line 8
    iget-object v4, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmServiceNative:Lio/agora/rtm/jni/IRtmService;

    array-length v5, v3

    invoke-virtual {v4, v3, v5, p1}, Lio/agora/rtm/jni/IRtmService;->subscribePeersOnlineStatus([Ljava/lang/String;ILio/agora/rtm/jni/SWIGTYPE_p_long_long;)I

    move-result v3

    .line 9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "subscribePeersOnlineStatus, ret: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    const-class v0, Lio/agora/rtm/jni/PEER_SUBSCRIPTION_STATUS_ERR;

    invoke-static {v3, v0}, Lio/agora/rtm/internal/RtmSdkContext;->swigValueToEnumSafe(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/agora/rtm/jni/PEER_SUBSCRIPTION_STATUS_ERR;

    .line 11
    sget-object v3, Lio/agora/rtm/jni/PEER_SUBSCRIPTION_STATUS_ERR;->PEER_SUBSCRIPTION_STATUS_ERR_OK:Lio/agora/rtm/jni/PEER_SUBSCRIPTION_STATUS_ERR;

    if-ne v0, v3, :cond_1

    if-eqz p2, :cond_1

    .line 12
    iget-object v3, p0, Lio/agora/rtm/internal/RtmClientImpl;->mSubscribePeersOnlineStatusCallbacks:Lio/agora/common/LruCache;

    invoke-static {p1}, Lio/agora/rtm/jni/SWIGTYPE_p_long_long;->dereference(Lio/agora/rtm/jni/SWIGTYPE_p_long_long;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v3, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    :cond_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1

    :cond_2
    const/4 v0, 0x0

    .line 14
    :goto_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 15
    sget-object p1, Lio/agora/rtm/jni/PEER_SUBSCRIPTION_STATUS_ERR;->PEER_SUBSCRIPTION_STATUS_ERR_OK:Lio/agora/rtm/jni/PEER_SUBSCRIPTION_STATUS_ERR;

    if-eq v0, p1, :cond_4

    if-eqz p2, :cond_4

    if-nez v0, :cond_3

    .line 16
    sget-object v0, Lio/agora/rtm/jni/PEER_SUBSCRIPTION_STATUS_ERR;->PEER_SUBSCRIPTION_STATUS_ERR_FAILURE:Lio/agora/rtm/jni/PEER_SUBSCRIPTION_STATUS_ERR;

    .line 17
    :cond_3
    new-instance p1, Lio/agora/rtm/ErrorInfo;

    invoke-virtual {v0}, Lio/agora/rtm/jni/PEER_SUBSCRIPTION_STATUS_ERR;->swigValue()I

    move-result v1

    invoke-virtual {v0}, Lio/agora/rtm/jni/PEER_SUBSCRIPTION_STATUS_ERR;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Lio/agora/rtm/ErrorInfo;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, p1}, Lio/agora/rtm/ResultCallback;->onFailure(Lio/agora/rtm/ErrorInfo;)V

    :cond_4
    return-void

    :catchall_1
    move-exception p1

    .line 18
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public unsubscribePeersOnlineStatus(Ljava/util/Set;Lio/agora/rtm/ResultCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lio/agora/rtm/ResultCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/agora/rtm/internal/RtmClientImpl;->TAG:Ljava/lang/String;

    const-string v1, "subscribePeersOnlineStatus"

    invoke-static {v0, v1}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmLock:[B

    monitor-enter v1

    .line 3
    :try_start_0
    invoke-direct {p0}, Lio/agora/rtm/internal/RtmClientImpl;->isNativeReady()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4
    iget-object v2, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmCallbackLock:[B

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x0

    :try_start_1
    new-array v3, v3, [Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 5
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 6
    invoke-interface {p1, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, [Ljava/lang/String;

    .line 7
    :cond_0
    new-instance p1, Lio/agora/rtm/jni/SWIGTYPE_p_long_long;

    invoke-direct {p1}, Lio/agora/rtm/jni/SWIGTYPE_p_long_long;-><init>()V

    .line 8
    iget-object v4, p0, Lio/agora/rtm/internal/RtmClientImpl;->mRtmServiceNative:Lio/agora/rtm/jni/IRtmService;

    array-length v5, v3

    invoke-virtual {v4, v3, v5, p1}, Lio/agora/rtm/jni/IRtmService;->unsubscribePeersOnlineStatus([Ljava/lang/String;ILio/agora/rtm/jni/SWIGTYPE_p_long_long;)I

    move-result v3

    .line 9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unsubscribePeersOnlineStatus, ret: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lio/agora/common/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    const-class v0, Lio/agora/rtm/jni/PEER_SUBSCRIPTION_STATUS_ERR;

    invoke-static {v3, v0}, Lio/agora/rtm/internal/RtmSdkContext;->swigValueToEnumSafe(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/agora/rtm/jni/PEER_SUBSCRIPTION_STATUS_ERR;

    .line 11
    sget-object v3, Lio/agora/rtm/jni/PEER_SUBSCRIPTION_STATUS_ERR;->PEER_SUBSCRIPTION_STATUS_ERR_OK:Lio/agora/rtm/jni/PEER_SUBSCRIPTION_STATUS_ERR;

    if-ne v0, v3, :cond_1

    if-eqz p2, :cond_1

    .line 12
    iget-object v3, p0, Lio/agora/rtm/internal/RtmClientImpl;->mSubscribePeersOnlineStatusCallbacks:Lio/agora/common/LruCache;

    invoke-static {p1}, Lio/agora/rtm/jni/SWIGTYPE_p_long_long;->dereference(Lio/agora/rtm/jni/SWIGTYPE_p_long_long;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v3, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    :cond_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1

    :cond_2
    const/4 v0, 0x0

    .line 14
    :goto_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 15
    sget-object p1, Lio/agora/rtm/jni/PEER_SUBSCRIPTION_STATUS_ERR;->PEER_SUBSCRIPTION_STATUS_ERR_OK:Lio/agora/rtm/jni/PEER_SUBSCRIPTION_STATUS_ERR;

    if-eq v0, p1, :cond_4

    if-eqz p2, :cond_4

    if-nez v0, :cond_3

    .line 16
    sget-object v0, Lio/agora/rtm/jni/PEER_SUBSCRIPTION_STATUS_ERR;->PEER_SUBSCRIPTION_STATUS_ERR_FAILURE:Lio/agora/rtm/jni/PEER_SUBSCRIPTION_STATUS_ERR;

    .line 17
    :cond_3
    new-instance p1, Lio/agora/rtm/ErrorInfo;

    invoke-virtual {v0}, Lio/agora/rtm/jni/PEER_SUBSCRIPTION_STATUS_ERR;->swigValue()I

    move-result v1

    invoke-virtual {v0}, Lio/agora/rtm/jni/PEER_SUBSCRIPTION_STATUS_ERR;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Lio/agora/rtm/ErrorInfo;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, p1}, Lio/agora/rtm/ResultCallback;->onFailure(Lio/agora/rtm/ErrorInfo;)V

    :cond_4
    return-void

    :catchall_1
    move-exception p1

    .line 18
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method
