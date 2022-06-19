.class public final Ln3/v/d;
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
    c = "androidx.lifecycle.BlockRunner$maybeRun$1"
    f = "CoroutineLiveData.kt"
    l = {
        0xb0
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Lq3/a/i0;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:I

.field public final synthetic i:Ln3/v/e;


# direct methods
.method public constructor <init>(Ln3/v/e;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Ln3/v/d;->i:Ln3/v/e;

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

    invoke-static {p2, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln3/v/d;

    iget-object v1, p0, Ln3/v/d;->i:Ln3/v/e;

    invoke-direct {v0, v1, p2}, Ln3/v/d;-><init>(Ln3/v/e;Ls1/w/d;)V

    check-cast p1, Lq3/a/i0;

    iput-object p1, v0, Ln3/v/d;->e:Lq3/a/i0;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln3/v/d;

    iget-object v1, p0, Ln3/v/d;->i:Ln3/v/e;

    invoke-direct {v0, v1, p2}, Ln3/v/d;-><init>(Ln3/v/e;Ls1/w/d;)V

    check-cast p1, Lq3/a/i0;

    iput-object p1, v0, Ln3/v/d;->e:Lq3/a/i0;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Ln3/v/d;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Ln3/v/d;->h:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Ln3/v/d;->g:Ljava/lang/Object;

    check-cast v0, Ln3/v/h0;

    iget-object v0, p0, Ln3/v/d;->f:Ljava/lang/Object;

    check-cast v0, Lq3/a/i0;

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

    iget-object p1, p0, Ln3/v/d;->e:Lq3/a/i0;

    .line 4
    new-instance v1, Ln3/v/h0;

    iget-object v3, p0, Ln3/v/d;->i:Ln3/v/e;

    .line 5
    iget-object v3, v3, Ln3/v/e;->c:Ln3/v/h;

    .line 6
    invoke-interface {p1}, Lq3/a/i0;->getCoroutineContext()Ls1/w/f;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Ln3/v/h0;-><init>(Ln3/v/h;Ls1/w/f;)V

    .line 7
    iget-object v3, p0, Ln3/v/d;->i:Ln3/v/e;

    .line 8
    iget-object v3, v3, Ln3/v/e;->d:Ls1/z/b/p;

    .line 9
    iput-object p1, p0, Ln3/v/d;->f:Ljava/lang/Object;

    iput-object v1, p0, Ln3/v/d;->g:Ljava/lang/Object;

    iput v2, p0, Ln3/v/d;->h:I

    invoke-interface {v3, v1, p0}, Ls1/z/b/p;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 10
    :cond_2
    :goto_0
    iget-object p1, p0, Ln3/v/d;->i:Ln3/v/e;

    .line 11
    iget-object p1, p1, Ln3/v/e;->g:Ls1/z/b/a;

    .line 12
    invoke-interface {p1}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    .line 13
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
