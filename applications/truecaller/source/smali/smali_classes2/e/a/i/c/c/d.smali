.class public final Le/a/i/c/c/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/i/c/c/c;


# instance fields
.field public final a:Le/a/i/c/c/a;

.field public final b:Le/a/i/e/l/a;


# direct methods
.method public constructor <init>(Le/a/i/c/c/a;Le/a/i/e/l/a;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "adRouterRestAdapter"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlineLeadGenRestAdapter"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/i/c/c/d;->a:Le/a/i/c/c/a;

    iput-object p2, p0, Le/a/i/c/c/d;->b:Le/a/i/e/l/a;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/i/c/c/d$d;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/i/c/c/d$d;

    iget v1, v0, Le/a/i/c/c/d$d;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/i/c/c/d$d;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/i/c/c/d$d;

    invoke-direct {v0, p0, p2}, Le/a/i/c/c/d$d;-><init>(Le/a/i/c/c/d;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/i/c/c/d$d;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/i/c/c/d$d;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Le/a/i/c/c/d;->a:Le/a/i/c/c/a;

    iput v3, v0, Le/a/i/c/c/d$d;->e:I

    invoke-interface {p2, p1, v0}, Le/a/i/c/c/a;->a(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Lx3/b;

    invoke-static {p2}, Le/a/n/g0;->p0(Lx3/b;)Lx3/a0;

    .line 5
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public b(Ljava/util/Map;Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Le/a/i/c/c/h<",
            "Lcom/truecaller/ads/adsrouter/model/Ad;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/i/c/c/d$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/i/c/c/d$a;

    iget v1, v0, Le/a/i/c/c/d$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/i/c/c/d$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/i/c/c/d$a;

    invoke-direct {v0, p0, p2}, Le/a/i/c/c/d$a;-><init>(Le/a/i/c/c/d;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/i/c/c/d$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/i/c/c/d$a;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p1, v0, Le/a/i/c/c/d$a;->g:Ljava/lang/Object;

    check-cast p1, Le/a/i/c/c/d;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    new-instance p2, Le/a/i/c/c/d$b;

    invoke-direct {p2, p0, p1, v3}, Le/a/i/c/c/d$b;-><init>(Le/a/i/c/c/d;Ljava/util/Map;Ls1/w/d;)V

    iput-object p0, v0, Le/a/i/c/c/d$a;->g:Ljava/lang/Object;

    iput v4, v0, Le/a/i/c/c/d$a;->e:I

    invoke-static {p2, v0}, Le/m/d/y/n;->m1(Ls1/z/b/l;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    move-object p1, p0

    .line 5
    :goto_1
    check-cast p2, Lx3/a0;

    .line 6
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_4

    .line 7
    iget-object p1, p2, Lx3/a0;->b:Ljava/lang/Object;

    .line 8
    check-cast p1, Lcom/truecaller/ads/adsrouter/model/AdResponse;

    goto :goto_2

    :cond_4
    move-object p1, v3

    :goto_2
    const/4 v0, 0x2

    if-eqz p1, :cond_9

    .line 9
    invoke-virtual {p2}, Lx3/a0;->b()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 10
    invoke-virtual {p1}, Lcom/truecaller/ads/adsrouter/model/AdResponse;->getSuccess()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 11
    invoke-virtual {p1}, Lcom/truecaller/ads/adsrouter/model/AdResponse;->getAds()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_3

    :cond_5
    const/4 p2, 0x0

    goto :goto_4

    :cond_6
    :goto_3
    move p2, v4

    :goto_4
    if-nez p2, :cond_7

    .line 12
    new-instance p2, Le/a/i/c/c/i;

    invoke-virtual {p1}, Lcom/truecaller/ads/adsrouter/model/AdResponse;->getAds()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p2, p1, v3, v0}, Le/a/i/c/c/i;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    goto :goto_5

    .line 13
    :cond_7
    new-instance p2, Le/a/i/c/c/g;

    const-string p1, "No Ads to serve"

    invoke-direct {p2, v4, p1}, Le/a/i/c/c/g;-><init>(ILjava/lang/String;)V

    goto :goto_5

    .line 14
    :cond_8
    new-instance p2, Le/a/i/c/c/g;

    invoke-virtual {p1}, Lcom/truecaller/ads/adsrouter/model/AdResponse;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Le/a/i/c/c/g;-><init>(ILjava/lang/String;)V

    goto :goto_5

    .line 15
    :cond_9
    new-instance p2, Le/a/i/c/c/g;

    const-string p1, "No response from server, may be internet connection is not stable"

    invoke-direct {p2, v0, p1}, Le/a/i/c/c/g;-><init>(ILjava/lang/String;)V

    :goto_5
    return-object p2
.end method

.method public c(Ljava/lang/String;Ljava/util/Map;Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Le/a/i/e/c<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Le/a/i/c/c/d$e;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Le/a/i/c/c/d$e;

    iget v1, v0, Le/a/i/c/c/d$e;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/i/c/c/d$e;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/i/c/c/d$e;

    invoke-direct {v0, p0, p3}, Le/a/i/c/c/d$e;-><init>(Le/a/i/c/c/d;Ls1/w/d;)V

    :goto_0
    iget-object p3, v0, Le/a/i/c/c/d$e;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/i/c/c/d$e;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p3, p0, Le/a/i/c/c/d;->b:Le/a/i/e/l/a;

    iput v3, v0, Le/a/i/c/c/d$e;->e:I

    invoke-interface {p3, p1, p2, v0}, Le/a/i/e/l/a;->c(Ljava/lang/String;Ljava/util/Map;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p3, Lx3/b;

    invoke-static {p3}, Le/a/n/g0;->p0(Lx3/b;)Lx3/a0;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 5
    invoke-virtual {p1}, Lx3/a0;->b()Z

    move-result p2

    .line 6
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    .line 7
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_4

    move-object p2, p1

    goto :goto_2

    :cond_4
    move-object p2, p3

    :goto_2
    if-eqz p2, :cond_5

    .line 8
    new-instance p1, Le/a/i/e/f;

    .line 9
    iget-object p2, p2, Lx3/a0;->a:Lu3/k0;

    .line 10
    iget-object p2, p2, Lu3/k0;->d:Ljava/lang/String;

    const/4 v0, 0x2

    .line 11
    invoke-direct {p1, p2, p3, v0}, Le/a/i/e/f;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    goto :goto_5

    .line 12
    :cond_5
    sget-object p2, Le/a/i/e/b;->b:Ljava/util/List;

    .line 13
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Le/a/i/e/b;

    .line 14
    iget v1, v1, Le/a/i/e/b;->a:I

    .line 15
    iget-object v2, p1, Lx3/a0;->a:Lu3/k0;

    .line 16
    iget v2, v2, Lu3/k0;->e:I

    if-ne v1, v2, :cond_7

    move v1, v3

    goto :goto_3

    :cond_7
    const/4 v1, 0x0

    .line 17
    :goto_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 18
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    move-object p3, v0

    .line 19
    :cond_8
    check-cast p3, Le/a/i/e/b;

    if-eqz p3, :cond_9

    goto :goto_4

    .line 20
    :cond_9
    sget-object p3, Le/a/i/e/b$e;->c:Le/a/i/e/b$e;

    :goto_4
    new-instance p1, Le/a/i/e/d;

    invoke-direct {p1, p3}, Le/a/i/e/d;-><init>(Le/a/i/e/b;)V

    goto :goto_5

    .line 21
    :cond_a
    new-instance p1, Le/a/i/e/d;

    sget-object p2, Le/a/i/e/b$e;->c:Le/a/i/e/b$e;

    invoke-direct {p1, p2}, Le/a/i/e/d;-><init>(Le/a/i/e/b;)V

    :goto_5
    return-object p1
.end method

.method public d(Ljava/lang/String;ILs1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ls1/w/d<",
            "-",
            "Le/a/i/e/c<",
            "Lcom/truecaller/ads/offline/dto/OfflineAdsDto;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Le/a/i/c/c/d$c;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Le/a/i/c/c/d$c;

    iget v1, v0, Le/a/i/c/c/d$c;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/i/c/c/d$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/i/c/c/d$c;

    invoke-direct {v0, p0, p3}, Le/a/i/c/c/d$c;-><init>(Le/a/i/c/c/d;Ls1/w/d;)V

    :goto_0
    iget-object p3, v0, Le/a/i/c/c/d$c;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/i/c/c/d$c;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p3, p0, Le/a/i/c/c/d;->a:Le/a/i/c/c/a;

    iput v3, v0, Le/a/i/c/c/d$c;->e:I

    invoke-interface {p3, p1, p2, v0}, Le/a/i/c/c/a;->d(Ljava/lang/String;ILs1/w/d;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p3, Lx3/b;

    invoke-static {p3}, Le/a/n/g0;->p0(Lx3/b;)Lx3/a0;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 5
    invoke-virtual {p1}, Lx3/a0;->b()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 6
    iget-object p1, p1, Lx3/a0;->b:Ljava/lang/Object;

    .line 7
    check-cast p1, Lcom/truecaller/ads/adsrouter/model/Ad;

    const/4 p2, 0x0

    if-eqz p1, :cond_4

    .line 8
    invoke-virtual {p1}, Lcom/truecaller/ads/adsrouter/model/Ad;->getOfflineAdsDto()Lcom/truecaller/ads/offline/dto/OfflineAdsDto;

    move-result-object p3

    goto :goto_2

    :cond_4
    move-object p3, p2

    :goto_2
    if-eqz p3, :cond_5

    .line 9
    invoke-virtual {p1}, Lcom/truecaller/ads/adsrouter/model/Ad;->getOfflineAdsDto()Lcom/truecaller/ads/offline/dto/OfflineAdsDto;

    move-result-object p3

    .line 10
    invoke-virtual {p1}, Lcom/truecaller/ads/adsrouter/model/Ad;->getTracking()Lcom/truecaller/ads/adsrouter/model/Tracking;

    move-result-object p1

    invoke-virtual {p1}, Lcom/truecaller/ads/adsrouter/model/Tracking;->getThankYouPixels()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/truecaller/ads/offline/dto/OfflineAdsDto;->setPixels(Ljava/util/List;)V

    const/4 p1, 0x0

    .line 11
    invoke-virtual {p3, p1}, Lcom/truecaller/ads/offline/dto/OfflineAdsDto;->setOffline(Z)V

    .line 12
    new-instance p1, Le/a/i/e/f;

    const/4 v0, 0x2

    invoke-direct {p1, p3, p2, v0}, Le/a/i/e/f;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    goto :goto_3

    .line 13
    :cond_5
    new-instance p1, Le/a/i/e/d;

    sget-object p2, Le/a/i/e/b$c;->c:Le/a/i/e/b$c;

    invoke-direct {p1, p2}, Le/a/i/e/d;-><init>(Le/a/i/e/b;)V

    goto :goto_3

    .line 14
    :cond_6
    new-instance p1, Le/a/i/e/d;

    sget-object p2, Le/a/i/e/b$e;->c:Le/a/i/e/b$e;

    invoke-direct {p1, p2}, Le/a/i/e/d;-><init>(Le/a/i/e/b;)V

    :goto_3
    return-object p1
.end method
