.class public final Le/a/l/p2/u;
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
    c = "com.truecaller.premium.data.PlayBillingPremiumPurchaseHelper$purchase$1"
    f = "PremiumPurchaseHelper.kt"
    l = {
        0xa7
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/l/p2/w;

.field public final synthetic g:Le/a/l/n2/f;

.field public final synthetic h:Lcom/truecaller/premium/PremiumLaunchContext;

.field public final synthetic i:Ljava/lang/String;

.field public final synthetic j:Ls1/z/b/a;

.field public final synthetic k:Ls1/z/b/l;


# direct methods
.method public constructor <init>(Le/a/l/p2/w;Le/a/l/n2/f;Lcom/truecaller/premium/PremiumLaunchContext;Ljava/lang/String;Ls1/z/b/a;Ls1/z/b/l;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/l/p2/u;->f:Le/a/l/p2/w;

    iput-object p2, p0, Le/a/l/p2/u;->g:Le/a/l/n2/f;

    iput-object p3, p0, Le/a/l/p2/u;->h:Lcom/truecaller/premium/PremiumLaunchContext;

    iput-object p4, p0, Le/a/l/p2/u;->i:Ljava/lang/String;

    iput-object p5, p0, Le/a/l/p2/u;->j:Ls1/z/b/a;

    iput-object p6, p0, Le/a/l/p2/u;->k:Ls1/z/b/l;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 8
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

    new-instance p1, Le/a/l/p2/u;

    iget-object v1, p0, Le/a/l/p2/u;->f:Le/a/l/p2/w;

    iget-object v2, p0, Le/a/l/p2/u;->g:Le/a/l/n2/f;

    iget-object v3, p0, Le/a/l/p2/u;->h:Lcom/truecaller/premium/PremiumLaunchContext;

    iget-object v4, p0, Le/a/l/p2/u;->i:Ljava/lang/String;

    iget-object v5, p0, Le/a/l/p2/u;->j:Ls1/z/b/a;

    iget-object v6, p0, Le/a/l/p2/u;->k:Ls1/z/b/l;

    move-object v0, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Le/a/l/p2/u;-><init>(Le/a/l/p2/w;Le/a/l/n2/f;Lcom/truecaller/premium/PremiumLaunchContext;Ljava/lang/String;Ls1/z/b/a;Ls1/z/b/l;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/l/p2/u;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/l/p2/u;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/l/p2/u;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/l/p2/u;->e:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v5, p0, Le/a/l/p2/u;->f:Le/a/l/p2/w;

    .line 5
    iget-object p1, v5, Le/a/l/p2/w;->f:Le/a/l/p2/s;

    .line 6
    iput-boolean v2, p1, Le/a/l/p2/s;->d:Z

    .line 7
    iget-object v7, p0, Le/a/l/p2/u;->g:Le/a/l/n2/f;

    .line 8
    iget-object v6, p0, Le/a/l/p2/u;->h:Lcom/truecaller/premium/PremiumLaunchContext;

    .line 9
    iget-object v8, p0, Le/a/l/p2/u;->i:Ljava/lang/String;

    .line 10
    iget-object v9, p0, Le/a/l/p2/u;->j:Ls1/z/b/a;

    iput v3, p0, Le/a/l/p2/u;->e:I

    .line 11
    iget-object p1, v5, Le/a/l/p2/w;->h:Ls1/w/f;

    new-instance v1, Le/a/l/p2/v;

    const/4 v10, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v10}, Le/a/l/p2/v;-><init>(Le/a/l/p2/w;Lcom/truecaller/premium/PremiumLaunchContext;Le/a/l/n2/f;Ljava/lang/String;Ls1/z/b/a;Ls1/w/d;)V

    invoke-static {p1, v1, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 12
    :cond_2
    :goto_0
    check-cast p1, Le/a/l/p2/p1;

    .line 13
    iget-object v0, p0, Le/a/l/p2/u;->f:Le/a/l/p2/w;

    .line 14
    iget-object v1, v0, Le/a/l/p2/w;->f:Le/a/l/p2/s;

    .line 15
    iput-boolean v3, v1, Le/a/l/p2/s;->d:Z

    .line 16
    iput-boolean v2, v0, Le/a/l/p2/w;->a:Z

    .line 17
    iget-object v0, p0, Le/a/l/p2/u;->k:Ls1/z/b/l;

    invoke-interface {v0, p1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
