.class public final Le/a/i/e/k/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/i/e/k/a;


# instance fields
.field public final a:Ls1/g;

.field public final b:Landroid/content/Context;

.field public final c:Ls1/w/f;

.field public final d:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/i/c/d/a;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/i/f0/j/c;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/i/v/c;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/i/e/k/e;",
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

.field public final i:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/u3/g;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/i/f0/a;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/i/c/d/j;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Le/a/i/h0/l;

.field public final m:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/i/e/h/a/b;",
            ">;"
        }
    .end annotation
.end field

.field public final n:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/i/e/h/a/e;",
            ">;"
        }
    .end annotation
.end field

.field public final o:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/i/e/h/a/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ls1/w/f;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Le/a/i/h0/l;Lo3/a;Lo3/a;Lo3/a;)V
    .locals 1
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ls1/w/f;",
            "Lo3/a<",
            "Le/a/i/c/d/a;",
            ">;",
            "Lo3/a<",
            "Le/a/i/f0/j/c;",
            ">;",
            "Lo3/a<",
            "Le/a/i/v/c;",
            ">;",
            "Lo3/a<",
            "Le/a/i/e/k/e;",
            ">;",
            "Lo3/a<",
            "Le/a/p5/c;",
            ">;",
            "Lo3/a<",
            "Le/a/u3/g;",
            ">;",
            "Lo3/a<",
            "Le/a/i/f0/a;",
            ">;",
            "Lo3/a<",
            "Le/a/i/c/d/j;",
            ">;",
            "Le/a/i/h0/l;",
            "Lo3/a<",
            "Le/a/i/e/h/a/b;",
            ">;",
            "Lo3/a<",
            "Le/a/i/e/h/a/e;",
            ">;",
            "Lo3/a<",
            "Le/a/i/e/h/a/i;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asyncContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adsProvider"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adUnitIdManager"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adsMediaManager"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlineLeadGenManager"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adsAnalytics"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adRouterPixelManager"

    invoke-static {p10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adsFileUtil"

    invoke-static {p11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlineAdUiConfigDao"

    invoke-static {p12, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlineAdsDao"

    invoke-static {p13, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlineLeadGenDao"

    invoke-static {p14, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/i/e/k/c;->b:Landroid/content/Context;

    iput-object p2, p0, Le/a/i/e/k/c;->c:Ls1/w/f;

    iput-object p3, p0, Le/a/i/e/k/c;->d:Lo3/a;

    iput-object p4, p0, Le/a/i/e/k/c;->e:Lo3/a;

    iput-object p5, p0, Le/a/i/e/k/c;->f:Lo3/a;

    iput-object p6, p0, Le/a/i/e/k/c;->g:Lo3/a;

    iput-object p7, p0, Le/a/i/e/k/c;->h:Lo3/a;

    iput-object p8, p0, Le/a/i/e/k/c;->i:Lo3/a;

    iput-object p9, p0, Le/a/i/e/k/c;->j:Lo3/a;

    iput-object p10, p0, Le/a/i/e/k/c;->k:Lo3/a;

    iput-object p11, p0, Le/a/i/e/k/c;->l:Le/a/i/h0/l;

    iput-object p12, p0, Le/a/i/e/k/c;->m:Lo3/a;

    iput-object p13, p0, Le/a/i/e/k/c;->n:Lo3/a;

    iput-object p14, p0, Le/a/i/e/k/c;->o:Lo3/a;

    .line 2
    new-instance p1, Le/a/i/e/k/d;

    invoke-direct {p1, p0}, Le/a/i/e/k/d;-><init>(Le/a/i/e/k/c;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/i/e/k/c;->a:Ls1/g;

    return-void
.end method


# virtual methods
.method public a(Ls1/w/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/i/e/k/c;->g:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/i/e/k/e;

    invoke-interface {v0, p1}, Le/a/i/e/k/e;->a(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b()V
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/i/e/k/c;->b:Landroid/content/Context;

    const-string v1, "context"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {v0}, Ln3/m0/c0/l;->n(Landroid/content/Context;)Ln3/m0/c0/l;

    move-result-object v1

    const-string v2, "WorkManager.getInstance(context)"

    .line 4
    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-static {}, Le/m/d/y/n;->g0()Ls1/k;

    move-result-object v2

    .line 6
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 7
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v5, "scheduleOneOffAction"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v4, Ln3/m0/f;

    invoke-direct {v4, v3}, Ln3/m0/f;-><init>(Ljava/util/Map;)V

    .line 9
    invoke-static {v4}, Ln3/m0/f;->g(Ln3/m0/f;)[B

    const-string v3, "OfflineAdsWorkAction"

    .line 10
    invoke-static {v1, v3, v0, v2, v4}, Le/a/y2/q/c;->b(Ln3/m0/y;Ljava/lang/String;Landroid/content/Context;Ls1/k;Ln3/m0/f;)Ln3/m0/s;

    return-void
.end method

.method public c(Ls1/w/d;)Ljava/lang/Object;
    .locals 40
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    instance-of v2, v1, Le/a/i/e/k/c$d;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Le/a/i/e/k/c$d;

    iget v3, v2, Le/a/i/e/k/c$d;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Le/a/i/e/k/c$d;->e:I

    goto :goto_0

    :cond_0
    new-instance v2, Le/a/i/e/k/c$d;

    invoke-direct {v2, v0, v1}, Le/a/i/e/k/c$d;-><init>(Le/a/i/e/k/c;Ls1/w/d;)V

    :goto_0
    iget-object v1, v2, Le/a/i/e/k/c$d;->d:Ljava/lang/Object;

    sget-object v3, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v4, v2, Le/a/i/e/k/c$d;->e:I

    const/4 v5, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x2

    if-eqz v4, :cond_4

    if-eq v4, v6, :cond_3

    if-eq v4, v7, :cond_2

    if-ne v4, v5, :cond_1

    iget-object v2, v2, Le/a/i/e/k/c$d;->g:Ljava/lang/Object;

    check-cast v2, Le/a/i/e/h/b/b;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_3

    .line 2
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_2
    iget-object v4, v2, Le/a/i/e/k/c$d;->g:Ljava/lang/Object;

    check-cast v4, Le/a/i/e/k/c;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object v4, v2, Le/a/i/e/k/c$d;->g:Ljava/lang/Object;

    check-cast v4, Le/a/i/e/k/c;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v1, v0, Le/a/i/e/k/c;->i:Lo3/a;

    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/u3/g;

    invoke-virtual {v1}, Le/a/u3/g;->R()Le/a/u3/b;

    move-result-object v1

    invoke-interface {v1}, Le/a/u3/b;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_b

    iput-object v0, v2, Le/a/i/e/k/c$d;->g:Ljava/lang/Object;

    iput v6, v2, Le/a/i/e/k/c$d;->e:I

    invoke-virtual {v0, v2}, Le/a/i/e/k/c;->l(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_5

    return-object v3

    :cond_5
    move-object v4, v0

    :goto_1
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_b

    .line 5
    iget-object v1, v4, Le/a/i/e/k/c;->n:Lo3/a;

    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/i/e/h/a/e;

    iput-object v4, v2, Le/a/i/e/k/c$d;->g:Ljava/lang/Object;

    iput v7, v2, Le/a/i/e/k/c$d;->e:I

    invoke-interface {v1, v2}, Le/a/i/e/h/a/e;->i(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_6

    return-object v3

    :cond_6
    :goto_2
    check-cast v1, Le/a/i/e/h/b/b;

    if-eqz v1, :cond_a

    .line 6
    iput-object v1, v2, Le/a/i/e/k/c$d;->g:Ljava/lang/Object;

    iput v5, v2, Le/a/i/e/k/c$d;->e:I

    invoke-virtual {v4, v1, v2}, Le/a/i/e/k/c;->n(Le/a/i/e/h/b/b;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v3, :cond_7

    return-object v3

    :cond_7
    move-object/from16 v39, v2

    move-object v2, v1

    move-object/from16 v1, v39

    :goto_3
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v1, Le/a/i/c/c/g;

    const/4 v2, 0x5

    const-string v3, "Limit to show offline ad exhausted"

    invoke-direct {v1, v2, v3}, Le/a/i/c/c/g;-><init>(ILjava/lang/String;)V

    return-object v1

    .line 7
    :cond_8
    new-instance v1, Le/a/i/c/c/i;

    const-string v3, "$this$mapToAd"

    .line 8
    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-object v9, v2, Le/a/i/e/h/b/b;->b:Ljava/lang/String;

    .line 10
    iget-object v3, v2, Le/a/i/e/h/b/b;->c:Ljava/lang/String;

    .line 11
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 12
    iget-object v3, v2, Le/a/i/e/h/b/b;->d:Landroid/net/Uri;

    .line 13
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 14
    iget-object v3, v2, Le/a/i/e/h/b/b;->e:Landroid/net/Uri;

    .line 15
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 16
    iget-object v3, v2, Le/a/i/e/h/b/b;->f:Landroid/net/Uri;

    .line 17
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 18
    iget-object v3, v2, Le/a/i/e/h/b/b;->g:Ljava/lang/String;

    .line 19
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 20
    iget-object v3, v2, Le/a/i/e/h/b/b;->h:Ljava/lang/String;

    .line 21
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 22
    iget-object v3, v2, Le/a/i/e/h/b/b;->i:Ljava/lang/String;

    .line 23
    iget-object v4, v2, Le/a/i/e/h/b/b;->j:Ljava/lang/String;

    .line 24
    iget-object v5, v2, Le/a/i/e/h/b/b;->k:Ljava/lang/String;

    .line 25
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .line 26
    iget-object v5, v2, Le/a/i/e/h/b/b;->l:Ljava/lang/String;

    .line 27
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    .line 28
    iget-object v5, v2, Le/a/i/e/h/b/b;->m:Ljava/lang/String;

    .line 29
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    .line 30
    iget-object v5, v2, Le/a/i/e/h/b/b;->n:Ljava/lang/String;

    .line 31
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    .line 32
    iget-object v5, v2, Le/a/i/e/h/b/b;->o:Ljava/lang/Integer;

    if-eqz v5, :cond_9

    .line 33
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 34
    iget-object v5, v2, Le/a/i/e/h/b/b;->p:Ljava/lang/Integer;

    if-eqz v5, :cond_9

    .line 35
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    new-instance v5, Lcom/truecaller/ads/adsrouter/model/Size;

    .line 36
    iget-object v8, v2, Le/a/i/e/h/b/b;->o:Ljava/lang/Integer;

    .line 37
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 38
    iget-object v6, v2, Le/a/i/e/h/b/b;->p:Ljava/lang/Integer;

    .line 39
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v5, v8, v6}, Lcom/truecaller/ads/adsrouter/model/Size;-><init>(II)V

    move-object/from16 v21, v5

    goto :goto_4

    :cond_9
    const/16 v21, 0x0

    .line 40
    :goto_4
    new-instance v24, Lcom/truecaller/ads/adsrouter/model/Tracking;

    move-object/from16 v23, v24

    .line 41
    iget-object v5, v2, Le/a/i/e/h/b/b;->q:Ljava/util/List;

    .line 42
    iget-object v6, v2, Le/a/i/e/h/b/b;->r:Ljava/util/List;

    .line 43
    iget-object v8, v2, Le/a/i/e/h/b/b;->s:Ljava/util/List;

    .line 44
    iget-object v7, v2, Le/a/i/e/h/b/b;->t:Ljava/util/List;

    .line 45
    iget-object v0, v2, Le/a/i/e/h/b/b;->u:Ljava/util/List;

    move-object/from16 v25, v5

    move-object/from16 v26, v6

    move-object/from16 v27, v8

    move-object/from16 v28, v7

    move-object/from16 v29, v0

    .line 46
    invoke-direct/range {v24 .. v29}, Lcom/truecaller/ads/adsrouter/model/Tracking;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 47
    new-instance v30, Lcom/truecaller/ads/adsrouter/model/Meta;

    move-object/from16 v24, v30

    .line 48
    iget v0, v2, Le/a/i/e/h/b/b;->v:I

    .line 49
    iget-wide v5, v2, Le/a/i/e/h/b/b;->w:J

    .line 50
    iget-object v7, v2, Le/a/i/e/h/b/b;->x:Ljava/lang/String;

    .line 51
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v34

    .line 52
    iget-object v7, v2, Le/a/i/e/h/b/b;->y:Ljava/lang/String;

    .line 53
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    .line 54
    iget-object v7, v2, Le/a/i/e/h/b/b;->z:Ljava/lang/String;

    .line 55
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v36

    .line 56
    iget-object v7, v2, Le/a/i/e/h/b/b;->A:Ljava/lang/String;

    .line 57
    iget-object v2, v2, Le/a/i/e/h/b/b;->B:Ljava/lang/String;

    move/from16 v31, v0

    move-wide/from16 v32, v5

    move-object/from16 v37, v7

    move-object/from16 v38, v2

    .line 58
    invoke-direct/range {v30 .. v38}, Lcom/truecaller/ads/adsrouter/model/Meta;-><init>(IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/high16 v27, 0x30000

    const/16 v28, 0x0

    .line 59
    new-instance v0, Lcom/truecaller/ads/adsrouter/model/Ad;

    move-object v8, v0

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    invoke-direct/range {v8 .. v28}, Lcom/truecaller/ads/adsrouter/model/Ad;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/ads/adsrouter/model/Size;Ljava/lang/String;Lcom/truecaller/ads/adsrouter/model/Tracking;Lcom/truecaller/ads/adsrouter/model/Meta;Lcom/truecaller/ads/offline/dto/OfflineAdsDto;Lcom/truecaller/ads/adsrouter/model/Capping;ILs1/z/c/f;)V

    .line 60
    sget-object v2, Le/a/i/c/a/u$d;->b:Le/a/i/c/a/u$d;

    invoke-virtual {v0, v2}, Lcom/truecaller/ads/adsrouter/model/Ad;->setAdSource(Le/a/i/c/a/u;)V

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 61
    invoke-direct {v1, v0, v2, v3}, Le/a/i/c/c/i;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    goto :goto_5

    .line 62
    :cond_a
    new-instance v1, Le/a/i/c/c/g;

    const/4 v0, 0x6

    const-string v2, "There is no offline ad in database"

    invoke-direct {v1, v0, v2}, Le/a/i/c/c/g;-><init>(ILjava/lang/String;)V

    goto :goto_5

    .line 63
    :cond_b
    new-instance v1, Le/a/i/c/c/g;

    const/4 v0, 0x4

    const-string v2, "Ad Expired"

    invoke-direct {v1, v0, v2}, Le/a/i/c/c/g;-><init>(ILjava/lang/String;)V

    :goto_5
    return-object v1
.end method

.method public d(Ls1/w/d;)Ljava/lang/Object;
    .locals 48
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Landroidx/work/ListenableWorker$a;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    instance-of v2, v1, Le/a/i/e/k/c$e;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Le/a/i/e/k/c$e;

    iget v3, v2, Le/a/i/e/k/c$e;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Le/a/i/e/k/c$e;->e:I

    goto :goto_0

    :cond_0
    new-instance v2, Le/a/i/e/k/c$e;

    invoke-direct {v2, v0, v1}, Le/a/i/e/k/c$e;-><init>(Le/a/i/e/k/c;Ls1/w/d;)V

    :goto_0
    iget-object v1, v2, Le/a/i/e/k/c$e;->d:Ljava/lang/Object;

    sget-object v9, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v3, v2, Le/a/i/e/k/c$e;->e:I

    const-string v4, "retry()"

    packed-switch v3, :pswitch_data_0

    .line 2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :pswitch_0
    iget-object v2, v2, Le/a/i/e/k/c$e;->g:Ljava/lang/Object;

    check-cast v2, Le/a/i/e/k/c;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_13

    :pswitch_1
    iget-wide v3, v2, Le/a/i/e/k/c$e;->p:J

    iget-object v5, v2, Le/a/i/e/k/c$e;->l:Ljava/lang/Object;

    check-cast v5, Landroid/net/Uri;

    iget-object v6, v2, Le/a/i/e/k/c$e;->k:Ljava/lang/Object;

    check-cast v6, Ls1/z/c/y;

    iget-object v7, v2, Le/a/i/e/k/c$e;->j:Ljava/lang/Object;

    check-cast v7, Landroid/net/Uri;

    iget-object v8, v2, Le/a/i/e/k/c$e;->i:Ljava/lang/Object;

    check-cast v8, Landroid/net/Uri;

    iget-object v11, v2, Le/a/i/e/k/c$e;->h:Ljava/lang/Object;

    check-cast v11, Lcom/truecaller/ads/adsrouter/model/Ad;

    iget-object v12, v2, Le/a/i/e/k/c$e;->g:Ljava/lang/Object;

    check-cast v12, Le/a/i/e/k/c;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_c

    :pswitch_2
    iget-wide v6, v2, Le/a/i/e/k/c$e;->p:J

    iget-object v3, v2, Le/a/i/e/k/c$e;->o:Ljava/lang/Object;

    check-cast v3, Le/a/i/e/k/e;

    iget-object v8, v2, Le/a/i/e/k/c$e;->n:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    iget-object v11, v2, Le/a/i/e/k/c$e;->m:Ljava/lang/Object;

    check-cast v11, Lcom/truecaller/ads/offline/dto/OfflineAdsDto;

    iget-object v12, v2, Le/a/i/e/k/c$e;->l:Ljava/lang/Object;

    check-cast v12, Landroid/net/Uri;

    iget-object v13, v2, Le/a/i/e/k/c$e;->k:Ljava/lang/Object;

    check-cast v13, Ls1/z/c/y;

    iget-object v14, v2, Le/a/i/e/k/c$e;->j:Ljava/lang/Object;

    check-cast v14, Landroid/net/Uri;

    iget-object v15, v2, Le/a/i/e/k/c$e;->i:Ljava/lang/Object;

    check-cast v15, Landroid/net/Uri;

    iget-object v10, v2, Le/a/i/e/k/c$e;->h:Ljava/lang/Object;

    check-cast v10, Lcom/truecaller/ads/adsrouter/model/Ad;

    iget-object v5, v2, Le/a/i/e/k/c$e;->g:Ljava/lang/Object;

    check-cast v5, Le/a/i/e/k/c;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-wide/from16 v43, v6

    move-object v6, v5

    move-object v7, v10

    move-object v5, v11

    move-wide/from16 v10, v43

    goto/16 :goto_b

    :pswitch_3
    iget-wide v5, v2, Le/a/i/e/k/c$e;->p:J

    iget-object v3, v2, Le/a/i/e/k/c$e;->j:Ljava/lang/Object;

    check-cast v3, Landroid/net/Uri;

    iget-object v7, v2, Le/a/i/e/k/c$e;->i:Ljava/lang/Object;

    check-cast v7, Landroid/net/Uri;

    iget-object v8, v2, Le/a/i/e/k/c$e;->h:Ljava/lang/Object;

    check-cast v8, Lcom/truecaller/ads/adsrouter/model/Ad;

    iget-object v10, v2, Le/a/i/e/k/c$e;->g:Ljava/lang/Object;

    check-cast v10, Le/a/i/e/k/c;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_9

    :pswitch_4
    iget-wide v5, v2, Le/a/i/e/k/c$e;->p:J

    iget-object v3, v2, Le/a/i/e/k/c$e;->i:Ljava/lang/Object;

    check-cast v3, Landroid/net/Uri;

    iget-object v7, v2, Le/a/i/e/k/c$e;->h:Ljava/lang/Object;

    check-cast v7, Lcom/truecaller/ads/adsrouter/model/Ad;

    iget-object v8, v2, Le/a/i/e/k/c$e;->g:Ljava/lang/Object;

    check-cast v8, Le/a/i/e/k/c;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_5
    iget-wide v5, v2, Le/a/i/e/k/c$e;->p:J

    iget-object v3, v2, Le/a/i/e/k/c$e;->h:Ljava/lang/Object;

    check-cast v3, Lcom/truecaller/ads/adsrouter/model/Ad;

    iget-object v7, v2, Le/a/i/e/k/c$e;->g:Ljava/lang/Object;

    check-cast v7, Le/a/i/e/k/c;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_6
    iget-wide v5, v2, Le/a/i/e/k/c$e;->p:J

    iget-object v3, v2, Le/a/i/e/k/c$e;->h:Ljava/lang/Object;

    check-cast v3, Lcom/truecaller/ads/adsrouter/model/Ad;

    iget-object v7, v2, Le/a/i/e/k/c$e;->g:Ljava/lang/Object;

    check-cast v7, Le/a/i/e/k/c;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_7
    iget-wide v5, v2, Le/a/i/e/k/c$e;->p:J

    iget-object v3, v2, Le/a/i/e/k/c$e;->g:Ljava/lang/Object;

    check-cast v3, Le/a/i/e/k/c;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_8
    iget-object v3, v2, Le/a/i/e/k/c$e;->g:Ljava/lang/Object;

    check-cast v3, Le/a/i/e/k/c;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_9
    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iput-object v0, v2, Le/a/i/e/k/c$e;->g:Ljava/lang/Object;

    const/4 v1, 0x1

    iput v1, v2, Le/a/i/e/k/c$e;->e:I

    invoke-virtual {v0, v2}, Le/a/i/e/k/c;->l(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v9, :cond_1

    return-object v9

    :cond_1
    move-object v3, v0

    :goto_1
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 5
    iget-object v1, v3, Le/a/i/e/k/c;->h:Lo3/a;

    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/p5/c;

    invoke-interface {v1}, Le/a/p5/c;->a()J

    move-result-wide v5

    .line 6
    iget-object v1, v3, Le/a/i/e/k/c;->d:Lo3/a;

    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/i/c/d/a;

    invoke-virtual {v3}, Le/a/i/e/k/c;->k()Le/a/i/c/d/l;

    move-result-object v7

    iput-object v3, v2, Le/a/i/e/k/c$e;->g:Ljava/lang/Object;

    iput-wide v5, v2, Le/a/i/e/k/c$e;->p:J

    const/4 v8, 0x2

    iput v8, v2, Le/a/i/e/k/c$e;->e:I

    invoke-interface {v1, v7, v2}, Le/a/i/c/d/a;->e(Le/a/i/c/d/l;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v9, :cond_2

    return-object v9

    :cond_2
    :goto_2
    check-cast v1, Lcom/truecaller/ads/adsrouter/model/Ad;

    if-eqz v1, :cond_18

    .line 7
    invoke-virtual {v3}, Le/a/i/e/k/c;->k()Le/a/i/c/d/l;

    move-result-object v7

    .line 8
    iget-object v14, v7, Le/a/i/c/d/l;->c:Ljava/util/List;

    .line 9
    invoke-virtual {v3}, Le/a/i/e/k/c;->k()Le/a/i/c/d/l;

    move-result-object v7

    .line 10
    iget-object v15, v7, Le/a/i/c/d/l;->b:Ljava/lang/String;

    const-string v11, "success"

    move-object v10, v3

    move-wide v12, v5

    .line 11
    invoke-virtual/range {v10 .. v15}, Le/a/i/e/k/c;->m(Ljava/lang/String;JLjava/util/List;Ljava/lang/String;)V

    .line 12
    iput-object v3, v2, Le/a/i/e/k/c$e;->g:Ljava/lang/Object;

    iput-object v1, v2, Le/a/i/e/k/c$e;->h:Ljava/lang/Object;

    iput-wide v5, v2, Le/a/i/e/k/c$e;->p:J

    const/4 v7, 0x3

    iput v7, v2, Le/a/i/e/k/c$e;->e:I

    invoke-virtual {v3, v2}, Le/a/i/e/k/c;->e(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v9, :cond_3

    return-object v9

    :cond_3
    move-object v7, v3

    move-object v3, v1

    .line 13
    :goto_3
    invoke-virtual {v3}, Lcom/truecaller/ads/adsrouter/model/Ad;->getImage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    iput-object v7, v2, Le/a/i/e/k/c$e;->g:Ljava/lang/Object;

    iput-object v3, v2, Le/a/i/e/k/c$e;->h:Ljava/lang/Object;

    iput-wide v5, v2, Le/a/i/e/k/c$e;->p:J

    const/4 v8, 0x4

    iput v8, v2, Le/a/i/e/k/c$e;->e:I

    .line 14
    iget-object v8, v7, Le/a/i/e/k/c;->c:Ls1/w/f;

    new-instance v10, Le/a/i/e/k/b;

    const/4 v11, 0x0

    invoke-direct {v10, v7, v1, v11}, Le/a/i/e/k/b;-><init>(Le/a/i/e/k/c;Ljava/lang/String;Ls1/w/d;)V

    invoke-static {v8, v10, v2}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v9, :cond_4

    return-object v9

    .line 15
    :cond_4
    :goto_4
    check-cast v1, Landroid/net/Uri;

    if-eqz v1, :cond_5

    move-object v8, v7

    goto :goto_5

    .line 16
    :cond_5
    new-instance v1, Landroidx/work/ListenableWorker$a$b;

    invoke-direct {v1}, Landroidx/work/ListenableWorker$a$b;-><init>()V

    .line 17
    invoke-static {v1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1

    :cond_6
    move-object v8, v7

    const/4 v1, 0x0

    :goto_5
    move-object v7, v3

    .line 18
    invoke-virtual {v7}, Lcom/truecaller/ads/adsrouter/model/Ad;->getLogo()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9

    iput-object v8, v2, Le/a/i/e/k/c$e;->g:Ljava/lang/Object;

    iput-object v7, v2, Le/a/i/e/k/c$e;->h:Ljava/lang/Object;

    iput-object v1, v2, Le/a/i/e/k/c$e;->i:Ljava/lang/Object;

    iput-wide v5, v2, Le/a/i/e/k/c$e;->p:J

    const/4 v10, 0x5

    iput v10, v2, Le/a/i/e/k/c$e;->e:I

    .line 19
    iget-object v10, v8, Le/a/i/e/k/c;->c:Ls1/w/f;

    new-instance v11, Le/a/i/e/k/b;

    const/4 v12, 0x0

    invoke-direct {v11, v8, v3, v12}, Le/a/i/e/k/b;-><init>(Le/a/i/e/k/c;Ljava/lang/String;Ls1/w/d;)V

    invoke-static {v10, v11, v2}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v9, :cond_7

    return-object v9

    :cond_7
    move-object/from16 v43, v3

    move-object v3, v1

    move-object/from16 v1, v43

    .line 20
    :goto_6
    check-cast v1, Landroid/net/Uri;

    if-eqz v1, :cond_8

    move-object v10, v8

    :goto_7
    move-object v8, v7

    goto :goto_8

    .line 21
    :cond_8
    new-instance v1, Landroidx/work/ListenableWorker$a$b;

    invoke-direct {v1}, Landroidx/work/ListenableWorker$a$b;-><init>()V

    .line 22
    invoke-static {v1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1

    :cond_9
    move-object v3, v1

    move-object v10, v8

    const/4 v1, 0x0

    goto :goto_7

    .line 23
    :goto_8
    invoke-virtual {v8}, Lcom/truecaller/ads/adsrouter/model/Ad;->getVideoUrl()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_c

    iput-object v10, v2, Le/a/i/e/k/c$e;->g:Ljava/lang/Object;

    iput-object v8, v2, Le/a/i/e/k/c$e;->h:Ljava/lang/Object;

    iput-object v1, v2, Le/a/i/e/k/c$e;->i:Ljava/lang/Object;

    iput-object v3, v2, Le/a/i/e/k/c$e;->j:Ljava/lang/Object;

    iput-wide v5, v2, Le/a/i/e/k/c$e;->p:J

    const/4 v11, 0x6

    iput v11, v2, Le/a/i/e/k/c$e;->e:I

    .line 24
    iget-object v11, v10, Le/a/i/e/k/c;->c:Ls1/w/f;

    new-instance v12, Le/a/i/e/k/b;

    const/4 v13, 0x0

    invoke-direct {v12, v10, v7, v13}, Le/a/i/e/k/b;-><init>(Le/a/i/e/k/c;Ljava/lang/String;Ls1/w/d;)V

    invoke-static {v11, v12, v2}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v9, :cond_a

    return-object v9

    :cond_a
    move-object/from16 v43, v7

    move-object v7, v1

    move-object/from16 v1, v43

    .line 25
    :goto_9
    check-cast v1, Landroid/net/Uri;

    if-eqz v1, :cond_b

    move-object v11, v1

    move-object v1, v7

    goto :goto_a

    .line 26
    :cond_b
    new-instance v1, Landroidx/work/ListenableWorker$a$b;

    invoke-direct {v1}, Landroidx/work/ListenableWorker$a$b;-><init>()V

    .line 27
    invoke-static {v1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1

    :cond_c
    const/4 v11, 0x0

    .line 28
    :goto_a
    new-instance v7, Ls1/z/c/y;

    invoke-direct {v7}, Ls1/z/c/y;-><init>()V

    const/4 v12, 0x0

    iput-boolean v12, v7, Ls1/z/c/y;->a:Z

    .line 29
    invoke-virtual {v8}, Lcom/truecaller/ads/adsrouter/model/Ad;->getOfflineAdsDto()Lcom/truecaller/ads/offline/dto/OfflineAdsDto;

    move-result-object v12

    if-eqz v12, :cond_11

    .line 30
    invoke-virtual {v8}, Lcom/truecaller/ads/adsrouter/model/Ad;->getLandingUrl()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_11

    const-string v14, "$this$getLeadGenIdFromLandingUrl"

    .line 31
    invoke-static {v13, v14}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    const-string v14, "Uri.parse(this)"

    invoke-static {v13, v14}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v13}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_11

    .line 33
    iget-object v14, v10, Le/a/i/e/k/c;->g:Lo3/a;

    invoke-interface {v14}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Le/a/i/e/k/e;

    .line 34
    iput-object v10, v2, Le/a/i/e/k/c$e;->g:Ljava/lang/Object;

    iput-object v8, v2, Le/a/i/e/k/c$e;->h:Ljava/lang/Object;

    iput-object v1, v2, Le/a/i/e/k/c$e;->i:Ljava/lang/Object;

    iput-object v11, v2, Le/a/i/e/k/c$e;->j:Ljava/lang/Object;

    iput-object v7, v2, Le/a/i/e/k/c$e;->k:Ljava/lang/Object;

    iput-object v3, v2, Le/a/i/e/k/c$e;->l:Ljava/lang/Object;

    iput-object v12, v2, Le/a/i/e/k/c$e;->m:Ljava/lang/Object;

    iput-object v13, v2, Le/a/i/e/k/c$e;->n:Ljava/lang/Object;

    iput-object v14, v2, Le/a/i/e/k/c$e;->o:Ljava/lang/Object;

    iput-wide v5, v2, Le/a/i/e/k/c$e;->p:J

    const/4 v15, 0x7

    iput v15, v2, Le/a/i/e/k/c$e;->e:I

    invoke-interface {v14, v12, v2}, Le/a/i/e/k/e;->b(Lcom/truecaller/ads/offline/dto/OfflineAdsDto;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v15

    if-ne v15, v9, :cond_d

    return-object v9

    :cond_d
    move-object/from16 v43, v15

    move-object v15, v1

    move-object/from16 v1, v43

    move-object/from16 v44, v12

    move-object v12, v3

    move-object v3, v14

    move-object v14, v11

    move-object/from16 v45, v13

    move-object v13, v7

    move-object v7, v8

    move-object/from16 v8, v45

    move-wide/from16 v46, v5

    move-object v6, v10

    move-wide/from16 v10, v46

    move-object/from16 v5, v44

    .line 35
    :goto_b
    check-cast v1, Le/a/i/c/c/h;

    .line 36
    instance-of v0, v1, Le/a/i/c/c/i;

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    .line 37
    iput-boolean v0, v13, Ls1/z/c/y;->a:Z

    .line 38
    check-cast v1, Le/a/i/c/c/i;

    .line 39
    iget-object v0, v1, Le/a/i/c/c/i;->a:Ljava/lang/Object;

    .line 40
    check-cast v0, Ljava/util/List;

    invoke-virtual {v7}, Lcom/truecaller/ads/adsrouter/model/Ad;->getTracking()Lcom/truecaller/ads/adsrouter/model/Tracking;

    move-result-object v1

    invoke-virtual {v1}, Lcom/truecaller/ads/adsrouter/model/Tracking;->getThankYouPixels()Ljava/util/List;

    move-result-object v1

    iput-object v6, v2, Le/a/i/e/k/c$e;->g:Ljava/lang/Object;

    iput-object v7, v2, Le/a/i/e/k/c$e;->h:Ljava/lang/Object;

    iput-object v15, v2, Le/a/i/e/k/c$e;->i:Ljava/lang/Object;

    iput-object v14, v2, Le/a/i/e/k/c$e;->j:Ljava/lang/Object;

    iput-object v13, v2, Le/a/i/e/k/c$e;->k:Ljava/lang/Object;

    iput-object v12, v2, Le/a/i/e/k/c$e;->l:Ljava/lang/Object;

    const/4 v4, 0x0

    iput-object v4, v2, Le/a/i/e/k/c$e;->m:Ljava/lang/Object;

    iput-object v4, v2, Le/a/i/e/k/c$e;->n:Ljava/lang/Object;

    iput-object v4, v2, Le/a/i/e/k/c$e;->o:Ljava/lang/Object;

    iput-wide v10, v2, Le/a/i/e/k/c$e;->p:J

    const/16 v4, 0x8

    iput v4, v2, Le/a/i/e/k/c$e;->e:I

    move-object v4, v8

    move-object/from16 v16, v6

    move-object v6, v0

    move-object v0, v7

    move-object v7, v1

    move-object v8, v2

    invoke-interface/range {v3 .. v8}, Le/a/i/e/k/e;->f(Ljava/lang/String;Lcom/truecaller/ads/offline/dto/OfflineAdsDto;Ljava/util/List;Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v9, :cond_e

    return-object v9

    :cond_e
    move-wide v3, v10

    move-object v5, v12

    move-object v6, v13

    move-object v7, v14

    move-object v8, v15

    move-object/from16 v12, v16

    move-object v11, v0

    :goto_c
    move-object v15, v5

    move-object v13, v7

    move-object v14, v8

    move-object v8, v11

    move-object v0, v12

    move-object v7, v6

    move-wide v5, v3

    goto :goto_d

    .line 41
    :cond_f
    instance-of v0, v1, Le/a/i/c/c/g;

    if-eqz v0, :cond_10

    .line 42
    new-instance v0, Landroidx/work/ListenableWorker$a$b;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$b;-><init>()V

    .line 43
    invoke-static {v0, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_10
    new-instance v0, Ls1/i;

    invoke-direct {v0}, Ls1/i;-><init>()V

    throw v0

    :cond_11
    move-object v14, v1

    move-object v15, v3

    move-object v0, v10

    move-object v13, v11

    .line 44
    :goto_d
    iget-object v1, v0, Le/a/i/e/k/c;->n:Lo3/a;

    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/i/e/h/a/e;

    .line 45
    iget-boolean v3, v7, Ls1/z/c/y;->a:Z

    const-string v4, "$this$mapToEntity"

    .line 46
    invoke-static {v8, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    new-instance v4, Le/a/i/e/h/b/b;

    .line 48
    invoke-virtual {v8}, Lcom/truecaller/ads/adsrouter/model/Ad;->getAdType()Ljava/lang/String;

    move-result-object v11

    .line 49
    invoke-virtual {v8}, Lcom/truecaller/ads/adsrouter/model/Ad;->getHtmlContent()Ljava/lang/String;

    move-result-object v12

    .line 50
    invoke-virtual {v8}, Lcom/truecaller/ads/adsrouter/model/Ad;->getTitle()Ljava/lang/String;

    move-result-object v16

    .line 51
    invoke-virtual {v8}, Lcom/truecaller/ads/adsrouter/model/Ad;->getBody()Ljava/lang/String;

    move-result-object v17

    .line 52
    invoke-virtual {v8}, Lcom/truecaller/ads/adsrouter/model/Ad;->getLandingUrl()Ljava/lang/String;

    move-result-object v18

    .line 53
    invoke-virtual {v8}, Lcom/truecaller/ads/adsrouter/model/Ad;->getExternalLandingUrl()Ljava/lang/String;

    move-result-object v19

    .line 54
    invoke-virtual {v8}, Lcom/truecaller/ads/adsrouter/model/Ad;->getCta()Ljava/lang/String;

    move-result-object v20

    .line 55
    invoke-virtual {v8}, Lcom/truecaller/ads/adsrouter/model/Ad;->getEcpm()Ljava/lang/String;

    move-result-object v21

    .line 56
    invoke-virtual {v8}, Lcom/truecaller/ads/adsrouter/model/Ad;->getRawEcpm()Ljava/lang/String;

    move-result-object v22

    .line 57
    invoke-virtual {v8}, Lcom/truecaller/ads/adsrouter/model/Ad;->getAdvertiserName()Ljava/lang/String;

    move-result-object v23

    .line 58
    invoke-virtual {v8}, Lcom/truecaller/ads/adsrouter/model/Ad;->getSize()Lcom/truecaller/ads/adsrouter/model/Size;

    move-result-object v7

    if-eqz v7, :cond_12

    invoke-virtual {v7}, Lcom/truecaller/ads/adsrouter/model/Size;->getHeight()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v24, v7

    goto :goto_e

    :cond_12
    const/16 v24, 0x0

    .line 59
    :goto_e
    invoke-virtual {v8}, Lcom/truecaller/ads/adsrouter/model/Ad;->getSize()Lcom/truecaller/ads/adsrouter/model/Size;

    move-result-object v7

    if-eqz v7, :cond_13

    invoke-virtual {v7}, Lcom/truecaller/ads/adsrouter/model/Size;->getWidth()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v25, v7

    goto :goto_f

    :cond_13
    const/16 v25, 0x0

    .line 60
    :goto_f
    invoke-virtual {v8}, Lcom/truecaller/ads/adsrouter/model/Ad;->getTracking()Lcom/truecaller/ads/adsrouter/model/Tracking;

    move-result-object v7

    invoke-virtual {v7}, Lcom/truecaller/ads/adsrouter/model/Tracking;->getClick()Ljava/util/List;

    move-result-object v26

    .line 61
    invoke-virtual {v8}, Lcom/truecaller/ads/adsrouter/model/Ad;->getTracking()Lcom/truecaller/ads/adsrouter/model/Tracking;

    move-result-object v7

    invoke-virtual {v7}, Lcom/truecaller/ads/adsrouter/model/Tracking;->getImpression()Ljava/util/List;

    move-result-object v27

    .line 62
    invoke-virtual {v8}, Lcom/truecaller/ads/adsrouter/model/Ad;->getTracking()Lcom/truecaller/ads/adsrouter/model/Tracking;

    move-result-object v7

    invoke-virtual {v7}, Lcom/truecaller/ads/adsrouter/model/Tracking;->getViewImpression()Ljava/util/List;

    move-result-object v28

    .line 63
    invoke-virtual {v8}, Lcom/truecaller/ads/adsrouter/model/Ad;->getTracking()Lcom/truecaller/ads/adsrouter/model/Tracking;

    move-result-object v7

    invoke-virtual {v7}, Lcom/truecaller/ads/adsrouter/model/Tracking;->getVideoImpression()Ljava/util/List;

    move-result-object v29

    .line 64
    invoke-virtual {v8}, Lcom/truecaller/ads/adsrouter/model/Ad;->getTracking()Lcom/truecaller/ads/adsrouter/model/Tracking;

    move-result-object v7

    invoke-virtual {v7}, Lcom/truecaller/ads/adsrouter/model/Tracking;->getThankYouPixels()Ljava/util/List;

    move-result-object v30

    .line 65
    invoke-virtual {v8}, Lcom/truecaller/ads/adsrouter/model/Ad;->getMeta()Lcom/truecaller/ads/adsrouter/model/Meta;

    move-result-object v7

    invoke-virtual {v7}, Lcom/truecaller/ads/adsrouter/model/Meta;->getTtl()I

    move-result v31

    .line 66
    invoke-virtual {v8}, Lcom/truecaller/ads/adsrouter/model/Ad;->getMeta()Lcom/truecaller/ads/adsrouter/model/Meta;

    move-result-object v7

    invoke-virtual {v7}, Lcom/truecaller/ads/adsrouter/model/Meta;->getExpireAt()J

    move-result-wide v32

    const-wide/16 v34, 0x0

    cmp-long v7, v32, v34

    if-nez v7, :cond_14

    .line 67
    new-instance v7, Lw3/b/a/b;

    invoke-direct {v7}, Lw3/b/a/b;-><init>()V

    .line 68
    invoke-virtual {v8}, Lcom/truecaller/ads/adsrouter/model/Ad;->getMeta()Lcom/truecaller/ads/adsrouter/model/Meta;

    move-result-object v10

    invoke-virtual {v10}, Lcom/truecaller/ads/adsrouter/model/Meta;->getTtl()I

    move-result v10

    invoke-virtual {v7, v10}, Lw3/b/a/b;->G(I)Lw3/b/a/b;

    move-result-object v7

    const-string v10, "DateTime.now().plusMinutes(meta.ttl)"

    invoke-static {v7, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v42, v9

    .line 69
    iget-wide v9, v7, Lw3/b/a/e0/e;->a:J

    goto :goto_10

    :cond_14
    move-object/from16 v42, v9

    .line 70
    invoke-virtual {v8}, Lcom/truecaller/ads/adsrouter/model/Ad;->getMeta()Lcom/truecaller/ads/adsrouter/model/Meta;

    move-result-object v7

    invoke-virtual {v7}, Lcom/truecaller/ads/adsrouter/model/Meta;->getExpireAt()J

    move-result-wide v9

    :goto_10
    move-wide/from16 v32, v9

    .line 71
    invoke-virtual {v8}, Lcom/truecaller/ads/adsrouter/model/Ad;->getMeta()Lcom/truecaller/ads/adsrouter/model/Meta;

    move-result-object v7

    invoke-virtual {v7}, Lcom/truecaller/ads/adsrouter/model/Meta;->getPartner()Ljava/lang/String;

    move-result-object v34

    .line 72
    invoke-virtual {v8}, Lcom/truecaller/ads/adsrouter/model/Ad;->getMeta()Lcom/truecaller/ads/adsrouter/model/Meta;

    move-result-object v7

    invoke-virtual {v7}, Lcom/truecaller/ads/adsrouter/model/Meta;->getCampaignType()Ljava/lang/String;

    move-result-object v35

    .line 73
    invoke-virtual {v8}, Lcom/truecaller/ads/adsrouter/model/Ad;->getMeta()Lcom/truecaller/ads/adsrouter/model/Meta;

    move-result-object v7

    invoke-virtual {v7}, Lcom/truecaller/ads/adsrouter/model/Meta;->getPublisher()Ljava/lang/String;

    move-result-object v36

    .line 74
    invoke-virtual {v8}, Lcom/truecaller/ads/adsrouter/model/Ad;->getMeta()Lcom/truecaller/ads/adsrouter/model/Meta;

    move-result-object v7

    invoke-virtual {v7}, Lcom/truecaller/ads/adsrouter/model/Meta;->getPartnerLogo()Ljava/lang/String;

    move-result-object v37

    .line 75
    invoke-virtual {v8}, Lcom/truecaller/ads/adsrouter/model/Ad;->getMeta()Lcom/truecaller/ads/adsrouter/model/Meta;

    move-result-object v7

    invoke-virtual {v7}, Lcom/truecaller/ads/adsrouter/model/Meta;->getPartnerPolicy()Ljava/lang/String;

    move-result-object v38

    .line 76
    invoke-virtual {v8}, Lcom/truecaller/ads/adsrouter/model/Ad;->getCapping()Lcom/truecaller/ads/adsrouter/model/Capping;

    move-result-object v7

    if-eqz v7, :cond_15

    invoke-virtual {v7}, Lcom/truecaller/ads/adsrouter/model/Capping;->getImpressionPerUser()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v40, v7

    goto :goto_11

    :cond_15
    const/16 v40, 0x0

    .line 77
    :goto_11
    invoke-virtual {v8}, Lcom/truecaller/ads/adsrouter/model/Ad;->getCapping()Lcom/truecaller/ads/adsrouter/model/Capping;

    move-result-object v7

    if-eqz v7, :cond_16

    invoke-virtual {v7}, Lcom/truecaller/ads/adsrouter/model/Capping;->getClicksPerUser()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v41, v7

    goto :goto_12

    :cond_16
    const/16 v41, 0x0

    :goto_12
    move-object v10, v4

    move/from16 v39, v3

    .line 78
    invoke-direct/range {v10 .. v41}, Le/a/i/e/h/b/b;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;Ljava/lang/Integer;)V

    .line 79
    iput-object v0, v2, Le/a/i/e/k/c$e;->g:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, v2, Le/a/i/e/k/c$e;->h:Ljava/lang/Object;

    iput-object v0, v2, Le/a/i/e/k/c$e;->i:Ljava/lang/Object;

    iput-object v0, v2, Le/a/i/e/k/c$e;->j:Ljava/lang/Object;

    iput-object v0, v2, Le/a/i/e/k/c$e;->k:Ljava/lang/Object;

    iput-object v0, v2, Le/a/i/e/k/c$e;->l:Ljava/lang/Object;

    iput-wide v5, v2, Le/a/i/e/k/c$e;->p:J

    const/16 v0, 0x9

    iput v0, v2, Le/a/i/e/k/c$e;->e:I

    invoke-interface {v1, v4, v2}, Le/a/i/e/h/a/e;->w(Le/a/i/e/h/b/b;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v1, v42

    if-ne v0, v1, :cond_17

    return-object v1

    .line 80
    :cond_17
    :goto_13
    new-instance v0, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    goto :goto_14

    .line 81
    :cond_18
    invoke-virtual {v3}, Le/a/i/e/k/c;->k()Le/a/i/c/d/l;

    move-result-object v0

    .line 82
    iget-object v14, v0, Le/a/i/c/d/l;->c:Ljava/util/List;

    .line 83
    invoke-virtual {v3}, Le/a/i/e/k/c;->k()Le/a/i/c/d/l;

    move-result-object v0

    .line 84
    iget-object v15, v0, Le/a/i/c/d/l;->b:Ljava/lang/String;

    const-string v11, "failure"

    move-object v10, v3

    move-wide v12, v5

    .line 85
    invoke-virtual/range {v10 .. v15}, Le/a/i/e/k/c;->m(Ljava/lang/String;JLjava/util/List;Ljava/lang/String;)V

    .line 86
    new-instance v0, Landroidx/work/ListenableWorker$a$a;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$a;-><init>()V

    const-string v1, "failure()"

    .line 87
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_14
    return-object v0

    .line 88
    :cond_19
    new-instance v0, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    const-string v1, "success()"

    .line 89
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public e(Ls1/w/d;)Ljava/lang/Object;
    .locals 6
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

    instance-of v0, p1, Le/a/i/e/k/c$a;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/i/e/k/c$a;

    iget v1, v0, Le/a/i/e/k/c$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/i/e/k/c$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/i/e/k/c$a;

    invoke-direct {v0, p0, p1}, Le/a/i/e/k/c$a;-><init>(Le/a/i/e/k/c;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/i/e/k/c$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/i/e/k/c$a;->e:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Le/a/i/e/k/c$a;->g:Ljava/lang/Object;

    check-cast v0, Le/a/i/e/k/c;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_3

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object v2, v0, Le/a/i/e/k/c$a;->g:Ljava/lang/Object;

    check-cast v2, Le/a/i/e/k/c;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object v2, v0, Le/a/i/e/k/c$a;->g:Ljava/lang/Object;

    check-cast v2, Le/a/i/e/k/c;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/i/e/k/c;->n:Lo3/a;

    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/i/e/h/a/e;

    iput-object p0, v0, Le/a/i/e/k/c$a;->g:Ljava/lang/Object;

    iput v5, v0, Le/a/i/e/k/c$a;->e:I

    invoke-interface {p1, v0}, Le/a/i/e/h/a/e;->a(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    move-object v2, p0

    .line 5
    :goto_1
    iget-object p1, v2, Le/a/i/e/k/c;->m:Lo3/a;

    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/i/e/h/a/b;

    iput-object v2, v0, Le/a/i/e/k/c$a;->g:Ljava/lang/Object;

    iput v4, v0, Le/a/i/e/k/c$a;->e:I

    invoke-interface {p1, v0}, Le/a/i/e/h/a/b;->a(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    return-object v1

    .line 6
    :cond_6
    :goto_2
    iget-object p1, v2, Le/a/i/e/k/c;->o:Lo3/a;

    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/i/e/h/a/i;

    iput-object v2, v0, Le/a/i/e/k/c$a;->g:Ljava/lang/Object;

    iput v3, v0, Le/a/i/e/k/c$a;->e:I

    invoke-interface {p1, v0}, Le/a/i/e/h/a/i;->a(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    return-object v1

    :cond_7
    move-object v0, v2

    .line 7
    :goto_3
    iget-object p1, v0, Le/a/i/e/k/c;->l:Le/a/i/h0/l;

    const-string v0, "offline_ads"

    .line 8
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "directory"

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance v1, Ljava/io/File;

    iget-object p1, p1, Le/a/i/h0/l;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1}, Le/a/p5/s0/g;->j1(Ljava/io/File;)Z

    .line 10
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public f(Ls1/w/d;)Ljava/lang/Object;
    .locals 1
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

    .line 1
    iget-object v0, p0, Le/a/i/e/k/c;->n:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/i/e/h/a/e;

    invoke-interface {v0, p1}, Le/a/i/e/h/a/e;->f(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, v0, :cond_0

    return-object p1

    .line 2
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public g(Ls1/w/d;)Ljava/lang/Object;
    .locals 1
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

    .line 1
    iget-object v0, p0, Le/a/i/e/k/c;->n:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/i/e/h/a/e;

    invoke-interface {v0, p1}, Le/a/i/e/h/a/e;->g(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, v0, :cond_0

    return-object p1

    .line 2
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public h(Ls1/w/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/i/e/k/c;->k:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/i/c/d/j;

    invoke-interface {v0, p1}, Le/a/i/c/d/j;->c(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public i(Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/i/e/k/c$b;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/i/e/k/c$b;

    iget v1, v0, Le/a/i/e/k/c$b;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/i/e/k/c$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/i/e/k/c$b;

    invoke-direct {v0, p0, p1}, Le/a/i/e/k/c$b;-><init>(Le/a/i/e/k/c;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/i/e/k/c$b;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/i/e/k/c$b;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iput v3, v0, Le/a/i/e/k/c$b;->e:I

    invoke-virtual {p0, v0}, Le/a/i/e/k/c;->c(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    invoke-static {p1}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Le/a/i/c/c/i;

    if-eqz v2, :cond_4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 7
    :cond_5
    invoke-static {v0}, Ls1/u/i;->d(Ljava/lang/Iterable;)Z

    move-result p1

    .line 8
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final j(Le/a/i/e/h/b/b;)Z
    .locals 1

    .line 1
    iget-object v0, p1, Le/a/i/e/h/b/b;->D:Ljava/lang/Integer;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_3

    .line 3
    :goto_0
    iget-object p1, p1, Le/a/i/e/h/b/b;->E:Ljava/lang/Integer;

    if-nez p1, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p1, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 p1, 0x1

    :goto_3
    return p1
.end method

.method public final k()Le/a/i/c/d/l;
    .locals 1

    iget-object v0, p0, Le/a/i/e/k/c;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/i/c/d/l;

    return-object v0
.end method

.method public final l(Ls1/w/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/i/e/k/c$c;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/i/e/k/c$c;

    iget v1, v0, Le/a/i/e/k/c$c;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/i/e/k/c$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/i/e/k/c$c;

    invoke-direct {v0, p0, p1}, Le/a/i/e/k/c$c;-><init>(Le/a/i/e/k/c;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/i/e/k/c$c;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/i/e/k/c$c;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Le/a/i/e/k/c$c;->g:Ljava/lang/Object;

    check-cast v0, Le/a/i/e/k/c;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/i/e/k/c;->n:Lo3/a;

    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/i/e/h/a/e;

    iput-object p0, v0, Le/a/i/e/k/c$c;->g:Ljava/lang/Object;

    iput v3, v0, Le/a/i/e/k/c$c;->e:I

    invoke-interface {p1, v0}, Le/a/i/e/h/a/e;->q(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    :goto_1
    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_2

    :cond_4
    const-wide/16 v1, 0x0

    .line 5
    :goto_2
    iget-object p1, v0, Le/a/i/e/k/c;->h:Lo3/a;

    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/p5/c;

    invoke-interface {p1}, Le/a/p5/c;->c()J

    move-result-wide v4

    cmp-long p1, v4, v1

    if-lez p1, :cond_5

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    .line 6
    :goto_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final m(Ljava/lang/String;JLjava/util/List;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/i/e/k/c;->i:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/u3/g;

    .line 2
    iget-object v1, v0, Le/a/u3/g;->C3:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0xee

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Le/a/i/e/k/c;->j:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Le/a/i/f0/a;

    iget-object v0, p0, Le/a/i/e/k/c;->h:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/p5/c;

    invoke-interface {v0}, Le/a/p5/c;->a()J

    move-result-wide v2

    sub-long v3, v2, p2

    move-object v2, p1

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Le/a/i/f0/a;->b(Ljava/lang/String;JLjava/util/List;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final n(Le/a/i/e/h/b/b;Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/i/e/h/b/b;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/i/e/k/c$f;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/i/e/k/c$f;

    iget v1, v0, Le/a/i/e/k/c$f;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/i/e/k/c$f;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/i/e/k/c$f;

    invoke-direct {v0, p0, p2}, Le/a/i/e/k/c$f;-><init>(Le/a/i/e/k/c;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/i/e/k/c$f;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/i/e/k/c$f;->e:I

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
    iget-boolean p2, p1, Le/a/i/e/h/b/b;->C:Z

    if-nez p2, :cond_3

    .line 5
    invoke-virtual {p0, p1}, Le/a/i/e/k/c;->j(Le/a/i/e/h/b/b;)Z

    move-result p1

    goto :goto_2

    .line 6
    :cond_3
    iput v3, v0, Le/a/i/e/k/c$f;->e:I

    invoke-virtual {p0, p1, v0}, Le/a/i/e/k/c;->o(Le/a/i/e/h/b/b;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 7
    :goto_2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final o(Le/a/i/e/h/b/b;Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/i/e/h/b/b;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/i/e/k/c$g;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/i/e/k/c$g;

    iget v1, v0, Le/a/i/e/k/c$g;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/i/e/k/c$g;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/i/e/k/c$g;

    invoke-direct {v0, p0, p2}, Le/a/i/e/k/c$g;-><init>(Le/a/i/e/k/c;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/i/e/k/c$g;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/i/e/k/c$g;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

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
    invoke-virtual {p0, p1}, Le/a/i/e/k/c;->j(Le/a/i/e/h/b/b;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Le/a/i/e/k/c;->o:Lo3/a;

    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/i/e/h/a/i;

    iput v4, v0, Le/a/i/e/k/c$g;->e:I

    invoke-interface {p1, v0}, Le/a/i/e/h/a/i;->y(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Ljava/lang/Integer;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_2

    :cond_4
    move p1, v3

    :goto_2
    if-lez p1, :cond_6

    :cond_5
    move v3, v4

    .line 5
    :cond_6
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
