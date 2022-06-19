.class public Lq3/a/w2/w;
.super Lq3/a/w2/k;
.source "SourceFile"

# interfaces
.implements Lq3/a/w2/x;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lq3/a/w2/k<",
        "TE;>;",
        "Lq3/a/w2/x<",
        "TE;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0005\u0008\u0010\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003B\u001b\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0007\u00a2\u0006\u0002\u0010\u0008J\u0018\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\nH\u0014J\u0015\u0010\u0011\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00020\rH\u0014\u00a2\u0006\u0002\u0010\u0013R\u0014\u0010\t\u001a\u00020\n8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\u000b\u00a8\u0006\u0014"
    }
    d2 = {
        "Lkotlinx/coroutines/channels/ProducerCoroutine;",
        "E",
        "Lkotlinx/coroutines/channels/ChannelCoroutine;",
        "Lkotlinx/coroutines/channels/ProducerScope;",
        "parentContext",
        "Lkotlin/coroutines/CoroutineContext;",
        "channel",
        "Lkotlinx/coroutines/channels/Channel;",
        "(Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/channels/Channel;)V",
        "isActive",
        "",
        "()Z",
        "onCancelled",
        "",
        "cause",
        "",
        "handled",
        "onCompleted",
        "value",
        "(Lkotlin/Unit;)V",
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
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/f;",
            "Lq3/a/w2/j<",
            "TE;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, p2, v0, v0}, Lq3/a/w2/k;-><init>(Ls1/w/f;Lq3/a/w2/j;ZZ)V

    return-void
.end method


# virtual methods
.method public Z1()Lq3/a/w2/d0;
    .locals 0

    return-object p0
.end method

.method public b()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lq3/a/c;->b()Z

    move-result v0

    return v0
.end method

.method public t0(Ljava/lang/Throwable;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lq3/a/w2/k;->c:Lq3/a/w2/j;

    .line 2
    invoke-interface {v0, p1}, Lq3/a/w2/d0;->u(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    .line 3
    iget-object p2, p0, Lq3/a/c;->b:Ls1/w/f;

    .line 4
    invoke-static {p2, p1}, Ls1/a/a/a/v0/f/d;->E1(Ls1/w/f;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic u0(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ls1/s;

    invoke-virtual {p0}, Lq3/a/w2/w;->w0()V

    return-void
.end method

.method public w0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lq3/a/w2/k;->c:Lq3/a/w2/j;

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2
    invoke-static {v0, v2, v1, v2}, Ls1/a/a/a/v0/f/d;->f0(Lq3/a/w2/d0;Ljava/lang/Throwable;ILjava/lang/Object;)Z

    return-void
.end method
