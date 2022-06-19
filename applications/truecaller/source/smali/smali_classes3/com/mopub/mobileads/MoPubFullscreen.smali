.class public Lcom/mopub/mobileads/MoPubFullscreen;
.super Lcom/mopub/mobileads/BaseAd;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/mobileads/VastManager$VastManagerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/MoPubFullscreen$a;
    }
.end annotation


# static fields
.field public static final ADAPTER_NAME:Ljava/lang/String; = "MoPubFullscreen"


# instance fields
.field public d:Lcom/mopub/mobileads/EventForwardingBroadcastReceiver;

.field public e:Landroid/content/Context;

.field public f:J

.field public g:Lcom/mopub/mobileads/AdData;

.field public h:Lcom/mopub/mobileads/VastManager;

.field public i:Lorg/json/JSONObject;

.field public j:Landroid/os/Handler;

.field public k:Ljava/lang/Runnable;

.field public l:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mopub/mobileads/BaseAd;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;Lcom/mopub/mobileads/AdData;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public c()Lcom/mopub/common/LifecycleListener;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public d()V
    .locals 5

    .line 1
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->SHOW_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    sget-object v3, Lcom/mopub/mobileads/MoPubFullscreen;->ADAPTER_NAME:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 2
    iget-boolean v0, p0, Lcom/mopub/mobileads/MoPubFullscreen;->l:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubFullscreen;->e:Landroid/content/Context;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcom/mopub/mobileads/EventForwardingBroadcastReceiver;

    iget-object v1, p0, Lcom/mopub/mobileads/BaseAd;->c:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    iget-wide v2, p0, Lcom/mopub/mobileads/MoPubFullscreen;->f:J

    invoke-direct {v0, v1, v2, v3}, Lcom/mopub/mobileads/EventForwardingBroadcastReceiver;-><init>(Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;J)V

    iput-object v0, p0, Lcom/mopub/mobileads/MoPubFullscreen;->d:Lcom/mopub/mobileads/EventForwardingBroadcastReceiver;

    .line 4
    iget-object v1, p0, Lcom/mopub/mobileads/MoPubFullscreen;->e:Landroid/content/Context;

    invoke-virtual {v0, v0, v1}, Lcom/mopub/mobileads/BaseBroadcastReceiver;->register(Landroid/content/BroadcastReceiver;Landroid/content/Context;)V

    .line 5
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubFullscreen;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/mopub/mobileads/MoPubFullscreen;->g:Lcom/mopub/mobileads/AdData;

    invoke-static {v0, v1}, Lcom/mopub/mobileads/MoPubFullscreenActivity;->start(Landroid/content/Context;Lcom/mopub/mobileads/AdData;)V

    return-void

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->SHOW_FAILED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v4

    sget-object v3, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 7
    invoke-virtual {v3}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    const/4 v1, 0x2

    aput-object v3, v2, v1

    .line 8
    invoke-static {v0, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 9
    iget-object v0, p0, Lcom/mopub/mobileads/BaseAd;->c:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    if-eqz v0, :cond_2

    .line 10
    invoke-interface {v0, v3}, Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;->onAdFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    :cond_2
    return-void
.end method

.method public f()V
    .locals 2
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/mopub/mobileads/MoPubFullscreen;->l:Z

    .line 2
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubFullscreen;->g:Lcom/mopub/mobileads/AdData;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubFullscreen;->j:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/mopub/mobileads/MoPubFullscreen;->k:Ljava/lang/Runnable;

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public g()V
    .locals 4
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/mopub/mobileads/MoPubFullscreen;->l:Z

    .line 2
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubFullscreen;->g:Lcom/mopub/mobileads/AdData;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubFullscreen;->j:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/mopub/mobileads/MoPubFullscreen;->k:Ljava/lang/Runnable;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-wide/32 v2, 0xdbba00

    .line 3
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public getAdNetworkId()Ljava/lang/String;
    .locals 5

    .line 1
    const-class v0, Lcom/mopub/mobileads/MoPubFullscreen;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 2
    iget-object v2, p0, Lcom/mopub/mobileads/MoPubFullscreen;->g:Lcom/mopub/mobileads/AdData;

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v2}, Lcom/mopub/mobileads/AdData;->getAdUnit()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    iget-object v1, p0, Lcom/mopub/mobileads/MoPubFullscreen;->g:Lcom/mopub/mobileads/AdData;

    invoke-virtual {v1}, Lcom/mopub/mobileads/AdData;->getAdUnit()Ljava/lang/String;

    move-result-object v1

    .line 5
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "Called getAdNetworkId before load() or no ad unit associated. Returning class name."

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :cond_1
    return-object v1
.end method

.method public load(Landroid/content/Context;Lcom/mopub/mobileads/AdData;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/BaseAd;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    invoke-static {v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 2
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 3
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 4
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    sget-object v3, Lcom/mopub/mobileads/MoPubFullscreen;->ADAPTER_NAME:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 5
    iput-object p1, p0, Lcom/mopub/mobileads/MoPubFullscreen;->e:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Lcom/mopub/mobileads/MoPubFullscreen;->g:Lcom/mopub/mobileads/AdData;

    .line 7
    invoke-virtual {p2}, Lcom/mopub/mobileads/AdData;->getExtras()Ljava/util/Map;

    move-result-object p1

    .line 8
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubFullscreen;->g:Lcom/mopub/mobileads/AdData;

    if-eqz v0, :cond_6

    const-string v2, "com_mopub_orientation"

    .line 9
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/mopub/common/CreativeOrientation;->fromString(Ljava/lang/String;)Lcom/mopub/common/CreativeOrientation;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mopub/mobileads/AdData;->setOrientation(Lcom/mopub/common/CreativeOrientation;)V

    const-string v0, "video-trackers"

    .line 10
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 11
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x2

    if-nez v0, :cond_0

    .line 12
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mopub/mobileads/MoPubFullscreen;->i:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 13
    sget-object v3, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->CUSTOM_WITH_THROWABLE:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array v5, v2, [Ljava/lang/Object;

    const-string v6, "Failed to parse video trackers to JSON: "

    invoke-static {v6, p1}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v4

    aput-object v0, v5, v1

    invoke-static {v3, v5}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Lcom/mopub/mobileads/MoPubFullscreen;->i:Lorg/json/JSONObject;

    :cond_0
    :goto_0
    const/4 p1, 0x3

    .line 15
    :try_start_1
    invoke-virtual {p2}, Lcom/mopub/mobileads/AdData;->getBroadcastIdentifier()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/mopub/mobileads/MoPubFullscreen;->f:J
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_2

    .line 16
    sget-object p2, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array v0, v1, [Ljava/lang/Object;

    sget-object v3, Lcom/mopub/mobileads/MoPubFullscreen;->ADAPTER_NAME:Ljava/lang/String;

    aput-object v3, v0, v4

    invoke-static {p2, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 17
    iget-object p2, p0, Lcom/mopub/mobileads/MoPubFullscreen;->e:Landroid/content/Context;

    invoke-static {p2}, Lcom/mopub/common/CacheService;->initializeDiskCache(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 18
    sget-object p2, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_FAILED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array p1, p1, [Ljava/lang/Object;

    aput-object v3, p1, v4

    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->VIDEO_CACHE_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 19
    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p1, v1

    aput-object v0, p1, v2

    .line 20
    invoke-static {p2, p1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 21
    iget-object p1, p0, Lcom/mopub/mobileads/BaseAd;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    invoke-interface {p1, v0}, Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;->onAdLoadFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto/16 :goto_1

    .line 22
    :cond_1
    iget-object p1, p0, Lcom/mopub/mobileads/MoPubFullscreen;->g:Lcom/mopub/mobileads/AdData;

    if-nez p1, :cond_2

    .line 23
    iget-object p1, p0, Lcom/mopub/mobileads/BaseAd;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    sget-object p2, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_INVALID_STATE:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p1, p2}, Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;->onAdLoadFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto/16 :goto_1

    .line 24
    :cond_2
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/mopub/mobileads/MoPubFullscreen;->j:Landroid/os/Handler;

    .line 25
    new-instance p1, Le/n/b/x;

    invoke-direct {p1, p0}, Le/n/b/x;-><init>(Lcom/mopub/mobileads/MoPubFullscreen;)V

    iput-object p1, p0, Lcom/mopub/mobileads/MoPubFullscreen;->k:Ljava/lang/Runnable;

    .line 26
    iget-object p1, p0, Lcom/mopub/mobileads/MoPubFullscreen;->g:Lcom/mopub/mobileads/AdData;

    invoke-virtual {p1}, Lcom/mopub/mobileads/AdData;->getFullAdType()Ljava/lang/String;

    move-result-object p1

    const-string p2, "vast"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 27
    iget-object p1, p0, Lcom/mopub/mobileads/MoPubFullscreen;->e:Landroid/content/Context;

    invoke-static {p1}, Lcom/mopub/mobileads/factories/VastManagerFactory;->create(Landroid/content/Context;)Lcom/mopub/mobileads/VastManager;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/mobileads/MoPubFullscreen;->h:Lcom/mopub/mobileads/VastManager;

    .line 28
    iget-object p2, p0, Lcom/mopub/mobileads/MoPubFullscreen;->g:Lcom/mopub/mobileads/AdData;

    invoke-virtual {p2}, Lcom/mopub/mobileads/AdData;->getAdPayload()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/mopub/mobileads/MoPubFullscreen;->g:Lcom/mopub/mobileads/AdData;

    .line 29
    invoke-virtual {v0}, Lcom/mopub/mobileads/AdData;->getDspCreativeId()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/mopub/mobileads/MoPubFullscreen;->e:Landroid/content/Context;

    .line 30
    invoke-virtual {p1, p2, p0, v0, v2}, Lcom/mopub/mobileads/VastManager;->prepareVastVideoConfiguration(Ljava/lang/String;Lcom/mopub/mobileads/VastManager$VastManagerListener;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_1

    .line 31
    :cond_3
    iget-object p1, p0, Lcom/mopub/mobileads/MoPubFullscreen;->g:Lcom/mopub/mobileads/AdData;

    invoke-virtual {p1}, Lcom/mopub/mobileads/AdData;->getFullAdType()Ljava/lang/String;

    move-result-object p1

    const-string p2, "json"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 32
    iget-object p1, p0, Lcom/mopub/mobileads/MoPubFullscreen;->e:Landroid/content/Context;

    iget-object p2, p0, Lcom/mopub/mobileads/MoPubFullscreen;->g:Lcom/mopub/mobileads/AdData;

    .line 33
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 34
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 35
    :try_start_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p2}, Lcom/mopub/mobileads/AdData;->getAdPayload()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "image"

    .line 36
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 37
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 38
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array p2, v1, [Ljava/lang/Object;

    const-string v0, "Image url is empty."

    aput-object v0, p2, v4

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 39
    iget-object p1, p0, Lcom/mopub/mobileads/BaseAd;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    sget-object p2, Lcom/mopub/mobileads/MoPubErrorCode;->FULLSCREEN_LOAD_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p1, p2}, Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;->onAdLoadFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_1

    .line 40
    :cond_4
    new-instance v0, Le/n/b/m0;

    invoke-direct {v0, p0}, Le/n/b/m0;-><init>(Lcom/mopub/mobileads/MoPubFullscreen;)V

    .line 41
    invoke-static {p1}, Lcom/mopub/network/Networking;->getImageLoader(Landroid/content/Context;)Lcom/mopub/network/MaxWidthImageLoader;

    move-result-object p1

    .line 42
    invoke-virtual {p1, p2, v0}, Lcom/mopub/network/MaxWidthImageLoader;->get(Ljava/lang/String;Lcom/mopub/volley/toolbox/ImageLoader$ImageListener;)Lcom/mopub/volley/toolbox/ImageLoader$ImageContainer;

    goto :goto_1

    .line 43
    :catch_1
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array p2, v1, [Ljava/lang/Object;

    const-string v0, "Unable to get image url."

    aput-object v0, p2, v4

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 44
    iget-object p1, p0, Lcom/mopub/mobileads/BaseAd;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    sget-object p2, Lcom/mopub/mobileads/MoPubErrorCode;->FULLSCREEN_LOAD_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p1, p2}, Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;->onAdLoadFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_1

    .line 45
    :cond_5
    iget-object p1, p0, Lcom/mopub/mobileads/MoPubFullscreen;->e:Landroid/content/Context;

    iget-object p2, p0, Lcom/mopub/mobileads/MoPubFullscreen;->g:Lcom/mopub/mobileads/AdData;

    invoke-virtual {p0, p1, p2}, Lcom/mopub/mobileads/MoPubFullscreen;->preRenderWeb(Landroid/content/Context;Lcom/mopub/mobileads/AdData;)V

    .line 46
    :goto_1
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_SUCCESS:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array p2, v1, [Ljava/lang/Object;

    sget-object v0, Lcom/mopub/mobileads/MoPubFullscreen;->ADAPTER_NAME:Ljava/lang/String;

    aput-object v0, p2, v4

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void

    .line 47
    :catch_2
    sget-object p2, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v3, "LocalExtras contained an incorrect type."

    aput-object v3, v0, v4

    invoke-static {p2, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 48
    sget-object p2, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_FAILED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array p1, p1, [Ljava/lang/Object;

    sget-object v0, Lcom/mopub/mobileads/MoPubFullscreen;->ADAPTER_NAME:Ljava/lang/String;

    aput-object v0, p1, v4

    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 49
    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p1, v1

    aput-object v0, p1, v2

    .line 50
    invoke-static {p2, p1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 51
    iget-object p1, p0, Lcom/mopub/mobileads/BaseAd;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    invoke-interface {p1, v0}, Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;->onAdLoadFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void

    .line 52
    :cond_6
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    new-array p2, v1, [Ljava/lang/Object;

    const-string v0, "Error extracting extras due to null ad data."

    aput-object v0, p2, v4

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 53
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Ad Data cannot be null here."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onInvalidate()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubFullscreen;->h:Lcom/mopub/mobileads/VastManager;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/mopub/mobileads/VastManager;->cancel()V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubFullscreen;->f()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/mopub/mobileads/MoPubFullscreen;->k:Ljava/lang/Runnable;

    .line 5
    iput-object v0, p0, Lcom/mopub/mobileads/MoPubFullscreen;->j:Landroid/os/Handler;

    .line 6
    iput-object v0, p0, Lcom/mopub/mobileads/BaseAd;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    .line 7
    iput-object v0, p0, Lcom/mopub/mobileads/BaseAd;->c:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    .line 8
    iput-object v0, p0, Lcom/mopub/mobileads/MoPubFullscreen;->e:Landroid/content/Context;

    .line 9
    iget-object v1, p0, Lcom/mopub/mobileads/MoPubFullscreen;->d:Lcom/mopub/mobileads/EventForwardingBroadcastReceiver;

    if-eqz v1, :cond_1

    .line 10
    invoke-virtual {v1, v1}, Lcom/mopub/mobileads/BaseBroadcastReceiver;->unregister(Landroid/content/BroadcastReceiver;)V

    .line 11
    iput-object v0, p0, Lcom/mopub/mobileads/MoPubFullscreen;->d:Lcom/mopub/mobileads/EventForwardingBroadcastReceiver;

    :cond_1
    return-void
.end method

.method public onVastVideoConfigurationPrepared(Lcom/mopub/mobileads/VastVideoConfig;)V
    .locals 1

    if-eqz p1, :cond_3

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubFullscreen;->g:Lcom/mopub/mobileads/AdData;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubFullscreen;->i:Lorg/json/JSONObject;

    invoke-virtual {p1, v0}, Lcom/mopub/mobileads/VastVideoConfig;->addVideoTrackers(Lorg/json/JSONObject;)V

    .line 3
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubFullscreen;->g:Lcom/mopub/mobileads/AdData;

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdData;->getViewabilityVendors()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mopub/mobileads/VastVideoConfig;->addViewabilityVendors(Ljava/util/Set;)V

    .line 4
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubFullscreen;->g:Lcom/mopub/mobileads/AdData;

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdData;->isRewarded()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p1, v0}, Lcom/mopub/mobileads/VastVideoConfig;->setRewarded(Z)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubFullscreen;->g:Lcom/mopub/mobileads/AdData;

    invoke-virtual {p1}, Lcom/mopub/mobileads/VastVideoConfig;->toJsonString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/AdData;->setVastVideoConfigString(Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/mopub/mobileads/BaseAd;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    if-eqz p1, :cond_2

    .line 8
    invoke-interface {p1}, Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;->onAdLoaded()V

    .line 9
    :cond_2
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubFullscreen;->g()V

    return-void

    .line 10
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/mopub/mobileads/BaseAd;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    if-eqz p1, :cond_4

    .line 11
    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->VIDEO_DOWNLOAD_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p1, v0}, Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;->onAdLoadFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    :cond_4
    return-void
.end method

.method public preRenderWeb(Landroid/content/Context;Lcom/mopub/mobileads/AdData;)V
    .locals 7

    .line 1
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 2
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 3
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;->LOAD_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$AdapterLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/mopub/mobileads/MoPubFullscreen;->ADAPTER_NAME:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p2}, Lcom/mopub/mobileads/AdData;->getBroadcastIdentifier()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 6
    invoke-virtual {p2}, Lcom/mopub/mobileads/AdData;->getAdPayload()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-static {v1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 8
    invoke-virtual {p2}, Lcom/mopub/mobileads/AdData;->getAdType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mraid"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 9
    new-instance v2, Lcom/mopub/mraid/MraidBridge$MraidWebView;

    invoke-direct {v2, p1}, Lcom/mopub/mraid/MraidBridge$MraidWebView;-><init>(Landroid/content/Context;)V

    .line 10
    invoke-virtual {v2}, Lcom/mopub/mobileads/BaseWebView;->a()V

    .line 11
    new-instance v3, Lcom/mopub/mraid/MraidController;

    .line 12
    invoke-virtual {p2}, Lcom/mopub/mobileads/AdData;->getDspCreativeId()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/mopub/mraid/PlacementType;->INTERSTITIAL:Lcom/mopub/mraid/PlacementType;

    .line 13
    invoke-virtual {p2}, Lcom/mopub/mobileads/AdData;->getAllowCustomClose()Z

    move-result v6

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/mopub/mraid/MraidController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/mraid/PlacementType;Z)V

    .line 14
    invoke-virtual {v2}, Lcom/mopub/mobileads/BaseWebView;->a()V

    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p2}, Lcom/mopub/mobileads/AdData;->getAdType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "html"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 16
    new-instance v2, Lcom/mopub/mobileads/HtmlWebView;

    invoke-direct {v2, p1}, Lcom/mopub/mobileads/HtmlWebView;-><init>(Landroid/content/Context;)V

    .line 17
    invoke-virtual {p2}, Lcom/mopub/mobileads/AdData;->getDspCreativeId()Ljava/lang/String;

    move-result-object v3

    .line 18
    invoke-static {p1, v3}, Lcom/mopub/mobileads/factories/HtmlControllerFactory;->create(Landroid/content/Context;Ljava/lang/String;)Lcom/mopub/mobileads/HtmlController;

    move-result-object v3

    .line 19
    :goto_0
    new-instance p1, Lcom/mopub/mobileads/MoPubFullscreen$a;

    iget-object v4, p0, Lcom/mopub/mobileads/BaseAd;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    invoke-direct {p1, p0, v4}, Lcom/mopub/mobileads/MoPubFullscreen$a;-><init>(Lcom/mopub/mobileads/MoPubFullscreen;Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;)V

    invoke-virtual {v3, p1}, Lcom/mopub/mobileads/MoPubWebViewController;->setMoPubWebViewListener(Lcom/mopub/mobileads/BaseHtmlWebView$BaseWebViewListener;)V

    .line 20
    invoke-virtual {p2}, Lcom/mopub/mobileads/AdData;->getViewabilityVendors()Ljava/util/Set;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {v3, v1, p1, p2}, Lcom/mopub/mobileads/MoPubWebViewController;->fillContent(Ljava/lang/String;Ljava/util/Set;Lcom/mopub/mobileads/MoPubWebViewController$WebViewCacheListener;)V

    .line 21
    invoke-static {v0, v2, p0, v3}, Lcom/mopub/mobileads/WebViewCacheService;->storeWebViewConfig(Ljava/lang/Long;Lcom/mopub/mobileads/BaseWebView;Lcom/mopub/mobileads/BaseAd;Lcom/mopub/mobileads/MoPubWebViewController;)V

    return-void

    .line 22
    :cond_1
    iget-object p1, p0, Lcom/mopub/mobileads/BaseAd;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    sget-object p2, Lcom/mopub/mobileads/MoPubErrorCode;->FULLSCREEN_LOAD_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p1, p2}, Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;->onAdLoadFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method
