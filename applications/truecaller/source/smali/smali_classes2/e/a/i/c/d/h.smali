.class public final Le/a/i/c/d/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/i/c/d/g;


# instance fields
.field public final a:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/i/v/f;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/i/d0/c0/m;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo3/a;Lo3/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo3/a<",
            "Le/a/i/v/f;",
            ">;",
            "Lo3/a<",
            "Le/a/i/d0/c0/m;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "cachedAdsDao"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "partnerAdsDao"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/i/c/d/h;->a:Lo3/a;

    iput-object p2, p0, Le/a/i/c/d/h;->b:Lo3/a;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/i/c/d/h$d;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/i/c/d/h$d;

    iget v1, v0, Le/a/i/c/d/h$d;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/i/c/d/h$d;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/i/c/d/h$d;

    invoke-direct {v0, p0, p2}, Le/a/i/c/d/h$d;-><init>(Le/a/i/c/d/h;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/i/c/d/h$d;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/i/c/d/h$d;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-boolean p1, v0, Le/a/i/c/d/h$d;->i:Z

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
    iget-object p1, v0, Le/a/i/c/d/h$d;->h:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v2, v0, Le/a/i/c/d/h$d;->g:Ljava/lang/Object;

    check-cast v2, Le/a/i/c/d/h;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Le/a/i/c/d/h;->a:Lo3/a;

    invoke-interface {p2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/i/v/f;

    iput-object p0, v0, Le/a/i/c/d/h$d;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/i/c/d/h$d;->h:Ljava/lang/Object;

    iput v4, v0, Le/a/i/c/d/h$d;->e:I

    invoke-interface {p2, p1, v0}, Le/a/i/v/f;->l(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    :goto_1
    check-cast p2, Ljava/lang/Long;

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_2

    :cond_5
    const-wide/16 v4, 0x0

    .line 5
    :goto_2
    new-instance p2, Lw3/b/a/b;

    invoke-direct {p2, v4, v5}, Lw3/b/a/b;-><init>(J)V

    invoke-virtual {p2}, Lw3/b/a/e0/c;->j()Z

    move-result p2

    if-eqz p2, :cond_7

    const/4 v4, 0x0

    .line 6
    iput-object v4, v0, Le/a/i/c/d/h$d;->g:Ljava/lang/Object;

    iput-object v4, v0, Le/a/i/c/d/h$d;->h:Ljava/lang/Object;

    iput-boolean p2, v0, Le/a/i/c/d/h$d;->i:Z

    iput v3, v0, Le/a/i/c/d/h$d;->e:I

    invoke-virtual {v2, p1, v0}, Le/a/i/c/d/h;->g(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    return-object v1

    :cond_6
    move p1, p2

    :goto_3
    move p2, p1

    .line 7
    :cond_7
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 43
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Le/a/i/c/c/h<",
            "Lcom/truecaller/ads/adsrouter/model/Ad;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    instance-of v3, v2, Le/a/i/c/d/h$a;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Le/a/i/c/d/h$a;

    iget v4, v3, Le/a/i/c/d/h$a;->e:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Le/a/i/c/d/h$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v3, Le/a/i/c/d/h$a;

    invoke-direct {v3, v0, v2}, Le/a/i/c/d/h$a;-><init>(Le/a/i/c/d/h;Ls1/w/d;)V

    :goto_0
    iget-object v2, v3, Le/a/i/c/d/h$a;->d:Ljava/lang/Object;

    sget-object v4, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v5, v3, Le/a/i/c/d/h$a;->e:I

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x0

    if-eqz v5, :cond_3

    if-eq v5, v6, :cond_2

    if-ne v5, v7, :cond_1

    iget-object v1, v3, Le/a/i/c/d/h$a;->g:Ljava/lang/Object;

    check-cast v1, Le/a/i/v/i;

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_2
    iget-object v1, v3, Le/a/i/c/d/h$a;->h:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v5, v3, Le/a/i/c/d/h$a;->g:Ljava/lang/Object;

    check-cast v5, Le/a/i/c/d/h;

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v2, v0, Le/a/i/c/d/h;->a:Lo3/a;

    invoke-interface {v2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/i/v/f;

    iput-object v0, v3, Le/a/i/c/d/h$a;->g:Ljava/lang/Object;

    iput-object v1, v3, Le/a/i/c/d/h$a;->h:Ljava/lang/Object;

    iput v6, v3, Le/a/i/c/d/h$a;->e:I

    invoke-interface {v2, v1, v3}, Le/a/i/v/f;->d(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_4

    return-object v4

    :cond_4
    move-object v5, v0

    :goto_1
    check-cast v2, Le/a/i/v/i;

    if-eqz v2, :cond_8

    .line 5
    iput-object v2, v3, Le/a/i/c/d/h$a;->g:Ljava/lang/Object;

    iput-object v8, v3, Le/a/i/c/d/h$a;->h:Ljava/lang/Object;

    iput v7, v3, Le/a/i/c/d/h$a;->e:I

    invoke-virtual {v5, v1, v3}, Le/a/i/c/d/h;->a(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v4, :cond_5

    return-object v4

    :cond_5
    move-object/from16 v42, v2

    move-object v2, v1

    move-object/from16 v1, v42

    :goto_2
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 6
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 7
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_3

    :cond_6
    move-object v1, v8

    :goto_3
    if-eqz v1, :cond_8

    .line 8
    new-instance v2, Le/a/i/c/c/i;

    const-string v3, "$this$mapToAd"

    .line 9
    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object v10, v1, Le/a/i/v/i;->c:Ljava/lang/String;

    .line 11
    iget-object v3, v1, Le/a/i/v/i;->d:Ljava/lang/String;

    .line 12
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 13
    iget-object v3, v1, Le/a/i/v/i;->e:Ljava/lang/String;

    .line 14
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 15
    iget-object v3, v1, Le/a/i/v/i;->f:Ljava/lang/String;

    .line 16
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 17
    iget-object v3, v1, Le/a/i/v/i;->g:Ljava/lang/String;

    .line 18
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 19
    iget-object v3, v1, Le/a/i/v/i;->h:Ljava/lang/String;

    .line 20
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 21
    iget-object v3, v1, Le/a/i/v/i;->i:Ljava/lang/String;

    .line 22
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 23
    iget-object v3, v1, Le/a/i/v/i;->j:Ljava/lang/String;

    .line 24
    iget-object v4, v1, Le/a/i/v/i;->k:Ljava/lang/String;

    .line 25
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    .line 26
    iget-object v4, v1, Le/a/i/v/i;->l:Ljava/lang/String;

    .line 27
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    .line 28
    iget-object v4, v1, Le/a/i/v/i;->m:Ljava/lang/String;

    .line 29
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    .line 30
    iget-object v4, v1, Le/a/i/v/i;->n:Ljava/lang/String;

    .line 31
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    .line 32
    iget-object v4, v1, Le/a/i/v/i;->o:Ljava/lang/Integer;

    if-eqz v4, :cond_7

    .line 33
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 34
    iget-object v4, v1, Le/a/i/v/i;->p:Ljava/lang/Integer;

    if-eqz v4, :cond_7

    .line 35
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    new-instance v4, Lcom/truecaller/ads/adsrouter/model/Size;

    .line 36
    iget-object v5, v1, Le/a/i/v/i;->o:Ljava/lang/Integer;

    .line 37
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 38
    iget-object v6, v1, Le/a/i/v/i;->p:Ljava/lang/Integer;

    .line 39
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v4, v5, v6}, Lcom/truecaller/ads/adsrouter/model/Size;-><init>(II)V

    move-object/from16 v22, v4

    goto :goto_4

    :cond_7
    move-object/from16 v22, v8

    .line 40
    :goto_4
    new-instance v25, Lcom/truecaller/ads/adsrouter/model/Tracking;

    move-object/from16 v24, v25

    .line 41
    iget-object v4, v1, Le/a/i/v/i;->q:Ljava/util/List;

    .line 42
    iget-object v5, v1, Le/a/i/v/i;->r:Ljava/util/List;

    .line 43
    iget-object v6, v1, Le/a/i/v/i;->s:Ljava/util/List;

    .line 44
    iget-object v9, v1, Le/a/i/v/i;->t:Ljava/util/List;

    const/16 v30, 0x0

    const/16 v31, 0x10

    const/16 v32, 0x0

    move-object/from16 v26, v4

    move-object/from16 v27, v5

    move-object/from16 v28, v6

    move-object/from16 v29, v9

    .line 45
    invoke-direct/range {v25 .. v32}, Lcom/truecaller/ads/adsrouter/model/Tracking;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILs1/z/c/f;)V

    .line 46
    new-instance v33, Lcom/truecaller/ads/adsrouter/model/Meta;

    move-object/from16 v25, v33

    .line 47
    iget v4, v1, Le/a/i/v/i;->u:I

    .line 48
    iget-wide v5, v1, Le/a/i/v/i;->v:J

    .line 49
    iget-object v9, v1, Le/a/i/v/i;->w:Ljava/lang/String;

    .line 50
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v37

    .line 51
    iget-object v9, v1, Le/a/i/v/i;->x:Ljava/lang/String;

    .line 52
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    .line 53
    iget-object v9, v1, Le/a/i/v/i;->y:Ljava/lang/String;

    .line 54
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v39

    .line 55
    iget-object v9, v1, Le/a/i/v/i;->z:Ljava/lang/String;

    .line 56
    iget-object v1, v1, Le/a/i/v/i;->A:Ljava/lang/String;

    move/from16 v34, v4

    move-wide/from16 v35, v5

    move-object/from16 v40, v9

    move-object/from16 v41, v1

    .line 57
    invoke-direct/range {v33 .. v41}, Lcom/truecaller/ads/adsrouter/model/Meta;-><init>(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/high16 v28, 0x30000

    const/16 v29, 0x0

    .line 58
    new-instance v1, Lcom/truecaller/ads/adsrouter/model/Ad;

    move-object v9, v1

    const/16 v18, 0x0

    move-object/from16 v17, v3

    invoke-direct/range {v9 .. v29}, Lcom/truecaller/ads/adsrouter/model/Ad;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/ads/adsrouter/model/Size;Ljava/lang/String;Lcom/truecaller/ads/adsrouter/model/Tracking;Lcom/truecaller/ads/adsrouter/model/Meta;Lcom/truecaller/ads/offline/dto/OfflineAdsDto;Lcom/truecaller/ads/adsrouter/model/Capping;ILs1/z/c/f;)V

    .line 59
    sget-object v3, Le/a/i/c/a/u$c;->b:Le/a/i/c/a/u$c;

    invoke-virtual {v1, v3}, Lcom/truecaller/ads/adsrouter/model/Ad;->setAdSource(Le/a/i/c/a/u;)V

    .line 60
    invoke-direct {v2, v1, v8, v7}, Le/a/i/c/c/i;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    move-object v8, v2

    :cond_8
    return-object v8
.end method

.method public e(Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/i/c/d/h$c;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/i/c/d/h$c;

    iget v1, v0, Le/a/i/c/d/h$c;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/i/c/d/h$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/i/c/d/h$c;

    invoke-direct {v0, p0, p1}, Le/a/i/c/d/h$c;-><init>(Le/a/i/c/d/h;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/i/c/d/h$c;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/i/c/d/h$c;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object v2, v0, Le/a/i/c/d/h$c;->g:Ljava/lang/Object;

    check-cast v2, Le/a/i/c/d/h;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/i/c/d/h;->a:Lo3/a;

    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/i/v/f;

    iput-object p0, v0, Le/a/i/c/d/h$c;->g:Ljava/lang/Object;

    iput v4, v0, Le/a/i/c/d/h$c;->e:I

    invoke-interface {p1, v0}, Le/a/i/v/f;->a(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    .line 5
    :goto_1
    iget-object p1, v2, Le/a/i/c/d/h;->b:Lo3/a;

    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/i/d0/c0/m;

    const/4 v2, 0x0

    iput-object v2, v0, Le/a/i/c/d/h$c;->g:Ljava/lang/Object;

    iput v3, v0, Le/a/i/c/d/h$c;->e:I

    invoke-interface {p1, v0}, Le/a/i/d0/c0/m;->a(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    .line 6
    :cond_5
    :goto_2
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public f(Lcom/truecaller/ads/adsrouter/model/Ad;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/ads/adsrouter/model/Ad;",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v15, p2

    move-object/from16 v14, p0

    .line 1
    iget-object v0, v14, Le/a/i/c/d/h;->a:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Le/a/i/v/f;

    const-string v0, "$this$mapToEntity"

    move-object/from16 v1, p1

    .line 2
    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "placement"

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v12, Le/a/i/v/i;

    .line 4
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/ads/adsrouter/model/Ad;->getAdType()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/ads/adsrouter/model/Ad;->getHtmlContent()Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/ads/adsrouter/model/Ad;->getVideoUrl()Ljava/lang/String;

    move-result-object v4

    .line 7
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/ads/adsrouter/model/Ad;->getLogo()Ljava/lang/String;

    move-result-object v5

    .line 8
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/ads/adsrouter/model/Ad;->getImage()Ljava/lang/String;

    move-result-object v6

    .line 9
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/ads/adsrouter/model/Ad;->getTitle()Ljava/lang/String;

    move-result-object v7

    .line 10
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/ads/adsrouter/model/Ad;->getBody()Ljava/lang/String;

    move-result-object v8

    .line 11
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/ads/adsrouter/model/Ad;->getLandingUrl()Ljava/lang/String;

    move-result-object v9

    .line 12
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/ads/adsrouter/model/Ad;->getCta()Ljava/lang/String;

    move-result-object v10

    .line 13
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/ads/adsrouter/model/Ad;->getEcpm()Ljava/lang/String;

    move-result-object v11

    .line 14
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/ads/adsrouter/model/Ad;->getRawEcpm()Ljava/lang/String;

    move-result-object v28

    .line 15
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/ads/adsrouter/model/Ad;->getAdvertiserName()Ljava/lang/String;

    move-result-object v29

    .line 16
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/ads/adsrouter/model/Ad;->getSize()Lcom/truecaller/ads/adsrouter/model/Size;

    move-result-object v0

    const/16 v16, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/truecaller/ads/adsrouter/model/Size;->getHeight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v30, v0

    goto :goto_0

    :cond_0
    move-object/from16 v30, v16

    .line 17
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/ads/adsrouter/model/Ad;->getSize()Lcom/truecaller/ads/adsrouter/model/Size;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/truecaller/ads/adsrouter/model/Size;->getWidth()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v31, v0

    goto :goto_1

    :cond_1
    move-object/from16 v31, v16

    .line 18
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/ads/adsrouter/model/Ad;->getTracking()Lcom/truecaller/ads/adsrouter/model/Tracking;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/ads/adsrouter/model/Tracking;->getClick()Ljava/util/List;

    move-result-object v16

    .line 19
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/ads/adsrouter/model/Ad;->getTracking()Lcom/truecaller/ads/adsrouter/model/Tracking;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/ads/adsrouter/model/Tracking;->getImpression()Ljava/util/List;

    move-result-object v17

    .line 20
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/ads/adsrouter/model/Ad;->getTracking()Lcom/truecaller/ads/adsrouter/model/Tracking;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/ads/adsrouter/model/Tracking;->getViewImpression()Ljava/util/List;

    move-result-object v18

    .line 21
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/ads/adsrouter/model/Ad;->getTracking()Lcom/truecaller/ads/adsrouter/model/Tracking;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/ads/adsrouter/model/Tracking;->getVideoImpression()Ljava/util/List;

    move-result-object v19

    .line 22
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/ads/adsrouter/model/Ad;->getMeta()Lcom/truecaller/ads/adsrouter/model/Meta;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/ads/adsrouter/model/Meta;->getTtl()I

    move-result v20

    .line 23
    new-instance v0, Lw3/b/a/b;

    invoke-direct {v0}, Lw3/b/a/b;-><init>()V

    .line 24
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/ads/adsrouter/model/Ad;->getMeta()Lcom/truecaller/ads/adsrouter/model/Meta;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/truecaller/ads/adsrouter/model/Meta;->getTtl()I

    move-result v1

    invoke-virtual {v0, v1}, Lw3/b/a/b;->G(I)Lw3/b/a/b;

    move-result-object v0

    const-string v1, "DateTime.now().plusMinutes(meta.ttl)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iget-wide v0, v0, Lw3/b/a/e0/e;->a:J

    move-wide/from16 v21, v0

    .line 26
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/ads/adsrouter/model/Ad;->getMeta()Lcom/truecaller/ads/adsrouter/model/Meta;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/ads/adsrouter/model/Meta;->getPartner()Ljava/lang/String;

    move-result-object v23

    .line 27
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/ads/adsrouter/model/Ad;->getMeta()Lcom/truecaller/ads/adsrouter/model/Meta;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/ads/adsrouter/model/Meta;->getCampaignType()Ljava/lang/String;

    move-result-object v24

    .line 28
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/ads/adsrouter/model/Ad;->getMeta()Lcom/truecaller/ads/adsrouter/model/Meta;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/ads/adsrouter/model/Meta;->getPublisher()Ljava/lang/String;

    move-result-object v25

    .line 29
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/ads/adsrouter/model/Ad;->getMeta()Lcom/truecaller/ads/adsrouter/model/Meta;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/ads/adsrouter/model/Meta;->getPartnerLogo()Ljava/lang/String;

    move-result-object v26

    .line 30
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/ads/adsrouter/model/Ad;->getMeta()Lcom/truecaller/ads/adsrouter/model/Meta;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/ads/adsrouter/model/Meta;->getPartnerPolicy()Ljava/lang/String;

    move-result-object v27

    move-object v0, v12

    move-object/from16 v1, p2

    move-object/from16 v32, v12

    move-object/from16 v12, v28

    move-object/from16 v33, v13

    move-object/from16 v13, v29

    move-object/from16 v14, v30

    move-object/from16 v15, v31

    .line 31
    invoke-direct/range {v0 .. v27}, Le/a/i/v/i;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v3, v32

    move-object/from16 v2, v33

    .line 32
    invoke-interface {v2, v3, v0, v1}, Le/a/i/v/f;->t(Le/a/i/v/i;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne v0, v1, :cond_2

    return-object v0

    .line 33
    :cond_2
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method

.method public g(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 7
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

    instance-of v0, p2, Le/a/i/c/d/h$b;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/i/c/d/h$b;

    iget v1, v0, Le/a/i/c/d/h$b;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/i/c/d/h$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/i/c/d/h$b;

    invoke-direct {v0, p0, p2}, Le/a/i/c/d/h$b;-><init>(Le/a/i/c/d/h;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/i/c/d/h$b;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/i/c/d/h$b;->e:I

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz v2, :cond_3

    if-eq v2, v3, :cond_2

    if-ne v2, v4, :cond_1

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
    iget-object p1, v0, Le/a/i/c/d/h$b;->h:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v2, v0, Le/a/i/c/d/h$b;->g:Ljava/lang/Object;

    check-cast v2, Le/a/i/c/d/h;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Le/a/i/c/d/h;->a:Lo3/a;

    invoke-interface {p2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/i/v/f;

    iput-object p0, v0, Le/a/i/c/d/h$b;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/i/c/d/h$b;->h:Ljava/lang/Object;

    iput v3, v0, Le/a/i/c/d/h$b;->e:I

    invoke-interface {p2, p1, v0}, Le/a/i/v/f;->c(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    .line 5
    :goto_1
    iget-object p2, v2, Le/a/i/c/d/h;->b:Lo3/a;

    invoke-interface {p2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/i/d0/c0/m;

    const-string v2, "["

    const/4 v3, 0x0

    .line 6
    invoke-static {p1, v2, v3, v4}, Ls1/f0/v;->a0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const-string v2, "]"

    invoke-static {p1, v2, v3, v4}, Ls1/f0/v;->e0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const-string v2, ","

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x6

    invoke-static {p1, v2, v5, v5, v6}, Ls1/f0/v;->U(Ljava/lang/CharSequence;[Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 7
    iput-object v3, v0, Le/a/i/c/d/h$b;->g:Ljava/lang/Object;

    iput-object v3, v0, Le/a/i/c/d/h$b;->h:Ljava/lang/Object;

    iput v4, v0, Le/a/i/c/d/h$b;->e:I

    invoke-interface {p2, p1, v0}, Le/a/i/d0/c0/m;->c(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    .line 8
    :cond_5
    :goto_2
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
