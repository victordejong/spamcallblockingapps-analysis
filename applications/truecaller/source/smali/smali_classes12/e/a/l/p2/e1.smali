.class public final Le/a/l/p2/e1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/l/p2/d1;


# instance fields
.field public a:Le/a/l/p2/s1;

.field public final b:Le/a/l/p2/r0;

.field public final c:Le/a/l/p2/k0;

.field public final d:Le/a/l/p2/i1;

.field public final e:Le/a/l/p2/f1;

.field public final f:Le/a/l/u2/a;

.field public final g:Le/a/l/p2/t1;

.field public final h:Le/a/l/n2/e;

.field public final i:Le/a/l/p2/a;

.field public final j:Le/a/l/p2/b1;

.field public final k:Le/a/l/a/g;

.field public final l:Ls1/w/f;

.field public final m:Ls1/w/f;


# direct methods
.method public constructor <init>(Le/a/l/p2/r0;Le/a/l/p2/k0;Le/a/l/p2/i1;Le/a/l/p2/f1;Le/a/l/u2/a;Le/a/l/p2/t1;Le/a/l/n2/e;Le/a/l/p2/a;Le/a/l/p2/b1;Le/a/l/a/g;Ls1/w/f;Ls1/w/f;)V
    .locals 1
    .param p11    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .param p12    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "premiumRepository"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumProductIdsFetcher"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumThemeFetcher"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumSubscriptionsProvider"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "productStoreProvider"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "webBillingPurchaseStateManager"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "billing"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "acknowledgePurchaseHelper"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subscriptionStatusRepository"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "debugWrapper"

    invoke-static {p10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asyncContext"

    invoke-static {p11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiContext"

    invoke-static {p12, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l/p2/e1;->b:Le/a/l/p2/r0;

    iput-object p2, p0, Le/a/l/p2/e1;->c:Le/a/l/p2/k0;

    iput-object p3, p0, Le/a/l/p2/e1;->d:Le/a/l/p2/i1;

    iput-object p4, p0, Le/a/l/p2/e1;->e:Le/a/l/p2/f1;

    iput-object p5, p0, Le/a/l/p2/e1;->f:Le/a/l/u2/a;

    iput-object p6, p0, Le/a/l/p2/e1;->g:Le/a/l/p2/t1;

    iput-object p7, p0, Le/a/l/p2/e1;->h:Le/a/l/n2/e;

    iput-object p8, p0, Le/a/l/p2/e1;->i:Le/a/l/p2/a;

    iput-object p9, p0, Le/a/l/p2/e1;->j:Le/a/l/p2/b1;

    iput-object p10, p0, Le/a/l/p2/e1;->k:Le/a/l/a/g;

    iput-object p11, p0, Le/a/l/p2/e1;->l:Ls1/w/f;

    iput-object p12, p0, Le/a/l/p2/e1;->m:Ls1/w/f;

    return-void
.end method

.method public static synthetic f(Le/a/l/p2/e1;Le/a/l/p2/x;Le/a/l/p2/k0$a;Le/a/l/p2/i1$a;Ljava/util/List;Ljava/lang/String;Le/a/l/p2/k1;Ls1/w/d;I)Ljava/lang/Object;
    .locals 10

    and-int/lit8 v0, p8, 0x8

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v6, v1

    goto :goto_0

    :cond_0
    move-object v6, p4

    :goto_0
    and-int/lit8 v0, p8, 0x10

    if-eqz v0, :cond_1

    move-object v7, v1

    goto :goto_1

    :cond_1
    move-object v7, p5

    :goto_1
    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_2

    move-object v8, v1

    goto :goto_2

    :cond_2
    move-object/from16 v8, p6

    :goto_2
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v9, p7

    .line 1
    invoke-virtual/range {v2 .. v9}, Le/a/l/p2/e1;->e(Le/a/l/p2/x;Le/a/l/p2/k0$a;Le/a/l/p2/i1$a;Ljava/util/List;Ljava/lang/String;Le/a/l/p2/k1;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ls1/w/d;)Ljava/lang/Object;
    .locals 0
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

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Le/a/l/p2/e1;->a:Le/a/l/p2/s1;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public b(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Le/a/l/p2/s1;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/l/p2/e1;->l:Ls1/w/f;

    new-instance v1, Le/a/l/p2/e1$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Le/a/l/p2/e1$a;-><init>(Le/a/l/p2/e1;Ljava/lang/String;Ls1/w/d;)V

    invoke-static {v0, v1, p2}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public c(Ls1/z/b/l;Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/z/b/l<",
            "-",
            "Le/a/l/p2/x;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/l/p2/e1;->m:Ls1/w/f;

    new-instance v1, Le/a/l/p2/e1$i;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Le/a/l/p2/e1$i;-><init>(Le/a/l/p2/e1;Ls1/z/b/l;Ls1/w/d;)V

    invoke-static {v0, v1, p2}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/l/p2/e1;->a:Le/a/l/p2/s1;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final e(Le/a/l/p2/x;Le/a/l/p2/k0$a;Le/a/l/p2/i1$a;Ljava/util/List;Ljava/lang/String;Le/a/l/p2/k1;Ls1/w/d;)Ljava/lang/Object;
    .locals 49
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/l/p2/x;",
            "Le/a/l/p2/k0$a;",
            "Le/a/l/p2/i1$a;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Le/a/l/p2/k1;",
            "Ls1/w/d<",
            "-",
            "Le/a/l/p2/s1;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p7

    sget-object v4, Le/a/l/p2/s1$i;->a:Le/a/l/p2/s1$i;

    instance-of v5, v3, Le/a/l/p2/e1$b;

    if-eqz v5, :cond_0

    move-object v5, v3

    check-cast v5, Le/a/l/p2/e1$b;

    iget v6, v5, Le/a/l/p2/e1$b;->e:I

    const/high16 v7, -0x80000000

    and-int v8, v6, v7

    if-eqz v8, :cond_0

    sub-int/2addr v6, v7

    iput v6, v5, Le/a/l/p2/e1$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v5, Le/a/l/p2/e1$b;

    invoke-direct {v5, v0, v3}, Le/a/l/p2/e1$b;-><init>(Le/a/l/p2/e1;Ls1/w/d;)V

    :goto_0
    iget-object v3, v5, Le/a/l/p2/e1$b;->d:Ljava/lang/Object;

    sget-object v6, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v7, v5, Le/a/l/p2/e1$b;->e:I

    const/4 v8, 0x2

    const/4 v9, 0x3

    const/4 v10, 0x1

    if-eqz v7, :cond_4

    if-eq v7, v10, :cond_3

    if-eq v7, v8, :cond_2

    if-ne v7, v9, :cond_1

    iget-boolean v1, v5, Le/a/l/p2/e1$b;->A:Z

    iget-boolean v2, v5, Le/a/l/p2/e1$b;->z:Z

    iget-object v4, v5, Le/a/l/p2/e1$b;->y:Ljava/lang/Object;

    check-cast v4, Le/a/l/n2/f;

    iget-object v6, v5, Le/a/l/p2/e1$b;->x:Ljava/lang/Object;

    check-cast v6, Le/a/l/n2/f;

    iget-object v7, v5, Le/a/l/p2/e1$b;->w:Ljava/lang/Object;

    check-cast v7, Le/a/l/n2/f;

    iget-object v8, v5, Le/a/l/p2/e1$b;->v:Ljava/lang/Object;

    check-cast v8, Le/a/l/n2/f;

    iget-object v9, v5, Le/a/l/p2/e1$b;->u:Ljava/lang/Object;

    check-cast v9, Le/a/l/n2/f;

    iget-object v10, v5, Le/a/l/p2/e1$b;->t:Ljava/lang/Object;

    check-cast v10, Le/a/l/n2/f;

    iget-object v11, v5, Le/a/l/p2/e1$b;->s:Ljava/lang/Object;

    check-cast v11, Le/a/l/n2/f;

    iget-object v12, v5, Le/a/l/p2/e1$b;->r:Ljava/lang/Object;

    check-cast v12, Le/a/l/n2/f;

    iget-object v13, v5, Le/a/l/p2/e1$b;->q:Ljava/lang/Object;

    check-cast v13, Le/a/l/n2/f;

    iget-object v14, v5, Le/a/l/p2/e1$b;->p:Ljava/lang/Object;

    check-cast v14, Le/a/l/n2/f;

    iget-object v15, v5, Le/a/l/p2/e1$b;->o:Ljava/lang/Object;

    check-cast v15, Le/a/l/n2/f;

    move/from16 p1, v1

    iget-object v1, v5, Le/a/l/p2/e1$b;->n:Ljava/lang/Object;

    check-cast v1, Le/a/l/n2/f;

    move-object/from16 p2, v1

    iget-object v1, v5, Le/a/l/p2/e1$b;->m:Ljava/lang/Object;

    check-cast v1, Le/a/l/n2/f;

    move-object/from16 p3, v1

    iget-object v1, v5, Le/a/l/p2/e1$b;->l:Ljava/lang/Object;

    check-cast v1, Le/a/l/p2/x;

    move-object/from16 p4, v1

    iget-object v1, v5, Le/a/l/p2/e1$b;->k:Ljava/lang/Object;

    check-cast v1, Le/a/l/p2/e1;

    move-object/from16 p5, v1

    iget-object v1, v5, Le/a/l/p2/e1$b;->j:Ljava/lang/Object;

    check-cast v1, Le/a/l/n2/f;

    move-object/from16 p6, v1

    iget-object v1, v5, Le/a/l/p2/e1$b;->i:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    move-object/from16 p7, v1

    iget-object v1, v5, Le/a/l/p2/e1$b;->h:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v5, v5, Le/a/l/p2/e1$b;->g:Ljava/lang/Object;

    check-cast v5, Le/a/l/p2/i1$a;

    invoke-static {v3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v19, p3

    move-object/from16 v0, p5

    move-object/from16 v17, v6

    move-object/from16 v24, v8

    move-object/from16 v22, v12

    move-object/from16 v16, v14

    move-object/from16 v18, v15

    move-object/from16 v6, p2

    move-object v8, v1

    move-object v14, v5

    move-object v12, v11

    move-object v15, v13

    move/from16 v1, p1

    move-object/from16 v13, p4

    move-object v5, v3

    move-object v11, v7

    move-object/from16 v3, p6

    move-object v7, v4

    move-object/from16 v4, p7

    goto/16 :goto_31

    .line 2
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_2
    iget-object v1, v5, Le/a/l/p2/e1$b;->n:Ljava/lang/Object;

    check-cast v1, Le/a/l/n2/f;

    iget-object v2, v5, Le/a/l/p2/e1$b;->m:Ljava/lang/Object;

    check-cast v2, Le/a/l/p2/l1;

    iget-object v4, v5, Le/a/l/p2/e1$b;->l:Ljava/lang/Object;

    check-cast v4, Le/a/l/p2/k1;

    iget-object v7, v5, Le/a/l/p2/e1$b;->k:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v8, v5, Le/a/l/p2/e1$b;->j:Ljava/lang/Object;

    check-cast v8, Ljava/util/List;

    iget-object v12, v5, Le/a/l/p2/e1$b;->i:Ljava/lang/Object;

    check-cast v12, Le/a/l/p2/i1$a;

    iget-object v13, v5, Le/a/l/p2/e1$b;->h:Ljava/lang/Object;

    check-cast v13, Le/a/l/p2/x;

    iget-object v14, v5, Le/a/l/p2/e1$b;->g:Ljava/lang/Object;

    check-cast v14, Le/a/l/p2/e1;

    invoke-static {v3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v47, v3

    move-object v3, v1

    move-object v1, v14

    move-object v14, v12

    move-object v12, v4

    move-object v4, v7

    move-object/from16 v7, v47

    goto/16 :goto_2

    :cond_3
    iget-object v1, v5, Le/a/l/p2/e1$b;->m:Ljava/lang/Object;

    check-cast v1, Le/a/l/p2/l1;

    iget-object v2, v5, Le/a/l/p2/e1$b;->l:Ljava/lang/Object;

    check-cast v2, Le/a/l/p2/k1;

    iget-object v4, v5, Le/a/l/p2/e1$b;->k:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v7, v5, Le/a/l/p2/e1$b;->j:Ljava/lang/Object;

    check-cast v7, Ljava/util/List;

    iget-object v12, v5, Le/a/l/p2/e1$b;->i:Ljava/lang/Object;

    check-cast v12, Le/a/l/p2/i1$a;

    iget-object v13, v5, Le/a/l/p2/e1$b;->h:Ljava/lang/Object;

    check-cast v13, Le/a/l/p2/x;

    iget-object v14, v5, Le/a/l/p2/e1$b;->g:Ljava/lang/Object;

    check-cast v14, Le/a/l/p2/e1;

    invoke-static {v3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {v3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    sget-object v3, Le/a/l/p2/k0$a$c;->a:Le/a/l/p2/k0$a$c;

    invoke-static {v1, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3c

    sget-object v3, Le/a/l/p2/i1$a$c;->a:Le/a/l/p2/i1$a$c;

    invoke-static {v2, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto/16 :goto_34

    .line 5
    :cond_5
    sget-object v3, Le/a/l/p2/k0$a$a;->a:Le/a/l/p2/k0$a$a;

    invoke-static {v1, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3b

    sget-object v3, Le/a/l/p2/i1$a$a;->a:Le/a/l/p2/i1$a$a;

    invoke-static {v2, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto/16 :goto_33

    .line 6
    :cond_6
    instance-of v3, v1, Le/a/l/p2/k0$a$b;

    if-eqz v3, :cond_3c

    instance-of v3, v2, Le/a/l/p2/i1$a$b;

    if-eqz v3, :cond_3c

    .line 7
    check-cast v1, Le/a/l/p2/k0$a$b;

    .line 8
    iget-object v1, v1, Le/a/l/p2/k0$a$b;->a:Le/a/l/p2/l1;

    .line 9
    iget-object v3, v0, Le/a/l/p2/e1;->e:Le/a/l/p2/f1;

    iput-object v0, v5, Le/a/l/p2/e1$b;->g:Ljava/lang/Object;

    move-object/from16 v4, p1

    iput-object v4, v5, Le/a/l/p2/e1$b;->h:Ljava/lang/Object;

    iput-object v2, v5, Le/a/l/p2/e1$b;->i:Ljava/lang/Object;

    move-object/from16 v7, p4

    iput-object v7, v5, Le/a/l/p2/e1$b;->j:Ljava/lang/Object;

    move-object/from16 v12, p5

    iput-object v12, v5, Le/a/l/p2/e1$b;->k:Ljava/lang/Object;

    move-object/from16 v13, p6

    iput-object v13, v5, Le/a/l/p2/e1$b;->l:Ljava/lang/Object;

    iput-object v1, v5, Le/a/l/p2/e1$b;->m:Ljava/lang/Object;

    iput v10, v5, Le/a/l/p2/e1$b;->e:I

    invoke-interface {v3, v5}, Le/a/l/p2/f1;->a(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v6, :cond_7

    return-object v6

    :cond_7
    move-object v14, v0

    move-object/from16 v47, v12

    move-object v12, v2

    move-object v2, v13

    move-object v13, v4

    move-object/from16 v4, v47

    .line 10
    :goto_1
    check-cast v3, Le/a/l/n2/f;

    .line 11
    iget-object v15, v14, Le/a/l/p2/e1;->e:Le/a/l/p2/f1;

    iput-object v14, v5, Le/a/l/p2/e1$b;->g:Ljava/lang/Object;

    iput-object v13, v5, Le/a/l/p2/e1$b;->h:Ljava/lang/Object;

    iput-object v12, v5, Le/a/l/p2/e1$b;->i:Ljava/lang/Object;

    iput-object v7, v5, Le/a/l/p2/e1$b;->j:Ljava/lang/Object;

    iput-object v4, v5, Le/a/l/p2/e1$b;->k:Ljava/lang/Object;

    iput-object v2, v5, Le/a/l/p2/e1$b;->l:Ljava/lang/Object;

    iput-object v1, v5, Le/a/l/p2/e1$b;->m:Ljava/lang/Object;

    iput-object v3, v5, Le/a/l/p2/e1$b;->n:Ljava/lang/Object;

    iput v8, v5, Le/a/l/p2/e1$b;->e:I

    invoke-interface {v15, v1, v5}, Le/a/l/p2/f1;->b(Le/a/l/p2/l1;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v6, :cond_8

    return-object v6

    :cond_8
    move-object/from16 v47, v2

    move-object v2, v1

    move-object v1, v14

    move-object v14, v12

    move-object/from16 v12, v47

    move-object/from16 v48, v8

    move-object v8, v7

    move-object/from16 v7, v48

    .line 12
    :goto_2
    check-cast v7, Ljava/util/List;

    .line 13
    invoke-virtual {v1, v13}, Le/a/l/p2/e1;->k(Le/a/l/p2/x;)Z

    move-result v15

    .line 14
    invoke-virtual {v1, v8}, Le/a/l/p2/e1;->j(Ljava/util/List;)Z

    move-result v11

    .line 15
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "subscriptions"

    invoke-static {v7, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_b

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v10, v18

    check-cast v10, Le/a/l/n2/f;

    .line 17
    iget-object v10, v10, Le/a/l/n2/f;->a:Ljava/lang/String;

    .line 18
    iget-object v0, v2, Le/a/l/p2/l1;->a:Le/a/l/p2/k1;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Le/a/l/p2/k1;->e()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_9
    const/4 v0, 0x0

    :goto_4
    invoke-static {v10, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_5

    :cond_a
    move-object/from16 v0, p0

    const/4 v10, 0x1

    goto :goto_3

    :cond_b
    const/16 v18, 0x0

    .line 19
    :goto_5
    move-object/from16 v20, v18

    check-cast v20, Le/a/l/n2/f;

    if-eqz v20, :cond_d

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const-wide/16 v25, 0x0

    const/16 v27, 0x0

    const-wide/16 v28, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    .line 20
    sget-object v33, Lcom/truecaller/premium/data/ProductKind;->SUBSCRIPTION_MONTHLY:Lcom/truecaller/premium/data/ProductKind;

    .line 21
    sget-object v34, Lcom/truecaller/premium/data/PremiumProductType;->SUBSCRIPTION:Lcom/truecaller/premium/data/PremiumProductType;

    const/16 v35, 0x0

    .line 22
    iget-object v0, v2, Le/a/l/p2/l1;->a:Le/a/l/p2/k1;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Le/a/l/p2/k1;->f()Le/a/l/p2/n1;

    move-result-object v0

    move-object/from16 v36, v0

    goto :goto_6

    :cond_c
    const/16 v36, 0x0

    :goto_6
    const/16 v37, 0x13ff

    .line 23
    invoke-static/range {v20 .. v37}, Le/a/l/n2/f;->a(Le/a/l/n2/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLw3/b/a/u;ILw3/b/a/u;Lcom/truecaller/premium/data/ProductKind;Lcom/truecaller/premium/data/PremiumProductType;ZLe/a/l/p2/n1;I)Le/a/l/n2/f;

    move-result-object v0

    goto :goto_7

    :cond_d
    const/4 v0, 0x0

    .line 24
    :goto_7
    invoke-static {v7, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_10

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 p1, v10

    move-object/from16 v10, v17

    check-cast v10, Le/a/l/n2/f;

    .line 26
    iget-object v10, v10, Le/a/l/n2/f;->a:Ljava/lang/String;

    move-object/from16 v18, v6

    .line 27
    iget-object v6, v2, Le/a/l/p2/l1;->b:Le/a/l/p2/k1;

    if-eqz v6, :cond_e

    invoke-virtual {v6}, Le/a/l/p2/k1;->e()Ljava/lang/String;

    move-result-object v6

    goto :goto_9

    :cond_e
    const/4 v6, 0x0

    :goto_9
    invoke-static {v10, v6}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    goto :goto_a

    :cond_f
    move-object/from16 v10, p1

    move-object/from16 v6, v18

    goto :goto_8

    :cond_10
    move-object/from16 v18, v6

    const/16 v17, 0x0

    .line 28
    :goto_a
    move-object/from16 v20, v17

    check-cast v20, Le/a/l/n2/f;

    if-eqz v20, :cond_12

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const-wide/16 v25, 0x0

    const/16 v27, 0x0

    const-wide/16 v28, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    .line 29
    sget-object v33, Lcom/truecaller/premium/data/ProductKind;->SUBSCRIPTION_BASIC_MONTHLY:Lcom/truecaller/premium/data/ProductKind;

    .line 30
    sget-object v34, Lcom/truecaller/premium/data/PremiumProductType;->SUBSCRIPTION:Lcom/truecaller/premium/data/PremiumProductType;

    const/16 v35, 0x0

    .line 31
    iget-object v6, v2, Le/a/l/p2/l1;->b:Le/a/l/p2/k1;

    if-eqz v6, :cond_11

    invoke-virtual {v6}, Le/a/l/p2/k1;->f()Le/a/l/p2/n1;

    move-result-object v6

    move-object/from16 v36, v6

    goto :goto_b

    :cond_11
    const/16 v36, 0x0

    :goto_b
    const/16 v37, 0x13ff

    .line 32
    invoke-static/range {v20 .. v37}, Le/a/l/n2/f;->a(Le/a/l/n2/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLw3/b/a/u;ILw3/b/a/u;Lcom/truecaller/premium/data/ProductKind;Lcom/truecaller/premium/data/PremiumProductType;ZLe/a/l/p2/n1;I)Le/a/l/n2/f;

    move-result-object v6

    goto :goto_c

    :cond_12
    const/4 v6, 0x0

    .line 33
    :goto_c
    invoke-static {v7, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_d
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_15

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 p1, v10

    move-object/from16 v10, v17

    check-cast v10, Le/a/l/n2/f;

    .line 35
    iget-object v10, v10, Le/a/l/n2/f;->a:Ljava/lang/String;

    move/from16 p2, v11

    .line 36
    iget-object v11, v2, Le/a/l/p2/l1;->c:Le/a/l/p2/k1;

    if-eqz v11, :cond_13

    invoke-virtual {v11}, Le/a/l/p2/k1;->e()Ljava/lang/String;

    move-result-object v11

    goto :goto_e

    :cond_13
    const/4 v11, 0x0

    :goto_e
    invoke-static {v10, v11}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_14

    goto :goto_f

    :cond_14
    move-object/from16 v10, p1

    move/from16 v11, p2

    goto :goto_d

    :cond_15
    move/from16 p2, v11

    const/16 v17, 0x0

    .line 37
    :goto_f
    move-object/from16 v20, v17

    check-cast v20, Le/a/l/n2/f;

    if-eqz v20, :cond_17

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const-wide/16 v25, 0x0

    const/16 v27, 0x0

    const-wide/16 v28, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    .line 38
    sget-object v33, Lcom/truecaller/premium/data/ProductKind;->SUBSCRIPTION_QUARTERLY:Lcom/truecaller/premium/data/ProductKind;

    .line 39
    sget-object v34, Lcom/truecaller/premium/data/PremiumProductType;->SUBSCRIPTION:Lcom/truecaller/premium/data/PremiumProductType;

    const/16 v35, 0x0

    .line 40
    iget-object v10, v2, Le/a/l/p2/l1;->c:Le/a/l/p2/k1;

    if-eqz v10, :cond_16

    invoke-virtual {v10}, Le/a/l/p2/k1;->f()Le/a/l/p2/n1;

    move-result-object v10

    move-object/from16 v36, v10

    goto :goto_10

    :cond_16
    const/16 v36, 0x0

    :goto_10
    const/16 v37, 0x13ff

    .line 41
    invoke-static/range {v20 .. v37}, Le/a/l/n2/f;->a(Le/a/l/n2/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLw3/b/a/u;ILw3/b/a/u;Lcom/truecaller/premium/data/ProductKind;Lcom/truecaller/premium/data/PremiumProductType;ZLe/a/l/p2/n1;I)Le/a/l/n2/f;

    move-result-object v10

    goto :goto_11

    :cond_17
    const/4 v10, 0x0

    .line 42
    :goto_11
    invoke-static {v7, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_12
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 p1, v11

    move-object/from16 v11, v17

    check-cast v11, Le/a/l/n2/f;

    .line 44
    iget-object v11, v11, Le/a/l/n2/f;->a:Ljava/lang/String;

    move/from16 p3, v15

    .line 45
    iget-object v15, v2, Le/a/l/p2/l1;->d:Le/a/l/p2/k1;

    if-eqz v15, :cond_18

    invoke-virtual {v15}, Le/a/l/p2/k1;->e()Ljava/lang/String;

    move-result-object v15

    goto :goto_13

    :cond_18
    const/4 v15, 0x0

    :goto_13
    invoke-static {v11, v15}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_19

    goto :goto_14

    :cond_19
    move-object/from16 v11, p1

    move/from16 v15, p3

    goto :goto_12

    :cond_1a
    move/from16 p3, v15

    const/16 v17, 0x0

    .line 46
    :goto_14
    move-object/from16 v20, v17

    check-cast v20, Le/a/l/n2/f;

    if-eqz v20, :cond_1c

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const-wide/16 v25, 0x0

    const/16 v27, 0x0

    const-wide/16 v28, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    .line 47
    sget-object v33, Lcom/truecaller/premium/data/ProductKind;->SUBSCRIPTION_HALFYEARLY:Lcom/truecaller/premium/data/ProductKind;

    .line 48
    sget-object v34, Lcom/truecaller/premium/data/PremiumProductType;->SUBSCRIPTION:Lcom/truecaller/premium/data/PremiumProductType;

    const/16 v35, 0x0

    .line 49
    iget-object v11, v2, Le/a/l/p2/l1;->d:Le/a/l/p2/k1;

    if-eqz v11, :cond_1b

    invoke-virtual {v11}, Le/a/l/p2/k1;->f()Le/a/l/p2/n1;

    move-result-object v11

    move-object/from16 v36, v11

    goto :goto_15

    :cond_1b
    const/16 v36, 0x0

    :goto_15
    const/16 v37, 0x13ff

    .line 50
    invoke-static/range {v20 .. v37}, Le/a/l/n2/f;->a(Le/a/l/n2/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLw3/b/a/u;ILw3/b/a/u;Lcom/truecaller/premium/data/ProductKind;Lcom/truecaller/premium/data/PremiumProductType;ZLe/a/l/p2/n1;I)Le/a/l/n2/f;

    move-result-object v11

    goto :goto_16

    :cond_1c
    const/4 v11, 0x0

    .line 51
    :goto_16
    invoke-virtual {v2, v7}, Le/a/l/p2/l1;->c(Ljava/util/List;)Le/a/l/n2/f;

    move-result-object v15

    .line 52
    invoke-static {v7, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_17
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_1f

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 p1, v15

    move-object/from16 v15, v20

    check-cast v15, Le/a/l/n2/f;

    .line 54
    iget-object v15, v15, Le/a/l/n2/f;->a:Ljava/lang/String;

    move-object/from16 v21, v11

    .line 55
    iget-object v11, v2, Le/a/l/p2/l1;->f:Le/a/l/p2/k1;

    if-eqz v11, :cond_1d

    invoke-virtual {v11}, Le/a/l/p2/k1;->e()Ljava/lang/String;

    move-result-object v11

    goto :goto_18

    :cond_1d
    const/4 v11, 0x0

    :goto_18
    invoke-static {v15, v11}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1e

    goto :goto_19

    :cond_1e
    move-object/from16 v15, p1

    move-object/from16 v11, v21

    goto :goto_17

    :cond_1f
    move-object/from16 v21, v11

    move-object/from16 p1, v15

    const/16 v20, 0x0

    .line 56
    :goto_19
    move-object/from16 v22, v20

    check-cast v22, Le/a/l/n2/f;

    if-eqz v22, :cond_21

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const-wide/16 v27, 0x0

    const/16 v29, 0x0

    const-wide/16 v30, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    .line 57
    sget-object v35, Lcom/truecaller/premium/data/ProductKind;->SUBSCRIPTION_WELCOME_OFFER_YEARLY:Lcom/truecaller/premium/data/ProductKind;

    .line 58
    sget-object v36, Lcom/truecaller/premium/data/PremiumProductType;->SUBSCRIPTION:Lcom/truecaller/premium/data/PremiumProductType;

    const/16 v37, 0x0

    .line 59
    iget-object v11, v2, Le/a/l/p2/l1;->f:Le/a/l/p2/k1;

    if-eqz v11, :cond_20

    invoke-virtual {v11}, Le/a/l/p2/k1;->f()Le/a/l/p2/n1;

    move-result-object v11

    move-object/from16 v38, v11

    goto :goto_1a

    :cond_20
    const/16 v38, 0x0

    :goto_1a
    const/16 v39, 0x13ff

    .line 60
    invoke-static/range {v22 .. v39}, Le/a/l/n2/f;->a(Le/a/l/n2/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLw3/b/a/u;ILw3/b/a/u;Lcom/truecaller/premium/data/ProductKind;Lcom/truecaller/premium/data/PremiumProductType;ZLe/a/l/p2/n1;I)Le/a/l/n2/f;

    move-result-object v11

    goto :goto_1b

    :cond_21
    const/4 v11, 0x0

    .line 61
    :goto_1b
    invoke-virtual {v2, v7}, Le/a/l/p2/l1;->b(Ljava/util/List;)Le/a/l/n2/f;

    move-result-object v15

    .line 62
    invoke-static {v7, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_1c
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_24

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 p4, v15

    move-object/from16 v15, v20

    check-cast v15, Le/a/l/n2/f;

    .line 64
    iget-object v15, v15, Le/a/l/n2/f;->a:Ljava/lang/String;

    move-object/from16 v22, v11

    .line 65
    iget-object v11, v2, Le/a/l/p2/l1;->h:Le/a/l/p2/k1;

    if-eqz v11, :cond_22

    invoke-virtual {v11}, Le/a/l/p2/k1;->e()Ljava/lang/String;

    move-result-object v11

    goto :goto_1d

    :cond_22
    const/4 v11, 0x0

    :goto_1d
    invoke-static {v15, v11}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_23

    goto :goto_1e

    :cond_23
    move-object/from16 v15, p4

    move-object/from16 v11, v22

    goto :goto_1c

    :cond_24
    move-object/from16 v22, v11

    move-object/from16 p4, v15

    const/16 v20, 0x0

    .line 66
    :goto_1e
    move-object/from16 v23, v20

    check-cast v23, Le/a/l/n2/f;

    if-eqz v23, :cond_25

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const-wide/16 v28, 0x0

    const/16 v30, 0x0

    const-wide/16 v31, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    .line 67
    sget-object v36, Lcom/truecaller/premium/data/ProductKind;->CONSUMABLE_YEARLY:Lcom/truecaller/premium/data/ProductKind;

    sget-object v37, Lcom/truecaller/premium/data/PremiumProductType;->IN_APP:Lcom/truecaller/premium/data/PremiumProductType;

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x33ff

    invoke-static/range {v23 .. v40}, Le/a/l/n2/f;->a(Le/a/l/n2/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLw3/b/a/u;ILw3/b/a/u;Lcom/truecaller/premium/data/ProductKind;Lcom/truecaller/premium/data/PremiumProductType;ZLe/a/l/p2/n1;I)Le/a/l/n2/f;

    move-result-object v11

    goto :goto_1f

    :cond_25
    const/4 v11, 0x0

    .line 68
    :goto_1f
    invoke-static {v7, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_20
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_28

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 p5, v15

    move-object/from16 v15, v17

    check-cast v15, Le/a/l/n2/f;

    .line 70
    iget-object v15, v15, Le/a/l/n2/f;->a:Ljava/lang/String;

    move-object/from16 v20, v11

    .line 71
    iget-object v11, v2, Le/a/l/p2/l1;->i:Le/a/l/p2/k1;

    if-eqz v11, :cond_26

    invoke-virtual {v11}, Le/a/l/p2/k1;->e()Ljava/lang/String;

    move-result-object v11

    goto :goto_21

    :cond_26
    const/4 v11, 0x0

    :goto_21
    invoke-static {v15, v11}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_27

    goto :goto_22

    :cond_27
    move-object/from16 v15, p5

    move-object/from16 v11, v20

    goto :goto_20

    :cond_28
    move-object/from16 v20, v11

    const/16 v17, 0x0

    .line 72
    :goto_22
    move-object/from16 v23, v17

    check-cast v23, Le/a/l/n2/f;

    if-eqz v23, :cond_29

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const-wide/16 v28, 0x0

    const/16 v30, 0x0

    const-wide/16 v31, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    .line 73
    sget-object v36, Lcom/truecaller/premium/data/ProductKind;->CONSUMABLE_GOLD_YEARLY:Lcom/truecaller/premium/data/ProductKind;

    sget-object v37, Lcom/truecaller/premium/data/PremiumProductType;->IN_APP:Lcom/truecaller/premium/data/PremiumProductType;

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x33ff

    invoke-static/range {v23 .. v40}, Le/a/l/n2/f;->a(Le/a/l/n2/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLw3/b/a/u;ILw3/b/a/u;Lcom/truecaller/premium/data/ProductKind;Lcom/truecaller/premium/data/PremiumProductType;ZLe/a/l/p2/n1;I)Le/a/l/n2/f;

    move-result-object v11

    goto :goto_23

    :cond_29
    const/4 v11, 0x0

    .line 74
    :goto_23
    invoke-static {v7, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_24
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_2c

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 p5, v15

    move-object/from16 v15, v17

    check-cast v15, Le/a/l/n2/f;

    .line 76
    iget-object v15, v15, Le/a/l/n2/f;->a:Ljava/lang/String;

    move-object/from16 v23, v11

    .line 77
    iget-object v11, v2, Le/a/l/p2/l1;->j:Le/a/l/p2/k1;

    if-eqz v11, :cond_2a

    invoke-virtual {v11}, Le/a/l/p2/k1;->e()Ljava/lang/String;

    move-result-object v11

    goto :goto_25

    :cond_2a
    const/4 v11, 0x0

    :goto_25
    invoke-static {v15, v11}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2b

    goto :goto_26

    :cond_2b
    move-object/from16 v15, p5

    move-object/from16 v11, v23

    goto :goto_24

    :cond_2c
    move-object/from16 v23, v11

    const/16 v17, 0x0

    .line 78
    :goto_26
    move-object/from16 v24, v17

    check-cast v24, Le/a/l/n2/f;

    if-eqz v24, :cond_2d

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const-wide/16 v29, 0x0

    const/16 v31, 0x0

    const-wide/16 v32, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    .line 79
    sget-object v37, Lcom/truecaller/premium/data/ProductKind;->CONSUMABLE_HALFYEARLY:Lcom/truecaller/premium/data/ProductKind;

    sget-object v38, Lcom/truecaller/premium/data/PremiumProductType;->IN_APP:Lcom/truecaller/premium/data/PremiumProductType;

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x33ff

    invoke-static/range {v24 .. v41}, Le/a/l/n2/f;->a(Le/a/l/n2/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLw3/b/a/u;ILw3/b/a/u;Lcom/truecaller/premium/data/ProductKind;Lcom/truecaller/premium/data/PremiumProductType;ZLe/a/l/p2/n1;I)Le/a/l/n2/f;

    move-result-object v11

    goto :goto_27

    :cond_2d
    const/4 v11, 0x0

    .line 80
    :goto_27
    invoke-static {v7, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_28
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_30

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 p5, v15

    move-object/from16 v15, v17

    check-cast v15, Le/a/l/n2/f;

    .line 82
    iget-object v15, v15, Le/a/l/n2/f;->a:Ljava/lang/String;

    move-object/from16 v24, v11

    .line 83
    iget-object v11, v2, Le/a/l/p2/l1;->l:Le/a/l/p2/k1;

    if-eqz v11, :cond_2e

    invoke-virtual {v11}, Le/a/l/p2/k1;->e()Ljava/lang/String;

    move-result-object v11

    goto :goto_29

    :cond_2e
    const/4 v11, 0x0

    :goto_29
    invoke-static {v15, v11}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2f

    goto :goto_2a

    :cond_2f
    move-object/from16 v15, p5

    move-object/from16 v11, v24

    goto :goto_28

    :cond_30
    move-object/from16 v24, v11

    const/16 v17, 0x0

    .line 84
    :goto_2a
    move-object/from16 v25, v17

    check-cast v25, Le/a/l/n2/f;

    if-eqz v25, :cond_31

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const-wide/16 v30, 0x0

    const/16 v32, 0x0

    const-wide/16 v33, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    .line 85
    sget-object v38, Lcom/truecaller/premium/data/ProductKind;->CONSUMABLE_QUARTERLY:Lcom/truecaller/premium/data/ProductKind;

    sget-object v39, Lcom/truecaller/premium/data/PremiumProductType;->IN_APP:Lcom/truecaller/premium/data/PremiumProductType;

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x33ff

    invoke-static/range {v25 .. v42}, Le/a/l/n2/f;->a(Le/a/l/n2/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLw3/b/a/u;ILw3/b/a/u;Lcom/truecaller/premium/data/ProductKind;Lcom/truecaller/premium/data/PremiumProductType;ZLe/a/l/p2/n1;I)Le/a/l/n2/f;

    move-result-object v11

    goto :goto_2b

    :cond_31
    const/4 v11, 0x0

    .line 86
    :goto_2b
    invoke-static {v7, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2c
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_34

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    move-object/from16 p5, v9

    move-object v9, v15

    check-cast v9, Le/a/l/n2/f;

    .line 88
    iget-object v9, v9, Le/a/l/n2/f;->a:Ljava/lang/String;

    move-object/from16 p6, v15

    .line 89
    iget-object v15, v2, Le/a/l/p2/l1;->k:Le/a/l/p2/k1;

    if-eqz v15, :cond_32

    invoke-virtual {v15}, Le/a/l/p2/k1;->e()Ljava/lang/String;

    move-result-object v15

    goto :goto_2d

    :cond_32
    const/4 v15, 0x0

    :goto_2d
    invoke-static {v9, v15}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_33

    move-object/from16 v15, p6

    goto :goto_2e

    :cond_33
    move-object/from16 v9, p5

    goto :goto_2c

    :cond_34
    const/4 v15, 0x0

    .line 90
    :goto_2e
    move-object/from16 v25, v15

    check-cast v25, Le/a/l/n2/f;

    if-eqz v25, :cond_35

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const-wide/16 v30, 0x0

    const/16 v32, 0x0

    const-wide/16 v33, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    .line 91
    sget-object v38, Lcom/truecaller/premium/data/ProductKind;->CONSUMABLE_MONTHLY:Lcom/truecaller/premium/data/ProductKind;

    sget-object v39, Lcom/truecaller/premium/data/PremiumProductType;->IN_APP:Lcom/truecaller/premium/data/PremiumProductType;

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x33ff

    invoke-static/range {v25 .. v42}, Le/a/l/n2/f;->a(Le/a/l/n2/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLw3/b/a/u;ILw3/b/a/u;Lcom/truecaller/premium/data/ProductKind;Lcom/truecaller/premium/data/PremiumProductType;ZLe/a/l/p2/n1;I)Le/a/l/n2/f;

    move-result-object v9

    goto :goto_2f

    :cond_35
    const/4 v9, 0x0

    .line 92
    :goto_2f
    iget-object v15, v2, Le/a/l/p2/l1;->g:Le/a/l/p2/k1;

    if-eqz v15, :cond_36

    .line 93
    invoke-virtual {v15}, Le/a/l/p2/k1;->h()Z

    move-result v15

    move-object/from16 v17, v9

    const/4 v9, 0x1

    if-ne v15, v9, :cond_37

    .line 94
    invoke-virtual {v2, v7}, Le/a/l/p2/l1;->b(Ljava/util/List;)Le/a/l/n2/f;

    move-result-object v2

    goto :goto_30

    :cond_36
    move-object/from16 v17, v9

    const/4 v9, 0x1

    .line 95
    :cond_37
    iget-object v15, v2, Le/a/l/p2/l1;->e:Le/a/l/p2/k1;

    if-eqz v15, :cond_38

    .line 96
    invoke-virtual {v15}, Le/a/l/p2/k1;->h()Z

    move-result v15

    if-ne v15, v9, :cond_38

    .line 97
    invoke-virtual {v2, v7}, Le/a/l/p2/l1;->c(Ljava/util/List;)Le/a/l/n2/f;

    move-result-object v2

    goto :goto_30

    :cond_38
    const/4 v2, 0x0

    :goto_30
    if-eqz v12, :cond_3a

    .line 98
    iget-object v7, v1, Le/a/l/p2/e1;->e:Le/a/l/p2/f1;

    iput-object v14, v5, Le/a/l/p2/e1$b;->g:Ljava/lang/Object;

    iput-object v8, v5, Le/a/l/p2/e1$b;->h:Ljava/lang/Object;

    iput-object v4, v5, Le/a/l/p2/e1$b;->i:Ljava/lang/Object;

    iput-object v3, v5, Le/a/l/p2/e1$b;->j:Ljava/lang/Object;

    iput-object v1, v5, Le/a/l/p2/e1$b;->k:Ljava/lang/Object;

    iput-object v13, v5, Le/a/l/p2/e1$b;->l:Ljava/lang/Object;

    iput-object v0, v5, Le/a/l/p2/e1$b;->m:Ljava/lang/Object;

    iput-object v6, v5, Le/a/l/p2/e1$b;->n:Ljava/lang/Object;

    iput-object v10, v5, Le/a/l/p2/e1$b;->o:Ljava/lang/Object;

    move-object/from16 v9, v21

    iput-object v9, v5, Le/a/l/p2/e1$b;->p:Ljava/lang/Object;

    move-object/from16 v15, p1

    iput-object v15, v5, Le/a/l/p2/e1$b;->q:Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, v22

    iput-object v0, v5, Le/a/l/p2/e1$b;->r:Ljava/lang/Object;

    move-object/from16 v0, p4

    iput-object v0, v5, Le/a/l/p2/e1$b;->s:Ljava/lang/Object;

    move-object/from16 v0, v20

    iput-object v0, v5, Le/a/l/p2/e1$b;->t:Ljava/lang/Object;

    move-object/from16 v0, v23

    iput-object v0, v5, Le/a/l/p2/e1$b;->u:Ljava/lang/Object;

    move-object/from16 v0, v24

    iput-object v0, v5, Le/a/l/p2/e1$b;->v:Ljava/lang/Object;

    iput-object v11, v5, Le/a/l/p2/e1$b;->w:Ljava/lang/Object;

    move-object/from16 v0, v17

    iput-object v0, v5, Le/a/l/p2/e1$b;->x:Ljava/lang/Object;

    iput-object v2, v5, Le/a/l/p2/e1$b;->y:Ljava/lang/Object;

    move/from16 v0, p3

    iput-boolean v0, v5, Le/a/l/p2/e1$b;->z:Z

    move/from16 v0, p2

    iput-boolean v0, v5, Le/a/l/p2/e1$b;->A:Z

    const/4 v0, 0x3

    iput v0, v5, Le/a/l/p2/e1$b;->e:I

    invoke-interface {v7, v12, v5}, Le/a/l/p2/f1;->c(Le/a/l/p2/k1;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v5, v18

    if-ne v0, v5, :cond_39

    return-object v5

    :cond_39
    move-object/from16 v12, p4

    move-object v5, v0

    move-object v0, v1

    move-object v7, v2

    move-object/from16 v16, v9

    move-object/from16 v18, v10

    move-object/from16 v10, v20

    move-object/from16 v9, v23

    move/from16 v1, p2

    move/from16 v2, p3

    :goto_31
    check-cast v5, Le/a/l/n2/f;

    move/from16 v28, v1

    move/from16 v27, v2

    move-object/from16 v46, v3

    move-object/from16 v44, v4

    move-object/from16 v42, v5

    move-object/from16 v30, v6

    move-object/from16 v41, v7

    move-object/from16 v43, v8

    move-object/from16 v37, v9

    move-object/from16 v36, v10

    move-object/from16 v39, v11

    move-object/from16 v35, v12

    move-object/from16 v26, v13

    move-object/from16 v33, v15

    move-object/from16 v32, v16

    move-object/from16 v40, v17

    move-object/from16 v31, v18

    move-object/from16 v29, v19

    move-object/from16 v34, v22

    move-object/from16 v38, v24

    move-object v1, v0

    goto :goto_32

    :cond_3a
    move-object/from16 v15, p1

    move-object/from16 v19, v0

    move-object/from16 v9, v21

    move/from16 v28, p2

    move/from16 v27, p3

    move-object/from16 v35, p4

    move-object/from16 v41, v2

    move-object/from16 v46, v3

    move-object/from16 v44, v4

    move-object/from16 v30, v6

    move-object/from16 v43, v8

    move-object/from16 v32, v9

    move-object/from16 v31, v10

    move-object/from16 v39, v11

    move-object/from16 v26, v13

    move-object/from16 v33, v15

    move-object/from16 v40, v17

    move-object/from16 v29, v19

    move-object/from16 v36, v20

    move-object/from16 v34, v22

    move-object/from16 v37, v23

    move-object/from16 v38, v24

    const/16 v42, 0x0

    .line 99
    :goto_32
    check-cast v14, Le/a/l/p2/i1$a$b;

    .line 100
    iget-object v0, v14, Le/a/l/p2/i1$a$b;->a:Le/a/l/p2/h1;

    move-object/from16 v45, v0

    .line 101
    new-instance v0, Le/a/l/p2/s1$b;

    move-object/from16 v25, v0

    invoke-direct/range {v25 .. v46}, Le/a/l/p2/s1$b;-><init>(Le/a/l/p2/x;ZZLe/a/l/n2/f;Le/a/l/n2/f;Le/a/l/n2/f;Le/a/l/n2/f;Le/a/l/n2/f;Le/a/l/n2/f;Le/a/l/n2/f;Le/a/l/n2/f;Le/a/l/n2/f;Le/a/l/n2/f;Le/a/l/n2/f;Le/a/l/n2/f;Le/a/l/n2/f;Le/a/l/n2/f;Ljava/util/List;Ljava/lang/String;Le/a/l/p2/h1;Le/a/l/n2/f;)V

    .line 102
    invoke-virtual {v1, v0}, Le/a/l/p2/e1;->u(Le/a/l/p2/s1$b;)Le/a/l/p2/s1$b;

    move-result-object v4

    goto :goto_34

    .line 103
    :cond_3b
    :goto_33
    sget-object v4, Le/a/l/p2/s1$e;->a:Le/a/l/p2/s1$e;

    :cond_3c
    :goto_34
    return-object v4
.end method

.method public final g(Le/a/l/p2/x;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/l/p2/x;",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Le/a/l/p2/k1;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Le/a/l/p2/e1$c;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Le/a/l/p2/e1$c;

    iget v1, v0, Le/a/l/p2/e1$c;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/l/p2/e1$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/l/p2/e1$c;

    invoke-direct {v0, p0, p3}, Le/a/l/p2/e1$c;-><init>(Le/a/l/p2/e1;Ls1/w/d;)V

    :goto_0
    iget-object p3, v0, Le/a/l/p2/e1$c;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/l/p2/e1$c;->e:I

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
    iget-boolean p1, p1, Le/a/l/p2/x;->j:Z

    xor-int/2addr p1, v3

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    goto :goto_2

    .line 5
    :cond_3
    iget-object p1, p0, Le/a/l/p2/e1;->c:Le/a/l/p2/k0;

    iput v3, v0, Le/a/l/p2/e1$c;->e:I

    invoke-interface {p1, p2, v0}, Le/a/l/p2/k0;->a(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    move-object p1, p3

    check-cast p1, Le/a/l/p2/k1;

    :goto_2
    return-object p1
.end method

.method public final h(Ljava/lang/Integer;Le/a/l/p2/s1;)Le/a/l/p2/s1;
    .locals 3

    .line 1
    sget-object v0, Le/a/l/p2/s1$i;->a:Le/a/l/p2/s1$i;

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    move-object p2, v0

    goto :goto_1

    :cond_1
    const/4 v1, -0x1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_2

    sget-object p2, Le/a/l/p2/s1$e;->a:Le/a/l/p2/s1$e;

    goto :goto_1

    :cond_2
    const/4 v1, -0x2

    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v1, :cond_3

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_0

    :goto_1
    return-object p2
.end method

.method public final i(Le/a/l/p2/x;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/l/p2/x;",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Le/a/l/p2/s1;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Le/a/l/p2/e1$d;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Le/a/l/p2/e1$d;

    iget v1, v0, Le/a/l/p2/e1$d;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/l/p2/e1$d;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/l/p2/e1$d;

    invoke-direct {v0, p0, p3}, Le/a/l/p2/e1$d;-><init>(Le/a/l/p2/e1;Ls1/w/d;)V

    :goto_0
    move-object v8, v0

    iget-object p3, v8, Le/a/l/p2/e1$d;->d:Ljava/lang/Object;

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, v8, Le/a/l/p2/e1$d;->e:I

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    .line 2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :pswitch_0
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_1
    iget-object p1, v8, Le/a/l/p2/e1$d;->j:Ljava/lang/Object;

    check-cast p1, Le/a/l/p2/i1$a;

    iget-object p2, v8, Le/a/l/p2/e1$d;->i:Ljava/lang/Object;

    check-cast p2, Le/a/l/p2/k0$a;

    iget-object v1, v8, Le/a/l/p2/e1$d;->h:Ljava/lang/Object;

    check-cast v1, Le/a/l/p2/x;

    iget-object v3, v8, Le/a/l/p2/e1$d;->g:Ljava/lang/Object;

    check-cast v3, Le/a/l/p2/e1;

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v4, p1

    move-object v10, v3

    move-object v3, p2

    move-object p2, v1

    move-object v1, v10

    goto/16 :goto_5

    :pswitch_2
    iget-object p1, v8, Le/a/l/p2/e1$d;->l:Ljava/lang/Object;

    check-cast p1, Le/a/l/p2/k0$a;

    iget-object p2, v8, Le/a/l/p2/e1$d;->k:Ljava/lang/Object;

    check-cast p2, Le/a/l/p2/x;

    iget-object v1, v8, Le/a/l/p2/e1$d;->j:Ljava/lang/Object;

    check-cast v1, Le/a/l/p2/e1;

    iget-object v3, v8, Le/a/l/p2/e1$d;->i:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v8, Le/a/l/p2/e1$d;->h:Ljava/lang/Object;

    check-cast v4, Le/a/l/p2/x;

    iget-object v5, v8, Le/a/l/p2/e1$d;->g:Ljava/lang/Object;

    check-cast v5, Le/a/l/p2/e1;

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_3
    iget-object p1, v8, Le/a/l/p2/e1$d;->k:Ljava/lang/Object;

    check-cast p1, Le/a/l/p2/x;

    iget-object p2, v8, Le/a/l/p2/e1$d;->j:Ljava/lang/Object;

    check-cast p2, Le/a/l/p2/e1;

    iget-object v1, v8, Le/a/l/p2/e1$d;->i:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v3, v8, Le/a/l/p2/e1$d;->h:Ljava/lang/Object;

    check-cast v3, Le/a/l/p2/x;

    iget-object v4, v8, Le/a/l/p2/e1$d;->g:Ljava/lang/Object;

    check-cast v4, Le/a/l/p2/e1;

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v5, v4

    move-object v10, p2

    move-object p2, p1

    move-object p1, v3

    move-object v3, v10

    goto :goto_3

    :pswitch_4
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_5
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_6
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-boolean p3, p1, Le/a/l/p2/x;->j:Z

    const/4 v1, 0x1

    xor-int/2addr p3, v1

    if-eqz p3, :cond_2

    .line 5
    iput v1, v8, Le/a/l/p2/e1$d;->e:I

    invoke-virtual {p0, p1, v8}, Le/a/l/p2/e1;->q(Le/a/l/p2/x;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v0, :cond_1

    return-object v0

    :cond_1
    :goto_1
    check-cast p3, Le/a/l/p2/s1;

    goto/16 :goto_7

    .line 6
    :cond_2
    iget-object p3, p0, Le/a/l/p2/e1;->g:Le/a/l/p2/t1;

    invoke-virtual {p3}, Le/a/l/p2/t1;->a()Z

    move-result p3

    if-eqz p3, :cond_4

    const/4 p1, 0x2

    iput p1, v8, Le/a/l/p2/e1$d;->e:I

    invoke-virtual {p0, v8}, Le/a/l/p2/e1;->r(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v0, :cond_3

    return-object v0

    :cond_3
    :goto_2
    check-cast p3, Le/a/l/p2/s1;

    goto/16 :goto_7

    .line 7
    :cond_4
    iget-object p3, p0, Le/a/l/p2/e1;->c:Le/a/l/p2/k0;

    iput-object p0, v8, Le/a/l/p2/e1$d;->g:Ljava/lang/Object;

    iput-object p1, v8, Le/a/l/p2/e1$d;->h:Ljava/lang/Object;

    iput-object p2, v8, Le/a/l/p2/e1$d;->i:Ljava/lang/Object;

    iput-object p0, v8, Le/a/l/p2/e1$d;->j:Ljava/lang/Object;

    iput-object p1, v8, Le/a/l/p2/e1$d;->k:Ljava/lang/Object;

    const/4 v3, 0x3

    iput v3, v8, Le/a/l/p2/e1$d;->e:I

    invoke-interface {p3, v1, v1, v1, v8}, Le/a/l/p2/k0;->b(ZZZLs1/w/d;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v0, :cond_5

    return-object v0

    :cond_5
    move-object v3, p0

    move-object v5, v3

    move-object v1, p2

    move-object p2, p1

    .line 8
    :goto_3
    check-cast p3, Le/a/l/p2/k0$a;

    .line 9
    iget-object v4, v5, Le/a/l/p2/e1;->d:Le/a/l/p2/i1;

    .line 10
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 11
    iput-object v5, v8, Le/a/l/p2/e1$d;->g:Ljava/lang/Object;

    iput-object p1, v8, Le/a/l/p2/e1$d;->h:Ljava/lang/Object;

    iput-object v1, v8, Le/a/l/p2/e1$d;->i:Ljava/lang/Object;

    iput-object v3, v8, Le/a/l/p2/e1$d;->j:Ljava/lang/Object;

    iput-object p2, v8, Le/a/l/p2/e1$d;->k:Ljava/lang/Object;

    iput-object p3, v8, Le/a/l/p2/e1$d;->l:Ljava/lang/Object;

    const/4 v7, 0x4

    iput v7, v8, Le/a/l/p2/e1$d;->e:I

    invoke-virtual {v4, v6, v6, v8}, Le/a/l/p2/i1;->a(Ljava/lang/Boolean;Ljava/lang/Boolean;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_6

    return-object v0

    :cond_6
    move-object v10, v4

    move-object v4, p1

    move-object p1, p3

    move-object p3, v10

    move-object v11, v3

    move-object v3, v1

    move-object v1, v11

    .line 12
    :goto_4
    check-cast p3, Le/a/l/p2/i1$a;

    .line 13
    iput-object v1, v8, Le/a/l/p2/e1$d;->g:Ljava/lang/Object;

    iput-object p2, v8, Le/a/l/p2/e1$d;->h:Ljava/lang/Object;

    iput-object p1, v8, Le/a/l/p2/e1$d;->i:Ljava/lang/Object;

    iput-object p3, v8, Le/a/l/p2/e1$d;->j:Ljava/lang/Object;

    iput-object v2, v8, Le/a/l/p2/e1$d;->k:Ljava/lang/Object;

    iput-object v2, v8, Le/a/l/p2/e1$d;->l:Ljava/lang/Object;

    const/4 v6, 0x5

    iput v6, v8, Le/a/l/p2/e1$d;->e:I

    invoke-virtual {v5, v4, v3, v8}, Le/a/l/p2/e1;->g(Le/a/l/p2/x;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_7

    return-object v0

    :cond_7
    move-object v4, p3

    move-object p3, v3

    move-object v3, p1

    :goto_5
    const/4 v6, 0x0

    const/4 v5, 0x0

    move-object v7, p3

    check-cast v7, Le/a/l/p2/k1;

    const/16 v9, 0x18

    iput-object v2, v8, Le/a/l/p2/e1$d;->g:Ljava/lang/Object;

    iput-object v2, v8, Le/a/l/p2/e1$d;->h:Ljava/lang/Object;

    iput-object v2, v8, Le/a/l/p2/e1$d;->i:Ljava/lang/Object;

    iput-object v2, v8, Le/a/l/p2/e1$d;->j:Ljava/lang/Object;

    const/4 p1, 0x6

    iput p1, v8, Le/a/l/p2/e1$d;->e:I

    move-object v2, p2

    .line 14
    invoke-static/range {v1 .. v9}, Le/a/l/p2/e1;->f(Le/a/l/p2/e1;Le/a/l/p2/x;Le/a/l/p2/k0$a;Le/a/l/p2/i1$a;Ljava/util/List;Ljava/lang/String;Le/a/l/p2/k1;Ls1/w/d;I)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v0, :cond_8

    return-object v0

    .line 15
    :cond_8
    :goto_6
    check-cast p3, Le/a/l/p2/s1;

    :goto_7
    return-object p3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final j(Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final k(Le/a/l/p2/x;)Z
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/truecaller/premium/data/ProductKind;

    .line 1
    sget-object v1, Lcom/truecaller/premium/data/ProductKind;->SUBSCRIPTION_MONTHLY:Lcom/truecaller/premium/data/ProductKind;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/truecaller/premium/data/ProductKind;->SUBSCRIPTION_BASIC_MONTHLY:Lcom/truecaller/premium/data/ProductKind;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/truecaller/premium/data/ProductKind;->SUBSCRIPTION_QUARTERLY:Lcom/truecaller/premium/data/ProductKind;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/truecaller/premium/data/ProductKind;->SUBSCRIPTION_HALFYEARLY:Lcom/truecaller/premium/data/ProductKind;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ls1/u/i;->z0([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    .line 2
    iget-object p1, p1, Le/a/l/p2/x;->h:Lcom/truecaller/premium/data/ProductKind;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final l(Le/a/l/p2/x;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/l/p2/x;",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Le/a/l/p2/s1;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    instance-of v4, v2, Le/a/l/p2/e1$e;

    if-eqz v4, :cond_0

    move-object v4, v2

    check-cast v4, Le/a/l/p2/e1$e;

    iget v5, v4, Le/a/l/p2/e1$e;->e:I

    const/high16 v6, -0x80000000

    and-int v7, v5, v6

    if-eqz v7, :cond_0

    sub-int/2addr v5, v6

    iput v5, v4, Le/a/l/p2/e1$e;->e:I

    goto :goto_0

    :cond_0
    new-instance v4, Le/a/l/p2/e1$e;

    invoke-direct {v4, p0, v2}, Le/a/l/p2/e1$e;-><init>(Le/a/l/p2/e1;Ls1/w/d;)V

    :goto_0
    move-object v12, v4

    iget-object v2, v12, Le/a/l/p2/e1$e;->d:Ljava/lang/Object;

    sget-object v4, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v5, v12, Le/a/l/p2/e1$e;->e:I

    const/4 v6, 0x0

    packed-switch v5, :pswitch_data_0

    .line 2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :pswitch_0
    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_1
    iget-object v1, v12, Le/a/l/p2/e1$e;->j:Ljava/lang/Object;

    check-cast v1, Le/a/l/p2/i1$a;

    iget-object v3, v12, Le/a/l/p2/e1$e;->i:Ljava/lang/Object;

    check-cast v3, Le/a/l/p2/k0$a;

    iget-object v5, v12, Le/a/l/p2/e1$e;->h:Ljava/lang/Object;

    check-cast v5, Le/a/l/p2/x;

    iget-object v7, v12, Le/a/l/p2/e1$e;->g:Ljava/lang/Object;

    check-cast v7, Le/a/l/p2/e1;

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v8, v1

    move-object v14, v7

    move-object v7, v3

    move-object v3, v5

    move-object v5, v14

    goto/16 :goto_5

    :pswitch_2
    iget-object v1, v12, Le/a/l/p2/e1$e;->l:Ljava/lang/Object;

    check-cast v1, Le/a/l/p2/k0$a;

    iget-object v3, v12, Le/a/l/p2/e1$e;->k:Ljava/lang/Object;

    check-cast v3, Le/a/l/p2/x;

    iget-object v5, v12, Le/a/l/p2/e1$e;->j:Ljava/lang/Object;

    check-cast v5, Le/a/l/p2/e1;

    iget-object v7, v12, Le/a/l/p2/e1$e;->i:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v8, v12, Le/a/l/p2/e1$e;->h:Ljava/lang/Object;

    check-cast v8, Le/a/l/p2/x;

    iget-object v9, v12, Le/a/l/p2/e1$e;->g:Ljava/lang/Object;

    check-cast v9, Le/a/l/p2/e1;

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_3
    iget-object v1, v12, Le/a/l/p2/e1$e;->k:Ljava/lang/Object;

    check-cast v1, Le/a/l/p2/x;

    iget-object v3, v12, Le/a/l/p2/e1$e;->j:Ljava/lang/Object;

    check-cast v3, Le/a/l/p2/e1;

    iget-object v5, v12, Le/a/l/p2/e1$e;->i:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v7, v12, Le/a/l/p2/e1$e;->h:Ljava/lang/Object;

    check-cast v7, Le/a/l/p2/x;

    iget-object v8, v12, Le/a/l/p2/e1$e;->g:Ljava/lang/Object;

    check-cast v8, Le/a/l/p2/e1;

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v9, v8

    move-object v14, v2

    move-object v2, v1

    move-object v1, v7

    move-object v7, v3

    move-object v3, v5

    move-object v5, v14

    goto/16 :goto_3

    :pswitch_4
    iget-object v1, v12, Le/a/l/p2/e1$e;->h:Ljava/lang/Object;

    check-cast v1, Le/a/l/p2/e1;

    iget-object v3, v12, Le/a/l/p2/e1$e;->g:Ljava/lang/Object;

    check-cast v3, Le/a/l/p2/x;

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v14, v2

    move-object v2, v1

    move-object v1, v3

    move-object v3, v14

    goto :goto_2

    :pswitch_5
    iget-object v1, v12, Le/a/l/p2/e1$e;->h:Ljava/lang/Object;

    check-cast v1, Le/a/l/p2/e1;

    iget-object v3, v12, Le/a/l/p2/e1$e;->g:Ljava/lang/Object;

    check-cast v3, Le/a/l/p2/x;

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v14, v2

    move-object v2, v1

    move-object v1, v3

    move-object v3, v14

    goto :goto_1

    :pswitch_6
    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-boolean v2, v1, Le/a/l/p2/x;->j:Z

    const/4 v5, 0x1

    xor-int/2addr v2, v5

    const/4 v7, 0x2

    if-eqz v2, :cond_2

    .line 5
    iget-object v2, v1, Le/a/l/p2/x;->g:Ljava/lang/String;

    const-string v8, "regular"

    .line 6
    invoke-static {v2, v8}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Le/a/l/p2/e1;->d:Le/a/l/p2/i1;

    iput-object v1, v12, Le/a/l/p2/e1$e;->g:Ljava/lang/Object;

    iput-object v0, v12, Le/a/l/p2/e1$e;->h:Ljava/lang/Object;

    iput v5, v12, Le/a/l/p2/e1$e;->e:I

    invoke-static {v2, v3, v6, v12, v7}, Le/a/l/p2/i1;->b(Le/a/l/p2/i1;Ljava/lang/Boolean;Ljava/lang/Boolean;Ls1/w/d;I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_1

    return-object v4

    :cond_1
    move-object v3, v2

    move-object v2, v0

    :goto_1
    check-cast v3, Le/a/l/p2/i1$a;

    invoke-virtual {v2, v3, v1}, Le/a/l/p2/e1;->s(Le/a/l/p2/i1$a;Le/a/l/p2/x;)Le/a/l/p2/s1;

    move-result-object v1

    goto/16 :goto_7

    .line 7
    :cond_2
    iget-boolean v2, v1, Le/a/l/p2/x;->j:Z

    xor-int/2addr v2, v5

    if-eqz v2, :cond_4

    .line 8
    iget-object v2, v1, Le/a/l/p2/x;->g:Ljava/lang/String;

    const-string v8, "gold"

    .line 9
    invoke-static {v2, v8}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v0, Le/a/l/p2/e1;->d:Le/a/l/p2/i1;

    iput-object v1, v12, Le/a/l/p2/e1$e;->g:Ljava/lang/Object;

    iput-object v0, v12, Le/a/l/p2/e1$e;->h:Ljava/lang/Object;

    iput v7, v12, Le/a/l/p2/e1$e;->e:I

    invoke-static {v2, v6, v3, v12, v5}, Le/a/l/p2/i1;->b(Le/a/l/p2/i1;Ljava/lang/Boolean;Ljava/lang/Boolean;Ls1/w/d;I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_3

    return-object v4

    :cond_3
    move-object v3, v2

    move-object v2, v0

    :goto_2
    check-cast v3, Le/a/l/p2/i1$a;

    invoke-virtual {v2, v3, v1}, Le/a/l/p2/e1;->s(Le/a/l/p2/i1$a;Le/a/l/p2/x;)Le/a/l/p2/s1;

    move-result-object v1

    goto/16 :goto_7

    .line 10
    :cond_4
    iget-object v2, v0, Le/a/l/p2/e1;->c:Le/a/l/p2/k0;

    iput-object v0, v12, Le/a/l/p2/e1$e;->g:Ljava/lang/Object;

    iput-object v1, v12, Le/a/l/p2/e1$e;->h:Ljava/lang/Object;

    move-object/from16 v3, p2

    iput-object v3, v12, Le/a/l/p2/e1$e;->i:Ljava/lang/Object;

    iput-object v0, v12, Le/a/l/p2/e1$e;->j:Ljava/lang/Object;

    iput-object v1, v12, Le/a/l/p2/e1$e;->k:Ljava/lang/Object;

    const/4 v7, 0x3

    iput v7, v12, Le/a/l/p2/e1$e;->e:I

    invoke-interface {v2, v5, v5, v5, v12}, Le/a/l/p2/k0;->b(ZZZLs1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_5

    return-object v4

    :cond_5
    move-object v7, v0

    move-object v9, v7

    move-object v5, v2

    move-object v2, v1

    .line 11
    :goto_3
    check-cast v5, Le/a/l/p2/k0$a;

    .line 12
    iget-object v8, v9, Le/a/l/p2/e1;->d:Le/a/l/p2/i1;

    .line 13
    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 14
    iput-object v9, v12, Le/a/l/p2/e1$e;->g:Ljava/lang/Object;

    iput-object v1, v12, Le/a/l/p2/e1$e;->h:Ljava/lang/Object;

    iput-object v3, v12, Le/a/l/p2/e1$e;->i:Ljava/lang/Object;

    iput-object v7, v12, Le/a/l/p2/e1$e;->j:Ljava/lang/Object;

    iput-object v2, v12, Le/a/l/p2/e1$e;->k:Ljava/lang/Object;

    iput-object v5, v12, Le/a/l/p2/e1$e;->l:Ljava/lang/Object;

    const/4 v11, 0x4

    iput v11, v12, Le/a/l/p2/e1$e;->e:I

    invoke-virtual {v8, v10, v10, v12}, Le/a/l/p2/i1;->a(Ljava/lang/Boolean;Ljava/lang/Boolean;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v4, :cond_6

    return-object v4

    :cond_6
    move-object v14, v8

    move-object v8, v1

    move-object v1, v5

    move-object v5, v7

    move-object v7, v3

    move-object v3, v2

    move-object v2, v14

    .line 15
    :goto_4
    check-cast v2, Le/a/l/p2/i1$a;

    .line 16
    iput-object v5, v12, Le/a/l/p2/e1$e;->g:Ljava/lang/Object;

    iput-object v3, v12, Le/a/l/p2/e1$e;->h:Ljava/lang/Object;

    iput-object v1, v12, Le/a/l/p2/e1$e;->i:Ljava/lang/Object;

    iput-object v2, v12, Le/a/l/p2/e1$e;->j:Ljava/lang/Object;

    iput-object v6, v12, Le/a/l/p2/e1$e;->k:Ljava/lang/Object;

    iput-object v6, v12, Le/a/l/p2/e1$e;->l:Ljava/lang/Object;

    const/4 v10, 0x5

    iput v10, v12, Le/a/l/p2/e1$e;->e:I

    invoke-virtual {v9, v8, v7, v12}, Le/a/l/p2/e1;->g(Le/a/l/p2/x;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v4, :cond_7

    return-object v4

    :cond_7
    move-object v8, v2

    move-object v2, v7

    move-object v7, v1

    :goto_5
    const/4 v10, 0x0

    const/4 v9, 0x0

    move-object v11, v2

    check-cast v11, Le/a/l/p2/k1;

    const/16 v13, 0x18

    iput-object v6, v12, Le/a/l/p2/e1$e;->g:Ljava/lang/Object;

    iput-object v6, v12, Le/a/l/p2/e1$e;->h:Ljava/lang/Object;

    iput-object v6, v12, Le/a/l/p2/e1$e;->i:Ljava/lang/Object;

    iput-object v6, v12, Le/a/l/p2/e1$e;->j:Ljava/lang/Object;

    const/4 v1, 0x6

    iput v1, v12, Le/a/l/p2/e1$e;->e:I

    move-object v6, v3

    .line 17
    invoke-static/range {v5 .. v13}, Le/a/l/p2/e1;->f(Le/a/l/p2/e1;Le/a/l/p2/x;Le/a/l/p2/k0$a;Le/a/l/p2/i1$a;Ljava/util/List;Ljava/lang/String;Le/a/l/p2/k1;Ls1/w/d;I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_8

    return-object v4

    .line 18
    :cond_8
    :goto_6
    move-object v1, v2

    check-cast v1, Le/a/l/p2/s1;

    :goto_7
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final m(Le/a/l/p2/x;Lcom/truecaller/premium/billing/Receipt;Ls1/w/d;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/l/p2/x;",
            "Lcom/truecaller/premium/billing/Receipt;",
            "Ls1/w/d<",
            "-",
            "Le/a/l/p2/s1;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Le/a/l/p2/e1$f;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Le/a/l/p2/e1$f;

    iget v1, v0, Le/a/l/p2/e1$f;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/l/p2/e1$f;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/l/p2/e1$f;

    invoke-direct {v0, p0, p3}, Le/a/l/p2/e1$f;-><init>(Le/a/l/p2/e1;Ls1/w/d;)V

    :goto_0
    move-object v8, v0

    iget-object p3, v8, Le/a/l/p2/e1$f;->d:Ljava/lang/Object;

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, v8, Le/a/l/p2/e1$f;->e:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_4

    if-eq v1, v4, :cond_3

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_1

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, v8, Le/a/l/p2/e1$f;->k:Ljava/lang/Object;

    check-cast p1, Le/a/l/p2/k0$a;

    iget-object p2, v8, Le/a/l/p2/e1$f;->j:Ljava/lang/Object;

    check-cast p2, Le/a/l/p2/x;

    iget-object v1, v8, Le/a/l/p2/e1$f;->i:Ljava/lang/Object;

    check-cast v1, Le/a/l/p2/e1;

    iget-object v3, v8, Le/a/l/p2/e1$f;->h:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    iget-object v4, v8, Le/a/l/p2/e1$f;->g:Ljava/lang/Object;

    check-cast v4, Lcom/truecaller/premium/billing/Receipt;

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v10, v3

    move-object v3, p1

    move-object p1, p2

    move-object p2, v10

    goto/16 :goto_4

    :cond_3
    iget-object p1, v8, Le/a/l/p2/e1$f;->k:Ljava/lang/Object;

    check-cast p1, Le/a/l/p2/x;

    iget-object p2, v8, Le/a/l/p2/e1$f;->j:Ljava/lang/Object;

    check-cast p2, Le/a/l/p2/e1;

    iget-object v1, v8, Le/a/l/p2/e1$f;->i:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v4, v8, Le/a/l/p2/e1$f;->h:Ljava/lang/Object;

    check-cast v4, Lcom/truecaller/premium/billing/Receipt;

    iget-object v6, v8, Le/a/l/p2/e1$f;->g:Ljava/lang/Object;

    check-cast v6, Le/a/l/p2/e1;

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v10, p3

    move-object p3, p2

    move-object p2, v4

    move-object v4, v1

    move-object v1, v10

    goto :goto_2

    :cond_4
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p3, p1, Le/a/l/p2/x;->g:Ljava/lang/String;

    .line 5
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v6, 0x308060

    if-eq v1, v6, :cond_b

    const v6, 0x40c21f9c

    if-eq v1, v6, :cond_5

    goto/16 :goto_6

    :cond_5
    const-string v1, "regular"

    .line 6
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_c

    .line 7
    iget-object p3, p1, Le/a/l/p2/x;->h:Lcom/truecaller/premium/data/ProductKind;

    .line 8
    sget-object v1, Lcom/truecaller/premium/data/ProductKind;->CONSUMABLE_YEARLY:Lcom/truecaller/premium/data/ProductKind;

    if-eq p3, v1, :cond_6

    .line 9
    iget-object p3, p2, Lcom/truecaller/premium/billing/Receipt;->a:Ljava/util/List;

    move-object v1, p3

    goto :goto_1

    :cond_6
    move-object v1, v5

    .line 10
    :goto_1
    iget-object p3, p0, Le/a/l/p2/e1;->c:Le/a/l/p2/k0;

    .line 11
    invoke-virtual {p0, p1}, Le/a/l/p2/e1;->k(Le/a/l/p2/x;)Z

    move-result v6

    .line 12
    invoke-virtual {p0, v1}, Le/a/l/p2/e1;->j(Ljava/util/List;)Z

    move-result v7

    const/4 v9, 0x0

    .line 13
    iput-object p0, v8, Le/a/l/p2/e1$f;->g:Ljava/lang/Object;

    iput-object p2, v8, Le/a/l/p2/e1$f;->h:Ljava/lang/Object;

    iput-object v1, v8, Le/a/l/p2/e1$f;->i:Ljava/lang/Object;

    iput-object p0, v8, Le/a/l/p2/e1$f;->j:Ljava/lang/Object;

    iput-object p1, v8, Le/a/l/p2/e1$f;->k:Ljava/lang/Object;

    iput v4, v8, Le/a/l/p2/e1$f;->e:I

    .line 14
    invoke-interface {p3, v6, v7, v9, v8}, Le/a/l/p2/k0;->b(ZZZLs1/w/d;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v0, :cond_7

    return-object v0

    :cond_7
    move-object v6, p0

    move-object v4, v1

    move-object v1, p3

    move-object p3, v6

    .line 15
    :goto_2
    check-cast v1, Le/a/l/p2/k0$a;

    .line 16
    iget-object v7, v6, Le/a/l/p2/e1;->d:Le/a/l/p2/i1;

    .line 17
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 18
    invoke-virtual {v6, v4}, Le/a/l/p2/e1;->j(Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 19
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_3

    :cond_8
    move-object v6, v5

    .line 20
    :goto_3
    iput-object p2, v8, Le/a/l/p2/e1$f;->g:Ljava/lang/Object;

    iput-object v4, v8, Le/a/l/p2/e1$f;->h:Ljava/lang/Object;

    iput-object p3, v8, Le/a/l/p2/e1$f;->i:Ljava/lang/Object;

    iput-object p1, v8, Le/a/l/p2/e1$f;->j:Ljava/lang/Object;

    iput-object v1, v8, Le/a/l/p2/e1$f;->k:Ljava/lang/Object;

    iput v3, v8, Le/a/l/p2/e1$f;->e:I

    invoke-virtual {v7, v9, v6, v8}, Le/a/l/p2/i1;->a(Ljava/lang/Boolean;Ljava/lang/Boolean;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_9

    return-object v0

    :cond_9
    move-object v10, v4

    move-object v4, p2

    move-object p2, v10

    move-object v11, v1

    move-object v1, p3

    move-object p3, v3

    move-object v3, v11

    .line 21
    :goto_4
    check-cast p3, Le/a/l/p2/i1$a;

    .line 22
    iget-object v6, v4, Lcom/truecaller/premium/billing/Receipt;->e:Ljava/lang/String;

    const/4 v7, 0x0

    const/16 v9, 0x20

    .line 23
    iput-object v5, v8, Le/a/l/p2/e1$f;->g:Ljava/lang/Object;

    iput-object v5, v8, Le/a/l/p2/e1$f;->h:Ljava/lang/Object;

    iput-object v5, v8, Le/a/l/p2/e1$f;->i:Ljava/lang/Object;

    iput-object v5, v8, Le/a/l/p2/e1$f;->j:Ljava/lang/Object;

    iput-object v5, v8, Le/a/l/p2/e1$f;->k:Ljava/lang/Object;

    iput v2, v8, Le/a/l/p2/e1$f;->e:I

    move-object v2, p1

    move-object v4, p3

    move-object v5, p2

    .line 24
    invoke-static/range {v1 .. v9}, Le/a/l/p2/e1;->f(Le/a/l/p2/e1;Le/a/l/p2/x;Le/a/l/p2/k0$a;Le/a/l/p2/i1$a;Ljava/util/List;Ljava/lang/String;Le/a/l/p2/k1;Ls1/w/d;I)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v0, :cond_a

    return-object v0

    .line 25
    :cond_a
    :goto_5
    check-cast p3, Le/a/l/p2/s1;

    goto :goto_7

    :cond_b
    const-string p1, "gold"

    .line 26
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    sget-object p3, Le/a/l/p2/s1$g;->a:Le/a/l/p2/s1$g;

    goto :goto_7

    .line 27
    :cond_c
    :goto_6
    sget-object p3, Le/a/l/p2/s1$i;->a:Le/a/l/p2/s1$i;

    :goto_7
    return-object p3
.end method

.method public final n(Le/a/l/p2/x;Lcom/truecaller/premium/billing/Receipt;Ls1/w/d;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/l/p2/x;",
            "Lcom/truecaller/premium/billing/Receipt;",
            "Ls1/w/d<",
            "-",
            "Le/a/l/p2/s1;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Le/a/l/p2/e1$g;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Le/a/l/p2/e1$g;

    iget v1, v0, Le/a/l/p2/e1$g;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/l/p2/e1$g;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/l/p2/e1$g;

    invoke-direct {v0, p0, p3}, Le/a/l/p2/e1$g;-><init>(Le/a/l/p2/e1;Ls1/w/d;)V

    :goto_0
    move-object v8, v0

    iget-object p3, v8, Le/a/l/p2/e1$g;->d:Ljava/lang/Object;

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, v8, Le/a/l/p2/e1$g;->e:I

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_5

    if-eq v1, v5, :cond_4

    if-eq v1, v4, :cond_3

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_1

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
    iget-object p1, v8, Le/a/l/p2/e1$g;->i:Ljava/lang/Object;

    check-cast p1, Le/a/l/p2/k0$a;

    iget-object p2, v8, Le/a/l/p2/e1$g;->h:Ljava/lang/Object;

    check-cast p2, Le/a/l/p2/x;

    iget-object v1, v8, Le/a/l/p2/e1$g;->g:Ljava/lang/Object;

    check-cast v1, Le/a/l/p2/e1;

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v3, p1

    move-object p1, p2

    goto :goto_3

    :cond_3
    iget-object p1, v8, Le/a/l/p2/e1$g;->i:Ljava/lang/Object;

    check-cast p1, Le/a/l/p2/x;

    iget-object p2, v8, Le/a/l/p2/e1$g;->h:Ljava/lang/Object;

    check-cast p2, Le/a/l/p2/e1;

    iget-object v1, v8, Le/a/l/p2/e1$g;->g:Ljava/lang/Object;

    check-cast v1, Le/a/l/p2/e1;

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-boolean p3, p1, Le/a/l/p2/x;->j:Z

    xor-int/2addr p3, v5

    if-eqz p3, :cond_7

    .line 5
    iput v5, v8, Le/a/l/p2/e1$g;->e:I

    invoke-virtual {p0, p1, p2, v8}, Le/a/l/p2/e1;->m(Le/a/l/p2/x;Lcom/truecaller/premium/billing/Receipt;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v0, :cond_6

    return-object v0

    :cond_6
    :goto_1
    check-cast p3, Le/a/l/p2/s1;

    goto :goto_5

    .line 6
    :cond_7
    iget-object p2, p0, Le/a/l/p2/e1;->c:Le/a/l/p2/k0;

    iput-object p0, v8, Le/a/l/p2/e1$g;->g:Ljava/lang/Object;

    iput-object p0, v8, Le/a/l/p2/e1$g;->h:Ljava/lang/Object;

    iput-object p1, v8, Le/a/l/p2/e1$g;->i:Ljava/lang/Object;

    iput v4, v8, Le/a/l/p2/e1$g;->e:I

    invoke-interface {p2, v5, v5, v5, v8}, Le/a/l/p2/k0;->b(ZZZLs1/w/d;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v0, :cond_8

    return-object v0

    :cond_8
    move-object p2, p0

    move-object v1, p2

    .line 7
    :goto_2
    check-cast p3, Le/a/l/p2/k0$a;

    .line 8
    iget-object v1, v1, Le/a/l/p2/e1;->d:Le/a/l/p2/i1;

    .line 9
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 10
    iput-object p2, v8, Le/a/l/p2/e1$g;->g:Ljava/lang/Object;

    iput-object p1, v8, Le/a/l/p2/e1$g;->h:Ljava/lang/Object;

    iput-object p3, v8, Le/a/l/p2/e1$g;->i:Ljava/lang/Object;

    iput v3, v8, Le/a/l/p2/e1$g;->e:I

    invoke-virtual {v1, v4, v4, v8}, Le/a/l/p2/i1;->a(Ljava/lang/Boolean;Ljava/lang/Boolean;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_9

    return-object v0

    :cond_9
    move-object v3, p3

    move-object p3, v1

    move-object v1, p2

    :goto_3
    move-object v4, p3

    check-cast v4, Le/a/l/p2/i1$a;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v9, 0x38

    const/4 p2, 0x0

    iput-object p2, v8, Le/a/l/p2/e1$g;->g:Ljava/lang/Object;

    iput-object p2, v8, Le/a/l/p2/e1$g;->h:Ljava/lang/Object;

    iput-object p2, v8, Le/a/l/p2/e1$g;->i:Ljava/lang/Object;

    iput v2, v8, Le/a/l/p2/e1$g;->e:I

    move-object v2, p1

    .line 11
    invoke-static/range {v1 .. v9}, Le/a/l/p2/e1;->f(Le/a/l/p2/e1;Le/a/l/p2/x;Le/a/l/p2/k0$a;Le/a/l/p2/i1$a;Ljava/util/List;Ljava/lang/String;Le/a/l/p2/k1;Ls1/w/d;I)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v0, :cond_a

    return-object v0

    .line 12
    :cond_a
    :goto_4
    check-cast p3, Le/a/l/p2/s1;

    :goto_5
    return-object p3
.end method

.method public final o(Lcom/truecaller/premium/billing/Receipt;Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/premium/billing/Receipt;",
            "Ls1/w/d<",
            "-",
            "Le/a/l/p2/s1;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/l/p2/e1$h;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/l/p2/e1$h;

    iget v1, v0, Le/a/l/p2/e1$h;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/l/p2/e1$h;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/l/p2/e1$h;

    invoke-direct {v0, p0, p2}, Le/a/l/p2/e1$h;-><init>(Le/a/l/p2/e1;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/l/p2/e1$h;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/l/p2/e1$h;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

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
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p1, Lcom/truecaller/premium/billing/Receipt;->g:Lcom/truecaller/premium/billing/Receipt$State;

    .line 5
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    if-eqz p2, :cond_6

    if-ne p2, v4, :cond_5

    .line 6
    iput v4, v0, Le/a/l/p2/e1$h;->e:I

    invoke-virtual {p0, p1, v0}, Le/a/l/p2/e1;->t(Lcom/truecaller/premium/billing/Receipt;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    check-cast p2, Le/a/l/p2/s1;

    goto :goto_3

    .line 7
    :cond_5
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    :cond_6
    iput v3, v0, Le/a/l/p2/e1$h;->e:I

    invoke-virtual {p0, v0}, Le/a/l/p2/e1;->r(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_7

    return-object v1

    :cond_7
    :goto_2
    check-cast p2, Le/a/l/p2/s1;

    :goto_3
    return-object p2
.end method

.method public final p(Le/a/l/p2/x;Ls1/w/d;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/l/p2/x;",
            "Ls1/w/d<",
            "-",
            "Le/a/l/p2/s1;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    instance-of v1, p2, Le/a/l/p2/e1$j;

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Le/a/l/p2/e1$j;

    iget v2, v1, Le/a/l/p2/e1$j;->e:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Le/a/l/p2/e1$j;->e:I

    goto :goto_0

    :cond_0
    new-instance v1, Le/a/l/p2/e1$j;

    invoke-direct {v1, p0, p2}, Le/a/l/p2/e1$j;-><init>(Le/a/l/p2/e1;Ls1/w/d;)V

    :goto_0
    move-object v9, v1

    iget-object p2, v9, Le/a/l/p2/e1$j;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v9, Le/a/l/p2/e1$j;->e:I

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v2, :cond_6

    if-eq v2, v8, :cond_5

    if-eq v2, v6, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, v9, Le/a/l/p2/e1$j;->i:Ljava/lang/Object;

    check-cast p1, Le/a/l/p2/k0$a;

    iget-object v0, v9, Le/a/l/p2/e1$j;->h:Ljava/lang/Object;

    check-cast v0, Le/a/l/p2/x;

    iget-object v2, v9, Le/a/l/p2/e1$j;->g:Ljava/lang/Object;

    check-cast v2, Le/a/l/p2/e1;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v4, p1

    move-object p1, v0

    goto/16 :goto_4

    :cond_3
    iget-object p1, v9, Le/a/l/p2/e1$j;->i:Ljava/lang/Object;

    check-cast p1, Le/a/l/p2/x;

    iget-object v0, v9, Le/a/l/p2/e1$j;->h:Ljava/lang/Object;

    check-cast v0, Le/a/l/p2/e1;

    iget-object v2, v9, Le/a/l/p2/e1$j;->g:Ljava/lang/Object;

    check-cast v2, Le/a/l/p2/e1;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_4
    iget-object p1, v9, Le/a/l/p2/e1$j;->h:Ljava/lang/Object;

    check-cast p1, Le/a/l/p2/e1;

    iget-object v0, v9, Le/a/l/p2/e1$j;->g:Ljava/lang/Object;

    check-cast v0, Le/a/l/p2/x;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    iget-object p1, v9, Le/a/l/p2/e1$j;->h:Ljava/lang/Object;

    check-cast p1, Le/a/l/p2/e1;

    iget-object v0, v9, Le/a/l/p2/e1$j;->g:Ljava/lang/Object;

    check-cast v0, Le/a/l/p2/x;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_6
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-boolean p2, p1, Le/a/l/p2/x;->j:Z

    xor-int/2addr p2, v8

    if-eqz p2, :cond_8

    .line 5
    iget-object p2, p1, Le/a/l/p2/x;->g:Ljava/lang/String;

    const-string v2, "regular"

    .line 6
    invoke-static {p2, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 7
    iget-object p2, p0, Le/a/l/p2/e1;->d:Le/a/l/p2/i1;

    iput-object p1, v9, Le/a/l/p2/e1$j;->g:Ljava/lang/Object;

    iput-object p0, v9, Le/a/l/p2/e1$j;->h:Ljava/lang/Object;

    iput v8, v9, Le/a/l/p2/e1$j;->e:I

    invoke-static {p2, v0, v7, v9, v6}, Le/a/l/p2/i1;->b(Le/a/l/p2/i1;Ljava/lang/Boolean;Ljava/lang/Boolean;Ls1/w/d;I)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_7

    return-object v1

    :cond_7
    move-object v0, p1

    move-object p1, p0

    :goto_1
    check-cast p2, Le/a/l/p2/i1$a;

    invoke-virtual {p1, p2, v0}, Le/a/l/p2/e1;->s(Le/a/l/p2/i1$a;Le/a/l/p2/x;)Le/a/l/p2/s1;

    move-result-object p1

    goto/16 :goto_6

    .line 8
    :cond_8
    iget-boolean p2, p1, Le/a/l/p2/x;->j:Z

    xor-int/2addr p2, v8

    if-eqz p2, :cond_a

    .line 9
    iget-object p2, p1, Le/a/l/p2/x;->g:Ljava/lang/String;

    const-string v2, "gold"

    .line 10
    invoke-static {p2, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 11
    iget-object p2, p0, Le/a/l/p2/e1;->d:Le/a/l/p2/i1;

    iput-object p1, v9, Le/a/l/p2/e1$j;->g:Ljava/lang/Object;

    iput-object p0, v9, Le/a/l/p2/e1$j;->h:Ljava/lang/Object;

    iput v6, v9, Le/a/l/p2/e1$j;->e:I

    invoke-static {p2, v7, v0, v9, v8}, Le/a/l/p2/i1;->b(Le/a/l/p2/i1;Ljava/lang/Boolean;Ljava/lang/Boolean;Ls1/w/d;I)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_9

    return-object v1

    :cond_9
    move-object v0, p1

    move-object p1, p0

    :goto_2
    check-cast p2, Le/a/l/p2/i1$a;

    invoke-virtual {p1, p2, v0}, Le/a/l/p2/e1;->s(Le/a/l/p2/i1$a;Le/a/l/p2/x;)Le/a/l/p2/s1;

    move-result-object p1

    goto :goto_6

    .line 12
    :cond_a
    iget-object p2, p0, Le/a/l/p2/e1;->f:Le/a/l/u2/a;

    invoke-interface {p2}, Le/a/l/u2/a;->a()Lcom/truecaller/premium/provider/Store;

    move-result-object p2

    sget-object v0, Lcom/truecaller/premium/provider/Store;->GOOGLE_PLAY:Lcom/truecaller/premium/provider/Store;

    if-ne p2, v0, :cond_b

    .line 13
    sget-object p1, Le/a/l/p2/s1$a;->a:Le/a/l/p2/s1$a;

    goto :goto_6

    .line 14
    :cond_b
    iget-object p2, p0, Le/a/l/p2/e1;->c:Le/a/l/p2/k0;

    iput-object p0, v9, Le/a/l/p2/e1$j;->g:Ljava/lang/Object;

    iput-object p0, v9, Le/a/l/p2/e1$j;->h:Ljava/lang/Object;

    iput-object p1, v9, Le/a/l/p2/e1$j;->i:Ljava/lang/Object;

    iput v5, v9, Le/a/l/p2/e1$j;->e:I

    invoke-interface {p2, v8, v8, v8, v9}, Le/a/l/p2/k0;->b(ZZZLs1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_c

    return-object v1

    :cond_c
    move-object v0, p0

    move-object v2, v0

    .line 15
    :goto_3
    check-cast p2, Le/a/l/p2/k0$a;

    .line 16
    iget-object v2, v2, Le/a/l/p2/e1;->d:Le/a/l/p2/i1;

    .line 17
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 18
    iput-object v0, v9, Le/a/l/p2/e1$j;->g:Ljava/lang/Object;

    iput-object p1, v9, Le/a/l/p2/e1$j;->h:Ljava/lang/Object;

    iput-object p2, v9, Le/a/l/p2/e1$j;->i:Ljava/lang/Object;

    iput v4, v9, Le/a/l/p2/e1$j;->e:I

    invoke-virtual {v2, v5, v5, v9}, Le/a/l/p2/i1;->a(Ljava/lang/Boolean;Ljava/lang/Boolean;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_d

    return-object v1

    :cond_d
    move-object v4, p2

    move-object p2, v2

    move-object v2, v0

    :goto_4
    move-object v5, p2

    check-cast v5, Le/a/l/p2/i1$a;

    const/4 v6, 0x0

    const/4 p2, 0x0

    const/4 v8, 0x0

    const/16 v10, 0x38

    iput-object v7, v9, Le/a/l/p2/e1$j;->g:Ljava/lang/Object;

    iput-object v7, v9, Le/a/l/p2/e1$j;->h:Ljava/lang/Object;

    iput-object v7, v9, Le/a/l/p2/e1$j;->i:Ljava/lang/Object;

    iput v3, v9, Le/a/l/p2/e1$j;->e:I

    move-object v3, p1

    move-object v7, p2

    .line 19
    invoke-static/range {v2 .. v10}, Le/a/l/p2/e1;->f(Le/a/l/p2/e1;Le/a/l/p2/x;Le/a/l/p2/k0$a;Le/a/l/p2/i1$a;Ljava/util/List;Ljava/lang/String;Le/a/l/p2/k1;Ls1/w/d;I)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_e

    return-object v1

    .line 20
    :cond_e
    :goto_5
    move-object p1, p2

    check-cast p1, Le/a/l/p2/s1;

    :goto_6
    return-object p1
.end method

.method public final q(Le/a/l/p2/x;Ls1/w/d;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/l/p2/x;",
            "Ls1/w/d<",
            "-",
            "Le/a/l/p2/s1;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    instance-of v2, p2, Le/a/l/p2/e1$k;

    if-eqz v2, :cond_0

    move-object v2, p2

    check-cast v2, Le/a/l/p2/e1$k;

    iget v3, v2, Le/a/l/p2/e1$k;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Le/a/l/p2/e1$k;->e:I

    goto :goto_0

    :cond_0
    new-instance v2, Le/a/l/p2/e1$k;

    invoke-direct {v2, p0, p2}, Le/a/l/p2/e1$k;-><init>(Le/a/l/p2/e1;Ls1/w/d;)V

    :goto_0
    iget-object p2, v2, Le/a/l/p2/e1$k;->d:Ljava/lang/Object;

    sget-object v3, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v4, v2, Le/a/l/p2/e1$k;->e:I

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v4, :cond_5

    if-eq v4, v8, :cond_4

    if-eq v4, v7, :cond_3

    if-eq v4, v6, :cond_2

    if-ne v4, v5, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    :goto_1
    iget-object p1, v2, Le/a/l/p2/e1$k;->h:Ljava/lang/Object;

    check-cast p1, Le/a/l/p2/e1;

    iget-object v0, v2, Le/a/l/p2/e1$k;->g:Ljava/lang/Object;

    check-cast v0, Le/a/l/p2/x;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v10, p2

    move-object p2, p1

    move-object p1, v0

    move-object v0, v10

    goto/16 :goto_5

    :cond_3
    iget-object p1, v2, Le/a/l/p2/e1$k;->h:Ljava/lang/Object;

    check-cast p1, Le/a/l/p2/e1;

    iget-object v0, v2, Le/a/l/p2/e1$k;->g:Ljava/lang/Object;

    check-cast v0, Le/a/l/p2/x;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v10, p2

    move-object p2, p1

    move-object p1, v0

    move-object v0, v10

    goto :goto_3

    :cond_4
    iget-object p1, v2, Le/a/l/p2/e1$k;->h:Ljava/lang/Object;

    check-cast p1, Le/a/l/p2/e1;

    iget-object v0, v2, Le/a/l/p2/e1$k;->g:Ljava/lang/Object;

    check-cast v0, Le/a/l/p2/x;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v10, p2

    move-object p2, p1

    move-object p1, v0

    move-object v0, v10

    goto :goto_2

    :cond_5
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-boolean p2, p1, Le/a/l/p2/x;->j:Z

    xor-int/2addr p2, v8

    if-eqz p2, :cond_b

    .line 5
    iget-object p2, p1, Le/a/l/p2/x;->g:Ljava/lang/String;

    .line 6
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, 0x308060

    const/4 v9, 0x0

    if-eq v4, v5, :cond_8

    const v5, 0x40c21f9c

    if-eq v4, v5, :cond_6

    goto :goto_4

    :cond_6
    const-string v4, "regular"

    .line 7
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    iget-object p2, p0, Le/a/l/p2/e1;->d:Le/a/l/p2/i1;

    iput-object p1, v2, Le/a/l/p2/e1$k;->g:Ljava/lang/Object;

    iput-object p0, v2, Le/a/l/p2/e1$k;->h:Ljava/lang/Object;

    iput v8, v2, Le/a/l/p2/e1$k;->e:I

    invoke-static {p2, v0, v9, v2, v7}, Le/a/l/p2/i1;->b(Le/a/l/p2/i1;Ljava/lang/Boolean;Ljava/lang/Boolean;Ls1/w/d;I)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v3, :cond_7

    return-object v3

    :cond_7
    move-object v0, p2

    move-object p2, p0

    :goto_2
    check-cast v0, Le/a/l/p2/i1$a;

    goto :goto_6

    :cond_8
    const-string v4, "gold"

    .line 8
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    iget-object p2, p0, Le/a/l/p2/e1;->d:Le/a/l/p2/i1;

    iput-object p1, v2, Le/a/l/p2/e1$k;->g:Ljava/lang/Object;

    iput-object p0, v2, Le/a/l/p2/e1$k;->h:Ljava/lang/Object;

    iput v7, v2, Le/a/l/p2/e1$k;->e:I

    invoke-static {p2, v9, v0, v2, v8}, Le/a/l/p2/i1;->b(Le/a/l/p2/i1;Ljava/lang/Boolean;Ljava/lang/Boolean;Ls1/w/d;I)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v3, :cond_9

    return-object v3

    :cond_9
    move-object v0, p2

    move-object p2, p0

    :goto_3
    check-cast v0, Le/a/l/p2/i1$a;

    goto :goto_6

    .line 9
    :cond_a
    :goto_4
    iget-object p2, p0, Le/a/l/p2/e1;->d:Le/a/l/p2/i1;

    iput-object p1, v2, Le/a/l/p2/e1$k;->g:Ljava/lang/Object;

    iput-object p0, v2, Le/a/l/p2/e1$k;->h:Ljava/lang/Object;

    iput v6, v2, Le/a/l/p2/e1$k;->e:I

    invoke-virtual {p2, v1, v1, v2}, Le/a/l/p2/i1;->a(Ljava/lang/Boolean;Ljava/lang/Boolean;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v3, :cond_c

    return-object v3

    .line 10
    :cond_b
    iget-object p2, p0, Le/a/l/p2/e1;->d:Le/a/l/p2/i1;

    iput-object p1, v2, Le/a/l/p2/e1$k;->g:Ljava/lang/Object;

    iput-object p0, v2, Le/a/l/p2/e1$k;->h:Ljava/lang/Object;

    iput v5, v2, Le/a/l/p2/e1$k;->e:I

    invoke-virtual {p2, v1, v1, v2}, Le/a/l/p2/i1;->a(Ljava/lang/Boolean;Ljava/lang/Boolean;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v3, :cond_c

    return-object v3

    :cond_c
    move-object v0, p2

    move-object p2, p0

    .line 11
    :goto_5
    check-cast v0, Le/a/l/p2/i1$a;

    .line 12
    :goto_6
    invoke-virtual {p2, v0, p1}, Le/a/l/p2/e1;->s(Le/a/l/p2/i1$a;Le/a/l/p2/x;)Le/a/l/p2/s1;

    move-result-object p1

    return-object p1
.end method

.method public final r(Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Le/a/l/p2/s1;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/l/p2/e1$l;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/l/p2/e1$l;

    iget v1, v0, Le/a/l/p2/e1$l;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/l/p2/e1$l;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/l/p2/e1$l;

    invoke-direct {v0, p0, p1}, Le/a/l/p2/e1$l;-><init>(Le/a/l/p2/e1;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/l/p2/e1$l;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/l/p2/e1$l;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Le/a/l/p2/e1$l;->g:Ljava/lang/Object;

    check-cast v0, Le/a/l/p2/e1;

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
    iget-object p1, p0, Le/a/l/p2/e1;->d:Le/a/l/p2/i1;

    .line 5
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 6
    iput-object p0, v0, Le/a/l/p2/e1$l;->g:Ljava/lang/Object;

    iput v3, v0, Le/a/l/p2/e1$l;->e:I

    invoke-virtual {p1, v2, v2, v0}, Le/a/l/p2/i1;->a(Ljava/lang/Boolean;Ljava/lang/Boolean;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    .line 7
    :cond_3
    :goto_1
    check-cast p1, Le/a/l/p2/i1$a;

    .line 8
    sget-object v0, Le/a/l/p2/i1$a$c;->a:Le/a/l/p2/i1$a$c;

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object p1, Le/a/l/p2/s1$i;->a:Le/a/l/p2/s1$i;

    goto :goto_2

    .line 9
    :cond_4
    sget-object v0, Le/a/l/p2/i1$a$a;->a:Le/a/l/p2/i1$a$a;

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object p1, Le/a/l/p2/s1$e;->a:Le/a/l/p2/s1$e;

    goto :goto_2

    .line 10
    :cond_5
    instance-of v0, p1, Le/a/l/p2/i1$a$b;

    if-eqz v0, :cond_6

    check-cast p1, Le/a/l/p2/i1$a$b;

    .line 11
    iget-object p1, p1, Le/a/l/p2/i1$a$b;->a:Le/a/l/p2/h1;

    .line 12
    new-instance v0, Le/a/l/p2/s1$f;

    invoke-direct {v0, p1}, Le/a/l/p2/s1$f;-><init>(Le/a/l/p2/h1;)V

    move-object p1, v0

    :goto_2
    return-object p1

    :cond_6
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1
.end method

.method public final s(Le/a/l/p2/i1$a;Le/a/l/p2/x;)Le/a/l/p2/s1;
    .locals 25

    move-object/from16 v0, p1

    .line 1
    sget-object v1, Le/a/l/p2/i1$a$c;->a:Le/a/l/p2/i1$a$c;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Le/a/l/p2/s1$i;->a:Le/a/l/p2/s1$i;

    :goto_0
    move-object v1, v0

    move-object/from16 v0, p0

    goto :goto_1

    .line 2
    :cond_0
    sget-object v1, Le/a/l/p2/i1$a$a;->a:Le/a/l/p2/i1$a$a;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Le/a/l/p2/s1$e;->a:Le/a/l/p2/s1$e;

    goto :goto_0

    .line 3
    :cond_1
    instance-of v1, v0, Le/a/l/p2/i1$a$b;

    if-eqz v1, :cond_2

    check-cast v0, Le/a/l/p2/i1$a$b;

    .line 4
    iget-object v0, v0, Le/a/l/p2/i1$a$b;->a:Le/a/l/p2/h1;

    .line 5
    new-instance v2, Le/a/l/p2/s1$b;

    move-object v1, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v19, 0x0

    const/16 v22, 0x0

    const v23, 0x15fffe

    move-object/from16 v24, v2

    move-object/from16 v2, p2

    move-object/from16 v21, v0

    invoke-direct/range {v1 .. v23}, Le/a/l/p2/s1$b;-><init>(Le/a/l/p2/x;ZZLe/a/l/n2/f;Le/a/l/n2/f;Le/a/l/n2/f;Le/a/l/n2/f;Le/a/l/n2/f;Le/a/l/n2/f;Le/a/l/n2/f;Le/a/l/n2/f;Le/a/l/n2/f;Le/a/l/n2/f;Le/a/l/n2/f;Le/a/l/n2/f;Le/a/l/n2/f;Le/a/l/n2/f;Ljava/util/List;Ljava/lang/String;Le/a/l/p2/h1;Le/a/l/n2/f;I)V

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Le/a/l/p2/e1;->u(Le/a/l/p2/s1$b;)Le/a/l/p2/s1$b;

    move-result-object v1

    :goto_1
    return-object v1

    :cond_2
    move-object/from16 v0, p0

    new-instance v1, Ls1/i;

    invoke-direct {v1}, Ls1/i;-><init>()V

    throw v1
.end method

.method public final t(Lcom/truecaller/premium/billing/Receipt;Ls1/w/d;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/premium/billing/Receipt;",
            "Ls1/w/d<",
            "-",
            "Le/a/l/p2/s1;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/l/p2/e1$m;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/l/p2/e1$m;

    iget v1, v0, Le/a/l/p2/e1$m;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/l/p2/e1$m;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/l/p2/e1$m;

    invoke-direct {v0, p0, p2}, Le/a/l/p2/e1$m;-><init>(Le/a/l/p2/e1;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/l/p2/e1$m;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/l/p2/e1$m;->e:I

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
    iget-object p1, v0, Le/a/l/p2/e1$m;->h:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/premium/billing/Receipt;

    iget-object v2, v0, Le/a/l/p2/e1$m;->g:Ljava/lang/Object;

    check-cast v2, Le/a/l/p2/e1;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Le/a/l/p2/e1;->i:Le/a/l/p2/a;

    iput-object p0, v0, Le/a/l/p2/e1$m;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/l/p2/e1$m;->h:Ljava/lang/Object;

    iput v3, v0, Le/a/l/p2/e1$m;->e:I

    invoke-interface {p2, p1, v0}, Le/a/l/p2/a;->a(Lcom/truecaller/premium/billing/Receipt;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    :goto_1
    check-cast p2, Le/a/l/p2/r0$a;

    .line 5
    iget v3, p2, Le/a/l/p2/r0$a;->a:I

    .line 6
    iget-object v5, p2, Le/a/l/p2/r0$a;->b:Ljava/lang/String;

    .line 7
    iget-object p2, p2, Le/a/l/p2/r0$a;->c:Le/a/l/p2/x;

    if-eqz v3, :cond_6

    if-eq v3, v4, :cond_5

    const/4 v6, 0x3

    if-eq v3, v6, :cond_6

    const/4 p2, 0x4

    if-eq v3, p2, :cond_5

    .line 8
    new-instance p1, Ljava/lang/Integer;

    invoke-direct {p1, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 9
    new-instance p2, Le/a/l/p2/s1$h;

    invoke-direct {p2, v3, v5}, Le/a/l/p2/s1$h;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Le/a/l/p2/e1;->h(Ljava/lang/Integer;Le/a/l/p2/s1;)Le/a/l/p2/s1;

    move-result-object p1

    goto :goto_3

    .line 10
    :cond_5
    new-instance p2, Le/a/l/p2/s1$d;

    invoke-direct {p2, p1}, Le/a/l/p2/s1$d;-><init>(Lcom/truecaller/premium/billing/Receipt;)V

    move-object p1, p2

    goto :goto_3

    :cond_6
    const/4 v3, 0x0

    .line 11
    iput-object v3, v0, Le/a/l/p2/e1$m;->g:Ljava/lang/Object;

    iput-object v3, v0, Le/a/l/p2/e1$m;->h:Ljava/lang/Object;

    iput v4, v0, Le/a/l/p2/e1$m;->e:I

    invoke-virtual {v2, p2, p1, v0}, Le/a/l/p2/e1;->n(Le/a/l/p2/x;Lcom/truecaller/premium/billing/Receipt;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_7

    return-object v1

    :cond_7
    :goto_2
    move-object p1, p2

    check-cast p1, Le/a/l/p2/s1;

    :goto_3
    return-object p1
.end method

.method public final u(Le/a/l/p2/s1$b;)Le/a/l/p2/s1$b;
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Le/a/l/p2/e1;->k:Le/a/l/a/g;

    .line 2
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "dataFetched"

    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v3, v2, Le/a/l/a/g;->a:Le/a/p5/g;

    invoke-interface {v3}, Le/a/p5/g;->i()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    iget-object v3, v2, Le/a/l/a/g;->a:Le/a/p5/g;

    invoke-interface {v3}, Le/a/p5/g;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Le/a/l/a/g;->b:Le/a/p4/b;

    invoke-interface {v3}, Le/a/p4/b;->g2()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v4

    :goto_1
    if-ne v3, v4, :cond_1a

    .line 4
    iget-object v2, v2, Le/a/l/a/g;->c:Le/a/l/a/f;

    invoke-virtual {v2}, Le/a/l/a/f;->a()Le/a/l/a/h;

    move-result-object v2

    .line 5
    iget-object v4, v1, Le/a/l/p2/s1$b;->a:Le/a/l/p2/x;

    .line 6
    iget-boolean v5, v1, Le/a/l/p2/s1$b;->b:Z

    .line 7
    iget-boolean v6, v1, Le/a/l/p2/s1$b;->c:Z

    .line 8
    iget-object v3, v2, Le/a/l/a/h;->a:Le/a/l/a/e;

    .line 9
    iget-boolean v7, v3, Le/a/l/a/e;->b:Z

    if-eqz v7, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_3

    .line 10
    iget-object v3, v3, Le/a/l/a/e;->a:Le/a/l/n2/f;

    move-object v7, v3

    goto :goto_3

    :cond_3
    const/4 v7, 0x0

    .line 11
    :goto_3
    iget-object v3, v2, Le/a/l/a/h;->b:Le/a/l/a/e;

    .line 12
    iget-boolean v9, v3, Le/a/l/a/e;->b:Z

    if-eqz v9, :cond_4

    move-object v10, v3

    goto :goto_4

    :cond_4
    const/4 v10, 0x0

    :goto_4
    if-eqz v10, :cond_5

    .line 13
    iget-object v10, v10, Le/a/l/a/e;->a:Le/a/l/n2/f;

    goto :goto_5

    :cond_5
    const/4 v10, 0x0

    .line 14
    :goto_5
    iget-object v11, v2, Le/a/l/a/h;->c:Le/a/l/a/e;

    .line 15
    iget-boolean v12, v11, Le/a/l/a/e;->b:Z

    if-eqz v12, :cond_6

    move-object v13, v11

    goto :goto_6

    :cond_6
    const/4 v13, 0x0

    :goto_6
    if-eqz v13, :cond_7

    .line 16
    iget-object v13, v13, Le/a/l/a/e;->a:Le/a/l/n2/f;

    goto :goto_7

    :cond_7
    const/4 v13, 0x0

    .line 17
    :goto_7
    iget-object v14, v2, Le/a/l/a/h;->d:Le/a/l/a/e;

    .line 18
    iget-boolean v15, v14, Le/a/l/a/e;->b:Z

    if-eqz v15, :cond_8

    goto :goto_8

    :cond_8
    const/4 v14, 0x0

    :goto_8
    if-eqz v14, :cond_9

    .line 19
    iget-object v14, v14, Le/a/l/a/e;->a:Le/a/l/n2/f;

    goto :goto_9

    :cond_9
    const/4 v14, 0x0

    .line 20
    :goto_9
    iget-object v15, v2, Le/a/l/a/h;->e:Le/a/l/a/e;

    .line 21
    iget-boolean v8, v15, Le/a/l/a/e;->b:Z

    if-eqz v8, :cond_a

    goto :goto_a

    :cond_a
    const/4 v15, 0x0

    :goto_a
    if-eqz v15, :cond_b

    .line 22
    iget-object v8, v15, Le/a/l/a/e;->a:Le/a/l/n2/f;

    move-object v15, v8

    goto :goto_b

    :cond_b
    const/4 v15, 0x0

    .line 23
    :goto_b
    iget-object v8, v2, Le/a/l/a/h;->f:Le/a/l/a/e;

    .line 24
    iget-boolean v0, v8, Le/a/l/a/e;->b:Z

    if-eqz v0, :cond_c

    goto :goto_c

    :cond_c
    const/4 v8, 0x0

    :goto_c
    if-eqz v8, :cond_d

    .line 25
    iget-object v0, v8, Le/a/l/a/e;->a:Le/a/l/n2/f;

    goto :goto_d

    :cond_d
    const/4 v0, 0x0

    .line 26
    :goto_d
    iget-object v8, v2, Le/a/l/a/h;->g:Le/a/l/a/e;

    move-object/from16 v17, v3

    .line 27
    iget-boolean v3, v8, Le/a/l/a/e;->b:Z

    if-eqz v3, :cond_e

    goto :goto_e

    :cond_e
    const/4 v8, 0x0

    :goto_e
    if-eqz v8, :cond_f

    .line 28
    iget-object v3, v8, Le/a/l/a/e;->a:Le/a/l/n2/f;

    move-object/from16 v18, v3

    goto :goto_f

    :cond_f
    const/16 v18, 0x0

    .line 29
    :goto_f
    iget-object v3, v2, Le/a/l/a/h;->h:Le/a/l/a/e;

    .line 30
    iget-boolean v8, v3, Le/a/l/a/e;->b:Z

    if-eqz v8, :cond_10

    goto :goto_10

    :cond_10
    const/4 v3, 0x0

    :goto_10
    if-eqz v3, :cond_11

    .line 31
    iget-object v3, v3, Le/a/l/a/e;->a:Le/a/l/n2/f;

    move-object/from16 v19, v3

    goto :goto_11

    :cond_11
    const/16 v19, 0x0

    :goto_11
    if-eqz v12, :cond_12

    goto :goto_12

    :cond_12
    const/4 v11, 0x0

    :goto_12
    if-eqz v11, :cond_13

    .line 32
    iget-object v3, v11, Le/a/l/a/e;->a:Le/a/l/n2/f;

    move-object/from16 v26, v3

    goto :goto_13

    :cond_13
    const/16 v26, 0x0

    :goto_13
    if-eqz v9, :cond_14

    move-object/from16 v3, v17

    goto :goto_14

    :cond_14
    const/4 v3, 0x0

    :goto_14
    if-eqz v3, :cond_15

    .line 33
    iget-object v3, v3, Le/a/l/a/e;->a:Le/a/l/n2/f;

    move-object/from16 v17, v3

    goto :goto_15

    :cond_15
    const/16 v17, 0x0

    .line 34
    :goto_15
    iget-object v3, v2, Le/a/l/a/h;->k:Le/a/l/a/e;

    .line 35
    iget-boolean v8, v3, Le/a/l/a/e;->b:Z

    if-eqz v8, :cond_16

    goto :goto_16

    :cond_16
    const/4 v3, 0x0

    :goto_16
    if-eqz v3, :cond_17

    .line 36
    iget-object v3, v3, Le/a/l/a/e;->a:Le/a/l/n2/f;

    move-object/from16 v27, v3

    goto :goto_17

    :cond_17
    const/16 v27, 0x0

    .line 37
    :goto_17
    iget-object v2, v2, Le/a/l/a/h;->l:Le/a/l/a/e;

    .line 38
    iget-boolean v3, v2, Le/a/l/a/e;->b:Z

    if-eqz v3, :cond_18

    goto :goto_18

    :cond_18
    const/4 v2, 0x0

    :goto_18
    if-eqz v2, :cond_19

    .line 39
    iget-object v2, v2, Le/a/l/a/e;->a:Le/a/l/n2/f;

    goto :goto_19

    :cond_19
    const/4 v2, 0x0

    .line 40
    :goto_19
    iget-object v3, v1, Le/a/l/p2/s1$b;->q:Le/a/l/n2/f;

    move-object/from16 v20, v3

    .line 41
    iget-object v3, v1, Le/a/l/p2/s1$b;->r:Ljava/util/List;

    move-object/from16 v21, v3

    .line 42
    iget-object v3, v1, Le/a/l/p2/s1$b;->s:Ljava/lang/String;

    move-object/from16 v22, v3

    .line 43
    iget-object v1, v1, Le/a/l/p2/s1$b;->t:Le/a/l/p2/h1;

    move-object/from16 v23, v1

    const/16 v24, 0x0

    const/high16 v25, 0x100000

    .line 44
    new-instance v1, Le/a/l/p2/s1$b;

    move-object v3, v1

    const/4 v8, 0x0

    move-object v9, v10

    move-object v10, v13

    move-object v11, v14

    move-object v12, v15

    move-object v13, v0

    move-object/from16 v14, v18

    move-object/from16 v15, v19

    move-object/from16 v16, v26

    move-object/from16 v18, v27

    move-object/from16 v19, v2

    invoke-direct/range {v3 .. v25}, Le/a/l/p2/s1$b;-><init>(Le/a/l/p2/x;ZZLe/a/l/n2/f;Le/a/l/n2/f;Le/a/l/n2/f;Le/a/l/n2/f;Le/a/l/n2/f;Le/a/l/n2/f;Le/a/l/n2/f;Le/a/l/n2/f;Le/a/l/n2/f;Le/a/l/n2/f;Le/a/l/n2/f;Le/a/l/n2/f;Le/a/l/n2/f;Le/a/l/n2/f;Ljava/util/List;Ljava/lang/String;Le/a/l/p2/h1;Le/a/l/n2/f;I)V

    goto :goto_1a

    :cond_1a
    if-nez v3, :cond_1b

    :goto_1a
    return-object v1

    .line 45
    :cond_1b
    new-instance v0, Ls1/i;

    invoke-direct {v0}, Ls1/i;-><init>()V

    throw v0
.end method
