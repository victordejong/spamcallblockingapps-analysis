.class public final Lq3/a/x2/o1/j;
.super Lq3/a/x2/o1/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lq3/a/x2/o1/i<",
        "TT;TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00010\u0002B1\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bJ&\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00028\u00000\r2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0014J\u000e\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004H\u0016J\u001f\u0010\u000f\u001a\u00020\u00102\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0012H\u0094@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0013\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0014"
    }
    d2 = {
        "Lkotlinx/coroutines/flow/internal/ChannelFlowOperatorImpl;",
        "T",
        "Lkotlinx/coroutines/flow/internal/ChannelFlowOperator;",
        "flow",
        "Lkotlinx/coroutines/flow/Flow;",
        "context",
        "Lkotlin/coroutines/CoroutineContext;",
        "capacity",
        "",
        "onBufferOverflow",
        "Lkotlinx/coroutines/channels/BufferOverflow;",
        "(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;)V",
        "create",
        "Lkotlinx/coroutines/flow/internal/ChannelFlow;",
        "dropChannelOperators",
        "flowCollect",
        "",
        "collector",
        "Lkotlinx/coroutines/flow/FlowCollector;",
        "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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


# direct methods
.method public constructor <init>(Lq3/a/x2/f;Ls1/w/f;ILq3/a/w2/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/a/x2/f<",
            "+TT;>;",
            "Ls1/w/f;",
            "I",
            "Lq3/a/w2/i;",
            ")V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Lq3/a/x2/o1/i;-><init>(Lq3/a/x2/f;Ls1/w/f;ILq3/a/w2/i;)V

    return-void
.end method

.method public constructor <init>(Lq3/a/x2/f;Ls1/w/f;ILq3/a/w2/i;I)V
    .locals 1

    and-int/lit8 v0, p5, 0x2

    if-eqz v0, :cond_0

    .line 1
    sget-object p2, Ls1/w/h;->a:Ls1/w/h;

    :cond_0
    and-int/lit8 v0, p5, 0x4

    if-eqz v0, :cond_1

    const/4 p3, -0x3

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    .line 2
    sget-object p4, Lq3/a/w2/i;->a:Lq3/a/w2/i;

    .line 3
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lq3/a/x2/o1/i;-><init>(Lq3/a/x2/f;Ls1/w/f;ILq3/a/w2/i;)V

    return-void
.end method


# virtual methods
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
    new-instance v0, Lq3/a/x2/o1/j;

    iget-object v1, p0, Lq3/a/x2/o1/i;->d:Lq3/a/x2/f;

    invoke-direct {v0, v1, p1, p2, p3}, Lq3/a/x2/o1/j;-><init>(Lq3/a/x2/f;Ls1/w/f;ILq3/a/w2/i;)V

    return-object v0
.end method

.method public m(Lq3/a/x2/g;Ls1/w/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/a/x2/g<",
            "-TT;>;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lq3/a/x2/o1/i;->d:Lq3/a/x2/f;

    invoke-interface {v0, p1, p2}, Lq3/a/x2/f;->c(Lq3/a/x2/g;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
