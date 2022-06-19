.class final Li/c/b0/e/f/e/q3$b;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Li/c/b0/b/c0;
.implements Li/c/b0/c/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/e/f/e/q3;
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
        "Li/c/b0/b/c0<",
        "TT;>;",
        "Li/c/b0/c/c;"
    }
.end annotation


# static fields
.field static final p:Li/c/b0/e/f/e/q3$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/e/f/e/q3$a<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


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
            "-TT;+",
            "Li/c/b0/b/a0<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field final h:I

.field final i:Z

.field final j:Li/c/b0/e/k/c;

.field volatile k:Z

.field volatile l:Z

.field m:Li/c/b0/c/c;

.field final n:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Li/c/b0/e/f/e/q3$a<",
            "TT;TR;>;>;"
        }
    .end annotation
.end field

.field volatile o:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Li/c/b0/e/f/e/q3$a;

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Li/c/b0/e/f/e/q3$a;-><init>(Li/c/b0/e/f/e/q3$b;JI)V

    sput-object v0, Li/c/b0/e/f/e/q3$b;->p:Li/c/b0/e/f/e/q3$a;

    .line 2
    invoke-virtual {v0}, Li/c/b0/e/f/e/q3$a;->a()V

    return-void
.end method

.method constructor <init>(Li/c/b0/b/c0;Li/c/b0/d/o;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/c0<",
            "-TR;>;",
            "Li/c/b0/d/o<",
            "-TT;+",
            "Li/c/b0/b/a0<",
            "+TR;>;>;IZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Li/c/b0/e/f/e/q3$b;->n:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    iput-object p1, p0, Li/c/b0/e/f/e/q3$b;->f:Li/c/b0/b/c0;

    .line 4
    iput-object p2, p0, Li/c/b0/e/f/e/q3$b;->g:Li/c/b0/d/o;

    .line 5
    iput p3, p0, Li/c/b0/e/f/e/q3$b;->h:I

    .line 6
    iput-boolean p4, p0, Li/c/b0/e/f/e/q3$b;->i:Z

    .line 7
    new-instance p1, Li/c/b0/e/k/c;

    invoke-direct {p1}, Li/c/b0/e/k/c;-><init>()V

    iput-object p1, p0, Li/c/b0/e/f/e/q3$b;->j:Li/c/b0/e/k/c;

    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/q3$b;->n:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Li/c/b0/e/f/e/q3$b;->p:Li/c/b0/e/f/e/q3$a;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/c/b0/e/f/e/q3$a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Li/c/b0/e/f/e/q3$a;->a()V

    :cond_0
    return-void
.end method

.method b()V
    .locals 13

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Li/c/b0/e/f/e/q3$b;->f:Li/c/b0/b/c0;

    .line 3
    iget-object v1, p0, Li/c/b0/e/f/e/q3$b;->n:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    iget-boolean v2, p0, Li/c/b0/e/f/e/q3$b;->i:Z

    const/4 v3, 0x1

    const/4 v4, 0x1

    .line 5
    :cond_1
    :goto_0
    iget-boolean v5, p0, Li/c/b0/e/f/e/q3$b;->l:Z

    if-eqz v5, :cond_2

    return-void

    .line 6
    :cond_2
    iget-boolean v5, p0, Li/c/b0/e/f/e/q3$b;->k:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_7

    .line 7
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_3

    const/4 v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    :goto_1
    if-eqz v2, :cond_5

    if-eqz v5, :cond_7

    .line 8
    iget-object v1, p0, Li/c/b0/e/f/e/q3$b;->j:Li/c/b0/e/k/c;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    if-eqz v1, :cond_4

    .line 9
    invoke-interface {v0, v1}, Li/c/b0/b/c0;->onError(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 10
    :cond_4
    invoke-interface {v0}, Li/c/b0/b/c0;->onComplete()V

    :goto_2
    return-void

    .line 11
    :cond_5
    iget-object v7, p0, Li/c/b0/e/f/e/q3$b;->j:Li/c/b0/e/k/c;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Throwable;

    if-eqz v7, :cond_6

    .line 12
    iget-object v1, p0, Li/c/b0/e/f/e/q3$b;->j:Li/c/b0/e/k/c;

    invoke-virtual {v1, v0}, Li/c/b0/e/k/c;->f(Li/c/b0/b/c0;)V

    return-void

    :cond_6
    if-eqz v5, :cond_7

    .line 13
    invoke-interface {v0}, Li/c/b0/b/c0;->onComplete()V

    return-void

    .line 14
    :cond_7
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Li/c/b0/e/f/e/q3$a;

    if-eqz v5, :cond_f

    .line 15
    iget-object v7, v5, Li/c/b0/e/f/e/q3$a;->i:Li/c/b0/e/c/k;

    if-eqz v7, :cond_f

    const/4 v8, 0x0

    .line 16
    :goto_3
    iget-boolean v9, p0, Li/c/b0/e/f/e/q3$b;->l:Z

    if-eqz v9, :cond_8

    return-void

    .line 17
    :cond_8
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v9

    if-eq v5, v9, :cond_9

    :goto_4
    const/4 v8, 0x1

    goto :goto_8

    :cond_9
    if-nez v2, :cond_a

    .line 18
    iget-object v9, p0, Li/c/b0/e/f/e/q3$b;->j:Li/c/b0/e/k/c;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Throwable;

    if-eqz v9, :cond_a

    .line 19
    iget-object v1, p0, Li/c/b0/e/f/e/q3$b;->j:Li/c/b0/e/k/c;

    invoke-virtual {v1, v0}, Li/c/b0/e/k/c;->f(Li/c/b0/b/c0;)V

    return-void

    .line 20
    :cond_a
    iget-boolean v9, v5, Li/c/b0/e/f/e/q3$a;->j:Z

    const/4 v10, 0x0

    .line 21
    :try_start_0
    invoke-interface {v7}, Li/c/b0/e/c/k;->poll()Ljava/lang/Object;

    move-result-object v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v8

    .line 22
    invoke-static {v8}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 23
    iget-object v11, p0, Li/c/b0/e/f/e/q3$b;->j:Li/c/b0/e/k/c;

    invoke-virtual {v11, v8}, Li/c/b0/e/k/c;->c(Ljava/lang/Throwable;)Z

    .line 24
    invoke-virtual {v1, v5, v10}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    if-nez v2, :cond_b

    .line 25
    invoke-virtual {p0}, Li/c/b0/e/f/e/q3$b;->a()V

    .line 26
    iget-object v8, p0, Li/c/b0/e/f/e/q3$b;->m:Li/c/b0/c/c;

    invoke-interface {v8}, Li/c/b0/c/c;->dispose()V

    .line 27
    iput-boolean v3, p0, Li/c/b0/e/f/e/q3$b;->k:Z

    goto :goto_5

    .line 28
    :cond_b
    invoke-virtual {v5}, Li/c/b0/e/f/e/q3$a;->a()V

    :goto_5
    move-object v11, v10

    const/4 v8, 0x1

    :goto_6
    if-nez v11, :cond_c

    const/4 v12, 0x1

    goto :goto_7

    :cond_c
    const/4 v12, 0x0

    :goto_7
    if-eqz v9, :cond_d

    if-eqz v12, :cond_d

    .line 29
    invoke-virtual {v1, v5, v10}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_4

    :cond_d
    if-eqz v12, :cond_e

    :goto_8
    if-eqz v8, :cond_f

    goto/16 :goto_0

    .line 30
    :cond_e
    invoke-interface {v0, v11}, Li/c/b0/b/c0;->onNext(Ljava/lang/Object;)V

    goto :goto_3

    :cond_f
    neg-int v4, v4

    .line 31
    invoke-virtual {p0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v4

    if-nez v4, :cond_1

    return-void
.end method

.method c(Li/c/b0/e/f/e/q3$a;Ljava/lang/Throwable;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/e/f/e/q3$a<",
            "TT;TR;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    iget-wide v0, p1, Li/c/b0/e/f/e/q3$a;->g:J

    iget-wide v2, p0, Li/c/b0/e/f/e/q3$b;->o:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    iget-object v0, p0, Li/c/b0/e/f/e/q3$b;->j:Li/c/b0/e/k/c;

    invoke-virtual {v0, p2}, Li/c/b0/e/k/c;->b(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-boolean p2, p0, Li/c/b0/e/f/e/q3$b;->i:Z

    const/4 v0, 0x1

    if-nez p2, :cond_0

    .line 3
    iget-object p2, p0, Li/c/b0/e/f/e/q3$b;->m:Li/c/b0/c/c;

    invoke-interface {p2}, Li/c/b0/c/c;->dispose()V

    .line 4
    iput-boolean v0, p0, Li/c/b0/e/f/e/q3$b;->k:Z

    .line 5
    :cond_0
    iput-boolean v0, p1, Li/c/b0/e/f/e/q3$a;->j:Z

    .line 6
    invoke-virtual {p0}, Li/c/b0/e/f/e/q3$b;->b()V

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {p2}, Li/c/b0/h/a;->t(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public dispose()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Li/c/b0/e/f/e/q3$b;->l:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Li/c/b0/e/f/e/q3$b;->l:Z

    .line 3
    iget-object v0, p0, Li/c/b0/e/f/e/q3$b;->m:Li/c/b0/c/c;

    invoke-interface {v0}, Li/c/b0/c/c;->dispose()V

    .line 4
    invoke-virtual {p0}, Li/c/b0/e/f/e/q3$b;->a()V

    .line 5
    iget-object v0, p0, Li/c/b0/e/f/e/q3$b;->j:Li/c/b0/e/k/c;

    invoke-virtual {v0}, Li/c/b0/e/k/c;->d()V

    :cond_0
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Li/c/b0/e/f/e/q3$b;->l:Z

    return v0
.end method

.method public onComplete()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Li/c/b0/e/f/e/q3$b;->k:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Li/c/b0/e/f/e/q3$b;->k:Z

    .line 3
    invoke-virtual {p0}, Li/c/b0/e/f/e/q3$b;->b()V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Li/c/b0/e/f/e/q3$b;->k:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Li/c/b0/e/f/e/q3$b;->j:Li/c/b0/e/k/c;

    invoke-virtual {v0, p1}, Li/c/b0/e/k/c;->b(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-boolean p1, p0, Li/c/b0/e/f/e/q3$b;->i:Z

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Li/c/b0/e/f/e/q3$b;->a()V

    :cond_0
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Li/c/b0/e/f/e/q3$b;->k:Z

    .line 5
    invoke-virtual {p0}, Li/c/b0/e/f/e/q3$b;->b()V

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {p1}, Li/c/b0/h/a;->t(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Li/c/b0/e/f/e/q3$b;->o:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 2
    iput-wide v0, p0, Li/c/b0/e/f/e/q3$b;->o:J

    .line 3
    iget-object v2, p0, Li/c/b0/e/f/e/q3$b;->n:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li/c/b0/e/f/e/q3$a;

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v2}, Li/c/b0/e/f/e/q3$a;->a()V

    .line 5
    :cond_0
    :try_start_0
    iget-object v2, p0, Li/c/b0/e/f/e/q3$b;->g:Li/c/b0/d/o;

    invoke-interface {v2, p1}, Li/c/b0/d/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "The ObservableSource returned is null"

    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Li/c/b0/b/a0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    new-instance v2, Li/c/b0/e/f/e/q3$a;

    iget v3, p0, Li/c/b0/e/f/e/q3$b;->h:I

    invoke-direct {v2, p0, v0, v1, v3}, Li/c/b0/e/f/e/q3$a;-><init>(Li/c/b0/e/f/e/q3$b;JI)V

    .line 7
    :cond_1
    iget-object v0, p0, Li/c/b0/e/f/e/q3$b;->n:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/c/b0/e/f/e/q3$a;

    .line 8
    sget-object v1, Li/c/b0/e/f/e/q3$b;->p:Li/c/b0/e/f/e/q3$a;

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 9
    :cond_2
    iget-object v1, p0, Li/c/b0/e/f/e/q3$b;->n:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    invoke-interface {p1, v2}, Li/c/b0/b/a0;->subscribe(Li/c/b0/b/c0;)V

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 11
    invoke-static {p1}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 12
    iget-object v0, p0, Li/c/b0/e/f/e/q3$b;->m:Li/c/b0/c/c;

    invoke-interface {v0}, Li/c/b0/c/c;->dispose()V

    .line 13
    invoke-virtual {p0, p1}, Li/c/b0/e/f/e/q3$b;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Li/c/b0/c/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/q3$b;->m:Li/c/b0/c/c;

    invoke-static {v0, p1}, Li/c/b0/e/a/c;->validate(Li/c/b0/c/c;Li/c/b0/c/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/e/q3$b;->m:Li/c/b0/c/c;

    .line 3
    iget-object p1, p0, Li/c/b0/e/f/e/q3$b;->f:Li/c/b0/b/c0;

    invoke-interface {p1, p0}, Li/c/b0/b/c0;->onSubscribe(Li/c/b0/c/c;)V

    :cond_0
    return-void
.end method
