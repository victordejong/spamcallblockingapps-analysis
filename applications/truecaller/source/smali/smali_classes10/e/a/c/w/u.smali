.class public final Le/a/c/w/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/w/r;


# instance fields
.field public final a:Le/a/c/c/d/w;

.field public final b:Le/a/c/w/o0/g;

.field public final c:Le/a/c/b/e;

.field public final d:Le/a/b0/m/d/a;

.field public final e:Le/a/c/h/e;


# direct methods
.method public constructor <init>(Le/a/c/c/d/w;Le/a/c/w/o0/g;Le/a/c/b/e;Le/a/b0/m/d/a;Le/a/c/h/e;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "filterDataDao"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "smartSmsFilter"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "environmentHelper"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "senderInfoManager"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightsFilterFetcher"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/w/u;->a:Le/a/c/c/d/w;

    iput-object p2, p0, Le/a/c/w/u;->b:Le/a/c/w/o0/g;

    iput-object p3, p0, Le/a/c/w/u;->c:Le/a/c/b/e;

    iput-object p4, p0, Le/a/c/w/u;->d:Le/a/b0/m/d/a;

    iput-object p5, p0, Le/a/c/w/u;->e:Le/a/c/h/e;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    instance-of v3, v2, Le/a/c/w/u$a;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Le/a/c/w/u$a;

    iget v4, v3, Le/a/c/w/u$a;->e:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Le/a/c/w/u$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v3, Le/a/c/w/u$a;

    invoke-direct {v3, v0, v2}, Le/a/c/w/u$a;-><init>(Le/a/c/w/u;Ls1/w/d;)V

    :goto_0
    iget-object v2, v3, Le/a/c/w/u$a;->d:Ljava/lang/Object;

    sget-object v4, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v5, v3, Le/a/c/w/u$a;->e:I

    const/4 v6, 0x2

    const/4 v7, 0x3

    const/4 v8, 0x4

    const/4 v9, 0x5

    const/4 v10, 0x0

    const/4 v12, 0x1

    if-eqz v5, :cond_6

    if-eq v5, v12, :cond_5

    if-eq v5, v6, :cond_4

    if-eq v5, v7, :cond_3

    if-eq v5, v8, :cond_2

    if-ne v5, v9, :cond_1

    iget v1, v3, Le/a/c/w/u$a;->n:I

    iget v5, v3, Le/a/c/w/u$a;->m:I

    iget-object v6, v3, Le/a/c/w/u$a;->i:Ljava/lang/Object;

    check-cast v6, Ljava/util/Iterator;

    iget-object v7, v3, Le/a/c/w/u$a;->h:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v8, v3, Le/a/c/w/u$a;->g:Ljava/lang/Object;

    check-cast v8, Le/a/c/w/u;

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_c

    .line 2
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_2
    iget v1, v3, Le/a/c/w/u$a;->m:I

    iget-object v5, v3, Le/a/c/w/u$a;->j:Ljava/lang/Object;

    check-cast v5, Ljava/util/Iterator;

    iget-object v6, v3, Le/a/c/w/u$a;->i:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    iget-object v7, v3, Le/a/c/w/u$a;->h:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v13, v3, Le/a/c/w/u$a;->g:Ljava/lang/Object;

    check-cast v13, Le/a/c/w/u;

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_3
    iget-object v1, v3, Le/a/c/w/u$a;->k:Ljava/lang/Object;

    check-cast v1, Ljava/util/Iterator;

    iget-object v5, v3, Le/a/c/w/u$a;->j:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    iget-object v6, v3, Le/a/c/w/u$a;->i:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    iget-object v13, v3, Le/a/c/w/u$a;->h:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    iget-object v14, v3, Le/a/c/w/u$a;->g:Ljava/lang/Object;

    check-cast v14, Le/a/c/w/u;

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_4
    iget-object v1, v3, Le/a/c/w/u$a;->k:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v5, v3, Le/a/c/w/u$a;->j:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    iget-object v6, v3, Le/a/c/w/u$a;->i:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    iget-object v13, v3, Le/a/c/w/u$a;->h:Ljava/lang/Object;

    check-cast v13, Ljava/lang/String;

    iget-object v14, v3, Le/a/c/w/u$a;->g:Ljava/lang/Object;

    check-cast v14, Le/a/c/w/u;

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_5
    iget-object v1, v3, Le/a/c/w/u$a;->l:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v5, v3, Le/a/c/w/u$a;->k:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    iget-object v13, v3, Le/a/c/w/u$a;->j:Ljava/lang/Object;

    check-cast v13, Ljava/util/List;

    iget-object v14, v3, Le/a/c/w/u$a;->i:Ljava/lang/Object;

    check-cast v14, Ljava/util/List;

    iget-object v15, v3, Le/a/c/w/u$a;->h:Ljava/lang/Object;

    check-cast v15, Ljava/lang/String;

    iget-object v11, v3, Le/a/c/w/u$a;->g:Ljava/lang/Object;

    check-cast v11, Le/a/c/w/u;

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v16, v14

    move-object v14, v5

    move-object v5, v11

    move-object/from16 v11, v16

    goto :goto_2

    :cond_6
    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v2, v0, Le/a/c/w/u;->c:Le/a/c/b/e;

    invoke-interface {v2}, Le/a/c/b/e;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Le/a/c/c0/q;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_7

    move v5, v12

    goto :goto_1

    :cond_7
    const/4 v5, 0x0

    :goto_1
    if-nez v5, :cond_1c

    iget-object v5, v0, Le/a/c/w/u;->b:Le/a/c/w/o0/g;

    iput-object v0, v3, Le/a/c/w/u$a;->g:Ljava/lang/Object;

    iput-object v1, v3, Le/a/c/w/u$a;->h:Ljava/lang/Object;

    move-object/from16 v11, p2

    iput-object v11, v3, Le/a/c/w/u$a;->i:Ljava/lang/Object;

    move-object/from16 v13, p3

    iput-object v13, v3, Le/a/c/w/u$a;->j:Ljava/lang/Object;

    move-object/from16 v14, p4

    iput-object v14, v3, Le/a/c/w/u$a;->k:Ljava/lang/Object;

    iput-object v2, v3, Le/a/c/w/u$a;->l:Ljava/lang/Object;

    iput v12, v3, Le/a/c/w/u$a;->e:I

    invoke-interface {v5, v1, v3}, Le/a/c/w/o0/g;->b(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v4, :cond_8

    return-object v4

    :cond_8
    move-object v15, v1

    move-object v1, v2

    move-object v2, v5

    move-object v5, v0

    :goto_2
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1c

    .line 6
    iget-object v2, v5, Le/a/c/w/u;->e:Le/a/c/h/e;

    iput-object v5, v3, Le/a/c/w/u$a;->g:Ljava/lang/Object;

    iput-object v15, v3, Le/a/c/w/u$a;->h:Ljava/lang/Object;

    iput-object v11, v3, Le/a/c/w/u$a;->i:Ljava/lang/Object;

    iput-object v13, v3, Le/a/c/w/u$a;->j:Ljava/lang/Object;

    iput-object v14, v3, Le/a/c/w/u$a;->k:Ljava/lang/Object;

    iput-object v10, v3, Le/a/c/w/u$a;->l:Ljava/lang/Object;

    iput v6, v3, Le/a/c/w/u$a;->e:I

    invoke-interface {v2, v1, v3}, Le/a/c/h/e;->c(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_9

    return-object v4

    :cond_9
    move-object v6, v11

    move-object v1, v14

    move-object v14, v5

    move-object v5, v13

    move-object v13, v15

    :goto_3
    check-cast v2, Lcom/truecaller/insights/commons/model/InsightsFilterType;

    invoke-static {v2}, Le/a/m0/a1$k;->t0(Lcom/truecaller/insights/commons/model/InsightsFilterType;)Z

    move-result v2

    if-eqz v2, :cond_a

    goto/16 :goto_12

    .line 7
    :cond_a
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v12

    if-eqz v2, :cond_f

    .line 8
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_5

    .line 9
    :cond_b
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v6, v5

    move-object v5, v1

    move-object v1, v2

    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 10
    iget-object v11, v14, Le/a/c/w/u;->b:Le/a/c/w/o0/g;

    iput-object v14, v3, Le/a/c/w/u$a;->g:Ljava/lang/Object;

    iput-object v13, v3, Le/a/c/w/u$a;->h:Ljava/lang/Object;

    iput-object v6, v3, Le/a/c/w/u$a;->i:Ljava/lang/Object;

    iput-object v5, v3, Le/a/c/w/u$a;->j:Ljava/lang/Object;

    iput-object v1, v3, Le/a/c/w/u$a;->k:Ljava/lang/Object;

    iput v7, v3, Le/a/c/w/u$a;->e:I

    invoke-interface {v11, v2, v13, v3}, Le/a/c/w/o0/g;->c(Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_d

    return-object v4

    :cond_d
    :goto_4
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 11
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 12
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_c

    move-object v1, v5

    move-object v5, v6

    move v2, v12

    goto :goto_6

    :cond_e
    move-object v1, v5

    move-object v5, v6

    :goto_5
    const/4 v2, 0x0

    :goto_6
    if-eqz v2, :cond_f

    move v2, v12

    goto :goto_7

    :cond_f
    const/4 v2, 0x0

    .line 13
    :goto_7
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    xor-int/2addr v6, v12

    if-eqz v6, :cond_14

    .line 14
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_10

    const/4 v5, 0x0

    goto :goto_a

    .line 15
    :cond_10
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v6, v1

    move v1, v2

    move-object v7, v13

    move-object v13, v14

    :cond_11
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 16
    iget-object v11, v13, Le/a/c/w/u;->b:Le/a/c/w/o0/g;

    new-instance v14, Le/a/c/g/v;

    invoke-direct {v14, v7, v2}, Le/a/c/g/v;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v13, v3, Le/a/c/w/u$a;->g:Ljava/lang/Object;

    iput-object v7, v3, Le/a/c/w/u$a;->h:Ljava/lang/Object;

    iput-object v6, v3, Le/a/c/w/u$a;->i:Ljava/lang/Object;

    iput-object v5, v3, Le/a/c/w/u$a;->j:Ljava/lang/Object;

    iput-object v10, v3, Le/a/c/w/u$a;->k:Ljava/lang/Object;

    iput v1, v3, Le/a/c/w/u$a;->m:I

    iput v8, v3, Le/a/c/w/u$a;->e:I

    invoke-interface {v11, v14, v3}, Le/a/c/w/o0/g;->d(Le/a/c/g/v;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_12

    return-object v4

    :cond_12
    :goto_8
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 17
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 18
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_11

    move v2, v1

    move-object v1, v6

    move v5, v12

    move-object v14, v13

    :goto_9
    move-object v13, v7

    goto :goto_a

    :cond_13
    move v2, v1

    move-object v1, v6

    move-object v14, v13

    const/4 v5, 0x0

    goto :goto_9

    :goto_a
    if-eqz v5, :cond_14

    move v5, v12

    goto :goto_b

    :cond_14
    const/4 v5, 0x0

    .line 19
    :goto_b
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    xor-int/2addr v6, v12

    if-eqz v6, :cond_19

    .line 20
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_15

    goto :goto_d

    .line 21
    :cond_15
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v6, v1

    move v1, v5

    move-object v7, v13

    move-object v8, v14

    move v5, v2

    :cond_16
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 22
    iget-object v11, v8, Le/a/c/w/u;->b:Le/a/c/w/o0/g;

    new-instance v13, Le/a/c/g/v;

    invoke-direct {v13, v7, v2}, Le/a/c/g/v;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v8, v3, Le/a/c/w/u$a;->g:Ljava/lang/Object;

    iput-object v7, v3, Le/a/c/w/u$a;->h:Ljava/lang/Object;

    iput-object v6, v3, Le/a/c/w/u$a;->i:Ljava/lang/Object;

    iput-object v10, v3, Le/a/c/w/u$a;->j:Ljava/lang/Object;

    iput-object v10, v3, Le/a/c/w/u$a;->k:Ljava/lang/Object;

    iput v5, v3, Le/a/c/w/u$a;->m:I

    iput v1, v3, Le/a/c/w/u$a;->n:I

    iput v9, v3, Le/a/c/w/u$a;->e:I

    invoke-interface {v11, v13, v3}, Le/a/c/w/o0/g;->d(Le/a/c/g/v;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_17

    return-object v4

    :cond_17
    :goto_c
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 23
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 24
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_16

    move v2, v5

    move v5, v1

    move v1, v12

    goto :goto_e

    :cond_18
    move v2, v5

    move v5, v1

    :goto_d
    const/4 v1, 0x0

    :goto_e
    if-eqz v1, :cond_19

    move v1, v12

    goto :goto_f

    :cond_19
    const/4 v1, 0x0

    :goto_f
    if-nez v2, :cond_1b

    if-nez v5, :cond_1b

    if-eqz v1, :cond_1a

    goto :goto_10

    :cond_1a
    const/4 v11, 0x0

    goto :goto_11

    :cond_1b
    :goto_10
    move v11, v12

    .line 25
    :goto_11
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 26
    :cond_1c
    :goto_12
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v1
.end method
