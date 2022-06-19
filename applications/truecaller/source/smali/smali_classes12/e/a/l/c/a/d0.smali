.class public final Le/a/l/c/a/d0;
.super Le/a/l/c/a/h;
.source "SourceFile"


# instance fields
.field public final d:Le/a/l/a/f;

.field public final e:Le/a/l/p2/i1;

.field public final f:Le/a/p4/b;

.field public final g:Le/a/p5/h0;


# direct methods
.method public constructor <init>(Le/a/l/a/f;Le/a/l/p2/i1;Le/a/p4/b;Le/a/p5/h0;Le/a/l/c/a/r;Le/a/l/a/c;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "debugSubscriptionRepository"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumThemeFetcher"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "qaMenuSettings"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cardLabelFactory"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buttonBuildHelper"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p5, p6, p4}, Le/a/l/c/a/h;-><init>(Le/a/l/c/a/r;Le/a/l/a/c;Le/a/p5/h0;)V

    iput-object p1, p0, Le/a/l/c/a/d0;->d:Le/a/l/a/f;

    iput-object p2, p0, Le/a/l/c/a/d0;->e:Le/a/l/p2/i1;

    iput-object p3, p0, Le/a/l/c/a/d0;->f:Le/a/p4/b;

    iput-object p4, p0, Le/a/l/c/a/d0;->g:Le/a/p5/h0;

    return-void
.end method


# virtual methods
.method public final f(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;
    .locals 42
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/a/l/c/a/p;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "Le/a/l/c/a/p;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v0, p2

    sget-object v11, Le/a/l/c/a/z$d;->a:Le/a/l/c/a/z$d;

    instance-of v1, v0, Le/a/l/c/a/d0$a;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Le/a/l/c/a/d0$a;

    iget v2, v1, Le/a/l/c/a/d0$a;->e:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Le/a/l/c/a/d0$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v1, Le/a/l/c/a/d0$a;

    invoke-direct {v1, v9, v0}, Le/a/l/c/a/d0$a;-><init>(Le/a/l/c/a/d0;Ls1/w/d;)V

    :goto_0
    move-object v12, v1

    iget-object v0, v12, Le/a/l/c/a/d0$a;->d:Ljava/lang/Object;

    sget-object v13, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, v12, Le/a/l/c/a/d0$a;->e:I

    const-string v14, "resourceProvider.getStri\u2026oViewedHomeTabPromoTitle)"

    const/4 v15, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v15, :cond_1

    iget-object v1, v12, Le/a/l/c/a/d0$a;->i:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v2, v12, Le/a/l/c/a/d0$a;->h:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget-object v3, v12, Le/a/l/c/a/d0$a;->g:Ljava/lang/Object;

    check-cast v3, Le/a/l/c/a/d0;

    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v10, v2

    move-object v12, v3

    move-object/from16 v16, v11

    const/4 v2, 0x2

    const/4 v11, 0x0

    goto/16 :goto_1

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
    iget-object v0, v9, Le/a/l/c/a/d0;->f:Le/a/p4/b;

    invoke-interface {v0}, Le/a/p4/b;->h1()Z

    move-result v0

    if-nez v0, :cond_3

    return-object v10

    .line 5
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v0, v9, Le/a/l/c/a/d0;->d:Le/a/l/a/f;

    invoke-virtual {v0}, Le/a/l/a/f;->a()Le/a/l/a/h;

    move-result-object v0

    .line 7
    iget-object v0, v0, Le/a/l/a/h;->f:Le/a/l/a/e;

    .line 8
    iget-object v1, v0, Le/a/l/a/e;->a:Le/a/l/n2/f;

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 9
    new-instance v0, Lw3/b/a/b;

    invoke-direct {v0}, Lw3/b/a/b;-><init>()V

    const/4 v5, 0x5

    .line 10
    invoke-virtual {v0, v5}, Lw3/b/a/b;->G(I)Lw3/b/a/b;

    move-result-object v0

    const-string v5, "DateTime.now().plusMinutes(5)"

    invoke-static {v0, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-wide v6, v0, Lw3/b/a/e0/e;->a:J

    .line 12
    new-instance v5, Ljava/lang/Long;

    invoke-direct {v5, v6, v7}, Ljava/lang/Long;-><init>(J)V

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object v15, v4

    move-object v4, v5

    const/4 v8, 0x0

    move v5, v6

    move-object v6, v7

    .line 13
    invoke-static/range {v0 .. v6}, Le/a/l/c/a/h;->b(Le/a/l/c/a/h;Le/a/l/n2/f;ZLe/a/l/c/a/a0;Ljava/lang/Long;ILjava/lang/Object;)Le/a/l/c/a/p;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    iget-object v0, v9, Le/a/l/c/a/d0;->d:Le/a/l/a/f;

    invoke-virtual {v0}, Le/a/l/a/f;->a()Le/a/l/a/h;

    move-result-object v0

    .line 15
    iget-object v0, v0, Le/a/l/a/h;->l:Le/a/l/a/e;

    .line 16
    iget-object v1, v0, Le/a/l/a/e;->a:Le/a/l/n2/f;

    const/4 v3, 0x1

    .line 17
    new-instance v4, Le/a/l/c/a/a0;

    .line 18
    iget-object v0, v9, Le/a/l/c/a/d0;->g:Le/a/p5/h0;

    new-array v5, v8, [Ljava/lang/Object;

    const v7, 0x7f1207d7

    invoke-interface {v0, v7, v5}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v14}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v5, 0x7f0405e4

    .line 19
    invoke-direct {v4, v0, v5, v8, v11}, Le/a/l/c/a/a0;-><init>(Ljava/lang/String;IILe/a/l/c/a/z;)V

    const/4 v5, 0x0

    const/16 v17, 0x10

    const/16 v18, 0x0

    const-string v6, "PROMO_TYPE_WINBACK_GOLD"

    move-object/from16 v0, p0

    move/from16 v7, v17

    move-object/from16 v16, v11

    const/4 v11, 0x0

    move-object/from16 v8, v18

    .line 20
    invoke-static/range {v0 .. v8}, Le/a/l/c/a/h;->e(Le/a/l/c/a/h;Le/a/l/n2/f;ZZLe/a/l/c/a/a0;Ljava/lang/Long;Ljava/lang/String;ILjava/lang/Object;)Le/a/l/c/a/p;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    iget-object v0, v9, Le/a/l/c/a/d0;->d:Le/a/l/a/f;

    invoke-virtual {v0}, Le/a/l/a/f;->a()Le/a/l/a/h;

    move-result-object v0

    .line 22
    iget-object v0, v0, Le/a/l/a/h;->l:Le/a/l/a/e;

    .line 23
    iget-object v1, v0, Le/a/l/a/e;->a:Le/a/l/n2/f;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/16 v7, 0x18

    const/4 v8, 0x0

    const-string v6, "PROMO_TYPE_WINBACK_PREMIUM"

    move-object/from16 v0, p0

    .line 24
    invoke-static/range {v0 .. v8}, Le/a/l/c/a/h;->e(Le/a/l/c/a/h;Le/a/l/n2/f;ZZLe/a/l/c/a/a0;Ljava/lang/Long;Ljava/lang/String;ILjava/lang/Object;)Le/a/l/c/a/p;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    iget-object v0, v9, Le/a/l/c/a/d0;->e:Le/a/l/p2/i1;

    .line 26
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 27
    iput-object v9, v12, Le/a/l/c/a/d0$a;->g:Ljava/lang/Object;

    iput-object v10, v12, Le/a/l/c/a/d0$a;->h:Ljava/lang/Object;

    iput-object v15, v12, Le/a/l/c/a/d0$a;->i:Ljava/lang/Object;

    const/4 v2, 0x1

    iput v2, v12, Le/a/l/c/a/d0$a;->e:I

    const/4 v2, 0x2

    invoke-static {v0, v1, v11, v12, v2}, Le/a/l/p2/i1;->b(Le/a/l/p2/i1;Ljava/lang/Boolean;Ljava/lang/Boolean;Ls1/w/d;I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v13, :cond_4

    return-object v13

    :cond_4
    move-object v12, v9

    move-object v1, v15

    .line 28
    :goto_1
    check-cast v0, Le/a/l/p2/i1$a;

    .line 29
    instance-of v3, v0, Le/a/l/p2/i1$a$b;

    const-string v13, "DateTime.now().plusMinutes(15)"

    const/16 v15, 0xf

    if-eqz v3, :cond_5

    .line 30
    check-cast v0, Le/a/l/p2/i1$a$b;

    .line 31
    iget-object v0, v0, Le/a/l/p2/i1$a$b;->a:Le/a/l/p2/h1;

    .line 32
    iget-object v0, v0, Le/a/l/p2/h1;->a:Le/a/l/p2/j1;

    if-eqz v0, :cond_5

    .line 33
    iget-object v0, v0, Le/a/l/p2/j1;->d:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 34
    iget-object v3, v12, Le/a/l/c/a/d0;->d:Le/a/l/a/f;

    invoke-virtual {v3}, Le/a/l/a/f;->a()Le/a/l/a/h;

    move-result-object v3

    .line 35
    iget-object v3, v3, Le/a/l/a/h;->a:Le/a/l/a/e;

    .line 36
    iget-object v3, v3, Le/a/l/a/e;->a:Le/a/l/n2/f;

    const/16 v24, 0x1

    const/16 v25, 0x0

    .line 37
    new-instance v4, Lw3/b/a/b;

    invoke-direct {v4}, Lw3/b/a/b;-><init>()V

    .line 38
    invoke-virtual {v4, v15}, Lw3/b/a/b;->G(I)Lw3/b/a/b;

    move-result-object v4

    invoke-static {v4, v13}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iget-wide v4, v4, Lw3/b/a/e0/e;->a:J

    .line 40
    new-instance v6, Ljava/lang/Long;

    invoke-direct {v6, v4, v5}, Ljava/lang/Long;-><init>(J)V

    .line 41
    new-instance v4, Le/a/l/c/a/a0;

    .line 42
    iget-object v5, v12, Le/a/l/c/a/d0;->g:Le/a/p5/h0;

    const/4 v7, 0x0

    new-array v8, v7, [Ljava/lang/Object;

    const v2, 0x7f1207d7

    invoke-interface {v5, v2, v8}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v14}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v8, 0x7f0405a1

    move-object/from16 v15, v16

    .line 43
    invoke-direct {v4, v5, v8, v7, v15}, Le/a/l/c/a/a0;-><init>(Ljava/lang/String;IILe/a/l/c/a/z;)V

    const/16 v28, 0x0

    const/16 v29, 0x48

    const/16 v30, 0x0

    move-object/from16 v21, v12

    move-object/from16 v22, v0

    move-object/from16 v23, v3

    move-object/from16 v26, v4

    move-object/from16 v27, v6

    .line 44
    invoke-static/range {v21 .. v30}, Le/a/l/c/a/h;->c(Le/a/l/c/a/h;Ljava/lang/String;Le/a/l/n2/f;ZZLe/a/l/c/a/a0;Ljava/lang/Long;Ljava/lang/String;ILjava/lang/Object;)Le/a/l/c/a/p;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    move-object/from16 v15, v16

    const v2, 0x7f1207d7

    const/4 v7, 0x0

    .line 45
    :goto_2
    iget-object v0, v12, Le/a/l/c/a/d0;->d:Le/a/l/a/f;

    invoke-virtual {v0}, Le/a/l/a/f;->a()Le/a/l/a/h;

    move-result-object v0

    .line 46
    iget-object v0, v0, Le/a/l/a/h;->l:Le/a/l/a/e;

    .line 47
    iget-object v0, v0, Le/a/l/a/e;->a:Le/a/l/n2/f;

    .line 48
    new-instance v3, Le/a/l/c/a/a0;

    .line 49
    iget-object v4, v12, Le/a/l/c/a/d0;->g:Le/a/p5/h0;

    new-array v5, v7, [Ljava/lang/Object;

    invoke-interface {v4, v2, v5}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v14}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v4, 0x7f04056d

    .line 50
    invoke-direct {v3, v2, v4, v7, v15}, Le/a/l/c/a/a0;-><init>(Ljava/lang/String;IILe/a/l/c/a/z;)V

    const-string v2, "purchaseItem"

    .line 51
    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    new-instance v2, Le/a/l/c/a/t$i;

    const v4, 0x7f08088c

    .line 53
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    .line 54
    new-instance v4, Le/a/l/c/a/x2;

    .line 55
    iget-object v5, v12, Le/a/l/c/a/h;->c:Le/a/p5/h0;

    new-array v6, v7, [Ljava/lang/Object;

    const v8, 0x7f120551

    invoke-interface {v5, v8, v6}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "resourceProvider.getStri\u2026bWinbackCardPremiumTitle)"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iget-object v6, v12, Le/a/l/c/a/h;->c:Le/a/p5/h0;

    const v8, 0x7f060637

    invoke-interface {v6, v8}, Le/a/p5/c0;->a(I)I

    move-result v24

    const/high16 v25, 0x41700000    # 15.0f

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x18

    move-object/from16 v22, v4

    move-object/from16 v23, v5

    .line 57
    invoke-direct/range {v22 .. v28}, Le/a/l/c/a/x2;-><init>(Ljava/lang/String;IFZFI)V

    .line 58
    new-instance v25, Le/a/l/c/a/x2;

    .line 59
    iget-object v5, v12, Le/a/l/c/a/h;->c:Le/a/p5/h0;

    new-array v6, v7, [Ljava/lang/Object;

    const v14, 0x7f120550

    invoke-interface {v5, v14, v6}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "resourceProvider.getStri\u2026UserTabWinbackCardOffer2)"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iget-object v6, v12, Le/a/l/c/a/h;->c:Le/a/p5/h0;

    invoke-interface {v6, v8}, Le/a/p5/c0;->a(I)I

    move-result v31

    const/high16 v32, 0x42040000    # 33.0f

    const/16 v33, 0x1

    const/16 v34, 0x0

    const/16 v35, 0x10

    move-object/from16 v29, v25

    move-object/from16 v30, v5

    .line 61
    invoke-direct/range {v29 .. v35}, Le/a/l/c/a/x2;-><init>(Ljava/lang/String;IFZFI)V

    .line 62
    new-instance v26, Le/a/l/c/a/x2;

    .line 63
    iget-object v5, v12, Le/a/l/c/a/h;->c:Le/a/p5/h0;

    new-array v6, v7, [Ljava/lang/Object;

    const v7, 0x7f120552

    invoke-interface {v5, v7, v6}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "resourceProvider.getStri\u2026erTabWinbackCardSubtitle)"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    iget-object v6, v12, Le/a/l/c/a/h;->c:Le/a/p5/h0;

    const v7, 0x7f06063b

    invoke-interface {v6, v7}, Le/a/p5/c0;->a(I)I

    move-result v38

    const/high16 v39, 0x41400000    # 12.0f

    const/16 v40, 0x1

    const v41, 0x3f333333    # 0.7f

    move-object/from16 v36, v26

    move-object/from16 v37, v5

    .line 65
    invoke-direct/range {v36 .. v41}, Le/a/l/c/a/x2;-><init>(Ljava/lang/String;IFZF)V

    .line 66
    iget-object v5, v12, Le/a/l/c/a/h;->b:Le/a/l/a/c;

    const v6, 0x7f08013c

    const/4 v7, 0x1

    invoke-interface {v5, v0, v7, v6}, Le/a/l/a/c;->a(Le/a/l/n2/f;ZI)Le/a/l/v2/i/a/a;

    move-result-object v28

    const/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0xc0d

    move-object/from16 v19, v2

    move-object/from16 v24, v4

    move-object/from16 v27, v0

    move-object/from16 v29, v3

    .line 67
    invoke-direct/range {v19 .. v32}, Le/a/l/c/a/t$i;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ZLe/a/l/c/a/x2;Le/a/l/c/a/x2;Le/a/l/c/a/x2;Le/a/l/n2/f;Le/a/l/v2/i/a/a;Le/a/l/c/a/a0;Le/a/l/c/a/y;Lcom/truecaller/premium/premiumusertab/list/AnalyticsAction;I)V

    .line 68
    new-instance v0, Le/a/l/c/a/p;

    .line 69
    iget-object v3, v12, Le/a/l/c/a/h;->a:Le/a/l/c/a/r;

    const v4, 0x7f040587

    invoke-virtual {v3, v4}, Le/a/l/c/a/r;->a(I)Le/a/l/c/a/q;

    move-result-object v3

    const/4 v4, 0x4

    .line 70
    invoke-direct {v0, v3, v2, v11, v4}, Le/a/l/c/a/p;-><init>(Le/a/l/c/a/q;Le/a/l/c/a/t;Le/a/l/v2/i/b/a;I)V

    .line 71
    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v0, v12, Le/a/l/c/a/d0;->d:Le/a/l/a/f;

    invoke-virtual {v0}, Le/a/l/a/f;->a()Le/a/l/a/h;

    move-result-object v0

    .line 73
    iget-object v0, v0, Le/a/l/a/h;->l:Le/a/l/a/e;

    .line 74
    iget-object v4, v0, Le/a/l/a/e;->a:Le/a/l/n2/f;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    move-object v3, v12

    .line 75
    invoke-static/range {v3 .. v8}, Le/a/l/c/a/h;->d(Le/a/l/c/a/h;Le/a/l/n2/f;Ljava/lang/Long;Le/a/l/c/a/a0;ILjava/lang/Object;)Le/a/l/c/a/p;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v0, v12, Le/a/l/c/a/d0;->d:Le/a/l/a/f;

    invoke-virtual {v0}, Le/a/l/a/f;->a()Le/a/l/a/h;

    move-result-object v0

    .line 77
    iget-object v0, v0, Le/a/l/a/h;->l:Le/a/l/a/e;

    .line 78
    iget-object v4, v0, Le/a/l/a/e;->a:Le/a/l/n2/f;

    .line 79
    new-instance v0, Lw3/b/a/b;

    invoke-direct {v0}, Lw3/b/a/b;-><init>()V

    const/16 v2, 0xf

    .line 80
    invoke-virtual {v0, v2}, Lw3/b/a/b;->G(I)Lw3/b/a/b;

    move-result-object v0

    invoke-static {v0, v13}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    iget-wide v2, v0, Lw3/b/a/e0/e;->a:J

    .line 82
    new-instance v5, Ljava/lang/Long;

    invoke-direct {v5, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const/4 v7, 0x4

    move-object v3, v12

    .line 83
    invoke-static/range {v3 .. v8}, Le/a/l/c/a/h;->d(Le/a/l/c/a/h;Le/a/l/n2/f;Ljava/lang/Long;Le/a/l/c/a/a0;ILjava/lang/Object;)Le/a/l/c/a/p;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v0, v12, Le/a/l/c/a/d0;->d:Le/a/l/a/f;

    invoke-virtual {v0}, Le/a/l/a/f;->a()Le/a/l/a/h;

    move-result-object v0

    .line 85
    iget-object v0, v0, Le/a/l/a/h;->l:Le/a/l/a/e;

    .line 86
    iget-object v0, v0, Le/a/l/a/e;->a:Le/a/l/n2/f;

    const/16 v23, 0x1

    const/16 v24, 0x1

    const/16 v25, 0x0

    .line 87
    new-instance v2, Lw3/b/a/b;

    invoke-direct {v2}, Lw3/b/a/b;-><init>()V

    const/4 v3, 0x2

    .line 88
    invoke-virtual {v2, v3}, Lw3/b/a/b;->G(I)Lw3/b/a/b;

    move-result-object v2

    const-string v3, "DateTime.now().plusMinutes(2)"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    iget-wide v2, v2, Lw3/b/a/e0/e;->a:J

    .line 90
    new-instance v4, Ljava/lang/Long;

    invoke-direct {v4, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const/16 v28, 0x8

    const/16 v29, 0x0

    const-string v27, "PROMO_TYPE_WINBACK_GOLD_WITH_COUNTDOWN_DEBUG"

    move-object/from16 v21, v12

    move-object/from16 v22, v0

    move-object/from16 v26, v4

    .line 91
    invoke-static/range {v21 .. v29}, Le/a/l/c/a/h;->e(Le/a/l/c/a/h;Le/a/l/n2/f;ZZLe/a/l/c/a/a0;Ljava/lang/Long;Ljava/lang/String;ILjava/lang/Object;)Le/a/l/c/a/p;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v0, v12, Le/a/l/c/a/d0;->d:Le/a/l/a/f;

    invoke-virtual {v0}, Le/a/l/a/f;->a()Le/a/l/a/h;

    move-result-object v0

    .line 93
    iget-object v0, v0, Le/a/l/a/h;->l:Le/a/l/a/e;

    .line 94
    iget-object v0, v0, Le/a/l/a/e;->a:Le/a/l/n2/f;

    const/16 v23, 0x0

    .line 95
    new-instance v2, Lw3/b/a/b;

    invoke-direct {v2}, Lw3/b/a/b;-><init>()V

    const/16 v3, 0x14

    .line 96
    invoke-virtual {v2, v3}, Lw3/b/a/b;->J(I)Lw3/b/a/b;

    move-result-object v2

    const-string v3, "DateTime.now().plusSeconds(20)"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    iget-wide v2, v2, Lw3/b/a/e0/e;->a:J

    .line 98
    new-instance v4, Ljava/lang/Long;

    invoke-direct {v4, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const-string v27, "PROMO_TYPE_WINBACK_PREMIUM_WITH_COUNTDOWN_DEBUG"

    move-object/from16 v22, v0

    move-object/from16 v26, v4

    .line 99
    invoke-static/range {v21 .. v29}, Le/a/l/c/a/h;->e(Le/a/l/c/a/h;Le/a/l/n2/f;ZZLe/a/l/c/a/a0;Ljava/lang/Long;Ljava/lang/String;ILjava/lang/Object;)Le/a/l/c/a/p;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 100
    invoke-interface {v1, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v1
.end method
