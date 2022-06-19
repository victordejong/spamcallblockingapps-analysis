.class public final Le/a/i/d0/a0/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/i/d0/a0/o;
.implements Le/a/i/d0/a0/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/i/d0/a0/g$b;,
        Le/a/i/d0/a0/g$a;
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/criteo/publisher/model/AdUnit;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ls1/w/f;


# direct methods
.method public constructor <init>(Ls1/w/f;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "uiContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/i/d0/a0/g;->b:Ls1/w/f;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 3
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
    sget-object p3, Le/a/i/d0/e0/c;->a:Le/a/i/d0/e0/c;

    iget-object v0, p0, Le/a/i/d0/a0/g;->a:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "context"

    .line 2
    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "partnerId"

    invoke-static {p2, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "adUnitIds"

    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    monitor-enter p3

    .line 4
    :try_start_0
    new-instance v2, Lcom/criteo/publisher/Criteo$Builder;

    check-cast p1, Landroid/app/Application;

    invoke-direct {v2, p1, p2}, Lcom/criteo/publisher/Criteo$Builder;-><init>(Landroid/app/Application;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v2, v0}, Lcom/criteo/publisher/Criteo$Builder;->adUnits(Ljava/util/List;)Lcom/criteo/publisher/Criteo$Builder;

    move-result-object p1

    const/4 p2, 0x0

    .line 6
    invoke-virtual {p1, p2}, Lcom/criteo/publisher/Criteo$Builder;->debugLogsEnabled(Z)Lcom/criteo/publisher/Criteo$Builder;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/criteo/publisher/Criteo$Builder;->init()Lcom/criteo/publisher/Criteo;
    :try_end_0
    .catch Lcom/criteo/publisher/CriteoInitException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :try_start_1
    new-instance p1, Le/a/i/d0/k;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v0, 0x2

    invoke-direct {p1, p2, v1, v0}, Le/a/i/d0/k;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p3

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 9
    :try_start_2
    sget-object p2, Le/a/i/h0/k;->c:Le/a/i/h0/k;

    invoke-virtual {p2, p1}, Le/a/i/h0/k;->a(Ljava/lang/Throwable;)V

    .line 10
    new-instance p2, Le/a/i/d0/i;

    new-instance v0, Le/a/i/d0/n;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/truecaller/ads/mediation/model/AdPartner;->CRITEO:Lcom/truecaller/ads/mediation/model/AdPartner;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Le/a/i/d0/n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p2, v0}, Le/a/i/d0/i;-><init>(Le/a/i/c/b/a;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p3

    move-object p1, p2

    :goto_0
    return-object p1

    .line 11
    :goto_1
    monitor-exit p3

    throw p1

    :cond_0
    const-string p1, "adUnits"

    .line 12
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public b(Landroid/content/Context;Le/a/i/d0/a0/p;Ls1/w/d;)Ljava/lang/Object;
    .locals 10
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

    instance-of v0, p3, Le/a/i/d0/a0/g$d;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Le/a/i/d0/a0/g$d;

    iget v1, v0, Le/a/i/d0/a0/g$d;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/i/d0/a0/g$d;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/i/d0/a0/g$d;

    invoke-direct {v0, p0, p3}, Le/a/i/d0/a0/g$d;-><init>(Le/a/i/d0/a0/g;Ls1/w/d;)V

    :goto_0
    iget-object p3, v0, Le/a/i/d0/a0/g$d;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/i/d0/a0/g$d;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, v0, Le/a/i/d0/a0/g$d;->h:Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    iget-object p2, v0, Le/a/i/d0/a0/g$d;->g:Ljava/lang/Object;

    check-cast p2, Le/a/i/d0/a0/g;

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p3, p2, Le/a/i/d0/a0/p;->c:Ljava/util/List;

    .line 5
    new-instance v2, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {p3, v5}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 7
    check-cast v5, Lcom/truecaller/ads/mediation/model/AdSize;

    .line 8
    new-instance v6, Lcom/criteo/publisher/model/BannerAdUnit;

    .line 9
    iget-object v7, p2, Le/a/i/d0/a0/p;->d:Ljava/lang/String;

    if-eqz v7, :cond_4

    goto :goto_2

    .line 10
    :cond_4
    invoke-virtual {v5}, Lcom/truecaller/ads/mediation/model/AdSize;->getId()Ljava/lang/String;

    move-result-object v7

    :goto_2
    new-instance v8, Lcom/criteo/publisher/model/AdSize;

    invoke-virtual {v5}, Lcom/truecaller/ads/mediation/model/AdSize;->getWidth()I

    move-result v9

    invoke-virtual {v5}, Lcom/truecaller/ads/mediation/model/AdSize;->getHeight()I

    move-result v5

    invoke-direct {v8, v9, v5}, Lcom/criteo/publisher/model/AdSize;-><init>(II)V

    invoke-direct {v6, v7, v8}, Lcom/criteo/publisher/model/BannerAdUnit;-><init>(Ljava/lang/String;Lcom/criteo/publisher/model/AdSize;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 11
    :cond_5
    iput-object v2, p0, Le/a/i/d0/a0/g;->a:Ljava/util/List;

    .line 12
    iget-object p2, p2, Le/a/i/d0/a0/p;->b:Ljava/lang/String;

    .line 13
    iput-object p0, v0, Le/a/i/d0/a0/g$d;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/i/d0/a0/g$d;->h:Ljava/lang/Object;

    iput v4, v0, Le/a/i/d0/a0/g$d;->e:I

    invoke-virtual {p0, p1, p2, v0}, Le/a/i/d0/a0/g;->a(Landroid/content/Context;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_6

    return-object v1

    :cond_6
    move-object p2, p0

    .line 14
    :goto_3
    check-cast p3, Le/a/i/d0/j;

    .line 15
    instance-of v2, p3, Le/a/i/d0/k;

    if-eqz v2, :cond_9

    iget-object p3, p2, Le/a/i/d0/a0/g;->a:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz p3, :cond_8

    invoke-static {p3}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p3

    const-string v4, "null cannot be cast to non-null type com.criteo.publisher.model.BannerAdUnit"

    invoke-static {p3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p3, Lcom/criteo/publisher/model/BannerAdUnit;

    iput-object v2, v0, Le/a/i/d0/a0/g$d;->g:Ljava/lang/Object;

    iput-object v2, v0, Le/a/i/d0/a0/g$d;->h:Ljava/lang/Object;

    iput v3, v0, Le/a/i/d0/a0/g$d;->e:I

    .line 16
    iget-object v3, p2, Le/a/i/d0/a0/g;->b:Ls1/w/f;

    new-instance v4, Le/a/i/d0/a0/h;

    invoke-direct {v4, p2, p3, p1, v2}, Le/a/i/d0/a0/h;-><init>(Le/a/i/d0/a0/g;Lcom/criteo/publisher/model/BannerAdUnit;Landroid/content/Context;Ls1/w/d;)V

    invoke-static {v3, v4, v0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_7

    return-object v1

    .line 17
    :cond_7
    :goto_4
    check-cast p3, Le/a/i/d0/j;

    goto :goto_5

    :cond_8
    const-string p1, "adUnits"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 18
    :cond_9
    instance-of p1, p3, Le/a/i/d0/i;

    if-eqz p1, :cond_a

    :goto_5
    return-object p3

    :cond_a
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1
.end method

.method public c(Landroid/content/Context;Le/a/i/d0/a0/r;Le/a/i/d0/z;Ls1/w/d;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Le/a/i/d0/a0/r;",
            "Le/a/i/d0/z;",
            "Ls1/w/d<",
            "-",
            "Le/a/i/d0/j<",
            "+",
            "Le/a/i/d0/h0/a;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Le/a/i/d0/a0/g$e;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Le/a/i/d0/a0/g$e;

    iget v1, v0, Le/a/i/d0/a0/g$e;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/i/d0/a0/g$e;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/i/d0/a0/g$e;

    invoke-direct {v0, p0, p4}, Le/a/i/d0/a0/g$e;-><init>(Le/a/i/d0/a0/g;Ls1/w/d;)V

    :goto_0
    iget-object p4, v0, Le/a/i/d0/a0/g$e;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/i/d0/a0/g$e;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p4}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, v0, Le/a/i/d0/a0/g$e;->j:Ljava/lang/Object;

    move-object p3, p1

    check-cast p3, Le/a/i/d0/z;

    iget-object p1, v0, Le/a/i/d0/a0/g$e;->i:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Le/a/i/d0/a0/r;

    iget-object p1, v0, Le/a/i/d0/a0/g$e;->h:Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    iget-object v2, v0, Le/a/i/d0/a0/g$e;->g:Ljava/lang/Object;

    check-cast v2, Le/a/i/d0/a0/g;

    invoke-static {p4}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v7, p1

    move-object v8, p3

    move-object v5, v2

    goto :goto_2

    :cond_3
    invoke-static {p4}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 5
    new-instance v2, Lcom/criteo/publisher/model/NativeAdUnit;

    .line 6
    iget-object v5, p2, Le/a/i/d0/a0/r;->d:Ljava/lang/String;

    if-eqz v5, :cond_4

    goto :goto_1

    .line 7
    :cond_4
    iget-object v5, p2, Le/a/i/d0/a0/r;->c:Ljava/lang/String;

    .line 8
    :goto_1
    invoke-direct {v2, v5}, Lcom/criteo/publisher/model/NativeAdUnit;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    iput-object p4, p0, Le/a/i/d0/a0/g;->a:Ljava/util/List;

    .line 10
    iget-object p4, p2, Le/a/i/d0/a0/r;->b:Ljava/lang/String;

    .line 11
    iput-object p0, v0, Le/a/i/d0/a0/g$e;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/i/d0/a0/g$e;->h:Ljava/lang/Object;

    iput-object p2, v0, Le/a/i/d0/a0/g$e;->i:Ljava/lang/Object;

    iput-object p3, v0, Le/a/i/d0/a0/g$e;->j:Ljava/lang/Object;

    iput v4, v0, Le/a/i/d0/a0/g$e;->e:I

    invoke-virtual {p0, p1, p4, v0}, Le/a/i/d0/a0/g;->a(Landroid/content/Context;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_5

    return-object v1

    :cond_5
    move-object v5, p0

    move-object v7, p1

    move-object v8, p3

    .line 12
    :goto_2
    check-cast p4, Le/a/i/d0/j;

    .line 13
    instance-of p1, p4, Le/a/i/d0/k;

    if-eqz p1, :cond_8

    .line 14
    iget-object v9, p2, Le/a/i/d0/a0/r;->b:Ljava/lang/String;

    .line 15
    iget-object p1, v5, Le/a/i/d0/a0/g;->a:Ljava/util/List;

    const/4 p2, 0x0

    if-eqz p1, :cond_7

    invoke-static {p1}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    const-string p3, "null cannot be cast to non-null type com.criteo.publisher.model.NativeAdUnit"

    invoke-static {p1, p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v6, p1

    check-cast v6, Lcom/criteo/publisher/model/NativeAdUnit;

    iput-object p2, v0, Le/a/i/d0/a0/g$e;->g:Ljava/lang/Object;

    iput-object p2, v0, Le/a/i/d0/a0/g$e;->h:Ljava/lang/Object;

    iput-object p2, v0, Le/a/i/d0/a0/g$e;->i:Ljava/lang/Object;

    iput-object p2, v0, Le/a/i/d0/a0/g$e;->j:Ljava/lang/Object;

    iput v3, v0, Le/a/i/d0/a0/g$e;->e:I

    .line 16
    iget-object p1, v5, Le/a/i/d0/a0/g;->b:Ls1/w/f;

    new-instance p2, Le/a/i/d0/a0/i;

    const/4 v10, 0x0

    move-object v4, p2

    invoke-direct/range {v4 .. v10}, Le/a/i/d0/a0/i;-><init>(Le/a/i/d0/a0/g;Lcom/criteo/publisher/model/NativeAdUnit;Landroid/content/Context;Le/a/i/d0/z;Ljava/lang/String;Ls1/w/d;)V

    invoke-static {p1, p2, v0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_6

    return-object v1

    .line 17
    :cond_6
    :goto_3
    check-cast p4, Le/a/i/d0/j;

    goto :goto_4

    :cond_7
    const-string p1, "adUnits"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw p2

    .line 18
    :cond_8
    instance-of p1, p4, Le/a/i/d0/i;

    if-eqz p1, :cond_9

    :goto_4
    return-object p4

    :cond_9
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1
.end method

.method public final d(Lcom/criteo/publisher/model/AdUnit;Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/criteo/publisher/model/AdUnit;",
            "Ls1/w/d<",
            "-",
            "Le/a/i/d0/j<",
            "+",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, Lq3/a/o;

    invoke-static {p2}, Le/q/f/a/d/a;->s1(Ls1/w/d;)Ls1/w/d;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lq3/a/o;-><init>(Ls1/w/d;I)V

    .line 2
    invoke-virtual {v0}, Lq3/a/o;->z()V

    .line 3
    invoke-static {}, Lcom/criteo/publisher/Criteo;->getInstance()Lcom/criteo/publisher/Criteo;

    move-result-object v1

    new-instance v2, Le/a/i/d0/a0/g$c;

    invoke-direct {v2, v0}, Le/a/i/d0/a0/g$c;-><init>(Lq3/a/n;)V

    invoke-virtual {v1, p1, v2}, Lcom/criteo/publisher/Criteo;->loadBid(Lcom/criteo/publisher/model/AdUnit;Lcom/criteo/publisher/BidResponseListener;)V

    .line 4
    invoke-virtual {v0}, Lq3/a/o;->y()Ljava/lang/Object;

    move-result-object p1

    .line 5
    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, v0, :cond_0

    const-string v0, "frame"

    .line 6
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-object p1
.end method

.method public destroy()V
    .locals 0

    return-void
.end method
