.class public final Le/a/i/c/d/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/i/c/d/a;
.implements Lq3/a/i0;


# instance fields
.field public a:Lq3/a/y;

.field public final b:Landroid/content/Context;

.field public final c:Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager;

.field public final d:Le/a/i/e/k/a;

.field public final e:Le/a/i/c/d/j;

.field public final f:Le/a/p5/u;

.field public final g:Le/a/i/c/d/e;

.field public final h:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/u3/g;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/i/d0/a;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Le/a/p5/c;

.field public final k:Le/a/q2/a;

.field public final l:Le/a/p5/g;

.field public final m:Ls1/w/f;

.field public final n:Ls1/w/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager;Le/a/i/e/k/a;Le/a/i/c/d/j;Le/a/p5/u;Le/a/i/c/d/e;Lo3/a;Lo3/a;Le/a/p5/c;Le/a/q2/a;Le/a/p5/g;Ls1/w/f;Ls1/w/f;)V
    .locals 1
    .param p12    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .param p13    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager;",
            "Le/a/i/e/k/a;",
            "Le/a/i/c/d/j;",
            "Le/a/p5/u;",
            "Le/a/i/c/d/e;",
            "Lo3/a<",
            "Le/a/u3/g;",
            ">;",
            "Lo3/a<",
            "Le/a/i/d0/a;",
            ">;",
            "Le/a/p5/c;",
            "Le/a/q2/a;",
            "Le/a/p5/g;",
            "Ls1/w/f;",
            "Ls1/w/f;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adsConfigurationManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlineAdsManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adRouterPixelManager"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkUtil"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adsRepository"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediationManager"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceInfoUtil"

    invoke-static {p11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiContext"

    invoke-static {p12, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asyncContext"

    invoke-static {p13, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/i/c/d/b;->b:Landroid/content/Context;

    iput-object p2, p0, Le/a/i/c/d/b;->c:Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager;

    iput-object p3, p0, Le/a/i/c/d/b;->d:Le/a/i/e/k/a;

    iput-object p4, p0, Le/a/i/c/d/b;->e:Le/a/i/c/d/j;

    iput-object p5, p0, Le/a/i/c/d/b;->f:Le/a/p5/u;

    iput-object p6, p0, Le/a/i/c/d/b;->g:Le/a/i/c/d/e;

    iput-object p7, p0, Le/a/i/c/d/b;->h:Lo3/a;

    iput-object p8, p0, Le/a/i/c/d/b;->i:Lo3/a;

    iput-object p9, p0, Le/a/i/c/d/b;->j:Le/a/p5/c;

    iput-object p10, p0, Le/a/i/c/d/b;->k:Le/a/q2/a;

    iput-object p11, p0, Le/a/i/c/d/b;->l:Le/a/p5/g;

    iput-object p12, p0, Le/a/i/c/d/b;->m:Ls1/w/f;

    iput-object p13, p0, Le/a/i/c/d/b;->n:Ls1/w/f;

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 2
    invoke-static {p1, p2, p1}, Ls1/a/a/a/v0/f/d;->j(Lq3/a/p1;ILjava/lang/Object;)Lq3/a/y;

    move-result-object p1

    iput-object p1, p0, Le/a/i/c/d/b;->a:Lq3/a/y;

    return-void
.end method

.method public static i(Le/a/i/c/d/b;Lcom/truecaller/ads/mediation/analytics/InternalEventStatus;JLe/a/i/c/d/l;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Le/a/i/c/a/u;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;I)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move/from16 v2, p14

    and-int/lit8 v3, v2, 0x8

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    move-object v13, v4

    goto :goto_0

    :cond_0
    move-object/from16 v13, p5

    :goto_0
    and-int/lit8 v3, v2, 0x10

    if-eqz v3, :cond_1

    move-object v15, v4

    goto :goto_1

    :cond_1
    move-object/from16 v15, p6

    :goto_1
    and-int/lit8 v3, v2, 0x20

    if-eqz v3, :cond_2

    move-object/from16 v18, v4

    goto :goto_2

    :cond_2
    move-object/from16 v18, p7

    :goto_2
    and-int/lit8 v3, v2, 0x40

    if-eqz v3, :cond_3

    move-object/from16 v19, v4

    goto :goto_3

    :cond_3
    move-object/from16 v19, p8

    :goto_3
    and-int/lit16 v3, v2, 0x200

    if-eqz v3, :cond_4

    move-object v14, v4

    goto :goto_4

    :cond_4
    move-object/from16 v14, p11

    :goto_4
    and-int/lit16 v3, v2, 0x400

    if-eqz v3, :cond_5

    move-object/from16 v16, v4

    goto :goto_5

    :cond_5
    move-object/from16 v16, p12

    :goto_5
    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_6

    move-object/from16 v17, v4

    goto :goto_6

    :cond_6
    move-object/from16 v17, p13

    .line 1
    :goto_6
    invoke-static/range {p0 .. p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v2, Le/a/i/d0/b0/a;

    .line 3
    iget-object v6, v1, Le/a/i/c/d/l;->c:Ljava/util/List;

    .line 4
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    .line 5
    iget-object v3, v0, Le/a/i/c/d/b;->j:Le/a/p5/c;

    invoke-interface {v3}, Le/a/p5/c;->a()J

    move-result-wide v8

    sub-long v8, v8, p2

    .line 6
    iget-object v3, v1, Le/a/i/c/d/l;->e:Ljava/util/List;

    if-eqz v3, :cond_7

    .line 7
    invoke-static {v3}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    :cond_7
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 8
    iget-object v3, v0, Le/a/i/c/d/b;->f:Le/a/p5/u;

    invoke-interface {v3}, Le/a/p5/u;->b()Ljava/lang/String;

    move-result-object v12

    .line 9
    iget-object v3, v1, Le/a/i/c/d/l;->b:Ljava/lang/String;

    move-object/from16 v20, v3

    .line 10
    iget-object v3, v0, Le/a/i/c/d/b;->l:Le/a/p5/g;

    invoke-interface {v3}, Le/a/p5/g;->j()Ljava/lang/String;

    move-result-object v22

    .line 11
    iget-object v3, v0, Le/a/i/c/d/b;->l:Le/a/p5/g;

    invoke-interface {v3}, Le/a/p5/g;->u()Ljava/lang/String;

    move-result-object v23

    .line 12
    iget-object v1, v1, Le/a/i/c/d/l;->i:Le/a/i/f;

    move-object/from16 v24, v1

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/high16 v27, 0xc0000

    move-object v5, v2

    move-object/from16 v11, p10

    move-object/from16 v21, p9

    .line 13
    invoke-direct/range {v5 .. v27}, Le/a/i/d0/b0/a;-><init>(Ljava/util/List;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Le/a/i/c/a/u;Ljava/lang/String;Ljava/lang/String;Le/a/i/f;Ljava/util/List;Ljava/lang/String;I)V

    .line 14
    iget-object v0, v0, Le/a/i/c/d/b;->k:Le/a/q2/a;

    invoke-interface {v0, v2}, Le/a/q2/a;->b(Le/a/q2/v;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .line 1
    new-instance v3, Le/a/i/c/d/b$g;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Le/a/i/c/d/b$g;-><init>(Le/a/i/c/d/b;Ls1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public b()V
    .locals 6

    .line 1
    new-instance v3, Le/a/i/c/d/b$c;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Le/a/i/c/d/b$c;-><init>(Le/a/i/c/d/b;Ls1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public varargs c([Ljava/lang/String;)V
    .locals 7

    const-string v0, "placement"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v4, Le/a/i/c/d/b$d;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Le/a/i/c/d/b$d;-><init>(Le/a/i/c/d/b;[Ljava/lang/String;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public cancel()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/i/c/d/b;->a:Lq3/a/y;

    invoke-interface {v0}, Lq3/a/p1;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/i/c/d/b;->a:Lq3/a/y;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Ls1/a/a/a/v0/f/d;->Y(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 3
    :cond_0
    iget-object v0, p0, Le/a/i/c/d/b;->h:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/u3/g;

    .line 4
    iget-object v1, v0, Le/a/u3/g;->N3:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0xf9

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Le/a/i/c/d/b;->i:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/i/d0/a;

    invoke-interface {v0}, Le/a/i/d0/a;->destroy()V

    :cond_1
    return-void
.end method

.method public d(Le/a/i/c/d/l;Le/a/i/c/d/i;Z)V
    .locals 10

    const-string v0, "unitConfig"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/i/c/d/b;->c:Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager;

    invoke-interface {v0}, Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2
    new-instance v0, Le/a/i/c/d/b$e;

    const/4 v9, 0x0

    move-object v4, v0

    move-object v5, p0

    move-object v6, p1

    move v7, p3

    move-object v8, p2

    invoke-direct/range {v4 .. v9}, Le/a/i/c/d/b$e;-><init>(Le/a/i/c/d/b;Le/a/i/c/d/l;ZLe/a/i/c/d/i;Ls1/w/d;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public e(Le/a/i/c/d/l;Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/i/c/d/l;",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/ads/adsrouter/model/Ad;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/i/c/d/b$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/i/c/d/b$a;

    iget v1, v0, Le/a/i/c/d/b$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/i/c/d/b$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/i/c/d/b$a;

    invoke-direct {v0, p0, p2}, Le/a/i/c/d/b$a;-><init>(Le/a/i/c/d/b;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/i/c/d/b$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/i/c/d/b$a;->e:I

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
    iget-object p2, p0, Le/a/i/c/d/b;->c:Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager;

    invoke-interface {p2}, Lcom/truecaller/ads/provider/fetch/AdsConfigurationManager;->b()Z

    move-result p2

    if-nez p2, :cond_3

    return-object v3

    .line 5
    :cond_3
    iget-object p2, p0, Le/a/i/c/d/b;->g:Le/a/i/c/d/e;

    invoke-virtual {p0, p1}, Le/a/i/c/d/b;->g(Le/a/i/c/d/l;)Ljava/util/Map;

    move-result-object p1

    const/4 v2, 0x0

    iput v4, v0, Le/a/i/c/d/b$a;->e:I

    check-cast p2, Le/a/i/c/d/f;

    invoke-virtual {p2, p1, v2, v0}, Le/a/i/c/d/f;->a(Ljava/util/Map;ZLs1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    .line 6
    :cond_4
    :goto_1
    check-cast p2, Le/a/i/c/c/h;

    .line 7
    instance-of p1, p2, Le/a/i/c/c/i;

    if-eqz p1, :cond_5

    check-cast p2, Le/a/i/c/c/i;

    .line 8
    iget-object p1, p2, Le/a/i/c/c/i;->a:Ljava/lang/Object;

    .line 9
    move-object v3, p1

    check-cast v3, Lcom/truecaller/ads/adsrouter/model/Ad;

    :cond_5
    return-object v3
.end method

.method public f()V
    .locals 6

    .line 1
    new-instance v3, Le/a/i/c/d/b$b;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Le/a/i/c/d/b$b;-><init>(Le/a/i/c/d/b;Ls1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public final g(Le/a/i/c/d/l;)Ljava/util/Map;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/i/c/d/l;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x5

    new-array v0, v0, [Ls1/k;

    .line 1
    iget-object v1, p1, Le/a/i/c/d/l;->a:Ljava/lang/String;

    .line 2
    new-instance v2, Ls1/k;

    const-string v3, "ad_unit"

    invoke-direct {v2, v3, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x0

    aput-object v2, v0, v1

    .line 3
    iget-object v3, p1, Le/a/i/c/d/l;->c:Ljava/util/List;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x3e

    const-string v4, ","

    .line 4
    invoke-static/range {v3 .. v10}, Ls1/u/i;->O(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object v2

    .line 5
    new-instance v3, Ls1/k;

    const-string v4, "ad_type"

    invoke-direct {v3, v4, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x1

    aput-object v3, v0, v2

    const/4 v3, 0x2

    .line 6
    iget-object v4, p1, Le/a/i/c/d/l;->b:Ljava/lang/String;

    .line 7
    new-instance v5, Ls1/k;

    const-string v6, "req_id"

    invoke-direct {v5, v6, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v0, v3

    const/4 v3, 0x3

    .line 8
    new-instance v4, Ls1/k;

    const-string v5, "pub_id"

    const-string v6, "734f7b23d66740c0abcca5ec9c532200"

    invoke-direct {v4, v5, v6}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v0, v3

    const/4 v3, 0x4

    .line 9
    iget-object v4, p1, Le/a/i/c/d/l;->d:Ljava/lang/String;

    .line 10
    new-instance v6, Ls1/k;

    const-string v7, "source"

    invoke-direct {v6, v7, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v0, v3

    .line 11
    invoke-static {v0}, Ls1/u/i;->e0([Ls1/k;)Ljava/util/Map;

    move-result-object v0

    .line 12
    iget-object v3, p1, Le/a/i/c/d/l;->f:Ljava/lang/Integer;

    if-eqz v3, :cond_0

    .line 13
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 14
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "ad_height"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    :cond_0
    iget-object v3, p1, Le/a/i/c/d/l;->g:Ljava/lang/Integer;

    if-eqz v3, :cond_1

    .line 16
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 17
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "ad_width"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    :cond_1
    iget-object v6, p1, Le/a/i/c/d/l;->e:Ljava/util/List;

    if-eqz v6, :cond_2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x3e

    const-string v7, ","

    .line 19
    invoke-static/range {v6 .. v13}, Ls1/u/i;->O(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ctx"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    :cond_2
    iget-object v3, p1, Le/a/i/c/d/l;->h:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 21
    invoke-interface {v0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    :cond_3
    :try_start_0
    iget-object v3, p0, Le/a/i/c/d/b;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v3

    const-string v4, "AdvertisingIdClient.getAdvertisingIdInfo(context)"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-virtual {v3}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v4

    if-nez v4, :cond_9

    .line 24
    invoke-virtual {v3}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 25
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v4, :cond_5

    :cond_4
    move v1, v2

    :cond_5
    if-nez v1, :cond_9

    goto :goto_1

    :catch_0
    move-exception v1

    .line 26
    instance-of v2, v1, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;

    if-eqz v2, :cond_6

    goto :goto_0

    .line 27
    :cond_6
    instance-of v2, v1, Lcom/google/android/gms/common/GooglePlayServicesRepairableException;

    if-eqz v2, :cond_7

    goto :goto_0

    .line 28
    :cond_7
    instance-of v2, v1, Ljava/io/IOException;

    if-eqz v2, :cond_8

    goto :goto_0

    .line 29
    :cond_8
    instance-of v2, v1, Ljava/lang/SecurityException;

    if-eqz v2, :cond_9

    .line 30
    :goto_0
    invoke-static {v1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    :cond_9
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_a

    const-string v1, "did"

    .line 31
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    :cond_a
    iget-object p1, p1, Le/a/i/c/d/l;->i:Le/a/i/f;

    if-eqz p1, :cond_b

    .line 33
    iget-object p1, p1, Le/a/i/f;->c:Ljava/lang/Integer;

    if-eqz p1, :cond_b

    .line 34
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 35
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "ui_config_version"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    return-object v0
.end method

.method public getCoroutineContext()Ls1/w/f;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/i/c/d/b;->n:Ls1/w/f;

    iget-object v1, p0, Le/a/i/c/d/b;->a:Lq3/a/y;

    invoke-interface {v0, v1}, Ls1/w/f;->plus(Ls1/w/f;)Ls1/w/f;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic h(Ljava/util/Map;ZLs1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;Z",
            "Ls1/w/d<",
            "-",
            "Le/a/i/c/c/h<",
            "Lcom/truecaller/ads/adsrouter/model/Ad;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Le/a/i/c/d/b$f;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Le/a/i/c/d/b$f;

    iget v1, v0, Le/a/i/c/d/b$f;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/i/c/d/b$f;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/i/c/d/b$f;

    invoke-direct {v0, p0, p3}, Le/a/i/c/d/b$f;-><init>(Le/a/i/c/d/b;Ls1/w/d;)V

    :goto_0
    iget-object p3, v0, Le/a/i/c/d/b$f;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/i/c/d/b$f;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p3, p0, Le/a/i/c/d/b;->f:Le/a/p5/u;

    invoke-interface {p3}, Le/a/p5/u;->d()Z

    move-result p3

    if-eqz p3, :cond_5

    .line 5
    iget-object p3, p0, Le/a/i/c/d/b;->g:Le/a/i/c/d/e;

    iput v4, v0, Le/a/i/c/d/b$f;->e:I

    check-cast p3, Le/a/i/c/d/f;

    invoke-virtual {p3, p1, p2, v0}, Le/a/i/c/d/f;->a(Ljava/util/Map;ZLs1/w/d;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    check-cast p3, Le/a/i/c/c/h;

    goto :goto_3

    .line 6
    :cond_5
    iget-object p1, p0, Le/a/i/c/d/b;->d:Le/a/i/e/k/a;

    iput v3, v0, Le/a/i/c/d/b$f;->e:I

    invoke-interface {p1, v0}, Le/a/i/e/k/a;->c(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_6

    return-object v1

    .line 7
    :cond_6
    :goto_2
    check-cast p3, Le/a/i/c/c/h;

    :goto_3
    return-object p3
.end method
