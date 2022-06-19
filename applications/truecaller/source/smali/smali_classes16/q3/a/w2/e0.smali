.class public Lq3/a/w2/e0;
.super Lq3/a/w2/c0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lq3/a/w2/c0;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0010\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002B\u001b\u0012\u0006\u0010\u0003\u001a\u00028\u0000\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0002\u0010\u0007J\u0008\u0010\u000b\u001a\u00020\u0006H\u0016J\u0014\u0010\u000c\u001a\u00020\u00062\n\u0010\r\u001a\u0006\u0012\u0002\u0008\u00030\u000eH\u0016J\u0008\u0010\u000f\u001a\u00020\u0010H\u0016J\u0014\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016R\u0016\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00058\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0003\u001a\u00028\u0000X\u0096\u0004\u00a2\u0006\n\n\u0002\u0010\n\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u0015"
    }
    d2 = {
        "Lkotlinx/coroutines/channels/SendElement;",
        "E",
        "Lkotlinx/coroutines/channels/Send;",
        "pollResult",
        "cont",
        "Lkotlinx/coroutines/CancellableContinuation;",
        "",
        "(Ljava/lang/Object;Lkotlinx/coroutines/CancellableContinuation;)V",
        "getPollResult",
        "()Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "completeResumeSend",
        "resumeSendClosed",
        "closed",
        "Lkotlinx/coroutines/channels/Closed;",
        "toString",
        "",
        "tryResumeSend",
        "Lkotlinx/coroutines/internal/Symbol;",
        "otherOp",
        "Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;",
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
.field public final d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field public final e:Lq3/a/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/n<",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lq3/a/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lq3/a/n<",
            "-",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lq3/a/w2/c0;-><init>()V

    .line 2
    iput-object p1, p0, Lq3/a/w2/e0;->d:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Lq3/a/w2/e0;->e:Lq3/a/n;

    return-void
.end method


# virtual methods
.method public O()V
    .locals 2

    .line 1
    iget-object v0, p0, Lq3/a/w2/e0;->e:Lq3/a/n;

    sget-object v1, Lq3/a/p;->a:Lq3/a/y2/x;

    invoke-interface {v0, v1}, Lq3/a/n;->n(Ljava/lang/Object;)V

    return-void
.end method

.method public P()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lq3/a/w2/e0;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public Q(Lq3/a/w2/o;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/a/w2/o<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lq3/a/w2/e0;->e:Lq3/a/n;

    invoke-virtual {p1}, Lq3/a/w2/o;->U()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Le/q/f/a/d/a;->a0(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ls1/w/d;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public R(Lq3/a/y2/m$c;)Lq3/a/y2/x;
    .locals 4

    .line 1
    iget-object v0, p0, Lq3/a/w2/e0;->e:Lq3/a/n;

    sget-object v1, Ls1/s;->a:Ls1/s;

    const/4 v2, 0x0

    if-nez p1, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    iget-object v3, p1, Lq3/a/y2/m$c;->c:Lq3/a/y2/m$a;

    :goto_0
    invoke-interface {v0, v1, v3}, Lq3/a/n;->o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v2

    :cond_1
    if-nez p1, :cond_2

    goto :goto_1

    .line 2
    :cond_2
    iget-object v0, p1, Lq3/a/y2/m$c;->c:Lq3/a/y2/m$a;

    invoke-virtual {v0, p1}, Lq3/a/y2/m$a;->e(Lq3/a/y2/m$c;)V

    .line 3
    :goto_1
    sget-object p1, Lq3/a/p;->a:Lq3/a/y2/x;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ls1/a/a/a/v0/f/d;->p1(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4
    iget-object v1, p0, Lq3/a/w2/e0;->d:Ljava/lang/Object;

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
