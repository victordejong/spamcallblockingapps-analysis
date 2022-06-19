.class public Lcom/mopub/common/ExternalViewabilitySessionManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/common/ExternalViewabilitySessionManager$ExternalViewabilityManagerFactory;,
        Lcom/mopub/common/ExternalViewabilitySessionManager$ViewabilityVendor;
    }
.end annotation


# static fields
.field public static c:Lcom/mopub/common/ExternalViewabilitySessionManager$ExternalViewabilityManagerFactory;


# instance fields
.field public a:Lcom/mopub/common/ViewabilityTracker;

.field public final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/util/Pair<",
            "Landroid/view/View;",
            "Lcom/mopub/common/ViewabilityObstruction;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/mopub/common/ExternalViewabilitySessionManager;->a:Lcom/mopub/common/ViewabilityTracker;

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mopub/common/ExternalViewabilitySessionManager;->b:Ljava/util/Set;

    return-void
.end method

.method public static create()Lcom/mopub/common/ExternalViewabilitySessionManager;
    .locals 1

    .line 1
    sget-object v0, Lcom/mopub/common/ExternalViewabilitySessionManager;->c:Lcom/mopub/common/ExternalViewabilitySessionManager$ExternalViewabilityManagerFactory;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/mopub/common/ExternalViewabilitySessionManager;

    invoke-direct {v0}, Lcom/mopub/common/ExternalViewabilitySessionManager;-><init>()V

    return-object v0

    .line 3
    :cond_0
    invoke-interface {v0}, Lcom/mopub/common/ExternalViewabilitySessionManager$ExternalViewabilityManagerFactory;->create()Lcom/mopub/common/ExternalViewabilitySessionManager;

    move-result-object v0

    return-object v0
.end method

.method public static setCreator(Lcom/mopub/common/ExternalViewabilitySessionManager$ExternalViewabilityManagerFactory;)V
    .locals 0
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .line 1
    sput-object p0, Lcom/mopub/common/ExternalViewabilitySessionManager;->c:Lcom/mopub/common/ExternalViewabilitySessionManager$ExternalViewabilityManagerFactory;

    return-void
.end method


# virtual methods
.method public createNativeSession(Landroid/view/View;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Set<",
            "Lcom/mopub/common/ViewabilityVendor;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/mopub/common/Preconditions;->checkUiThread()V

    .line 2
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 3
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/mopub/common/ExternalViewabilitySessionManager;->a:Lcom/mopub/common/ViewabilityTracker;

    if-eqz v0, :cond_0

    return-void

    .line 5
    :cond_0
    :try_start_0
    sget-object v0, Lcom/mopub/common/ViewabilityTracker;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 6
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    sget-object v0, Lcom/iab/omid/library/mopub/adsession/CreativeType;->NATIVE_DISPLAY:Lcom/iab/omid/library/mopub/adsession/CreativeType;

    sget-object v1, Lcom/iab/omid/library/mopub/adsession/Owner;->NONE:Lcom/iab/omid/library/mopub/adsession/Owner;

    invoke-static {v0, p2, v1}, Lcom/mopub/common/ViewabilityTracker;->b(Lcom/iab/omid/library/mopub/adsession/CreativeType;Ljava/util/Set;Lcom/iab/omid/library/mopub/adsession/Owner;)Lcom/iab/omid/library/mopub/adsession/AdSession;

    move-result-object p2

    .line 8
    invoke-static {p2}, Lcom/iab/omid/library/mopub/adsession/AdEvents;->createAdEvents(Lcom/iab/omid/library/mopub/adsession/AdSession;)Lcom/iab/omid/library/mopub/adsession/AdEvents;

    move-result-object v0

    .line 9
    new-instance v1, Lcom/mopub/common/ViewabilityTracker;

    invoke-direct {v1, p2, v0, p1}, Lcom/mopub/common/ViewabilityTracker;-><init>(Lcom/iab/omid/library/mopub/adsession/AdSession;Lcom/iab/omid/library/mopub/adsession/AdEvents;Landroid/view/View;)V

    .line 10
    iput-object v1, p0, Lcom/mopub/common/ExternalViewabilitySessionManager;->a:Lcom/mopub/common/ViewabilityTracker;

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    .line 11
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Empty viewability vendors list."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    :goto_0
    sget-object p2, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM_WITH_THROWABLE:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "createNativeTracker failed"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {p2, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public createVideoSession(Landroid/view/View;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Set<",
            "Lcom/mopub/common/ViewabilityVendor;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/mopub/common/Preconditions;->checkUiThread()V

    .line 2
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 3
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/mopub/common/ExternalViewabilitySessionManager;->a:Lcom/mopub/common/ViewabilityTracker;

    if-eqz v0, :cond_0

    return-void

    .line 5
    :cond_0
    :try_start_0
    sget v0, Le/n/a/j;->i:I

    .line 6
    sget-object v0, Lcom/iab/omid/library/mopub/adsession/CreativeType;->VIDEO:Lcom/iab/omid/library/mopub/adsession/CreativeType;

    sget-object v1, Lcom/iab/omid/library/mopub/adsession/Owner;->NATIVE:Lcom/iab/omid/library/mopub/adsession/Owner;

    invoke-static {v0, p2, v1}, Lcom/mopub/common/ViewabilityTracker;->b(Lcom/iab/omid/library/mopub/adsession/CreativeType;Ljava/util/Set;Lcom/iab/omid/library/mopub/adsession/Owner;)Lcom/iab/omid/library/mopub/adsession/AdSession;

    move-result-object p2

    .line 7
    invoke-static {p2}, Lcom/iab/omid/library/mopub/adsession/AdEvents;->createAdEvents(Lcom/iab/omid/library/mopub/adsession/AdSession;)Lcom/iab/omid/library/mopub/adsession/AdEvents;

    move-result-object v0

    .line 8
    new-instance v1, Le/n/a/j;

    invoke-direct {v1, p2, v0, p1}, Le/n/a/j;-><init>(Lcom/iab/omid/library/mopub/adsession/AdSession;Lcom/iab/omid/library/mopub/adsession/AdEvents;Landroid/view/View;)V

    .line 9
    iput-object v1, p0, Lcom/mopub/common/ExternalViewabilitySessionManager;->a:Lcom/mopub/common/ViewabilityTracker;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    sget-object p2, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM_WITH_THROWABLE:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "createVastVideoTracker failed"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {p2, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public createWebViewSession(Landroid/webkit/WebView;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/mopub/common/Preconditions;->checkUiThread()V

    .line 2
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/mopub/common/ExternalViewabilitySessionManager;->a:Lcom/mopub/common/ViewabilityTracker;

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/mopub/common/ViewabilityTracker;->c(Landroid/webkit/WebView;)Lcom/mopub/common/ViewabilityTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/common/ExternalViewabilitySessionManager;->a:Lcom/mopub/common/ViewabilityTracker;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM_WITH_THROWABLE:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "createWebViewTracker failed"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public endSession()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/mopub/common/Preconditions;->checkUiThread()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/mopub/common/ExternalViewabilitySessionManager;->a:Lcom/mopub/common/ViewabilityTracker;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopTracking(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/mopub/common/ViewabilityTracker;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/common/ViewabilityTracker;->d(Ljava/lang/String;)V

    .line 5
    sget-object v1, Lcom/mopub/common/ViewabilityTracker$STATE;->STOPPED:Lcom/mopub/common/ViewabilityTracker$STATE;

    invoke-virtual {v0, v1}, Lcom/mopub/common/ViewabilityTracker;->a(Lcom/mopub/common/ViewabilityTracker$STATE;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    sget-object v1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM_WITH_THROWABLE:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "stopTracking failed"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public hasImpressionOccurred()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/common/ExternalViewabilitySessionManager;->a:Lcom/mopub/common/ViewabilityTracker;

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v0, v0, Lcom/mopub/common/ViewabilityTracker;->c:Z

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isTracking()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/mopub/common/Preconditions;->checkUiThread()V

    .line 2
    iget-object v0, p0, Lcom/mopub/common/ExternalViewabilitySessionManager;->a:Lcom/mopub/common/ViewabilityTracker;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 3
    :cond_0
    iget-boolean v0, v0, Lcom/mopub/common/ViewabilityTracker;->d:Z

    return v0
.end method

.method public onVideoPrepared(J)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/mopub/common/Preconditions;->checkUiThread()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/mopub/common/ExternalViewabilitySessionManager;->a:Lcom/mopub/common/ViewabilityTracker;

    if-eqz v0, :cond_0

    long-to-float p1, p1

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p1, p2

    .line 3
    invoke-virtual {v0, p1}, Lcom/mopub/common/ViewabilityTracker;->videoPrepared(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    sget-object p2, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM_WITH_THROWABLE:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "videoPrepared failed"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {p2, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public recordVideoEvent(Lcom/mopub/common/VideoEvent;I)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/mopub/common/Preconditions;->checkUiThread()V

    .line 2
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 3
    :try_start_0
    iget-object p2, p0, Lcom/mopub/common/ExternalViewabilitySessionManager;->a:Lcom/mopub/common/ViewabilityTracker;

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p2, p1}, Lcom/mopub/common/ViewabilityTracker;->trackVideo(Lcom/mopub/common/VideoEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    sget-object p2, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM_WITH_THROWABLE:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "trackVideo failed"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {p2, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public registerFriendlyObstruction(Landroid/view/View;Lcom/mopub/common/ViewabilityObstruction;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/mopub/common/Preconditions;->checkUiThread()V

    .line 2
    iget-object v0, p0, Lcom/mopub/common/ExternalViewabilitySessionManager;->a:Lcom/mopub/common/ViewabilityTracker;

    if-nez v0, :cond_0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/mopub/common/ExternalViewabilitySessionManager;->b:Ljava/util/Set;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 4
    invoke-virtual {v0, p1, p2}, Lcom/mopub/common/ViewabilityTracker;->e(Landroid/view/View;Lcom/mopub/common/ViewabilityObstruction;)V

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/mopub/common/ExternalViewabilitySessionManager;->b:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/mopub/common/ExternalViewabilitySessionManager;->b:Ljava/util/Set;

    invoke-virtual {v0, p1}, Lcom/mopub/common/ViewabilityTracker;->f(Ljava/lang/Iterable;)V

    .line 7
    iget-object p1, p0, Lcom/mopub/common/ExternalViewabilitySessionManager;->b:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    sget-object p2, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {p2, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public registerTrackedView(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/common/ExternalViewabilitySessionManager;->a:Lcom/mopub/common/ViewabilityTracker;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcom/mopub/common/ViewabilityTracker;->a:Lcom/iab/omid/library/mopub/adsession/AdSession;

    invoke-virtual {v0, p1}, Lcom/iab/omid/library/mopub/adsession/AdSession;->registerAdView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public registerVideoObstruction(Landroid/view/View;Lcom/mopub/common/ViewabilityObstruction;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/mopub/common/ExternalViewabilitySessionManager;->registerFriendlyObstruction(Landroid/view/View;Lcom/mopub/common/ViewabilityObstruction;)V

    return-void
.end method

.method public startSession()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/mopub/common/Preconditions;->checkUiThread()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/mopub/common/ExternalViewabilitySessionManager;->a:Lcom/mopub/common/ViewabilityTracker;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0, v0}, Lcom/mopub/common/ExternalViewabilitySessionManager;->registerFriendlyObstruction(Landroid/view/View;Lcom/mopub/common/ViewabilityObstruction;)V

    .line 4
    iget-object v0, p0, Lcom/mopub/common/ExternalViewabilitySessionManager;->a:Lcom/mopub/common/ViewabilityTracker;

    invoke-virtual {v0}, Lcom/mopub/common/ViewabilityTracker;->startTracking()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    sget-object v1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM_WITH_THROWABLE:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "startSession()"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public trackImpression()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/mopub/common/Preconditions;->checkUiThread()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/mopub/common/ExternalViewabilitySessionManager;->a:Lcom/mopub/common/ViewabilityTracker;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/mopub/common/ViewabilityTracker;->trackImpression()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    sget-object v1, Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;->CUSTOM_WITH_THROWABLE:Lcom/mopub/common/logging/MoPubLog$SdkLogEvent;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "trackImpression()"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method
