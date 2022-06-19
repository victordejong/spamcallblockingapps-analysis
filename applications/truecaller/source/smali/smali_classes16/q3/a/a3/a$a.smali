.class public final Lq3/a/a3/a$a;
.super Lq3/a/y2/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq3/a/a3/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lq3/a/y2/d<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0002\u0018\u00002\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001B\u0019\u0012\n\u0010\u0003\u001a\u0006\u0012\u0002\u0008\u00030\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u001c\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0002H\u0016J\u0012\u0010\u0010\u001a\u00020\r2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0002H\u0002J\u0014\u0010\u0011\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0002H\u0016J\n\u0010\u0012\u001a\u0004\u0018\u00010\u0002H\u0002J\u0008\u0010\u0013\u001a\u00020\u0014H\u0016J\u0008\u0010\u0015\u001a\u00020\rH\u0002R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0003\u001a\u0006\u0012\u0002\u0008\u00030\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u00020\tX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0016"
    }
    d2 = {
        "Lkotlinx/coroutines/selects/SelectBuilderImpl$AtomicSelectOp;",
        "Lkotlinx/coroutines/internal/AtomicOp;",
        "",
        "impl",
        "Lkotlinx/coroutines/selects/SelectBuilderImpl;",
        "desc",
        "Lkotlinx/coroutines/internal/AtomicDesc;",
        "(Lkotlinx/coroutines/selects/SelectBuilderImpl;Lkotlinx/coroutines/internal/AtomicDesc;)V",
        "opSequence",
        "",
        "getOpSequence",
        "()J",
        "complete",
        "",
        "affected",
        "failure",
        "completeSelect",
        "prepare",
        "prepareSelectOp",
        "toString",
        "",
        "undoPrepare",
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
.field public final b:Lq3/a/a3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/a3/a<",
            "*>;"
        }
    .end annotation
.end field

.field public final c:Lq3/a/y2/b;

.field public final d:J


# direct methods
.method public constructor <init>(Lq3/a/a3/a;Lq3/a/y2/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/a/a3/a<",
            "*>;",
            "Lq3/a/y2/b;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lq3/a/y2/d;-><init>()V

    .line 2
    iput-object p1, p0, Lq3/a/a3/a$a;->b:Lq3/a/a3/a;

    .line 3
    iput-object p2, p0, Lq3/a/a3/a$a;->c:Lq3/a/y2/b;

    .line 4
    sget-object p1, Lq3/a/a3/d;->e:Lq3/a/a3/e;

    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v0, Lq3/a/a3/e;->a:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->incrementAndGet(Ljava/lang/Object;)J

    move-result-wide v0

    .line 7
    iput-wide v0, p0, Lq3/a/a3/a$a;->d:J

    .line 8
    iput-object p0, p2, Lq3/a/y2/b;->a:Lq3/a/y2/d;

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    if-nez p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    .line 1
    :cond_1
    sget-object v0, Lq3/a/a3/d;->a:Ljava/lang/Object;

    sget-object v0, Lq3/a/a3/d;->a:Ljava/lang/Object;

    .line 2
    :goto_1
    iget-object v1, p0, Lq3/a/a3/a$a;->b:Lq3/a/a3/a;

    sget-object v2, Lq3/a/a3/a;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, v1, p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 3
    iget-object p1, p0, Lq3/a/a3/a$a;->b:Lq3/a/a3/a;

    .line 4
    invoke-virtual {p1}, Lq3/a/a3/a;->O()V

    .line 5
    :cond_2
    iget-object p1, p0, Lq3/a/a3/a$a;->c:Lq3/a/y2/b;

    invoke-virtual {p1, p0, p2}, Lq3/a/y2/b;->a(Lq3/a/y2/d;Ljava/lang/Object;)V

    return-void
.end method

.method public g()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lq3/a/a3/a$a;->d:J

    return-wide v0
.end method

.method public i(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    if-nez p1, :cond_5

    .line 1
    iget-object v0, p0, Lq3/a/a3/a$a;->b:Lq3/a/a3/a;

    .line 2
    :cond_0
    :goto_0
    iget-object v1, v0, Lq3/a/a3/a;->_state:Ljava/lang/Object;

    const/4 v2, 0x0

    if-ne v1, p0, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    instance-of v3, v1, Lq3/a/y2/s;

    if-eqz v3, :cond_2

    check-cast v1, Lq3/a/y2/s;

    iget-object v2, p0, Lq3/a/a3/a$a;->b:Lq3/a/a3/a;

    invoke-virtual {v1, v2}, Lq3/a/y2/s;->c(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4
    :cond_2
    sget-object v3, Lq3/a/a3/d;->a:Ljava/lang/Object;

    sget-object v3, Lq3/a/a3/d;->a:Ljava/lang/Object;

    if-ne v1, v3, :cond_3

    .line 5
    iget-object v1, p0, Lq3/a/a3/a$a;->b:Lq3/a/a3/a;

    sget-object v4, Lq3/a/a3/a;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v4, v1, v3, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 6
    :cond_3
    sget-object v2, Lq3/a/a3/d;->b:Ljava/lang/Object;

    :goto_1
    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    return-object v2

    .line 7
    :cond_5
    :goto_2
    :try_start_0
    iget-object v0, p0, Lq3/a/a3/a$a;->c:Lq3/a/y2/b;

    invoke-virtual {v0, p0}, Lq3/a/y2/b;->b(Lq3/a/y2/d;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception v0

    if-nez p1, :cond_6

    .line 8
    iget-object p1, p0, Lq3/a/a3/a$a;->b:Lq3/a/a3/a;

    sget-object v1, Lq3/a/a3/a;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object v2, Lq3/a/a3/d;->a:Ljava/lang/Object;

    sget-object v2, Lq3/a/a3/d;->a:Ljava/lang/Object;

    invoke-virtual {v1, p1, p0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 9
    :cond_6
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "AtomicSelectOp(sequence="

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-wide v1, p0, Lq3/a/a3/a$a;->d:J

    .line 3
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
