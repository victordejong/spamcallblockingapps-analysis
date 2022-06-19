.class public final Lq3/a/b3/a;
.super Lq3/a/l;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0013\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0096\u0002J\u0008\u0010\u000b\u001a\u00020\u000cH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lkotlinx/coroutines/sync/CancelSemaphoreAcquisitionHandler;",
        "Lkotlinx/coroutines/CancelHandler;",
        "segment",
        "Lkotlinx/coroutines/sync/SemaphoreSegment;",
        "index",
        "",
        "(Lkotlinx/coroutines/sync/SemaphoreSegment;I)V",
        "invoke",
        "",
        "cause",
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
.field public final a:Lq3/a/b3/k;

.field public final b:I


# direct methods
.method public constructor <init>(Lq3/a/b3/k;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lq3/a/l;-><init>()V

    .line 2
    iput-object p1, p0, Lq3/a/b3/a;->a:Lq3/a/b3/k;

    .line 3
    iput p2, p0, Lq3/a/b3/a;->b:I

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lq3/a/b3/a;->a:Lq3/a/b3/k;

    iget v0, p0, Lq3/a/b3/a;->b:I

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v1, Lq3/a/b3/j;->e:Lq3/a/y2/x;

    .line 4
    iget-object v2, p1, Lq3/a/b3/k;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 5
    sget-object v0, Lq3/a/y2/v;->d:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p1}, Lq3/a/b3/k;->g()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lq3/a/y2/g;->d()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lq3/a/y2/g;->e()V

    :cond_0
    return-void
.end method

.method public bridge synthetic d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lq3/a/b3/a;->a(Ljava/lang/Throwable;)V

    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "CancelSemaphoreAcquisitionHandler["

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lq3/a/b3/a;->a:Lq3/a/b3/k;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lq3/a/b3/a;->b:I

    const/16 v2, 0x5d

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->I2(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
