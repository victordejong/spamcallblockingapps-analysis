.class public abstract Lq3/a/y2/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Lq3/a/y2/g<",
        "TN;>;>",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0001\n\u0002\u0008\r\n\u0002\u0010\u0000\n\u0002\u0008\t\u0008 \u0018\u0000*\u000e\u0008\u0000\u0010\u0001*\u0008\u0012\u0004\u0012\u00028\u00000\u00002\u00020\u001aB\u0011\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00018\u0000\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\r\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\r\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ \u0010\u000e\u001a\u0004\u0018\u00018\u00002\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bH\u0086\u0008\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\r\u0010\u0010\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0010\u0010\u0007J\u0015\u0010\u0012\u001a\u00020\u00082\u0006\u0010\u0011\u001a\u00028\u0000\u00a2\u0006\u0004\u0008\u0012\u0010\u0013R\u0013\u0010\u0014\u001a\u00020\u00088F@\u0006\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\nR\u0018\u0010\u0017\u001a\u0004\u0018\u00018\u00008B@\u0002X\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0016R\u0015\u0010\u0019\u001a\u0004\u0018\u00018\u00008F@\u0006\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0016R\u0018\u0010\u001d\u001a\u0004\u0018\u00010\u001a8B@\u0002X\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u001cR\u0015\u0010\u0002\u001a\u0004\u0018\u00018\u00008F@\u0006\u00a2\u0006\u0006\u001a\u0004\u0008\u001e\u0010\u0016R\u0016\u0010 \u001a\u00020\u00088&@&X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001f\u0010\nR\u0016\u0010\"\u001a\u00028\u00008B@\u0002X\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008!\u0010\u0016\u00a8\u0006#"
    }
    d2 = {
        "Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;",
        "N",
        "prev",
        "<init>",
        "(Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;)V",
        "",
        "cleanPrev",
        "()V",
        "",
        "markAsClosed",
        "()Z",
        "Lkotlin/Function0;",
        "",
        "onClosedAction",
        "nextOrIfClosed",
        "(Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;",
        "remove",
        "value",
        "trySetNext",
        "(Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;)Z",
        "isTail",
        "getLeftmostAliveNode",
        "()Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;",
        "leftmostAliveNode",
        "getNext",
        "next",
        "",
        "getNextOrClosed",
        "()Ljava/lang/Object;",
        "nextOrClosed",
        "getPrev",
        "getRemoved",
        "removed",
        "getRightmostAliveNode",
        "rightmostAliveNode",
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


# static fields
.field public static final synthetic a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final synthetic b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _next:Ljava/lang/Object;

.field private volatile synthetic _prev:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-class v0, Ljava/lang/Object;

    const-class v1, Lq3/a/y2/g;

    const-string v2, "_next"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v2

    sput-object v2, Lq3/a/y2/g;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v2, "_prev"

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lq3/a/y2/g;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lq3/a/y2/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lq3/a/y2/g;->_next:Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lq3/a/y2/g;->_prev:Ljava/lang/Object;

    return-void
.end method

.method public static final a(Lq3/a/y2/g;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lq3/a/y2/g;->_next:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public final b()Lq3/a/y2/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lq3/a/y2/g;->_next:Ljava/lang/Object;

    .line 2
    sget-object v1, Lq3/a/y2/f;->a:Lq3/a/y2/x;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    check-cast v0, Lq3/a/y2/g;

    return-object v0
.end method

.method public abstract c()Z
.end method

.method public final d()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lq3/a/y2/g;->b()Lq3/a/y2/g;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final e()V
    .locals 3

    .line 1
    :goto_0
    iget-object v0, p0, Lq3/a/y2/g;->_prev:Ljava/lang/Object;

    check-cast v0, Lq3/a/y2/g;

    :goto_1
    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lq3/a/y2/g;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, v0, Lq3/a/y2/g;->_prev:Ljava/lang/Object;

    check-cast v0, Lq3/a/y2/g;

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {p0}, Lq3/a/y2/g;->b()Lq3/a/y2/g;

    move-result-object v1

    invoke-static {v1}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    .line 5
    :goto_2
    invoke-virtual {v1}, Lq3/a/y2/g;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {v1}, Lq3/a/y2/g;->b()Lq3/a/y2/g;

    move-result-object v1

    invoke-static {v1}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    goto :goto_2

    .line 7
    :cond_1
    iput-object v0, v1, Lq3/a/y2/g;->_prev:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 8
    iput-object v1, v0, Lq3/a/y2/g;->_next:Ljava/lang/Object;

    .line 9
    :cond_2
    invoke-virtual {v1}, Lq3/a/y2/g;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    .line 10
    invoke-virtual {v0}, Lq3/a/y2/g;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    return-void
.end method
