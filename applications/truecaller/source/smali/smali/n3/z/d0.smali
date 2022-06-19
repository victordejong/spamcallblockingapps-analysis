.class public final Ln3/z/d0;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Ln3/z/y2<",
        "TR;>;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "androidx.paging.FlowExtKt$simpleTransformLatest$1"
    f = "FlowExt.kt"
    l = {
        0x4c
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Lq3/a/x2/f;

.field public final synthetic h:Ls1/z/b/q;


# direct methods
.method public constructor <init>(Lq3/a/x2/f;Ls1/z/b/q;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Ln3/z/d0;->g:Lq3/a/x2/f;

    iput-object p2, p0, Ln3/z/d0;->h:Ls1/z/b/q;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

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

    const-string v0, "completion"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln3/z/d0;

    iget-object v1, p0, Ln3/z/d0;->g:Lq3/a/x2/f;

    iget-object v2, p0, Ln3/z/d0;->h:Ls1/z/b/q;

    invoke-direct {v0, v1, v2, p2}, Ln3/z/d0;-><init>(Lq3/a/x2/f;Ls1/z/b/q;Ls1/w/d;)V

    iput-object p1, v0, Ln3/z/d0;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln3/z/d0;

    iget-object v1, p0, Ln3/z/d0;->g:Lq3/a/x2/f;

    iget-object v2, p0, Ln3/z/d0;->h:Ls1/z/b/q;

    invoke-direct {v0, v1, v2, p2}, Ln3/z/d0;-><init>(Lq3/a/x2/f;Ls1/z/b/q;Ls1/w/d;)V

    iput-object p1, v0, Ln3/z/d0;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Ln3/z/d0;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Ln3/z/d0;->f:I

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

    iget-object p1, p0, Ln3/z/d0;->e:Ljava/lang/Object;

    check-cast p1, Ln3/z/y2;

    .line 4
    iget-object v1, p0, Ln3/z/d0;->g:Lq3/a/x2/f;

    .line 5
    new-instance v3, Ln3/z/p;

    invoke-direct {v3, p1}, Ln3/z/p;-><init>(Lq3/a/w2/d0;)V

    .line 6
    new-instance p1, Ln3/z/d0$a;

    const/4 v4, 0x0

    invoke-direct {p1, p0, v3, v4}, Ln3/z/d0$a;-><init>(Ln3/z/d0;Ln3/z/p;Ls1/w/d;)V

    iput v2, p0, Ln3/z/d0;->f:I

    invoke-static {v1, p1, p0}, Ls1/a/a/a/v0/f/d;->g0(Lq3/a/x2/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 7
    :cond_2
    :goto_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
