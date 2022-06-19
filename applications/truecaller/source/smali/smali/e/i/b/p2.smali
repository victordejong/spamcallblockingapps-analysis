.class public Le/i/b/p2;
.super Lcom/criteo/publisher/Criteo;
.source "SourceFile"


# instance fields
.field public final a:Le/i/b/q2/h;

.field public final b:Le/i/b/x2;

.field public final c:Le/i/b/y1;

.field public final d:Le/i/b/u2/y;

.field public final e:Le/i/b/u2/x;

.field public final f:Le/i/b/l2/b;

.field public final g:Le/i/b/h2;

.field public final h:Le/i/b/b2/c;

.field public final i:Le/i/b/g2/a;


# direct methods
.method public constructor <init>(Landroid/app/Application;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/String;Le/i/b/x2;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "Ljava/util/List<",
            "Lcom/criteo/publisher/model/AdUnit;",
            ">;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Le/i/b/x2;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/criteo/publisher/Criteo;-><init>()V

    .line 2
    const-class v0, Le/i/b/p2;

    invoke-static {v0}, Le/i/b/q2/i;->a(Ljava/lang/Class;)Le/i/b/q2/h;

    move-result-object v0

    iput-object v0, p0, Le/i/b/p2;->a:Le/i/b/q2/h;

    .line 3
    iput-object p5, p0, Le/i/b/p2;->b:Le/i/b/x2;

    .line 4
    invoke-virtual {p5}, Le/i/b/x2;->m()Le/i/b/e3;

    .line 5
    invoke-virtual {p5}, Le/i/b/x2;->x()Le/i/b/u2/y;

    move-result-object v0

    iput-object v0, p0, Le/i/b/p2;->d:Le/i/b/u2/y;

    .line 6
    invoke-virtual {v0}, Le/i/b/u2/y;->b()V

    .line 7
    invoke-virtual {p5}, Le/i/b/x2;->k()Le/i/b/s2/b;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Le/i/b/s2/b;->c()Le/i/b/s2/b$b;

    .line 9
    invoke-virtual {p5}, Le/i/b/x2;->u()Le/i/b/u2/x;

    move-result-object v0

    iput-object v0, p0, Le/i/b/p2;->e:Le/i/b/u2/x;

    .line 10
    invoke-virtual {p5}, Le/i/b/x2;->q()Le/i/b/y1;

    move-result-object v0

    iput-object v0, p0, Le/i/b/p2;->c:Le/i/b/y1;

    .line 11
    new-instance v0, Le/i/b/z0;

    invoke-direct {v0, p5}, Le/i/b/z0;-><init>(Le/i/b/x2;)V

    const-class v1, Le/i/b/h2;

    .line 12
    iget-object v2, p5, Le/i/b/x2;->a:Ljava/util/concurrent/ConcurrentMap;

    new-instance v3, Le/i/b/k1;

    invoke-direct {v3, v0}, Le/i/b/k1;-><init>(Le/i/b/x2$a;)V

    invoke-static {v2, v1, v3}, Ln3/g0/y;->e(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ls1/z/b/a;)Ljava/lang/Object;

    move-result-object v0

    .line 13
    check-cast v0, Le/i/b/h2;

    .line 14
    iput-object v0, p0, Le/i/b/p2;->g:Le/i/b/h2;

    .line 15
    new-instance v0, Le/i/b/b1;

    invoke-direct {v0, p5}, Le/i/b/b1;-><init>(Le/i/b/x2;)V

    const-class v1, Le/i/b/b2/c;

    .line 16
    iget-object v2, p5, Le/i/b/x2;->a:Ljava/util/concurrent/ConcurrentMap;

    new-instance v3, Le/i/b/k1;

    invoke-direct {v3, v0}, Le/i/b/k1;-><init>(Le/i/b/x2$a;)V

    invoke-static {v2, v1, v3}, Ln3/g0/y;->e(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ls1/z/b/a;)Ljava/lang/Object;

    move-result-object v0

    .line 17
    check-cast v0, Le/i/b/b2/c;

    .line 18
    iput-object v0, p0, Le/i/b/p2;->h:Le/i/b/b2/c;

    .line 19
    new-instance v0, Le/i/b/m0;

    invoke-direct {v0, p5}, Le/i/b/m0;-><init>(Le/i/b/x2;)V

    const-class v1, Le/i/b/g2/a;

    .line 20
    iget-object v2, p5, Le/i/b/x2;->a:Ljava/util/concurrent/ConcurrentMap;

    new-instance v3, Le/i/b/k1;

    invoke-direct {v3, v0}, Le/i/b/k1;-><init>(Le/i/b/x2$a;)V

    invoke-static {v2, v1, v3}, Ln3/g0/y;->e(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ls1/z/b/a;)Ljava/lang/Object;

    move-result-object v0

    .line 21
    check-cast v0, Le/i/b/g2/a;

    .line 22
    iput-object v0, p0, Le/i/b/p2;->i:Le/i/b/g2/a;

    .line 23
    invoke-virtual {p5}, Le/i/b/x2;->r()Le/i/b/l2/b;

    move-result-object v0

    iput-object v0, p0, Le/i/b/p2;->f:Le/i/b/l2/b;

    if-eqz p3, :cond_0

    .line 24
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-virtual {v0, p3}, Le/i/b/l2/b;->b(Z)V

    :cond_0
    if-eqz p4, :cond_1

    .line 25
    invoke-virtual {v0, p4}, Le/i/b/l2/b;->a(Ljava/lang/String;)V

    .line 26
    :cond_1
    new-instance p3, Le/i/b/o;

    invoke-direct {p3, p5}, Le/i/b/o;-><init>(Le/i/b/x2;)V

    const-class p4, Le/i/b/s2/d;

    .line 27
    iget-object v0, p5, Le/i/b/x2;->a:Ljava/util/concurrent/ConcurrentMap;

    new-instance v1, Le/i/b/k1;

    invoke-direct {v1, p3}, Le/i/b/k1;-><init>(Le/i/b/x2$a;)V

    invoke-static {v0, p4, v1}, Ln3/g0/y;->e(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ls1/z/b/a;)Ljava/lang/Object;

    move-result-object p3

    .line 28
    check-cast p3, Le/i/b/s2/d;

    .line 29
    invoke-virtual {p1, p3}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 30
    invoke-virtual {p5}, Le/i/b/x2;->p()Le/i/b/f3/c;

    move-result-object p3

    .line 31
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    new-instance p4, Le/i/b/f3/b;

    invoke-direct {p4, p3}, Le/i/b/f3/b;-><init>(Le/i/b/f3/c;)V

    invoke-virtual {p1, p4}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 33
    new-instance p1, Le/i/b/a0;

    invoke-direct {p1, p5}, Le/i/b/a0;-><init>(Le/i/b/x2;)V

    const-class p3, Le/i/b/s1/a;

    .line 34
    iget-object p4, p5, Le/i/b/x2;->a:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Le/i/b/k1;

    invoke-direct {v0, p1}, Le/i/b/k1;-><init>(Le/i/b/x2$a;)V

    invoke-static {p4, p3, v0}, Ln3/g0/y;->e(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ls1/z/b/a;)Ljava/lang/Object;

    move-result-object p1

    .line 35
    check-cast p1, Le/i/b/s1/a;

    .line 36
    invoke-interface {p1}, Le/i/b/s1/a;->a()V

    .line 37
    invoke-virtual {p5}, Le/i/b/x2;->i()Le/i/b/w1/c;

    move-result-object p1

    .line 38
    new-instance p3, Le/i/b/n2;

    invoke-direct {p3, p0, p2}, Le/i/b/n2;-><init>(Le/i/b/p2;Ljava/util/List;)V

    invoke-virtual {p1, p3}, Le/i/b/w1/c;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lcom/criteo/publisher/Bid;)V
    .locals 10

    .line 1
    iget-object v0, p0, Le/i/b/p2;->h:Le/i/b/b2/c;

    .line 2
    iget-object v1, v0, Le/i/b/b2/c;->a:Le/i/b/q2/h;

    .line 3
    new-instance v8, Le/i/b/q2/f;

    const-string v2, "Attempting to set bids as AppBidding from bid "

    .line 4
    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v9, 0x0

    if-eqz p2, :cond_0

    invoke-static {p2}, Ln3/g0/y;->f(Lcom/criteo/publisher/Bid;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v9

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xd

    const/4 v3, 0x0

    move-object v2, v8

    .line 5
    invoke-direct/range {v2 .. v7}, Le/i/b/q2/f;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;I)V

    .line 6
    invoke-virtual {v1, v8}, Le/i/b/q2/h;->a(Le/i/b/q2/f;)V

    if-eqz p1, :cond_4

    .line 7
    iget-object v1, v0, Le/i/b/b2/c;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/i/b/b2/d;

    .line 8
    invoke-interface {v2, p1}, Le/i/b/b2/d;->b(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 9
    iget-object v1, v0, Le/i/b/b2/c;->c:Le/i/b/d2/c;

    invoke-interface {v2}, Le/i/b/b2/d;->a()Le/i/b/d2/a;

    move-result-object v3

    invoke-virtual {v1, v3}, Le/i/b/d2/c;->a(Le/i/b/d2/a;)V

    if-nez p2, :cond_2

    goto :goto_1

    .line 10
    :cond_2
    sget-object v1, Le/i/b/c;->a:Le/i/b/c;

    invoke-virtual {p2, v1}, Lcom/criteo/publisher/Bid;->a(Ls1/z/b/l;)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Le/i/b/u2/w;

    .line 11
    :goto_1
    invoke-interface {v2, p1}, Le/i/b/b2/d;->a(Ljava/lang/Object;)V

    if-nez v9, :cond_3

    .line 12
    iget-object p1, v0, Le/i/b/b2/c;->a:Le/i/b/q2/h;

    invoke-interface {v2}, Le/i/b/b2/d;->a()Le/i/b/d2/a;

    move-result-object p2

    const-string v0, "integration"

    .line 13
    invoke-static {p2, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    new-instance v0, Le/i/b/q2/f;

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to set bids as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ": No bid found"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xd

    move-object v1, v0

    .line 16
    invoke-direct/range {v1 .. v6}, Le/i/b/q2/f;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;I)V

    .line 17
    invoke-virtual {p1, v0}, Le/i/b/q2/h;->a(Le/i/b/q2/f;)V

    goto :goto_2

    .line 18
    :cond_3
    iget-object p2, p2, Lcom/criteo/publisher/Bid;->b:Le/i/b/s2/a;

    .line 19
    invoke-interface {v2, p1, p2, v9}, Le/i/b/b2/d;->c(Ljava/lang/Object;Le/i/b/s2/a;Le/i/b/u2/w;)V

    goto :goto_2

    .line 20
    :cond_4
    iget-object p2, v0, Le/i/b/b2/c;->a:Le/i/b/q2/h;

    .line 21
    new-instance v6, Le/i/b/q2/f;

    const-string v0, "Failed to set bids: unknown \'"

    .line 22
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    :cond_5
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\' object given"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x4

    const/4 v1, 0x6

    const-string v4, "onUnknownAdObjectEnriched"

    move-object v0, v6

    .line 23
    invoke-direct/range {v0 .. v5}, Le/i/b/q2/f;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;I)V

    .line 24
    invoke-virtual {p2, v6}, Le/i/b/q2/h;->a(Le/i/b/q2/f;)V

    :goto_2
    return-void
.end method

.method public createBannerController(Lcom/criteo/publisher/CriteoBannerView;)Le/i/b/m2;
    .locals 3

    .line 1
    new-instance v0, Le/i/b/m2;

    iget-object v1, p0, Le/i/b/p2;->b:Le/i/b/x2;

    .line 2
    invoke-virtual {v1}, Le/i/b/x2;->p()Le/i/b/f3/c;

    move-result-object v1

    iget-object v2, p0, Le/i/b/p2;->b:Le/i/b/x2;

    .line 3
    invoke-virtual {v2}, Le/i/b/x2;->i()Le/i/b/w1/c;

    move-result-object v2

    invoke-direct {v0, p1, p0, v1, v2}, Le/i/b/m2;-><init>(Lcom/criteo/publisher/CriteoBannerView;Lcom/criteo/publisher/Criteo;Le/i/b/f3/c;Le/i/b/w1/c;)V

    return-object v0
.end method

.method public enrichAdObjectWithBid(Ljava/lang/Object;Lcom/criteo/publisher/Bid;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Le/i/b/p2;->a(Ljava/lang/Object;Lcom/criteo/publisher/Bid;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2
    iget-object p2, p0, Le/i/b/p2;->a:Le/i/b/q2/h;

    invoke-static {p1}, Le/i/b/a3;->a(Ljava/lang/Throwable;)Le/i/b/q2/f;

    move-result-object p1

    invoke-virtual {p2, p1}, Le/i/b/q2/h;->a(Le/i/b/q2/f;)V

    :goto_0
    return-void
.end method

.method public getBidForAdUnit(Lcom/criteo/publisher/model/AdUnit;Lcom/criteo/publisher/context/ContextData;Le/i/b/x1;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/i/b/p2;->c:Le/i/b/y1;

    invoke-virtual {v0, p1, p2, p3}, Le/i/b/y1;->c(Lcom/criteo/publisher/model/AdUnit;Lcom/criteo/publisher/context/ContextData;Le/i/b/x1;)V

    return-void
.end method

.method public getConfig()Le/i/b/u2/x;
    .locals 1

    .line 1
    iget-object v0, p0, Le/i/b/p2;->e:Le/i/b/u2/x;

    return-object v0
.end method

.method public getDeviceInfo()Le/i/b/u2/y;
    .locals 1

    .line 1
    iget-object v0, p0, Le/i/b/p2;->d:Le/i/b/u2/y;

    return-object v0
.end method

.method public getInterstitialActivityHelper()Le/i/b/g2/a;
    .locals 1

    .line 1
    iget-object v0, p0, Le/i/b/p2;->i:Le/i/b/g2/a;

    return-object v0
.end method

.method public loadBid(Lcom/criteo/publisher/model/AdUnit;Lcom/criteo/publisher/context/ContextData;Lcom/criteo/publisher/BidResponseListener;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Le/i/b/p2;->g:Le/i/b/h2;

    .line 2
    iget-object v1, v0, Le/i/b/h2;->b:Le/i/b/y1;

    new-instance v2, Le/i/b/f2;

    invoke-direct {v2, v0, p1, p3}, Le/i/b/f2;-><init>(Le/i/b/h2;Lcom/criteo/publisher/model/AdUnit;Lcom/criteo/publisher/BidResponseListener;)V

    invoke-virtual {v1, p1, p2, v2}, Le/i/b/y1;->c(Lcom/criteo/publisher/model/AdUnit;Lcom/criteo/publisher/context/ContextData;Le/i/b/x1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3
    iget-object p2, p0, Le/i/b/p2;->a:Le/i/b/q2/h;

    invoke-static {p1}, Le/i/b/a3;->a(Ljava/lang/Throwable;)Le/i/b/q2/f;

    move-result-object p1

    invoke-virtual {p2, p1}, Le/i/b/q2/h;->a(Le/i/b/q2/f;)V

    const/4 p1, 0x0

    .line 4
    invoke-interface {p3, p1}, Lcom/criteo/publisher/BidResponseListener;->onResponse(Lcom/criteo/publisher/Bid;)V

    :goto_0
    return-void
.end method

.method public setMopubConsent(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/i/b/p2;->f:Le/i/b/l2/b;

    invoke-virtual {v0, p1}, Le/i/b/l2/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method public setUsPrivacyOptOut(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/i/b/p2;->f:Le/i/b/l2/b;

    invoke-virtual {v0, p1}, Le/i/b/l2/b;->b(Z)V

    return-void
.end method

.method public setUserData(Lcom/criteo/publisher/context/UserData;)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/i/b/p2;->b:Le/i/b/x2;

    .line 2
    sget-object v1, Le/i/b/j1;->a:Le/i/b/j1;

    const-class v2, Le/i/b/v1/c;

    .line 3
    iget-object v0, v0, Le/i/b/x2;->a:Ljava/util/concurrent/ConcurrentMap;

    new-instance v3, Le/i/b/k1;

    invoke-direct {v3, v1}, Le/i/b/k1;-><init>(Le/i/b/x2$a;)V

    invoke-static {v0, v2, v3}, Ln3/g0/y;->e(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ls1/z/b/a;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Le/i/b/v1/c;

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "userData"

    invoke-static {p1, v1}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v0, v0, Le/i/b/v1/c;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method
