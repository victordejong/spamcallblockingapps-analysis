.class public Lcom/mopub/network/AdLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/network/AdLoader$Listener;
    }
.end annotation


# instance fields
.field public final a:Lcom/mopub/network/MultiAdRequest$Listener;

.field public final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lcom/mopub/network/AdLoader$Listener;

.field public d:Lcom/mopub/network/MultiAdRequest;

.field public e:Lcom/mopub/network/MultiAdResponse;

.field public final f:Ljava/lang/Object;

.field public g:Lcom/mopub/network/AdResponse;

.field public h:Le/n/e/a;

.field public volatile i:Z

.field public volatile j:Z

.field public k:Z

.field public l:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/mopub/common/AdFormat;Ljava/lang/String;Landroid/content/Context;Lcom/mopub/network/AdLoader$Listener;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mopub/network/AdLoader;->f:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/mopub/network/AdLoader;->g:Lcom/mopub/network/AdResponse;

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/mopub/common/Preconditions;->checkArgument(Z)V

    .line 5
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 6
    invoke-static {p4}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 7
    invoke-static {p5}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 8
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mopub/network/AdLoader;->b:Ljava/lang/ref/WeakReference;

    .line 9
    iput-object p5, p0, Lcom/mopub/network/AdLoader;->c:Lcom/mopub/network/AdLoader$Listener;

    .line 10
    new-instance p5, Landroid/os/Handler;

    invoke-direct {p5}, Landroid/os/Handler;-><init>()V

    iput-object p5, p0, Lcom/mopub/network/AdLoader;->l:Landroid/os/Handler;

    .line 11
    new-instance v5, Lcom/mopub/network/AdLoader$a;

    invoke-direct {v5, p0}, Lcom/mopub/network/AdLoader$a;-><init>(Lcom/mopub/network/AdLoader;)V

    iput-object v5, p0, Lcom/mopub/network/AdLoader;->a:Lcom/mopub/network/MultiAdRequest$Listener;

    const/4 p5, 0x0

    .line 12
    iput-boolean p5, p0, Lcom/mopub/network/AdLoader;->i:Z

    .line 13
    iput-boolean p5, p0, Lcom/mopub/network/AdLoader;->j:Z

    .line 14
    new-instance p5, Lcom/mopub/network/MultiAdRequest;

    move-object v0, p5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/mopub/network/MultiAdRequest;-><init>(Ljava/lang/String;Lcom/mopub/common/AdFormat;Ljava/lang/String;Landroid/content/Context;Lcom/mopub/network/MultiAdRequest$Listener;)V

    iput-object p5, p0, Lcom/mopub/network/AdLoader;->d:Lcom/mopub/network/MultiAdRequest;

    return-void
.end method

.method public static a(Lcom/mopub/network/AdLoader;Lcom/mopub/volley/VolleyError;)V
    .locals 3

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/mopub/network/AdLoader;->g:Lcom/mopub/network/AdResponse;

    .line 4
    iget-object p0, p0, Lcom/mopub/network/AdLoader;->c:Lcom/mopub/network/AdLoader$Listener;

    if-eqz p0, :cond_1

    .line 5
    instance-of v0, p1, Lcom/mopub/network/MoPubNetworkError;

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {p0, p1}, Lcom/mopub/network/AdLoader$Listener;->onErrorResponse(Lcom/mopub/volley/VolleyError;)V

    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Lcom/mopub/network/MoPubNetworkError;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    sget-object v2, Lcom/mopub/network/MoPubNetworkError$Reason;->UNSPECIFIED:Lcom/mopub/network/MoPubNetworkError$Reason;

    invoke-direct {v0, v1, p1, v2}, Lcom/mopub/network/MoPubNetworkError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/mopub/network/MoPubNetworkError$Reason;)V

    .line 9
    invoke-interface {p0, v0}, Lcom/mopub/network/AdLoader$Listener;->onErrorResponse(Lcom/mopub/volley/VolleyError;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static b(Lcom/mopub/network/AdLoader;Lcom/mopub/network/AdResponse;)V
    .locals 4

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/mopub/network/AdLoader;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 4
    new-instance v1, Le/n/e/a;

    invoke-direct {v1, p1}, Le/n/e/a;-><init>(Lcom/mopub/network/AdResponse;)V

    iput-object v1, p0, Lcom/mopub/network/AdLoader;->h:Le/n/e/a;

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Le/n/e/a;->a:Ljava/lang/Long;

    .line 6
    iget-object v1, v1, Le/n/e/a;->b:Lcom/mopub/network/AdResponse;

    invoke-virtual {v1}, Lcom/mopub/network/AdResponse;->getBeforeLoadUrls()Ljava/util/List;

    move-result-object v1

    .line 7
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {v1, v0}, Lcom/mopub/network/TrackingRequest;->makeTrackingHttpRequest(Ljava/lang/Iterable;Landroid/content/Context;)V

    .line 9
    :goto_0
    iget-object v0, p0, Lcom/mopub/network/AdLoader;->c:Lcom/mopub/network/AdLoader$Listener;

    if-eqz v0, :cond_2

    .line 10
    iput-object p1, p0, Lcom/mopub/network/AdLoader;->g:Lcom/mopub/network/AdResponse;

    .line 11
    invoke-interface {v0, p1}, Lcom/mopub/network/AdLoader$Listener;->onSuccess(Lcom/mopub/network/AdResponse;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public final c(Lcom/mopub/mobileads/MoPubError;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 1
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Must provide error code to report creative download error"

    aput-object v2, v1, v0

    invoke-static {p1, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void

    .line 2
    :cond_0
    iget-object v2, p0, Lcom/mopub/network/AdLoader;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    if-eqz v2, :cond_4

    .line 3
    iget-object v3, p0, Lcom/mopub/network/AdLoader;->g:Lcom/mopub/network/AdResponse;

    if-nez v3, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/mopub/network/AdLoader;->h:Le/n/e/a;

    if-eqz v0, :cond_3

    .line 5
    invoke-virtual {v0, v2, p1}, Le/n/e/a;->c(Landroid/content/Context;Lcom/mopub/mobileads/MoPubError;)V

    .line 6
    iget-object v0, p0, Lcom/mopub/network/AdLoader;->h:Le/n/e/a;

    .line 7
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_3

    .line 8
    iget-object v1, v0, Le/n/e/a;->a:Ljava/lang/Long;

    if-nez v1, :cond_2

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {v0, p1}, Le/n/e/a;->a(Lcom/mopub/mobileads/MoPubError;)Le/n/e/a$a;

    move-result-object p1

    .line 10
    iget-object v1, v0, Le/n/e/a;->b:Lcom/mopub/network/AdResponse;

    invoke-virtual {v1}, Lcom/mopub/network/AdResponse;->getAfterLoadFailUrls()Ljava/util/List;

    move-result-object v1

    .line 11
    iget-object p1, p1, Le/n/e/a$a;->a:Ljava/lang/String;

    .line 12
    invoke-virtual {v0, v1, p1}, Le/n/e/a;->b(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 13
    invoke-static {p1, v2}, Lcom/mopub/network/TrackingRequest;->makeTrackingHttpRequest(Ljava/lang/Iterable;Landroid/content/Context;)V

    :cond_3
    :goto_0
    return-void

    .line 14
    :cond_4
    :goto_1
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Cannot send creative mFailed analytics."

    aput-object v2, v1, v0

    invoke-static {p1, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void
.end method

.method public creativeDownloadSuccess()V
    .locals 4

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/mopub/network/AdLoader;->k:Z

    .line 2
    iget-object v1, p0, Lcom/mopub/network/AdLoader;->h:Le/n/e/a;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 3
    sget-object v1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "Response analytics should not be null here"

    aput-object v3, v0, v2

    invoke-static {v1, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/mopub/network/AdLoader;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    if-eqz v1, :cond_4

    .line 5
    iget-object v3, p0, Lcom/mopub/network/AdLoader;->g:Lcom/mopub/network/AdResponse;

    if-nez v3, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/mopub/network/AdLoader;->h:Le/n/e/a;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Le/n/e/a;->c(Landroid/content/Context;Lcom/mopub/mobileads/MoPubError;)V

    .line 7
    iget-object v0, p0, Lcom/mopub/network/AdLoader;->h:Le/n/e/a;

    .line 8
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_3

    .line 9
    iget-object v2, v0, Le/n/e/a;->a:Ljava/lang/Long;

    if-nez v2, :cond_2

    goto :goto_0

    .line 10
    :cond_2
    iget-object v2, v0, Le/n/e/a;->b:Lcom/mopub/network/AdResponse;

    invoke-virtual {v2}, Lcom/mopub/network/AdResponse;->getAfterLoadSuccessUrls()Ljava/util/List;

    move-result-object v2

    sget-object v3, Le/n/e/a$a;->AD_LOADED:Le/n/e/a$a;

    .line 11
    iget-object v3, v3, Le/n/e/a$a;->a:Ljava/lang/String;

    .line 12
    invoke-virtual {v0, v2, v3}, Le/n/e/a;->b(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 13
    invoke-static {v0, v1}, Lcom/mopub/network/TrackingRequest;->makeTrackingHttpRequest(Ljava/lang/Iterable;Landroid/content/Context;)V

    :cond_3
    :goto_0
    return-void

    .line 14
    :cond_4
    :goto_1
    sget-object v1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "Cannot send \'x-after-load-url\' analytics."

    aput-object v3, v0, v2

    invoke-static {v1, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return-void
.end method

.method public final d(Lcom/mopub/network/MultiAdRequest;Landroid/content/Context;)Lcom/mopub/volley/Request;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/network/MultiAdRequest;",
            "Landroid/content/Context;",
            ")",
            "Lcom/mopub/volley/Request<",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/mopub/network/MoPubRequest;->getBody()[B

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/mopub/network/MoPubRequest;->getBody()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    :cond_1
    const-string v0, "<no body>"

    .line 4
    :goto_0
    sget-object v1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->REQUESTED:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/mopub/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 5
    iput-boolean v3, p0, Lcom/mopub/network/AdLoader;->i:Z

    .line 6
    invoke-static {p2}, Lcom/mopub/network/Networking;->getRequestQueue(Landroid/content/Context;)Lcom/mopub/network/MoPubRequestQueue;

    move-result-object p2

    .line 7
    iput-object p1, p0, Lcom/mopub/network/AdLoader;->d:Lcom/mopub/network/MultiAdRequest;

    .line 8
    invoke-virtual {p2, p1}, Lcom/mopub/volley/RequestQueue;->add(Lcom/mopub/volley/Request;)Lcom/mopub/volley/Request;

    return-object p1
.end method

.method public hasMoreAds()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/mopub/network/AdLoader;->j:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/mopub/network/AdLoader;->k:Z

    if-eqz v0, :cond_1

    return v1

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/mopub/network/AdLoader;->e:Lcom/mopub/network/MultiAdResponse;

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {v0}, Lcom/mopub/network/MultiAdResponse;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 5
    iget-object v0, v0, Lcom/mopub/network/MultiAdResponse;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public isFailed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mopub/network/AdLoader;->j:Z

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mopub/network/AdLoader;->i:Z

    return v0
.end method

.method public loadNextAd(Lcom/mopub/mobileads/MoPubError;)Lcom/mopub/volley/Request;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/mobileads/MoPubError;",
            ")",
            "Lcom/mopub/volley/Request<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/mopub/network/AdLoader;->i:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/mopub/network/AdLoader;->d:Lcom/mopub/network/MultiAdRequest;

    return-object p1

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/mopub/network/AdLoader;->j:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4
    iget-object p1, p0, Lcom/mopub/network/AdLoader;->l:Landroid/os/Handler;

    new-instance v0, Lcom/mopub/network/AdLoader$b;

    invoke-direct {v0, p0}, Lcom/mopub/network/AdLoader$b;-><init>(Lcom/mopub/network/AdLoader;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v1

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/mopub/network/AdLoader;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v2, p0, Lcom/mopub/network/AdLoader;->e:Lcom/mopub/network/MultiAdResponse;

    if-nez v2, :cond_5

    .line 7
    invoke-static {}, Lcom/mopub/network/RequestRateTracker;->getInstance()Lcom/mopub/network/RequestRateTracker;

    move-result-object p1

    iget-object v2, p0, Lcom/mopub/network/AdLoader;->d:Lcom/mopub/network/MultiAdRequest;

    iget-object v2, v2, Lcom/mopub/network/MultiAdRequest;->t:Ljava/lang/String;

    .line 8
    iget-object p1, p1, Lcom/mopub/network/RequestRateTracker;->a:Ljava/util/Map;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mopub/network/RequestRateTracker$TimeRecord;

    const-wide/16 v2, 0x0

    if-nez p1, :cond_2

    move-wide v4, v2

    goto :goto_0

    .line 9
    :cond_2
    iget-wide v4, p1, Lcom/mopub/network/RequestRateTracker$TimeRecord;->a:J

    iget p1, p1, Lcom/mopub/network/RequestRateTracker$TimeRecord;->mBlockIntervalMs:I

    int-to-long v6, p1

    add-long/2addr v4, v6

    .line 10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    :goto_0
    cmp-long p1, v4, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez p1, :cond_3

    move p1, v3

    goto :goto_1

    :cond_3
    move p1, v2

    :goto_1
    if-eqz p1, :cond_4

    .line 11
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    new-array v4, v3, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/mopub/network/AdLoader;->d:Lcom/mopub/network/MultiAdRequest;

    iget-object v6, v6, Lcom/mopub/network/MultiAdRequest;->t:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is blocked by request rate limiting."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {p1, v4}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 12
    iput-boolean v3, p0, Lcom/mopub/network/AdLoader;->j:Z

    .line 13
    iget-object p1, p0, Lcom/mopub/network/AdLoader;->l:Landroid/os/Handler;

    new-instance v2, Lcom/mopub/network/AdLoader$c;

    invoke-direct {v2, p0}, Lcom/mopub/network/AdLoader$c;-><init>(Lcom/mopub/network/AdLoader;)V

    invoke-virtual {p1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    monitor-exit v0

    return-object v1

    .line 15
    :cond_4
    iget-object p1, p0, Lcom/mopub/network/AdLoader;->d:Lcom/mopub/network/MultiAdRequest;

    iget-object v1, p0, Lcom/mopub/network/AdLoader;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {p0, p1, v1}, Lcom/mopub/network/AdLoader;->d(Lcom/mopub/network/MultiAdRequest;Landroid/content/Context;)Lcom/mopub/volley/Request;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_5
    if-eqz p1, :cond_6

    .line 16
    invoke-virtual {p0, p1}, Lcom/mopub/network/AdLoader;->c(Lcom/mopub/mobileads/MoPubError;)V

    .line 17
    :cond_6
    iget-object p1, p0, Lcom/mopub/network/AdLoader;->e:Lcom/mopub/network/MultiAdResponse;

    invoke-virtual {p1}, Lcom/mopub/network/MultiAdResponse;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 18
    iget-object p1, p0, Lcom/mopub/network/AdLoader;->e:Lcom/mopub/network/MultiAdResponse;

    invoke-virtual {p1}, Lcom/mopub/network/MultiAdResponse;->next()Lcom/mopub/network/AdResponse;

    move-result-object p1

    .line 19
    iget-object v1, p0, Lcom/mopub/network/AdLoader;->l:Landroid/os/Handler;

    new-instance v2, Lcom/mopub/network/AdLoader$d;

    invoke-direct {v2, p0, p1}, Lcom/mopub/network/AdLoader$d;-><init>(Lcom/mopub/network/AdLoader;Lcom/mopub/network/AdResponse;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 20
    iget-object p1, p0, Lcom/mopub/network/AdLoader;->d:Lcom/mopub/network/MultiAdRequest;

    monitor-exit v0

    return-object p1

    .line 21
    :cond_7
    iget-object p1, p0, Lcom/mopub/network/AdLoader;->e:Lcom/mopub/network/MultiAdResponse;

    .line 22
    iget-object p1, p1, Lcom/mopub/network/MultiAdResponse;->b:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 23
    new-instance p1, Lcom/mopub/network/MultiAdRequest;

    iget-object v1, p0, Lcom/mopub/network/AdLoader;->e:Lcom/mopub/network/MultiAdResponse;

    invoke-virtual {v1}, Lcom/mopub/network/MultiAdResponse;->getFailURL()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/mopub/network/AdLoader;->d:Lcom/mopub/network/MultiAdRequest;

    iget-object v4, v1, Lcom/mopub/network/MultiAdRequest;->s:Lcom/mopub/common/AdFormat;

    iget-object v5, v1, Lcom/mopub/network/MultiAdRequest;->t:Ljava/lang/String;

    iget-object v1, p0, Lcom/mopub/network/AdLoader;->b:Ljava/lang/ref/WeakReference;

    .line 24
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/content/Context;

    iget-object v7, p0, Lcom/mopub/network/AdLoader;->a:Lcom/mopub/network/MultiAdRequest$Listener;

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/mopub/network/MultiAdRequest;-><init>(Ljava/lang/String;Lcom/mopub/common/AdFormat;Ljava/lang/String;Landroid/content/Context;Lcom/mopub/network/MultiAdRequest$Listener;)V

    iput-object p1, p0, Lcom/mopub/network/AdLoader;->d:Lcom/mopub/network/MultiAdRequest;

    .line 25
    iget-object v1, p0, Lcom/mopub/network/AdLoader;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {p0, p1, v1}, Lcom/mopub/network/AdLoader;->d(Lcom/mopub/network/MultiAdRequest;Landroid/content/Context;)Lcom/mopub/volley/Request;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 26
    :cond_8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    iget-object p1, p0, Lcom/mopub/network/AdLoader;->l:Landroid/os/Handler;

    new-instance v0, Lcom/mopub/network/AdLoader$e;

    invoke-direct {v0, p0}, Lcom/mopub/network/AdLoader$e;-><init>(Lcom/mopub/network/AdLoader;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v1

    :catchall_0
    move-exception p1

    .line 28
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
