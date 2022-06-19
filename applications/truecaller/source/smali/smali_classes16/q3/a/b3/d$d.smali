.class public final Lq3/a/b3/d$d;
.super Lq3/a/y2/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq3/a/b3/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lq3/a/y2/d<",
        "Lq3/a/b3/d;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u001a\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00022\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0016J\u0012\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0008\u001a\u00020\u0002H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lkotlinx/coroutines/sync/MutexImpl$UnlockOp;",
        "Lkotlinx/coroutines/internal/AtomicOp;",
        "Lkotlinx/coroutines/sync/MutexImpl;",
        "queue",
        "Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;",
        "(Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;)V",
        "complete",
        "",
        "affected",
        "failure",
        "",
        "prepare",
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
.field public final b:Lq3/a/b3/d$c;


# direct methods
.method public constructor <init>(Lq3/a/b3/d$c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lq3/a/y2/d;-><init>()V

    .line 2
    iput-object p1, p0, Lq3/a/b3/d$d;->b:Lq3/a/b3/d$c;

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lq3/a/b3/d;

    if-nez p2, :cond_0

    .line 2
    sget-object p2, Lq3/a/b3/g;->e:Lq3/a/b3/b;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lq3/a/b3/d$d;->b:Lq3/a/b3/d$c;

    .line 3
    :goto_0
    sget-object v0, Lq3/a/b3/d;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p1, p0, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public i(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lq3/a/b3/d;

    .line 2
    iget-object p1, p0, Lq3/a/b3/d$d;->b:Lq3/a/b3/d$c;

    .line 3
    invoke-virtual {p1}, Lq3/a/y2/m;->E()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    .line 4
    :cond_1
    sget-object p1, Lq3/a/b3/g;->a:Lq3/a/y2/x;

    :goto_1
    return-object p1
.end method
