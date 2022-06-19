.class public final Le/a/l/p2/s0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/l/p2/r0;


# instance fields
.field public final a:Le/a/l/p2/i0;

.field public final b:Le/a/l/p2/b1;

.field public final c:Le/a/l/p2/v0;

.field public final d:Le/a/l/p2/e2/d;

.field public final e:Le/a/l/p2/d2/f;

.field public final f:Ls1/w/f;


# direct methods
.method public constructor <init>(Le/a/l/p2/i0;Le/a/l/p2/b1;Le/a/l/p2/v0;Le/a/l/p2/e2/d;Le/a/l/p2/d2/f;Ls1/w/f;)V
    .locals 1
    .param p6    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "premiumNetworkHelper"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumSubscriptionStatusRepository"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumStateSettings"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "statusUpdateNotifier"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumFeatureRepository"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asyncContext"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l/p2/s0;->a:Le/a/l/p2/i0;

    iput-object p2, p0, Le/a/l/p2/s0;->b:Le/a/l/p2/b1;

    iput-object p3, p0, Le/a/l/p2/s0;->c:Le/a/l/p2/v0;

    iput-object p4, p0, Le/a/l/p2/s0;->d:Le/a/l/p2/e2/d;

    iput-object p5, p0, Le/a/l/p2/s0;->e:Le/a/l/p2/d2/f;

    iput-object p6, p0, Le/a/l/p2/s0;->f:Ls1/w/f;

    return-void
.end method

.method public static final e(Le/a/l/p2/s0;Le/a/l/r2/a;Ljava/lang/String;)Le/a/l/p2/r0$a;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    invoke-static/range {p0 .. p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    instance-of v3, v1, Le/a/l/r2/a$c;

    if-eqz v3, :cond_4

    .line 3
    check-cast v1, Le/a/l/r2/a$c;

    .line 4
    iget-object v3, v1, Le/a/l/r2/a$c;->a:Ljava/lang/Object;

    .line 5
    check-cast v3, Le/a/l/p2/o1;

    invoke-virtual {v0, v3}, Le/a/l/p2/s0;->f(Le/a/l/p2/o1;)Le/a/l/p2/x;

    move-result-object v3

    .line 6
    invoke-virtual {v0, v3}, Le/a/l/p2/s0;->h(Le/a/l/p2/x;)V

    .line 7
    new-instance v0, Le/a/l/p2/r0$a;

    .line 8
    iget-object v1, v1, Le/a/l/r2/a$c;->a:Ljava/lang/Object;

    .line 9
    check-cast v1, Le/a/l/p2/o1;

    invoke-virtual {v1}, Le/a/l/p2/o1;->b()Ljava/lang/String;

    move-result-object v1

    const-string v4, "Successful"

    .line 10
    invoke-static {v1, v4}, Lw3/c/a/a/a/h;->f(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const-string v4, "ExistsAnotherUser"

    .line 11
    invoke-static {v1, v4}, Lw3/c/a/a/a/h;->f(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    const-string v4, "ExistsSameUser"

    .line 12
    invoke-static {v1, v4}, Lw3/c/a/a/a/h;->f(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v1, 0x3

    goto :goto_0

    :cond_2
    const-string v4, "NotPremiumOwnerDevice"

    .line 13
    invoke-static {v1, v4}, Lw3/c/a/a/a/h;->f(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    .line 14
    :goto_0
    invoke-direct {v0, v1, v2, v3}, Le/a/l/p2/r0$a;-><init>(ILjava/lang/String;Le/a/l/p2/x;)V

    goto :goto_1

    .line 15
    :cond_4
    instance-of v0, v1, Le/a/l/r2/a$a;

    if-eqz v0, :cond_5

    new-instance v0, Le/a/l/p2/r0$a;

    new-instance v15, Le/a/l/p2/x;

    move-object v3, v15

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object v1, v15

    move-object/from16 v15, v16

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1fff

    invoke-direct/range {v3 .. v20}, Le/a/l/p2/x;-><init>(JJJILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/premium/data/ProductKind;Lcom/truecaller/premium/data/PremiumScope;ZZZLcom/truecaller/premium/provider/Store;I)V

    const/4 v3, -0x2

    invoke-direct {v0, v3, v2, v1}, Le/a/l/p2/r0$a;-><init>(ILjava/lang/String;Le/a/l/p2/x;)V

    goto :goto_1

    .line 16
    :cond_5
    new-instance v0, Le/a/l/p2/r0$a;

    new-instance v15, Le/a/l/p2/x;

    move-object v3, v15

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object v1, v15

    move-object/from16 v15, v16

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1fff

    invoke-direct/range {v3 .. v20}, Le/a/l/p2/x;-><init>(JJJILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/premium/data/ProductKind;Lcom/truecaller/premium/data/PremiumScope;ZZZLcom/truecaller/premium/provider/Store;I)V

    const/4 v3, -0x1

    invoke-direct {v0, v3, v2, v1}, Le/a/l/p2/r0$a;-><init>(ILjava/lang/String;Le/a/l/p2/x;)V

    :goto_1
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Le/a/l/p2/r0$a;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/l/p2/s0;->f:Ls1/w/f;

    new-instance v1, Le/a/l/p2/s0$d;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Le/a/l/p2/s0$d;-><init>(Le/a/l/p2/s0;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)V

    invoke-static {v0, v1, p3}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ls1/k<",
            "Ljava/lang/Integer;",
            "Le/a/l/p2/x;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/l/p2/s0;->f:Ls1/w/f;

    new-instance v1, Le/a/l/p2/s0$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Le/a/l/p2/s0$a;-><init>(Le/a/l/p2/s0;Ls1/w/d;)V

    invoke-static {v0, v1, p1}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public c()Ls1/k;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ls1/k<",
            "Ljava/lang/Integer;",
            "Le/a/l/p2/x;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Le/a/l/p2/s0$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Le/a/l/p2/s0$b;-><init>(Le/a/l/p2/s0;Ls1/w/d;)V

    const/4 v2, 0x1

    invoke-static {v1, v0, v2, v1}, Ls1/a/a/a/v0/f/d;->c3(Ls1/w/f;Ls1/z/b/p;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/k;

    return-object v0
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Le/a/l/p2/r0$a;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/l/p2/s0;->f:Ls1/w/f;

    new-instance v1, Le/a/l/p2/s0$c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Le/a/l/p2/s0$c;-><init>(Le/a/l/p2/s0;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)V

    invoke-static {v0, v1, p3}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final f(Le/a/l/p2/o1;)Le/a/l/p2/x;
    .locals 39

    move-object/from16 v0, p0

    if-eqz p1, :cond_8

    .line 1
    invoke-virtual/range {p1 .. p1}, Le/a/l/p2/o1;->a()Le/a/l/p2/x0;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 2
    sget-object v2, Lcom/truecaller/premium/data/SubscriptionStatusReason;->Companion:Lcom/truecaller/premium/data/SubscriptionStatusReason$a;

    invoke-virtual {v1}, Le/a/l/p2/x0;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/truecaller/premium/data/SubscriptionStatusReason$a;->a(Ljava/lang/String;)Lcom/truecaller/premium/data/SubscriptionStatusReason;

    move-result-object v2

    .line 3
    iget-object v3, v0, Le/a/l/p2/s0;->b:Le/a/l/p2/b1;

    invoke-interface {v3, v2}, Le/a/l/p2/b1;->c(Lcom/truecaller/premium/data/SubscriptionStatusReason;)V

    .line 4
    new-instance v3, Le/a/l/p2/x;

    .line 5
    invoke-virtual {v1}, Le/a/l/p2/x0;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Le/a/l/p2/s0;->g(Ljava/lang/String;)J

    move-result-wide v5

    .line 6
    invoke-virtual {v1}, Le/a/l/p2/x0;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Le/a/l/p2/s0;->g(Ljava/lang/String;)J

    move-result-wide v7

    .line 7
    invoke-virtual {v1}, Le/a/l/p2/x0;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Le/a/l/p2/s0;->g(Ljava/lang/String;)J

    move-result-wide v9

    .line 8
    invoke-virtual {v1}, Le/a/l/p2/x0;->f()Ljava/lang/String;

    move-result-object v4

    .line 9
    invoke-static {v4}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v11, 0x0

    goto :goto_0

    .line 10
    :cond_0
    invoke-static {v4}, Ls1/a/a/a/v0/f/d;->I3(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v11, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    move v11, v4

    .line 11
    :goto_0
    invoke-virtual {v1}, Le/a/l/p2/x0;->h()Ljava/lang/String;

    move-result-object v14

    .line 12
    invoke-virtual {v1}, Le/a/l/p2/x0;->d()Ljava/lang/String;

    move-result-object v4

    const-string v15, "regular"

    .line 13
    invoke-static {v4, v15}, Lw3/c/a/a/a/h;->f(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v16

    const-string v12, "gold"

    if-eqz v16, :cond_2

    goto :goto_1

    .line 14
    :cond_2
    invoke-static {v4, v12}, Lw3/c/a/a/a/h;->f(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v15, v12

    goto :goto_1

    :cond_3
    const-string v4, "none"

    move-object v15, v4

    .line 15
    :goto_1
    invoke-virtual {v1}, Le/a/l/p2/x0;->l()Ljava/lang/Boolean;

    move-result-object v12

    .line 16
    sget-object v4, Lcom/truecaller/premium/data/ProductKind;->Companion:Lcom/truecaller/premium/data/ProductKind$a;

    invoke-virtual {v1}, Le/a/l/p2/x0;->c()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Lcom/truecaller/premium/data/ProductKind$a;->a(Ljava/lang/String;)Lcom/truecaller/premium/data/ProductKind;

    move-result-object v17

    .line 17
    invoke-virtual {v1}, Le/a/l/p2/x0;->g()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/truecaller/premium/data/PremiumScope;->fromRemote(Ljava/lang/String;)Lcom/truecaller/premium/data/PremiumScope;

    move-result-object v13

    const-string v4, "PremiumScope.fromRemote(scope)"

    invoke-static {v13, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-virtual {v1}, Le/a/l/p2/x0;->k()Z

    move-result v18

    .line 19
    sget-object v4, Lcom/truecaller/premium/data/SubscriptionStatusReason;->SUBSCRIPTION_IN_GRACE_PERIOD:Lcom/truecaller/premium/data/SubscriptionStatusReason;

    if-ne v2, v4, :cond_4

    const/4 v2, 0x1

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    .line 20
    :goto_2
    invoke-virtual {v1}, Le/a/l/p2/x0;->m()Z

    move-result v19

    .line 21
    sget-object v4, Lcom/truecaller/premium/provider/Store;->Companion:Lcom/truecaller/premium/provider/Store$a;

    invoke-virtual {v1}, Le/a/l/p2/x0;->e()Ljava/lang/String;

    move-result-object v1

    .line 22
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-static {}, Lcom/truecaller/premium/provider/Store;->values()[Lcom/truecaller/premium/provider/Store;

    move-result-object v4

    move-object/from16 p1, v13

    const/4 v0, 0x0

    :goto_3
    const/4 v13, 0x3

    if-ge v0, v13, :cond_6

    aget-object v13, v4, v0

    move-object/from16 v20, v4

    invoke-virtual {v13}, Lcom/truecaller/premium/provider/Store;->getProviderName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v21, v13

    const/4 v13, 0x1

    invoke-static {v4, v1, v13}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object/from16 v13, v21

    goto :goto_4

    :cond_5
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v4, v20

    goto :goto_3

    :cond_6
    const/4 v13, 0x0

    :goto_4
    if-eqz v13, :cond_7

    move-object/from16 v20, v13

    goto :goto_5

    :cond_7
    sget-object v0, Lcom/truecaller/premium/provider/Store;->NONE:Lcom/truecaller/premium/provider/Store;

    move-object/from16 v20, v0

    :goto_5
    move-object v4, v3

    move-object/from16 v0, p1

    move-object v13, v14

    move-object v14, v15

    move-object/from16 v15, v17

    move-object/from16 v16, v0

    move/from16 v17, v18

    move/from16 v18, v2

    .line 24
    invoke-direct/range {v4 .. v20}, Le/a/l/p2/x;-><init>(JJJILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/premium/data/ProductKind;Lcom/truecaller/premium/data/PremiumScope;ZZZLcom/truecaller/premium/provider/Store;)V

    goto :goto_6

    .line 25
    :cond_8
    new-instance v3, Le/a/l/p2/x;

    move-object/from16 v21, v3

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const-wide/16 v26, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x1fff

    invoke-direct/range {v21 .. v38}, Le/a/l/p2/x;-><init>(JJJILjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/premium/data/ProductKind;Lcom/truecaller/premium/data/PremiumScope;ZZZLcom/truecaller/premium/provider/Store;I)V

    :goto_6
    return-object v3
.end method

.method public final g(Ljava/lang/String;)J
    .locals 2

    .line 1
    invoke-static {p1}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lw3/b/a/i0/i;->e0:Lw3/b/a/i0/b;

    .line 3
    invoke-virtual {v0, p1}, Lw3/b/a/i0/b;->b(Ljava/lang/String;)Lw3/b/a/b;

    move-result-object p1

    const-string v0, "ISODateTimeFormat.dateTi\u2026ser().parseDateTime(date)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-wide v0, p1, Lw3/b/a/e0/e;->a:J

    :goto_0
    return-wide v0
.end method

.method public final h(Le/a/l/p2/x;)V
    .locals 2

    .line 1
    new-instance v0, Le/a/l/p2/y0;

    iget-object v1, p0, Le/a/l/p2/s0;->c:Le/a/l/p2/v0;

    invoke-interface {v1}, Le/a/l/p2/v0;->n()Le/a/l/p2/u0;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Le/a/l/p2/y0;-><init>(Le/a/l/p2/u0;Le/a/l/p2/x;)V

    .line 2
    iget-object v1, p0, Le/a/l/p2/s0;->c:Le/a/l/p2/v0;

    invoke-interface {v1, p1}, Le/a/l/p2/v0;->o(Le/a/l/p2/x;)V

    .line 3
    iget-object v1, p0, Le/a/l/p2/s0;->e:Le/a/l/p2/d2/f;

    invoke-interface {v1, p1}, Le/a/l/p2/d2/f;->o(Le/a/l/p2/x;)V

    .line 4
    iget-object p1, p0, Le/a/l/p2/s0;->d:Le/a/l/p2/e2/d;

    invoke-virtual {p1, v0}, Le/a/l/p2/e2/d;->a(Le/a/l/p2/y0;)V

    return-void
.end method
