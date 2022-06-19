.class public final Le/a/l/p2/q0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/l/p2/q0$a;
    }
.end annotation


# instance fields
.field public final a:Le/a/l/p2/x1;

.field public final b:Le/a/l/p2/w;

.field public final c:Le/a/l/u2/a;

.field public final d:Ls1/w/f;


# direct methods
.method public constructor <init>(Le/a/l/u2/a;Le/a/l/n2/g;Le/a/l/n2/e;Le/a/l/p2/a;Lo3/a;Le/a/l/p2/q0$a;Le/a/l/p2/s;Le/a/l/g/t;Ls1/w/f;)V
    .locals 12
    .param p9    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/l/u2/a;",
            "Le/a/l/n2/g;",
            "Le/a/l/n2/e;",
            "Le/a/l/p2/a;",
            "Lo3/a<",
            "Le/a/l/p2/q1;",
            ">;",
            "Le/a/l/p2/q0$a;",
            "Le/a/l/p2/s;",
            "Le/a/l/g/t;",
            "Ls1/w/f;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v5, p6

    move-object/from16 v8, p9

    const-string v3, "premiumProductStoreProvider"

    invoke-static {p1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "webBillingClient"

    invoke-static {p2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "billing"

    move-object v4, p3

    invoke-static {p3, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "acknowledgePurchaseHelper"

    move-object/from16 v6, p4

    invoke-static {v6, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "purchaseSourceCache"

    move-object/from16 v7, p5

    invoke-static {v7, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "activityProvider"

    invoke-static {v5, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "newPurchasesObserver"

    move-object/from16 v9, p7

    invoke-static {v9, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "goldGiftPromoUtils"

    move-object/from16 v10, p8

    invoke-static {v10, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "uiContext"

    invoke-static {v8, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Le/a/l/p2/q0;->c:Le/a/l/u2/a;

    iput-object v8, v0, Le/a/l/p2/q0;->d:Ls1/w/f;

    .line 2
    new-instance v1, Le/a/l/p2/x1;

    invoke-direct {v1, p2, v5}, Le/a/l/p2/x1;-><init>(Le/a/l/n2/g;Le/a/l/p2/q0$a;)V

    iput-object v1, v0, Le/a/l/p2/q0;->a:Le/a/l/p2/x1;

    .line 3
    new-instance v11, Le/a/l/p2/w;

    move-object v1, v11

    move-object v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v1 .. v8}, Le/a/l/p2/w;-><init>(Le/a/l/n2/e;Le/a/l/p2/a;Lo3/a;Le/a/l/p2/q0$a;Le/a/l/p2/s;Le/a/l/g/t;Ls1/w/f;)V

    iput-object v11, v0, Le/a/l/p2/q0;->b:Le/a/l/p2/w;

    return-void
.end method


# virtual methods
.method public final a(Ls1/w/f;Le/a/l/n2/f;Lcom/truecaller/premium/PremiumLaunchContext;Ljava/lang/String;Ls1/z/b/a;Ls1/z/b/l;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/f;",
            "Le/a/l/n2/f;",
            "Lcom/truecaller/premium/PremiumLaunchContext;",
            "Ljava/lang/String;",
            "Ls1/z/b/a<",
            "Ls1/s;",
            ">;",
            "Ls1/z/b/l<",
            "-",
            "Le/a/l/p2/p1;",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    const-string v2, "coroutineContext"

    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "purchaseItem"

    invoke-static {v3, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "purchaseSource"

    invoke-static {v4, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "beforeVerificationAction"

    invoke-static {v6, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "purchaseResultAction"

    invoke-static {v7, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v11, v0, Le/a/l/p2/q0;->c:Le/a/l/u2/a;

    invoke-interface {v11}, Le/a/l/u2/a;->a()Lcom/truecaller/premium/provider/Store;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eqz v11, :cond_2

    if-eq v11, v13, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    iget-object v4, v0, Le/a/l/p2/q0;->a:Le/a/l/p2/x1;

    .line 3
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-boolean v2, v4, Le/a/l/p2/x1;->a:Z

    if-eqz v2, :cond_1

    goto/16 :goto_0

    .line 5
    :cond_1
    iput-boolean v13, v4, Le/a/l/p2/x1;->a:Z

    .line 6
    invoke-static {v12, v13, v12}, Ls1/a/a/a/v0/f/d;->j(Lq3/a/p1;ILjava/lang/Object;)Lq3/a/y;

    move-result-object v2

    invoke-interface {p1, v2}, Ls1/w/f;->plus(Ls1/w/f;)Ls1/w/f;

    move-result-object v1

    invoke-static {v1}, Ls1/a/a/a/v0/f/d;->h(Ls1/w/f;)Lq3/a/i0;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v5, 0x0

    new-instance v6, Le/a/l/p2/w1;

    invoke-direct {v6, v4, v3, v7, v12}, Le/a/l/p2/w1;-><init>(Le/a/l/p2/x1;Le/a/l/n2/f;Ls1/z/b/l;Ls1/w/d;)V

    const/4 v3, 0x3

    const/4 v4, 0x0

    move-object p1, v1

    move-object/from16 p2, v2

    move-object/from16 p3, v5

    move-object/from16 p4, v6

    move/from16 p5, v3

    move-object/from16 p6, v4

    invoke-static/range {p1 .. p6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    goto :goto_0

    .line 7
    :cond_2
    iget-object v11, v0, Le/a/l/p2/q0;->b:Le/a/l/p2/w;

    .line 8
    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-boolean v2, v11, Le/a/l/p2/w;->a:Z

    if-eqz v2, :cond_3

    goto :goto_0

    .line 10
    :cond_3
    iput-boolean v13, v11, Le/a/l/p2/w;->a:Z

    .line 11
    invoke-static {v12, v13, v12}, Ls1/a/a/a/v0/f/d;->j(Lq3/a/p1;ILjava/lang/Object;)Lq3/a/y;

    move-result-object v2

    invoke-interface {p1, v2}, Ls1/w/f;->plus(Ls1/w/f;)Ls1/w/f;

    move-result-object v1

    invoke-static {v1}, Ls1/a/a/a/v0/f/d;->h(Ls1/w/f;)Lq3/a/i0;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v12, 0x0

    new-instance v13, Le/a/l/p2/u;

    const/4 v8, 0x0

    move-object v1, v13

    move-object v2, v11

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v1 .. v8}, Le/a/l/p2/u;-><init>(Le/a/l/p2/w;Le/a/l/n2/f;Lcom/truecaller/premium/PremiumLaunchContext;Ljava/lang/String;Ls1/z/b/a;Ls1/z/b/l;Ls1/w/d;)V

    const/4 v1, 0x3

    const/4 v2, 0x0

    move-object p1, v9

    move-object/from16 p2, v10

    move-object/from16 p3, v12

    move-object/from16 p4, v13

    move/from16 p5, v1

    move-object/from16 p6, v2

    invoke-static/range {p1 .. p6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    :goto_0
    return-void
.end method
