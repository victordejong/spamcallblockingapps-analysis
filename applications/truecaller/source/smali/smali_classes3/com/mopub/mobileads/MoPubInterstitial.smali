.class public Lcom/mopub/mobileads/MoPubInterstitial;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/mobileads/MoPubAd;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;,
        Lcom/mopub/mobileads/MoPubInterstitial$a;
    }
.end annotation


# instance fields
.field public a:Lcom/mopub/mobileads/AdViewController;

.field public b:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;

.field public c:Landroid/app/Activity;

.field public volatile d:Lcom/mopub/mobileads/MoPubInterstitial$a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->c:Landroid/app/Activity;

    .line 3
    invoke-static {p1, p0}, Lcom/mopub/mobileads/factories/AdViewControllerFactory;->create(Landroid/content/Context;Lcom/mopub/mobileads/MoPubAd;)Lcom/mopub/mobileads/AdViewController;

    move-result-object p1

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p1, Lcom/mopub/mobileads/AdViewController;->q:Z

    .line 5
    invoke-virtual {p1, v0}, Lcom/mopub/mobileads/AdViewController;->h(Z)V

    .line 6
    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/MoPubInterstitial;->setAdViewController(Lcom/mopub/mobileads/AdViewController;)V

    .line 7
    invoke-virtual {p0, p2}, Lcom/mopub/mobileads/MoPubInterstitial;->setAdUnitId(Ljava/lang/String;)V

    .line 8
    sget-object p1, Lcom/mopub/mobileads/MoPubInterstitial$a;->IDLE:Lcom/mopub/mobileads/MoPubInterstitial$a;

    iput-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->d:Lcom/mopub/mobileads/MoPubInterstitial$a;

    .line 9
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/mopub/mobileads/MoPubInterstitial$a;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/mopub/mobileads/MoPubInterstitial;->b(Lcom/mopub/mobileads/MoPubInterstitial$a;Z)Z

    move-result p1

    return p1
.end method

.method public declared-synchronized b(Lcom/mopub/mobileads/MoPubInterstitial$a;Z)Z
    .locals 6
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->d:Lcom/mopub/mobileads/MoPubInterstitial$a;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x2

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_18

    if-eq v0, v4, :cond_10

    if-eq v0, v1, :cond_8

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_0

    .line 4
    monitor-exit p0

    return v5

    .line 5
    :cond_0
    :try_start_1
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array p2, v4, [Ljava/lang/Object;

    const-string v0, "MoPubInterstitial destroyed. Ignoring all requests."

    aput-object v0, p2, v5

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    monitor-exit p0

    return v5

    .line 7
    :cond_1
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_6

    if-eq p1, v4, :cond_4

    if-eq p1, v3, :cond_3

    if-eq p1, v2, :cond_2

    .line 8
    monitor-exit p0

    return v5

    .line 9
    :cond_2
    :try_start_3
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubInterstitial;->e()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 10
    monitor-exit p0

    return v4

    .line 11
    :cond_3
    :try_start_4
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array p2, v4, [Ljava/lang/Object;

    const-string v0, "Already showing an interstitial. Cannot show it again."

    aput-object v0, p2, v5

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 12
    monitor-exit p0

    return v5

    :cond_4
    if-nez p2, :cond_5

    .line 13
    :try_start_5
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array p2, v4, [Ljava/lang/Object;

    const-string v0, "Interstitial already showing. Not loading another."

    aput-object v0, p2, v5

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 14
    :cond_5
    monitor-exit p0

    return v5

    :cond_6
    if-eqz p2, :cond_7

    .line 15
    :try_start_6
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array p2, v4, [Ljava/lang/Object;

    const-string v0, "Cannot force refresh while showing an interstitial."

    aput-object v0, p2, v5

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 16
    monitor-exit p0

    return v5

    .line 17
    :cond_7
    :try_start_7
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubInterstitial;->c()V

    .line 18
    sget-object p1, Lcom/mopub/mobileads/MoPubInterstitial$a;->IDLE:Lcom/mopub/mobileads/MoPubInterstitial$a;

    iput-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->d:Lcom/mopub/mobileads/MoPubInterstitial$a;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 19
    monitor-exit p0

    return v4

    .line 20
    :cond_8
    :try_start_8
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz p1, :cond_e

    if-eq p1, v4, :cond_c

    if-eq p1, v3, :cond_a

    if-eq p1, v2, :cond_9

    .line 21
    monitor-exit p0

    return v5

    .line 22
    :cond_9
    :try_start_9
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubInterstitial;->e()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 23
    monitor-exit p0

    return v4

    .line 24
    :cond_a
    :try_start_a
    iget-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->a:Lcom/mopub/mobileads/AdViewController;

    if-eqz p1, :cond_b

    .line 25
    invoke-virtual {p1}, Lcom/mopub/mobileads/AdViewController;->j()V

    .line 26
    :cond_b
    sget-object p1, Lcom/mopub/mobileads/MoPubInterstitial$a;->SHOWING:Lcom/mopub/mobileads/MoPubInterstitial$a;

    iput-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->d:Lcom/mopub/mobileads/MoPubInterstitial$a;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 27
    monitor-exit p0

    return v4

    .line 28
    :cond_c
    :try_start_b
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array p2, v4, [Ljava/lang/Object;

    const-string v0, "Interstitial already loaded. Not loading another."

    aput-object v0, p2, v5

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 29
    iget-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->b:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;

    if-eqz p1, :cond_d

    .line 30
    invoke-interface {p1, p0}, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;->onInterstitialLoaded(Lcom/mopub/mobileads/MoPubInterstitial;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 31
    :cond_d
    monitor-exit p0

    return v5

    :cond_e
    if-eqz p2, :cond_f

    .line 32
    :try_start_c
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubInterstitial;->c()V

    .line 33
    sget-object p1, Lcom/mopub/mobileads/MoPubInterstitial$a;->IDLE:Lcom/mopub/mobileads/MoPubInterstitial$a;

    iput-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->d:Lcom/mopub/mobileads/MoPubInterstitial$a;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 34
    monitor-exit p0

    return v4

    .line 35
    :cond_f
    monitor-exit p0

    return v5

    .line 36
    :cond_10
    :try_start_d
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    if-eqz p1, :cond_17

    if-eq p1, v4, :cond_15

    if-eq p1, v1, :cond_13

    if-eq p1, v3, :cond_12

    if-eq p1, v2, :cond_11

    .line 37
    monitor-exit p0

    return v5

    .line 38
    :cond_11
    :try_start_e
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubInterstitial;->e()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 39
    monitor-exit p0

    return v4

    .line 40
    :cond_12
    :try_start_f
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array p2, v4, [Ljava/lang/Object;

    const-string v0, "Interstitial is not ready to be shown yet."

    aput-object v0, p2, v5

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 41
    monitor-exit p0

    return v5

    .line 42
    :cond_13
    :try_start_10
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->LOAD_SUCCESS:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array p2, v5, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 43
    sget-object p1, Lcom/mopub/mobileads/MoPubInterstitial$a;->READY:Lcom/mopub/mobileads/MoPubInterstitial$a;

    iput-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->d:Lcom/mopub/mobileads/MoPubInterstitial$a;

    .line 44
    iget-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->b:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;

    if-eqz p1, :cond_14

    .line 45
    invoke-interface {p1, p0}, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;->onInterstitialLoaded(Lcom/mopub/mobileads/MoPubInterstitial;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 46
    :cond_14
    monitor-exit p0

    return v4

    :cond_15
    if-nez p2, :cond_16

    .line 47
    :try_start_11
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array p2, v4, [Ljava/lang/Object;

    const-string v0, "Already loading an interstitial."

    aput-object v0, p2, v5

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 48
    :cond_16
    monitor-exit p0

    return v5

    .line 49
    :cond_17
    :try_start_12
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubInterstitial;->c()V

    .line 50
    sget-object p1, Lcom/mopub/mobileads/MoPubInterstitial$a;->IDLE:Lcom/mopub/mobileads/MoPubInterstitial$a;

    iput-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->d:Lcom/mopub/mobileads/MoPubInterstitial$a;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 51
    monitor-exit p0

    return v4

    .line 52
    :cond_18
    :try_start_13
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    if-eq p1, v4, :cond_1c

    if-eq p1, v1, :cond_1b

    if-eq p1, v3, :cond_1a

    if-eq p1, v2, :cond_19

    .line 53
    monitor-exit p0

    return v5

    .line 54
    :cond_19
    :try_start_14
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubInterstitial;->e()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 55
    monitor-exit p0

    return v4

    .line 56
    :cond_1a
    :try_start_15
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array p2, v4, [Ljava/lang/Object;

    const-string v0, "No interstitial loading or loaded."

    aput-object v0, p2, v5

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 57
    monitor-exit p0

    return v5

    .line 58
    :cond_1b
    :try_start_16
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    new-array p2, v4, [Ljava/lang/Object;

    const-string v0, "Attempted transition from IDLE to READY failed due to no known load call."

    aput-object v0, p2, v5

    invoke-static {p1, p2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 59
    monitor-exit p0

    return v5

    .line 60
    :cond_1c
    :try_start_17
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubInterstitial;->c()V

    .line 61
    sget-object p1, Lcom/mopub/mobileads/MoPubInterstitial$a;->LOADING:Lcom/mopub/mobileads/MoPubInterstitial$a;

    iput-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->d:Lcom/mopub/mobileads/MoPubInterstitial$a;

    .line 62
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-lt p1, v0, :cond_20

    .line 63
    iget-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->c:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-nez p1, :cond_1d

    goto :goto_0

    .line 64
    :cond_1d
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1e

    goto :goto_0

    .line 65
    :cond_1e
    invoke-virtual {p1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    if-nez p1, :cond_1f

    goto :goto_0

    .line 66
    :cond_1f
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->a:Lcom/mopub/mobileads/AdViewController;

    if-eqz v0, :cond_20

    .line 67
    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/AdViewController;->setWindowInsets(Landroid/view/WindowInsets;)V

    :cond_20
    :goto_0
    if-eqz p2, :cond_21

    .line 68
    iget-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->a:Lcom/mopub/mobileads/AdViewController;

    if-eqz p1, :cond_22

    .line 69
    invoke-virtual {p1}, Lcom/mopub/mobileads/AdViewController;->d()V

    .line 70
    invoke-virtual {p1}, Lcom/mopub/mobileads/AdViewController;->i()V

    .line 71
    invoke-virtual {p1}, Lcom/mopub/mobileads/AdViewController;->loadAd()V

    goto :goto_1

    .line 72
    :cond_21
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubInterstitial;->loadAd()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    .line 73
    :cond_22
    :goto_1
    monitor-exit p0

    return v4

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->a:Lcom/mopub/mobileads/AdViewController;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/mopub/mobileads/AdViewController;->d()V

    :cond_0
    return-void
.end method

.method public d()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->d:Lcom/mopub/mobileads/MoPubInterstitial$a;

    sget-object v1, Lcom/mopub/mobileads/MoPubInterstitial$a;->DESTROYED:Lcom/mopub/mobileads/MoPubInterstitial$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public destroy()V
    .locals 1

    .line 1
    sget-object v0, Lcom/mopub/mobileads/MoPubInterstitial$a;->DESTROYED:Lcom/mopub/mobileads/MoPubInterstitial$a;

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/MoPubInterstitial;->a(Lcom/mopub/mobileads/MoPubInterstitial$a;)Z

    return-void
.end method

.method public final e()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubInterstitial;->c()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->b:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;

    .line 3
    sget-object v0, Lcom/mopub/mobileads/MoPubInterstitial$a;->DESTROYED:Lcom/mopub/mobileads/MoPubInterstitial$a;

    iput-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->d:Lcom/mopub/mobileads/MoPubInterstitial$a;

    return-void
.end method

.method public forceRefresh()V
    .locals 2

    .line 1
    sget-object v0, Lcom/mopub/mobileads/MoPubInterstitial$a;->IDLE:Lcom/mopub/mobileads/MoPubInterstitial$a;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/mopub/mobileads/MoPubInterstitial;->b(Lcom/mopub/mobileads/MoPubInterstitial$a;Z)Z

    .line 2
    sget-object v0, Lcom/mopub/mobileads/MoPubInterstitial$a;->LOADING:Lcom/mopub/mobileads/MoPubInterstitial$a;

    invoke-virtual {p0, v0, v1}, Lcom/mopub/mobileads/MoPubInterstitial;->b(Lcom/mopub/mobileads/MoPubInterstitial$a;Z)Z

    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->c:Landroid/app/Activity;

    return-object v0
.end method

.method public getAdFormat()Lcom/mopub/common/AdFormat;
    .locals 1

    .line 1
    sget-object v0, Lcom/mopub/common/AdFormat;->INTERSTITIAL:Lcom/mopub/common/AdFormat;

    return-object v0
.end method

.method public bridge synthetic getAdHeight()I
    .locals 1

    invoke-static {p0}, Le/n/b/l0;->$default$getAdHeight(Lcom/mopub/mobileads/MoPubAd;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic getAdUnitId()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Le/n/b/l0;->$default$getAdUnitId(Lcom/mopub/mobileads/MoPubAd;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdViewController()Lcom/mopub/mobileads/AdViewController;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->a:Lcom/mopub/mobileads/AdViewController;

    return-object v0
.end method

.method public bridge synthetic getAdWidth()I
    .locals 1

    invoke-static {p0}, Le/n/b/l0;->$default$getAdWidth(Lcom/mopub/mobileads/MoPubAd;)I

    move-result v0

    return v0
.end method

.method public getInterstitialAdListener()Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->b:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;

    return-object v0
.end method

.method public bridge synthetic getKeywords()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Le/n/b/l0;->$default$getKeywords(Lcom/mopub/mobileads/MoPubAd;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLocalExtras()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Le/n/b/l0;->$default$getLocalExtras(Lcom/mopub/mobileads/MoPubAd;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLocation()Landroid/location/Location;
    .locals 1

    invoke-static {p0}, Le/n/b/l0;->$default$getLocation(Lcom/mopub/mobileads/MoPubAd;)Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public getTesting()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->a:Lcom/mopub/mobileads/AdViewController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mopub/mobileads/AdViewController;->getTesting()Z

    move-result v0

    return v0

    .line 2
    :cond_0
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Can\'t get testing status for destroyed AdViewController. Returning false."

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    return v3
.end method

.method public bridge synthetic getUserDataKeywords()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Le/n/b/l0;->$default$getUserDataKeywords(Lcom/mopub/mobileads/MoPubAd;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isReady()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->d:Lcom/mopub/mobileads/MoPubInterstitial$a;

    sget-object v1, Lcom/mopub/mobileads/MoPubInterstitial$a;->READY:Lcom/mopub/mobileads/MoPubInterstitial$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public load()V
    .locals 2

    .line 1
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->LOAD_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 2
    sget-object v0, Lcom/mopub/mobileads/MoPubInterstitial$a;->LOADING:Lcom/mopub/mobileads/MoPubInterstitial$a;

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/MoPubInterstitial;->a(Lcom/mopub/mobileads/MoPubInterstitial$a;)Z

    return-void
.end method

.method public bridge synthetic loadAd()V
    .locals 0

    invoke-static {p0}, Le/n/b/l0;->$default$loadAd(Lcom/mopub/mobileads/MoPubAd;)V

    return-void
.end method

.method public bridge synthetic loadFailUrl(Lcom/mopub/mobileads/MoPubErrorCode;)Z
    .locals 0

    invoke-static {p0, p1}, Le/n/b/l0;->$default$loadFailUrl(Lcom/mopub/mobileads/MoPubAd;Lcom/mopub/mobileads/MoPubErrorCode;)Z

    move-result p1

    return p1
.end method

.method public onAdClicked()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubInterstitial;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CLICKED:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->a:Lcom/mopub/mobileads/AdViewController;

    if-eqz v0, :cond_1

    .line 4
    iget-object v1, v0, Lcom/mopub/mobileads/AdViewController;->h:Lcom/mopub/network/AdResponse;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1}, Lcom/mopub/network/AdResponse;->getClickTrackingUrls()Ljava/util/List;

    move-result-object v1

    iget-object v0, v0, Lcom/mopub/mobileads/AdViewController;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/mopub/network/TrackingRequest;->makeTrackingHttpRequest(Ljava/lang/Iterable;Landroid/content/Context;)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->b:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;

    if-eqz v0, :cond_2

    .line 7
    invoke-interface {v0, p0}, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;->onInterstitialClicked(Lcom/mopub/mobileads/MoPubInterstitial;)V

    :cond_2
    return-void
.end method

.method public bridge synthetic onAdCollapsed()V
    .locals 0

    invoke-static {p0}, Le/n/b/d0;->$default$onAdCollapsed(Lcom/mopub/mobileads/AdLifecycleListener$InlineInteractionListener;)V

    return-void
.end method

.method public onAdComplete(Lcom/mopub/common/MoPubReward;)V
    .locals 3

    .line 1
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "Interstitial finished."

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->a:Lcom/mopub/mobileads/AdViewController;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Lcom/mopub/mobileads/AdViewController;->onAdComplete(Lcom/mopub/common/MoPubReward;)V

    :cond_0
    return-void
.end method

.method public onAdDismissed()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubInterstitial;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->DID_DISAPPEAR:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 3
    sget-object v0, Lcom/mopub/mobileads/MoPubInterstitial$a;->IDLE:Lcom/mopub/mobileads/MoPubInterstitial$a;

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/MoPubInterstitial;->a(Lcom/mopub/mobileads/MoPubInterstitial$a;)Z

    .line 4
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->b:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0, p0}, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;->onInterstitialDismissed(Lcom/mopub/mobileads/MoPubInterstitial;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onAdExpanded()V
    .locals 0

    invoke-static {p0}, Le/n/b/d0;->$default$onAdExpanded(Lcom/mopub/mobileads/AdLifecycleListener$InlineInteractionListener;)V

    return-void
.end method

.method public onAdFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubInterstitial;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->SHOW_FAILED:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->b:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0, p0, p1}, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubInterstitial;Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 5
    :cond_1
    sget-object p1, Lcom/mopub/mobileads/MoPubInterstitial$a;->IDLE:Lcom/mopub/mobileads/MoPubInterstitial$a;

    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/MoPubInterstitial;->a(Lcom/mopub/mobileads/MoPubInterstitial$a;)Z

    return-void
.end method

.method public onAdImpression()V
    .locals 0

    return-void
.end method

.method public onAdLoadFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubInterstitial;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->LOAD_FAILED:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->b:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0, p0, p1}, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubInterstitial;Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 5
    :cond_1
    sget-object p1, Lcom/mopub/mobileads/MoPubInterstitial$a;->IDLE:Lcom/mopub/mobileads/MoPubInterstitial$a;

    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/MoPubInterstitial;->a(Lcom/mopub/mobileads/MoPubInterstitial$a;)Z

    return-void
.end method

.method public onAdLoaded()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubInterstitial;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/mopub/mobileads/MoPubInterstitial$a;->READY:Lcom/mopub/mobileads/MoPubInterstitial$a;

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/MoPubInterstitial;->a(Lcom/mopub/mobileads/MoPubInterstitial$a;)Z

    return-void
.end method

.method public bridge synthetic onAdPauseAutoRefresh()V
    .locals 0

    invoke-static {p0}, Le/n/b/d0;->$default$onAdPauseAutoRefresh(Lcom/mopub/mobileads/AdLifecycleListener$InlineInteractionListener;)V

    return-void
.end method

.method public bridge synthetic onAdResumeAutoRefresh()V
    .locals 0

    invoke-static {p0}, Le/n/b/d0;->$default$onAdResumeAutoRefresh(Lcom/mopub/mobileads/AdLifecycleListener$InlineInteractionListener;)V

    return-void
.end method

.method public onAdShown()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/mopub/mobileads/MoPubInterstitial;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->SHOW_SUCCESS:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->b:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0, p0}, Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;->onInterstitialShown(Lcom/mopub/mobileads/MoPubInterstitial;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic pauseAutoRefresh()V
    .locals 0

    invoke-static {p0}, Le/n/b/l0;->$default$pauseAutoRefresh(Lcom/mopub/mobileads/MoPubAd;)V

    return-void
.end method

.method public resolveAdSize()Landroid/graphics/Point;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->c:Landroid/app/Activity;

    invoke-static {v0}, Lcom/mopub/common/util/DeviceUtils;->getDeviceDimensions(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic resumeAutoRefresh()V
    .locals 0

    invoke-static {p0}, Le/n/b/l0;->$default$resumeAutoRefresh(Lcom/mopub/mobileads/MoPubAd;)V

    return-void
.end method

.method public bridge synthetic setAdContentView(Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Le/n/b/l0;->$default$setAdContentView(Lcom/mopub/mobileads/MoPubAd;Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic setAdUnitId(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Le/n/b/l0;->$default$setAdUnitId(Lcom/mopub/mobileads/MoPubAd;Ljava/lang/String;)V

    return-void
.end method

.method public setAdViewController(Lcom/mopub/mobileads/AdViewController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->a:Lcom/mopub/mobileads/AdViewController;

    return-void
.end method

.method public setInterstitialAdListener(Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mopub/mobileads/MoPubInterstitial;->b:Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;

    return-void
.end method

.method public bridge synthetic setKeywords(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Le/n/b/l0;->$default$setKeywords(Lcom/mopub/mobileads/MoPubAd;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setLocalExtras(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0, p1}, Le/n/b/l0;->$default$setLocalExtras(Lcom/mopub/mobileads/MoPubAd;Ljava/util/Map;)V

    return-void
.end method

.method public setTesting(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/mobileads/MoPubInterstitial;->a:Lcom/mopub/mobileads/AdViewController;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/AdViewController;->setTesting(Z)V

    :cond_0
    return-void
.end method

.method public bridge synthetic setUserDataKeywords(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Le/n/b/l0;->$default$setUserDataKeywords(Lcom/mopub/mobileads/MoPubAd;Ljava/lang/String;)V

    return-void
.end method

.method public show()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$AdLogEvent;->SHOW_ATTEMPTED:Lcom/mopub/common/logging/MoPubLog$AdLogEvent;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 2
    sget-object v0, Lcom/mopub/mobileads/MoPubInterstitial$a;->SHOWING:Lcom/mopub/mobileads/MoPubInterstitial$a;

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/MoPubInterstitial;->a(Lcom/mopub/mobileads/MoPubInterstitial$a;)Z

    move-result v0

    return v0
.end method
