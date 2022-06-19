.class public final Le/a/i/b0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/i/b0/a;


# instance fields
.field public a:Lq3/a/p1;

.field public final b:Ls1/g;

.field public final c:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Ls1/w/f;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/i/b0/c/a;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/i/b0/e/d;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/u3/g;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/z4/a;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/p5/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;)V
    .locals 1
    .param p1    # Lo3/a;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo3/a<",
            "Ls1/w/f;",
            ">;",
            "Lo3/a<",
            "Le/a/i/b0/c/a;",
            ">;",
            "Lo3/a<",
            "Le/a/i/b0/e/d;",
            ">;",
            "Lo3/a<",
            "Le/a/u3/g;",
            ">;",
            "Lo3/a<",
            "Le/a/z4/a;",
            ">;",
            "Lo3/a<",
            "Le/a/p5/c;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "ioCoroutineContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adCampaignsDbManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adCampaignsRestManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adsSettings"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/i/b0/b;->c:Lo3/a;

    iput-object p2, p0, Le/a/i/b0/b;->d:Lo3/a;

    iput-object p3, p0, Le/a/i/b0/b;->e:Lo3/a;

    iput-object p4, p0, Le/a/i/b0/b;->f:Lo3/a;

    iput-object p5, p0, Le/a/i/b0/b;->g:Lo3/a;

    iput-object p6, p0, Le/a/i/b0/b;->h:Lo3/a;

    .line 2
    new-instance p1, Le/a/i/b0/b$a;

    invoke-direct {p1, p0}, Le/a/i/b0/b$a;-><init>(Le/a/i/b0/b;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/i/b0/b;->b:Ls1/g;

    return-void
.end method


# virtual methods
.method public a(Le/a/i/b0/d/a;Ls1/w/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/i/b0/d/a;",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/ads/campaigns/AdCampaigns;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/i/b0/b$b;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/i/b0/b$b;

    iget v1, v0, Le/a/i/b0/b$b;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/i/b0/b$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/i/b0/b$b;

    invoke-direct {v0, p0, p2}, Le/a/i/b0/b$b;-><init>(Le/a/i/b0/b;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/i/b0/b$b;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/i/b0/b$b;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_3

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, v0, Le/a/i/b0/b$b;->h:Ljava/lang/Object;

    check-cast p1, Le/a/i/b0/d/a;

    iget-object v2, v0, Le/a/i/b0/b$b;->g:Ljava/lang/Object;

    check-cast v2, Le/a/i/b0/b;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Le/a/i/b0/b;->f:Lo3/a;

    invoke-interface {p2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/u3/g;

    invoke-virtual {p2}, Le/a/u3/g;->z()Le/a/u3/b;

    move-result-object p2

    invoke-interface {p2}, Le/a/u3/b;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_4

    return-object v5

    .line 5
    :cond_4
    iget-object p2, p0, Le/a/i/b0/b;->a:Lq3/a/p1;

    if-eqz p2, :cond_6

    invoke-interface {p2}, Lq3/a/p1;->b()Z

    move-result v2

    .line 6
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 7
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_1

    :cond_5
    move-object p2, v5

    :goto_1
    if-eqz p2, :cond_6

    iput-object p0, v0, Le/a/i/b0/b$b;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/i/b0/b$b;->h:Ljava/lang/Object;

    iput v4, v0, Le/a/i/b0/b$b;->e:I

    invoke-interface {p2, v0}, Lq3/a/p1;->k(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_6

    return-object v1

    :cond_6
    move-object v2, p0

    .line 8
    :goto_2
    iget-object p2, v2, Le/a/i/b0/b;->c:Lo3/a;

    invoke-interface {p2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p2

    const-string v4, "ioCoroutineContext.get()"

    invoke-static {p2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ls1/w/f;

    new-instance v4, Le/a/i/b0/b$c;

    invoke-direct {v4, v2, p1, v5}, Le/a/i/b0/b$c;-><init>(Le/a/i/b0/b;Le/a/i/b0/d/a;Ls1/w/d;)V

    iput-object v5, v0, Le/a/i/b0/b$b;->g:Ljava/lang/Object;

    iput-object v5, v0, Le/a/i/b0/b$b;->h:Ljava/lang/Object;

    iput v3, v0, Le/a/i/b0/b$b;->e:I

    invoke-static {p2, v4, v0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_7

    return-object v1

    :cond_7
    :goto_3
    return-object p2
.end method

.method public b(Le/a/i/b0/d/a;)V
    .locals 7

    const-string v0, "config"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/i/b0/b;->f:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/u3/g;

    invoke-virtual {v0}, Le/a/u3/g;->z()Le/a/u3/b;

    move-result-object v0

    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/i/b0/b;->b:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lq3/a/i0;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3
    new-instance v4, Le/a/i/b0/b$e;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Le/a/i/b0/b$e;-><init>(Le/a/i/b0/b;Le/a/i/b0/d/a;Ls1/w/d;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object p1

    iput-object p1, p0, Le/a/i/b0/b;->a:Lq3/a/p1;

    return-void
.end method

.method public c(Le/a/i/b0/d/a;Ls1/w/d;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/i/b0/d/a;",
            "Ls1/w/d<",
            "-[",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/i/b0/b$d;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/i/b0/b$d;

    iget v1, v0, Le/a/i/b0/b$d;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/i/b0/b$d;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/i/b0/b$d;

    invoke-direct {v0, p0, p2}, Le/a/i/b0/b$d;-><init>(Le/a/i/b0/b;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/i/b0/b$d;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/i/b0/b$d;->e:I

    const/4 v3, 0x0

    const-string v4, "adsCampaignExpirationTime"

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v5, :cond_1

    iget-object p1, v0, Le/a/i/b0/b$d;->h:Ljava/lang/Object;

    check-cast p1, Le/a/i/b0/d/a;

    iget-object v0, v0, Le/a/i/b0/b$d;->g:Ljava/lang/Object;

    check-cast v0, Le/a/i/b0/b;

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
    iget-object p2, p0, Le/a/i/b0/b;->f:Lo3/a;

    invoke-interface {p2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/u3/g;

    invoke-virtual {p2}, Le/a/u3/g;->z()Le/a/u3/b;

    move-result-object p2

    invoke-interface {p2}, Le/a/u3/b;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_3

    return-object v3

    .line 5
    :cond_3
    iget-object p2, p0, Le/a/i/b0/b;->g:Lo3/a;

    invoke-interface {p2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/z4/a;

    invoke-static {v4}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 6
    iget-object v7, p1, Le/a/i/b0/d/a;->b:Ljava/util/List;

    .line 7
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v7, 0x0

    invoke-interface {p2, v2, v7, v8}, Le/a/z4/a;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    iget-object p2, p0, Le/a/i/b0/b;->h:Lo3/a;

    invoke-interface {p2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/p5/c;

    invoke-interface {p2}, Le/a/p5/c;->c()J

    move-result-wide v9

    cmp-long p2, v7, v9

    if-gez p2, :cond_4

    move p2, v5

    goto :goto_1

    :cond_4
    move p2, v6

    :goto_1
    if-eqz p2, :cond_6

    .line 8
    iput-object p0, v0, Le/a/i/b0/b$d;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/i/b0/b$d;->h:Ljava/lang/Object;

    iput v5, v0, Le/a/i/b0/b$d;->e:I

    invoke-virtual {p0, p1, v0}, Le/a/i/b0/b;->a(Le/a/i/b0/d/a;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    return-object v1

    :cond_5
    move-object v0, p0

    :goto_2
    check-cast p2, Lcom/truecaller/ads/campaigns/AdCampaigns;

    if-eqz p2, :cond_7

    .line 9
    iget-object v1, v0, Le/a/i/b0/b;->g:Lo3/a;

    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/z4/a;

    .line 10
    iget-object v2, p1, Le/a/i/b0/d/a;->b:Ljava/util/List;

    .line 11
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p2}, Lcom/truecaller/ads/campaigns/AdCampaigns;->a()[Ljava/lang/String;

    move-result-object v3

    const-string v5, "it.campaignIds"

    invoke-static {v3, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Le/q/f/a/d/a;->j3([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Le/a/z4/a;->putStringSet(Ljava/lang/String;Ljava/util/Set;)V

    .line 12
    iget-object v0, v0, Le/a/i/b0/b;->g:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/z4/a;

    invoke-static {v4}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 13
    iget-object p1, p1, Le/a/i/b0/d/a;->b:Ljava/util/List;

    .line 14
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-wide v1, p2, Lcom/truecaller/ads/campaigns/AdCampaigns;->e:J

    invoke-interface {v0, p1, v1, v2}, Le/a/z4/a;->putLong(Ljava/lang/String;J)V

    .line 15
    invoke-virtual {p2}, Lcom/truecaller/ads/campaigns/AdCampaigns;->a()[Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 16
    :cond_6
    iget-object p2, p0, Le/a/i/b0/b;->g:Lo3/a;

    invoke-interface {p2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/z4/a;

    .line 17
    iget-object p1, p1, Le/a/i/b0/d/a;->b:Ljava/util/List;

    .line 18
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {p2, p1}, Le/a/z4/a;->p(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    const-string p2, "adsSettings.get().getStringSet(placements[0])"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-array p2, v6, [Ljava/lang/String;

    .line 19
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
