.class public final Le/a/l/p2/b$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/l/p2/b;->a(Lcom/truecaller/premium/billing/Receipt;Ls1/w/d;)Ljava/lang/Object;
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
        "Le/a/l/p2/r0$a;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.premium.data.AcknowledgePurchaseHelperImpl$verifyAndAcknowledgePurchase$2"
    f = "AcknowledgePurchaseHelper.kt"
    l = {
        0x4d,
        0x25,
        0x32
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:I

.field public final synthetic h:Le/a/l/p2/b;

.field public final synthetic i:Lcom/truecaller/premium/billing/Receipt;


# direct methods
.method public constructor <init>(Le/a/l/p2/b;Lcom/truecaller/premium/billing/Receipt;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/l/p2/b$a;->h:Le/a/l/p2/b;

    iput-object p2, p0, Le/a/l/p2/b$a;->i:Lcom/truecaller/premium/billing/Receipt;

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

    new-instance p1, Le/a/l/p2/b$a;

    iget-object v0, p0, Le/a/l/p2/b$a;->h:Le/a/l/p2/b;

    iget-object v1, p0, Le/a/l/p2/b$a;->i:Lcom/truecaller/premium/billing/Receipt;

    invoke-direct {p1, v0, v1, p2}, Le/a/l/p2/b$a;-><init>(Le/a/l/p2/b;Lcom/truecaller/premium/billing/Receipt;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/l/p2/b$a;

    iget-object v0, p0, Le/a/l/p2/b$a;->h:Le/a/l/p2/b;

    iget-object v1, p0, Le/a/l/p2/b$a;->i:Lcom/truecaller/premium/billing/Receipt;

    invoke-direct {p1, v0, v1, p2}, Le/a/l/p2/b$a;-><init>(Le/a/l/p2/b;Lcom/truecaller/premium/billing/Receipt;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/l/p2/b$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v1, p0

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v1, Le/a/l/p2/b$a;->g:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v6, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v5, :cond_0

    iget-object v0, v1, Le/a/l/p2/b$a;->f:Ljava/lang/Object;

    check-cast v0, Le/a/l/p2/r0$a;

    iget-object v2, v1, Le/a/l/p2/b$a;->e:Ljava/lang/Object;

    check-cast v2, Lq3/a/b3/c;

    :try_start_0
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v5, p1

    goto/16 :goto_2

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    iget-object v2, v1, Le/a/l/p2/b$a;->e:Ljava/lang/Object;

    check-cast v2, Lq3/a/b3/c;

    :try_start_1
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v4, p1

    goto :goto_1

    :cond_2
    iget-object v2, v1, Le/a/l/p2/b$a;->e:Ljava/lang/Object;

    check-cast v2, Lq3/a/b3/c;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v2, v1, Le/a/l/p2/b$a;->h:Le/a/l/p2/b;

    .line 5
    iget-object v2, v2, Le/a/l/p2/b;->a:Lq3/a/b3/c;

    .line 6
    iput-object v2, v1, Le/a/l/p2/b$a;->e:Ljava/lang/Object;

    iput v6, v1, Le/a/l/p2/b$a;->g:I

    invoke-interface {v2, v3, v1}, Lq3/a/b3/c;->b(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v0, :cond_4

    return-object v0

    .line 7
    :cond_4
    :goto_0
    :try_start_2
    iget-object v7, v1, Le/a/l/p2/b$a;->h:Le/a/l/p2/b;

    .line 8
    iget-object v7, v7, Le/a/l/p2/b;->c:Le/a/l/p2/r0;

    .line 9
    iget-object v8, v1, Le/a/l/p2/b$a;->i:Lcom/truecaller/premium/billing/Receipt;

    .line 10
    iget-object v9, v8, Lcom/truecaller/premium/billing/Receipt;->b:Ljava/lang/String;

    .line 11
    iget-object v8, v8, Lcom/truecaller/premium/billing/Receipt;->c:Ljava/lang/String;

    .line 12
    iput-object v2, v1, Le/a/l/p2/b$a;->e:Ljava/lang/Object;

    iput v4, v1, Le/a/l/p2/b$a;->g:I

    invoke-interface {v7, v9, v8, v1}, Le/a/l/p2/r0;->a(Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_5

    return-object v0

    .line 13
    :cond_5
    :goto_1
    check-cast v4, Le/a/l/p2/r0$a;

    .line 14
    iget v7, v4, Le/a/l/p2/r0$a;->a:I

    .line 15
    iget-object v8, v4, Le/a/l/p2/r0$a;->c:Le/a/l/p2/x;

    .line 16
    iget-object v9, v1, Le/a/l/p2/b$a;->i:Lcom/truecaller/premium/billing/Receipt;

    .line 17
    iget-boolean v10, v9, Lcom/truecaller/premium/billing/Receipt;->f:Z

    if-eqz v7, :cond_6

    if-ne v7, v5, :cond_7

    .line 18
    :cond_6
    iget-boolean v10, v8, Le/a/l/p2/x;->j:Z

    xor-int/2addr v10, v6

    if-eqz v10, :cond_7

    .line 19
    iget-object v10, v1, Le/a/l/p2/b$a;->h:Le/a/l/p2/b;

    .line 20
    iget-object v10, v10, Le/a/l/p2/b;->f:Le/a/l/p2/v0;

    .line 21
    iget-object v9, v9, Lcom/truecaller/premium/billing/Receipt;->e:Ljava/lang/String;

    .line 22
    invoke-interface {v10, v9}, Le/a/l/p2/v0;->i0(Ljava/lang/String;)V

    .line 23
    :cond_7
    iget-object v9, v1, Le/a/l/p2/b$a;->i:Lcom/truecaller/premium/billing/Receipt;

    .line 24
    iget-boolean v10, v9, Lcom/truecaller/premium/billing/Receipt;->f:Z

    if-nez v10, :cond_e

    if-eqz v7, :cond_8

    if-ne v7, v5, :cond_e

    .line 25
    :cond_8
    iget-boolean v7, v8, Le/a/l/p2/x;->j:Z

    xor-int/2addr v7, v6

    if-eqz v7, :cond_e

    .line 26
    iget-object v7, v1, Le/a/l/p2/b$a;->h:Le/a/l/p2/b;

    .line 27
    iget-object v7, v7, Le/a/l/p2/b;->b:Le/a/l/n2/e;

    .line 28
    iput-object v2, v1, Le/a/l/p2/b$a;->e:Ljava/lang/Object;

    iput-object v4, v1, Le/a/l/p2/b$a;->f:Ljava/lang/Object;

    iput v5, v1, Le/a/l/p2/b$a;->g:I

    invoke-interface {v7, v9, v1}, Le/a/l/n2/e;->h(Lcom/truecaller/premium/billing/Receipt;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v0, :cond_9

    return-object v0

    :cond_9
    move-object v0, v4

    :goto_2
    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 29
    iget-object v5, v1, Le/a/l/p2/b$a;->h:Le/a/l/p2/b;

    .line 30
    iget-object v5, v5, Le/a/l/p2/b;->e:Lo3/a;

    .line 31
    invoke-interface {v5}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/l/p2/q1;

    iget-object v7, v1, Le/a/l/p2/b$a;->i:Lcom/truecaller/premium/billing/Receipt;

    .line 32
    iget-object v7, v7, Lcom/truecaller/premium/billing/Receipt;->h:Ljava/lang/String;

    .line 33
    invoke-interface {v5, v7}, Le/a/l/p2/q1;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_a

    goto :goto_3

    :cond_a
    iget-object v5, v1, Le/a/l/p2/b$a;->h:Le/a/l/p2/b;

    .line 34
    iget-object v5, v5, Le/a/l/p2/b;->e:Lo3/a;

    .line 35
    invoke-interface {v5}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/l/p2/q1;

    invoke-interface {v5}, Le/a/l/p2/q1;->c()Ljava/lang/String;

    move-result-object v5

    .line 36
    :goto_3
    iget-object v7, v1, Le/a/l/p2/b$a;->i:Lcom/truecaller/premium/billing/Receipt;

    .line 37
    iget-object v8, v7, Lcom/truecaller/premium/billing/Receipt;->h:Ljava/lang/String;

    .line 38
    iget-object v7, v7, Lcom/truecaller/premium/billing/Receipt;->i:Ljava/lang/String;

    if-eqz v4, :cond_d

    if-nez v5, :cond_d

    if-eqz v7, :cond_c

    .line 39
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_b

    goto :goto_4

    :cond_b
    const/4 v6, 0x0

    :cond_c
    :goto_4
    if-eqz v6, :cond_d

    .line 40
    iget-object v4, v1, Le/a/l/p2/b$a;->h:Le/a/l/p2/b;

    .line 41
    iget-object v4, v4, Le/a/l/p2/b;->d:Le/a/l/n0;

    .line 42
    new-instance v15, Le/a/l/m0;

    .line 43
    sget-object v14, Lcom/truecaller/premium/PremiumLaunchContext;->EXTERNAL_PURCHASE:Lcom/truecaller/premium/PremiumLaunchContext;

    .line 44
    iget-object v5, v1, Le/a/l/p2/b$a;->i:Lcom/truecaller/premium/billing/Receipt;

    .line 45
    iget-object v5, v5, Lcom/truecaller/premium/billing/Receipt;->a:Ljava/util/List;

    .line 46
    invoke-static {v5}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1fc

    move-object v5, v15

    move-object v6, v14

    move-object v3, v14

    move-object/from16 v14, v16

    move-object/from16 p1, v0

    move-object v0, v15

    move/from16 v15, v17

    .line 47
    invoke-direct/range {v5 .. v15}, Le/a/l/m0;-><init>(Lcom/truecaller/premium/PremiumLaunchContext;Ljava/lang/String;Ljava/util/List;Le/a/l/n2/f;ZLjava/lang/String;Lcom/truecaller/premium/data/SubscriptionPromoEventMetaData;Le/a/l/n2/f;Ljava/lang/String;I)V

    .line 48
    invoke-interface {v4, v0}, Le/a/l/n0;->d(Le/a/l/m0;)V

    .line 49
    iget-object v0, v1, Le/a/l/p2/b$a;->h:Le/a/l/p2/b;

    .line 50
    iget-object v0, v0, Le/a/l/p2/b;->e:Lo3/a;

    .line 51
    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/l/p2/q1;

    iget-object v4, v1, Le/a/l/p2/b$a;->i:Lcom/truecaller/premium/billing/Receipt;

    .line 52
    iget-object v4, v4, Lcom/truecaller/premium/billing/Receipt;->h:Ljava/lang/String;

    .line 53
    invoke-interface {v0, v4, v3}, Le/a/l/p2/q1;->b(Ljava/lang/String;Lcom/truecaller/premium/PremiumLaunchContext;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    :cond_d
    move-object/from16 p1, v0

    :goto_5
    move-object/from16 v4, p1

    :cond_e
    const/4 v3, 0x0

    .line 54
    invoke-interface {v2, v3}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    return-object v4

    :catchall_0
    move-exception v0

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    throw v0
.end method
