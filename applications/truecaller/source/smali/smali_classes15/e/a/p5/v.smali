.class public final Le/a/p5/v;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/w2/x<",
        "-",
        "Ljava/lang/Boolean;",
        ">;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.utils.NetworkUtilImpl$getConnectivityFlow$1"
    f = "NetworkUtil.kt"
    l = {
        0x49
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/p5/w;


# direct methods
.method public constructor <init>(Le/a/p5/w;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/p5/v;->g:Le/a/p5/w;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

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

    const-string v0, "completion"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/p5/v;

    iget-object v1, p0, Le/a/p5/v;->g:Le/a/p5/w;

    invoke-direct {v0, v1, p2}, Le/a/p5/v;-><init>(Le/a/p5/w;Ls1/w/d;)V

    iput-object p1, v0, Le/a/p5/v;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/p5/v;

    iget-object v1, p0, Le/a/p5/v;->g:Le/a/p5/w;

    invoke-direct {v0, v1, p2}, Le/a/p5/v;-><init>(Le/a/p5/w;Ls1/w/d;)V

    iput-object p1, v0, Le/a/p5/v;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/p5/v;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/p5/v;->f:I

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

    iget-object p1, p0, Le/a/p5/v;->e:Ljava/lang/Object;

    check-cast p1, Lq3/a/w2/x;

    .line 4
    iget-object v1, p0, Le/a/p5/v;->g:Le/a/p5/w;

    .line 5
    iget-object v1, v1, Le/a/p5/w;->b:Landroidx/lifecycle/LiveData;

    .line 6
    new-instance v3, Le/a/p5/v$b;

    invoke-direct {v3, p1}, Le/a/p5/v$b;-><init>(Lq3/a/w2/x;)V

    .line 7
    new-instance v4, Le/a/p5/x;

    invoke-direct {v4, v3}, Le/a/p5/x;-><init>(Ls1/z/b/l;)V

    invoke-virtual {v1, v4}, Landroidx/lifecycle/LiveData;->g(Ln3/v/l0;)V

    .line 8
    new-instance v4, Le/a/p5/v$a;

    invoke-direct {v4, v1, v3}, Le/a/p5/v$a;-><init>(Landroidx/lifecycle/LiveData;Ls1/z/b/l;)V

    iput v2, p0, Le/a/p5/v;->f:I

    invoke-static {p1, v4, p0}, Lq3/a/w2/v;->a(Lq3/a/w2/x;Ls1/z/b/a;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 9
    :cond_2
    :goto_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
