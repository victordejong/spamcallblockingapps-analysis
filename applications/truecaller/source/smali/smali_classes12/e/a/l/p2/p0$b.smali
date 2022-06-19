.class public final Le/a/l/p2/p0$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/l/p2/p0;->a(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
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
        "Le/a/l/p2/k1;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.premium.data.PremiumProductsRepositoryImpl$verifyProduct$2"
    f = "PremiumProductsRepository.kt"
    l = {
        0x22
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/l/p2/p0;

.field public final synthetic g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/l/p2/p0;Ljava/lang/String;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/l/p2/p0$b;->f:Le/a/l/p2/p0;

    iput-object p2, p0, Le/a/l/p2/p0$b;->g:Ljava/lang/String;

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

    new-instance p1, Le/a/l/p2/p0$b;

    iget-object v0, p0, Le/a/l/p2/p0$b;->f:Le/a/l/p2/p0;

    iget-object v1, p0, Le/a/l/p2/p0$b;->g:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Le/a/l/p2/p0$b;-><init>(Le/a/l/p2/p0;Ljava/lang/String;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/l/p2/p0$b;

    iget-object v0, p0, Le/a/l/p2/p0$b;->f:Le/a/l/p2/p0;

    iget-object v1, p0, Le/a/l/p2/p0$b;->g:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Le/a/l/p2/p0$b;-><init>(Le/a/l/p2/p0;Ljava/lang/String;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/l/p2/p0$b;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/l/p2/p0$b;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

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
    iget-object p1, p0, Le/a/l/p2/p0$b;->f:Le/a/l/p2/p0;

    .line 5
    iget-object p1, p1, Le/a/l/p2/p0;->a:Le/a/l/p2/i0;

    .line 6
    iget-object v1, p0, Le/a/l/p2/p0$b;->g:Ljava/lang/String;

    iput v2, p0, Le/a/l/p2/p0$b;->e:I

    check-cast p1, Le/a/l/p2/j0;

    invoke-virtual {p1, v1, p0}, Le/a/l/p2/j0;->g(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 7
    :cond_2
    :goto_0
    check-cast p1, Le/a/l/r2/a;

    .line 8
    instance-of v0, p1, Le/a/l/r2/a$c;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 9
    check-cast p1, Le/a/l/r2/a$c;

    .line 10
    iget-object p1, p1, Le/a/l/r2/a$c;->a:Ljava/lang/Object;

    .line 11
    check-cast p1, Le/a/l/p2/k1;

    .line 12
    invoke-virtual {p1}, Le/a/l/p2/k1;->d()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Le/a/l/p2/p0$b;->f:Le/a/l/p2/p0;

    .line 13
    iget-object v3, v3, Le/a/l/p2/p0;->c:Le/a/l/u2/a;

    .line 14
    invoke-interface {v3}, Le/a/l/u2/a;->a()Lcom/truecaller/premium/provider/Store;

    move-result-object v3

    invoke-virtual {v3}, Lcom/truecaller/premium/provider/Store;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v1, p1

    :cond_3
    return-object v1
.end method
