.class public final Ln3/z/o;
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
        "TT;>;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "androidx.paging.CancelableChannelFlowKt$cancelableChannelFlow$1"
    f = "CancelableChannelFlow.kt"
    l = {
        0x1e
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Lq3/a/p1;

.field public final synthetic h:Ls1/z/b/p;


# direct methods
.method public constructor <init>(Lq3/a/p1;Ls1/z/b/p;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Ln3/z/o;->g:Lq3/a/p1;

    iput-object p2, p0, Ln3/z/o;->h:Ls1/z/b/p;

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

    new-instance v0, Ln3/z/o;

    iget-object v1, p0, Ln3/z/o;->g:Lq3/a/p1;

    iget-object v2, p0, Ln3/z/o;->h:Ls1/z/b/p;

    invoke-direct {v0, v1, v2, p2}, Ln3/z/o;-><init>(Lq3/a/p1;Ls1/z/b/p;Ls1/w/d;)V

    iput-object p1, v0, Ln3/z/o;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ln3/z/o;

    iget-object v1, p0, Ln3/z/o;->g:Lq3/a/p1;

    iget-object v2, p0, Ln3/z/o;->h:Ls1/z/b/p;

    invoke-direct {v0, v1, v2, p2}, Ln3/z/o;-><init>(Lq3/a/p1;Ls1/z/b/p;Ls1/w/d;)V

    iput-object p1, v0, Ln3/z/o;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Ln3/z/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Ln3/z/o;->f:I

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

    iget-object p1, p0, Ln3/z/o;->e:Ljava/lang/Object;

    check-cast p1, Ln3/z/y2;

    .line 4
    iget-object v1, p0, Ln3/z/o;->g:Lq3/a/p1;

    new-instance v3, Ln3/z/o$a;

    invoke-direct {v3, p1}, Ln3/z/o$a;-><init>(Ln3/z/y2;)V

    invoke-interface {v1, v3}, Lq3/a/p1;->I(Ls1/z/b/l;)Lq3/a/v0;

    .line 5
    iget-object v1, p0, Ln3/z/o;->h:Ls1/z/b/p;

    iput v2, p0, Ln3/z/o;->f:I

    invoke-interface {v1, p1, p0}, Ls1/z/b/p;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 6
    :cond_2
    :goto_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
