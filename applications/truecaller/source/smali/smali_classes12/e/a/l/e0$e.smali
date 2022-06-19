.class public final Le/a/l/e0$e;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/l/e0;->Qj()V
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
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.premium.PremiumBasePresenterImpl$loadData$1"
    f = "PremiumBasePresenter.kt"
    l = {
        0xcf,
        0xd9,
        0xea
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/l/e0;


# direct methods
.method public constructor <init>(Le/a/l/e0;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/l/e0$e;->g:Le/a/l/e0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 1
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

    new-instance p1, Le/a/l/e0$e;

    iget-object v0, p0, Le/a/l/e0$e;->g:Le/a/l/e0;

    invoke-direct {p1, v0, p2}, Le/a/l/e0$e;-><init>(Le/a/l/e0;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/l/e0$e;

    iget-object v0, p0, Le/a/l/e0$e;->g:Le/a/l/e0;

    invoke-direct {p1, v0, p2}, Le/a/l/e0$e;-><init>(Le/a/l/e0;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/l/e0$e;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v0, p0

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/l/e0$e;->f:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    iget-object v1, v0, Le/a/l/e0$e;->e:Ljava/lang/Object;

    check-cast v1, Le/a/l/p2/s1;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_1
    iget-object v1, v0, Le/a/l/e0$e;->e:Ljava/lang/Object;

    check-cast v1, Le/a/l/p2/s1;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_2
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v2, p1

    goto :goto_0

    :cond_3
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v2, v0, Le/a/l/e0$e;->g:Le/a/l/e0;

    .line 5
    iget-object v8, v2, Le/a/l/e0;->D:Le/a/l/p2/d1;

    .line 6
    iget-object v2, v2, Le/a/l/e0;->P:Le/a/l/a/c0;

    .line 7
    invoke-interface {v2}, Le/a/l/a/c0;->c()Ljava/lang/String;

    move-result-object v2

    iput v5, v0, Le/a/l/e0$e;->f:I

    invoke-interface {v8, v2, v0}, Le/a/l/p2/d1;->b(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_4

    return-object v1

    .line 8
    :cond_4
    :goto_0
    check-cast v2, Le/a/l/p2/s1;

    .line 9
    iget-object v8, v0, Le/a/l/e0$e;->g:Le/a/l/e0;

    .line 10
    iput-boolean v7, v8, Le/a/l/e0;->n:Z

    .line 11
    invoke-virtual {v8}, Le/a/l/e0;->Nj()Le/a/l/e0$b;

    move-result-object v9

    .line 12
    iput-object v9, v8, Le/a/l/e0;->q:Le/a/l/e0$b;

    .line 13
    sget-object v8, Le/a/l/p2/s1$g;->a:Le/a/l/p2/s1$g;

    invoke-static {v2, v8}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v1, v0, Le/a/l/e0$e;->g:Le/a/l/e0;

    .line 14
    invoke-virtual {v1, v6}, Le/a/l/e0;->Wj(Lcom/truecaller/premium/data/ProductKind;)V

    goto/16 :goto_5

    .line 15
    :cond_5
    instance-of v8, v2, Le/a/l/p2/s1$b;

    if-eqz v8, :cond_a

    .line 16
    iget-object v3, v0, Le/a/l/e0$e;->g:Le/a/l/e0;

    move-object v8, v2

    check-cast v8, Le/a/l/p2/s1$b;

    .line 17
    iput-object v8, v3, Le/a/l/e0;->d:Le/a/l/p2/s1$b;

    .line 18
    iget-object v9, v3, Le/a/l/e0;->K:Le/a/l/o2/e;

    .line 19
    iget-object v10, v3, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v10, Le/a/l/t1;

    .line 20
    iget-object v3, v3, Le/a/l/e0;->r:Lcom/truecaller/premium/PremiumLaunchContext;

    .line 21
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "launchContext"

    invoke-static {v3, v11}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "subscriptionResult"

    invoke-static {v8, v11}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/16 v11, 0x29

    if-eq v3, v11, :cond_7

    const/16 v11, 0x2a

    if-eq v3, v11, :cond_6

    goto :goto_1

    .line 23
    :cond_6
    iget-object v3, v8, Le/a/l/p2/s1$b;->l:Le/a/l/n2/f;

    if-eqz v3, :cond_8

    .line 24
    invoke-virtual {v9, v10, v5, v3, v6}, Le/a/l/o2/e;->b(Le/a/l/o2/h;ZLe/a/l/n2/f;Le/a/l/n2/f;)V

    goto :goto_1

    .line 25
    :cond_7
    iget-object v3, v8, Le/a/l/p2/s1$b;->k:Le/a/l/n2/f;

    if-eqz v3, :cond_8

    .line 26
    invoke-virtual {v9, v10, v7, v3, v6}, Le/a/l/o2/e;->b(Le/a/l/o2/h;ZLe/a/l/n2/f;Le/a/l/n2/f;)V

    .line 27
    :cond_8
    :goto_1
    iget-object v3, v0, Le/a/l/e0$e;->g:Le/a/l/e0;

    .line 28
    iget-object v3, v3, Le/a/l/e0;->k:Ljava/util/HashMap;

    .line 29
    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 30
    iget-object v3, v0, Le/a/l/e0$e;->g:Le/a/l/e0;

    .line 31
    iget-object v3, v3, Le/a/l/e0;->l:Ljava/util/HashMap;

    .line 32
    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 33
    iget-object v3, v0, Le/a/l/e0$e;->g:Le/a/l/e0;

    iput-object v2, v0, Le/a/l/e0$e;->e:Ljava/lang/Object;

    iput v4, v0, Le/a/l/e0$e;->f:I

    invoke-virtual {v3, v8, v0}, Le/a/l/e0;->Tj(Le/a/l/p2/s1$b;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_9

    return-object v1

    :cond_9
    move-object v1, v2

    .line 34
    :goto_2
    iget-object v2, v0, Le/a/l/e0$e;->g:Le/a/l/e0;

    .line 35
    iget-object v2, v2, Le/a/l/e0;->O:Le/a/l/c2;

    .line 36
    invoke-interface {v2, v6}, Le/a/l/c2;->c0(Ljava/lang/String;)V

    .line 37
    iget-object v2, v0, Le/a/l/e0$e;->g:Le/a/l/e0;

    invoke-virtual {v2, v7}, Le/a/l/e0;->ck(Z)V

    :goto_3
    move-object v2, v1

    goto/16 :goto_5

    .line 38
    :cond_a
    instance-of v4, v2, Le/a/l/p2/s1$d;

    if-eqz v4, :cond_b

    iget-object v1, v0, Le/a/l/e0$e;->g:Le/a/l/e0;

    move-object v3, v2

    check-cast v3, Le/a/l/p2/s1$d;

    .line 39
    iget-object v3, v3, Le/a/l/p2/s1$d;->a:Lcom/truecaller/premium/billing/Receipt;

    .line 40
    iput-object v3, v1, Le/a/l/e0;->f:Lcom/truecaller/premium/billing/Receipt;

    .line 41
    iget-object v1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/l/t1;

    if-eqz v1, :cond_15

    invoke-interface {v1}, Le/a/l/t1;->Af()V

    goto/16 :goto_5

    .line 42
    :cond_b
    sget-object v4, Le/a/l/p2/s1$e;->a:Le/a/l/p2/s1$e;

    invoke-static {v2, v4}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    iget-object v1, v0, Le/a/l/e0$e;->g:Le/a/l/e0;

    .line 43
    iget-object v3, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v3, Le/a/l/t1;

    if-eqz v3, :cond_c

    invoke-interface {v3}, Le/a/l/t1;->ix()V

    .line 44
    :cond_c
    invoke-virtual {v1}, Le/a/l/e0;->Uj()V

    goto/16 :goto_5

    .line 45
    :cond_d
    sget-object v4, Le/a/l/p2/s1$i;->a:Le/a/l/p2/s1$i;

    invoke-static {v2, v4}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    iget-object v1, v0, Le/a/l/e0$e;->g:Le/a/l/e0;

    .line 46
    iget-object v3, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v3, Le/a/l/t1;

    if-eqz v3, :cond_e

    invoke-interface {v3}, Le/a/l/t1;->qo()V

    .line 47
    :cond_e
    invoke-virtual {v1}, Le/a/l/e0;->Uj()V

    goto/16 :goto_5

    .line 48
    :cond_f
    sget-object v4, Le/a/l/p2/s1$a;->a:Le/a/l/p2/s1$a;

    invoke-static {v2, v4}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 49
    iget-object v1, v0, Le/a/l/e0$e;->g:Le/a/l/e0;

    .line 50
    iget-object v1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/l/t1;

    if-eqz v1, :cond_10

    .line 51
    invoke-interface {v1}, Le/a/l/t1;->wy()V

    .line 52
    :cond_10
    iget-object v1, v0, Le/a/l/e0$e;->g:Le/a/l/e0;

    .line 53
    invoke-virtual {v1}, Le/a/l/e0;->Uj()V

    goto :goto_5

    .line 54
    :cond_11
    instance-of v4, v2, Le/a/l/p2/s1$h;

    if-eqz v4, :cond_12

    iget-object v1, v0, Le/a/l/e0$e;->g:Le/a/l/e0;

    const-string v3, "Can\'t verify receipt "

    invoke-static {v3}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v2

    check-cast v4, Le/a/l/p2/s1$h;

    .line 55
    iget v8, v4, Le/a/l/p2/s1$h;->a:I

    .line 56
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 57
    iget-object v4, v4, Le/a/l/p2/s1$h;->b:Ljava/lang/String;

    .line 58
    invoke-virtual {v1, v3, v4}, Le/a/l/e0;->bk(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 59
    :cond_12
    instance-of v4, v2, Le/a/l/p2/s1$c;

    if-eqz v4, :cond_13

    iget-object v1, v0, Le/a/l/e0$e;->g:Le/a/l/e0;

    move-object v3, v2

    check-cast v3, Le/a/l/p2/s1$c;

    .line 60
    iget-object v3, v3, Le/a/l/p2/s1$c;->a:Ljava/util/List;

    const-string v4, "\r\n"

    .line 61
    invoke-static {v3, v4}, Lw3/c/a/a/a/h;->p(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "StringUtils.join(result.receipts, \"\\r\\n\")"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "More than one receipt on start"

    .line 62
    invoke-virtual {v1, v4, v3}, Le/a/l/e0;->bk(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 63
    :cond_13
    instance-of v4, v2, Le/a/l/p2/s1$f;

    if-eqz v4, :cond_15

    .line 64
    iget-object v4, v0, Le/a/l/e0$e;->g:Le/a/l/e0;

    .line 65
    iget-object v4, v4, Le/a/l/e0;->k:Ljava/util/HashMap;

    .line 66
    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 67
    iget-object v4, v0, Le/a/l/e0$e;->g:Le/a/l/e0;

    .line 68
    iget-object v4, v4, Le/a/l/e0;->l:Ljava/util/HashMap;

    .line 69
    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 70
    iget-object v4, v0, Le/a/l/e0$e;->g:Le/a/l/e0;

    .line 71
    iput-object v6, v4, Le/a/l/e0;->d:Le/a/l/p2/s1$b;

    .line 72
    move-object v8, v2

    check-cast v8, Le/a/l/p2/s1$f;

    iput-object v2, v0, Le/a/l/e0$e;->e:Ljava/lang/Object;

    iput v3, v0, Le/a/l/e0$e;->f:I

    invoke-virtual {v4, v8, v0}, Le/a/l/e0;->Vj(Le/a/l/p2/s1$f;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_14

    return-object v1

    :cond_14
    move-object v1, v2

    .line 73
    :goto_4
    iget-object v2, v0, Le/a/l/e0$e;->g:Le/a/l/e0;

    invoke-virtual {v2, v7}, Le/a/l/e0;->ck(Z)V

    goto/16 :goto_3

    .line 74
    :cond_15
    :goto_5
    iget-object v1, v0, Le/a/l/e0$e;->g:Le/a/l/e0;

    .line 75
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    instance-of v3, v2, Le/a/l/p2/s1$b;

    if-nez v3, :cond_16

    instance-of v3, v2, Le/a/l/p2/s1$f;

    if-nez v3, :cond_16

    goto/16 :goto_8

    .line 77
    :cond_16
    iget-object v3, v1, Le/a/l/e0;->w:Le/a/l/p2/a1;

    invoke-virtual {v3}, Le/a/l/p2/a1;->b()Z

    move-result v3

    if-eqz v3, :cond_17

    iget-object v3, v1, Le/a/l/e0;->h:Ljava/util/Map;

    sget-object v4, Lcom/truecaller/premium/PremiumAlertType;->PAYMENT_FAILED:Lcom/truecaller/premium/PremiumAlertType;

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    .line 78
    iget-object v2, v1, Le/a/l/e0;->h:Ljava/util/Map;

    new-instance v3, Le/a/l/e0$a;

    .line 79
    iget-object v5, v1, Le/a/l/e0;->x:Le/a/l/p2/y;

    .line 80
    new-instance v6, Le/a/l/b0;

    .line 81
    iget-object v8, v5, Le/a/l/p2/y;->a:Le/a/p5/h0;

    new-array v9, v7, [Ljava/lang/Object;

    const v10, 0x7f1204ee

    invoke-interface {v8, v10, v9}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const-string v8, "resourceProvider.getStri\u2026remiumPaymentFailedTitle)"

    invoke-static {v9, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    iget-object v8, v5, Le/a/l/p2/y;->a:Le/a/p5/h0;

    new-array v10, v7, [Ljava/lang/Object;

    const v11, 0x7f1204ed

    invoke-interface {v8, v11, v10}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const-string v8, "resourceProvider.getStri\u2026miumPaymentFailedMessage)"

    invoke-static {v11, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    iget-object v8, v5, Le/a/l/p2/y;->a:Le/a/p5/h0;

    new-array v10, v7, [Ljava/lang/Object;

    const v12, 0x7f120740

    invoke-interface {v8, v12, v10}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 84
    iget-object v5, v5, Le/a/l/p2/y;->a:Le/a/p5/h0;

    new-array v7, v7, [Ljava/lang/Object;

    const v8, 0x7f1210f7

    invoke-interface {v5, v8, v7}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    const v10, 0x7f04056e

    const v12, 0x7f04064b

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x30

    move-object v8, v6

    .line 85
    invoke-direct/range {v8 .. v17}, Le/a/l/b0;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/Integer;Le/a/l/c0;Ljava/lang/String;Ljava/lang/String;I)V

    .line 86
    invoke-virtual {v1}, Le/a/l/e0;->Pj()Ls1/z/b/a;

    move-result-object v11

    .line 87
    iget-object v5, v1, Le/a/l/e0;->j:Ls1/g;

    invoke-interface {v5}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v5

    move-object v12, v5

    check-cast v12, Ls1/z/b/a;

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/16 v15, 0x20

    const-string v10, "paymentFailedWarning"

    move-object v8, v3

    move-object v9, v6

    .line 88
    invoke-direct/range {v8 .. v15}, Le/a/l/e0$a;-><init>(Le/a/l/b0;Ljava/lang/String;Ls1/z/b/a;Ls1/z/b/a;ZZI)V

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    .line 89
    :cond_17
    iget-object v3, v1, Le/a/l/e0;->w:Le/a/l/p2/a1;

    invoke-virtual {v3}, Le/a/l/p2/a1;->b()Z

    move-result v3

    if-nez v3, :cond_18

    iget-object v3, v1, Le/a/l/e0;->h:Ljava/util/Map;

    sget-object v4, Lcom/truecaller/premium/PremiumAlertType;->PAYMENT_FAILED:Lcom/truecaller/premium/PremiumAlertType;

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 90
    iget-object v2, v1, Le/a/l/e0;->h:Ljava/util/Map;

    invoke-interface {v2, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    .line 91
    :cond_18
    iget-object v3, v1, Le/a/l/e0;->w:Le/a/l/p2/a1;

    invoke-virtual {v3}, Le/a/l/p2/a1;->c()Z

    move-result v3

    if-eqz v3, :cond_19

    iget-object v3, v1, Le/a/l/e0;->h:Ljava/util/Map;

    sget-object v4, Lcom/truecaller/premium/PremiumAlertType;->SUBSCRIPTION_CANCELLED:Lcom/truecaller/premium/PremiumAlertType;

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    .line 92
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    const-string v6, "dd MMM yyyy"

    invoke-direct {v2, v6, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v3, Ljava/util/Date;

    iget-object v6, v1, Le/a/l/e0;->v:Le/a/l/p2/v0;

    invoke-interface {v6}, Le/a/l/p2/v0;->w0()J

    move-result-wide v8

    invoke-direct {v3, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 93
    iget-object v3, v1, Le/a/l/e0;->h:Ljava/util/Map;

    new-instance v6, Le/a/l/e0$a;

    .line 94
    iget-object v8, v1, Le/a/l/e0;->x:Le/a/l/p2/y;

    const-string v9, "endDate"

    invoke-static {v2, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    new-instance v9, Le/a/l/b0;

    .line 97
    iget-object v10, v8, Le/a/l/p2/y;->a:Le/a/p5/h0;

    new-array v11, v7, [Ljava/lang/Object;

    const v12, 0x7f120502

    invoke-interface {v10, v12, v11}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const-string v10, "resourceProvider.getStri\u2026bscriptionCancelledTitle)"

    invoke-static {v11, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    iget-object v10, v8, Le/a/l/p2/y;->a:Le/a/p5/h0;

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v7

    const v2, 0x7f120500

    invoke-interface {v10, v2, v5}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const-string v2, "resourceProvider.getStri\u2026ancelledMessage, endDate)"

    invoke-static {v13, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    iget-object v2, v8, Le/a/l/p2/y;->a:Le/a/p5/h0;

    new-array v5, v7, [Ljava/lang/Object;

    const v10, 0x7f1204ff

    invoke-interface {v2, v10, v5}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 100
    new-instance v2, Le/a/l/c0;

    .line 101
    iget-object v5, v8, Le/a/l/p2/y;->a:Le/a/p5/h0;

    new-array v7, v7, [Ljava/lang/Object;

    const v8, 0x7f120501

    invoke-interface {v5, v8, v7}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "resourceProvider.getStri\u2026iptionCancelledPromoText)"

    invoke-static {v5, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v7, 0x7f04056c

    .line 102
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const v8, 0x7f0806b2

    .line 103
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 104
    invoke-direct {v2, v5, v7, v8}, Le/a/l/c0;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    const v5, 0x7f08012e

    .line 105
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const v12, 0x7f04068d

    const v14, 0x7f04064c

    const/16 v18, 0x0

    const/16 v19, 0x80

    move-object v10, v9

    move-object/from16 v16, v2

    .line 106
    invoke-direct/range {v10 .. v19}, Le/a/l/b0;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/Integer;Le/a/l/c0;Ljava/lang/String;Ljava/lang/String;I)V

    .line 107
    invoke-virtual {v1}, Le/a/l/e0;->Pj()Ls1/z/b/a;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x38

    const-string v10, "subscriptionCancelled"

    move-object v8, v6

    .line 108
    invoke-direct/range {v8 .. v15}, Le/a/l/e0$a;-><init>(Le/a/l/b0;Ljava/lang/String;Ls1/z/b/a;Ls1/z/b/a;ZZI)V

    invoke-interface {v3, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    .line 109
    :cond_19
    iget-object v3, v1, Le/a/l/e0;->w:Le/a/l/p2/a1;

    .line 110
    iget-object v3, v3, Le/a/l/p2/a1;->a:Le/a/l/p2/b1;

    invoke-interface {v3}, Le/a/l/p2/b1;->a()Lcom/truecaller/premium/data/SubscriptionStatusReason;

    move-result-object v3

    sget-object v4, Lcom/truecaller/premium/data/SubscriptionStatusReason;->SUBSCRIPTION_PAUSED:Lcom/truecaller/premium/data/SubscriptionStatusReason;

    if-ne v3, v4, :cond_1a

    goto :goto_6

    :cond_1a
    move v5, v7

    :goto_6
    if-eqz v5, :cond_1b

    .line 111
    iget-object v3, v1, Le/a/l/e0;->h:Ljava/util/Map;

    sget-object v4, Lcom/truecaller/premium/PremiumAlertType;->SUBSCRIPTION_PAUSED:Lcom/truecaller/premium/PremiumAlertType;

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    .line 112
    iget-object v2, v1, Le/a/l/e0;->h:Ljava/util/Map;

    new-instance v3, Le/a/l/e0$a;

    .line 113
    iget-object v5, v1, Le/a/l/e0;->x:Le/a/l/p2/y;

    .line 114
    new-instance v6, Le/a/l/b0;

    .line 115
    iget-object v8, v5, Le/a/l/p2/y;->a:Le/a/p5/h0;

    new-array v9, v7, [Ljava/lang/Object;

    const v10, 0x7f120508

    invoke-interface {v8, v10, v9}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const-string v8, "resourceProvider.getStri\u2026mSubscriptionPausedTitle)"

    invoke-static {v9, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    iget-object v8, v5, Le/a/l/p2/y;->a:Le/a/p5/h0;

    new-array v10, v7, [Ljava/lang/Object;

    const v11, 0x7f120507

    invoke-interface {v8, v11, v10}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const-string v8, "resourceProvider.getStri\u2026ubscriptionPausedMessage)"

    invoke-static {v11, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    iget-object v5, v5, Le/a/l/p2/y;->a:Le/a/p5/h0;

    new-array v7, v7, [Ljava/lang/Object;

    const v8, 0x7f120506

    invoke-interface {v5, v8, v7}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    const v10, 0x7f04056d

    const v12, 0x7f04064c

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0xb0

    move-object v8, v6

    .line 118
    invoke-direct/range {v8 .. v17}, Le/a/l/b0;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/Integer;Le/a/l/c0;Ljava/lang/String;Ljava/lang/String;I)V

    .line 119
    invoke-virtual {v1}, Le/a/l/e0;->Pj()Ls1/z/b/a;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x38

    const-string v10, "subscriptionPaused"

    move-object v8, v3

    move-object v9, v6

    .line 120
    invoke-direct/range {v8 .. v15}, Le/a/l/e0$a;-><init>(Le/a/l/b0;Ljava/lang/String;Ls1/z/b/a;Ls1/z/b/a;ZZI)V

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    .line 121
    :cond_1b
    iget-object v3, v1, Le/a/l/e0;->L:Le/a/l/o2/c;

    .line 122
    iget-object v3, v3, Le/a/l/o2/c;->b:Le/a/z4/d;

    const-string v4, "showLostPremiumConsumableNotification"

    invoke-interface {v3, v4}, Le/a/z4/d;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 123
    iget-object v3, v1, Le/a/l/e0;->h:Ljava/util/Map;

    sget-object v4, Lcom/truecaller/premium/PremiumAlertType;->CONSUMABLE_LOST:Lcom/truecaller/premium/PremiumAlertType;

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_20

    .line 124
    iget-object v2, v1, Le/a/l/e0;->L:Le/a/l/o2/c;

    .line 125
    iget-object v2, v2, Le/a/l/o2/c;->b:Le/a/z4/d;

    const-string v3, "premiumLostConsumableType"

    invoke-interface {v2, v3}, Le/a/z4/d;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_22

    const-string v3, "gold"

    .line 126
    invoke-static {v2, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    iget-object v3, v1, Le/a/l/e0;->d:Le/a/l/p2/s1$b;

    if-eqz v3, :cond_1c

    .line 127
    iget-object v3, v3, Le/a/l/p2/s1$b;->j:Le/a/l/n2/f;

    goto :goto_7

    :cond_1c
    move-object v3, v6

    :goto_7
    if-nez v3, :cond_1d

    goto/16 :goto_8

    :cond_1d
    const-string v3, "premium"

    .line 128
    invoke-static {v2, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    iget-object v3, v1, Le/a/l/e0;->d:Le/a/l/p2/s1$b;

    if-eqz v3, :cond_1e

    .line 129
    iget-object v6, v3, Le/a/l/p2/s1$b;->h:Le/a/l/n2/f;

    :cond_1e
    if-nez v6, :cond_1f

    goto/16 :goto_8

    .line 130
    :cond_1f
    new-instance v11, Le/a/l/g0;

    invoke-direct {v11, v2, v1}, Le/a/l/g0;-><init>(Ljava/lang/String;Le/a/l/e0;)V

    .line 131
    iget-object v2, v1, Le/a/l/e0;->h:Ljava/util/Map;

    new-instance v3, Le/a/l/e0$a;

    .line 132
    iget-object v5, v1, Le/a/l/e0;->x:Le/a/l/p2/y;

    .line 133
    iget-object v6, v1, Le/a/l/e0;->L:Le/a/l/o2/c;

    invoke-virtual {v6}, Le/a/l/o2/c;->c()Ljava/lang/String;

    move-result-object v13

    .line 134
    iget-object v6, v1, Le/a/l/e0;->L:Le/a/l/o2/c;

    invoke-virtual {v6}, Le/a/l/o2/c;->b()Ljava/lang/String;

    move-result-object v15

    .line 135
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "title"

    invoke-static {v13, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "message"

    invoke-static {v15, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    new-instance v9, Le/a/l/b0;

    .line 137
    iget-object v6, v5, Le/a/l/p2/y;->a:Le/a/p5/h0;

    new-array v8, v7, [Ljava/lang/Object;

    const v10, 0x7f12046a

    invoke-interface {v6, v10, v8}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    .line 138
    iget-object v5, v5, Le/a/l/p2/y;->a:Le/a/p5/h0;

    new-array v6, v7, [Ljava/lang/Object;

    const v7, 0x7f120725

    invoke-interface {v5, v7, v6}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    const v14, 0x7f04056d

    const v16, 0x7f04064c

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v21, 0x30

    move-object v12, v9

    .line 139
    invoke-direct/range {v12 .. v21}, Le/a/l/b0;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/Integer;Le/a/l/c0;Ljava/lang/String;Ljava/lang/String;I)V

    .line 140
    new-instance v12, Le/a/l/h0;

    invoke-direct {v12, v1}, Le/a/l/h0;-><init>(Le/a/l/e0;)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x30

    const-string v10, "notificationPremiumCOnsumableLost"

    move-object v8, v3

    .line 141
    invoke-direct/range {v8 .. v15}, Le/a/l/e0$a;-><init>(Le/a/l/b0;Ljava/lang/String;Ls1/z/b/a;Ls1/z/b/a;ZZI)V

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 142
    :cond_20
    instance-of v2, v2, Le/a/l/p2/s1$f;

    if-eqz v2, :cond_22

    iget-object v2, v1, Le/a/l/e0;->h:Ljava/util/Map;

    sget-object v3, Lcom/truecaller/premium/PremiumAlertType;->PENDING_PURCHASE:Lcom/truecaller/premium/PremiumAlertType;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    .line 143
    invoke-virtual {v1}, Le/a/l/e0;->Mj()V

    .line 144
    iget-object v2, v1, Le/a/l/e0;->y:Le/a/l/u2/a;

    invoke-interface {v2}, Le/a/l/u2/a;->a()Lcom/truecaller/premium/provider/Store;

    move-result-object v2

    sget-object v3, Lcom/truecaller/premium/provider/Store;->GOOGLE_PLAY:Lcom/truecaller/premium/provider/Store;

    if-ne v2, v3, :cond_21

    goto :goto_8

    :cond_21
    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 145
    new-instance v11, Le/a/l/j0;

    invoke-direct {v11, v1, v6}, Le/a/l/j0;-><init>(Le/a/l/e0;Ls1/w/d;)V

    const/4 v12, 0x3

    const/4 v13, 0x0

    move-object v8, v1

    invoke-static/range {v8 .. v13}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 146
    :cond_22
    :goto_8
    invoke-virtual {v1}, Le/a/l/e0;->ak()V

    .line 147
    sget-object v1, Ls1/s;->a:Ls1/s;

    return-object v1
.end method
