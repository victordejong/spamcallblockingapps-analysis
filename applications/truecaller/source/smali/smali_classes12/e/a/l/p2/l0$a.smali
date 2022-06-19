.class public final Le/a/l/p2/l0$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/l/p2/l0;->b(ZZZLs1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Le/a/l/p2/k0$a;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.premium.data.PremiumProductIdsFetcherImpl$fetchProductIds$2"
    f = "PremiumProductIdsFetcher.kt"
    l = {
        0x97
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/l/p2/l0;

.field public final synthetic g:Z

.field public final synthetic h:Z

.field public final synthetic i:Z


# direct methods
.method public constructor <init>(Le/a/l/p2/l0;ZZZLs1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/l/p2/l0$a;->f:Le/a/l/p2/l0;

    iput-boolean p2, p0, Le/a/l/p2/l0$a;->g:Z

    iput-boolean p3, p0, Le/a/l/p2/l0$a;->h:Z

    iput-boolean p4, p0, Le/a/l/p2/l0$a;->i:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 6
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

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/l/p2/l0$a;

    iget-object v1, p0, Le/a/l/p2/l0$a;->f:Le/a/l/p2/l0;

    iget-boolean v2, p0, Le/a/l/p2/l0$a;->g:Z

    iget-boolean v3, p0, Le/a/l/p2/l0$a;->h:Z

    iget-boolean v4, p0, Le/a/l/p2/l0$a;->i:Z

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Le/a/l/p2/l0$a;-><init>(Le/a/l/p2/l0;ZZZLs1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/l/p2/l0$a;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/l/p2/l0$a;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/l/p2/l0$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 26

    move-object/from16 v0, p0

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/l/p2/l0$a;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v2, p1

    goto :goto_0

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_1
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v2, v0, Le/a/l/p2/l0$a;->f:Le/a/l/p2/l0;

    .line 5
    iget-object v2, v2, Le/a/l/p2/l0;->a:Le/a/l/p2/o0;

    .line 6
    iput v3, v0, Le/a/l/p2/l0$a;->e:I

    invoke-interface {v2, v0}, Le/a/l/p2/o0;->b(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_2

    return-object v1

    .line 7
    :cond_2
    :goto_0
    check-cast v2, Le/a/l/p2/o0$a;

    .line 8
    sget-object v1, Le/a/l/p2/o0$a$c;->a:Le/a/l/p2/o0$a$c;

    invoke-static {v2, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Le/a/l/p2/k0$a$c;->a:Le/a/l/p2/k0$a$c;

    goto/16 :goto_1c

    .line 9
    :cond_3
    sget-object v1, Le/a/l/p2/o0$a$a;->a:Le/a/l/p2/o0$a$a;

    invoke-static {v2, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Le/a/l/p2/k0$a$a;->a:Le/a/l/p2/k0$a$a;

    goto/16 :goto_1c

    .line 10
    :cond_4
    instance-of v1, v2, Le/a/l/p2/o0$a$b;

    if-eqz v1, :cond_2f

    new-instance v1, Le/a/l/p2/k0$a$b;

    .line 11
    iget-object v4, v0, Le/a/l/p2/l0$a;->f:Le/a/l/p2/l0;

    .line 12
    iget-boolean v5, v0, Le/a/l/p2/l0$a;->g:Z

    .line 13
    iget-boolean v6, v0, Le/a/l/p2/l0$a;->h:Z

    .line 14
    iget-boolean v7, v0, Le/a/l/p2/l0$a;->i:Z

    .line 15
    check-cast v2, Le/a/l/p2/o0$a$b;

    .line 16
    iget-object v2, v2, Le/a/l/p2/o0$a$b;->a:Ljava/util/List;

    .line 17
    iget-object v8, v4, Le/a/l/p2/l0;->b:Le/a/l/c2;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const/4 v11, 0x0

    if-eqz v10, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v13, v10

    check-cast v13, Le/a/l/p2/k1;

    .line 18
    invoke-virtual {v13}, Le/a/l/p2/k1;->h()Z

    move-result v14

    if-eqz v14, :cond_6

    sget-object v14, Lcom/truecaller/premium/data/ProductKind;->SUBSCRIPTION_YEARLY:Lcom/truecaller/premium/data/ProductKind;

    invoke-virtual {v14}, Lcom/truecaller/premium/data/ProductKind;->getKind()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13}, Le/a/l/p2/k1;->b()Ljava/lang/String;

    move-result-object v13

    invoke-static {v14, v13, v3}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v13

    if-eqz v13, :cond_6

    move v13, v3

    goto :goto_1

    :cond_6
    move v13, v11

    :goto_1
    if-eqz v13, :cond_5

    goto :goto_2

    :cond_7
    const/4 v10, 0x0

    :goto_2
    if-eqz v10, :cond_8

    move v9, v3

    goto :goto_3

    :cond_8
    move v9, v11

    .line 19
    :goto_3
    invoke-interface {v8, v9}, Le/a/l/c2;->u2(Z)V

    .line 20
    iget-object v8, v4, Le/a/l/p2/l0;->b:Le/a/l/c2;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_9
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v13, v10

    check-cast v13, Le/a/l/p2/k1;

    .line 21
    invoke-virtual {v13}, Le/a/l/p2/k1;->h()Z

    move-result v14

    if-eqz v14, :cond_a

    sget-object v14, Lcom/truecaller/premium/data/ProductKind;->SUBSCRIPTION_GOLD:Lcom/truecaller/premium/data/ProductKind;

    invoke-virtual {v14}, Lcom/truecaller/premium/data/ProductKind;->getKind()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13}, Le/a/l/p2/k1;->b()Ljava/lang/String;

    move-result-object v13

    invoke-static {v14, v13, v3}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v13

    if-eqz v13, :cond_a

    move v13, v3

    goto :goto_4

    :cond_a
    move v13, v11

    :goto_4
    if-eqz v13, :cond_9

    goto :goto_5

    :cond_b
    const/4 v10, 0x0

    :goto_5
    if-eqz v10, :cond_c

    move v11, v3

    .line 22
    :cond_c
    invoke-interface {v8, v11}, Le/a/l/c2;->b3(Z)V

    if-eqz v5, :cond_1f

    .line 23
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Le/a/l/p2/k1;

    sget-object v10, Lcom/truecaller/premium/data/ProductKind;->SUBSCRIPTION_MONTHLY:Lcom/truecaller/premium/data/ProductKind;

    invoke-virtual {v10}, Lcom/truecaller/premium/data/ProductKind;->getKind()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Le/a/l/p2/k1;->b()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9, v3}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_d

    goto :goto_6

    :cond_e
    const/4 v8, 0x0

    :goto_6
    check-cast v8, Le/a/l/p2/k1;

    if-eqz v8, :cond_f

    invoke-virtual {v4, v8}, Le/a/l/p2/l0;->c(Le/a/l/p2/k1;)Le/a/l/p2/k1;

    move-result-object v5

    goto :goto_7

    :cond_f
    const/4 v5, 0x0

    .line 24
    :goto_7
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_10
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_11

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Le/a/l/p2/k1;

    sget-object v11, Lcom/truecaller/premium/data/ProductKind;->SUBSCRIPTION_YEARLY:Lcom/truecaller/premium/data/ProductKind;

    invoke-virtual {v11}, Lcom/truecaller/premium/data/ProductKind;->getKind()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10}, Le/a/l/p2/k1;->b()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10, v3}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_10

    goto :goto_8

    :cond_11
    const/4 v9, 0x0

    :goto_8
    check-cast v9, Le/a/l/p2/k1;

    if-eqz v9, :cond_12

    invoke-virtual {v4, v9}, Le/a/l/p2/l0;->c(Le/a/l/p2/k1;)Le/a/l/p2/k1;

    move-result-object v8

    goto :goto_9

    :cond_12
    const/4 v8, 0x0

    .line 25
    :goto_9
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_13
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_14

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Le/a/l/p2/k1;

    sget-object v13, Lcom/truecaller/premium/data/ProductKind;->SUBSCRIPTION_WELCOME_OFFER_YEARLY:Lcom/truecaller/premium/data/ProductKind;

    invoke-virtual {v13}, Lcom/truecaller/premium/data/ProductKind;->getKind()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11}, Le/a/l/p2/k1;->b()Ljava/lang/String;

    move-result-object v11

    invoke-static {v13, v11, v3}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_13

    goto :goto_a

    :cond_14
    const/4 v10, 0x0

    :goto_a
    check-cast v10, Le/a/l/p2/k1;

    if-eqz v10, :cond_15

    invoke-virtual {v4, v10}, Le/a/l/p2/l0;->c(Le/a/l/p2/k1;)Le/a/l/p2/k1;

    move-result-object v9

    goto :goto_b

    :cond_15
    const/4 v9, 0x0

    .line 26
    :goto_b
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_16
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_17

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object v13, v11

    check-cast v13, Le/a/l/p2/k1;

    sget-object v14, Lcom/truecaller/premium/data/ProductKind;->SUBSCRIPTION_QUARTERLY:Lcom/truecaller/premium/data/ProductKind;

    invoke-virtual {v14}, Lcom/truecaller/premium/data/ProductKind;->getKind()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13}, Le/a/l/p2/k1;->b()Ljava/lang/String;

    move-result-object v13

    invoke-static {v14, v13, v3}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v13

    if-eqz v13, :cond_16

    goto :goto_c

    :cond_17
    const/4 v11, 0x0

    :goto_c
    check-cast v11, Le/a/l/p2/k1;

    if-eqz v11, :cond_18

    invoke-virtual {v4, v11}, Le/a/l/p2/l0;->c(Le/a/l/p2/k1;)Le/a/l/p2/k1;

    move-result-object v10

    goto :goto_d

    :cond_18
    const/4 v10, 0x0

    .line 27
    :goto_d
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_19
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    move-object v14, v13

    check-cast v14, Le/a/l/p2/k1;

    sget-object v15, Lcom/truecaller/premium/data/ProductKind;->SUBSCRIPTION_HALFYEARLY:Lcom/truecaller/premium/data/ProductKind;

    invoke-virtual {v15}, Lcom/truecaller/premium/data/ProductKind;->getKind()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14}, Le/a/l/p2/k1;->b()Ljava/lang/String;

    move-result-object v14

    invoke-static {v15, v14, v3}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v14

    if-eqz v14, :cond_19

    goto :goto_e

    :cond_1a
    const/4 v13, 0x0

    :goto_e
    check-cast v13, Le/a/l/p2/k1;

    if-eqz v13, :cond_1b

    invoke-virtual {v4, v13}, Le/a/l/p2/l0;->c(Le/a/l/p2/k1;)Le/a/l/p2/k1;

    move-result-object v11

    goto :goto_f

    :cond_1b
    const/4 v11, 0x0

    .line 28
    :goto_f
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_1c
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1d

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    move-object v15, v14

    check-cast v15, Le/a/l/p2/k1;

    sget-object v16, Lcom/truecaller/premium/data/ProductKind;->SUBSCRIPTION_BASIC_MONTHLY:Lcom/truecaller/premium/data/ProductKind;

    invoke-virtual/range {v16 .. v16}, Lcom/truecaller/premium/data/ProductKind;->getKind()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v15}, Le/a/l/p2/k1;->b()Ljava/lang/String;

    move-result-object v15

    invoke-static {v12, v15, v3}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_1c

    goto :goto_10

    :cond_1d
    const/4 v14, 0x0

    :goto_10
    check-cast v14, Le/a/l/p2/k1;

    if-eqz v14, :cond_1e

    invoke-virtual {v4, v14}, Le/a/l/p2/l0;->c(Le/a/l/p2/k1;)Le/a/l/p2/k1;

    move-result-object v12

    goto :goto_11

    :cond_1e
    const/4 v12, 0x0

    :goto_11
    move-object v14, v5

    move-object/from16 v18, v8

    move-object/from16 v19, v9

    move-object/from16 v16, v10

    move-object/from16 v17, v11

    move-object v15, v12

    goto :goto_12

    :cond_1f
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    :goto_12
    if-eqz v7, :cond_28

    .line 29
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_20
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_21

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Le/a/l/p2/k1;

    sget-object v9, Lcom/truecaller/premium/data/ProductKind;->CONSUMABLE_YEARLY:Lcom/truecaller/premium/data/ProductKind;

    invoke-virtual {v9}, Lcom/truecaller/premium/data/ProductKind;->getKind()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Le/a/l/p2/k1;->b()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8, v3}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_20

    goto :goto_13

    :cond_21
    const/4 v7, 0x0

    :goto_13
    check-cast v7, Le/a/l/p2/k1;

    .line 30
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_22
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_23

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Le/a/l/p2/k1;

    sget-object v10, Lcom/truecaller/premium/data/ProductKind;->CONSUMABLE_HALFYEARLY:Lcom/truecaller/premium/data/ProductKind;

    invoke-virtual {v10}, Lcom/truecaller/premium/data/ProductKind;->getKind()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Le/a/l/p2/k1;->b()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9, v3}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_22

    goto :goto_14

    :cond_23
    const/4 v8, 0x0

    :goto_14
    check-cast v8, Le/a/l/p2/k1;

    .line 31
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_24
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_25

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Le/a/l/p2/k1;

    sget-object v11, Lcom/truecaller/premium/data/ProductKind;->CONSUMABLE_MONTHLY:Lcom/truecaller/premium/data/ProductKind;

    invoke-virtual {v11}, Lcom/truecaller/premium/data/ProductKind;->getKind()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10}, Le/a/l/p2/k1;->b()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10, v3}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_24

    goto :goto_15

    :cond_25
    const/4 v9, 0x0

    :goto_15
    check-cast v9, Le/a/l/p2/k1;

    .line 32
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_26
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_27

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Le/a/l/p2/k1;

    sget-object v12, Lcom/truecaller/premium/data/ProductKind;->CONSUMABLE_QUARTERLY:Lcom/truecaller/premium/data/ProductKind;

    invoke-virtual {v12}, Lcom/truecaller/premium/data/ProductKind;->getKind()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11}, Le/a/l/p2/k1;->b()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11, v3}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_26

    goto :goto_16

    :cond_27
    const/4 v10, 0x0

    :goto_16
    check-cast v10, Le/a/l/p2/k1;

    move-object/from16 v21, v7

    move-object/from16 v23, v8

    move-object/from16 v24, v9

    move-object/from16 v25, v10

    goto :goto_17

    :cond_28
    const/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    :goto_17
    if-eqz v6, :cond_2b

    .line 33
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_29
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Le/a/l/p2/k1;

    sget-object v9, Lcom/truecaller/premium/data/ProductKind;->SUBSCRIPTION_GOLD:Lcom/truecaller/premium/data/ProductKind;

    invoke-virtual {v9}, Lcom/truecaller/premium/data/ProductKind;->getKind()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Le/a/l/p2/k1;->b()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8, v3}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_29

    goto :goto_18

    :cond_2a
    const/4 v7, 0x0

    :goto_18
    check-cast v7, Le/a/l/p2/k1;

    if-eqz v7, :cond_2b

    invoke-virtual {v4, v7}, Le/a/l/p2/l0;->c(Le/a/l/p2/k1;)Le/a/l/p2/k1;

    move-result-object v4

    move-object/from16 v20, v4

    goto :goto_19

    :cond_2b
    const/16 v20, 0x0

    :goto_19
    if-eqz v6, :cond_2e

    .line 34
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Le/a/l/p2/k1;

    sget-object v6, Lcom/truecaller/premium/data/ProductKind;->CONSUMABLE_GOLD_YEARLY:Lcom/truecaller/premium/data/ProductKind;

    invoke-virtual {v6}, Lcom/truecaller/premium/data/ProductKind;->getKind()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Le/a/l/p2/k1;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5, v3}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_2c

    move-object v12, v4

    goto :goto_1a

    :cond_2d
    const/4 v12, 0x0

    :goto_1a
    check-cast v12, Le/a/l/p2/k1;

    move-object/from16 v22, v12

    goto :goto_1b

    :cond_2e
    const/16 v22, 0x0

    .line 35
    :goto_1b
    new-instance v2, Le/a/l/p2/l1;

    move-object v13, v2

    invoke-direct/range {v13 .. v25}, Le/a/l/p2/l1;-><init>(Le/a/l/p2/k1;Le/a/l/p2/k1;Le/a/l/p2/k1;Le/a/l/p2/k1;Le/a/l/p2/k1;Le/a/l/p2/k1;Le/a/l/p2/k1;Le/a/l/p2/k1;Le/a/l/p2/k1;Le/a/l/p2/k1;Le/a/l/p2/k1;Le/a/l/p2/k1;)V

    .line 36
    invoke-direct {v1, v2}, Le/a/l/p2/k0$a$b;-><init>(Le/a/l/p2/l1;)V

    :goto_1c
    return-object v1

    :cond_2f
    new-instance v1, Ls1/i;

    invoke-direct {v1}, Ls1/i;-><init>()V

    throw v1
.end method
