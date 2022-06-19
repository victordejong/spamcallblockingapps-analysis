.class public Lcom/mopub/mobileads/AdViewController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;
.implements Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;


# static fields
.field public static final D:Landroid/widget/FrameLayout$LayoutParams;

.field public static final E:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A:Ljava/lang/String;

.field public B:J

.field public C:J

.field public final a:J

.field public b:Landroid/content/Context;

.field public c:Lcom/mopub/mobileads/MoPubAd;

.field public d:Lcom/mopub/mobileads/WebViewAdUrlGenerator;

.field public e:Lcom/mopub/volley/Request;

.field public f:Lcom/mopub/network/AdLoader;

.field public final g:Lcom/mopub/network/AdLoader$Listener;

.field public h:Lcom/mopub/network/AdResponse;

.field public i:Ljava/lang/String;

.field public final j:Ljava/lang/Runnable;

.field public k:Z

.field public l:Landroid/os/Handler;

.field public m:Z

.field public n:I
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation
.end field

.field public o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public p:Z

.field public q:Z

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public t:Landroid/graphics/Point;

.field public u:Landroid/view/WindowInsets;

.field public v:Z

.field public w:Z

.field public x:Lcom/mopub/mobileads/AdAdapter;

.field public y:Ljava/lang/String;

.field public z:Ljava/lang/Integer;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    const/16 v2, 0x11

    invoke-direct {v0, v1, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    sput-object v0, Lcom/mopub/mobileads/AdViewController;->D:Landroid/widget/FrameLayout$LayoutParams;

    .line 2
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/mopub/mobileads/AdViewController;->E:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mopub/mobileads/MoPubAd;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/mopub/mobileads/AdViewController;->n:I

    .line 3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/mopub/mobileads/AdViewController;->o:Ljava/util/Map;

    .line 4
    iput-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->p:Z

    .line 5
    iput-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->q:Z

    .line 6
    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController;->b:Landroid/content/Context;

    .line 7
    iput-object p2, p0, Lcom/mopub/mobileads/AdViewController;->c:Lcom/mopub/mobileads/MoPubAd;

    .line 8
    invoke-static {}, Lcom/mopub/common/util/Utils;->generateUniqueId()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/mopub/mobileads/AdViewController;->a:J

    .line 9
    new-instance p1, Lcom/mopub/mobileads/WebViewAdUrlGenerator;

    iget-object p2, p0, Lcom/mopub/mobileads/AdViewController;->b:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/mopub/mobileads/WebViewAdUrlGenerator;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController;->d:Lcom/mopub/mobileads/WebViewAdUrlGenerator;

    .line 10
    new-instance p1, Lcom/mopub/mobileads/AdViewController$a;

    invoke-direct {p1, p0}, Lcom/mopub/mobileads/AdViewController$a;-><init>(Lcom/mopub/mobileads/AdViewController;)V

    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController;->g:Lcom/mopub/network/AdLoader$Listener;

    .line 11
    new-instance p1, Lcom/mopub/mobileads/AdViewController$b;

    invoke-direct {p1, p0}, Lcom/mopub/mobileads/AdViewController$b;-><init>(Lcom/mopub/mobileads/AdViewController;)V

    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController;->j:Ljava/lang/Runnable;

    const-wide/16 p1, 0x0

    .line 12
    iput-wide p1, p0, Lcom/mopub/mobileads/AdViewController;->B:J

    const p1, 0xea60

    .line 13
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController;->z:Ljava/lang/Integer;

    .line 14
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController;->l:Landroid/os/Handler;

    const-string p1, ""

    .line 15
    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController;->A:Ljava/lang/String;

    return-void
.end method

.method public static setShouldHonorServerDimensions(Landroid/view/View;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/mopub/mobileads/AdViewController;->E:Ljava/util/WeakHashMap;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Ad failed to load."

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->i()V

    .line 3
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->getMoPubAd()Lcom/mopub/mobileads/MoPubAd;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->y:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->g()V

    .line 6
    :cond_1
    invoke-interface {v0, p1}, Lcom/mopub/mobileads/MoPubAd;->onAdLoadFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final c()V
    .locals 5

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->w:Z

    .line 2
    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->y:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    sget-object v1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "Can\'t load an ad in this ad view because the ad unit ID is not set. Did you forget to call setAdUnitId()?"

    aput-object v3, v0, v2

    invoke-static {v1, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 4
    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->MISSING_AD_UNIT_ID:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/AdViewController;->a(Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->b:Landroid/content/Context;

    const/4 v3, 0x0

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    const-string v4, "android.permission.ACCESS_NETWORK_STATE"

    .line 6
    invoke-static {v1, v4}, Lcom/mopub/common/util/DeviceUtils;->isPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->b:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    if-eqz v1, :cond_3

    .line 8
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    goto :goto_0

    :cond_3
    move-object v1, v3

    :goto_0
    if-eqz v1, :cond_4

    .line 9
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_1
    move v1, v0

    goto :goto_3

    :cond_4
    :goto_2
    move v1, v2

    :goto_3
    if-nez v1, :cond_5

    .line 10
    sget-object v1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "Can\'t load an ad because there is no network connectivity."

    aput-object v3, v0, v2

    invoke-static {v1, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 11
    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->NO_CONNECTION:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/AdViewController;->a(Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void

    .line 12
    :cond_5
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->d:Lcom/mopub/mobileads/WebViewAdUrlGenerator;

    if-nez v0, :cond_6

    move-object v0, v3

    goto :goto_5

    .line 13
    :cond_6
    invoke-static {}, Lcom/mopub/common/MoPub;->canCollectPersonalInformation()Z

    move-result v0

    .line 14
    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->d:Lcom/mopub/mobileads/WebViewAdUrlGenerator;

    iget-object v2, p0, Lcom/mopub/mobileads/AdViewController;->y:Ljava/lang/String;

    .line 15
    invoke-virtual {v1, v2}, Lcom/mopub/common/AdUrlGenerator;->withAdUnitId(Ljava/lang/String;)Lcom/mopub/common/AdUrlGenerator;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/mobileads/AdViewController;->r:Ljava/lang/String;

    .line 16
    invoke-virtual {v1, v2}, Lcom/mopub/common/AdUrlGenerator;->withKeywords(Ljava/lang/String;)Lcom/mopub/common/AdUrlGenerator;

    move-result-object v1

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->s:Ljava/lang/String;

    goto :goto_4

    :cond_7
    move-object v0, v3

    .line 17
    :goto_4
    invoke-virtual {v1, v0}, Lcom/mopub/common/AdUrlGenerator;->withUserDataKeywords(Ljava/lang/String;)Lcom/mopub/common/AdUrlGenerator;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->t:Landroid/graphics/Point;

    .line 18
    invoke-virtual {v0, v1}, Lcom/mopub/common/AdUrlGenerator;->withRequestedAdSize(Landroid/graphics/Point;)Lcom/mopub/common/AdUrlGenerator;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->u:Landroid/view/WindowInsets;

    .line 19
    invoke-virtual {v0, v1}, Lcom/mopub/common/AdUrlGenerator;->withWindowInsets(Landroid/view/WindowInsets;)Lcom/mopub/common/AdUrlGenerator;

    .line 20
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->d:Lcom/mopub/mobileads/WebViewAdUrlGenerator;

    sget-object v1, Lcom/mopub/common/Constants;->HOST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/WebViewAdUrlGenerator;->generateUrlString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 21
    :goto_5
    invoke-virtual {p0, v0, v3}, Lcom/mopub/mobileads/AdViewController;->e(Ljava/lang/String;Lcom/mopub/mobileads/MoPubError;)V

    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->getAdAdapter()Lcom/mopub/mobileads/AdAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/mopub/mobileads/AdAdapter;->d()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/mopub/mobileads/AdViewController;->x:Lcom/mopub/mobileads/AdAdapter;

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;Lcom/mopub/mobileads/MoPubError;)V
    .locals 7

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/AdViewController;->a(Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void

    :cond_0
    const-string v0, "javascript:"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 3
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "Loading url: "

    invoke-static {v4, p1}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->e:Lcom/mopub/volley/Request;

    if-eqz v0, :cond_3

    .line 5
    iget-object p1, p0, Lcom/mopub/mobileads/AdViewController;->y:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 6
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array p2, v2, [Ljava/lang/Object;

    const-string v0, "Already loading an ad for "

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/mopub/mobileads/AdViewController;->y:Ljava/lang/String;

    const-string v3, ", wait to finish."

    invoke-static {v0, v2, v3}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v1

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :cond_2
    return-void

    .line 7
    :cond_3
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->getMoPubAd()Lcom/mopub/mobileads/MoPubAd;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 8
    iget-object v3, p0, Lcom/mopub/mobileads/AdViewController;->b:Landroid/content/Context;

    if-nez v3, :cond_4

    goto :goto_0

    .line 9
    :cond_4
    monitor-enter p0

    .line 10
    :try_start_0
    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->f:Lcom/mopub/network/AdLoader;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/mopub/network/AdLoader;->hasMoreAds()Z

    move-result v1

    if-nez v1, :cond_6

    .line 11
    :cond_5
    new-instance v6, Lcom/mopub/network/AdLoader;

    invoke-interface {v0}, Lcom/mopub/mobileads/MoPubAd;->getAdFormat()Lcom/mopub/common/AdFormat;

    move-result-object v2

    iget-object v3, p0, Lcom/mopub/mobileads/AdViewController;->y:Ljava/lang/String;

    iget-object v4, p0, Lcom/mopub/mobileads/AdViewController;->b:Landroid/content/Context;

    iget-object v5, p0, Lcom/mopub/mobileads/AdViewController;->g:Lcom/mopub/network/AdLoader$Listener;

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/mopub/network/AdLoader;-><init>(Ljava/lang/String;Lcom/mopub/common/AdFormat;Ljava/lang/String;Landroid/content/Context;Lcom/mopub/network/AdLoader$Listener;)V

    iput-object v6, p0, Lcom/mopub/mobileads/AdViewController;->f:Lcom/mopub/network/AdLoader;

    .line 12
    :cond_6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    iget-object p1, p0, Lcom/mopub/mobileads/AdViewController;->f:Lcom/mopub/network/AdLoader;

    invoke-virtual {p1, p2}, Lcom/mopub/network/AdLoader;->loadNextAd(Lcom/mopub/mobileads/MoPubError;)Lcom/mopub/volley/Request;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController;->e:Lcom/mopub/volley/Request;

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 14
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 15
    :cond_7
    :goto_0
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array p2, v2, [Ljava/lang/Object;

    const-string v0, "Can\'t load an ad in this ad view because it was destroyed."

    aput-object v0, p2, v1

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 16
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->i()V

    :goto_1
    return-void
.end method

.method public f()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->q:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->m:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/AdViewController;->h(Z)V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->b()V

    .line 2
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->p:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->z:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_1

    const-wide/32 v0, 0x927c0

    .line 3
    iget-object v2, p0, Lcom/mopub/mobileads/AdViewController;->z:Ljava/lang/Integer;

    .line 4
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    iget v6, p0, Lcom/mopub/mobileads/AdViewController;->n:I

    int-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-long v4, v4

    mul-long/2addr v2, v4

    .line 5
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 6
    iget-wide v2, p0, Lcom/mopub/mobileads/AdViewController;->B:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    goto :goto_0

    :cond_0
    move-wide v0, v2

    .line 7
    :goto_0
    iget-object v2, p0, Lcom/mopub/mobileads/AdViewController;->l:Landroid/os/Handler;

    iget-object v3, p0, Lcom/mopub/mobileads/AdViewController;->j:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public getAdAdapter()Lcom/mopub/mobileads/AdAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->x:Lcom/mopub/mobileads/AdAdapter;

    return-object v0
.end method

.method public getAdHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->h:Lcom/mopub/network/AdResponse;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mopub/network/AdResponse;->getHeight()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->h:Lcom/mopub/network/AdResponse;

    invoke-virtual {v0}, Lcom/mopub/network/AdResponse;->getHeight()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getAdUnitId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->y:Ljava/lang/String;

    return-object v0
.end method

.method public getAdWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->h:Lcom/mopub/network/AdResponse;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mopub/network/AdResponse;->getWidth()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->h:Lcom/mopub/network/AdResponse;

    invoke-virtual {v0}, Lcom/mopub/network/AdResponse;->getWidth()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getAllowCustomClose()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->h:Lcom/mopub/network/AdResponse;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/mopub/network/AdResponse;->allowCustomClose()Z

    move-result v0

    return v0
.end method

.method public getAutorefreshEnabled()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->getCurrentAutoRefreshStatus()Z

    move-result v0

    return v0
.end method

.method public getBaseAdClassName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getBroadcastIdentifier()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/mopub/mobileads/AdViewController;->a:J

    return-wide v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->b:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentAutoRefreshStatus()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->p:Z

    return v0
.end method

.method public getDspCreativeId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->y:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->h:Lcom/mopub/network/AdResponse;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/mopub/network/AdResponse;->getDspCreativeId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getFullAdType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->h:Lcom/mopub/network/AdResponse;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/mopub/network/AdResponse;->getFullAdType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeywords()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->r:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/common/LocationService;->getLastKnownLocation(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public getMoPubAd()Lcom/mopub/mobileads/MoPubAd;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->c:Lcom/mopub/mobileads/MoPubAd;

    return-object v0
.end method

.method public getTesting()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->v:Z

    return v0
.end method

.method public getUserDataKeywords()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/mopub/common/MoPub;->canCollectPersonalInformation()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->s:Ljava/lang/String;

    return-object v0
.end method

.method public final h(Z)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->w:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->p:Z

    if-eq v0, p1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    const-string v0, "enabled"

    goto :goto_1

    :cond_1
    const-string v0, "disabled"

    .line 2
    :goto_1
    sget-object v3, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v4, "Refresh "

    const-string v5, " for ad unit ("

    invoke-static {v4, v0, v5}, Le/d/c/a/a;->L(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/mopub/mobileads/AdViewController;->y:Ljava/lang/String;

    const-string v5, ")."

    invoke-static {v0, v4, v5}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v3, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 3
    :cond_2
    iput-boolean p1, p0, Lcom/mopub/mobileads/AdViewController;->p:Z

    .line 4
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdViewController;->w:Z

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mopub/mobileads/AdViewController;->C:J

    .line 6
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->g()V

    goto :goto_2

    :cond_3
    if-nez p1, :cond_4

    .line 7
    iget-wide v0, p0, Lcom/mopub/mobileads/AdViewController;->B:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/mopub/mobileads/AdViewController;->C:J

    sub-long/2addr v2, v4

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/mopub/mobileads/AdViewController;->B:J

    .line 8
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->b()V

    :cond_4
    :goto_2
    return-void
.end method

.method public i()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->e:Lcom/mopub/volley/Request;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lcom/mopub/volley/Request;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->e:Lcom/mopub/volley/Request;

    invoke-virtual {v0}, Lcom/mopub/volley/Request;->cancel()V

    .line 4
    :cond_0
    iput-object v1, p0, Lcom/mopub/mobileads/AdViewController;->e:Lcom/mopub/volley/Request;

    .line 5
    :cond_1
    iput-object v1, p0, Lcom/mopub/mobileads/AdViewController;->f:Lcom/mopub/network/AdLoader;

    return-void
.end method

.method public j()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/mopub/mobileads/AdViewController;->B:J

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mopub/mobileads/AdViewController;->C:J

    .line 3
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->getAdAdapter()Lcom/mopub/mobileads/AdAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 5
    iput-object p0, v0, Lcom/mopub/mobileads/AdAdapter;->i:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    .line 6
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->getMoPubAd()Lcom/mopub/mobileads/MoPubAd;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/AdAdapter;->e(Lcom/mopub/mobileads/MoPubAd;)V

    :cond_0
    return-void
.end method

.method public loadAd()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput v0, p0, Lcom/mopub/mobileads/AdViewController;->n:I

    .line 2
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->c()V

    return-void
.end method

.method public loadFailUrl(Lcom/mopub/mobileads/MoPubErrorCode;)Z
    .locals 7

    const/4 v0, 0x2

    const-string v1, "Load failed."

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez p1, :cond_0

    .line 1
    sget-object v5, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM_WITH_THROWABLE:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v4

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 2
    invoke-virtual {v1}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v3

    aput-object v1, v2, v0

    .line 3
    invoke-static {v5, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    sget-object v5, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM_WITH_THROWABLE:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v4

    aput-object p1, v2, v3

    .line 5
    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v0

    .line 6
    invoke-static {v5, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->f:Lcom/mopub/network/AdLoader;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mopub/network/AdLoader;->hasMoreAds()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    .line 8
    invoke-virtual {p0, v0, p1}, Lcom/mopub/mobileads/AdViewController;->e(Ljava/lang/String;Lcom/mopub/mobileads/MoPubError;)V

    return v3

    .line 9
    :cond_1
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/AdViewController;->a(Lcom/mopub/mobileads/MoPubErrorCode;)V

    return v4
.end method

.method public onAdClicked()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->getMoPubAd()Lcom/mopub/mobileads/MoPubAd;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/mopub/mobileads/MoPubAd;->onAdClicked()V

    :cond_0
    return-void
.end method

.method public onAdCollapsed()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->getMoPubAd()Lcom/mopub/mobileads/MoPubAd;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/mopub/mobileads/MoPubAd;->onAdCollapsed()V

    :cond_0
    return-void
.end method

.method public onAdComplete(Lcom/mopub/common/MoPubReward;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->getMoPubAd()Lcom/mopub/mobileads/MoPubAd;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/mopub/mobileads/MoPubAd;->onAdComplete(Lcom/mopub/common/MoPubReward;)V

    :cond_0
    return-void
.end method

.method public onAdDismissed()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->getMoPubAd()Lcom/mopub/mobileads/MoPubAd;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/mopub/mobileads/MoPubAd;->onAdDismissed()V

    :cond_0
    return-void
.end method

.method public onAdExpanded()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->getMoPubAd()Lcom/mopub/mobileads/MoPubAd;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/mopub/mobileads/MoPubAd;->onAdExpanded()V

    :cond_0
    return-void
.end method

.method public onAdFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->getMoPubAd()Lcom/mopub/mobileads/MoPubAd;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/mopub/mobileads/MoPubAd;->onAdLoadFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    :cond_0
    return-void
.end method

.method public onAdImpression()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->h:Lcom/mopub/network/AdResponse;

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0}, Lcom/mopub/network/AdResponse;->getRequestId()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->A:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Ignoring duplicate impression."

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 5
    iput-object v0, p0, Lcom/mopub/mobileads/AdViewController;->A:Ljava/lang/String;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->h:Lcom/mopub/network/AdResponse;

    invoke-virtual {v0}, Lcom/mopub/network/AdResponse;->getImpressionTrackingUrls()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/mopub/network/TrackingRequest;->makeTrackingHttpRequest(Ljava/lang/Iterable;Landroid/content/Context;)V

    .line 7
    new-instance v0, Lcom/mopub/network/SingleImpression;

    iget-object v1, p0, Lcom/mopub/mobileads/AdViewController;->h:Lcom/mopub/network/AdResponse;

    invoke-virtual {v1}, Lcom/mopub/network/AdResponse;->getAdUnitId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/mobileads/AdViewController;->h:Lcom/mopub/network/AdResponse;

    invoke-virtual {v2}, Lcom/mopub/network/AdResponse;->getImpressionData()Lcom/mopub/network/ImpressionData;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/mopub/network/SingleImpression;-><init>(Ljava/lang/String;Lcom/mopub/network/ImpressionData;)V

    invoke-virtual {v0}, Lcom/mopub/network/SingleImpression;->sendImpression()V

    :cond_2
    return-void
.end method

.method public onAdLoadFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/AdViewController;->loadFailUrl(Lcom/mopub/mobileads/MoPubErrorCode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/AdViewController;->a(Lcom/mopub/mobileads/MoPubErrorCode;)V

    :cond_0
    return-void
.end method

.method public onAdLoaded()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->g()V

    .line 2
    iget-object v0, p0, Lcom/mopub/mobileads/AdViewController;->f:Lcom/mopub/network/AdLoader;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/mopub/network/AdLoader;->creativeDownloadSuccess()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/mopub/mobileads/AdViewController;->f:Lcom/mopub/network/AdLoader;

    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "mAdLoader is not supposed to be null"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 6
    :goto_0
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->getMoPubAd()Lcom/mopub/mobileads/MoPubAd;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    invoke-interface {v0}, Lcom/mopub/mobileads/MoPubAd;->onAdLoaded()V

    :cond_1
    return-void
.end method

.method public onAdPauseAutoRefresh()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->getMoPubAd()Lcom/mopub/mobileads/MoPubAd;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/mopub/mobileads/MoPubAd;->onAdPauseAutoRefresh()V

    :cond_0
    return-void
.end method

.method public onAdResumeAutoRefresh()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->getMoPubAd()Lcom/mopub/mobileads/MoPubAd;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/mopub/mobileads/MoPubAd;->onAdResumeAutoRefresh()V

    :cond_0
    return-void
.end method

.method public onAdShown()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->getMoPubAd()Lcom/mopub/mobileads/MoPubAd;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/mopub/mobileads/MoPubAd;->onAdShown()V

    :cond_0
    return-void
.end method

.method public reload()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdViewController;->loadAd()V

    return-void
.end method

.method public setAdResponse(Lcom/mopub/network/AdResponse;)V
    .locals 0
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController;->h:Lcom/mopub/network/AdResponse;

    return-void
.end method

.method public setAdUnitId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController;->y:Ljava/lang/String;

    return-void
.end method

.method public setKeywords(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController;->r:Ljava/lang/String;

    return-void
.end method

.method public setLocation(Landroid/location/Location;)V
    .locals 0

    return-void
.end method

.method public setMoPubAd(Lcom/mopub/mobileads/MoPubAd;)V
    .locals 0
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController;->c:Lcom/mopub/mobileads/MoPubAd;

    return-void
.end method

.method public setTesting(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mopub/mobileads/AdViewController;->v:Z

    return-void
.end method

.method public setUserDataKeywords(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/mopub/common/MoPub;->canCollectPersonalInformation()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController;->s:Ljava/lang/String;

    return-void

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController;->s:Ljava/lang/String;

    return-void
.end method

.method public setWindowInsets(Landroid/view/WindowInsets;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mopub/mobileads/AdViewController;->u:Landroid/view/WindowInsets;

    return-void
.end method
