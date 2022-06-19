.class public final Lq3/a/x2/o1/l;
.super Lq3/a/x2/o1/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lq3/a/x2/o1/f<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u001c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B7\u0012\u0012\u0010\u0003\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00050\u0004\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cJ\u001f\u0010\r\u001a\u00020\u000e2\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0010H\u0094@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0011J&\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00022\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0014J\u0016\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00142\u0006\u0010\u000f\u001a\u00020\u0015H\u0016R\u001a\u0010\u0003\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0016"
    }
    d2 = {
        "Lkotlinx/coroutines/flow/internal/ChannelLimitedFlowMerge;",
        "T",
        "Lkotlinx/coroutines/flow/internal/ChannelFlow;",
        "flows",
        "",
        "Lkotlinx/coroutines/flow/Flow;",
        "context",
        "Lkotlin/coroutines/CoroutineContext;",
        "capacity",
        "",
        "onBufferOverflow",
        "Lkotlinx/coroutines/channels/BufferOverflow;",
        "(Ljava/lang/Iterable;Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;)V",
        "collectTo",
        "",
        "scope",
        "Lkotlinx/coroutines/channels/ProducerScope;",
        "(Lkotlinx/coroutines/channels/ProducerScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "create",
        "produceImpl",
        "Lkotlinx/coroutines/channels/ReceiveChannel;",
        "Lkotlinx/coroutines/CoroutineScope;",
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
.field public final d:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Lq3/a/x2/f<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;Ls1/w/f;ILq3/a/w2/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lq3/a/x2/f<",
            "+TT;>;>;",
            "Ls1/w/f;",
            "I",
            "Lq3/a/w2/i;",
            ")V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p2, p3, p4}, Lq3/a/x2/o1/f;-><init>(Ls1/w/f;ILq3/a/w2/i;)V

    .line 6
    iput-object p1, p0, Lq3/a/x2/o1/l;->d:Ljava/lang/Iterable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Iterable;Ls1/w/f;ILq3/a/w2/i;I)V
    .locals 1

    and-int/lit8 p2, p5, 0x2

    const/4 p4, 0x0

    if-eqz p2, :cond_0

    .line 1
    sget-object p2, Ls1/w/h;->a:Ls1/w/h;

    goto :goto_0

    :cond_0
    move-object p2, p4

    :goto_0
    and-int/lit8 v0, p5, 0x4

    if-eqz v0, :cond_1

    const/4 p3, -0x2

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    .line 2
    sget-object p4, Lq3/a/w2/i;->a:Lq3/a/w2/i;

    .line 3
    :cond_2
    invoke-direct {p0, p2, p3, p4}, Lq3/a/x2/o1/f;-><init>(Ls1/w/f;ILq3/a/w2/i;)V

    .line 4
    iput-object p1, p0, Lq3/a/x2/o1/l;->d:Ljava/lang/Iterable;

    return-void
.end method


# virtual methods
.method public i(Lq3/a/w2/x;Ls1/w/d;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/a/w2/x<",
            "-TT;>;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance p2, Lq3/a/x2/o1/a0;

    invoke-direct {p2, p1}, Lq3/a/x2/o1/a0;-><init>(Lq3/a/w2/d0;)V

    .line 2
    iget-object v0, p0, Lq3/a/x2/o1/l;->d:Ljava/lang/Iterable;

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq3/a/x2/f;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 4
    new-instance v5, Lq3/a/x2/o1/l$a;

    const/4 v2, 0x0

    invoke-direct {v5, v1, p2, v2}, Lq3/a/x2/o1/l$a;-><init>(Lq3/a/x2/f;Lq3/a/x2/o1/a0;Ls1/w/d;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    goto :goto_0

    .line 5
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public j(Ls1/w/f;ILq3/a/w2/i;)Lq3/a/x2/o1/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/f;",
            "I",
            "Lq3/a/w2/i;",
            ")",
            "Lq3/a/x2/o1/f<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lq3/a/x2/o1/l;

    iget-object v1, p0, Lq3/a/x2/o1/l;->d:Ljava/lang/Iterable;

    invoke-direct {v0, v1, p1, p2, p3}, Lq3/a/x2/o1/l;-><init>(Ljava/lang/Iterable;Ls1/w/f;ILq3/a/w2/i;)V

    return-object v0
.end method

.method public l(Lq3/a/i0;)Lq3/a/w2/z;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/a/i0;",
            ")",
            "Lq3/a/w2/z<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lq3/a/x2/o1/f;->a:Ls1/w/f;

    iget v1, p0, Lq3/a/x2/o1/f;->b:I

    invoke-virtual {p0}, Lq3/a/x2/o1/f;->k()Ls1/z/b/p;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Ls1/a/a/a/v0/f/d;->Y0(Lq3/a/i0;Ls1/w/f;ILs1/z/b/p;)Lq3/a/w2/z;

    move-result-object p1

    return-object p1
.end method
