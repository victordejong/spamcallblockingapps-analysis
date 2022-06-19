.class public final Lq3/a/w2/o;
.super Lq3/a/w2/c0;
.source "SourceFile"

# interfaces
.implements Lq3/a/w2/a0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lq3/a/w2/c0;",
        "Lq3/a/w2/a0<",
        "TE;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u000c\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u0000*\u0006\u0008\u0000\u0010\u0001 \u00002\u00020\u00022\u0008\u0012\u0004\u0012\u0002H\u00010\u0003B\u000f\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0015\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00028\u0000H\u0016\u00a2\u0006\u0002\u0010\u0014J\u0008\u0010\u0015\u001a\u00020\u0012H\u0016J\u0014\u0010\u0016\u001a\u00020\u00122\n\u0010\u0017\u001a\u0006\u0012\u0002\u0008\u00030\u0000H\u0016J\u0008\u0010\u0018\u001a\u00020\u0019H\u0016J\u001f\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u0013\u001a\u00028\u00002\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0016\u00a2\u0006\u0002\u0010\u001eJ\u0012\u0010\u001f\u001a\u00020\u001b2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0016R\u0012\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00008VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u001a\u0010\n\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00008VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\tR\u0011\u0010\u000c\u001a\u00020\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u000f\u001a\u00020\u00058F\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u000e\u00a8\u0006 "
    }
    d2 = {
        "Lkotlinx/coroutines/channels/Closed;",
        "E",
        "Lkotlinx/coroutines/channels/Send;",
        "Lkotlinx/coroutines/channels/ReceiveOrClosed;",
        "closeCause",
        "",
        "(Ljava/lang/Throwable;)V",
        "offerResult",
        "getOfferResult",
        "()Lkotlinx/coroutines/channels/Closed;",
        "pollResult",
        "getPollResult",
        "receiveException",
        "getReceiveException",
        "()Ljava/lang/Throwable;",
        "sendException",
        "getSendException",
        "completeResumeReceive",
        "",
        "value",
        "(Ljava/lang/Object;)V",
        "completeResumeSend",
        "resumeSendClosed",
        "closed",
        "toString",
        "",
        "tryResumeReceive",
        "Lkotlinx/coroutines/internal/Symbol;",
        "otherOp",
        "Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;",
        "(Ljava/lang/Object;Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;)Lkotlinx/coroutines/internal/Symbol;",
        "tryResumeSend",
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
.field public final d:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lq3/a/w2/c0;-><init>()V

    .line 2
    iput-object p1, p0, Lq3/a/w2/o;->d:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public O()V
    .locals 0

    return-void
.end method

.method public P()Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public Q(Lq3/a/w2/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/a/w2/o<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method public R(Lq3/a/y2/m$c;)Lq3/a/y2/x;
    .locals 2

    .line 1
    sget-object v0, Lq3/a/p;->a:Lq3/a/y2/x;

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, p1, Lq3/a/y2/m$c;->c:Lq3/a/y2/m$a;

    invoke-virtual {v1, p1}, Lq3/a/y2/m$a;->e(Lq3/a/y2/m$c;)V

    :goto_0
    return-object v0
.end method

.method public final T()Ljava/lang/Throwable;
    .locals 2

    .line 1
    iget-object v0, p0, Lq3/a/w2/o;->d:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    new-instance v0, Lq3/a/w2/p;

    const-string v1, "Channel was closed"

    invoke-direct {v0, v1}, Lq3/a/w2/p;-><init>(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final U()Ljava/lang/Throwable;
    .locals 2

    .line 1
    iget-object v0, p0, Lq3/a/w2/o;->d:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    new-instance v0, Lq3/a/w2/q;

    const-string v1, "Channel was closed"

    invoke-direct {v0, v1}, Lq3/a/w2/q;-><init>(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public e()Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public g(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    return-void
.end method

.method public m(Ljava/lang/Object;Lq3/a/y2/m$c;)Lq3/a/y2/x;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lq3/a/y2/m$c;",
            ")",
            "Lq3/a/y2/x;"
        }
    .end annotation

    .line 1
    sget-object p1, Lq3/a/p;->a:Lq3/a/y2/x;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "Closed@"

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ls1/a/a/a/v0/f/d;->p1(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lq3/a/w2/o;->d:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
