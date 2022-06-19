.class public final Le/a/i/d0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/i/d0/a;
.implements Le/a/i/d0/z;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/i/d0/d$a;
    }
.end annotation


# instance fields
.field public final a:Le/m/e/k;

.field public b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/truecaller/ads/mediation/model/Partner;",
            "+",
            "Le/a/i/d0/a0/l;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ls1/g;

.field public final d:Ls1/g;

.field public e:Le/a/i/c/d/l;

.field public final f:Ls1/w/f;

.field public final g:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/i/d0/a0/m;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Le/a/u3/g;

.field public final i:Le/a/p5/c;

.field public final j:Le/a/p5/u;

.field public final k:Le/a/p5/g;

.field public final l:Le/a/q2/a;

.field public final m:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/i/c/d/j;",
            ">;"
        }
    .end annotation
.end field

.field public final n:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/i/d0/g0/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ls1/w/f;Lo3/a;Le/a/u3/g;Le/a/p5/c;Le/a/p5/u;Le/a/p5/g;Le/a/q2/a;Lo3/a;Lo3/a;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/f;",
            "Lo3/a<",
            "Le/a/i/d0/a0/m;",
            ">;",
            "Le/a/u3/g;",
            "Le/a/p5/c;",
            "Le/a/p5/u;",
            "Le/a/p5/g;",
            "Le/a/q2/a;",
            "Lo3/a<",
            "Le/a/i/c/d/j;",
            ">;",
            "Lo3/a<",
            "Le/a/i/d0/g0/a;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "ioContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediationAdapterFactory"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkUtil"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceInfoUtil"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adRouterPixelManager"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "predictiveEcpmManager"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/i/d0/d;->f:Ls1/w/f;

    iput-object p2, p0, Le/a/i/d0/d;->g:Lo3/a;

    iput-object p3, p0, Le/a/i/d0/d;->h:Le/a/u3/g;

    iput-object p4, p0, Le/a/i/d0/d;->i:Le/a/p5/c;

    iput-object p5, p0, Le/a/i/d0/d;->j:Le/a/p5/u;

    iput-object p6, p0, Le/a/i/d0/d;->k:Le/a/p5/g;

    iput-object p7, p0, Le/a/i/d0/d;->l:Le/a/q2/a;

    iput-object p8, p0, Le/a/i/d0/d;->m:Lo3/a;

    iput-object p9, p0, Le/a/i/d0/d;->n:Lo3/a;

    .line 2
    new-instance p1, Le/m/e/k;

    invoke-direct {p1}, Le/m/e/k;-><init>()V

    iput-object p1, p0, Le/a/i/d0/d;->a:Le/m/e/k;

    .line 3
    sget-object p1, Ls1/u/t;->a:Ls1/u/t;

    iput-object p1, p0, Le/a/i/d0/d;->b:Ljava/util/Map;

    .line 4
    sget-object p1, Le/a/i/d0/d$d;->b:Le/a/i/d0/d$d;

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/i/d0/d;->c:Ls1/g;

    .line 5
    new-instance p1, Le/a/i/d0/d$f;

    invoke-direct {p1, p0}, Le/a/i/d0/d$f;-><init>(Le/a/i/d0/d;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/i/d0/d;->d:Ls1/g;

    return-void
.end method

.method public static final e(Le/a/i/d0/d;Le/a/i/d0/j;JLe/a/i/c/d/l;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p1

    .line 1
    invoke-static/range {p0 .. p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Le/a/i/d0/k;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Le/a/i/d0/k;

    .line 4
    iget-object v0, v0, Le/a/i/d0/k;->a:Ljava/lang/Object;

    .line 5
    check-cast v0, Le/a/i/d0/h0/a;

    .line 6
    sget-object v2, Lcom/truecaller/ads/mediation/analytics/InternalEventStatus;->SUCCESS:Lcom/truecaller/ads/mediation/analytics/InternalEventStatus;

    .line 7
    iget-object v6, v0, Le/a/i/d0/h0/a;->a:Ljava/lang/String;

    .line 8
    iget-object v7, v0, Le/a/i/d0/h0/a;->b:Ljava/lang/String;

    .line 9
    invoke-static/range {p6 .. p6}, Le/m/d/y/n;->X(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x600

    move-object/from16 v1, p0

    move-wide/from16 v3, p2

    move-object/from16 v5, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    .line 10
    invoke-static/range {v1 .. v14}, Le/a/i/d0/d;->k(Le/a/i/d0/d;Lcom/truecaller/ads/mediation/analytics/InternalEventStatus;JLe/a/i/c/d/l;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;I)V

    goto :goto_0

    .line 11
    :cond_0
    instance-of v1, v0, Le/a/i/d0/i;

    if-eqz v1, :cond_1

    .line 12
    sget-object v3, Lcom/truecaller/ads/mediation/analytics/InternalEventStatus;->FAILURE:Lcom/truecaller/ads/mediation/analytics/InternalEventStatus;

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 13
    invoke-static/range {p6 .. p6}, Le/m/d/y/n;->X(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 14
    check-cast v0, Le/a/i/d0/i;

    .line 15
    iget-object v1, v0, Le/a/i/d0/i;->a:Le/a/i/c/b/a;

    .line 16
    iget v1, v1, Le/a/i/c/b/a;->a:I

    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 18
    iget-object v0, v0, Le/a/i/d0/i;->a:Le/a/i/c/b/a;

    .line 19
    iget-object v14, v0, Le/a/i/c/b/a;->b:Ljava/lang/String;

    const/16 v15, 0x18

    move-object/from16 v2, p0

    move-wide/from16 v4, p2

    move-object/from16 v6, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    .line 20
    invoke-static/range {v2 .. v15}, Le/a/i/d0/d;->k(Le/a/i/d0/d;Lcom/truecaller/ads/mediation/analytics/InternalEventStatus;JLe/a/i/c/d/l;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static k(Le/a/i/d0/d;Lcom/truecaller/ads/mediation/analytics/InternalEventStatus;JLe/a/i/c/d/l;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;I)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move/from16 v2, p13

    and-int/lit8 v3, v2, 0x8

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    move-object/from16 v18, v4

    goto :goto_0

    :cond_0
    move-object/from16 v18, p5

    :goto_0
    and-int/lit8 v3, v2, 0x10

    if-eqz v3, :cond_1

    move-object/from16 v19, v4

    goto :goto_1

    :cond_1
    move-object/from16 v19, p6

    :goto_1
    and-int/lit16 v3, v2, 0x200

    if-eqz v3, :cond_2

    move-object/from16 v16, v4

    goto :goto_2

    :cond_2
    move-object/from16 v16, p11

    :goto_2
    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_3

    move-object/from16 v17, v4

    goto :goto_3

    :cond_3
    move-object/from16 v17, p12

    .line 1
    :goto_3
    new-instance v2, Le/a/i/d0/b0/a;

    .line 2
    iget-object v6, v1, Le/a/i/c/d/l;->c:Ljava/util/List;

    .line 3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    .line 4
    iget-object v3, v0, Le/a/i/d0/d;->i:Le/a/p5/c;

    invoke-interface {v3}, Le/a/p5/c;->a()J

    move-result-wide v8

    sub-long v8, v8, p2

    .line 5
    iget-object v3, v1, Le/a/i/c/d/l;->e:Ljava/util/List;

    if-eqz v3, :cond_4

    .line 6
    invoke-static {v3}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    :cond_4
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 7
    iget-object v3, v0, Le/a/i/d0/d;->j:Le/a/p5/u;

    invoke-interface {v3}, Le/a/p5/u;->b()Ljava/lang/String;

    move-result-object v12

    .line 8
    iget-object v3, v1, Le/a/i/c/d/l;->b:Ljava/lang/String;

    move-object/from16 v20, v3

    .line 9
    sget-object v21, Le/a/i/c/a/u$b;->b:Le/a/i/c/a/u$b;

    .line 10
    iget-object v3, v0, Le/a/i/d0/d;->k:Le/a/p5/g;

    invoke-interface {v3}, Le/a/p5/g;->j()Ljava/lang/String;

    move-result-object v22

    .line 11
    iget-object v3, v0, Le/a/i/d0/d;->k:Le/a/p5/g;

    invoke-interface {v3}, Le/a/p5/g;->u()Ljava/lang/String;

    move-result-object v23

    .line 12
    iget-object v1, v1, Le/a/i/c/d/l;->i:Le/a/i/f;

    move-object/from16 v24, v1

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/high16 v27, 0xc0000

    move-object v5, v2

    move-object/from16 v11, p7

    move-object/from16 v13, p9

    move-object/from16 v14, p8

    move-object/from16 v15, p10

    .line 13
    invoke-direct/range {v5 .. v27}, Le/a/i/d0/b0/a;-><init>(Ljava/util/List;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Le/a/i/c/a/u;Ljava/lang/String;Ljava/lang/String;Le/a/i/f;Ljava/util/List;Ljava/lang/String;I)V

    .line 14
    iget-object v0, v0, Le/a/i/d0/d;->l:Le/a/q2/a;

    invoke-interface {v0, v2}, Le/a/q2/a;->b(Le/a/q2/v;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Le/a/i/c/d/l;Ls1/w/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Le/a/i/c/d/l;",
            "Ls1/w/d<",
            "-",
            "Le/a/i/d0/j<",
            "+",
            "Ljava/lang/Object;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    sget-object v0, Ls1/u/s;->a:Ls1/u/s;

    invoke-virtual {p0, p1, p2, v0, p3}, Le/a/i/d0/d;->m(Landroid/content/Context;Le/a/i/c/d/l;Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "partnerId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adType"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/truecaller/ads/adslogger/AdsPixel;->IMPRESSION:Lcom/truecaller/ads/adslogger/AdsPixel;

    invoke-virtual {v0}, Lcom/truecaller/ads/adslogger/AdsPixel;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Le/a/i/d0/d;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "partnerId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adType"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/truecaller/ads/adslogger/AdsPixel;->CLICK:Lcom/truecaller/ads/adslogger/AdsPixel;

    invoke-virtual {v0}, Lcom/truecaller/ads/adslogger/AdsPixel;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Le/a/i/d0/d;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "partnerId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adType"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/truecaller/ads/adslogger/AdsPixel;->VIEW:Lcom/truecaller/ads/adslogger/AdsPixel;

    invoke-virtual {v0}, Lcom/truecaller/ads/adslogger/AdsPixel;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Le/a/i/d0/d;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public destroy()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Le/a/i/d0/d;->g()Lq3/a/y;

    move-result-object v0

    invoke-interface {v0}, Lq3/a/p1;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Le/a/i/d0/d;->g()Lq3/a/y;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Ls1/a/a/a/v0/f/d;->Y(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/i/d0/d;->b:Ljava/util/Map;

    .line 3
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/i/d0/a0/l;

    invoke-interface {v1}, Le/a/i/d0/a0/l;->destroy()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final f()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lq3/a/n0<",
            "Le/a/i/d0/i;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/a/i/d0/d;->i()Lq3/a/i0;

    move-result-object v0

    new-instance v3, Le/a/i/d0/d$b;

    const/4 v1, 0x0

    invoke-direct {v3, v1}, Le/a/i/d0/d$b;-><init>(Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->H(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/n0;

    move-result-object v0

    invoke-static {v0}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final g()Lq3/a/y;
    .locals 1

    iget-object v0, p0, Le/a/i/d0/d;->c:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq3/a/y;

    return-object v0
.end method

.method public final h(Lcom/truecaller/ads/mediation/model/Partner;Ljava/lang/String;)Lcom/truecaller/ads/mediation/model/Placement;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/truecaller/ads/mediation/model/Partner;->getPlacement()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/truecaller/ads/mediation/model/Placement;

    invoke-virtual {v2}, Lcom/truecaller/ads/mediation/model/Placement;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    check-cast v0, Lcom/truecaller/ads/mediation/model/Placement;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/truecaller/ads/mediation/model/Placement;->getEnable()Z

    move-result p1

    if-eqz p1, :cond_2

    move-object v1, v0

    :cond_2
    return-object v1
.end method

.method public final i()Lq3/a/i0;
    .locals 1

    iget-object v0, p0, Le/a/i/d0/d;->d:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq3/a/i0;

    return-object v0
.end method

.method public final j(Le/a/i/d0/j;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/i/d0/j<",
            "+",
            "Le/a/i/d0/h0/a;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Ls1/s;->a:Ls1/s;

    instance-of v1, p5, Le/a/i/d0/d$c;

    if-eqz v1, :cond_0

    move-object v1, p5

    check-cast v1, Le/a/i/d0/d$c;

    iget v2, v1, Le/a/i/d0/d$c;->e:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Le/a/i/d0/d$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v1, Le/a/i/d0/d$c;

    invoke-direct {v1, p0, p5}, Le/a/i/d0/d$c;-><init>(Le/a/i/d0/d;Ls1/w/d;)V

    :goto_0
    iget-object p5, v1, Le/a/i/d0/d$c;->d:Ljava/lang/Object;

    sget-object v2, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v3, v1, Le/a/i/d0/d$c;->e:I

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v4, :cond_1

    iget-object p1, v1, Le/a/i/d0/d$c;->g:Ljava/lang/Object;

    check-cast p1, Le/a/i/d0/j;

    invoke-static {p5}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p5}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p5, p0, Le/a/i/d0/d;->h:Le/a/u3/g;

    .line 5
    iget-object v3, p5, Le/a/u3/g;->C5:Le/a/u3/g$a;

    sget-object v5, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v6, 0x15a

    aget-object v5, v5, v6

    invoke-virtual {v3, p5, v5}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object p5

    .line 6
    invoke-interface {p5}, Le/a/u3/b;->isEnabled()Z

    move-result p5

    if-nez p5, :cond_3

    return-object v0

    .line 7
    :cond_3
    instance-of p5, p1, Le/a/i/d0/k;

    if-eqz p5, :cond_5

    .line 8
    iget-object p5, p0, Le/a/i/d0/d;->n:Lo3/a;

    invoke-interface {p5}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Le/a/i/d0/g0/a;

    iput-object p1, v1, Le/a/i/d0/d$c;->g:Ljava/lang/Object;

    iput v4, v1, Le/a/i/d0/d$c;->e:I

    invoke-interface {p5, p2, p3, p4, v1}, Le/a/i/d0/g0/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p5

    if-ne p5, v2, :cond_4

    return-object v2

    :cond_4
    :goto_1
    check-cast p5, Ljava/lang/String;

    if-eqz p5, :cond_5

    .line 9
    check-cast p1, Le/a/i/d0/k;

    .line 10
    iget-object p1, p1, Le/a/i/d0/k;->a:Ljava/lang/Object;

    .line 11
    check-cast p1, Le/a/i/d0/h0/a;

    invoke-virtual {p1, p5}, Le/a/i/d0/h0/a;->a(Ljava/lang/String;)V

    :cond_5
    return-object v0
.end method

.method public final l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/i/d0/d;->e:Le/a/i/c/d/l;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Le/a/i/d0/d;->m:Lo3/a;

    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/i/c/d/j;

    invoke-interface {v1, p1, v0, p2, p3}, Le/a/i/c/d/j;->a(Ljava/lang/String;Le/a/i/c/d/l;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public m(Landroid/content/Context;Le/a/i/c/d/l;Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Le/a/i/c/d/l;",
            "Ljava/util/List<",
            "+",
            "Le/a/i/d0/a0/l;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Le/a/i/d0/j<",
            "+",
            "Ljava/lang/Object;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v3, p2

    move-object/from16 v0, p4

    instance-of v1, v0, Le/a/i/d0/d$e;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Le/a/i/d0/d$e;

    iget v2, v1, Le/a/i/d0/d$e;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v2, v4

    if-eqz v5, :cond_0

    sub-int/2addr v2, v4

    iput v2, v1, Le/a/i/d0/d$e;->e:I

    goto :goto_0

    :cond_0
    new-instance v1, Le/a/i/d0/d$e;

    invoke-direct {v1, v10, v0}, Le/a/i/d0/d$e;-><init>(Le/a/i/d0/d;Ls1/w/d;)V

    :goto_0
    move-object v11, v1

    iget-object v0, v11, Le/a/i/d0/d$e;->d:Ljava/lang/Object;

    sget-object v12, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, v11, Le/a/i/d0/d$e;->e:I

    const/4 v13, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v13, :cond_1

    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_b

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_2
    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iput-object v3, v10, Le/a/i/d0/d;->e:Le/a/i/c/d/l;

    .line 5
    iget-object v0, v3, Le/a/i/c/d/l;->e:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 6
    invoke-static {v0}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    :cond_3
    move-object v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 7
    iget-object v2, v10, Le/a/i/d0/d;->h:Le/a/u3/g;

    .line 8
    iget-object v4, v2, Le/a/u3/g;->S3:Le/a/u3/g$a;

    sget-object v5, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v6, 0xff

    aget-object v5, v5, v6

    invoke-virtual {v4, v2, v5}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v2

    check-cast v2, Le/a/u3/i;

    .line 9
    invoke-interface {v2}, Le/a/u3/i;->g()Ljava/lang/String;

    move-result-object v2

    .line 10
    invoke-static {v2}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_2

    :cond_4
    move-object v2, v1

    :goto_2
    const/16 v4, 0x10

    const/16 v5, 0xa

    if-eqz v2, :cond_9

    .line 11
    :try_start_0
    iget-object v6, v10, Le/a/i/d0/d;->a:Le/m/e/k;

    .line 12
    new-instance v7, Le/a/i/d0/b;

    invoke-direct {v7}, Le/a/i/d0/b;-><init>()V

    invoke-virtual {v7}, Le/m/e/f0/a;->getType()Ljava/lang/reflect/Type;

    move-result-object v7

    const-string v8, "object : TypeToken<T>() {}.type"

    invoke-static {v7, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v6, v2, v7}, Le/m/e/k;->g(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    const-string v6, "this.fromJson(json, typeToken<T>())"

    invoke-static {v2, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/truecaller/ads/mediation/model/PartnerConfig;

    invoke-virtual {v2}, Lcom/truecaller/ads/mediation/model/PartnerConfig;->getPartner()Ljava/util/List;

    move-result-object v2

    .line 14
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-static {v2, v5}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-static {v7}, Le/q/f/a/d/a;->Y1(I)I

    move-result v7

    if-ge v7, v4, :cond_5

    move v7, v4

    :cond_5
    invoke-direct {v6, v7}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 15
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 16
    move-object v8, v7

    check-cast v8, Lcom/truecaller/ads/mediation/model/Partner;

    .line 17
    invoke-virtual {v10, v8, v0}, Le/a/i/d0/d;->h(Lcom/truecaller/ads/mediation/model/Partner;Ljava/lang/String;)Lcom/truecaller/ads/mediation/model/Placement;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 18
    iget-object v9, v10, Le/a/i/d0/d;->g:Lo3/a;

    invoke-interface {v9}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Le/a/i/d0/a0/m;

    invoke-virtual {v8}, Lcom/truecaller/ads/mediation/model/Partner;->getAdapter()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v9, v8}, Le/a/i/d0/a0/m;->a(Ljava/lang/String;)Le/a/i/d0/a0/l;

    move-result-object v8

    goto :goto_4

    :cond_6
    move-object v8, v1

    .line 19
    :goto_4
    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 20
    :cond_7
    invoke-static {v6}, Le/a/p5/s0/g;->C(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    .line 21
    invoke-static {v0}, Le/q/f/a/d/a;->a0(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    .line 22
    :goto_5
    instance-of v2, v0, Ls1/l$a;

    if-eqz v2, :cond_8

    goto :goto_6

    :cond_8
    move-object v1, v0

    .line 23
    :goto_6
    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_9

    goto :goto_7

    .line 24
    :cond_9
    sget-object v1, Ls1/u/t;->a:Ls1/u/t;

    .line 25
    :goto_7
    invoke-interface/range {p3 .. p3}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v13

    if-eqz v0, :cond_f

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 27
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 28
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/a/i/d0/a0/l;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_a
    move-object/from16 v6, p3

    invoke-static {v6, v0}, Ls1/u/i;->K(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    .line 29
    invoke-static {v0, v5}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-static {v2}, Le/q/f/a/d/a;->Y1(I)I

    move-result v2

    if-ge v2, v4, :cond_b

    goto :goto_9

    :cond_b
    move v4, v2

    .line 30
    :goto_9
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v4}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 31
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 32
    move-object v5, v4

    check-cast v5, Le/a/i/d0/a0/l;

    .line 33
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    .line 34
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 35
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Le/a/i/d0/a0/l;

    invoke-static {v8, v5}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 36
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/truecaller/ads/mediation/model/Partner;

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :cond_d
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Collection contains no element matching the predicate."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    move-object v1, v2

    .line 37
    :cond_f
    iput-object v1, v10, Le/a/i/d0/d;->b:Ljava/util/Map;

    .line 38
    new-instance v0, Le/a/i/d0/c0/f;

    invoke-direct {v0}, Le/a/i/d0/c0/f;-><init>()V

    .line 39
    new-instance v1, Le/a/i/d0/d$a;

    move-object/from16 v2, p1

    invoke-direct {v1, v10, v2, v3}, Le/a/i/d0/d$a;-><init>(Le/a/i/d0/d;Landroid/content/Context;Le/a/i/c/d/l;)V

    const-string v4, "network"

    const-string v14, "$this$wrap"

    .line 40
    invoke-static {v1, v14}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "name"

    invoke-static {v4, v15}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    new-instance v9, Le/a/i/d0/c0/e;

    invoke-direct {v9, v0, v1, v4}, Le/a/i/d0/c0/e;-><init>(Le/a/i/d0/c0/f;Le/a/i/d0/c0/d;Ljava/lang/String;)V

    .line 42
    new-instance v8, Le/a/i/d0/c0/i;

    .line 43
    iget-object v4, v10, Le/a/i/d0/d;->b:Ljava/util/Map;

    iget-object v5, v10, Le/a/i/d0/d;->i:Le/a/p5/c;

    iget-object v6, v10, Le/a/i/d0/d;->j:Le/a/p5/u;

    iget-object v7, v10, Le/a/i/d0/d;->l:Le/a/q2/a;

    iget-object v1, v10, Le/a/i/d0/d;->k:Le/a/p5/g;

    move-object/from16 v16, v1

    move-object v1, v8

    move-object/from16 v3, p2

    move-object v13, v8

    move-object/from16 v8, v16

    move-object v10, v9

    move-object/from16 v9, p0

    .line 44
    invoke-direct/range {v1 .. v9}, Le/a/i/d0/c0/i;-><init>(Landroid/content/Context;Le/a/i/c/d/l;Ljava/util/Map;Le/a/p5/c;Le/a/p5/u;Le/a/q2/a;Le/a/p5/g;Le/a/i/d0/z;)V

    const-string v1, "local"

    .line 45
    invoke-static {v13, v14}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v15}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    new-instance v2, Le/a/i/d0/c0/e;

    invoke-direct {v2, v0, v13, v1}, Le/a/i/d0/c0/e;-><init>(Le/a/i/d0/c0/f;Le/a/i/d0/c0/d;Ljava/lang/String;)V

    const-string v0, "b"

    .line 47
    invoke-static {v10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-static {v2, v10}, Le/m/d/y/n;->Q0(Le/a/i/d0/c0/d;Le/a/i/d0/c0/d;)Le/a/i/d0/c0/d;

    move-result-object v0

    const/4 v1, 0x1

    .line 49
    iput v1, v11, Le/a/i/d0/d$e;->e:I

    .line 50
    sget-object v1, Ls1/s;->a:Ls1/s;

    invoke-interface {v0, v1, v11}, Le/a/i/d0/c0/d;->b(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v12, :cond_10

    return-object v12

    .line 51
    :cond_10
    :goto_b
    check-cast v0, Le/a/i/d0/j;

    if-eqz v0, :cond_11

    goto :goto_c

    :cond_11
    new-instance v0, Le/a/i/d0/i;

    sget-object v1, Le/a/i/d0/p;->d:Le/a/i/d0/p;

    invoke-direct {v0, v1}, Le/a/i/d0/i;-><init>(Le/a/i/c/b/a;)V

    :goto_c
    return-object v0
.end method
