.class public final Le/a/l/p2/w1;
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
    c = "com.truecaller.premium.data.WebPurchaseHelper$purchase$1"
    f = "PremiumPurchaseHelper.kt"
    l = {
        0x7b
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/l/p2/x1;

.field public final synthetic g:Le/a/l/n2/f;

.field public final synthetic h:Ls1/z/b/l;


# direct methods
.method public constructor <init>(Le/a/l/p2/x1;Le/a/l/n2/f;Ls1/z/b/l;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/l/p2/w1;->f:Le/a/l/p2/x1;

    iput-object p2, p0, Le/a/l/p2/w1;->g:Le/a/l/n2/f;

    iput-object p3, p0, Le/a/l/p2/w1;->h:Ls1/z/b/l;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 3
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

    new-instance p1, Le/a/l/p2/w1;

    iget-object v0, p0, Le/a/l/p2/w1;->f:Le/a/l/p2/x1;

    iget-object v1, p0, Le/a/l/p2/w1;->g:Le/a/l/n2/f;

    iget-object v2, p0, Le/a/l/p2/w1;->h:Ls1/z/b/l;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/l/p2/w1;-><init>(Le/a/l/p2/x1;Le/a/l/n2/f;Ls1/z/b/l;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/l/p2/w1;

    iget-object v0, p0, Le/a/l/p2/w1;->f:Le/a/l/p2/x1;

    iget-object v1, p0, Le/a/l/p2/w1;->g:Le/a/l/n2/f;

    iget-object v2, p0, Le/a/l/p2/w1;->h:Ls1/z/b/l;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/l/p2/w1;-><init>(Le/a/l/p2/x1;Le/a/l/n2/f;Ls1/z/b/l;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/l/p2/w1;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/l/p2/w1;->e:I

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
    iget-object p1, p0, Le/a/l/p2/w1;->f:Le/a/l/p2/x1;

    .line 5
    iget-object v1, p1, Le/a/l/p2/x1;->b:Le/a/l/n2/g;

    .line 6
    iget-object v3, p0, Le/a/l/p2/w1;->g:Le/a/l/n2/f;

    .line 7
    iget-object p1, p1, Le/a/l/p2/x1;->c:Le/a/l/p2/q0$a;

    .line 8
    invoke-interface {p1}, Le/a/l/p2/q0$a;->a()Landroid/app/Activity;

    move-result-object p1

    iput v2, p0, Le/a/l/p2/w1;->e:I

    invoke-interface {v1, v3, p1, p0}, Le/a/l/n2/g;->a(Le/a/l/n2/f;Landroid/app/Activity;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 9
    :cond_2
    :goto_0
    check-cast p1, Le/a/l/n2/j;

    .line 10
    instance-of v0, p1, Le/a/l/n2/j$d;

    if-eqz v0, :cond_3

    .line 11
    new-instance p1, Le/a/l/p2/p1$d;

    invoke-direct {p1, v2}, Le/a/l/p2/p1$d;-><init>(Z)V

    goto :goto_1

    .line 12
    :cond_3
    instance-of v0, p1, Le/a/l/n2/j$c;

    if-eqz v0, :cond_4

    sget-object p1, Le/a/l/p2/p1$c;->a:Le/a/l/p2/p1$c;

    goto :goto_1

    .line 13
    :cond_4
    instance-of p1, p1, Le/a/l/n2/j$b;

    if-eqz p1, :cond_5

    sget-object p1, Le/a/l/p2/p1$a;->a:Le/a/l/p2/p1$a;

    goto :goto_1

    .line 14
    :cond_5
    sget-object p1, Le/a/l/p2/p1$e;->a:Le/a/l/p2/p1$e;

    .line 15
    :goto_1
    iget-object v0, p0, Le/a/l/p2/w1;->f:Le/a/l/p2/x1;

    const/4 v1, 0x0

    .line 16
    iput-boolean v1, v0, Le/a/l/p2/x1;->a:Z

    .line 17
    iget-object v0, p0, Le/a/l/p2/w1;->h:Ls1/z/b/l;

    invoke-interface {v0, p1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
