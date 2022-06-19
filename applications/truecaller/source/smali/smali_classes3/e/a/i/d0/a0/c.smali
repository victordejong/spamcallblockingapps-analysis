.class public final Le/a/i/d0/a0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/i/d0/a0/o;


# instance fields
.field public final a:Le/m/e/k;

.field public final b:Le/a/u3/g;


# direct methods
.method public constructor <init>(Le/a/u3/g;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "featuresRegistry"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/i/d0/a0/c;->b:Le/a/u3/g;

    .line 2
    new-instance p1, Le/m/e/k;

    invoke-direct {p1}, Le/m/e/k;-><init>()V

    iput-object p1, p0, Le/a/i/d0/a0/c;->a:Le/m/e/k;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Le/a/i/d0/j<",
            "Ljava/lang/Boolean;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    sget-object p3, Le/a/i/d0/e0/a;->b:Le/a/i/d0/e0/a;

    .line 2
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "context"

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "partnerId"

    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-boolean v1, Le/a/i/d0/e0/a;->a:Z

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    new-instance p1, Le/a/i/d0/k;

    invoke-direct {p1, v0, v3, v2}, Le/a/i/d0/k;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    goto :goto_0

    .line 4
    :cond_0
    monitor-enter p3

    .line 5
    :try_start_0
    sget-boolean v1, Le/a/i/d0/e0/a;->a:Z

    if-eqz v1, :cond_1

    new-instance p1, Le/a/i/d0/k;

    invoke-direct {p1, v0, v3, v2}, Le/a/i/d0/k;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p3

    goto :goto_0

    .line 6
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/amazon/device/ads/AdRegistration;->getInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/amazon/device/ads/AdRegistration;

    const/4 p1, 0x0

    .line 7
    invoke-static {p1}, Lcom/amazon/device/ads/AdRegistration;->useGeoLocation(Z)V

    .line 8
    invoke-static {p1}, Lcom/amazon/device/ads/AdRegistration;->enableLogging(Z)V

    const/4 p1, 0x1

    .line 9
    sput-boolean p1, Le/a/i/d0/e0/a;->a:Z

    .line 10
    new-instance p1, Le/a/i/d0/k;

    invoke-direct {p1, v0, v3, v2}, Le/a/i/d0/k;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p3

    :goto_0
    return-object p1

    :catchall_0
    move-exception p1

    .line 11
    monitor-exit p3

    throw p1
.end method

.method public b(Landroid/content/Context;Le/a/i/d0/a0/p;Ls1/w/d;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Le/a/i/d0/a0/p;",
            "Ls1/w/d<",
            "-",
            "Le/a/i/d0/j<",
            "+",
            "Le/a/i/d0/h0/a;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    instance-of v1, p3, Le/a/i/d0/a0/c$a;

    if-eqz v1, :cond_0

    move-object v1, p3

    check-cast v1, Le/a/i/d0/a0/c$a;

    iget v2, v1, Le/a/i/d0/a0/c$a;->e:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Le/a/i/d0/a0/c$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v1, Le/a/i/d0/a0/c$a;

    invoke-direct {v1, p0, p3}, Le/a/i/d0/a0/c$a;-><init>(Le/a/i/d0/a0/c;Ls1/w/d;)V

    :goto_0
    iget-object p3, v1, Le/a/i/d0/a0/c$a;->d:Ljava/lang/Object;

    .line 1
    iget v2, v1, Le/a/i/d0/a0/c$a;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, v1, Le/a/i/d0/a0/c$a;->h:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Le/a/i/d0/a0/p;

    iget-object p1, v1, Le/a/i/d0/a0/c$a;->g:Ljava/lang/Object;

    check-cast p1, Le/a/i/d0/a0/c;

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p3, p2, Le/a/i/d0/a0/p;->b:Ljava/lang/String;

    .line 5
    iput-object p0, v1, Le/a/i/d0/a0/c$a;->g:Ljava/lang/Object;

    iput-object p2, v1, Le/a/i/d0/a0/c$a;->h:Ljava/lang/Object;

    iput v4, v1, Le/a/i/d0/a0/c$a;->e:I

    invoke-virtual {p0, p1, p3, v1}, Le/a/i/d0/a0/c;->a(Landroid/content/Context;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    move-object p1, p0

    .line 6
    :goto_1
    iget-object p3, p2, Le/a/i/d0/a0/p;->c:Ljava/util/List;

    .line 7
    new-instance v2, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {p3, v5}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 9
    check-cast v5, Lcom/truecaller/ads/mediation/model/AdSize;

    .line 10
    new-instance v6, Lcom/amazon/device/ads/DTBAdSize;

    invoke-virtual {v5}, Lcom/truecaller/ads/mediation/model/AdSize;->getWidth()I

    move-result v7

    invoke-virtual {v5}, Lcom/truecaller/ads/mediation/model/AdSize;->getHeight()I

    move-result v8

    invoke-virtual {v5}, Lcom/truecaller/ads/mediation/model/AdSize;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v7, v8, v5}, Lcom/amazon/device/ads/DTBAdSize;-><init>(IILjava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    const/4 p3, 0x0

    new-array p3, p3, [Lcom/amazon/device/ads/DTBAdSize;

    .line 11
    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    const-string v2, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {p3, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    check-cast p3, [Lcom/amazon/device/ads/DTBAdSize;

    .line 13
    new-instance v2, Lcom/amazon/device/ads/DTBAdRequest;

    invoke-direct {v2}, Lcom/amazon/device/ads/DTBAdRequest;-><init>()V

    .line 14
    array-length v5, p3

    invoke-static {p3, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Lcom/amazon/device/ads/DTBAdSize;

    invoke-virtual {v2, p3}, Lcom/amazon/device/ads/DTBAdRequest;->setSizes([Lcom/amazon/device/ads/DTBAdSize;)V

    .line 15
    iget-object p2, p2, Le/a/i/d0/a0/p;->b:Ljava/lang/String;

    const/4 p3, 0x0

    .line 16
    iput-object p3, v1, Le/a/i/d0/a0/c$a;->g:Ljava/lang/Object;

    iput-object p3, v1, Le/a/i/d0/a0/c$a;->h:Ljava/lang/Object;

    iput v3, v1, Le/a/i/d0/a0/c$a;->e:I

    .line 17
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    new-instance p3, Lq3/a/o;

    invoke-static {v1}, Le/q/f/a/d/a;->s1(Ls1/w/d;)Ls1/w/d;

    move-result-object v3

    invoke-direct {p3, v3, v4}, Lq3/a/o;-><init>(Ls1/w/d;I)V

    .line 19
    invoke-virtual {p3}, Lq3/a/o;->z()V

    .line 20
    new-instance v3, Le/a/i/d0/a0/b;

    invoke-direct {v3, p3, p1, v2, p2}, Le/a/i/d0/a0/b;-><init>(Lq3/a/n;Le/a/i/d0/a0/c;Lcom/amazon/device/ads/DTBAdRequest;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/amazon/device/ads/DTBAdRequest;->loadAd(Lcom/amazon/device/ads/DTBAdCallback;)V

    .line 21
    invoke-virtual {p3}, Lq3/a/o;->y()Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v0, :cond_6

    const-string p1, "frame"

    .line 22
    invoke-static {v1, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_6
    if-ne p3, v0, :cond_7

    return-object v0

    :cond_7
    :goto_3
    return-object p3
.end method

.method public destroy()V
    .locals 0

    return-void
.end method
