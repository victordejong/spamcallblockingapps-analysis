.class final Li/c/b0/e/f/b/b$d;
.super Li/c/b0/e/f/b/b$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/e/f/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/b0/e/f/b/b$b<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field final r:Lo/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/a/b<",
            "-TR;>;"
        }
    .end annotation
.end field

.field final s:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>(Lo/a/b;Li/c/b0/d/o;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/a/b<",
            "-TR;>;",
            "Li/c/b0/d/o<",
            "-TT;+",
            "Lo/a/a<",
            "+TR;>;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2, p3}, Li/c/b0/e/f/b/b$b;-><init>(Li/c/b0/d/o;I)V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/b/b$d;->r:Lo/a/b;

    .line 3
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Li/c/b0/e/f/b/b$d;->s:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/b/b$b;->j:Lo/a/c;

    invoke-interface {v0}, Lo/a/c;->cancel()V

    .line 2
    iget-object v0, p0, Li/c/b0/e/f/b/b$d;->r:Lo/a/b;

    iget-object v1, p0, Li/c/b0/e/f/b/b$b;->o:Li/c/b0/e/k/c;

    invoke-static {v0, p1, p0, v1}, Li/c/b0/e/k/k;->d(Lo/a/b;Ljava/lang/Throwable;Ljava/util/concurrent/atomic/AtomicInteger;Li/c/b0/e/k/c;)V

    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/b/b$d;->r:Lo/a/b;

    iget-object v1, p0, Li/c/b0/e/f/b/b$b;->o:Li/c/b0/e/k/c;

    invoke-static {v0, p1, p0, v1}, Li/c/b0/e/k/k;->f(Lo/a/b;Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicInteger;Li/c/b0/e/k/c;)Z

    return-void
.end method

.method public cancel()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Li/c/b0/e/f/b/b$b;->n:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Li/c/b0/e/f/b/b$b;->n:Z

    .line 3
    iget-object v0, p0, Li/c/b0/e/f/b/b$b;->f:Li/c/b0/e/f/b/b$e;

    invoke-virtual {v0}, Li/c/b0/e/j/e;->cancel()V

    .line 4
    iget-object v0, p0, Li/c/b0/e/f/b/b$b;->j:Lo/a/c;

    invoke-interface {v0}, Lo/a/c;->cancel()V

    .line 5
    iget-object v0, p0, Li/c/b0/e/f/b/b$b;->o:Li/c/b0/e/k/c;

    invoke-virtual {v0}, Li/c/b0/e/k/c;->d()V

    :cond_0
    return-void
.end method

.method e()V
    .locals 6

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/b/b$d;->s:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_a

    .line 2
    :cond_0
    :goto_0
    iget-boolean v0, p0, Li/c/b0/e/f/b/b$b;->n:Z

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-boolean v0, p0, Li/c/b0/e/f/b/b$b;->p:Z

    if-nez v0, :cond_9

    .line 4
    iget-boolean v0, p0, Li/c/b0/e/f/b/b$b;->m:Z

    .line 5
    :try_start_0
    iget-object v1, p0, Li/c/b0/e/f/b/b$b;->l:Li/c/b0/e/c/k;

    invoke-interface {v1}, Li/c/b0/e/c/k;->poll()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-eqz v0, :cond_3

    if-eqz v4, :cond_3

    .line 6
    iget-object v0, p0, Li/c/b0/e/f/b/b$d;->r:Lo/a/b;

    invoke-interface {v0}, Lo/a/b;->onComplete()V

    return-void

    :cond_3
    if-nez v4, :cond_9

    .line 7
    :try_start_1
    iget-object v0, p0, Li/c/b0/e/f/b/b$b;->g:Li/c/b0/d/o;

    invoke-interface {v0, v1}, Li/c/b0/d/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The mapper returned a null Publisher"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lo/a/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 8
    iget v1, p0, Li/c/b0/e/f/b/b$b;->q:I

    if-eq v1, v3, :cond_5

    .line 9
    iget v1, p0, Li/c/b0/e/f/b/b$b;->k:I

    add-int/2addr v1, v3

    .line 10
    iget v4, p0, Li/c/b0/e/f/b/b$b;->i:I

    if-ne v1, v4, :cond_4

    .line 11
    iput v2, p0, Li/c/b0/e/f/b/b$b;->k:I

    .line 12
    iget-object v2, p0, Li/c/b0/e/f/b/b$b;->j:Lo/a/c;

    int-to-long v4, v1

    invoke-interface {v2, v4, v5}, Lo/a/c;->request(J)V

    goto :goto_2

    .line 13
    :cond_4
    iput v1, p0, Li/c/b0/e/f/b/b$b;->k:I

    .line 14
    :cond_5
    :goto_2
    instance-of v1, v0, Li/c/b0/d/q;

    if-eqz v1, :cond_8

    .line 15
    check-cast v0, Li/c/b0/d/q;

    .line 16
    :try_start_2
    invoke-interface {v0}, Li/c/b0/d/q;->get()Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_6

    goto :goto_0

    .line 17
    :cond_6
    iget-object v1, p0, Li/c/b0/e/f/b/b$b;->f:Li/c/b0/e/f/b/b$e;

    invoke-virtual {v1}, Li/c/b0/e/j/e;->e()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 18
    iget-object v1, p0, Li/c/b0/e/f/b/b$d;->r:Lo/a/b;

    iget-object v2, p0, Li/c/b0/e/f/b/b$b;->o:Li/c/b0/e/k/c;

    invoke-static {v1, v0, p0, v2}, Li/c/b0/e/k/k;->f(Lo/a/b;Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicInteger;Li/c/b0/e/k/c;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 19
    :cond_7
    iput-boolean v3, p0, Li/c/b0/e/f/b/b$b;->p:Z

    .line 20
    iget-object v1, p0, Li/c/b0/e/f/b/b$b;->f:Li/c/b0/e/f/b/b$e;

    new-instance v2, Li/c/b0/e/f/b/b$g;

    invoke-direct {v2, v0, v1}, Li/c/b0/e/f/b/b$g;-><init>(Ljava/lang/Object;Lo/a/b;)V

    invoke-virtual {v1, v2}, Li/c/b0/e/j/e;->g(Lo/a/c;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 21
    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 22
    iget-object v1, p0, Li/c/b0/e/f/b/b$b;->j:Lo/a/c;

    invoke-interface {v1}, Lo/a/c;->cancel()V

    .line 23
    iget-object v1, p0, Li/c/b0/e/f/b/b$b;->o:Li/c/b0/e/k/c;

    invoke-virtual {v1, v0}, Li/c/b0/e/k/c;->c(Ljava/lang/Throwable;)Z

    .line 24
    iget-object v0, p0, Li/c/b0/e/f/b/b$b;->o:Li/c/b0/e/k/c;

    iget-object v1, p0, Li/c/b0/e/f/b/b$d;->r:Lo/a/b;

    invoke-virtual {v0, v1}, Li/c/b0/e/k/c;->g(Lo/a/b;)V

    return-void

    .line 25
    :cond_8
    iput-boolean v3, p0, Li/c/b0/e/f/b/b$b;->p:Z

    .line 26
    iget-object v1, p0, Li/c/b0/e/f/b/b$b;->f:Li/c/b0/e/f/b/b$e;

    invoke-interface {v0, v1}, Lo/a/a;->a(Lo/a/b;)V

    goto :goto_3

    :catchall_1
    move-exception v0

    .line 27
    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 28
    iget-object v1, p0, Li/c/b0/e/f/b/b$b;->j:Lo/a/c;

    invoke-interface {v1}, Lo/a/c;->cancel()V

    .line 29
    iget-object v1, p0, Li/c/b0/e/f/b/b$b;->o:Li/c/b0/e/k/c;

    invoke-virtual {v1, v0}, Li/c/b0/e/k/c;->c(Ljava/lang/Throwable;)Z

    .line 30
    iget-object v0, p0, Li/c/b0/e/f/b/b$b;->o:Li/c/b0/e/k/c;

    iget-object v1, p0, Li/c/b0/e/f/b/b$d;->r:Lo/a/b;

    invoke-virtual {v0, v1}, Li/c/b0/e/k/c;->g(Lo/a/b;)V

    return-void

    :catchall_2
    move-exception v0

    .line 31
    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 32
    iget-object v1, p0, Li/c/b0/e/f/b/b$b;->j:Lo/a/c;

    invoke-interface {v1}, Lo/a/c;->cancel()V

    .line 33
    iget-object v1, p0, Li/c/b0/e/f/b/b$b;->o:Li/c/b0/e/k/c;

    invoke-virtual {v1, v0}, Li/c/b0/e/k/c;->c(Ljava/lang/Throwable;)Z

    .line 34
    iget-object v0, p0, Li/c/b0/e/f/b/b$b;->o:Li/c/b0/e/k/c;

    iget-object v1, p0, Li/c/b0/e/f/b/b$d;->r:Lo/a/b;

    invoke-virtual {v0, v1}, Li/c/b0/e/k/c;->g(Lo/a/b;)V

    return-void

    .line 35
    :cond_9
    :goto_3
    iget-object v0, p0, Li/c/b0/e/f/b/b$d;->s:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    :cond_a
    return-void
.end method

.method f()V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/b/b$d;->r:Lo/a/b;

    invoke-interface {v0, p0}, Lo/a/b;->onSubscribe(Lo/a/c;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/b/b$b;->f:Li/c/b0/e/f/b/b$e;

    invoke-virtual {v0}, Li/c/b0/e/j/e;->cancel()V

    .line 2
    iget-object v0, p0, Li/c/b0/e/f/b/b$d;->r:Lo/a/b;

    iget-object v1, p0, Li/c/b0/e/f/b/b$b;->o:Li/c/b0/e/k/c;

    invoke-static {v0, p1, p0, v1}, Li/c/b0/e/k/k;->d(Lo/a/b;Ljava/lang/Throwable;Ljava/util/concurrent/atomic/AtomicInteger;Li/c/b0/e/k/c;)V

    return-void
.end method

.method public request(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/b/b$b;->f:Li/c/b0/e/f/b/b$e;

    invoke-virtual {v0, p1, p2}, Li/c/b0/e/j/e;->request(J)V

    return-void
.end method
