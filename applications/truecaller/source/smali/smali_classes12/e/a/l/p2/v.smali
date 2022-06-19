.class public final Le/a/l/p2/v;
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
        "Le/a/l/p2/p1;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.premium.data.PlayBillingPremiumPurchaseHelper$purchaseInternal$2"
    f = "PremiumPurchaseHelper.kt"
    l = {
        0xb6,
        0xbc
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/l/p2/w;

.field public final synthetic g:Lcom/truecaller/premium/PremiumLaunchContext;

.field public final synthetic h:Le/a/l/n2/f;

.field public final synthetic i:Ljava/lang/String;

.field public final synthetic j:Ls1/z/b/a;


# direct methods
.method public constructor <init>(Le/a/l/p2/w;Lcom/truecaller/premium/PremiumLaunchContext;Le/a/l/n2/f;Ljava/lang/String;Ls1/z/b/a;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/l/p2/v;->f:Le/a/l/p2/w;

    iput-object p2, p0, Le/a/l/p2/v;->g:Lcom/truecaller/premium/PremiumLaunchContext;

    iput-object p3, p0, Le/a/l/p2/v;->h:Le/a/l/n2/f;

    iput-object p4, p0, Le/a/l/p2/v;->i:Ljava/lang/String;

    iput-object p5, p0, Le/a/l/p2/v;->j:Ls1/z/b/a;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 7
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

    new-instance p1, Le/a/l/p2/v;

    iget-object v1, p0, Le/a/l/p2/v;->f:Le/a/l/p2/w;

    iget-object v2, p0, Le/a/l/p2/v;->g:Lcom/truecaller/premium/PremiumLaunchContext;

    iget-object v3, p0, Le/a/l/p2/v;->h:Le/a/l/n2/f;

    iget-object v4, p0, Le/a/l/p2/v;->i:Ljava/lang/String;

    iget-object v5, p0, Le/a/l/p2/v;->j:Ls1/z/b/a;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Le/a/l/p2/v;-><init>(Le/a/l/p2/w;Lcom/truecaller/premium/PremiumLaunchContext;Le/a/l/n2/f;Ljava/lang/String;Ls1/z/b/a;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/l/p2/v;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/l/p2/v;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/l/p2/v;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/l/p2/v;->e:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/l/p2/v;->f:Le/a/l/p2/w;

    .line 5
    iget-object p1, p1, Le/a/l/p2/w;->d:Lo3/a;

    .line 6
    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/l/p2/q1;

    iget-object v1, p0, Le/a/l/p2/v;->g:Lcom/truecaller/premium/PremiumLaunchContext;

    invoke-interface {p1, v1}, Le/a/l/p2/q1;->e(Lcom/truecaller/premium/PremiumLaunchContext;)V

    .line 7
    iget-object p1, p0, Le/a/l/p2/v;->f:Le/a/l/p2/w;

    .line 8
    iget-object v1, p1, Le/a/l/p2/w;->b:Le/a/l/n2/e;

    .line 9
    iget-object p1, p1, Le/a/l/p2/w;->e:Le/a/l/p2/q0$a;

    .line 10
    invoke-interface {p1}, Le/a/l/p2/q0$a;->a()Landroid/app/Activity;

    move-result-object p1

    iget-object v4, p0, Le/a/l/p2/v;->h:Le/a/l/n2/f;

    iget-object v5, p0, Le/a/l/p2/v;->i:Ljava/lang/String;

    iput v3, p0, Le/a/l/p2/v;->e:I

    invoke-interface {v1, p1, v4, v5, p0}, Le/a/l/n2/e;->g(Landroid/app/Activity;Le/a/l/n2/f;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 11
    :cond_3
    :goto_0
    check-cast p1, Le/a/l/n2/e$a;

    .line 12
    instance-of v1, p1, Le/a/l/n2/e$a$d;

    const/4 v4, 0x0

    if-eqz v1, :cond_8

    .line 13
    check-cast p1, Le/a/l/n2/e$a$d;

    .line 14
    iget-object p1, p1, Le/a/l/n2/e$a$d;->a:Lcom/truecaller/premium/billing/Receipt;

    .line 15
    iget-object v1, p0, Le/a/l/p2/v;->f:Le/a/l/p2/w;

    .line 16
    iget-object v1, v1, Le/a/l/p2/w;->d:Lo3/a;

    .line 17
    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/l/p2/q1;

    .line 18
    iget-object v5, p1, Lcom/truecaller/premium/billing/Receipt;->h:Ljava/lang/String;

    .line 19
    iget-object v6, p0, Le/a/l/p2/v;->g:Lcom/truecaller/premium/PremiumLaunchContext;

    invoke-interface {v1, v5, v6}, Le/a/l/p2/q1;->b(Ljava/lang/String;Lcom/truecaller/premium/PremiumLaunchContext;)V

    .line 20
    iget-object v1, p0, Le/a/l/p2/v;->f:Le/a/l/p2/w;

    .line 21
    iget-object v1, v1, Le/a/l/p2/w;->g:Le/a/l/g/t;

    .line 22
    iget-object v5, p0, Le/a/l/p2/v;->h:Le/a/l/n2/f;

    .line 23
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "purchaseItem"

    invoke-static {v5, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iget-object v6, v1, Le/a/l/g/t;->c:Le/a/l/c2;

    .line 25
    iget-object v5, v5, Le/a/l/n2/f;->k:Lcom/truecaller/premium/data/ProductKind;

    .line 26
    sget-object v7, Lcom/truecaller/premium/data/ProductKind;->SUBSCRIPTION_GOLD:Lcom/truecaller/premium/data/ProductKind;

    if-eq v5, v7, :cond_5

    sget-object v7, Lcom/truecaller/premium/data/ProductKind;->CONSUMABLE_GOLD_YEARLY:Lcom/truecaller/premium/data/ProductKind;

    if-ne v5, v7, :cond_4

    goto :goto_1

    :cond_4
    move v5, v4

    goto :goto_2

    :cond_5
    :goto_1
    move v5, v3

    :goto_2
    if-eqz v5, :cond_6

    .line 27
    invoke-virtual {v1}, Le/a/l/g/t;->d()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    move v3, v4

    :goto_3
    invoke-interface {v6, v3}, Le/a/l/c2;->O(Z)V

    .line 28
    iget-object v1, p0, Le/a/l/p2/v;->j:Ls1/z/b/a;

    invoke-interface {v1}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    .line 29
    iget-object v1, p0, Le/a/l/p2/v;->f:Le/a/l/p2/w;

    iget-object v3, p0, Le/a/l/p2/v;->h:Le/a/l/n2/f;

    .line 30
    iget-object v3, v3, Le/a/l/n2/f;->a:Ljava/lang/String;

    .line 31
    iput v2, p0, Le/a/l/p2/v;->e:I

    invoke-virtual {v1, p1, v3, p0}, Le/a/l/p2/w;->a(Lcom/truecaller/premium/billing/Receipt;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    return-object v0

    :cond_7
    :goto_4
    check-cast p1, Le/a/l/p2/p1;

    goto :goto_5

    .line 32
    :cond_8
    instance-of v0, p1, Le/a/l/n2/e$a$c;

    if-eqz v0, :cond_9

    .line 33
    iget-object v0, p0, Le/a/l/p2/v;->f:Le/a/l/p2/w;

    .line 34
    iget-object v0, v0, Le/a/l/p2/w;->d:Lo3/a;

    .line 35
    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/l/p2/q1;

    check-cast p1, Le/a/l/n2/e$a$c;

    .line 36
    iget-object p1, p1, Le/a/l/n2/e$a$c;->a:Lcom/truecaller/premium/billing/Receipt;

    .line 37
    iget-object p1, p1, Lcom/truecaller/premium/billing/Receipt;->h:Ljava/lang/String;

    .line 38
    iget-object v1, p0, Le/a/l/p2/v;->g:Lcom/truecaller/premium/PremiumLaunchContext;

    invoke-interface {v0, p1, v1}, Le/a/l/p2/q1;->b(Ljava/lang/String;Lcom/truecaller/premium/PremiumLaunchContext;)V

    .line 39
    new-instance p1, Le/a/l/p2/p1$d;

    invoke-direct {p1, v4, v3}, Le/a/l/p2/p1$d;-><init>(ZI)V

    goto :goto_5

    .line 40
    :cond_9
    instance-of v0, p1, Le/a/l/n2/e$a$b;

    if-eqz v0, :cond_a

    .line 41
    check-cast p1, Le/a/l/n2/e$a$b;

    .line 42
    iget-object p1, p1, Le/a/l/n2/e$a$b;->a:Ljava/lang/String;

    .line 43
    sget-object p1, Le/a/l/p2/p1$e;->a:Le/a/l/p2/p1$e;

    goto :goto_5

    .line 44
    :cond_a
    sget-object v0, Le/a/l/n2/e$a$a;->a:Le/a/l/n2/e$a$a;

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    sget-object p1, Le/a/l/p2/p1$a;->a:Le/a/l/p2/p1$a;

    :goto_5
    return-object p1

    :cond_b
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1
.end method
