.class public abstract Lcom/mopub/mobileads/AdAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;
.implements Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/AdAdapter$BaseAdNotFoundException;
    }
.end annotation


# instance fields
.field public final a:Landroid/os/Handler;

.field public final b:Ljava/lang/Runnable;

.field public c:Lcom/mopub/mobileads/BaseAd;

.field public d:Landroid/content/Context;

.field public e:Z

.field public f:Lcom/mopub/mobileads/AdData;

.field public g:Z

.field public h:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

.field public i:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/mobileads/AdData;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mopub/mobileads/AdAdapter;->g:Z

    .line 3
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 4
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 5
    invoke-static {p3}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 6
    iput-object p1, p0, Lcom/mopub/mobileads/AdAdapter;->d:Landroid/content/Context;

    .line 7
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/mopub/mobileads/AdAdapter;->a:Landroid/os/Handler;

    .line 8
    iput-object p3, p0, Lcom/mopub/mobileads/AdAdapter;->f:Lcom/mopub/mobileads/AdData;

    .line 9
    new-instance p1, Le/n/b/d;

    invoke-direct {p1, p0}, Le/n/b/d;-><init>(Lcom/mopub/mobileads/AdAdapter;)V

    iput-object p1, p0, Lcom/mopub/mobileads/AdAdapter;->b:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/AdAdapter;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mopub/mobileads/AdAdapter;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public abstract b()V
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/AdAdapter;->c:Lcom/mopub/mobileads/BaseAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mopub/mobileads/BaseAd;->getAdNetworkId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public d()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdAdapter;->b()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/mopub/mobileads/AdAdapter;->c:Lcom/mopub/mobileads/BaseAd;

    .line 3
    iput-object v0, p0, Lcom/mopub/mobileads/AdAdapter;->d:Landroid/content/Context;

    .line 4
    iput-object v0, p0, Lcom/mopub/mobileads/AdAdapter;->f:Lcom/mopub/mobileads/AdData;

    .line 5
    iput-object v0, p0, Lcom/mopub/mobileads/AdAdapter;->h:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    .line 6
    iput-object v0, p0, Lcom/mopub/mobileads/AdAdapter;->i:Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/mopub/mobileads/AdAdapter;->e:Z

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/mopub/mobileads/AdAdapter;->g:Z

    return-void
.end method

.method public abstract e(Lcom/mopub/mobileads/MoPubAd;)V
.end method

.method public getBaseAdClassName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/AdAdapter;->c:Lcom/mopub/mobileads/BaseAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public isReady()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdAdapter;->g:Z

    return v0
.end method

.method public final load(Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;)V
    .locals 5

    .line 1
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 2
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->LOAD_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 3
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdAdapter;->e:Z

    if-nez v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/mopub/mobileads/AdAdapter;->c:Lcom/mopub/mobileads/BaseAd;

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iput-object p1, p0, Lcom/mopub/mobileads/AdAdapter;->h:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    .line 6
    iget-object p1, p0, Lcom/mopub/mobileads/AdAdapter;->a:Landroid/os/Handler;

    iget-object v0, p0, Lcom/mopub/mobileads/AdAdapter;->b:Ljava/lang/Runnable;

    .line 7
    iget-object v2, p0, Lcom/mopub/mobileads/AdAdapter;->f:Lcom/mopub/mobileads/AdData;

    invoke-virtual {v2}, Lcom/mopub/mobileads/AdData;->getTimeoutDelayMillis()I

    move-result v2

    int-to-long v2, v2

    .line 8
    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 9
    :try_start_0
    iget-object p1, p0, Lcom/mopub/mobileads/AdAdapter;->c:Lcom/mopub/mobileads/BaseAd;

    iget-object v0, p0, Lcom/mopub/mobileads/AdAdapter;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/mopub/mobileads/AdAdapter;->f:Lcom/mopub/mobileads/AdData;

    .line 10
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 12
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 13
    invoke-static {v2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 14
    iput-object p0, p1, Lcom/mopub/mobileads/BaseAd;->b:Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;

    .line 15
    instance-of v3, v0, Landroid/app/Activity;

    if-eqz v3, :cond_1

    move-object v3, v0

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {p1, v3, v2}, Lcom/mopub/mobileads/BaseAd;->a(Landroid/app/Activity;Lcom/mopub/mobileads/AdData;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 16
    invoke-static {v3}, Lcom/mopub/common/MoPubLifecycleManager;->getInstance(Landroid/app/Activity;)Lcom/mopub/common/MoPubLifecycleManager;

    move-result-object v3

    .line 17
    invoke-virtual {p1}, Lcom/mopub/mobileads/BaseAd;->c()Lcom/mopub/common/LifecycleListener;

    move-result-object v4

    .line 18
    invoke-virtual {v3, v4}, Lcom/mopub/common/MoPubLifecycleManager;->addLifecycleListener(Lcom/mopub/common/LifecycleListener;)V

    .line 19
    :cond_1
    invoke-virtual {p1, v0, v2}, Lcom/mopub/mobileads/BaseAd;->load(Landroid/content/Context;Lcom/mopub/mobileads/AdData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 20
    :catch_0
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->LOAD_FAILED:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 21
    invoke-virtual {v2}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x1

    aput-object v2, v0, v1

    .line 22
    invoke-static {p1, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 23
    invoke-virtual {p0, v2}, Lcom/mopub/mobileads/AdAdapter;->onAdLoadFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onAdClicked()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdAdapter;->e:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/AdAdapter;->a:Landroid/os/Handler;

    new-instance v1, Le/n/b/h;

    invoke-direct {v1, p0}, Le/n/b/h;-><init>(Lcom/mopub/mobileads/AdAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAdCollapsed()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdAdapter;->e:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/AdAdapter;->a:Landroid/os/Handler;

    new-instance v1, Le/n/b/j;

    invoke-direct {v1, p0}, Le/n/b/j;-><init>(Lcom/mopub/mobileads/AdAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAdComplete(Lcom/mopub/common/MoPubReward;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdAdapter;->e:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/AdAdapter;->a:Landroid/os/Handler;

    new-instance v1, Le/n/b/b;

    invoke-direct {v1, p0, p1}, Le/n/b/b;-><init>(Lcom/mopub/mobileads/AdAdapter;Lcom/mopub/common/MoPubReward;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAdDismissed()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdAdapter;->e:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/AdAdapter;->a:Landroid/os/Handler;

    new-instance v1, Le/n/b/e;

    invoke-direct {v1, p0}, Le/n/b/e;-><init>(Lcom/mopub/mobileads/AdAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAdExpanded()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdAdapter;->e:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/AdAdapter;->a:Landroid/os/Handler;

    new-instance v1, Le/n/b/a;

    invoke-direct {v1, p0}, Le/n/b/a;-><init>(Lcom/mopub/mobileads/AdAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAdFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 2
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdAdapter;->e:Z

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdAdapter;->a()V

    .line 4
    iget-object v0, p0, Lcom/mopub/mobileads/AdAdapter;->a:Landroid/os/Handler;

    new-instance v1, Le/n/b/k;

    invoke-direct {v1, p0, p1}, Le/n/b/k;-><init>(Lcom/mopub/mobileads/AdAdapter;Lcom/mopub/mobileads/MoPubErrorCode;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAdImpression()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdAdapter;->e:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/AdAdapter;->a:Landroid/os/Handler;

    new-instance v1, Le/n/b/m;

    invoke-direct {v1, p0}, Le/n/b/m;-><init>(Lcom/mopub/mobileads/AdAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAdLoadFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 2
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdAdapter;->e:Z

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdAdapter;->a()V

    .line 4
    iget-object v0, p0, Lcom/mopub/mobileads/AdAdapter;->a:Landroid/os/Handler;

    new-instance v1, Le/n/b/l;

    invoke-direct {v1, p0, p1}, Le/n/b/l;-><init>(Lcom/mopub/mobileads/AdAdapter;Lcom/mopub/mobileads/MoPubErrorCode;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAdLoaded()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdAdapter;->e:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->LOAD_SUCCESS:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/mopub/mobileads/AdAdapter;->g:Z

    .line 4
    invoke-virtual {p0}, Lcom/mopub/mobileads/AdAdapter;->a()V

    .line 5
    iget-object v0, p0, Lcom/mopub/mobileads/AdAdapter;->a:Landroid/os/Handler;

    new-instance v1, Le/n/b/f;

    invoke-direct {v1, p0}, Le/n/b/f;-><init>(Lcom/mopub/mobileads/AdAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAdPauseAutoRefresh()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/AdAdapter;->a:Landroid/os/Handler;

    new-instance v1, Le/n/b/g;

    invoke-direct {v1, p0}, Le/n/b/g;-><init>(Lcom/mopub/mobileads/AdAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAdResumeAutoRefresh()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/AdAdapter;->a:Landroid/os/Handler;

    new-instance v1, Le/n/b/i;

    invoke-direct {v1, p0}, Le/n/b/i;-><init>(Lcom/mopub/mobileads/AdAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAdShown()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/mopub/mobileads/AdAdapter;->e:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/AdAdapter;->a:Landroid/os/Handler;

    new-instance v1, Le/n/b/c;

    invoke-direct {v1, p0}, Le/n/b/c;-><init>(Lcom/mopub/mobileads/AdAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
