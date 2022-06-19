.class public final Le/a/l/v2/h/f;
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
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.premium.ui.embedded.EmbeddedPurchasePresenter$onAttachView$1"
    f = "EmbeddedPurchasePresenter.kt"
    l = {
        0x53
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/l/v2/h/g;

.field public final synthetic g:Le/a/l/v2/h/d;


# direct methods
.method public constructor <init>(Le/a/l/v2/h/g;Le/a/l/v2/h/d;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/l/v2/h/f;->f:Le/a/l/v2/h/g;

    iput-object p2, p0, Le/a/l/v2/h/f;->g:Le/a/l/v2/h/d;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 2
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

    new-instance p1, Le/a/l/v2/h/f;

    iget-object v0, p0, Le/a/l/v2/h/f;->f:Le/a/l/v2/h/g;

    iget-object v1, p0, Le/a/l/v2/h/f;->g:Le/a/l/v2/h/d;

    invoke-direct {p1, v0, v1, p2}, Le/a/l/v2/h/f;-><init>(Le/a/l/v2/h/g;Le/a/l/v2/h/d;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/l/v2/h/f;

    iget-object v0, p0, Le/a/l/v2/h/f;->f:Le/a/l/v2/h/g;

    iget-object v1, p0, Le/a/l/v2/h/f;->g:Le/a/l/v2/h/d;

    invoke-direct {p1, v0, v1, p2}, Le/a/l/v2/h/f;-><init>(Le/a/l/v2/h/g;Le/a/l/v2/h/d;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/l/v2/h/f;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 30

    move-object/from16 v0, p0

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/l/v2/h/f;->e:I

    const/4 v3, 0x1

    const/4 v4, 0x0

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
    iget-object v2, v0, Le/a/l/v2/h/f;->f:Le/a/l/v2/h/g;

    .line 5
    iget-object v2, v2, Le/a/l/v2/h/g;->i:Le/a/l/p2/d1;

    .line 6
    iput v3, v0, Le/a/l/v2/h/f;->e:I

    invoke-static {v2, v4, v0, v3, v4}, Le/a/c/p/a;->e0(Le/a/l/p2/d1;Ljava/lang/String;Ls1/w/d;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_2

    return-object v1

    .line 7
    :cond_2
    :goto_0
    check-cast v2, Le/a/l/p2/s1;

    .line 8
    instance-of v1, v2, Le/a/l/p2/s1$b;

    const/4 v5, 0x0

    if-eqz v1, :cond_2c

    .line 9
    iget-object v1, v0, Le/a/l/v2/h/f;->f:Le/a/l/v2/h/g;

    check-cast v2, Le/a/l/p2/s1$b;

    .line 10
    iput-object v2, v1, Le/a/l/v2/h/g;->d:Le/a/l/p2/s1$b;

    .line 11
    iget-object v6, v1, Le/a/l/v2/h/g;->e:Lcom/truecaller/premium/PremiumLaunchContext;

    const-string v13, "viewLaunchContext"

    if-eqz v6, :cond_2b

    sget-object v14, Lcom/truecaller/premium/PremiumLaunchContext;->WHO_VIEWED_ME:Lcom/truecaller/premium/PremiumLaunchContext;

    const/4 v7, 0x2

    const/4 v8, 0x3

    if-ne v6, v14, :cond_1f

    .line 12
    iget-object v6, v1, Le/a/l/v2/h/g;->w:Le/a/c0/h;

    .line 13
    iget-object v6, v6, Le/a/c0/h;->e:Le/a/c0/c;

    .line 14
    invoke-virtual {v6}, Le/a/c0/c;->g()Z

    move-result v6

    const-string v14, "subscription"

    const v15, 0x7f081767

    if-nez v6, :cond_3

    :goto_1
    move v3, v8

    goto/16 :goto_d

    :cond_3
    const/4 v6, 0x4

    new-array v6, v6, [Le/a/l/n2/f;

    .line 15
    iget-object v10, v2, Le/a/l/p2/s1$b;->h:Le/a/l/n2/f;

    aput-object v10, v6, v5

    .line 16
    iget-object v10, v2, Le/a/l/p2/s1$b;->g:Le/a/l/n2/f;

    aput-object v10, v6, v3

    .line 17
    iget-object v10, v2, Le/a/l/p2/s1$b;->f:Le/a/l/n2/f;

    aput-object v10, v6, v7

    .line 18
    iget-object v10, v2, Le/a/l/p2/s1$b;->d:Le/a/l/n2/f;

    aput-object v10, v6, v8

    .line 19
    invoke-static {v6}, Ls1/u/i;->V([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 20
    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Le/a/l/n2/f;

    .line 21
    iget-object v11, v11, Le/a/l/n2/f;->f:Ljava/lang/String;

    .line 22
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_5

    move v11, v3

    goto :goto_2

    :cond_5
    move v11, v5

    :goto_2
    if-eqz v11, :cond_4

    move-object v4, v10

    .line 23
    :cond_6
    check-cast v4, Le/a/l/n2/f;

    if-eqz v4, :cond_13

    .line 24
    iget-object v6, v4, Le/a/l/n2/f;->n:Le/a/l/p2/n1;

    if-eqz v6, :cond_13

    .line 25
    invoke-virtual {v6}, Le/a/l/p2/n1;->c()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_13

    .line 26
    iget-object v10, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v10, Le/a/l/v2/h/d;

    if-eqz v10, :cond_12

    .line 27
    iget-object v8, v1, Le/a/l/v2/h/g;->r:Le/a/l/v2/i/a/c;

    .line 28
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4, v14}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iget-object v11, v4, Le/a/l/n2/f;->f:Ljava/lang/String;

    .line 30
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_7

    goto :goto_3

    :cond_7
    move v3, v5

    :goto_3
    if-eqz v3, :cond_8

    .line 31
    iget-object v3, v4, Le/a/l/n2/f;->j:Lw3/b/a/u;

    if-nez v3, :cond_8

    const/4 v3, 0x0

    move-object/from16 p1, v10

    move-object v10, v4

    goto :goto_4

    .line 32
    :cond_8
    iget-wide v11, v4, Le/a/l/n2/f;->g:J

    long-to-double v11, v11

    move-object/from16 p1, v10

    .line 33
    iget-wide v9, v4, Le/a/l/n2/f;->e:J

    long-to-double v9, v9

    div-double/2addr v11, v9

    const/16 v9, 0x64

    move-object v10, v4

    int-to-double v3, v9

    mul-double/2addr v11, v3

    double-to-int v3, v11

    sub-int/2addr v9, v3

    .line 34
    iget-object v3, v8, Le/a/l/v2/i/a/c;->b:Le/a/p5/h0;

    const v4, 0x7f1204e8

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v12, v5

    invoke-interface {v3, v4, v12}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "resourceProvider.getStri\u2026gsHeading, percentageOff)"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    new-instance v4, Le/a/l/v2/i/a/b;

    .line 36
    iget-object v9, v8, Le/a/l/v2/i/a/c;->b:Le/a/p5/h0;

    invoke-virtual {v8, v10}, Le/a/l/v2/i/a/c;->i(Le/a/l/n2/f;)I

    move-result v12

    new-array v11, v11, [Ljava/lang/Object;

    .line 37
    iget-object v7, v10, Le/a/l/n2/f;->f:Ljava/lang/String;

    aput-object v7, v11, v5

    .line 38
    invoke-interface {v9, v12, v11}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "resourceProvider.getStri\u2026iption.introductoryPrice)"

    invoke-static {v7, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v20, 0x0

    .line 39
    iget-object v8, v8, Le/a/l/v2/i/a/c;->b:Le/a/p5/h0;

    const v9, 0x7f060625

    invoke-interface {v8, v9}, Le/a/p5/c0;->a(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    .line 40
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0xe4

    move-object/from16 v17, v4

    move-object/from16 v18, v7

    move-object/from16 v19, v3

    .line 41
    invoke-direct/range {v17 .. v26}, Le/a/l/v2/i/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;ZLjava/lang/Integer;Ljava/lang/String;I)V

    move-object v3, v4

    .line 42
    :goto_4
    iget-object v4, v1, Le/a/l/v2/h/g;->s:Le/a/l/v2/i/a/f;

    .line 43
    iget-object v7, v10, Le/a/l/n2/f;->k:Lcom/truecaller/premium/data/ProductKind;

    .line 44
    sget-object v8, Lcom/truecaller/premium/data/ProductKind;->SUBSCRIPTION_YEARLY:Lcom/truecaller/premium/data/ProductKind;

    if-ne v7, v8, :cond_9

    .line 45
    iget-boolean v7, v2, Le/a/l/p2/s1$b;->b:Z

    goto :goto_5

    :cond_9
    move v7, v5

    .line 46
    :goto_5
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v10, v14}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v7, :cond_a

    .line 47
    iget-object v7, v4, Le/a/l/v2/i/a/f;->a:Le/a/p5/c0;

    const v8, 0x7f120509

    new-array v9, v5, [Ljava/lang/Object;

    invoke-interface {v7, v8, v9}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_6

    :cond_a
    const/4 v7, 0x0

    .line 48
    :goto_6
    iget-object v8, v10, Le/a/l/n2/f;->f:Ljava/lang/String;

    .line 49
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_b

    const/4 v8, 0x1

    goto :goto_7

    :cond_b
    move v8, v5

    :goto_7
    if-eqz v8, :cond_e

    .line 50
    iget-object v8, v10, Le/a/l/n2/f;->j:Lw3/b/a/u;

    if-eqz v8, :cond_e

    .line 51
    iget-object v8, v4, Le/a/l/v2/i/a/f;->a:Le/a/p5/c0;

    invoke-virtual {v4, v10}, Le/a/l/v2/i/a/f;->e(Le/a/l/n2/f;)I

    move-result v9

    invoke-virtual {v4, v10}, Le/a/l/v2/i/a/f;->d(Le/a/l/n2/f;)I

    move-result v11

    new-array v12, v5, [Ljava/lang/Object;

    invoke-interface {v8, v9, v11, v12}, Le/a/p5/c0;->k(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 52
    sget-object v9, Le/a/b0/k/h;->b:Ljava/util/Locale;

    .line 53
    invoke-static {v8, v9}, Le/a/p5/g0;->A(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "StringUtils.capitalizeFi\u2026ocale()\n                )"

    invoke-static {v8, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iget-object v9, v4, Le/a/l/v2/i/a/f;->a:Le/a/p5/c0;

    const/4 v11, 0x2

    new-array v12, v11, [Ljava/lang/Object;

    .line 55
    iget-object v15, v10, Le/a/l/n2/f;->k:Lcom/truecaller/premium/data/ProductKind;

    .line 56
    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    if-eq v15, v11, :cond_d

    const/4 v11, 0x3

    if-eq v15, v11, :cond_c

    .line 57
    iget v11, v10, Le/a/l/n2/f;->i:I

    goto :goto_8

    .line 58
    :cond_c
    iget v11, v10, Le/a/l/n2/f;->i:I

    mul-int/lit8 v11, v11, 0x6

    goto :goto_8

    .line 59
    :cond_d
    iget v11, v10, Le/a/l/n2/f;->i:I

    mul-int/lit8 v11, v11, 0x3

    .line 60
    :goto_8
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v12, v5

    const/4 v11, 0x1

    aput-object v8, v12, v11

    const v8, 0x7f12051d

    invoke-interface {v9, v8, v12}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 61
    iget-object v9, v4, Le/a/l/v2/i/a/f;->a:Le/a/p5/c0;

    const v11, 0x7f1204c9

    new-array v12, v5, [Ljava/lang/Object;

    invoke-interface {v9, v11, v12}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto :goto_9

    :cond_e
    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_9
    if-eqz v9, :cond_f

    .line 62
    iget-object v11, v4, Le/a/l/v2/i/a/f;->c:Le/a/u3/g;

    invoke-virtual {v11}, Le/a/u3/g;->g0()Le/a/u3/i;

    move-result-object v11

    invoke-interface {v11}, Le/a/u3/i;->isEnabled()Z

    move-result v11

    if-eqz v11, :cond_f

    .line 63
    iget-object v11, v4, Le/a/l/v2/i/a/f;->a:Le/a/p5/c0;

    const v12, 0x7f1204f7

    new-array v15, v5, [Ljava/lang/Object;

    invoke-interface {v11, v12, v15}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto :goto_a

    :cond_f
    const/4 v11, 0x0

    .line 64
    :goto_a
    iget-object v12, v10, Le/a/l/n2/f;->h:Lw3/b/a/u;

    if-eqz v12, :cond_10

    .line 65
    invoke-virtual {v12}, Lw3/b/a/u;->s()I

    move-result v15

    if-lez v15, :cond_10

    .line 66
    iget-object v4, v4, Le/a/l/v2/i/a/f;->a:Le/a/p5/c0;

    invoke-virtual {v12}, Lw3/b/a/u;->s()I

    move-result v5

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    invoke-virtual {v12}, Lw3/b/a/u;->s()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v17, 0x0

    aput-object v12, v15, v17

    const v12, 0x7f100021

    invoke-interface {v4, v12, v5, v15}, Le/a/p5/c0;->k(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move/from16 v5, v17

    goto :goto_b

    :cond_10
    const/4 v4, 0x0

    :goto_b
    const/4 v12, 0x5

    new-array v12, v12, [Ljava/lang/String;

    aput-object v7, v12, v5

    const/4 v5, 0x1

    aput-object v8, v12, v5

    const/4 v7, 0x2

    aput-object v9, v12, v7

    const/4 v7, 0x3

    aput-object v4, v12, v7

    const/4 v4, 0x4

    aput-object v11, v12, v4

    .line 67
    invoke-static {v12}, Ls1/u/i;->V([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 68
    move-object v8, v4

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    xor-int/2addr v5, v8

    if-eqz v5, :cond_11

    const/16 v5, 0x2c

    .line 69
    invoke-static {v5}, Le/d/c/a/a;->w(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "line.separator"

    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Le/a/p5/g0;->C(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    goto :goto_c

    :cond_11
    const/4 v4, 0x0

    :goto_c
    move-object/from16 v5, p1

    .line 70
    invoke-interface {v5, v6, v10, v3, v4}, Le/a/l/v2/h/d;->sv(Ljava/lang/String;Le/a/l/n2/f;Le/a/l/v2/i/a/b;Ljava/lang/String;)V

    move v8, v7

    .line 71
    :cond_12
    invoke-virtual {v1}, Le/a/l/v2/h/g;->Lj()V

    const/4 v5, 0x1

    goto/16 :goto_1

    :cond_13
    const/4 v5, 0x0

    goto/16 :goto_1

    :goto_d
    if-eqz v5, :cond_14

    goto/16 :goto_17

    .line 72
    :cond_14
    iget-object v4, v1, Le/a/l/v2/h/g;->q:Le/a/l/s2/a;

    invoke-interface {v4}, Le/a/l/s2/a;->c()Z

    move-result v4

    .line 73
    iget-object v6, v1, Le/a/l/v2/h/g;->s:Le/a/l/v2/i/a/f;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v12, 0xe

    const v5, 0x7f060625

    move-object v7, v2

    move v11, v4

    invoke-static/range {v6 .. v12}, Le/a/l/v2/i/a/f;->c(Le/a/l/v2/i/a/f;Le/a/l/p2/s1$b;ZZZZI)Ljava/util/List;

    move-result-object v12

    .line 74
    invoke-static {v12, v3}, Ls1/u/i;->K0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v3

    .line 75
    invoke-static {v3}, Ls1/u/i;->x0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    .line 76
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 77
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    const/4 v6, 0x0

    move/from16 v18, v6

    :goto_e
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1b

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v19, v18, 0x1

    if-ltz v18, :cond_1a

    .line 78
    move-object v11, v6

    check-cast v11, Le/a/l/n2/f;

    .line 79
    iget-object v6, v1, Le/a/l/v2/h/g;->r:Le/a/l/v2/i/a/c;

    invoke-static {v3}, Ls1/u/i;->Q(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Le/a/l/n2/f;

    .line 80
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v11, v14}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "dataFetched"

    invoke-static {v2, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    iget-object v7, v11, Le/a/l/n2/f;->k:Lcom/truecaller/premium/data/ProductKind;

    .line 82
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 83
    new-instance v1, Ls1/i;

    invoke-direct {v1}, Ls1/i;-><init>()V

    throw v1

    .line 84
    :pswitch_0
    iget-object v7, v2, Le/a/l/p2/s1$b;->h:Le/a/l/n2/f;

    if-nez v7, :cond_16

    .line 85
    iget-boolean v7, v2, Le/a/l/p2/s1$b;->b:Z

    if-eqz v7, :cond_15

    goto :goto_f

    :cond_15
    :pswitch_1
    const/4 v6, 0x0

    move-object/from16 p1, v3

    move-object v3, v11

    goto/16 :goto_10

    :cond_16
    :goto_f
    const/4 v10, 0x1

    const/16 v20, 0x1

    move-object v7, v11

    move-object v9, v2

    move-object/from16 p1, v3

    move-object v3, v11

    move/from16 v11, v20

    .line 86
    invoke-virtual/range {v6 .. v11}, Le/a/l/v2/i/a/c;->f(Le/a/l/n2/f;Le/a/l/n2/f;Le/a/l/p2/s1$b;ZZ)Le/a/l/v2/i/a/b;

    move-result-object v6

    goto :goto_10

    :pswitch_2
    move-object/from16 p1, v3

    move-object v3, v11

    .line 87
    invoke-virtual {v6, v3, v8}, Le/a/l/v2/i/a/c;->a(Le/a/l/n2/f;Le/a/l/n2/f;)Le/a/l/v2/i/a/b;

    move-result-object v6

    goto :goto_10

    :pswitch_3
    move-object/from16 p1, v3

    move-object v3, v11

    .line 88
    invoke-virtual {v6, v3, v8}, Le/a/l/v2/i/a/c;->d(Le/a/l/n2/f;Le/a/l/n2/f;)Le/a/l/v2/i/a/b;

    move-result-object v6

    goto :goto_10

    :pswitch_4
    move-object/from16 p1, v3

    move-object v3, v11

    .line 89
    iget-boolean v7, v2, Le/a/l/p2/s1$b;->b:Z

    const/4 v8, 0x1

    .line 90
    invoke-virtual {v6, v3, v8, v7}, Le/a/l/v2/i/a/c;->b(Le/a/l/n2/f;ZZ)Le/a/l/v2/i/a/b;

    move-result-object v6

    goto :goto_10

    :pswitch_5
    move-object/from16 p1, v3

    move-object v3, v11

    const/4 v7, 0x1

    .line 91
    new-instance v8, Le/a/l/v2/i/a/b;

    .line 92
    iget-object v9, v6, Le/a/l/v2/i/a/c;->b:Le/a/p5/h0;

    const v10, 0x7f1204d1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v3}, Le/a/l/n2/f;->b()Ljava/lang/String;

    move-result-object v11

    const/16 v20, 0x0

    aput-object v11, v7, v20

    invoke-interface {v9, v10, v7}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "resourceProvider.getStri\u2026iption, it.obtainPrice())"

    invoke-static {v7, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v22, 0x0

    const/16 v23, 0x0

    .line 93
    iget-object v6, v6, Le/a/l/v2/i/a/c;->b:Le/a/p5/h0;

    const v9, 0x7f040680

    invoke-interface {v6, v9}, Le/a/p5/h0;->l(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    const v6, 0x7f081768

    .line 94
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0xe6

    move-object/from16 v20, v8

    move-object/from16 v21, v7

    .line 95
    invoke-direct/range {v20 .. v29}, Le/a/l/v2/i/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;ZLjava/lang/Integer;Ljava/lang/String;I)V

    move-object v6, v8

    :goto_10
    if-eqz v6, :cond_18

    if-nez v18, :cond_17

    .line 96
    iget-object v7, v1, Le/a/l/v2/h/g;->k:Le/a/p5/h0;

    invoke-interface {v7, v5}, Le/a/p5/c0;->a(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    const v5, 0x7f081767

    .line 97
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    .line 98
    iget-object v7, v6, Le/a/l/v2/i/a/b;->a:Ljava/lang/String;

    iget-object v8, v6, Le/a/l/v2/i/a/b;->b:Ljava/lang/String;

    iget-object v9, v6, Le/a/l/v2/i/a/b;->c:Ljava/lang/String;

    iget-boolean v10, v6, Le/a/l/v2/i/a/b;->f:Z

    iget-object v11, v6, Le/a/l/v2/i/a/b;->g:Ljava/lang/Integer;

    iget-object v6, v6, Le/a/l/v2/i/a/b;->h:Ljava/lang/String;

    const-string v5, "title"

    .line 99
    invoke-static {v7, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Le/a/l/v2/i/a/b;

    move-object/from16 v20, v5

    move-object/from16 v21, v7

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    move/from16 v26, v10

    move-object/from16 v27, v11

    move-object/from16 v28, v6

    invoke-direct/range {v20 .. v28}, Le/a/l/v2/i/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;ZLjava/lang/Integer;Ljava/lang/String;)V

    move-object v6, v5

    .line 100
    :cond_17
    iget-object v5, v1, Le/a/l/v2/h/g;->f:Ljava/util/HashMap;

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    :cond_18
    const/4 v6, 0x0

    :goto_11
    if-eqz v6, :cond_19

    .line 101
    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_19
    const v5, 0x7f060625

    move-object/from16 v3, p1

    move/from16 v18, v19

    goto/16 :goto_e

    .line 102
    :cond_1a
    invoke-static {}, Ls1/u/i;->N0()V

    const/4 v1, 0x0

    throw v1

    .line 103
    :cond_1b
    iget-object v3, v2, Le/a/l/p2/s1$b;->k:Le/a/l/n2/f;

    .line 104
    iget-object v5, v1, Le/a/l/v2/h/g;->e:Lcom/truecaller/premium/PremiumLaunchContext;

    if-eqz v5, :cond_1e

    sget-object v6, Lcom/truecaller/premium/PremiumLaunchContext;->WHO_VIEWED_ME:Lcom/truecaller/premium/PremiumLaunchContext;

    if-ne v5, v6, :cond_1c

    iget-object v5, v1, Le/a/l/v2/h/g;->v:Le/a/l/a/s;

    invoke-virtual {v5, v2}, Le/a/l/a/s;->a(Le/a/l/p2/s1$b;)Le/a/l/v2/i/a/b;

    move-result-object v2

    goto :goto_12

    :cond_1c
    const/4 v2, 0x0

    :goto_12
    if-eqz v2, :cond_1d

    if-eqz v3, :cond_1d

    .line 105
    iget-object v5, v1, Le/a/l/v2/h/g;->f:Ljava/util/HashMap;

    invoke-interface {v5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    :cond_1d
    invoke-virtual {v1, v12, v15, v4, v2}, Le/a/l/v2/h/g;->Oj(Ljava/util/List;Ljava/util/List;ZLe/a/l/v2/i/a/b;)V

    goto/16 :goto_17

    .line 107
    :cond_1e
    invoke-static {v13}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v1, 0x0

    throw v1

    .line 108
    :cond_1f
    iget-object v3, v2, Le/a/l/p2/s1$b;->d:Le/a/l/n2/f;

    .line 109
    iget-object v4, v2, Le/a/l/p2/s1$b;->h:Le/a/l/n2/f;

    .line 110
    iget-object v5, v2, Le/a/l/p2/s1$b;->k:Le/a/l/n2/f;

    .line 111
    iget-object v6, v1, Le/a/l/v2/h/g;->q:Le/a/l/s2/a;

    invoke-interface {v6}, Le/a/l/s2/a;->c()Z

    move-result v15

    .line 112
    iget-object v6, v1, Le/a/l/v2/h/g;->r:Le/a/l/v2/i/a/c;

    .line 113
    iget-boolean v7, v2, Le/a/l/p2/s1$b;->b:Z

    const/4 v8, 0x0

    .line 114
    invoke-virtual {v6, v3, v8, v7}, Le/a/l/v2/i/a/c;->b(Le/a/l/n2/f;ZZ)Le/a/l/v2/i/a/b;

    move-result-object v12

    if-eqz v4, :cond_21

    xor-int/lit8 v6, v15, 0x1

    if-eqz v6, :cond_20

    move-object v6, v4

    goto :goto_13

    :cond_20
    const/4 v6, 0x0

    :goto_13
    if-eqz v6, :cond_21

    .line 115
    iget-object v6, v1, Le/a/l/v2/h/g;->r:Le/a/l/v2/i/a/c;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v16, 0x10

    move-object v7, v4

    move-object v8, v3

    move-object v9, v2

    move-object v0, v12

    move/from16 v12, v16

    invoke-static/range {v6 .. v12}, Le/a/l/v2/i/a/c;->g(Le/a/l/v2/i/a/c;Le/a/l/n2/f;Le/a/l/n2/f;Le/a/l/p2/s1$b;ZZI)Le/a/l/v2/i/a/b;

    move-result-object v6

    goto :goto_14

    :cond_21
    move-object v0, v12

    const/4 v6, 0x0

    :goto_14
    if-eqz v6, :cond_22

    if-eqz v4, :cond_22

    .line 116
    iget-object v7, v1, Le/a/l/v2/h/g;->f:Ljava/util/HashMap;

    invoke-interface {v7, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_22
    if-eqz v0, :cond_23

    if-eqz v3, :cond_23

    .line 117
    iget-object v7, v1, Le/a/l/v2/h/g;->f:Ljava/util/HashMap;

    invoke-interface {v7, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    :cond_23
    iget-object v7, v1, Le/a/l/v2/h/g;->e:Lcom/truecaller/premium/PremiumLaunchContext;

    if-eqz v7, :cond_2a

    if-ne v7, v14, :cond_24

    iget-object v7, v1, Le/a/l/v2/h/g;->v:Le/a/l/a/s;

    invoke-virtual {v7, v2}, Le/a/l/a/s;->a(Le/a/l/p2/s1$b;)Le/a/l/v2/i/a/b;

    move-result-object v7

    goto :goto_15

    :cond_24
    const/4 v7, 0x0

    :goto_15
    if-eqz v7, :cond_25

    if-eqz v5, :cond_25

    .line 119
    iget-object v8, v1, Le/a/l/v2/h/g;->f:Ljava/util/HashMap;

    invoke-interface {v8, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    :cond_25
    iget-object v5, v1, Le/a/l/v2/h/g;->e:Lcom/truecaller/premium/PremiumLaunchContext;

    if-eqz v5, :cond_29

    if-eq v5, v14, :cond_26

    .line 121
    new-instance v2, Ls1/k;

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_16

    .line 122
    :cond_26
    iget-object v5, v2, Le/a/l/p2/s1$b;->f:Le/a/l/n2/f;

    .line 123
    iget-object v8, v2, Le/a/l/p2/s1$b;->g:Le/a/l/n2/f;

    .line 124
    iget-object v2, v2, Le/a/l/p2/s1$b;->d:Le/a/l/n2/f;

    .line 125
    iget-object v9, v1, Le/a/l/v2/h/g;->r:Le/a/l/v2/i/a/c;

    invoke-virtual {v9, v5, v2}, Le/a/l/v2/i/a/c;->d(Le/a/l/n2/f;Le/a/l/n2/f;)Le/a/l/v2/i/a/b;

    move-result-object v9

    .line 126
    iget-object v10, v1, Le/a/l/v2/h/g;->r:Le/a/l/v2/i/a/c;

    invoke-virtual {v10, v8, v2}, Le/a/l/v2/i/a/c;->a(Le/a/l/n2/f;Le/a/l/n2/f;)Le/a/l/v2/i/a/b;

    move-result-object v2

    if-eqz v9, :cond_27

    if-eqz v5, :cond_27

    .line 127
    iget-object v10, v1, Le/a/l/v2/h/g;->f:Ljava/util/HashMap;

    invoke-interface {v10, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_27
    if-eqz v2, :cond_28

    if-eqz v8, :cond_28

    .line 128
    iget-object v5, v1, Le/a/l/v2/h/g;->f:Ljava/util/HashMap;

    invoke-interface {v5, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    :cond_28
    new-instance v5, Ls1/k;

    invoke-direct {v5, v9, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v2, v5

    .line 130
    :goto_16
    iget-object v5, v2, Ls1/k;->a:Ljava/lang/Object;

    .line 131
    check-cast v5, Le/a/l/v2/i/a/b;

    .line 132
    iget-object v2, v2, Ls1/k;->b:Ljava/lang/Object;

    .line 133
    check-cast v2, Le/a/l/v2/i/a/b;

    const/4 v8, 0x2

    new-array v9, v8, [Le/a/l/v2/i/a/b;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    const/4 v5, 0x1

    aput-object v2, v9, v5

    .line 134
    invoke-static {v9}, Ls1/u/i;->V([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/l/v2/i/a/b;

    new-array v9, v8, [Le/a/l/n2/f;

    aput-object v4, v9, v10

    aput-object v3, v9, v5

    .line 135
    invoke-static {v9}, Ls1/u/i;->V([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Le/a/l/v2/i/a/b;

    aput-object v6, v4, v10

    aput-object v2, v4, v5

    aput-object v0, v4, v8

    .line 136
    invoke-static {v4}, Ls1/u/i;->V([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 137
    invoke-virtual {v1, v3, v0, v15, v7}, Le/a/l/v2/h/g;->Oj(Ljava/util/List;Ljava/util/List;ZLe/a/l/v2/i/a/b;)V

    move-object/from16 v0, p0

    goto :goto_17

    .line 138
    :cond_29
    invoke-static {v13}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_2a
    const/4 v0, 0x0

    .line 139
    invoke-static {v13}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_2b
    invoke-static {v13}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4

    .line 141
    :cond_2c
    iget-object v1, v0, Le/a/l/v2/h/f;->g:Le/a/l/v2/h/d;

    iget-object v2, v0, Le/a/l/v2/h/f;->f:Le/a/l/v2/h/g;

    .line 142
    iget-object v2, v2, Le/a/l/v2/h/g;->k:Le/a/p5/h0;

    const v3, 0x7f12027f

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    .line 143
    invoke-interface {v2, v3, v4}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "resourceProvider.getString(R.string.ErrorGeneral)"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Le/a/l/v2/h/d;->setErrorMessage(Ljava/lang/String;)V

    .line 144
    :goto_17
    sget-object v1, Ls1/s;->a:Ls1/s;

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
