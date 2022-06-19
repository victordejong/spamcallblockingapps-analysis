.class public final Le/a/l/p2/q;
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
    c = "com.truecaller.premium.data.NewPurchasesObserver$checkPurchases$1"
    f = "NewPurchasesObserver.kt"
    l = {
        0x48,
        0x4f
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/l/p2/s;


# direct methods
.method public constructor <init>(Le/a/l/p2/s;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/l/p2/q;->f:Le/a/l/p2/s;

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

    new-instance p1, Le/a/l/p2/q;

    iget-object v0, p0, Le/a/l/p2/q;->f:Le/a/l/p2/s;

    invoke-direct {p1, v0, p2}, Le/a/l/p2/q;-><init>(Le/a/l/p2/s;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/l/p2/q;

    iget-object v0, p0, Le/a/l/p2/q;->f:Le/a/l/p2/s;

    invoke-direct {p1, v0, p2}, Le/a/l/p2/q;-><init>(Le/a/l/p2/s;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/l/p2/q;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/l/p2/q;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

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
    iget-object p1, p0, Le/a/l/p2/q;->f:Le/a/l/p2/s;

    .line 5
    iget-object p1, p1, Le/a/l/p2/s;->e:Lo3/a;

    .line 6
    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/l/n2/e;

    iput v4, p0, Le/a/l/p2/q;->e:I

    invoke-interface {p1, p0}, Le/a/l/n2/e;->m(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    .line 7
    :cond_3
    :goto_0
    check-cast p1, Ljava/util/List;

    .line 8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-eq v2, v4, :cond_4

    return-object v0

    .line 9
    :cond_4
    invoke-static {p1}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/premium/billing/Receipt;

    if-eqz p1, :cond_6

    .line 10
    iget-object v2, p1, Lcom/truecaller/premium/billing/Receipt;->g:Lcom/truecaller/premium/billing/Receipt$State;

    .line 11
    sget-object v4, Lcom/truecaller/premium/billing/Receipt$State;->PURCHASED:Lcom/truecaller/premium/billing/Receipt$State;

    if-ne v2, v4, :cond_6

    .line 12
    iget-boolean v2, p1, Lcom/truecaller/premium/billing/Receipt;->f:Z

    if-eqz v2, :cond_5

    goto :goto_1

    .line 13
    :cond_5
    iget-object v2, p0, Le/a/l/p2/q;->f:Le/a/l/p2/s;

    .line 14
    iget-object v2, v2, Le/a/l/p2/s;->i:Lo3/a;

    .line 15
    invoke-interface {v2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/l/p2/a;

    iput v3, p0, Le/a/l/p2/q;->e:I

    invoke-interface {v2, p1, p0}, Le/a/l/p2/a;->a(Lcom/truecaller/premium/billing/Receipt;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    return-object v1

    :cond_6
    :goto_1
    return-object v0
.end method
