.class public Lcom/mopub/mobileads/InlineAdAdapter;
.super Lcom/mopub/mobileads/AdAdapter;
.source "SourceFile"


# instance fields
.field public j:I

.field public k:I

.field public l:Le/n/b/k0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/mobileads/AdData;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mopub/mobileads/AdAdapter$BaseAdNotFoundException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/mopub/mobileads/AdAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/mobileads/AdData;)V

    const/high16 p1, -0x80000000

    .line 2
    iput p1, p0, Lcom/mopub/mobileads/InlineAdAdapter;->j:I

    .line 3
    iput p1, p0, Lcom/mopub/mobileads/InlineAdAdapter;->k:I

    .line 4
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 p3, 0x1

    new-array v0, p3, [Ljava/lang/Object;

    const-string v1, "Attempting to invoke base ad: "

    invoke-static {v1, p2}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 5
    :try_start_0
    invoke-static {p2}, Lcom/mopub/mobileads/factories/BaseAdFactory;->create(Ljava/lang/String;)Lcom/mopub/mobileads/BaseAd;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/mobileads/AdAdapter;->c:Lcom/mopub/mobileads/BaseAd;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 6
    iget-object p1, p0, Lcom/mopub/mobileads/AdAdapter;->f:Lcom/mopub/mobileads/AdData;

    .line 7
    invoke-virtual {p1}, Lcom/mopub/mobileads/AdData;->getImpressionMinVisibleDips()Ljava/lang/String;

    move-result-object p1

    .line 8
    iget-object p2, p0, Lcom/mopub/mobileads/AdAdapter;->f:Lcom/mopub/mobileads/AdData;

    .line 9
    invoke-virtual {p2}, Lcom/mopub/mobileads/AdData;->getImpressionMinVisibleMs()Ljava/lang/String;

    move-result-object p2

    .line 10
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 11
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 12
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/mopub/mobileads/InlineAdAdapter;->j:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 13
    :catch_0
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array v0, p3, [Ljava/lang/Object;

    const-string v1, "Cannot parse integer from header banner-impression-min-pixels"

    aput-object v1, v0, v2

    invoke-static {p1, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 14
    :goto_0
    :try_start_2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/mopub/mobileads/InlineAdAdapter;->k:I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 15
    :catch_1
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array p2, p3, [Ljava/lang/Object;

    const-string p3, "Cannot parse integer from header banner-impression-min-ms"

    aput-object p3, p2, v2

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :cond_0
    :goto_1
    return-void

    :catch_2
    move-exception p1

    .line 16
    new-instance p2, Lcom/mopub/mobileads/AdAdapter$BaseAdNotFoundException;

    invoke-direct {p2, p1}, Lcom/mopub/mobileads/AdAdapter$BaseAdNotFoundException;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method


# virtual methods
.method public b()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/AdAdapter;->c:Lcom/mopub/mobileads/BaseAd;

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {v0}, Lcom/mopub/mobileads/BaseAd;->onInvalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    sget-object v4, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM_WITH_THROWABLE:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array v5, v2, [Ljava/lang/Object;

    const-string v6, "Invalidating a base ad banner threw an exception"

    aput-object v6, v5, v3

    aput-object v0, v5, v1

    invoke-static {v4, v5}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 4
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mopub/mobileads/InlineAdAdapter;->l:Le/n/b/k0;

    if-eqz v0, :cond_2

    const/4 v4, 0x0

    .line 5
    :try_start_1
    iget-object v5, v0, Le/n/b/k0;->h:Landroid/os/Handler;

    invoke-virtual {v5, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 6
    iput-boolean v3, v0, Le/n/b/k0;->i:Z

    .line 7
    iget-object v5, v0, Le/n/b/k0;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/ViewTreeObserver;

    if-eqz v5, :cond_1

    .line 8
    invoke-virtual {v5}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 9
    iget-object v6, v0, Le/n/b/k0;->a:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v5, v6}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    .line 10
    :cond_1
    :goto_1
    iget-object v5, v0, Le/n/b/k0;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->clear()V

    .line 11
    iput-object v4, v0, Le/n/b/k0;->f:Le/n/b/k0$d;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 12
    :goto_2
    sget-object v5, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM_WITH_THROWABLE:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v6, "Destroying a banner visibility tracker threw an exception"

    aput-object v6, v2, v3

    aput-object v0, v2, v1

    invoke-static {v5, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 13
    :goto_3
    iput-object v4, p0, Lcom/mopub/mobileads/InlineAdAdapter;->l:Le/n/b/k0;

    :cond_2
    return-void
.end method

.method public final e(Lcom/mopub/mobileads/MoPubAd;)V
    .locals 10

    .line 1
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->SHOW_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/mopub/mobileads/AdAdapter;->c:Lcom/mopub/mobileads/BaseAd;

    .line 3
    iget-boolean v2, p0, Lcom/mopub/mobileads/AdAdapter;->e:Z

    if-nez v2, :cond_6

    if-nez v0, :cond_0

    goto :goto_2

    .line 4
    :cond_0
    instance-of v2, p1, Lcom/mopub/mobileads/MoPubView;

    const/4 v3, 0x1

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Lcom/mopub/mobileads/BaseAd;->b()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    move-object v6, p1

    check-cast v6, Lcom/mopub/mobileads/MoPubView;

    .line 6
    invoke-virtual {v0}, Lcom/mopub/mobileads/BaseAd;->b()Landroid/view/View;

    move-result-object v7

    .line 7
    iget-object v1, p0, Lcom/mopub/mobileads/AdAdapter;->c:Lcom/mopub/mobileads/BaseAd;

    if-nez v1, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    iget-boolean v3, v1, Lcom/mopub/mobileads/BaseAd;->a:Z

    :goto_0
    if-eqz v3, :cond_3

    .line 9
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdAdapter;->onAdPauseAutoRefresh()V

    .line 10
    new-instance v1, Le/n/b/k0;

    iget-object v5, p0, Lcom/mopub/mobileads/AdAdapter;->d:Landroid/content/Context;

    iget v8, p0, Lcom/mopub/mobileads/InlineAdAdapter;->j:I

    iget v9, p0, Lcom/mopub/mobileads/InlineAdAdapter;->k:I

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Le/n/b/k0;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/view/View;II)V

    iput-object v1, p0, Lcom/mopub/mobileads/InlineAdAdapter;->l:Le/n/b/k0;

    .line 11
    new-instance v2, Le/n/b/w;

    invoke-direct {v2, p0, v0}, Le/n/b/w;-><init>(Lcom/mopub/mobileads/InlineAdAdapter;Lcom/mopub/mobileads/BaseAd;)V

    .line 12
    iput-object v2, v1, Le/n/b/k0;->f:Le/n/b/k0$d;

    .line 13
    :cond_3
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 14
    iput-object p0, v0, Lcom/mopub/mobileads/BaseAd;->c:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    .line 15
    invoke-virtual {v0}, Lcom/mopub/mobileads/BaseAd;->d()V

    .line 16
    invoke-virtual {v0}, Lcom/mopub/mobileads/BaseAd;->b()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 17
    invoke-interface {p1, v0}, Lcom/mopub/mobileads/MoPubAd;->setAdContentView(Landroid/view/View;)V

    :cond_4
    return-void

    .line 18
    :cond_5
    :goto_1
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->SHOW_FAILED:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array v0, v3, [Ljava/lang/Object;

    sget-object v2, Lcom/mopub/mobileads/MoPubErrorCode;->INLINE_SHOW_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 19
    invoke-virtual {p0, v2}, Lcom/mopub/mobileads/AdAdapter;->onAdFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public onAdComplete(Lcom/mopub/common/MoPubReward;)V
    .locals 0

    return-void
.end method

.method public onAdDismissed()V
    .locals 0

    return-void
.end method
