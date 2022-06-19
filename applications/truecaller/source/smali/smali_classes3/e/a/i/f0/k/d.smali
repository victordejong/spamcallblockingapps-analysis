.class public final Le/a/i/f0/k/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/i/f0/k/a;


# instance fields
.field public final a:Ls1/g;

.field public final b:Ls1/w/f;

.field public final c:Ls1/w/f;

.field public final d:Le/a/u3/g;

.field public final e:Le/a/i/w/d;

.field public final f:Le/a/z4/a;


# direct methods
.method public constructor <init>(Ls1/w/f;Ls1/w/f;Le/a/u3/g;Le/a/i/w/d;Le/a/z4/a;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "uiCoroutineContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asyncCoroutineContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adManager"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adsSettings"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/i/f0/k/d;->b:Ls1/w/f;

    iput-object p2, p0, Le/a/i/f0/k/d;->c:Ls1/w/f;

    iput-object p3, p0, Le/a/i/f0/k/d;->d:Le/a/u3/g;

    iput-object p4, p0, Le/a/i/f0/k/d;->e:Le/a/i/w/d;

    iput-object p5, p0, Le/a/i/f0/k/d;->f:Le/a/z4/a;

    .line 2
    new-instance p1, Le/a/i/f0/k/d$a;

    invoke-direct {p1, p0}, Le/a/i/f0/k/d$a;-><init>(Le/a/i/f0/k/d;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/i/f0/k/d;->a:Ls1/g;

    return-void
.end method


# virtual methods
.method public varargs a([Ljava/lang/String;)V
    .locals 11

    const-string v0, "placements"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/i/f0/k/d;->d:Le/a/u3/g;

    invoke-virtual {v0}, Le/a/u3/g;->z()Le/a/u3/b;

    move-result-object v0

    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Le/a/i/o$b;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-direct {v0, v1}, Le/a/i/o$b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Le/a/i/o$b;->a()Le/a/i/o;

    move-result-object v0

    const-string v1, "CampaignConfig.Builder(placements[0]).build()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v2, p0, Le/a/i/f0/k/d;->e:Le/a/i/w/d;

    .line 4
    iget-object v1, p0, Le/a/i/f0/k/d;->a:Ls1/g;

    invoke-interface {v1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/truecaller/common/network/util/KnownEndpoints;

    .line 5
    iget-object v4, v0, Le/a/i/o;->a:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v6, p1

    .line 6
    invoke-interface/range {v2 .. v10}, Le/a/i/w/d;->d(Lcom/truecaller/common/network/util/KnownEndpoints;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public b(Le/a/i/o;Ls1/w/d;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/i/o;",
            "Ls1/w/d<",
            "-[",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/i/f0/k/d$f;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/i/f0/k/d$f;

    iget v1, v0, Le/a/i/f0/k/d$f;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/i/f0/k/d$f;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/i/f0/k/d$f;

    invoke-direct {v0, p0, p2}, Le/a/i/f0/k/d$f;-><init>(Le/a/i/f0/k/d;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/i/f0/k/d$f;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/i/f0/k/d$f;->e:I

    const/4 v3, 0x0

    const-string v4, "adsCampaignExpirationTime"

    const/4 v5, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v5, :cond_1

    iget-object p1, v0, Le/a/i/f0/k/d$f;->h:Ljava/lang/Object;

    check-cast p1, Le/a/i/o;

    iget-object v0, v0, Le/a/i/f0/k/d$f;->g:Ljava/lang/Object;

    check-cast v0, Le/a/i/f0/k/d;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

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
    iget-object p2, p0, Le/a/i/f0/k/d;->d:Le/a/u3/g;

    invoke-virtual {p2}, Le/a/u3/g;->z()Le/a/u3/b;

    move-result-object p2

    invoke-interface {p2}, Le/a/u3/b;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_3

    return-object v3

    .line 5
    :cond_3
    iget-object p2, p0, Le/a/i/f0/k/d;->f:Le/a/z4/a;

    invoke-static {v4}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, p1, Le/a/i/o;->b:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v6, 0x0

    invoke-interface {p2, v2, v6, v7}, Le/a/z4/a;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long p2, v6, v8

    const/4 v2, 0x0

    if-gez p2, :cond_4

    move p2, v5

    goto :goto_1

    :cond_4
    move p2, v2

    :goto_1
    if-eqz p2, :cond_6

    .line 6
    iput-object p0, v0, Le/a/i/f0/k/d$f;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/i/f0/k/d$f;->h:Ljava/lang/Object;

    iput v5, v0, Le/a/i/f0/k/d$f;->e:I

    invoke-virtual {p0, p1, v0}, Le/a/i/f0/k/d;->c(Le/a/i/o;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    return-object v1

    :cond_5
    move-object v0, p0

    :goto_2
    check-cast p2, Lcom/truecaller/ads/campaigns/AdCampaigns;

    if-eqz p2, :cond_7

    .line 7
    iget-object v1, v0, Le/a/i/f0/k/d;->f:Le/a/z4/a;

    iget-object v2, p1, Le/a/i/o;->b:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/truecaller/ads/campaigns/AdCampaigns;->a()[Ljava/lang/String;

    move-result-object v3

    const-string v5, "it.campaignIds"

    invoke-static {v3, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Le/q/f/a/d/a;->j3([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Le/a/z4/a;->putStringSet(Ljava/lang/String;Ljava/util/Set;)V

    .line 8
    iget-object v0, v0, Le/a/i/f0/k/d;->f:Le/a/z4/a;

    invoke-static {v4}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p1, p1, Le/a/i/o;->b:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-wide v1, p2, Lcom/truecaller/ads/campaigns/AdCampaigns;->e:J

    invoke-interface {v0, p1, v1, v2}, Le/a/z4/a;->putLong(Ljava/lang/String;J)V

    .line 9
    invoke-virtual {p2}, Lcom/truecaller/ads/campaigns/AdCampaigns;->a()[Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 10
    :cond_6
    iget-object p2, p0, Le/a/i/f0/k/d;->f:Le/a/z4/a;

    iget-object p1, p1, Le/a/i/o;->b:Ljava/lang/String;

    invoke-interface {p2, p1}, Le/a/z4/a;->p(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    const-string p2, "adsSettings.getStringSet(placement)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-array p2, v2, [Ljava/lang/String;

    .line 11
    invoke-interface {p1, p2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v3, p1

    check-cast v3, [Ljava/lang/String;

    :cond_7
    :goto_3
    return-object v3
.end method

.method public c(Le/a/i/o;Ls1/w/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/i/o;",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/ads/campaigns/AdCampaigns;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/i/f0/k/d$e;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/i/f0/k/d$e;

    iget v1, v0, Le/a/i/f0/k/d$e;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/i/f0/k/d$e;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/i/f0/k/d$e;

    invoke-direct {v0, p0, p2}, Le/a/i/f0/k/d$e;-><init>(Le/a/i/f0/k/d;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/i/f0/k/d$e;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/i/f0/k/d$e;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Le/a/i/f0/k/d$e;->g:Ljava/lang/Object;

    check-cast p1, Le/a/i/o;

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
    iput-object p1, v0, Le/a/i/f0/k/d$e;->g:Ljava/lang/Object;

    iput v3, v0, Le/a/i/f0/k/d$e;->e:I

    invoke-virtual {p0, p1, v0}, Le/a/i/f0/k/d;->d(Le/a/i/o;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, [Lcom/truecaller/ads/campaigns/AdCampaigns;

    const/4 v0, 0x0

    if-eqz p2, :cond_5

    .line 5
    array-length v1, p2

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_5

    aget-object v3, p2, v2

    .line 6
    iget-object v4, p1, Le/a/i/o;->b:Ljava/lang/String;

    iget-object v5, v3, Lcom/truecaller/ads/campaigns/AdCampaigns;->a:Ljava/lang/String;

    invoke-static {v4, v5}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    .line 7
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 8
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_4

    move-object v0, v3

    goto :goto_3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    return-object v0
.end method

.method public final synthetic d(Le/a/i/o;Ls1/w/d;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/i/o;",
            "Ls1/w/d<",
            "-[",
            "Lcom/truecaller/ads/campaigns/AdCampaigns;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/i/f0/k/d$b;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/i/f0/k/d$b;

    iget v1, v0, Le/a/i/f0/k/d$b;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/i/f0/k/d$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/i/f0/k/d$b;

    invoke-direct {v0, p0, p2}, Le/a/i/f0/k/d$b;-><init>(Le/a/i/f0/k/d;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/i/f0/k/d$b;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/i/f0/k/d$b;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, v0, Le/a/i/f0/k/d$b;->i:Ljava/lang/Object;

    check-cast p1, Ls1/z/c/c0;

    iget-object v2, v0, Le/a/i/f0/k/d$b;->h:Ljava/lang/Object;

    check-cast v2, Ls1/z/c/c0;

    iget-object v4, v0, Le/a/i/f0/k/d$b;->g:Ljava/lang/Object;

    check-cast v4, Le/a/i/f0/k/d;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Le/a/i/f0/k/d;->d:Le/a/u3/g;

    invoke-virtual {p2}, Le/a/u3/g;->z()Le/a/u3/b;

    move-result-object p2

    invoke-interface {p2}, Le/a/u3/b;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_4

    return-object v5

    .line 5
    :cond_4
    new-instance p2, Ls1/z/c/c0;

    invoke-direct {p2}, Ls1/z/c/c0;-><init>()V

    iget-object v2, p0, Le/a/i/f0/k/d;->b:Ls1/w/f;

    new-instance v6, Le/a/i/f0/k/d$d;

    invoke-direct {v6, p0, p1, v5}, Le/a/i/f0/k/d$d;-><init>(Le/a/i/f0/k/d;Le/a/i/o;Ls1/w/d;)V

    iput-object p0, v0, Le/a/i/f0/k/d$b;->g:Ljava/lang/Object;

    iput-object p2, v0, Le/a/i/f0/k/d$b;->h:Ljava/lang/Object;

    iput-object p2, v0, Le/a/i/f0/k/d$b;->i:Ljava/lang/Object;

    iput v4, v0, Le/a/i/f0/k/d$b;->e:I

    invoke-static {v2, v6, v0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    move-object v4, p0

    move-object v2, p2

    move-object p2, p1

    move-object p1, v2

    .line 6
    :goto_1
    check-cast p2, Ljava/util/concurrent/Future;

    iput-object p2, p1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 7
    iget-object p1, v4, Le/a/i/f0/k/d;->c:Ls1/w/f;

    new-instance p2, Le/a/i/f0/k/d$c;

    invoke-direct {p2, v2, v5}, Le/a/i/f0/k/d$c;-><init>(Ls1/z/c/c0;Ls1/w/d;)V

    iput-object v5, v0, Le/a/i/f0/k/d$b;->g:Ljava/lang/Object;

    iput-object v5, v0, Le/a/i/f0/k/d$b;->h:Ljava/lang/Object;

    iput-object v5, v0, Le/a/i/f0/k/d$b;->i:Ljava/lang/Object;

    iput v3, v0, Le/a/i/f0/k/d$b;->e:I

    invoke-static {p1, p2, v0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_6

    return-object v1

    :cond_6
    :goto_2
    return-object p2
.end method
