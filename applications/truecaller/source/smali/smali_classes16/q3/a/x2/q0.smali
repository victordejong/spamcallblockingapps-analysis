.class public final Lq3/a/x2/q0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/g<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001J\u0019\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00028\u0000H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0005\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0006\u00b8\u0006\u0000"
    }
    d2 = {
        "kotlinx/coroutines/flow/FlowKt__LimitKt$collectWhile$collector$1",
        "Lkotlinx/coroutines/flow/FlowCollector;",
        "emit",
        "",
        "value",
        "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Ls1/z/b/p;

.field public final synthetic b:Ls1/z/c/c0;


# direct methods
.method public constructor <init>(Ls1/z/b/p;Ls1/z/c/c0;)V
    .locals 0

    iput-object p1, p0, Lq3/a/x2/q0;->a:Ls1/z/b/p;

    iput-object p2, p0, Lq3/a/x2/q0;->b:Ls1/z/c/c0;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lq3/a/x2/q0$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lq3/a/x2/q0$a;

    iget v1, v0, Lq3/a/x2/q0$a;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lq3/a/x2/q0$a;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, Lq3/a/x2/q0$a;

    invoke-direct {v0, p0, p2}, Lq3/a/x2/q0$a;-><init>(Lq3/a/x2/q0;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Lq3/a/x2/q0$a;->e:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    iget v2, v0, Lq3/a/x2/q0$a;->f:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    .line 1
    iget-object p1, v0, Lq3/a/x2/q0$a;->h:Ljava/lang/Object;

    iget-object v0, v0, Lq3/a/x2/q0$a;->d:Ljava/lang/Object;

    check-cast v0, Lq3/a/x2/q0;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Lq3/a/x2/q0;->a:Ls1/z/b/p;

    iput-object p0, v0, Lq3/a/x2/q0$a;->d:Ljava/lang/Object;

    iput-object p1, v0, Lq3/a/x2/q0$a;->h:Ljava/lang/Object;

    iput v3, v0, Lq3/a/x2/q0$a;->f:I

    invoke-interface {p2, p1, v0}, Ls1/z/b/p;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    :goto_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 5
    iget-object p2, v0, Lq3/a/x2/q0;->b:Ls1/z/c/c0;

    iput-object p1, p2, Ls1/z/c/c0;->a:Ljava/lang/Object;

    const/4 v3, 0x0

    .line 6
    :cond_4
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 8
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1

    .line 9
    :cond_5
    new-instance p1, Lq3/a/x2/o1/a;

    invoke-direct {p1, v0}, Lq3/a/x2/o1/a;-><init>(Lq3/a/x2/g;)V

    throw p1
.end method
