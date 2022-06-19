.class public final Lq3/a/x2/o1/g;
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
        "\u0000F\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B?\u0012\u0012\u0010\u0003\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00040\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cJ\u0008\u0010\r\u001a\u00020\u000eH\u0014J\u001f\u0010\u000f\u001a\u00020\u00102\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0012H\u0094@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0013J&\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00022\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u000bH\u0014J\u0016\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00162\u0006\u0010\u0011\u001a\u00020\u0017H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0003\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00040\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0018"
    }
    d2 = {
        "Lkotlinx/coroutines/flow/internal/ChannelFlowMerge;",
        "T",
        "Lkotlinx/coroutines/flow/internal/ChannelFlow;",
        "flow",
        "Lkotlinx/coroutines/flow/Flow;",
        "concurrency",
        "",
        "context",
        "Lkotlin/coroutines/CoroutineContext;",
        "capacity",
        "onBufferOverflow",
        "Lkotlinx/coroutines/channels/BufferOverflow;",
        "(Lkotlinx/coroutines/flow/Flow;ILkotlin/coroutines/CoroutineContext;ILkotlinx/coroutines/channels/BufferOverflow;)V",
        "additionalToStringProps",
        "",
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
.field public final d:Lq3/a/x2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/x2/f<",
            "Lq3/a/x2/f<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field public final e:I


# direct methods
.method public constructor <init>(Lq3/a/x2/f;ILs1/w/f;ILq3/a/w2/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/a/x2/f<",
            "+",
            "Lq3/a/x2/f<",
            "+TT;>;>;I",
            "Ls1/w/f;",
            "I",
            "Lq3/a/w2/i;",
            ")V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p3, p4, p5}, Lq3/a/x2/o1/f;-><init>(Ls1/w/f;ILq3/a/w2/i;)V

    .line 7
    iput-object p1, p0, Lq3/a/x2/o1/g;->d:Lq3/a/x2/f;

    .line 8
    iput p2, p0, Lq3/a/x2/o1/g;->e:I

    return-void
.end method

.method public constructor <init>(Lq3/a/x2/f;ILs1/w/f;ILq3/a/w2/i;I)V
    .locals 1

    and-int/lit8 p3, p6, 0x4

    const/4 p5, 0x0

    if-eqz p3, :cond_0

    .line 1
    sget-object p3, Ls1/w/h;->a:Ls1/w/h;

    goto :goto_0

    :cond_0
    move-object p3, p5

    :goto_0
    and-int/lit8 v0, p6, 0x8

    if-eqz v0, :cond_1

    const/4 p4, -0x2

    :cond_1
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_2

    .line 2
    sget-object p5, Lq3/a/w2/i;->a:Lq3/a/w2/i;

    .line 3
    :cond_2
    invoke-direct {p0, p3, p4, p5}, Lq3/a/x2/o1/f;-><init>(Ls1/w/f;ILq3/a/w2/i;)V

    .line 4
    iput-object p1, p0, Lq3/a/x2/o1/g;->d:Lq3/a/x2/f;

    .line 5
    iput p2, p0, Lq3/a/x2/o1/g;->e:I

    return-void
.end method


# virtual methods
.method public h()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lq3/a/x2/o1/g;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "concurrency="

    invoke-static {v1, v0}, Ls1/z/c/l;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i(Lq3/a/w2/x;Ls1/w/d;)Ljava/lang/Object;
    .locals 5
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
    iget v0, p0, Lq3/a/x2/o1/g;->e:I

    .line 2
    sget v1, Lq3/a/b3/j;->a:I

    .line 3
    new-instance v1, Lq3/a/b3/i;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lq3/a/b3/i;-><init>(II)V

    .line 4
    new-instance v0, Lq3/a/x2/o1/a0;

    invoke-direct {v0, p1}, Lq3/a/x2/o1/a0;-><init>(Lq3/a/w2/d0;)V

    .line 5
    move-object v2, p2

    check-cast v2, Ls1/w/k/a/c;

    .line 6
    iget-object v2, v2, Ls1/w/k/a/c;->c:Ls1/w/f;

    invoke-static {v2}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    .line 7
    sget v3, Lq3/a/p1;->e0:I

    sget-object v3, Lq3/a/p1$a;->a:Lq3/a/p1$a;

    invoke-interface {v2, v3}, Ls1/w/f;->get(Ls1/w/f$b;)Ls1/w/f$a;

    move-result-object v2

    check-cast v2, Lq3/a/p1;

    .line 8
    iget-object v3, p0, Lq3/a/x2/o1/g;->d:Lq3/a/x2/f;

    .line 9
    new-instance v4, Lq3/a/x2/o1/g$a;

    invoke-direct {v4, v2, v1, p1, v0}, Lq3/a/x2/o1/g$a;-><init>(Lq3/a/p1;Lq3/a/b3/h;Lq3/a/w2/x;Lq3/a/x2/o1/a0;)V

    invoke-interface {v3, v4, p2}, Lq3/a/x2/f;->c(Lq3/a/x2/g;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, p2, :cond_0

    return-object p1

    .line 10
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public j(Ls1/w/f;ILq3/a/w2/i;)Lq3/a/x2/o1/f;
    .locals 7
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
    new-instance v6, Lq3/a/x2/o1/g;

    iget-object v1, p0, Lq3/a/x2/o1/g;->d:Lq3/a/x2/f;

    iget v2, p0, Lq3/a/x2/o1/g;->e:I

    move-object v0, v6

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lq3/a/x2/o1/g;-><init>(Lq3/a/x2/f;ILs1/w/f;ILq3/a/w2/i;)V

    return-object v6
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
