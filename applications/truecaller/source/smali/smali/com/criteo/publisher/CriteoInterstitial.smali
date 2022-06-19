.class public Lcom/criteo/publisher/CriteoInterstitial;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private final criteo:Lcom/criteo/publisher/Criteo;

.field private criteoInterstitialAdListener:Lcom/criteo/publisher/CriteoInterstitialAdListener;

.field private criteoInterstitialEventController:Le/i/b/t2;

.field public final interstitialAdUnit:Lcom/criteo/publisher/model/InterstitialAdUnit;

.field private final logger:Le/i/b/q2/h;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v0}, Lcom/criteo/publisher/CriteoInterstitial;-><init>(Lcom/criteo/publisher/model/InterstitialAdUnit;Lcom/criteo/publisher/Criteo;)V

    return-void
.end method

.method public constructor <init>(Lcom/criteo/publisher/model/InterstitialAdUnit;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/criteo/publisher/CriteoInterstitial;-><init>(Lcom/criteo/publisher/model/InterstitialAdUnit;Lcom/criteo/publisher/Criteo;)V

    return-void
.end method

.method public constructor <init>(Lcom/criteo/publisher/model/InterstitialAdUnit;Lcom/criteo/publisher/Criteo;)V
    .locals 7

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Le/i/b/q2/i;->a(Ljava/lang/Class;)Le/i/b/q2/h;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/CriteoInterstitial;->logger:Le/i/b/q2/h;

    .line 5
    iput-object p1, p0, Lcom/criteo/publisher/CriteoInterstitial;->interstitialAdUnit:Lcom/criteo/publisher/model/InterstitialAdUnit;

    .line 6
    iput-object p2, p0, Lcom/criteo/publisher/CriteoInterstitial;->criteo:Lcom/criteo/publisher/Criteo;

    .line 7
    new-instance p2, Le/i/b/q2/f;

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Interstitial initialized for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xd

    move-object v1, p2

    .line 9
    invoke-direct/range {v1 .. v6}, Le/i/b/q2/f;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;I)V

    .line 10
    invoke-virtual {v0, p2}, Le/i/b/q2/h;->a(Le/i/b/q2/f;)V

    return-void
.end method

.method private doLoadAd(Lcom/criteo/publisher/Bid;)V
    .locals 9

    .line 18
    iget-object v0, p0, Lcom/criteo/publisher/CriteoInterstitial;->logger:Le/i/b/q2/h;

    const-string v1, "interstitial"

    .line 19
    invoke-static {p0, v1}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    new-instance v1, Le/i/b/q2/f;

    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Interstitial("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "$this$adUnit"

    .line 22
    invoke-static {p0, v3}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iget-object v3, p0, Lcom/criteo/publisher/CriteoInterstitial;->interstitialAdUnit:Lcom/criteo/publisher/model/InterstitialAdUnit;

    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ") is loading with bid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x0

    if-eqz p1, :cond_0

    invoke-static {p1}, Ln3/g0/y;->f(Lcom/criteo/publisher/Bid;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v8

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xd

    const/4 v3, 0x0

    move-object v2, v1

    .line 25
    invoke-direct/range {v2 .. v7}, Le/i/b/q2/f;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;I)V

    .line 26
    invoke-virtual {v0, v1}, Le/i/b/q2/h;->a(Le/i/b/q2/f;)V

    .line 27
    invoke-direct {p0}, Lcom/criteo/publisher/CriteoInterstitial;->getIntegrationRegistry()Le/i/b/d2/c;

    move-result-object v0

    sget-object v1, Le/i/b/d2/a;->d:Le/i/b/d2/a;

    invoke-virtual {v0, v1}, Le/i/b/d2/c;->a(Le/i/b/d2/a;)V

    .line 28
    invoke-virtual {p0}, Lcom/criteo/publisher/CriteoInterstitial;->getOrCreateController()Le/i/b/t2;

    move-result-object v0

    .line 29
    iget-object v1, v0, Le/i/b/t2;->d:Le/i/b/g2/a;

    invoke-virtual {v1}, Le/i/b/g2/a;->b()Z

    move-result v1

    if-nez v1, :cond_1

    .line 30
    invoke-virtual {v0}, Le/i/b/t2;->b()V

    goto :goto_2

    :cond_1
    if-nez p1, :cond_2

    goto :goto_1

    .line 31
    :cond_2
    sget-object v1, Le/i/b/s2/a;->b:Le/i/b/s2/a;

    invoke-virtual {p1, v1}, Lcom/criteo/publisher/Bid;->b(Le/i/b/s2/a;)Ljava/lang/String;

    move-result-object v8

    :goto_1
    if-nez v8, :cond_3

    .line 32
    invoke-virtual {v0}, Le/i/b/t2;->b()V

    goto :goto_2

    .line 33
    :cond_3
    invoke-virtual {v0, v8}, Le/i/b/t2;->a(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private doLoadAd(Lcom/criteo/publisher/context/ContextData;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/criteo/publisher/CriteoInterstitial;->logger:Le/i/b/q2/h;

    const-string v1, "interstitial"

    .line 2
    invoke-static {p0, v1}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v1, Le/i/b/q2/f;

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Interstitial("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "$this$adUnit"

    .line 5
    invoke-static {p0, v3}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v3, p0, Lcom/criteo/publisher/CriteoInterstitial;->interstitialAdUnit:Lcom/criteo/publisher/model/InterstitialAdUnit;

    .line 7
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ") is loading"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xd

    move-object v2, v1

    .line 8
    invoke-direct/range {v2 .. v7}, Le/i/b/q2/f;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;I)V

    .line 9
    invoke-virtual {v0, v1}, Le/i/b/q2/h;->a(Le/i/b/q2/f;)V

    .line 10
    invoke-direct {p0}, Lcom/criteo/publisher/CriteoInterstitial;->getIntegrationRegistry()Le/i/b/d2/c;

    move-result-object v0

    sget-object v1, Le/i/b/d2/a;->c:Le/i/b/d2/a;

    invoke-virtual {v0, v1}, Le/i/b/d2/c;->a(Le/i/b/d2/a;)V

    .line 11
    invoke-virtual {p0}, Lcom/criteo/publisher/CriteoInterstitial;->getOrCreateController()Le/i/b/t2;

    move-result-object v0

    iget-object v1, p0, Lcom/criteo/publisher/CriteoInterstitial;->interstitialAdUnit:Lcom/criteo/publisher/model/InterstitialAdUnit;

    .line 12
    iget-object v2, v0, Le/i/b/t2;->d:Le/i/b/g2/a;

    invoke-virtual {v2}, Le/i/b/g2/a;->b()Z

    move-result v2

    if-nez v2, :cond_0

    .line 13
    invoke-virtual {v0}, Le/i/b/t2;->b()V

    goto :goto_1

    .line 14
    :cond_0
    iget-object v2, v0, Le/i/b/t2;->a:Le/i/b/u2/a;

    .line 15
    iget-object v3, v2, Le/i/b/u2/a;->b:Le/i/b/s2/o;

    sget-object v4, Le/i/b/s2/o;->d:Le/i/b/s2/o;

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_2

    goto :goto_1

    .line 16
    :cond_2
    iput-object v4, v2, Le/i/b/u2/a;->b:Le/i/b/s2/o;

    .line 17
    iget-object v2, v0, Le/i/b/t2;->c:Lcom/criteo/publisher/Criteo;

    new-instance v3, Le/i/b/r2;

    invoke-direct {v3, v0}, Le/i/b/r2;-><init>(Le/i/b/t2;)V

    invoke-virtual {v2, v1, p1, v3}, Lcom/criteo/publisher/Criteo;->getBidForAdUnit(Lcom/criteo/publisher/model/AdUnit;Lcom/criteo/publisher/context/ContextData;Le/i/b/x1;)V

    :goto_1
    return-void
.end method

.method private doShow()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/criteo/publisher/CriteoInterstitial;->logger:Le/i/b/q2/h;

    const-string v1, "interstitial"

    .line 2
    invoke-static {p0, v1}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v1, Le/i/b/q2/f;

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Interstitial("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "$this$adUnit"

    .line 5
    invoke-static {p0, v3}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v3, p0, Lcom/criteo/publisher/CriteoInterstitial;->interstitialAdUnit:Lcom/criteo/publisher/model/InterstitialAdUnit;

    .line 7
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ") is showing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xd

    move-object v2, v1

    .line 8
    invoke-direct/range {v2 .. v7}, Le/i/b/q2/f;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;I)V

    .line 9
    invoke-virtual {v0, v1}, Le/i/b/q2/h;->a(Le/i/b/q2/f;)V

    .line 10
    invoke-virtual {p0}, Lcom/criteo/publisher/CriteoInterstitial;->getOrCreateController()Le/i/b/t2;

    move-result-object v0

    .line 11
    iget-object v1, v0, Le/i/b/t2;->a:Le/i/b/u2/a;

    .line 12
    iget-object v2, v1, Le/i/b/u2/a;->b:Le/i/b/s2/o;

    sget-object v3, Le/i/b/s2/o;->b:Le/i/b/s2/o;

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_1

    goto :goto_1

    .line 13
    :cond_1
    iget-object v1, v1, Le/i/b/u2/a;->a:Ljava/lang/String;

    .line 14
    iget-object v2, v0, Le/i/b/t2;->d:Le/i/b/g2/a;

    iget-object v3, v0, Le/i/b/t2;->e:Le/i/b/o2/d;

    invoke-virtual {v2, v1, v3}, Le/i/b/g2/a;->a(Ljava/lang/String;Le/i/b/o2/d;)V

    .line 15
    iget-object v1, v0, Le/i/b/t2;->e:Le/i/b/o2/d;

    sget-object v2, Le/i/b/v2;->f:Le/i/b/v2;

    invoke-virtual {v1, v2}, Le/i/b/o2/d;->a(Le/i/b/v2;)V

    .line 16
    iget-object v0, v0, Le/i/b/t2;->a:Le/i/b/u2/a;

    .line 17
    sget-object v1, Le/i/b/s2/o;->a:Le/i/b/s2/o;

    iput-object v1, v0, Le/i/b/u2/a;->b:Le/i/b/s2/o;

    const-string v1, ""

    .line 18
    iput-object v1, v0, Le/i/b/u2/a;->a:Ljava/lang/String;

    :goto_1
    return-void
.end method

.method private getCriteo()Lcom/criteo/publisher/Criteo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/criteo/publisher/CriteoInterstitial;->criteo:Lcom/criteo/publisher/Criteo;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/criteo/publisher/Criteo;->getInstance()Lcom/criteo/publisher/Criteo;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private getIntegrationRegistry()Le/i/b/d2/c;
    .locals 1

    .line 1
    invoke-static {}, Le/i/b/x2;->h()Le/i/b/x2;

    move-result-object v0

    invoke-virtual {v0}, Le/i/b/x2;->b()Le/i/b/d2/c;

    move-result-object v0

    return-object v0
.end method

.method private getPubSdkApi()Le/i/b/i2/g;
    .locals 1

    .line 1
    invoke-static {}, Le/i/b/x2;->h()Le/i/b/x2;

    move-result-object v0

    invoke-virtual {v0}, Le/i/b/x2;->d()Le/i/b/i2/g;

    move-result-object v0

    return-object v0
.end method

.method private getRunOnUiThreadExecutor()Le/i/b/w1/c;
    .locals 1

    .line 1
    invoke-static {}, Le/i/b/x2;->h()Le/i/b/x2;

    move-result-object v0

    invoke-virtual {v0}, Le/i/b/x2;->i()Le/i/b/w1/c;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getOrCreateController()Le/i/b/t2;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/criteo/publisher/CriteoInterstitial;->criteoInterstitialEventController:Le/i/b/t2;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/criteo/publisher/CriteoInterstitial;->getCriteo()Lcom/criteo/publisher/Criteo;

    move-result-object v0

    .line 3
    new-instance v1, Le/i/b/o2/d;

    iget-object v2, p0, Lcom/criteo/publisher/CriteoInterstitial;->criteoInterstitialAdListener:Lcom/criteo/publisher/CriteoInterstitialAdListener;

    .line 4
    invoke-direct {p0}, Lcom/criteo/publisher/CriteoInterstitial;->getRunOnUiThreadExecutor()Le/i/b/w1/c;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Le/i/b/o2/d;-><init>(Lcom/criteo/publisher/CriteoInterstitial;Lcom/criteo/publisher/CriteoInterstitialAdListener;Le/i/b/w1/c;)V

    .line 5
    new-instance v2, Le/i/b/t2;

    new-instance v3, Le/i/b/u2/a;

    .line 6
    invoke-virtual {v0}, Lcom/criteo/publisher/Criteo;->getConfig()Le/i/b/u2/x;

    move-result-object v4

    invoke-direct {p0}, Lcom/criteo/publisher/CriteoInterstitial;->getPubSdkApi()Le/i/b/i2/g;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Le/i/b/u2/a;-><init>(Le/i/b/u2/x;Le/i/b/i2/g;)V

    .line 7
    invoke-virtual {v0}, Lcom/criteo/publisher/Criteo;->getInterstitialActivityHelper()Le/i/b/g2/a;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0, v1}, Le/i/b/t2;-><init>(Le/i/b/u2/a;Le/i/b/g2/a;Lcom/criteo/publisher/Criteo;Le/i/b/o2/d;)V

    iput-object v2, p0, Lcom/criteo/publisher/CriteoInterstitial;->criteoInterstitialEventController:Le/i/b/t2;

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/criteo/publisher/CriteoInterstitial;->criteoInterstitialEventController:Le/i/b/t2;

    return-object v0
.end method

.method public isAdLoaded()Z
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/criteo/publisher/CriteoInterstitial;->getOrCreateController()Le/i/b/t2;

    move-result-object v1

    .line 2
    iget-object v1, v1, Le/i/b/t2;->a:Le/i/b/u2/a;

    .line 3
    iget-object v1, v1, Le/i/b/u2/a;->b:Le/i/b/s2/o;

    sget-object v2, Le/i/b/s2/o;->b:Le/i/b/s2/o;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 4
    :goto_0
    iget-object v2, p0, Lcom/criteo/publisher/CriteoInterstitial;->logger:Le/i/b/q2/h;

    invoke-static {p0, v1}, Le/i/b/g2/b;->b(Lcom/criteo/publisher/CriteoInterstitial;Z)Le/i/b/q2/f;

    move-result-object v3

    invoke-virtual {v2, v3}, Le/i/b/q2/h;->a(Le/i/b/q2/f;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :catchall_0
    move-exception v1

    .line 5
    iget-object v2, p0, Lcom/criteo/publisher/CriteoInterstitial;->logger:Le/i/b/q2/h;

    invoke-static {v1}, Le/i/b/a3;->a(Ljava/lang/Throwable;)Le/i/b/q2/f;

    move-result-object v1

    invoke-virtual {v2, v1}, Le/i/b/q2/h;->a(Le/i/b/q2/f;)V

    return v0
.end method

.method public loadAd()V
    .locals 1

    .line 1
    new-instance v0, Lcom/criteo/publisher/context/ContextData;

    invoke-direct {v0}, Lcom/criteo/publisher/context/ContextData;-><init>()V

    invoke-virtual {p0, v0}, Lcom/criteo/publisher/CriteoInterstitial;->loadAd(Lcom/criteo/publisher/context/ContextData;)V

    return-void
.end method

.method public loadAd(Lcom/criteo/publisher/Bid;)V
    .locals 1

    .line 6
    invoke-static {}, Le/i/b/x2;->h()Le/i/b/x2;

    move-result-object v0

    invoke-virtual {v0}, Le/i/b/x2;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    iget-object p1, p0, Lcom/criteo/publisher/CriteoInterstitial;->logger:Le/i/b/q2/h;

    invoke-static {}, Le/i/b/g2/b;->a()Le/i/b/q2/f;

    move-result-object v0

    invoke-virtual {p1, v0}, Le/i/b/q2/h;->a(Le/i/b/q2/f;)V

    return-void

    .line 8
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/criteo/publisher/CriteoInterstitial;->doLoadAd(Lcom/criteo/publisher/Bid;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 9
    iget-object v0, p0, Lcom/criteo/publisher/CriteoInterstitial;->logger:Le/i/b/q2/h;

    invoke-static {p1}, Le/i/b/a3;->a(Ljava/lang/Throwable;)Le/i/b/q2/f;

    move-result-object p1

    invoke-virtual {v0, p1}, Le/i/b/q2/h;->a(Le/i/b/q2/f;)V

    :goto_0
    return-void
.end method

.method public loadAd(Lcom/criteo/publisher/context/ContextData;)V
    .locals 1

    .line 2
    invoke-static {}, Le/i/b/x2;->h()Le/i/b/x2;

    move-result-object v0

    invoke-virtual {v0}, Le/i/b/x2;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/criteo/publisher/CriteoInterstitial;->logger:Le/i/b/q2/h;

    invoke-static {}, Le/i/b/g2/b;->a()Le/i/b/q2/f;

    move-result-object v0

    invoke-virtual {p1, v0}, Le/i/b/q2/h;->a(Le/i/b/q2/f;)V

    return-void

    .line 4
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/criteo/publisher/CriteoInterstitial;->doLoadAd(Lcom/criteo/publisher/context/ContextData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 5
    iget-object v0, p0, Lcom/criteo/publisher/CriteoInterstitial;->logger:Le/i/b/q2/h;

    invoke-static {p1}, Le/i/b/a3;->a(Ljava/lang/Throwable;)Le/i/b/q2/f;

    move-result-object p1

    invoke-virtual {v0, p1}, Le/i/b/q2/h;->a(Le/i/b/q2/f;)V

    :goto_0
    return-void
.end method

.method public loadAdWithDisplayData(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Le/i/b/x2;->h()Le/i/b/x2;

    move-result-object v0

    invoke-virtual {v0}, Le/i/b/x2;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/criteo/publisher/CriteoInterstitial;->logger:Le/i/b/q2/h;

    invoke-static {}, Le/i/b/g2/b;->a()Le/i/b/q2/f;

    move-result-object v0

    invoke-virtual {p1, v0}, Le/i/b/q2/h;->a(Le/i/b/q2/f;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/criteo/publisher/CriteoInterstitial;->getOrCreateController()Le/i/b/t2;

    move-result-object v0

    invoke-virtual {v0, p1}, Le/i/b/t2;->a(Ljava/lang/String;)V

    return-void
.end method

.method public setCriteoInterstitialAdListener(Lcom/criteo/publisher/CriteoInterstitialAdListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/criteo/publisher/CriteoInterstitial;->criteoInterstitialAdListener:Lcom/criteo/publisher/CriteoInterstitialAdListener;

    return-void
.end method

.method public show()V
    .locals 2

    .line 1
    invoke-static {}, Le/i/b/x2;->h()Le/i/b/x2;

    move-result-object v0

    invoke-virtual {v0}, Le/i/b/x2;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/criteo/publisher/CriteoInterstitial;->logger:Le/i/b/q2/h;

    invoke-static {}, Le/i/b/g2/b;->a()Le/i/b/q2/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/i/b/q2/h;->a(Le/i/b/q2/f;)V

    return-void

    .line 3
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/criteo/publisher/CriteoInterstitial;->doShow()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 4
    iget-object v1, p0, Lcom/criteo/publisher/CriteoInterstitial;->logger:Le/i/b/q2/h;

    invoke-static {v0}, Le/i/b/a3;->a(Ljava/lang/Throwable;)Le/i/b/q2/f;

    move-result-object v0

    invoke-virtual {v1, v0}, Le/i/b/q2/h;->a(Le/i/b/q2/f;)V

    :goto_0
    return-void
.end method
