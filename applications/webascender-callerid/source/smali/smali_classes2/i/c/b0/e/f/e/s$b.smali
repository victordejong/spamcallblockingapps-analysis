.class final Li/c/b0/e/f/e/s$b;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Li/c/b0/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/e/f/e/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Li/c/b0/c/c;"
    }
.end annotation


# instance fields
.field final f:Li/c/b0/b/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/b/c0<",
            "-TR;>;"
        }
    .end annotation
.end field

.field final g:Li/c/b0/d/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/d/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;"
        }
    .end annotation
.end field

.field final h:[Li/c/b0/e/f/e/s$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Li/c/b0/e/f/e/s$a<",
            "TT;TR;>;"
        }
    .end annotation
.end field

.field i:[Ljava/lang/Object;

.field final j:Li/c/b0/e/g/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/e/g/c<",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final k:Z

.field volatile l:Z

.field volatile m:Z

.field final n:Li/c/b0/e/k/c;

.field o:I

.field p:I


# direct methods
.method constructor <init>(Li/c/b0/b/c0;Li/c/b0/d/o;IIZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/c0<",
            "-TR;>;",
            "Li/c/b0/d/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;IIZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    new-instance v0, Li/c/b0/e/k/c;

    invoke-direct {v0}, Li/c/b0/e/k/c;-><init>()V

    iput-object v0, p0, Li/c/b0/e/f/e/s$b;->n:Li/c/b0/e/k/c;

    .line 3
    iput-object p1, p0, Li/c/b0/e/f/e/s$b;->f:Li/c/b0/b/c0;

    .line 4
    iput-object p2, p0, Li/c/b0/e/f/e/s$b;->g:Li/c/b0/d/o;

    .line 5
    iput-boolean p5, p0, Li/c/b0/e/f/e/s$b;->k:Z

    .line 6
    new-array p1, p3, [Ljava/lang/Object;

    iput-object p1, p0, Li/c/b0/e/f/e/s$b;->i:[Ljava/lang/Object;

    .line 7
    new-array p1, p3, [Li/c/b0/e/f/e/s$a;

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p3, :cond_0

    .line 8
    new-instance p5, Li/c/b0/e/f/e/s$a;

    invoke-direct {p5, p0, p2}, Li/c/b0/e/f/e/s$a;-><init>(Li/c/b0/e/f/e/s$b;I)V

    aput-object p5, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 9
    :cond_0
    iput-object p1, p0, Li/c/b0/e/f/e/s$b;->h:[Li/c/b0/e/f/e/s$a;

    .line 10
    new-instance p1, Li/c/b0/e/g/c;

    invoke-direct {p1, p4}, Li/c/b0/e/g/c;-><init>(I)V

    iput-object p1, p0, Li/c/b0/e/f/e/s$b;->j:Li/c/b0/e/g/c;

    return-void
.end method


# virtual methods
.method a()V
    .locals 4

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/s$b;->h:[Li/c/b0/e/f/e/s$a;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2
    invoke-virtual {v3}, Li/c/b0/e/f/e/s$a;->a()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method b(Li/c/b0/e/g/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/e/g/c<",
            "*>;)V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iput-object v0, p0, Li/c/b0/e/f/e/s$b;->i:[Ljava/lang/Object;

    .line 3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {p1}, Li/c/b0/e/g/c;->clear()V

    return-void

    :catchall_0
    move-exception p1

    .line 5
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method c()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Li/c/b0/e/f/e/s$b;->j:Li/c/b0/e/g/c;

    .line 3
    iget-object v1, p0, Li/c/b0/e/f/e/s$b;->f:Li/c/b0/b/c0;

    .line 4
    iget-boolean v2, p0, Li/c/b0/e/f/e/s$b;->k:Z

    const/4 v3, 0x1

    const/4 v4, 0x1

    .line 5
    :cond_1
    :goto_0
    iget-boolean v5, p0, Li/c/b0/e/f/e/s$b;->l:Z

    if-eqz v5, :cond_2

    .line 6
    invoke-virtual {p0, v0}, Li/c/b0/e/f/e/s$b;->b(Li/c/b0/e/g/c;)V

    .line 7
    iget-object v0, p0, Li/c/b0/e/f/e/s$b;->n:Li/c/b0/e/k/c;

    invoke-virtual {v0}, Li/c/b0/e/k/c;->d()V

    return-void

    :cond_2
    if-nez v2, :cond_3

    .line 8
    iget-object v5, p0, Li/c/b0/e/f/e/s$b;->n:Li/c/b0/e/k/c;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 9
    invoke-virtual {p0}, Li/c/b0/e/f/e/s$b;->a()V

    .line 10
    invoke-virtual {p0, v0}, Li/c/b0/e/f/e/s$b;->b(Li/c/b0/e/g/c;)V

    .line 11
    iget-object v0, p0, Li/c/b0/e/f/e/s$b;->n:Li/c/b0/e/k/c;

    invoke-virtual {v0, v1}, Li/c/b0/e/k/c;->f(Li/c/b0/b/c0;)V

    return-void

    .line 12
    :cond_3
    iget-boolean v5, p0, Li/c/b0/e/f/e/s$b;->m:Z

    .line 13
    invoke-virtual {v0}, Li/c/b0/e/g/c;->poll()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Object;

    if-nez v6, :cond_4

    const/4 v7, 0x1

    goto :goto_1

    :cond_4
    const/4 v7, 0x0

    :goto_1
    if-eqz v5, :cond_5

    if-eqz v7, :cond_5

    .line 14
    invoke-virtual {p0, v0}, Li/c/b0/e/f/e/s$b;->b(Li/c/b0/e/g/c;)V

    .line 15
    iget-object v0, p0, Li/c/b0/e/f/e/s$b;->n:Li/c/b0/e/k/c;

    invoke-virtual {v0, v1}, Li/c/b0/e/k/c;->f(Li/c/b0/b/c0;)V

    return-void

    :cond_5
    if-eqz v7, :cond_6

    neg-int v4, v4

    .line 16
    invoke-virtual {p0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v4

    if-nez v4, :cond_1

    return-void

    .line 17
    :cond_6
    :try_start_0
    iget-object v5, p0, Li/c/b0/e/f/e/s$b;->g:Li/c/b0/d/o;

    invoke-interface {v5, v6}, Li/c/b0/d/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "The combiner returned a null value"

    invoke-static {v5, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    invoke-interface {v1, v5}, Li/c/b0/b/c0;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 19
    invoke-static {v2}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 20
    iget-object v3, p0, Li/c/b0/e/f/e/s$b;->n:Li/c/b0/e/k/c;

    invoke-virtual {v3, v2}, Li/c/b0/e/k/c;->c(Ljava/lang/Throwable;)Z

    .line 21
    invoke-virtual {p0}, Li/c/b0/e/f/e/s$b;->a()V

    .line 22
    invoke-virtual {p0, v0}, Li/c/b0/e/f/e/s$b;->b(Li/c/b0/e/g/c;)V

    .line 23
    iget-object v0, p0, Li/c/b0/e/f/e/s$b;->n:Li/c/b0/e/k/c;

    invoke-virtual {v0, v1}, Li/c/b0/e/k/c;->f(Li/c/b0/b/c0;)V

    return-void
.end method

.method d(I)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Li/c/b0/e/f/e/s$b;->i:[Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_0
    aget-object p1, v0, p1

    const/4 v1, 0x1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    .line 5
    iget v2, p0, Li/c/b0/e/f/e/s$b;->p:I

    add-int/2addr v2, v1

    iput v2, p0, Li/c/b0/e/f/e/s$b;->p:I

    array-length v0, v0

    if-ne v2, v0, :cond_3

    .line 6
    :cond_2
    iput-boolean v1, p0, Li/c/b0/e/f/e/s$b;->m:Z

    .line 7
    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_4

    .line 8
    invoke-virtual {p0}, Li/c/b0/e/f/e/s$b;->a()V

    .line 9
    :cond_4
    invoke-virtual {p0}, Li/c/b0/e/f/e/s$b;->c()V

    return-void

    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public dispose()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Li/c/b0/e/f/e/s$b;->l:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Li/c/b0/e/f/e/s$b;->l:Z

    .line 3
    invoke-virtual {p0}, Li/c/b0/e/f/e/s$b;->a()V

    .line 4
    invoke-virtual {p0}, Li/c/b0/e/f/e/s$b;->c()V

    :cond_0
    return-void
.end method

.method e(ILjava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/s$b;->n:Li/c/b0/e/k/c;

    invoke-virtual {v0, p2}, Li/c/b0/e/k/c;->c(Ljava/lang/Throwable;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 2
    iget-boolean p2, p0, Li/c/b0/e/f/e/s$b;->k:Z

    const/4 v0, 0x1

    if-eqz p2, :cond_4

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object p2, p0, Li/c/b0/e/f/e/s$b;->i:[Ljava/lang/Object;

    if-nez p2, :cond_0

    .line 5
    monitor-exit p0

    return-void

    .line 6
    :cond_0
    aget-object p1, p2, p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    .line 7
    iget v1, p0, Li/c/b0/e/f/e/s$b;->p:I

    add-int/2addr v1, v0

    iput v1, p0, Li/c/b0/e/f/e/s$b;->p:I

    array-length p2, p2

    if-ne v1, p2, :cond_3

    .line 8
    :cond_2
    iput-boolean v0, p0, Li/c/b0/e/f/e/s$b;->m:Z

    .line 9
    :cond_3
    monitor-exit p0

    move v0, p1

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_4
    :goto_1
    if-eqz v0, :cond_5

    .line 10
    invoke-virtual {p0}, Li/c/b0/e/f/e/s$b;->a()V

    .line 11
    :cond_5
    invoke-virtual {p0}, Li/c/b0/e/f/e/s$b;->c()V

    :cond_6
    return-void
.end method

.method f(ILjava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Li/c/b0/e/f/e/s$b;->i:[Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_0
    aget-object v1, v0, p1

    .line 5
    iget v2, p0, Li/c/b0/e/f/e/s$b;->o:I

    if-nez v1, :cond_1

    add-int/lit8 v2, v2, 0x1

    .line 6
    iput v2, p0, Li/c/b0/e/f/e/s$b;->o:I

    .line 7
    :cond_1
    aput-object p2, v0, p1

    .line 8
    array-length p1, v0

    if-ne v2, p1, :cond_2

    .line 9
    iget-object p1, p0, Li/c/b0/e/f/e/s$b;->j:Li/c/b0/e/g/c;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Li/c/b0/e/g/c;->offer(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 10
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_3

    .line 11
    invoke-virtual {p0}, Li/c/b0/e/f/e/s$b;->c()V

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    .line 12
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public g([Li/c/b0/b/a0;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Li/c/b0/b/a0<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/s$b;->h:[Li/c/b0/e/f/e/s$a;

    .line 2
    array-length v1, v0

    .line 3
    iget-object v2, p0, Li/c/b0/e/f/e/s$b;->f:Li/c/b0/b/c0;

    invoke-interface {v2, p0}, Li/c/b0/b/c0;->onSubscribe(Li/c/b0/c/c;)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 4
    iget-boolean v3, p0, Li/c/b0/e/f/e/s$b;->m:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Li/c/b0/e/f/e/s$b;->l:Z

    if-eqz v3, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    aget-object v3, p1, v2

    aget-object v4, v0, v2

    invoke-interface {v3, v4}, Li/c/b0/b/a0;->subscribe(Li/c/b0/b/c0;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Li/c/b0/e/f/e/s$b;->l:Z

    return v0
.end method
