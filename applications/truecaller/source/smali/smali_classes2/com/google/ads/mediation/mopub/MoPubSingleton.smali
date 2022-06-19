.class public Lcom/google/ads/mediation/mopub/MoPubSingleton;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/mobileads/MoPubRewardedVideoListener;


# static fields
.field private static instance:Lcom/google/ads/mediation/mopub/MoPubSingleton;

.field private static isInitializing:Z

.field private static mListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/mopub/mobileads/dfp/adapters/MoPubAdapterRewardedListener;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mInitListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mopub/common/SdkInitializationListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/ads/mediation/mopub/MoPubSingleton;->mListeners:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/ads/mediation/mopub/MoPubSingleton;->mInitListeners:Ljava/util/ArrayList;

    return-void
.end method

.method public static synthetic access$002(Z)Z
    .locals 0

    .line 1
    sput-boolean p0, Lcom/google/ads/mediation/mopub/MoPubSingleton;->isInitializing:Z

    return p0
.end method

.method public static synthetic access$100(Lcom/google/ads/mediation/mopub/MoPubSingleton;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/ads/mediation/mopub/MoPubSingleton;->mInitListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static containsPII(Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->getLocation()Landroid/location/Location;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getInstance()Lcom/google/ads/mediation/mopub/MoPubSingleton;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/ads/mediation/mopub/MoPubSingleton;->instance:Lcom/google/ads/mediation/mopub/MoPubSingleton;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/ads/mediation/mopub/MoPubSingleton;

    invoke-direct {v0}, Lcom/google/ads/mediation/mopub/MoPubSingleton;-><init>()V

    sput-object v0, Lcom/google/ads/mediation/mopub/MoPubSingleton;->instance:Lcom/google/ads/mediation/mopub/MoPubSingleton;

    .line 3
    :cond_0
    sget-object v0, Lcom/google/ads/mediation/mopub/MoPubSingleton;->instance:Lcom/google/ads/mediation/mopub/MoPubSingleton;

    return-object v0
.end method

.method public static getKeywords(Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;Z)Ljava/lang/String;
    .locals 2

    const-string v0, "gmext"

    const-string v1, ""

    if-eqz p1, :cond_2

    .line 1
    invoke-static {}, Lcom/mopub/common/MoPub;->canCollectPersonalInformation()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    invoke-static {p0}, Lcom/google/ads/mediation/mopub/MoPubSingleton;->containsPII(Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    return-object v1

    .line 3
    :cond_2
    invoke-static {p0}, Lcom/google/ads/mediation/mopub/MoPubSingleton;->containsPII(Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;)Z

    move-result p0

    if-eqz p0, :cond_3

    move-object v0, v1

    :cond_3
    return-object v0
.end method

.method private hasListener(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/ads/mediation/mopub/MoPubSingleton;->mListeners:Ljava/util/HashMap;

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/ads/mediation/mopub/MoPubSingleton;->mListeners:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public adExpired(Ljava/lang/String;Lcom/mopub/mobileads/MoPubRewardedVideoListener;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/google/ads/mediation/mopub/MoPubSingleton;->hasListener(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    sget-object v0, Lcom/google/ads/mediation/mopub/MoPubSingleton;->mListeners:Ljava/util/HashMap;

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    sget-object p2, Lcom/google/ads/mediation/mopub/MoPubSingleton;->mListeners:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public initializeMoPubSDK(Landroid/content/Context;Lcom/mopub/common/SdkConfiguration;Lcom/mopub/common/SdkInitializationListener;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/mopub/common/MoPub;->isSdkInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/mopub/mobileads/MoPubRewardedVideos;->setRewardedVideoListener(Lcom/mopub/mobileads/MoPubRewardedVideoListener;)V

    .line 3
    invoke-interface {p3}, Lcom/mopub/common/SdkInitializationListener;->onInitializationFinished()V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/ads/mediation/mopub/MoPubSingleton;->mInitListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    sget-boolean p3, Lcom/google/ads/mediation/mopub/MoPubSingleton;->isInitializing:Z

    if-nez p3, :cond_1

    const/4 p3, 0x1

    .line 6
    sput-boolean p3, Lcom/google/ads/mediation/mopub/MoPubSingleton;->isInitializing:Z

    .line 7
    new-instance p3, Lcom/google/ads/mediation/mopub/MoPubSingleton$1;

    invoke-direct {p3, p0}, Lcom/google/ads/mediation/mopub/MoPubSingleton$1;-><init>(Lcom/google/ads/mediation/mopub/MoPubSingleton;)V

    invoke-static {p1, p2, p3}, Lcom/mopub/common/MoPub;->initializeSdk(Landroid/content/Context;Lcom/mopub/common/SdkConfiguration;Lcom/mopub/common/SdkInitializationListener;)V

    :cond_1
    return-void
.end method

.method public loadRewardedAd(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/mobileads/MoPubRewardedVideoManager$RequestParameters;Lcom/mopub/mobileads/dfp/adapters/MoPubAdapterRewardedListener;)V
    .locals 2

    .line 1
    invoke-direct {p0, p2}, Lcom/google/ads/mediation/mopub/MoPubSingleton;->hasListener(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "An ad has already been requested for the MoPub Ad Unit ID: "

    .line 2
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    :goto_0
    const/16 p2, 0x6b

    .line 3
    invoke-interface {p4, p2, p1}, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapterRewardedListener;->onAdFailedToLoad(ILjava/lang/String;)V

    return-void

    .line 4
    :cond_1
    sget-object v0, Lcom/google/ads/mediation/mopub/MoPubSingleton;->mListeners:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance p4, Lcom/mopub/common/SdkConfiguration$Builder;

    invoke-direct {p4, p2}, Lcom/mopub/common/SdkConfiguration$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/mopub/common/SdkConfiguration$Builder;->build()Lcom/mopub/common/SdkConfiguration;

    move-result-object p4

    .line 6
    new-instance v0, Lcom/google/ads/mediation/mopub/MoPubSingleton$2;

    invoke-direct {v0, p0, p2, p3}, Lcom/google/ads/mediation/mopub/MoPubSingleton$2;-><init>(Lcom/google/ads/mediation/mopub/MoPubSingleton;Ljava/lang/String;Lcom/mopub/mobileads/MoPubRewardedVideoManager$RequestParameters;)V

    invoke-virtual {p0, p1, p4, v0}, Lcom/google/ads/mediation/mopub/MoPubSingleton;->initializeMoPubSDK(Landroid/content/Context;Lcom/mopub/common/SdkConfiguration;Lcom/mopub/common/SdkInitializationListener;)V

    return-void
.end method

.method public onRewardedVideoClicked(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/google/ads/mediation/mopub/MoPubSingleton;->hasListener(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/google/ads/mediation/mopub/MoPubSingleton;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapterRewardedListener;

    invoke-interface {v0, p1}, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapterRewardedListener;->onRewardedVideoClicked(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onRewardedVideoClosed(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/google/ads/mediation/mopub/MoPubSingleton;->hasListener(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/google/ads/mediation/mopub/MoPubSingleton;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapterRewardedListener;

    invoke-interface {v0, p1}, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapterRewardedListener;->onRewardedVideoClosed(Ljava/lang/String;)V

    .line 3
    :cond_0
    sget-object v0, Lcom/google/ads/mediation/mopub/MoPubSingleton;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onRewardedVideoCompleted(Ljava/util/Set;Lcom/mopub/common/MoPubReward;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mopub/common/MoPubReward;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2
    invoke-direct {p0, v0}, Lcom/google/ads/mediation/mopub/MoPubSingleton;->hasListener(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 4
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5
    sget-object v2, Lcom/google/ads/mediation/mopub/MoPubSingleton;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapterRewardedListener;

    invoke-interface {v0, v1, p2}, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapterRewardedListener;->onRewardedVideoCompleted(Ljava/util/Set;Lcom/mopub/common/MoPubReward;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onRewardedVideoLoadFailure(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/google/ads/mediation/mopub/MoPubSingleton;->hasListener(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/google/ads/mediation/mopub/MoPubSingleton;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapterRewardedListener;

    invoke-interface {v0, p1, p2}, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapterRewardedListener;->onRewardedVideoLoadFailure(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 3
    :cond_0
    sget-object p2, Lcom/google/ads/mediation/mopub/MoPubSingleton;->mListeners:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onRewardedVideoLoadSuccess(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/google/ads/mediation/mopub/MoPubSingleton;->hasListener(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/google/ads/mediation/mopub/MoPubSingleton;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapterRewardedListener;

    invoke-interface {v0, p1}, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapterRewardedListener;->onRewardedVideoLoadSuccess(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onRewardedVideoPlaybackError(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/google/ads/mediation/mopub/MoPubSingleton;->hasListener(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/google/ads/mediation/mopub/MoPubSingleton;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapterRewardedListener;

    invoke-interface {v0, p1, p2}, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapterRewardedListener;->onRewardedVideoPlaybackError(Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 3
    :cond_0
    sget-object p2, Lcom/google/ads/mediation/mopub/MoPubSingleton;->mListeners:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onRewardedVideoStarted(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/google/ads/mediation/mopub/MoPubSingleton;->hasListener(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/google/ads/mediation/mopub/MoPubSingleton;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapterRewardedListener;

    invoke-interface {v0, p1}, Lcom/mopub/mobileads/dfp/adapters/MoPubAdapterRewardedListener;->onRewardedVideoStarted(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public showRewardedAd(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/mopub/mobileads/MoPubRewardedVideos;->hasRewardedVideo(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/google/ads/mediation/mopub/MoPubMediationAdapter;->TAG:Ljava/lang/String;

    .line 3
    invoke-static {p1, p2}, Lcom/mopub/mobileads/MoPubRewardedVideos;->showRewardedVideo(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    .line 4
    :cond_0
    sget-object p2, Lcom/google/ads/mediation/mopub/MoPubSingleton;->mListeners:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    return p1
.end method
