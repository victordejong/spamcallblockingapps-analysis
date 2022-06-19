.class public Lq3/a/w2/a$b;
.super Lq3/a/w2/y;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq3/a/w2/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lq3/a/w2/y<",
        "TE;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0012\u0018\u0000*\u0006\u0008\u0001\u0010\u0001 \u00002\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B\u001d\u0012\u000e\u0010\u0003\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0015\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00028\u0001H\u0016\u00a2\u0006\u0002\u0010\u000cJ\u0014\u0010\r\u001a\u00020\n2\n\u0010\u000e\u001a\u0006\u0012\u0002\u0008\u00030\u000fH\u0016J\u0015\u0010\u0010\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u000b\u001a\u00028\u0001\u00a2\u0006\u0002\u0010\u0011J\u0008\u0010\u0012\u001a\u00020\u0013H\u0016J!\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u000b\u001a\u00028\u00012\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0016\u00a2\u0006\u0002\u0010\u0018R\u0018\u0010\u0003\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lkotlinx/coroutines/channels/AbstractChannel$ReceiveElement;",
        "E",
        "Lkotlinx/coroutines/channels/Receive;",
        "cont",
        "Lkotlinx/coroutines/CancellableContinuation;",
        "",
        "receiveMode",
        "",
        "(Lkotlinx/coroutines/CancellableContinuation;I)V",
        "completeResumeReceive",
        "",
        "value",
        "(Ljava/lang/Object;)V",
        "resumeReceiveClosed",
        "closed",
        "Lkotlinx/coroutines/channels/Closed;",
        "resumeValue",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
        "toString",
        "",
        "tryResumeReceive",
        "Lkotlinx/coroutines/internal/Symbol;",
        "otherOp",
        "Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;",
        "(Ljava/lang/Object;Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;)Lkotlinx/coroutines/internal/Symbol;",
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
.field public final d:Lq3/a/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/n<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final e:I


# direct methods
.method public constructor <init>(Lq3/a/n;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/a/n<",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lq3/a/w2/y;-><init>()V

    .line 2
    iput-object p1, p0, Lq3/a/w2/a$b;->d:Lq3/a/n;

    .line 3
    iput p2, p0, Lq3/a/w2/a$b;->e:I

    return-void
.end method


# virtual methods
.method public P(Lq3/a/w2/o;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/a/w2/o<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Lq3/a/w2/a$b;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lq3/a/w2/a$b;->d:Lq3/a/n;

    .line 2
    iget-object p1, p1, Lq3/a/w2/o;->d:Ljava/lang/Throwable;

    .line 3
    new-instance v1, Lq3/a/w2/m$a;

    invoke-direct {v1, p1}, Lq3/a/w2/m$a;-><init>(Ljava/lang/Throwable;)V

    .line 4
    new-instance p1, Lq3/a/w2/m;

    invoke-direct {p1, v1}, Lq3/a/w2/m;-><init>(Ljava/lang/Object;)V

    .line 5
    invoke-interface {v0, p1}, Ls1/w/d;->c(Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lq3/a/w2/a$b;->d:Lq3/a/n;

    invoke-virtual {p1}, Lq3/a/w2/o;->T()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Le/q/f/a/d/a;->a0(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ls1/w/d;->c(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public g(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lq3/a/w2/a$b;->d:Lq3/a/n;

    sget-object v0, Lq3/a/p;->a:Lq3/a/y2/x;

    invoke-interface {p1, v0}, Lq3/a/n;->n(Ljava/lang/Object;)V

    return-void
.end method

.method public m(Ljava/lang/Object;Lq3/a/y2/m$c;)Lq3/a/y2/x;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lq3/a/y2/m$c;",
            ")",
            "Lq3/a/y2/x;"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lq3/a/w2/a$b;->d:Lq3/a/n;

    .line 2
    iget v0, p0, Lq3/a/w2/a$b;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3
    new-instance v0, Lq3/a/w2/m;

    invoke-direct {v0, p1}, Lq3/a/w2/m;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 4
    :goto_0
    invoke-virtual {p0, p1}, Lq3/a/w2/y;->O(Ljava/lang/Object;)Ls1/z/b/l;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1, p1}, Lq3/a/n;->w(Ljava/lang/Object;Ljava/lang/Object;Ls1/z/b/l;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    .line 5
    :cond_1
    sget-object p1, Lq3/a/p;->a:Lq3/a/y2/x;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "ReceiveElement@"

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ls1/a/a/a/v0/f/d;->p1(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[receiveMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lq3/a/w2/a$b;->e:I

    const/16 v2, 0x5d

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->I2(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
