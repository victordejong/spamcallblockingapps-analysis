.class public abstract Lq3/a/y2/m$b;
.super Lq3/a/y2/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq3/a/y2/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lq3/a/y2/d<",
        "Lq3/a/y2/m;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\u0008!\u0018\u00002\u000c\u0012\u0008\u0012\u00060\u0002j\u0002`\u00030\u0001B\u0011\u0012\n\u0010\u0004\u001a\u00060\u0002j\u0002`\u0003\u00a2\u0006\u0002\u0010\u0005J\u001e\u0010\u0007\u001a\u00020\u00082\n\u0010\t\u001a\u00060\u0002j\u0002`\u00032\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016R\u0014\u0010\u0004\u001a\u00060\u0002j\u0002`\u00038\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\n\u0018\u00010\u0002j\u0004\u0018\u0001`\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lkotlinx/coroutines/internal/LockFreeLinkedListNode$CondAddOp;",
        "Lkotlinx/coroutines/internal/AtomicOp;",
        "Lkotlinx/coroutines/internal/LockFreeLinkedListNode;",
        "Lkotlinx/coroutines/internal/Node;",
        "newNode",
        "(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)V",
        "oldNext",
        "complete",
        "",
        "affected",
        "failure",
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
.field public final b:Lq3/a/y2/m;

.field public c:Lq3/a/y2/m;


# direct methods
.method public constructor <init>(Lq3/a/y2/m;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lq3/a/y2/d;-><init>()V

    .line 2
    iput-object p1, p0, Lq3/a/y2/m$b;->b:Lq3/a/y2/m;

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lq3/a/y2/m;

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 2
    iget-object v0, p0, Lq3/a/y2/m$b;->b:Lq3/a/y2/m;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lq3/a/y2/m$b;->c:Lq3/a/y2/m;

    :goto_1
    if-eqz v0, :cond_2

    .line 3
    sget-object v1, Lq3/a/y2/m;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p1, p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 4
    iget-object p1, p0, Lq3/a/y2/m$b;->b:Lq3/a/y2/m;

    iget-object p2, p0, Lq3/a/y2/m$b;->c:Lq3/a/y2/m;

    invoke-static {p2}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p1, p2}, Lq3/a/y2/m;->D(Lq3/a/y2/m;)V

    :cond_2
    return-void
.end method
