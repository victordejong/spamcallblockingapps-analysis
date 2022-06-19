.class public Lq3/a/w2/a$d;
.super Lq3/a/w2/y;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq3/a/w2/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
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
        "\u0000L\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0012\u0018\u0000*\u0004\u0008\u0001\u0010\u00012\u0008\u0012\u0004\u0012\u0002H\u00010\u0002B!\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0004\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0002\u0010\u0008J\u0015\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00028\u0001H\u0016\u00a2\u0006\u0002\u0010\u000cJ#\u0010\r\u001a\u0010\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\n\u0018\u00010\u000e2\u0006\u0010\u000b\u001a\u00028\u0001H\u0016\u00a2\u0006\u0002\u0010\u0010J\u0014\u0010\u0011\u001a\u00020\n2\n\u0010\u0012\u001a\u0006\u0012\u0002\u0008\u00030\u0013H\u0016J\u0008\u0010\u0014\u001a\u00020\u0015H\u0016J!\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u000b\u001a\u00028\u00012\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016\u00a2\u0006\u0002\u0010\u001aR\u0016\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lkotlinx/coroutines/channels/AbstractChannel$ReceiveHasNext;",
        "E",
        "Lkotlinx/coroutines/channels/Receive;",
        "iterator",
        "Lkotlinx/coroutines/channels/AbstractChannel$Itr;",
        "cont",
        "Lkotlinx/coroutines/CancellableContinuation;",
        "",
        "(Lkotlinx/coroutines/channels/AbstractChannel$Itr;Lkotlinx/coroutines/CancellableContinuation;)V",
        "completeResumeReceive",
        "",
        "value",
        "(Ljava/lang/Object;)V",
        "resumeOnCancellationFun",
        "Lkotlin/Function1;",
        "",
        "(Ljava/lang/Object;)Lkotlin/jvm/functions/Function1;",
        "resumeReceiveClosed",
        "closed",
        "Lkotlinx/coroutines/channels/Closed;",
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
.field public final d:Lq3/a/w2/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/w2/a$a<",
            "TE;>;"
        }
    .end annotation
.end field

.field public final e:Lq3/a/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/n<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lq3/a/w2/a$a;Lq3/a/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/a/w2/a$a<",
            "TE;>;",
            "Lq3/a/n<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lq3/a/w2/y;-><init>()V

    .line 2
    iput-object p1, p0, Lq3/a/w2/a$d;->d:Lq3/a/w2/a$a;

    .line 3
    iput-object p2, p0, Lq3/a/w2/a$d;->e:Lq3/a/n;

    return-void
.end method


# virtual methods
.method public O(Ljava/lang/Object;)Ls1/z/b/l;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ls1/z/b/l<",
            "Ljava/lang/Throwable;",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lq3/a/w2/a$d;->d:Lq3/a/w2/a$a;

    iget-object v0, v0, Lq3/a/w2/a$a;->a:Lq3/a/w2/a;

    iget-object v0, v0, Lq3/a/w2/c;->a:Ls1/z/b/l;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lq3/a/w2/a$d;->e:Lq3/a/n;

    invoke-interface {v1}, Ls1/w/d;->getContext()Ls1/w/f;

    move-result-object v1

    .line 2
    new-instance v2, Lq3/a/y2/r;

    invoke-direct {v2, v0, p1, v1}, Lq3/a/y2/r;-><init>(Ls1/z/b/l;Ljava/lang/Object;Ls1/w/f;)V

    move-object p1, v2

    :goto_0
    return-object p1
.end method

.method public P(Lq3/a/w2/o;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/a/w2/o<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lq3/a/w2/o;->d:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lq3/a/w2/a$d;->e:Lq3/a/n;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v2, 0x0

    .line 3
    invoke-interface {v0, v1, v2}, Lq3/a/n;->o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lq3/a/w2/a$d;->e:Lq3/a/n;

    invoke-virtual {p1}, Lq3/a/w2/o;->T()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lq3/a/n;->t(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 5
    iget-object v1, p0, Lq3/a/w2/a$d;->d:Lq3/a/w2/a$a;

    .line 6
    iput-object p1, v1, Lq3/a/w2/a$a;->b:Ljava/lang/Object;

    .line 7
    iget-object p1, p0, Lq3/a/w2/a$d;->e:Lq3/a/n;

    invoke-interface {p1, v0}, Lq3/a/n;->n(Ljava/lang/Object;)V

    :cond_1
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
    iget-object v0, p0, Lq3/a/w2/a$d;->d:Lq3/a/w2/a$a;

    .line 2
    iput-object p1, v0, Lq3/a/w2/a$a;->b:Ljava/lang/Object;

    .line 3
    iget-object p1, p0, Lq3/a/w2/a$d;->e:Lq3/a/n;

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
    iget-object p2, p0, Lq3/a/w2/a$d;->e:Lq3/a/n;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lq3/a/w2/a$d;->O(Ljava/lang/Object;)Ls1/z/b/l;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1, p1}, Lq3/a/n;->w(Ljava/lang/Object;Ljava/lang/Object;Ls1/z/b/l;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v1

    .line 2
    :cond_0
    sget-object p1, Lq3/a/p;->a:Lq3/a/y2/x;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Ls1/a/a/a/v0/f/d;->p1(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReceiveHasNext@"

    invoke-static {v1, v0}, Ls1/z/c/l;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
