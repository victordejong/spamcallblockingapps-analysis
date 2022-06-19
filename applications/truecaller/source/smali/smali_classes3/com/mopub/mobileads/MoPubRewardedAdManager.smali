.class public Lcom/mopub/mobileads/MoPubRewardedAdManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/MoPubRewardedAdManager$m;,
        Lcom/mopub/mobileads/MoPubRewardedAdManager$l;,
        Lcom/mopub/mobileads/MoPubRewardedAdManager$RequestParameters;
    }
.end annotation


# static fields
.field public static final API_VERSION:I = 0x1

.field public static k:Lcom/mopub/mobileads/MoPubRewardedAdManager;

.field public static l:Landroid/content/SharedPreferences;


# instance fields
.field public final a:Landroid/os/Handler;

.field public b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Landroid/content/Context;

.field public final d:Le/n/b/p0;

.field public e:Lcom/mopub/mobileads/MoPubRewardedAdListener;

.field public final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/mopub/common/MediationSettings;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/mopub/common/MediationSettings;",
            ">;>;"
        }
    .end annotation
.end field

.field public final h:Landroid/os/Handler;

.field public final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Lcom/mopub/mobileads/RewardedAdsLoaders;


# direct methods
.method public varargs constructor <init>(Landroid/app/Activity;[Lcom/mopub/common/MediationSettings;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->b:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->c:Landroid/content/Context;

    .line 4
    new-instance v0, Le/n/b/p0;

    invoke-direct {v0}, Le/n/b/p0;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->d:Le/n/b/p0;

    .line 5
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->a:Landroid/os/Handler;

    .line 6
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->f:Ljava/util/Set;

    .line 7
    invoke-static {v0, p2}, Lcom/mopub/common/util/MoPubCollections;->addAllNonNull(Ljava/util/Collection;[Ljava/lang/Object;)V

    .line 8
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->g:Ljava/util/Map;

    .line 9
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->h:Landroid/os/Handler;

    .line 10
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->i:Ljava/util/Map;

    .line 11
    new-instance p2, Lcom/mopub/mobileads/RewardedAdsLoaders;

    invoke-direct {p2, p0}, Lcom/mopub/mobileads/RewardedAdsLoaders;-><init>(Lcom/mopub/mobileads/MoPubRewardedAdManager;)V

    iput-object p2, p0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->j:Lcom/mopub/mobileads/RewardedAdsLoaders;

    const-string p2, "mopubBaseAdSettings"

    .line 12
    invoke-static {p1, p2}, Lcom/mopub/common/SharedPreferencesHelper;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p1

    sput-object p1, Lcom/mopub/mobileads/MoPubRewardedAdManager;->l:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 2
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->k:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->e:Lcom/mopub/mobileads/MoPubRewardedAdListener;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p0}, Lcom/mopub/mobileads/MoPubRewardedAdListener;->onRewardedAdStarted(Ljava/lang/String;)V

    .line 4
    :cond_0
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->k:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    iget-object v1, v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->j:Lcom/mopub/mobileads/RewardedAdsLoaders;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->c:Landroid/content/Context;

    .line 5
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 7
    invoke-static {v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 8
    iget-object v1, v1, Lcom/mopub/mobileads/RewardedAdsLoaders;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Le/n/b/f0;

    if-nez p0, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    invoke-static {v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 10
    iget-object v1, p0, Lcom/mopub/network/AdLoader;->g:Lcom/mopub/network/AdResponse;

    if-eqz v1, :cond_3

    iget-boolean v2, p0, Le/n/b/f0;->m:Z

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    .line 11
    iput-boolean v2, p0, Le/n/b/f0;->m:Z

    .line 12
    invoke-virtual {v1}, Lcom/mopub/network/AdResponse;->getImpressionTrackingUrls()Ljava/util/List;

    move-result-object v1

    .line 13
    invoke-static {v1, v0}, Lcom/mopub/network/TrackingRequest;->makeTrackingHttpRequest(Ljava/lang/Iterable;Landroid/content/Context;)V

    .line 14
    iget-object v0, p0, Lcom/mopub/network/AdLoader;->g:Lcom/mopub/network/AdResponse;

    invoke-virtual {v0}, Lcom/mopub/network/AdResponse;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    .line 15
    new-instance v1, Lcom/mopub/network/SingleImpression;

    iget-object p0, p0, Lcom/mopub/network/AdLoader;->g:Lcom/mopub/network/AdResponse;

    invoke-virtual {p0}, Lcom/mopub/network/AdResponse;->getImpressionData()Lcom/mopub/network/ImpressionData;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lcom/mopub/network/SingleImpression;-><init>(Ljava/lang/String;Lcom/mopub/network/ImpressionData;)V

    invoke-virtual {v1}, Lcom/mopub/network/SingleImpression;->sendImpression()V

    :cond_3
    :goto_0
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 2
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->k:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->e:Lcom/mopub/mobileads/MoPubRewardedAdListener;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p0}, Lcom/mopub/mobileads/MoPubRewardedAdListener;->onRewardedAdClicked(Ljava/lang/String;)V

    .line 4
    :cond_0
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->k:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    iget-object v1, v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->j:Lcom/mopub/mobileads/RewardedAdsLoaders;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->c:Landroid/content/Context;

    .line 5
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 7
    invoke-static {v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 8
    iget-object v1, v1, Lcom/mopub/mobileads/RewardedAdsLoaders;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Le/n/b/f0;

    if-nez p0, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    invoke-static {v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 10
    iget-object v1, p0, Lcom/mopub/network/AdLoader;->g:Lcom/mopub/network/AdResponse;

    if-eqz v1, :cond_3

    iget-boolean v2, p0, Le/n/b/f0;->n:Z

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    .line 11
    iput-boolean v2, p0, Le/n/b/f0;->n:Z

    .line 12
    invoke-virtual {v1}, Lcom/mopub/network/AdResponse;->getClickTrackingUrls()Ljava/util/List;

    move-result-object p0

    .line 13
    invoke-static {p0, v0}, Lcom/mopub/network/TrackingRequest;->makeTrackingHttpRequest(Ljava/lang/Iterable;Landroid/content/Context;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 2
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->k:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->j:Lcom/mopub/mobileads/RewardedAdsLoaders;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 5
    iget-object v0, v0, Lcom/mopub/mobileads/RewardedAdsLoaders;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->k:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->e:Lcom/mopub/mobileads/MoPubRewardedAdListener;

    if-eqz v0, :cond_0

    .line 7
    invoke-interface {v0, p0}, Lcom/mopub/mobileads/MoPubRewardedAdListener;->onRewardedAdClosed(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Lcom/mopub/mobileads/AdAdapter;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->k:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->j:Lcom/mopub/mobileads/RewardedAdsLoaders;

    .line 2
    invoke-virtual {v0, p0}, Lcom/mopub/mobileads/RewardedAdsLoaders;->a(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/mopub/mobileads/AdAdapter;->isReady()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static f(Ljava/lang/String;Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 8

    .line 1
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->k:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->g()V

    return-void

    .line 3
    :cond_0
    iget-object v1, v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->j:Lcom/mopub/mobileads/RewardedAdsLoaders;

    invoke-virtual {v1, p0}, Lcom/mopub/mobileads/RewardedAdsLoaders;->b(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 4
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array p2, v3, [Ljava/lang/Object;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p0, v1, v2

    const-string p0, "Did not queue rewarded ad request for ad unit %s. A request is already pending."

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, p2, v2

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_1
    sget-object v1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v4, v3, [Ljava/lang/Object;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p0, v6, v2

    aput-object p1, v6, v3

    const-string v3, "Loading rewarded ad request for ad unit %s with URL %s"

    invoke-static {v5, v3, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    invoke-static {v1, v4}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 6
    iget-object v1, v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->j:Lcom/mopub/mobileads/RewardedAdsLoaders;

    iget-object v6, v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->c:Landroid/content/Context;

    .line 7
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 9
    invoke-static {v6}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 10
    iget-object v0, v1, Lcom/mopub/mobileads/RewardedAdsLoaders;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/n/b/f0;

    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {v0}, Lcom/mopub/network/AdLoader;->hasMoreAds()Z

    move-result v2

    if-nez v2, :cond_3

    .line 12
    :cond_2
    new-instance v0, Le/n/b/f0;

    sget-object v4, Lcom/mopub/common/AdFormat;->REWARDED_AD:Lcom/mopub/common/AdFormat;

    new-instance v7, Lcom/mopub/mobileads/RewardedAdsLoaders$RewardedAdRequestListener;

    invoke-direct {v7, v1, p0}, Lcom/mopub/mobileads/RewardedAdsLoaders$RewardedAdRequestListener;-><init>(Lcom/mopub/mobileads/RewardedAdsLoaders;Ljava/lang/String;)V

    move-object v2, v0

    move-object v3, p1

    move-object v5, p0

    invoke-direct/range {v2 .. v7}, Le/n/b/f0;-><init>(Ljava/lang/String;Lcom/mopub/common/AdFormat;Ljava/lang/String;Landroid/content/Context;Lcom/mopub/network/AdLoader$Listener;)V

    .line 13
    iget-object p1, v1, Lcom/mopub/mobileads/RewardedAdsLoaders;->a:Ljava/util/HashMap;

    invoke-virtual {p1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :cond_3
    invoke-virtual {v0, p2}, Lcom/mopub/network/AdLoader;->loadNextAd(Lcom/mopub/mobileads/MoPubError;)Lcom/mopub/volley/Request;

    :goto_0
    return-void
.end method

.method public static g()V
    .locals 4

    .line 1
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "MoPub rewarded ad was not initialized. You must call MoPub.initializeSdk() with an Activity Context before loading or attempting to show rewarded ads."

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void
.end method

.method public static getAvailableRewards(Ljava/lang/String;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Lcom/mopub/common/MoPubReward;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->k:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->d:Le/n/b/p0;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 5
    iget-object v0, v0, Le/n/b/p0;->c:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    if-nez p0, :cond_0

    .line 6
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    :cond_0
    return-object p0

    .line 7
    :cond_1
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->g()V

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static getGlobalMediationSettings(Ljava/lang/Class;)Lcom/mopub/common/MediationSettings;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/mopub/common/MediationSettings;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->k:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->g()V

    return-object v1

    .line 3
    :cond_0
    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mopub/common/MediationSettings;

    .line 4
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5
    invoke-virtual {p0, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mopub/common/MediationSettings;

    return-object p0

    :cond_2
    return-object v1
.end method

.method public static getInstanceMediationSettings(Ljava/lang/Class;Ljava/lang/String;)Lcom/mopub/common/MediationSettings;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/mopub/common/MediationSettings;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->k:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->g()V

    return-object v1

    .line 3
    :cond_0
    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->g:Ljava/util/Map;

    .line 4
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    if-nez p1, :cond_1

    return-object v1

    .line 5
    :cond_1
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/common/MediationSettings;

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mopub/common/MediationSettings;

    return-object p0

    :cond_3
    return-object v1
.end method

.method public static hasAd(Ljava/lang/String;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->k:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->d:Le/n/b/p0;

    .line 3
    iget-object v0, v0, Le/n/b/p0;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/AdAdapter;

    .line 4
    invoke-static {p0, v0}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->e(Ljava/lang/String;Lcom/mopub/mobileads/AdAdapter;)Z

    move-result p0

    return p0

    .line 5
    :cond_0
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->g()V

    const/4 p0, 0x0

    return p0
.end method

.method public static i(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->k:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->a:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public static varargs declared-synchronized init(Landroid/app/Activity;[Lcom/mopub/common/MediationSettings;)V
    .locals 3

    const-class v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/mopub/mobileads/MoPubRewardedAdManager;->k:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/mopub/mobileads/MoPubRewardedAdManager;

    invoke-direct {v1, p0, p1}, Lcom/mopub/mobileads/MoPubRewardedAdManager;-><init>(Landroid/app/Activity;[Lcom/mopub/common/MediationSettings;)V

    sput-object v1, Lcom/mopub/mobileads/MoPubRewardedAdManager;->k:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    goto :goto_0

    .line 3
    :cond_0
    sget-object p0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "Tried to call init more than once. Only the first initialization call has any effect."

    aput-object v2, p1, v1

    invoke-static {p0, p1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static varargs loadAd(Ljava/lang/String;Lcom/mopub/mobileads/MoPubRewardedAdManager$RequestParameters;[Lcom/mopub/common/MediationSettings;)V
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 2
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->k:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->g()V

    return-void

    .line 4
    :cond_0
    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->d:Le/n/b/p0;

    .line 5
    iget-object v0, v0, Le/n/b/p0;->h:Ljava/lang/String;

    .line 6
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 7
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array p2, v2, [Ljava/lang/Object;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    const-string p0, "Did not queue rewarded ad request for ad unit %s. The ad is already showing."

    invoke-static {v0, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, p2, v1

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void

    .line 8
    :cond_1
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->k:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->j:Lcom/mopub/mobileads/RewardedAdsLoaders;

    invoke-virtual {v0, p0}, Lcom/mopub/mobileads/RewardedAdsLoaders;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array p2, v2, [Ljava/lang/Object;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    const-string v3, "Did not queue rewarded ad request for ad unit %s. This ad unit already finished loading and is ready to show."

    invoke-static {v0, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v1

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 10
    new-instance p1, Lcom/mopub/mobileads/MoPubRewardedAdManager$c;

    invoke-direct {p1, p0}, Lcom/mopub/mobileads/MoPubRewardedAdManager$c;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->i(Ljava/lang/Runnable;)V

    return-void

    .line 11
    :cond_2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 12
    invoke-static {v0, p2}, Lcom/mopub/common/util/MoPubCollections;->addAllNonNull(Ljava/util/Collection;[Ljava/lang/Object;)V

    .line 13
    sget-object p2, Lcom/mopub/mobileads/MoPubRewardedAdManager;->k:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    iget-object p2, p2, Lcom/mopub/mobileads/MoPubRewardedAdManager;->g:Ljava/util/Map;

    invoke-interface {p2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x0

    if-nez p1, :cond_3

    move-object v0, p2

    goto :goto_0

    .line 14
    :cond_3
    iget-object v0, p1, Lcom/mopub/mobileads/MoPubRewardedAdManager$RequestParameters;->mCustomerId:Ljava/lang/String;

    .line 15
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 16
    sget-object v1, Lcom/mopub/mobileads/MoPubRewardedAdManager;->k:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    iget-object v1, v1, Lcom/mopub/mobileads/MoPubRewardedAdManager;->d:Le/n/b/p0;

    .line 17
    iput-object v0, v1, Le/n/b/p0;->i:Ljava/lang/String;

    .line 18
    :cond_4
    new-instance v0, Lcom/mopub/mobileads/WebViewAdUrlGenerator;

    sget-object v1, Lcom/mopub/mobileads/MoPubRewardedAdManager;->k:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    iget-object v1, v1, Lcom/mopub/mobileads/MoPubRewardedAdManager;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mopub/mobileads/WebViewAdUrlGenerator;-><init>(Landroid/content/Context;)V

    .line 19
    invoke-virtual {v0, p0}, Lcom/mopub/common/AdUrlGenerator;->withAdUnitId(Ljava/lang/String;)Lcom/mopub/common/AdUrlGenerator;

    move-result-object v1

    if-nez p1, :cond_5

    move-object v2, p2

    goto :goto_1

    :cond_5
    iget-object v2, p1, Lcom/mopub/mobileads/MoPubRewardedAdManager$RequestParameters;->mKeywords:Ljava/lang/String;

    .line 20
    :goto_1
    invoke-virtual {v1, v2}, Lcom/mopub/common/AdUrlGenerator;->withKeywords(Ljava/lang/String;)Lcom/mopub/common/AdUrlGenerator;

    move-result-object v1

    if-eqz p1, :cond_7

    .line 21
    invoke-static {}, Lcom/mopub/common/MoPub;->canCollectPersonalInformation()Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_2

    :cond_6
    iget-object p1, p1, Lcom/mopub/mobileads/MoPubRewardedAdManager$RequestParameters;->mUserDataKeywords:Ljava/lang/String;

    goto :goto_3

    :cond_7
    :goto_2
    move-object p1, p2

    .line 22
    :goto_3
    invoke-virtual {v1, p1}, Lcom/mopub/common/AdUrlGenerator;->withUserDataKeywords(Ljava/lang/String;)Lcom/mopub/common/AdUrlGenerator;

    .line 23
    invoke-static {v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 24
    sget-object p1, Lcom/mopub/mobileads/MoPubRewardedAdManager;->k:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    iget-object p1, p1, Lcom/mopub/mobileads/MoPubRewardedAdManager;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/mopub/common/ClientMetadata;->getInstance(Landroid/content/Context;)Lcom/mopub/common/ClientMetadata;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mopub/common/ClientMetadata;->getDeviceDimensions()Landroid/graphics/Point;

    move-result-object p1

    .line 25
    invoke-virtual {v0, p1}, Lcom/mopub/common/AdUrlGenerator;->withRequestedAdSize(Landroid/graphics/Point;)Lcom/mopub/common/AdUrlGenerator;

    .line 26
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt p1, v1, :cond_b

    .line 27
    sget-object p1, Lcom/mopub/mobileads/MoPubRewardedAdManager;->k:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    iget-object p1, p1, Lcom/mopub/mobileads/MoPubRewardedAdManager;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    if-nez p1, :cond_8

    goto :goto_4

    .line 28
    :cond_8
    sget-object p1, Lcom/mopub/mobileads/MoPubRewardedAdManager;->k:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    iget-object p1, p1, Lcom/mopub/mobileads/MoPubRewardedAdManager;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-nez p1, :cond_9

    goto :goto_4

    .line 29
    :cond_9
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    if-nez p1, :cond_a

    goto :goto_4

    .line 30
    :cond_a
    invoke-virtual {v0, p1}, Lcom/mopub/common/AdUrlGenerator;->withWindowInsets(Landroid/view/WindowInsets;)Lcom/mopub/common/AdUrlGenerator;

    .line 31
    :cond_b
    :goto_4
    sget-object p1, Lcom/mopub/common/Constants;->HOST:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/WebViewAdUrlGenerator;->generateUrlString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->f(Ljava/lang/String;Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method

.method public static onRewardedAdClicked(Lcom/mopub/mobileads/AdAdapter;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object p1, Lcom/mopub/mobileads/MoPubRewardedAdManager;->k:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    iget-object p1, p1, Lcom/mopub/mobileads/MoPubRewardedAdManager;->d:Le/n/b/p0;

    .line 2
    iget-object p1, p1, Le/n/b/p0;->h:Ljava/lang/String;

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    new-instance p1, Lcom/mopub/mobileads/MoPubRewardedAdManager$j;

    invoke-direct {p1, p0}, Lcom/mopub/mobileads/MoPubRewardedAdManager$j;-><init>(Lcom/mopub/mobileads/AdAdapter;)V

    invoke-static {p1}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->i(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance p0, Lcom/mopub/mobileads/MoPubRewardedAdManager$k;

    invoke-direct {p0, p1}, Lcom/mopub/mobileads/MoPubRewardedAdManager$k;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->i(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public static onRewardedAdClosed(Lcom/mopub/mobileads/AdAdapter;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object p1, Lcom/mopub/mobileads/MoPubRewardedAdManager;->k:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    iget-object p1, p1, Lcom/mopub/mobileads/MoPubRewardedAdManager;->d:Le/n/b/p0;

    .line 2
    iget-object p1, p1, Le/n/b/p0;->h:Ljava/lang/String;

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    new-instance p1, Lcom/mopub/mobileads/MoPubRewardedAdManager$a;

    invoke-direct {p1, p0}, Lcom/mopub/mobileads/MoPubRewardedAdManager$a;-><init>(Lcom/mopub/mobileads/AdAdapter;)V

    invoke-static {p1}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->i(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance p0, Lcom/mopub/mobileads/MoPubRewardedAdManager$b;

    invoke-direct {p0, p1}, Lcom/mopub/mobileads/MoPubRewardedAdManager$b;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->i(Ljava/lang/Runnable;)V

    .line 6
    :goto_0
    sget-object p0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->k:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    iget-object p0, p0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->d:Le/n/b/p0;

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Le/n/b/p0;->h:Ljava/lang/String;

    return-void
.end method

.method public static onRewardedAdCompleted(Lcom/mopub/mobileads/AdAdapter;Ljava/lang/String;Lcom/mopub/common/MoPubReward;)V
    .locals 1

    .line 1
    sget-object p1, Lcom/mopub/mobileads/MoPubRewardedAdManager;->k:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    iget-object p1, p1, Lcom/mopub/mobileads/MoPubRewardedAdManager;->d:Le/n/b/p0;

    .line 2
    iget-object p1, p1, Le/n/b/p0;->h:Ljava/lang/String;

    .line 3
    new-instance v0, Le/n/b/a0;

    invoke-direct {v0, p0, p2, p1}, Le/n/b/a0;-><init>(Lcom/mopub/mobileads/AdAdapter;Lcom/mopub/common/MoPubReward;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->i(Ljava/lang/Runnable;)V

    .line 4
    sget-object p0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->k:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    iget-object p0, p0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->d:Le/n/b/p0;

    .line 5
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 7
    :cond_0
    iget-object p0, p0, Le/n/b/p0;->d:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 8
    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 9
    new-instance p2, Le/n/b/n0;

    invoke-direct {p2, p1, p0}, Le/n/b/n0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->i(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public static onRewardedAdLoadFailure(Lcom/mopub/mobileads/AdAdapter;Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 0

    .line 1
    new-instance p1, Lcom/mopub/mobileads/MoPubRewardedAdManager$e;

    invoke-direct {p1, p0, p2}, Lcom/mopub/mobileads/MoPubRewardedAdManager$e;-><init>(Lcom/mopub/mobileads/AdAdapter;Lcom/mopub/mobileads/MoPubErrorCode;)V

    invoke-static {p1}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->i(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static onRewardedAdLoadSuccess(Lcom/mopub/mobileads/AdAdapter;Ljava/lang/String;)V
    .locals 0

    .line 1
    new-instance p1, Lcom/mopub/mobileads/MoPubRewardedAdManager$d;

    invoke-direct {p1, p0}, Lcom/mopub/mobileads/MoPubRewardedAdManager$d;-><init>(Lcom/mopub/mobileads/AdAdapter;)V

    invoke-static {p1}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->i(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static onRewardedAdShowError(Lcom/mopub/mobileads/AdAdapter;Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 1

    .line 1
    sget-object p1, Lcom/mopub/mobileads/MoPubRewardedAdManager;->k:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    iget-object p1, p1, Lcom/mopub/mobileads/MoPubRewardedAdManager;->d:Le/n/b/p0;

    .line 2
    iget-object p1, p1, Le/n/b/p0;->h:Ljava/lang/String;

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    new-instance p1, Lcom/mopub/mobileads/MoPubRewardedAdManager$h;

    invoke-direct {p1, p0, p2}, Lcom/mopub/mobileads/MoPubRewardedAdManager$h;-><init>(Lcom/mopub/mobileads/AdAdapter;Lcom/mopub/mobileads/MoPubErrorCode;)V

    invoke-static {p1}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->i(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance p0, Lcom/mopub/mobileads/MoPubRewardedAdManager$i;

    invoke-direct {p0, p1, p2}, Lcom/mopub/mobileads/MoPubRewardedAdManager$i;-><init>(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    invoke-static {p0}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->i(Ljava/lang/Runnable;)V

    .line 6
    :goto_0
    sget-object p0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->k:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    iget-object p0, p0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->d:Le/n/b/p0;

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Le/n/b/p0;->h:Ljava/lang/String;

    return-void
.end method

.method public static onRewardedAdStarted(Lcom/mopub/mobileads/AdAdapter;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object p1, Lcom/mopub/mobileads/MoPubRewardedAdManager;->k:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    iget-object p1, p1, Lcom/mopub/mobileads/MoPubRewardedAdManager;->d:Le/n/b/p0;

    .line 2
    iget-object p1, p1, Le/n/b/p0;->h:Ljava/lang/String;

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    new-instance p1, Lcom/mopub/mobileads/MoPubRewardedAdManager$f;

    invoke-direct {p1, p0}, Lcom/mopub/mobileads/MoPubRewardedAdManager$f;-><init>(Lcom/mopub/mobileads/AdAdapter;)V

    invoke-static {p1}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->i(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance p0, Lcom/mopub/mobileads/MoPubRewardedAdManager$g;

    invoke-direct {p0, p1}, Lcom/mopub/mobileads/MoPubRewardedAdManager$g;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->i(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public static selectReward(Ljava/lang/String;Lcom/mopub/common/MoPubReward;)V
    .locals 5

    .line 1
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->k:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->d:Le/n/b/p0;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 5
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 6
    iget-object v1, v0, Le/n/b/p0;->c:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 7
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 9
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v0, v3, [Ljava/lang/Object;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v2

    const-string p0, "Selected reward is invalid for AdUnit %s."

    invoke-static {v1, p0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v2

    invoke-static {p1, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {p1}, Lcom/mopub/common/MoPubReward;->getLabel()Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-virtual {p1}, Lcom/mopub/common/MoPubReward;->getAmount()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-virtual {v0, p0, v1, p1}, Le/n/b/p0;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 13
    :cond_2
    :goto_0
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v0, v3, [Ljava/lang/Object;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v2

    const-string p0, "AdUnit %s does not have any rewards."

    invoke-static {v1, p0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v2

    invoke-static {p1, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    goto :goto_1

    .line 14
    :cond_3
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->g()V

    :goto_1
    return-void
.end method

.method public static setRewardedAdListener(Lcom/mopub/mobileads/MoPubRewardedAdListener;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->k:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    if-eqz v0, :cond_0

    .line 2
    iput-object p0, v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->e:Lcom/mopub/mobileads/MoPubRewardedAdListener;

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->g()V

    :goto_0
    return-void
.end method

.method public static showAd(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->showAd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static showAd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 2
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->k:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->g()V

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x2000

    if-le v2, v3, :cond_1

    .line 5
    sget-object v2, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v4, v1, [Ljava/lang/Object;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v1

    const-string v3, "Provided rewarded ad custom data parameter longer than supported(%d bytes, %d maximum)"

    .line 7
    invoke-static {v5, v3, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v0

    invoke-static {v2, v4}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 8
    :cond_1
    sget-object v2, Lcom/mopub/mobileads/MoPubRewardedAdManager;->k:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    iget-object v2, v2, Lcom/mopub/mobileads/MoPubRewardedAdManager;->d:Le/n/b/p0;

    .line 9
    iget-object v2, v2, Le/n/b/p0;->a:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mopub/mobileads/AdAdapter;

    .line 10
    invoke-static {p0, v2}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->e(Ljava/lang/String;Lcom/mopub/mobileads/AdAdapter;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 11
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->k:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->d:Le/n/b/p0;

    .line 12
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 14
    iget-object v0, v0, Le/n/b/p0;->c:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_2

    .line 15
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 16
    :cond_2
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->k:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->d:Le/n/b/p0;

    .line 17
    iget-object v0, v0, Le/n/b/p0;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/common/MoPubReward;

    if-nez v0, :cond_3

    .line 18
    sget-object p1, Lcom/mopub/mobileads/MoPubRewardedAdManager;->k:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->REWARD_NOT_SELECTED:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {p1, p0, v0}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->d(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void

    .line 19
    :cond_3
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->k:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->d:Le/n/b/p0;

    .line 20
    iget-object v1, v0, Le/n/b/p0;->b:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mopub/common/MoPubReward;

    .line 21
    invoke-static {v2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 22
    iget-object v0, v0, Le/n/b/p0;->f:Ljava/util/Map;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->k:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->d:Le/n/b/p0;

    .line 24
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    invoke-static {p0}, Lcom/mopub/common/Preconditions$NoThrow;->checkNotNull(Ljava/lang/Object;)Z

    .line 26
    iget-object v0, v0, Le/n/b/p0;->e:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object p1, Lcom/mopub/mobileads/MoPubRewardedAdManager;->k:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    iget-object p1, p1, Lcom/mopub/mobileads/MoPubRewardedAdManager;->d:Le/n/b/p0;

    .line 28
    iput-object p0, p1, Le/n/b/p0;->h:Ljava/lang/String;

    const/4 p0, 0x0

    .line 29
    invoke-virtual {v2, p0}, Lcom/mopub/mobileads/AdAdapter;->e(Lcom/mopub/mobileads/MoPubAd;)V

    goto :goto_1

    .line 30
    :cond_4
    sget-object p1, Lcom/mopub/mobileads/MoPubRewardedAdManager;->k:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    iget-object p1, p1, Lcom/mopub/mobileads/MoPubRewardedAdManager;->j:Lcom/mopub/mobileads/RewardedAdsLoaders;

    invoke-virtual {p1, p0}, Lcom/mopub/mobileads/RewardedAdsLoaders;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 31
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Rewarded ad is not ready to be shown yet."

    aput-object v2, v1, v0

    invoke-static {p1, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    goto :goto_0

    .line 32
    :cond_5
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "No rewarded ad loading or loaded."

    aput-object v2, v1, v0

    invoke-static {p1, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 33
    :goto_0
    sget-object p1, Lcom/mopub/mobileads/MoPubRewardedAdManager;->k:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->AD_NOT_AVAILABLE:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {p1, p0, v0}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->d(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    :goto_1
    return-void
.end method

.method public static updateActivity(Landroid/app/Activity;)V
    .locals 2
    .annotation build Lcom/mopub/common/util/ReflectionTarget;
    .end annotation

    .line 1
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->k:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->b:Ljava/lang/ref/WeakReference;

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->g()V

    :goto_0
    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 2
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->j:Lcom/mopub/mobileads/RewardedAdsLoaders;

    .line 4
    iget-object v0, v0, Lcom/mopub/mobileads/RewardedAdsLoaders;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/n/b/f0;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/mopub/network/AdLoader;->hasMoreAds()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 6
    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->EXPIRED:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {p2, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ""

    .line 7
    invoke-static {p1, v0, p2}, Lcom/mopub/mobileads/MoPubRewardedAdManager;->f(Ljava/lang/String;Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_1

    .line 8
    :cond_1
    sget-object v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->k:Lcom/mopub/mobileads/MoPubRewardedAdManager;

    iget-object v0, v0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->e:Lcom/mopub/mobileads/MoPubRewardedAdListener;

    if-eqz v0, :cond_2

    .line 9
    invoke-interface {v0, p1, p2}, Lcom/mopub/mobileads/MoPubRewardedAdListener;->onRewardedAdLoadFailure(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 10
    iget-object p2, p0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->j:Lcom/mopub/mobileads/RewardedAdsLoaders;

    invoke-virtual {p2, p1}, Lcom/mopub/mobileads/RewardedAdsLoaders;->c(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final h(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/mopub/common/util/Json;->jsonStringToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    const-string v0, "rewards"

    .line 2
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/mopub/common/util/Json;->jsonArrayToStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 3
    array-length v0, p2

    const-string v1, "amount"

    const-string v2, "name"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    .line 4
    aget-object v0, p2, v3

    invoke-static {v0}, Lcom/mopub/common/util/Json;->jsonStringToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 5
    iget-object v5, p0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->d:Le/n/b/p0;

    .line 6
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 7
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 8
    invoke-virtual {v5, p1, v6, v0}, Le/n/b/p0;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_0
    array-length v0, p2

    move v5, v3

    :goto_0
    if-ge v5, v0, :cond_5

    aget-object v6, p2, v5

    .line 10
    invoke-static {v6}, Lcom/mopub/common/util/Json;->jsonStringToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    .line 11
    iget-object v7, p0, Lcom/mopub/mobileads/MoPubRewardedAdManager;->d:Le/n/b/p0;

    .line 12
    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 13
    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 14
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    if-eqz v8, :cond_4

    if-nez v6, :cond_1

    goto :goto_1

    .line 16
    :cond_1
    :try_start_0
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-gez v9, :cond_2

    .line 17
    sget-object v7, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v8, v4, [Ljava/lang/Object;

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v10, v4, [Ljava/lang/Object;

    aput-object v6, v10, v3

    const-string v6, "Currency amount cannot be negative: %s"

    invoke-static {v9, v6, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v3

    invoke-static {v7, v8}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    goto :goto_2

    .line 18
    :cond_2
    iget-object v6, v7, Le/n/b/p0;->c:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 19
    iget-object v6, v7, Le/n/b/p0;->c:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    .line 20
    invoke-static {v8, v9}, Lcom/mopub/common/MoPubReward;->success(Ljava/lang/String;I)Lcom/mopub/common/MoPubReward;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 21
    :cond_3
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 22
    invoke-static {v8, v9}, Lcom/mopub/common/MoPubReward;->success(Ljava/lang/String;I)Lcom/mopub/common/MoPubReward;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object v7, v7, Le/n/b/p0;->c:Ljava/util/Map;

    invoke-interface {v7, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 24
    :catch_0
    sget-object v7, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v8, v4, [Ljava/lang/Object;

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v10, v4, [Ljava/lang/Object;

    aput-object v6, v10, v3

    const-string v6, "Currency amount must be an integer: %s"

    invoke-static {v9, v6, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v3

    invoke-static {v7, v8}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    goto :goto_2

    .line 25
    :cond_4
    :goto_1
    sget-object v7, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v9, v4, [Ljava/lang/Object;

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v8, v11, v3

    aput-object v6, v11, v4

    const-string v6, "Currency name and amount cannot be null: name = %s, amount = %s"

    invoke-static {v10, v6, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v9, v3

    invoke-static {v7, v9}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_5
    return-void
.end method
