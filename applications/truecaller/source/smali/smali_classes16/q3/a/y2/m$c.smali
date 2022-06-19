.class public final Lq3/a/y2/m$c;
.super Lq3/a/y2/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq3/a/y2/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B%\u0012\n\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004\u0012\n\u0010\u0005\u001a\u00060\u0003j\u0002`\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0006\u0010\r\u001a\u00020\u000eJ\u0014\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0010H\u0016J\u0008\u0010\u0011\u001a\u00020\u0012H\u0016R\u0014\u0010\u0002\u001a\u00060\u0003j\u0002`\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\t\u001a\u0006\u0012\u0002\u0008\u00030\n8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000cR\u0010\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u00060\u0003j\u0002`\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lkotlinx/coroutines/internal/LockFreeLinkedListNode$PrepareOp;",
        "Lkotlinx/coroutines/internal/OpDescriptor;",
        "affected",
        "Lkotlinx/coroutines/internal/LockFreeLinkedListNode;",
        "Lkotlinx/coroutines/internal/Node;",
        "next",
        "desc",
        "Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AbstractAtomicDesc;",
        "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AbstractAtomicDesc;)V",
        "atomicOp",
        "Lkotlinx/coroutines/internal/AtomicOp;",
        "getAtomicOp",
        "()Lkotlinx/coroutines/internal/AtomicOp;",
        "finishPrepare",
        "",
        "perform",
        "",
        "toString",
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


# instance fields
.field public final a:Lq3/a/y2/m;

.field public final b:Lq3/a/y2/m;

.field public final c:Lq3/a/y2/m$a;


# direct methods
.method public constructor <init>(Lq3/a/y2/m;Lq3/a/y2/m;Lq3/a/y2/m$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lq3/a/y2/s;-><init>()V

    .line 2
    iput-object p1, p0, Lq3/a/y2/m$c;->a:Lq3/a/y2/m;

    .line 3
    iput-object p2, p0, Lq3/a/y2/m$c;->b:Lq3/a/y2/m;

    .line 4
    iput-object p3, p0, Lq3/a/y2/m$c;->c:Lq3/a/y2/m$a;

    return-void
.end method


# virtual methods
.method public a()Lq3/a/y2/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lq3/a/y2/d<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lq3/a/y2/m$c;->c:Lq3/a/y2/m$a;

    .line 2
    iget-object v0, v0, Lq3/a/y2/b;->a:Lq3/a/y2/d;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "atomicOp"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode{ kotlinx.coroutines.internal.LockFreeLinkedListKt.Node }"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lq3/a/y2/m;

    .line 2
    iget-object v0, p0, Lq3/a/y2/m$c;->c:Lq3/a/y2/m$a;

    invoke-virtual {v0, p0}, Lq3/a/y2/m$a;->h(Lq3/a/y2/m$c;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    sget-object v1, Lq3/a/y2/n;->a:Ljava/lang/Object;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lq3/a/y2/m$c;->b:Lq3/a/y2/m;

    .line 5
    invoke-static {v0}, Lq3/a/y2/m;->A(Lq3/a/y2/m;)Lq3/a/y2/t;

    move-result-object v3

    .line 6
    sget-object v4, Lq3/a/y2/m;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v4, p1, p0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7
    iget-object v3, p0, Lq3/a/y2/m$c;->c:Lq3/a/y2/m$a;

    invoke-virtual {v3, p1}, Lq3/a/y2/m$a;->i(Lq3/a/y2/m;)V

    .line 8
    invoke-virtual {v0, v2}, Lq3/a/y2/m;->C(Lq3/a/y2/s;)Lq3/a/y2/m;

    :cond_0
    return-object v1

    :cond_1
    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {p0}, Lq3/a/y2/m$c;->a()Lq3/a/y2/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lq3/a/y2/d;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 10
    :cond_2
    invoke-virtual {p0}, Lq3/a/y2/m$c;->a()Lq3/a/y2/d;

    move-result-object v0

    invoke-virtual {v0}, Lq3/a/y2/d;->f()Ljava/lang/Object;

    move-result-object v0

    .line 11
    :goto_0
    sget-object v1, Lq3/a/y2/c;->a:Ljava/lang/Object;

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lq3/a/y2/m$c;->a()Lq3/a/y2/d;

    move-result-object v0

    goto :goto_1

    :cond_3
    if-nez v0, :cond_4

    .line 12
    iget-object v0, p0, Lq3/a/y2/m$c;->c:Lq3/a/y2/m$a;

    iget-object v1, p0, Lq3/a/y2/m$c;->b:Lq3/a/y2/m;

    invoke-virtual {v0, p1, v1}, Lq3/a/y2/m$a;->l(Lq3/a/y2/m;Lq3/a/y2/m;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 13
    :cond_4
    iget-object v0, p0, Lq3/a/y2/m$c;->b:Lq3/a/y2/m;

    .line 14
    :goto_1
    sget-object v1, Lq3/a/y2/m;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p1, p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "PrepareOp(op="

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lq3/a/y2/m$c;->a()Lq3/a/y2/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
