.class public final Le/a/l/n2/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/l/n2/g;


# instance fields
.field public final a:Le/a/l/p2/a2;

.field public final b:Le/a/b0/o/a;

.field public final c:Le/a/b0/e/l;

.field public final d:Le/a/l/p2/t1;

.field public final e:Le/a/p4/b;

.field public final f:Le/a/c3/a;

.field public final g:Le/a/p5/g;


# direct methods
.method public constructor <init>(Le/a/l/p2/a2;Le/a/b0/o/a;Le/a/b0/e/l;Le/a/l/p2/t1;Le/a/p4/b;Le/a/c3/a;Le/a/p5/g;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "webPurchaseRepository"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coreSettings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "webBillingPurchaseStateManager"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "qaMenuSettings"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buildHelper"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceInfoUtil"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l/n2/h;->a:Le/a/l/p2/a2;

    iput-object p2, p0, Le/a/l/n2/h;->b:Le/a/b0/o/a;

    iput-object p3, p0, Le/a/l/n2/h;->c:Le/a/b0/e/l;

    iput-object p4, p0, Le/a/l/n2/h;->d:Le/a/l/p2/t1;

    iput-object p5, p0, Le/a/l/n2/h;->e:Le/a/p4/b;

    iput-object p6, p0, Le/a/l/n2/h;->f:Le/a/c3/a;

    iput-object p7, p0, Le/a/l/n2/h;->g:Le/a/p5/g;

    return-void
.end method


# virtual methods
.method public a(Le/a/l/n2/f;Landroid/app/Activity;Ls1/w/d;)Ljava/lang/Object;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/l/n2/f;",
            "Landroid/app/Activity;",
            "Ls1/w/d<",
            "-",
            "Le/a/l/n2/j;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    sget-object v3, Le/a/l/n2/j$a;->a:Le/a/l/n2/j$a;

    instance-of v4, v2, Le/a/l/n2/h$b;

    if-eqz v4, :cond_0

    move-object v4, v2

    check-cast v4, Le/a/l/n2/h$b;

    iget v5, v4, Le/a/l/n2/h$b;->e:I

    const/high16 v6, -0x80000000

    and-int v7, v5, v6

    if-eqz v7, :cond_0

    sub-int/2addr v5, v6

    iput v5, v4, Le/a/l/n2/h$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v4, Le/a/l/n2/h$b;

    invoke-direct {v4, v0, v2}, Le/a/l/n2/h$b;-><init>(Le/a/l/n2/h;Ls1/w/d;)V

    :goto_0
    iget-object v2, v4, Le/a/l/n2/h$b;->d:Ljava/lang/Object;

    sget-object v5, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v6, v4, Le/a/l/n2/h$b;->e:I

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v6, :cond_3

    if-eq v6, v8, :cond_2

    if-ne v6, v7, :cond_1

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 2
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_2
    iget-object v1, v4, Le/a/l/n2/h$b;->h:Ljava/lang/Object;

    check-cast v1, Landroid/app/Activity;

    iget-object v6, v4, Le/a/l/n2/h$b;->g:Ljava/lang/Object;

    check-cast v6, Le/a/l/n2/h;

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_3
    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v2, v0, Le/a/l/n2/h;->c:Le/a/b0/e/l;

    invoke-interface {v2}, Le/a/b0/e/l;->g()Le/a/b0/e/b;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 5
    iget-object v2, v2, Le/a/b0/e/b;->b:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 6
    iget-object v6, v0, Le/a/l/n2/h;->c:Le/a/b0/e/l;

    invoke-interface {v6}, Le/a/b0/e/l;->g()Le/a/b0/e/b;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 7
    iget-object v6, v6, Le/a/b0/e/b;->a:Ljava/lang/String;

    if-eqz v6, :cond_4

    .line 8
    new-instance v22, Le/a/l/p2/v1;

    .line 9
    iget-object v11, v1, Le/a/l/n2/f;->a:Ljava/lang/String;

    .line 10
    iget-object v10, v0, Le/a/l/n2/h;->b:Le/a/b0/o/a;

    invoke-static {v10}, Le/a/l4/k;->I(Le/a/b0/o/a;)Ljava/lang/String;

    move-result-object v18

    .line 11
    iget-wide v12, v1, Le/a/l/n2/f;->e:J

    const/16 v10, 0x2710

    int-to-long v14, v10

    .line 12
    div-long/2addr v12, v14

    .line 13
    invoke-static {v2}, Le/a/p5/s0/f;->I(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 14
    iget-object v15, v1, Le/a/l/n2/f;->d:Ljava/lang/String;

    .line 15
    iget-object v1, v0, Le/a/l/n2/h;->b:Le/a/b0/o/a;

    const-string v2, "profileEmail"

    const-string v10, ""

    invoke-interface {v1, v2, v10}, Le/a/b0/o/a;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "coreSettings.getString(C\u2026EMAIL, StringUtils.EMPTY)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v19, 0x0

    .line 16
    new-instance v2, Le/a/l/p2/u1;

    iget-object v10, v0, Le/a/l/n2/h;->f:Le/a/c3/a;

    invoke-interface {v10}, Le/a/c3/a;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v10}, Le/a/l/p2/u1;-><init>(Ljava/lang/String;)V

    const/16 v21, 0x80

    move-object/from16 v10, v22

    move-object/from16 v16, v6

    move-object/from16 v17, v1

    move-object/from16 v20, v2

    .line 17
    invoke-direct/range {v10 .. v21}, Le/a/l/p2/v1;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Le/a/l/p2/u1;I)V

    move-object/from16 v1, v22

    goto :goto_1

    :cond_4
    move-object v1, v9

    :goto_1
    if-eqz v1, :cond_8

    .line 18
    invoke-virtual/range {p2 .. p2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/razorpay/Checkout;->clearUserData(Landroid/content/Context;)V

    .line 19
    invoke-virtual/range {p2 .. p2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/razorpay/Checkout;->preload(Landroid/content/Context;)V

    .line 20
    iget-object v2, v0, Le/a/l/n2/h;->a:Le/a/l/p2/a2;

    iput-object v0, v4, Le/a/l/n2/h$b;->g:Ljava/lang/Object;

    move-object/from16 v6, p2

    iput-object v6, v4, Le/a/l/n2/h$b;->h:Ljava/lang/Object;

    iput v8, v4, Le/a/l/n2/h$b;->e:I

    check-cast v2, Le/a/l/p2/b2;

    invoke-virtual {v2, v1, v4}, Le/a/l/p2/b2;->a(Le/a/l/p2/v1;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v5, :cond_5

    return-object v5

    :cond_5
    move-object v1, v6

    move-object v6, v0

    .line 21
    :goto_2
    check-cast v2, Le/a/l/p2/c2;

    .line 22
    instance-of v8, v2, Le/a/l/p2/c2$c;

    if-eqz v8, :cond_7

    check-cast v2, Le/a/l/p2/c2$c;

    .line 23
    iget-object v2, v2, Le/a/l/p2/c2$c;->a:Ljava/lang/Object;

    .line 24
    check-cast v2, Le/a/l/p2/y1;

    iput-object v9, v4, Le/a/l/n2/h$b;->g:Ljava/lang/Object;

    iput-object v9, v4, Le/a/l/n2/h$b;->h:Ljava/lang/Object;

    iput v7, v4, Le/a/l/n2/h$b;->e:I

    invoke-virtual {v6, v2, v1, v4}, Le/a/l/n2/h;->c(Le/a/l/p2/y1;Landroid/app/Activity;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v5, :cond_6

    return-object v5

    :cond_6
    :goto_3
    move-object v3, v2

    check-cast v3, Le/a/l/n2/j;

    goto :goto_4

    .line 25
    :cond_7
    sget-object v1, Le/a/l/p2/c2$a;->a:Le/a/l/p2/c2$a;

    invoke-static {v2, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object v3, Le/a/l/n2/j$c;->a:Le/a/l/n2/j$c;

    :cond_8
    :goto_4
    return-object v3
.end method

.method public b(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "Le/a/l/n2/f;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    instance-of v3, v2, Le/a/l/n2/h$a;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Le/a/l/n2/h$a;

    iget v4, v3, Le/a/l/n2/h$a;->e:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Le/a/l/n2/h$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v3, Le/a/l/n2/h$a;

    invoke-direct {v3, v1, v2}, Le/a/l/n2/h$a;-><init>(Le/a/l/n2/h;Ls1/w/d;)V

    :goto_0
    iget-object v2, v3, Le/a/l/n2/h$a;->d:Ljava/lang/Object;

    sget-object v4, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v5, v3, Le/a/l/n2/h$a;->e:I

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    if-ne v5, v6, :cond_1

    iget-object v0, v3, Le/a/l/n2/h$a;->h:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object v3, v3, Le/a/l/n2/h$a;->g:Ljava/lang/Object;

    check-cast v3, Le/a/l/n2/h;

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_2
    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v2, v1, Le/a/l/n2/h;->a:Le/a/l/p2/a2;

    new-instance v5, Le/a/l/p2/a2$b;

    invoke-direct {v5, v0}, Le/a/l/p2/a2$b;-><init>(Ljava/util/List;)V

    iput-object v1, v3, Le/a/l/n2/h$a;->g:Ljava/lang/Object;

    iput-object v0, v3, Le/a/l/n2/h$a;->h:Ljava/lang/Object;

    iput v6, v3, Le/a/l/n2/h$a;->e:I

    check-cast v2, Le/a/l/p2/b2;

    invoke-virtual {v2, v5, v3}, Le/a/l/p2/b2;->b(Le/a/l/p2/a2$b;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_3

    return-object v4

    :cond_3
    move-object v3, v1

    :goto_1
    move-object/from16 v23, v2

    move-object v2, v0

    move-object/from16 v0, v23

    .line 5
    check-cast v0, Le/a/l/p2/c2;

    .line 6
    instance-of v4, v0, Le/a/l/p2/c2$c;

    if-eqz v4, :cond_8

    check-cast v0, Le/a/l/p2/c2$c;

    .line 7
    iget-object v0, v0, Le/a/l/p2/c2$c;->a:Ljava/lang/Object;

    .line 8
    check-cast v0, Ljava/lang/Iterable;

    .line 9
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 10
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Le/a/l/p2/a2$a;

    .line 11
    invoke-virtual {v0}, Le/a/l/p2/a2$a;->c()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_6

    .line 12
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    :try_start_0
    invoke-virtual {v0}, Le/a/l/p2/a2$a;->b()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v8, v10, v12

    if-eqz v8, :cond_5

    invoke-virtual {v0}, Le/a/l/p2/a2$a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_5

    move v0, v6

    goto :goto_3

    :catch_0
    move-exception v0

    .line 14
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    :cond_5
    move v0, v9

    :goto_3
    if-eqz v0, :cond_6

    move v9, v6

    .line 15
    :cond_6
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 17
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v4, v2}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 18
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 19
    check-cast v4, Le/a/l/p2/a2$a;

    .line 20
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    new-instance v7, Le/a/l/n2/f;

    move-object v5, v7

    .line 22
    invoke-virtual {v4}, Le/a/l/p2/a2$a;->c()Ljava/lang/String;

    move-result-object v6

    .line 23
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Le/a/l/p2/a2$a;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v9, 0x20

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Le/a/l/p2/a2$a;->b()J

    move-result-wide v9

    long-to-double v9, v9

    const-wide/high16 v11, 0x4059000000000000L    # 100.0

    div-double/2addr v9, v11

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 24
    invoke-virtual {v4}, Le/a/l/p2/a2$a;->a()Ljava/lang/String;

    move-result-object v9

    .line 25
    invoke-virtual {v4}, Le/a/l/p2/a2$a;->b()J

    move-result-wide v10

    const-wide/16 v12, 0x2710

    mul-long/2addr v10, v12

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x3fe0

    const-string v4, ""

    move-object v1, v7

    move-object v7, v4

    .line 26
    invoke-direct/range {v5 .. v22}, Le/a/l/n2/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLw3/b/a/u;ILw3/b/a/u;Lcom/truecaller/premium/data/ProductKind;Lcom/truecaller/premium/data/PremiumProductType;ZLe/a/l/p2/n1;I)V

    .line 27
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, p0

    goto :goto_4

    .line 28
    :cond_8
    sget-object v0, Ls1/u/s;->a:Ls1/u/s;

    :cond_9
    return-object v0
.end method

.method public final c(Le/a/l/p2/y1;Landroid/app/Activity;Ls1/w/d;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/l/p2/y1;",
            "Landroid/app/Activity;",
            "Ls1/w/d<",
            "-",
            "Le/a/l/n2/j;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Le/a/l/n2/j$a;->a:Le/a/l/n2/j$a;

    instance-of v1, p3, Le/a/l/n2/h$c;

    if-eqz v1, :cond_0

    move-object v1, p3

    check-cast v1, Le/a/l/n2/h$c;

    iget v2, v1, Le/a/l/n2/h$c;->e:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Le/a/l/n2/h$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v1, Le/a/l/n2/h$c;

    invoke-direct {v1, p0, p3}, Le/a/l/n2/h$c;-><init>(Le/a/l/n2/h;Ls1/w/d;)V

    :goto_0
    iget-object p3, v1, Le/a/l/n2/h$c;->d:Ljava/lang/Object;

    sget-object v2, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v3, v1, Le/a/l/n2/h$c;->e:I

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v4, :cond_1

    iget-object p1, v1, Le/a/l/n2/h$c;->i:Ljava/lang/Object;

    check-cast p1, Lorg/json/JSONObject;

    iget-object p1, v1, Le/a/l/n2/h$c;->h:Ljava/lang/Object;

    check-cast p1, Landroid/app/Activity;

    iget-object p1, v1, Le/a/l/n2/h$c;->g:Ljava/lang/Object;

    check-cast p1, Le/a/l/n2/h;

    :try_start_0
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception p1

    goto/16 :goto_4

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    if-nez p1, :cond_3

    return-object v0

    .line 4
    :cond_3
    invoke-virtual {p1}, Le/a/l/p2/y1;->b()Ljava/lang/String;

    move-result-object p3

    const-string v3, "subscription"

    invoke-static {p3, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    const-string p3, "subscription_id"

    goto :goto_1

    :cond_4
    const-string p3, "order_id"

    .line 5
    :goto_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "name"

    const-string v6, "Truecaller Premium"

    .line 6
    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7
    invoke-virtual {p1}, Le/a/l/p2/y1;->a()J

    move-result-wide v5

    const-string v7, "amount"

    invoke-virtual {v3, v7, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 8
    invoke-virtual {p1}, Le/a/l/p2/y1;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    iget-object p1, p0, Le/a/l/n2/h;->b:Le/a/b0/o/a;

    const-string p3, ""

    const-string v5, "profileEmail"

    invoke-interface {p1, v5, p3}, Le/a/b0/o/a;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v5, "prefill.email"

    invoke-virtual {v3, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 10
    iget-object p1, p0, Le/a/l/n2/h;->c:Le/a/b0/e/l;

    invoke-interface {p1}, Le/a/b0/e/l;->g()Le/a/b0/e/b;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 11
    iget-object p1, p1, Le/a/b0/e/b;->b:Ljava/lang/String;

    if-eqz p1, :cond_5

    .line 12
    invoke-static {p1}, Le/a/p5/s0/f;->I(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :cond_5
    const-string p1, "prefill.contact"

    invoke-virtual {v3, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "readonly.contact"

    .line 13
    invoke-virtual {v3, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p1, "readonly.number"

    .line 14
    invoke-virtual {v3, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 15
    :try_start_1
    iput-object p0, v1, Le/a/l/n2/h$c;->g:Ljava/lang/Object;

    iput-object p2, v1, Le/a/l/n2/h$c;->h:Ljava/lang/Object;

    iput-object v3, v1, Le/a/l/n2/h$c;->i:Ljava/lang/Object;

    iput v4, v1, Le/a/l/n2/h$c;->e:I

    .line 16
    new-instance p1, Lq3/a/o;

    invoke-static {v1}, Le/q/f/a/d/a;->s1(Ls1/w/d;)Ls1/w/d;

    move-result-object p3

    invoke-direct {p1, p3, v4}, Lq3/a/o;-><init>(Ls1/w/d;I)V

    .line 17
    invoke-virtual {p1}, Lq3/a/o;->z()V

    .line 18
    instance-of p3, p2, Le/a/l/n2/k;

    if-eqz p3, :cond_6

    .line 19
    move-object p3, p2

    check-cast p3, Le/a/l/n2/k;

    new-instance v4, Le/a/l/n2/i;

    invoke-direct {v4, p0, p1}, Le/a/l/n2/i;-><init>(Le/a/l/n2/h;Lq3/a/n;)V

    invoke-interface {p3, v4}, Le/a/l/n2/k;->O(Le/a/l/n2/k$a;)V

    goto :goto_2

    .line 20
    :cond_6
    invoke-static {p1, v0}, Le/a/c/p/a;->w2(Lq3/a/n;Le/a/l/n2/j;)V

    .line 21
    :goto_2
    new-instance p3, Lcom/razorpay/Checkout;

    invoke-direct {p3}, Lcom/razorpay/Checkout;-><init>()V

    .line 22
    iget-object v4, p0, Le/a/l/n2/h;->e:Le/a/p4/b;

    .line 23
    invoke-interface {v4}, Le/a/p4/b;->S()Z

    move-result v4

    if-nez v4, :cond_7

    .line 24
    iget-object v4, p0, Le/a/l/n2/h;->g:Le/a/p5/g;

    .line 25
    invoke-interface {v4}, Le/a/p5/g;->a()Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "rzp_test_cCUC7Cs2I4I4iN"

    .line 26
    invoke-virtual {p3, v4}, Lcom/razorpay/Checkout;->setKeyID(Ljava/lang/String;)V

    .line 27
    :cond_7
    invoke-virtual {p3, p2, v3}, Lcom/razorpay/Checkout;->open(Landroid/app/Activity;Lorg/json/JSONObject;)V

    .line 28
    invoke-virtual {p1}, Lq3/a/o;->y()Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v2, :cond_8

    const-string p1, "frame"

    .line 29
    invoke-static {v1, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_8
    if-ne p3, v2, :cond_9

    return-object v2

    .line 30
    :cond_9
    :goto_3
    check-cast p3, Le/a/l/n2/j;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, p3

    goto :goto_5

    .line 31
    :goto_4
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    :goto_5
    return-object v0
.end method
