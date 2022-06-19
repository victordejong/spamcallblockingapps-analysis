.class public abstract Lio/agora/rtm/RtmClient;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AGORA_RTM_END_CALL_PREFIX:Ljava/lang/String; = "AgoraRTMLegacyEndcallCompatibleMessagePrefix"

.field public static final LOG_FILTER_CRITICAL:I = 0x8

.field public static final LOG_FILTER_ERROR:I = 0xc

.field public static final LOG_FILTER_INFO:I = 0xf

.field public static final LOG_FILTER_OFF:I = 0x0

.field public static final LOG_FILTER_WARNING:I = 0xe


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 1
    invoke-static {}, Lio/agora/rtm/internal/RtmManager;->initializeNative()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createInstance(Landroid/content/Context;Ljava/lang/String;Lio/agora/rtm/RtmClientListener;)Lio/agora/rtm/RtmClient;
    .locals 0
    .param p0    # Landroid/content/Context;
        .annotation build Lio/agora/common/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lio/agora/common/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/agora/rtm/RtmClientListener;
        .annotation build Lio/agora/common/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lio/agora/rtm/internal/RtmManager;->createRtmInstance(Landroid/content/Context;Ljava/lang/String;Lio/agora/rtm/RtmClientListener;)Lio/agora/rtm/RtmClient;

    move-result-object p0

    return-object p0
.end method

.method public static getSdkVersion()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lio/agora/common/AgoraServiceJNI;->ensureNativeInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 2
    :cond_0
    invoke-static {}, Lio/agora/common/AgoraServiceJNI;->nativeGetSdkVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setRtmServiceContext(Lio/agora/rtm/RtmServiceContext;)Lio/agora/rtm/jni/SET_RTM_SERVICE_CONTEXT_ERR_CODE;
    .locals 0

    .line 1
    invoke-static {p0}, Lio/agora/rtm/internal/RtmManager;->setRtmServiceContext(Lio/agora/rtm/RtmServiceContext;)I

    move-result p0

    invoke-static {p0}, Lio/agora/rtm/jni/SET_RTM_SERVICE_CONTEXT_ERR_CODE;->swigToEnum(I)Lio/agora/rtm/jni/SET_RTM_SERVICE_CONTEXT_ERR_CODE;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract addOrUpdateChannelAttributes(Ljava/lang/String;Ljava/util/List;Lio/agora/rtm/ChannelAttributeOptions;Lio/agora/rtm/ResultCallback;)V
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
.end method

.method public abstract addOrUpdateLocalUserAttributes(Ljava/util/List;Lio/agora/rtm/ResultCallback;)V
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
.end method

.method public abstract cancelMediaDownload(Lio/agora/rtm/RtmRequestId;Lio/agora/rtm/ResultCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/agora/rtm/RtmRequestId;",
            "Lio/agora/rtm/ResultCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract cancelMediaUpload(Lio/agora/rtm/RtmRequestId;Lio/agora/rtm/ResultCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/agora/rtm/RtmRequestId;",
            "Lio/agora/rtm/ResultCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract clearChannelAttributes(Ljava/lang/String;Lio/agora/rtm/ChannelAttributeOptions;Lio/agora/rtm/ResultCallback;)V
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
.end method

.method public abstract clearLocalUserAttributes(Lio/agora/rtm/ResultCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/agora/rtm/ResultCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract createChannel(Ljava/lang/String;Lio/agora/rtm/RtmChannelListener;)Lio/agora/rtm/RtmChannel;
    .param p1    # Ljava/lang/String;
        .annotation build Lio/agora/common/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/agora/rtm/RtmChannelListener;
        .annotation build Lio/agora/common/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation
.end method

.method public abstract createFileMessageByMediaId(Ljava/lang/String;)Lio/agora/rtm/RtmFileMessage;
    .param p1    # Ljava/lang/String;
        .annotation build Lio/agora/common/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract createFileMessageByUploading(Ljava/lang/String;Lio/agora/rtm/RtmRequestId;Lio/agora/rtm/ResultCallback;)V
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
.end method

.method public abstract createImageMessageByMediaId(Ljava/lang/String;)Lio/agora/rtm/RtmImageMessage;
    .param p1    # Ljava/lang/String;
        .annotation build Lio/agora/common/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract createImageMessageByUploading(Ljava/lang/String;Lio/agora/rtm/RtmRequestId;Lio/agora/rtm/ResultCallback;)V
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
.end method

.method public abstract createMessage()Lio/agora/rtm/RtmMessage;
.end method

.method public abstract createMessage(Ljava/lang/String;)Lio/agora/rtm/RtmMessage;
.end method

.method public abstract createMessage([B)Lio/agora/rtm/RtmMessage;
.end method

.method public abstract createMessage([BLjava/lang/String;)Lio/agora/rtm/RtmMessage;
.end method

.method public abstract deleteChannelAttributesByKeys(Ljava/lang/String;Ljava/util/List;Lio/agora/rtm/ChannelAttributeOptions;Lio/agora/rtm/ResultCallback;)V
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
.end method

.method public abstract deleteLocalUserAttributesByKeys(Ljava/util/List;Lio/agora/rtm/ResultCallback;)V
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
.end method

.method public abstract downloadMediaToFile(Ljava/lang/String;Ljava/lang/String;Lio/agora/rtm/RtmRequestId;Lio/agora/rtm/ResultCallback;)V
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
.end method

.method public abstract downloadMediaToMemory(Ljava/lang/String;Lio/agora/rtm/RtmRequestId;Lio/agora/rtm/ResultCallback;)V
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
.end method

.method public abstract getChannelAttributes(Ljava/lang/String;Lio/agora/rtm/ResultCallback;)V
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
.end method

.method public abstract getChannelAttributesByKeys(Ljava/lang/String;Ljava/util/List;Lio/agora/rtm/ResultCallback;)V
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
.end method

.method public abstract getChannelMemberCount(Ljava/util/List;Lio/agora/rtm/ResultCallback;)V
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
.end method

.method public abstract getRtmCallManager()Lio/agora/rtm/RtmCallManager;
.end method

.method public abstract getUserAttributes(Ljava/lang/String;Lio/agora/rtm/ResultCallback;)V
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
.end method

.method public abstract getUserAttributesByKeys(Ljava/lang/String;Ljava/util/List;Lio/agora/rtm/ResultCallback;)V
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
.end method

.method public abstract login(Ljava/lang/String;Ljava/lang/String;Lio/agora/rtm/ResultCallback;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lio/agora/common/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lio/agora/common/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/agora/rtm/ResultCallback;
        .annotation build Lio/agora/common/annotation/Nullable;
        .end annotation
    .end param
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
.end method

.method public abstract logout(Lio/agora/rtm/ResultCallback;)V
    .param p1    # Lio/agora/rtm/ResultCallback;
        .annotation build Lio/agora/common/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/agora/rtm/ResultCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract queryPeersBySubscriptionOption(Ljava/lang/Integer;Lio/agora/rtm/ResultCallback;)V
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
.end method

.method public abstract queryPeersOnlineStatus(Ljava/util/Set;Lio/agora/rtm/ResultCallback;)V
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
.end method

.method public abstract release()V
.end method

.method public abstract renewToken(Ljava/lang/String;Lio/agora/rtm/ResultCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/agora/rtm/ResultCallback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract sendMessageToPeer(Ljava/lang/String;Lio/agora/rtm/RtmMessage;Lio/agora/rtm/ResultCallback;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lio/agora/common/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/agora/rtm/RtmMessage;
        .annotation build Lio/agora/common/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/agora/rtm/ResultCallback;
        .annotation build Lio/agora/common/annotation/Nullable;
        .end annotation
    .end param
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
.end method

.method public abstract sendMessageToPeer(Ljava/lang/String;Lio/agora/rtm/RtmMessage;Lio/agora/rtm/SendMessageOptions;Lio/agora/rtm/ResultCallback;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lio/agora/common/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/agora/rtm/RtmMessage;
        .annotation build Lio/agora/common/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/agora/rtm/SendMessageOptions;
        .annotation build Lio/agora/common/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lio/agora/rtm/ResultCallback;
        .annotation build Lio/agora/common/annotation/Nullable;
        .end annotation
    .end param
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
.end method

.method public abstract setChannelAttributes(Ljava/lang/String;Ljava/util/List;Lio/agora/rtm/ChannelAttributeOptions;Lio/agora/rtm/ResultCallback;)V
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
.end method

.method public abstract setLocalUserAttributes(Ljava/util/List;Lio/agora/rtm/ResultCallback;)V
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
.end method

.method public abstract setLogFile(Ljava/lang/String;)I
.end method

.method public abstract setLogFileSize(I)I
.end method

.method public abstract setLogFilter(I)I
.end method

.method public abstract setParameters(Ljava/lang/String;)I
.end method

.method public abstract subscribePeersOnlineStatus(Ljava/util/Set;Lio/agora/rtm/ResultCallback;)V
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
.end method

.method public abstract unsubscribePeersOnlineStatus(Ljava/util/Set;Lio/agora/rtm/ResultCallback;)V
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
.end method
