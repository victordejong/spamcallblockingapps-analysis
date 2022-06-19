.class public final Lq3/a/x2/o1/s;
.super Lq3/a/w2/w;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lq3/a/w2/w<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0003\n\u0000\u0008\u0002\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0006\u00a2\u0006\u0002\u0010\u0007J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "Lkotlinx/coroutines/flow/internal/FlowProduceCoroutine;",
        "T",
        "Lkotlinx/coroutines/channels/ProducerCoroutine;",
        "parentContext",
        "Lkotlin/coroutines/CoroutineContext;",
        "channel",
        "Lkotlinx/coroutines/channels/Channel;",
        "(Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/channels/Channel;)V",
        "childCancelled",
        "",
        "cause",
        "",
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
.method public constructor <init>(Ls1/w/f;Lq3/a/w2/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/f;",
            "Lq3/a/w2/j<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lq3/a/w2/w;-><init>(Ls1/w/f;Lq3/a/w2/j;)V

    return-void
.end method


# virtual methods
.method public G(Ljava/lang/Throwable;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lq3/a/x2/o1/m;

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lq3/a/u1;->B(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
