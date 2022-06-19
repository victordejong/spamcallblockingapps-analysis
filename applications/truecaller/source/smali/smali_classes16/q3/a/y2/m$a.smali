.class public abstract Lq3/a/y2/m$a;
.super Lq3/a/y2/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq3/a/y2/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008&\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001c\u0010\n\u001a\u00020\u000b2\n\u0010\u000c\u001a\u0006\u0012\u0002\u0008\u00030\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fJ\u0016\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\n\u0010\u0010\u001a\u00060\u0004j\u0002`\u0005H\u0014J \u0010\u0011\u001a\u00020\u000b2\n\u0010\u0010\u001a\u00060\u0004j\u0002`\u00052\n\u0010\u0012\u001a\u00060\u0004j\u0002`\u0005H$J\u0010\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u0015H&J\u0012\u0010\u0016\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\u0014\u0010\u0017\u001a\u00020\u000b2\n\u0010\u0010\u001a\u00060\u0004j\u0002`\u0005H\u0016J\u0014\u0010\u0018\u001a\u0004\u0018\u00010\u000f2\n\u0010\u000c\u001a\u0006\u0012\u0002\u0008\u00030\rJ\u001c\u0010\u0019\u001a\u00020\u001a2\n\u0010\u0010\u001a\u00060\u0004j\u0002`\u00052\u0006\u0010\u0012\u001a\u00020\u000fH\u0014J\u0018\u0010\u001b\u001a\n\u0018\u00010\u0004j\u0004\u0018\u0001`\u00052\u0006\u0010\u000c\u001a\u00020\u001cH\u0014J \u0010\u001d\u001a\u00020\u000f2\n\u0010\u0010\u001a\u00060\u0004j\u0002`\u00052\n\u0010\u0012\u001a\u00060\u0004j\u0002`\u0005H&R\u001a\u0010\u0003\u001a\n\u0018\u00010\u0004j\u0004\u0018\u0001`\u0005X\u00a4\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007R\u001a\u0010\u0008\u001a\n\u0018\u00010\u0004j\u0004\u0018\u0001`\u0005X\u00a4\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\u0007\u00a8\u0006\u001e"
    }
    d2 = {
        "Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AbstractAtomicDesc;",
        "Lkotlinx/coroutines/internal/AtomicDesc;",
        "()V",
        "affectedNode",
        "Lkotlinx/coroutines/internal/LockFreeLinkedListNode;",
        "Lkotlinx/coroutines/internal/Node;",
        "getAffectedNode",
        "()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;",
        "originalNext",
        "getOriginalNext",
        "complete",
        "",
        "op",
        "Lkotlinx/coroutines/internal/AtomicOp;",
        "failure",
        "",
        "affected",
        "finishOnSuccess",
        "next",
        "finishPrepare",
        "prepareOp",
        "Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;",
        "onPrepare",
        "onRemoved",
        "prepare",
        "retry",
        "",
        "takeAffectedNode",
        "Lkotlinx/coroutines/internal/OpDescriptor;",
        "updatedNext",
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
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lq3/a/y2/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lq3/a/y2/d;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/a/y2/d<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0}, Lq3/a/y2/m$a;->f()Lq3/a/y2/m;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-virtual {p0}, Lq3/a/y2/m$a;->g()Lq3/a/y2/m;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    if-eqz p2, :cond_3

    .line 3
    invoke-virtual {p0, v0, v1}, Lq3/a/y2/m$a;->l(Lq3/a/y2/m;Lq3/a/y2/m;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    :cond_3
    move-object v2, v1

    .line 4
    :goto_1
    sget-object v3, Lq3/a/y2/m;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, v0, p1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 5
    invoke-virtual {p0, v0, v1}, Lq3/a/y2/m$a;->d(Lq3/a/y2/m;Lq3/a/y2/m;)V

    :cond_4
    return-void
.end method

.method public final b(Lq3/a/y2/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/a/y2/d<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    sget-object v0, Lq3/a/y2/c;->b:Ljava/lang/Object;

    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lq3/a/y2/m$a;->k(Lq3/a/y2/s;)Lq3/a/y2/m;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    .line 2
    :cond_1
    iget-object v2, v1, Lq3/a/y2/m;->_next:Ljava/lang/Object;

    const/4 v3, 0x0

    if-ne v2, p1, :cond_2

    return-object v3

    .line 3
    :cond_2
    invoke-virtual {p1}, Lq3/a/y2/d;->h()Z

    move-result v4

    if-eqz v4, :cond_3

    return-object v3

    .line 4
    :cond_3
    instance-of v4, v2, Lq3/a/y2/s;

    if-eqz v4, :cond_5

    .line 5
    check-cast v2, Lq3/a/y2/s;

    invoke-virtual {p1, v2}, Lq3/a/y2/s;->b(Lq3/a/y2/s;)Z

    move-result v3

    if-eqz v3, :cond_4

    return-object v0

    .line 6
    :cond_4
    invoke-virtual {v2, v1}, Lq3/a/y2/s;->c(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_5
    invoke-virtual {p0, v1}, Lq3/a/y2/m$a;->c(Lq3/a/y2/m;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_6

    return-object v4

    .line 8
    :cond_6
    invoke-virtual {p0, v1, v2}, Lq3/a/y2/m$a;->j(Lq3/a/y2/m;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_0

    .line 9
    :cond_7
    new-instance v4, Lq3/a/y2/m$c;

    move-object v5, v2

    check-cast v5, Lq3/a/y2/m;

    invoke-direct {v4, v1, v5, p0}, Lq3/a/y2/m$c;-><init>(Lq3/a/y2/m;Lq3/a/y2/m;Lq3/a/y2/m$a;)V

    .line 10
    sget-object v5, Lq3/a/y2/m;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v5, v1, v2, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 11
    :try_start_0
    invoke-virtual {v4, v1}, Lq3/a/y2/m$c;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 12
    sget-object v1, Lq3/a/y2/n;->a:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v5, v1, :cond_8

    goto :goto_0

    :cond_8
    return-object v3

    :catchall_0
    move-exception p1

    .line 13
    sget-object v0, Lq3/a/y2/m;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, v1, v4, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    throw p1
.end method

.method public abstract c(Lq3/a/y2/m;)Ljava/lang/Object;
.end method

.method public abstract d(Lq3/a/y2/m;Lq3/a/y2/m;)V
.end method

.method public abstract e(Lq3/a/y2/m$c;)V
.end method

.method public abstract f()Lq3/a/y2/m;
.end method

.method public abstract g()Lq3/a/y2/m;
.end method

.method public h(Lq3/a/y2/m$c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lq3/a/y2/m$a;->e(Lq3/a/y2/m$c;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public i(Lq3/a/y2/m;)V
    .locals 0

    return-void
.end method

.method public abstract j(Lq3/a/y2/m;Ljava/lang/Object;)Z
.end method

.method public abstract k(Lq3/a/y2/s;)Lq3/a/y2/m;
.end method

.method public abstract l(Lq3/a/y2/m;Lq3/a/y2/m;)Ljava/lang/Object;
.end method
