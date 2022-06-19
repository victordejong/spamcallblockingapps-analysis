.class public final Li/c/b0/e/h/k;
.super Ljava/util/concurrent/atomic/AtomicReferenceArray;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava/util/concurrent/Callable;
.implements Li/c/b0/c/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/Runnable;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Object;",
        ">;",
        "Li/c/b0/c/c;"
    }
.end annotation


# static fields
.field static final g:Ljava/lang/Object;

.field static final h:Ljava/lang/Object;

.field static final i:Ljava/lang/Object;

.field static final j:Ljava/lang/Object;


# instance fields
.field final f:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Li/c/b0/e/h/k;->g:Ljava/lang/Object;

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Li/c/b0/e/h/k;->h:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Li/c/b0/e/h/k;->i:Ljava/lang/Object;

    .line 4
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Li/c/b0/e/h/k;->j:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;Li/c/b0/c/d;)V
    .locals 1

    const/4 v0, 0x3

    .line 1
    invoke-direct {p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    .line 2
    iput-object p1, p0, Li/c/b0/e/h/k;->f:Ljava/lang/Runnable;

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/concurrent/Future;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "*>;)V"
        }
    .end annotation

    :cond_0
    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 2
    sget-object v2, Li/c/b0/e/h/k;->j:Ljava/lang/Object;

    if-ne v1, v2, :cond_1

    return-void

    .line 3
    :cond_1
    sget-object v2, Li/c/b0/e/h/k;->h:Ljava/lang/Object;

    if-ne v1, v2, :cond_2

    const/4 v0, 0x0

    .line 4
    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    return-void

    .line 5
    :cond_2
    sget-object v2, Li/c/b0/e/h/k;->i:Ljava/lang/Object;

    if-ne v1, v2, :cond_3

    .line 6
    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    return-void

    .line 7
    :cond_3
    invoke-virtual {p0, v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public call()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Li/c/b0/e/h/k;->run()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public dispose()V
    .locals 7

    :cond_0
    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 2
    sget-object v2, Li/c/b0/e/h/k;->j:Ljava/lang/Object;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_4

    sget-object v2, Li/c/b0/e/h/k;->h:Ljava/lang/Object;

    if-eq v1, v2, :cond_4

    sget-object v4, Li/c/b0/e/h/k;->i:Ljava/lang/Object;

    if-ne v1, v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x2

    .line 3
    invoke-virtual {p0, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    if-eq v5, v6, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_3

    move-object v2, v4

    .line 4
    :cond_3
    invoke-virtual {p0, v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_4

    .line 5
    check-cast v1, Ljava/util/concurrent/Future;

    invoke-interface {v1, v5}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 6
    :cond_4
    :goto_1
    invoke-virtual {p0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 7
    sget-object v1, Li/c/b0/e/h/k;->j:Ljava/lang/Object;

    if-eq v0, v1, :cond_6

    sget-object v1, Li/c/b0/e/h/k;->g:Ljava/lang/Object;

    if-eq v0, v1, :cond_6

    if-nez v0, :cond_5

    goto :goto_2

    .line 8
    :cond_5
    invoke-virtual {p0, v3, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 9
    check-cast v0, Li/c/b0/c/d;

    invoke-interface {v0, p0}, Li/c/b0/c/d;->c(Li/c/b0/c/c;)Z

    :cond_6
    :goto_2
    return-void
.end method

.method public isDisposed()Z
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 2
    sget-object v2, Li/c/b0/e/h/k;->g:Ljava/lang/Object;

    if-eq v1, v2, :cond_0

    sget-object v2, Li/c/b0/e/h/k;->j:Ljava/lang/Object;

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public run()V
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2
    :try_start_0
    iget-object v4, p0, Li/c/b0/e/h/k;->f:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-virtual {p0, v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    .line 4
    invoke-virtual {p0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 5
    sget-object v1, Li/c/b0/e/h/k;->g:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    sget-object v1, Li/c/b0/e/h/k;->j:Ljava/lang/Object;

    invoke-virtual {p0, v3, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 6
    check-cast v0, Li/c/b0/c/d;

    invoke-interface {v0, p0}, Li/c/b0/c/d;->c(Li/c/b0/c/c;)Z

    .line 7
    :cond_0
    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 8
    sget-object v1, Li/c/b0/e/h/k;->h:Ljava/lang/Object;

    if-eq v0, v1, :cond_1

    sget-object v1, Li/c/b0/e/h/k;->i:Ljava/lang/Object;

    if-eq v0, v1, :cond_1

    sget-object v1, Li/c/b0/e/h/k;->j:Ljava/lang/Object;

    invoke-virtual {p0, v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    return-void

    :catchall_0
    move-exception v4

    .line 9
    :try_start_1
    invoke-static {v4}, Li/c/b0/h/a;->t(Ljava/lang/Throwable;)V

    .line 10
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v4

    .line 11
    invoke-virtual {p0, v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->lazySet(ILjava/lang/Object;)V

    .line 12
    invoke-virtual {p0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 13
    sget-object v1, Li/c/b0/e/h/k;->g:Ljava/lang/Object;

    if-eq v0, v1, :cond_2

    sget-object v1, Li/c/b0/e/h/k;->j:Ljava/lang/Object;

    invoke-virtual {p0, v3, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 14
    check-cast v0, Li/c/b0/c/d;

    invoke-interface {v0, p0}, Li/c/b0/c/d;->c(Li/c/b0/c/c;)Z

    .line 15
    :cond_2
    :goto_0
    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 16
    sget-object v1, Li/c/b0/e/h/k;->h:Ljava/lang/Object;

    if-eq v0, v1, :cond_3

    sget-object v1, Li/c/b0/e/h/k;->i:Ljava/lang/Object;

    if-eq v0, v1, :cond_3

    sget-object v1, Li/c/b0/e/h/k;->j:Ljava/lang/Object;

    invoke-virtual {p0, v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 17
    :cond_3
    throw v4
.end method
