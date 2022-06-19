.class public final Le/a/i/d0/e;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Le/a/i/d0/j<",
        "+",
        "Le/a/i/d0/h0/a;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.ads.mediation.AdPartnerMediationManagerImpl$requestAsync$1"
    f = "AdPartnerMediationManager.kt"
    l = {
        0xc7,
        0xce
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:J

.field public i:I

.field public final synthetic j:Le/a/i/d0/d;

.field public final synthetic k:Le/a/i/d0/a0/q;

.field public final synthetic l:Lcom/truecaller/ads/mediation/model/Placement;

.field public final synthetic m:Landroid/content/Context;

.field public final synthetic n:Le/a/i/c/d/l;

.field public final synthetic o:Ljava/lang/String;

.field public final synthetic p:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/i/d0/d;Le/a/i/d0/a0/q;Lcom/truecaller/ads/mediation/model/Placement;Landroid/content/Context;Le/a/i/c/d/l;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/i/d0/e;->j:Le/a/i/d0/d;

    iput-object p2, p0, Le/a/i/d0/e;->k:Le/a/i/d0/a0/q;

    iput-object p3, p0, Le/a/i/d0/e;->l:Lcom/truecaller/ads/mediation/model/Placement;

    iput-object p4, p0, Le/a/i/d0/e;->m:Landroid/content/Context;

    iput-object p5, p0, Le/a/i/d0/e;->n:Le/a/i/c/d/l;

    iput-object p6, p0, Le/a/i/d0/e;->o:Ljava/lang/String;

    iput-object p7, p0, Le/a/i/d0/e;->p:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p8}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/i/d0/e;

    iget-object v2, p0, Le/a/i/d0/e;->j:Le/a/i/d0/d;

    iget-object v3, p0, Le/a/i/d0/e;->k:Le/a/i/d0/a0/q;

    iget-object v4, p0, Le/a/i/d0/e;->l:Lcom/truecaller/ads/mediation/model/Placement;

    iget-object v5, p0, Le/a/i/d0/e;->m:Landroid/content/Context;

    iget-object v6, p0, Le/a/i/d0/e;->n:Le/a/i/c/d/l;

    iget-object v7, p0, Le/a/i/d0/e;->o:Ljava/lang/String;

    iget-object v8, p0, Le/a/i/d0/e;->p:Ljava/lang/String;

    move-object v1, v0

    move-object v9, p2

    invoke-direct/range {v1 .. v9}, Le/a/i/d0/e;-><init>(Le/a/i/d0/d;Le/a/i/d0/a0/q;Lcom/truecaller/ads/mediation/model/Placement;Landroid/content/Context;Le/a/i/c/d/l;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)V

    iput-object p1, v0, Le/a/i/d0/e;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/i/d0/e;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/i/d0/e;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/i/d0/e;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 28

    move-object/from16 v6, p0

    sget-object v7, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v0, v6, Le/a/i/d0/e;->i:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    iget-wide v0, v6, Le/a/i/d0/e;->h:J

    iget-object v2, v6, Le/a/i/d0/e;->g:Ljava/lang/Object;

    check-cast v2, Le/a/i/d0/j;

    iget-object v3, v6, Le/a/i/d0/e;->f:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v6, Le/a/i/d0/e;->e:Ljava/lang/Object;

    check-cast v4, Lq3/a/i0;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    iget-wide v2, v6, Le/a/i/d0/e;->h:J

    iget-object v0, v6, Le/a/i/d0/e;->f:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v4, v6, Le/a/i/d0/e;->e:Ljava/lang/Object;

    check-cast v4, Lq3/a/i0;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v10, v0

    move-wide v8, v2

    move-object/from16 v2, p1

    goto :goto_0

    :cond_2
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object v0, v6, Le/a/i/d0/e;->e:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lq3/a/i0;

    .line 4
    iget-object v0, v6, Le/a/i/d0/e;->j:Le/a/i/d0/d;

    .line 5
    iget-object v0, v0, Le/a/i/d0/d;->i:Le/a/p5/c;

    .line 6
    invoke-interface {v0}, Le/a/p5/c;->a()J

    move-result-wide v8

    .line 7
    iget-object v0, v6, Le/a/i/d0/e;->j:Le/a/i/d0/d;

    .line 8
    iget-object v0, v0, Le/a/i/d0/d;->j:Le/a/p5/u;

    .line 9
    invoke-interface {v0}, Le/a/p5/u;->b()Ljava/lang/String;

    move-result-object v0

    .line 10
    iget-object v3, v6, Le/a/i/d0/e;->l:Lcom/truecaller/ads/mediation/model/Placement;

    invoke-virtual {v3}, Lcom/truecaller/ads/mediation/model/Placement;->getTimeout()J

    move-result-wide v10

    new-instance v3, Le/a/i/d0/e$a;

    const/4 v5, 0x0

    invoke-direct {v3, v6, v5}, Le/a/i/d0/e$a;-><init>(Le/a/i/d0/e;Ls1/w/d;)V

    iput-object v4, v6, Le/a/i/d0/e;->e:Ljava/lang/Object;

    iput-object v0, v6, Le/a/i/d0/e;->f:Ljava/lang/Object;

    iput-wide v8, v6, Le/a/i/d0/e;->h:J

    iput v2, v6, Le/a/i/d0/e;->i:I

    invoke-static {v10, v11, v3, v6}, Lq3/a/j;->c(JLs1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v7, :cond_3

    return-object v7

    :cond_3
    move-object v10, v0

    :goto_0
    move-object v11, v2

    check-cast v11, Le/a/i/d0/j;

    if-eqz v11, :cond_6

    .line 11
    iget-object v0, v6, Le/a/i/d0/e;->j:Le/a/i/d0/d;

    iget-object v2, v6, Le/a/i/d0/e;->l:Lcom/truecaller/ads/mediation/model/Placement;

    invoke-virtual {v2}, Lcom/truecaller/ads/mediation/model/Placement;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v6, Le/a/i/d0/e;->o:Ljava/lang/String;

    sget-object v5, Lcom/truecaller/ads/adsrouter/ui/AdType;->NATIVE:Lcom/truecaller/ads/adsrouter/ui/AdType;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    sget-object v12, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v13, "Locale.ENGLISH"

    invoke-static {v12, v13}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "null cannot be cast to non-null type java.lang.String"

    invoke-static {v5, v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v5, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    const-string v12, "(this as java.lang.String).toLowerCase(locale)"

    invoke-static {v5, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v4, v6, Le/a/i/d0/e;->e:Ljava/lang/Object;

    iput-object v10, v6, Le/a/i/d0/e;->f:Ljava/lang/Object;

    iput-object v11, v6, Le/a/i/d0/e;->g:Ljava/lang/Object;

    iput-wide v8, v6, Le/a/i/d0/e;->h:J

    iput v1, v6, Le/a/i/d0/e;->i:I

    move-object v1, v11

    move-object v4, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v0 .. v5}, Le/a/i/d0/d;->j(Le/a/i/d0/j;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v7, :cond_4

    return-object v7

    :cond_4
    move-wide v0, v8

    move-object v3, v10

    move-object v2, v11

    .line 12
    :goto_1
    iget-object v12, v6, Le/a/i/d0/e;->j:Le/a/i/d0/d;

    iget-object v4, v6, Le/a/i/d0/e;->n:Le/a/i/c/d/l;

    iget-object v5, v6, Le/a/i/d0/e;->p:Ljava/lang/String;

    invoke-static {v5}, Le/m/d/y/n;->T(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object v13, v2

    move-wide v14, v0

    move-object/from16 v16, v4

    move-object/from16 v17, v3

    move-object/from16 v18, v5

    invoke-static/range {v12 .. v19}, Le/a/i/d0/d;->e(Le/a/i/d0/d;Le/a/i/d0/j;JLe/a/i/c/d/l;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_5

    goto :goto_3

    :cond_5
    move-wide/from16 v22, v0

    move-object/from16 v25, v3

    goto :goto_2

    :cond_6
    move-wide/from16 v22, v8

    move-object/from16 v25, v10

    .line 13
    :goto_2
    new-instance v2, Le/a/i/d0/i;

    sget-object v0, Le/a/i/d0/y;->d:Le/a/i/d0/y;

    invoke-direct {v2, v0}, Le/a/i/d0/i;-><init>(Le/a/i/c/b/a;)V

    .line 14
    iget-object v0, v6, Le/a/i/d0/e;->j:Le/a/i/d0/d;

    iget-object v1, v6, Le/a/i/d0/e;->n:Le/a/i/c/d/l;

    iget-object v3, v6, Le/a/i/d0/e;->p:Ljava/lang/String;

    invoke-static {v3}, Le/m/d/y/n;->T(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v20, v0

    move-object/from16 v21, v2

    move-object/from16 v24, v1

    move-object/from16 v26, v3

    invoke-static/range {v20 .. v27}, Le/a/i/d0/d;->e(Le/a/i/d0/d;Le/a/i/d0/j;JLe/a/i/c/d/l;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-object v2
.end method
