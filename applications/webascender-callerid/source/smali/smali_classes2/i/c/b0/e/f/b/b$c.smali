.class final Li/c/b0/e/f/b/b$c;
.super Li/c/b0/e/f/b/b$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/e/f/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
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

.field final s:Z


# direct methods
.method constructor <init>(Lo/a/b;Li/c/b0/d/o;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/a/b<",
            "-TR;>;",
            "Li/c/b0/d/o<",
            "-TT;+",
            "Lo/a/a<",
            "+TR;>;>;IZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2, p3}, Li/c/b0/e/f/b/b$b;-><init>(Li/c/b0/d/o;I)V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/b/b$c;->r:Lo/a/b;

    .line 3
    iput-boolean p4, p0, Li/c/b0/e/f/b/b$c;->s:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/b/b$b;->o:Li/c/b0/e/k/c;

    invoke-virtual {v0, p1}, Li/c/b0/e/k/c;->c(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget-boolean p1, p0, Li/c/b0/e/f/b/b$c;->s:Z

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Li/c/b0/e/f/b/b$b;->j:Lo/a/c;

    invoke-interface {p1}, Lo/a/c;->cancel()V

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Li/c/b0/e/f/b/b$b;->m:Z

    :cond_0
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Li/c/b0/e/f/b/b$b;->p:Z

    .line 6
    invoke-virtual {p0}, Li/c/b0/e/f/b/b$c;->e()V

    :cond_1
    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/b/b$c;->r:Lo/a/b;

    invoke-interface {v0, p1}, Lo/a/b;->onNext(Ljava/lang/Object;)V

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
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_c

    .line 2
    :cond_0
    :goto_0
    iget-boolean v0, p0, Li/c/b0/e/f/b/b$b;->n:Z

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-boolean v0, p0, Li/c/b0/e/f/b/b$b;->p:Z

    if-nez v0, :cond_b

    .line 4
    iget-boolean v0, p0, Li/c/b0/e/f/b/b$b;->m:Z

    if-eqz v0, :cond_2

    .line 5
    iget-boolean v1, p0, Li/c/b0/e/f/b/b$c;->s:Z

    if-nez v1, :cond_2

    .line 6
    iget-object v1, p0, Li/c/b0/e/f/b/b$b;->o:Li/c/b0/e/k/c;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    if-eqz v1, :cond_2

    .line 7
    iget-object v0, p0, Li/c/b0/e/f/b/b$b;->o:Li/c/b0/e/k/c;

    iget-object v1, p0, Li/c/b0/e/f/b/b$c;->r:Lo/a/b;

    invoke-virtual {v0, v1}, Li/c/b0/e/k/c;->g(Lo/a/b;)V

    return-void

    .line 8
    :cond_2
    :try_start_0
    iget-object v1, p0, Li/c/b0/e/f/b/b$b;->l:Li/c/b0/e/c/k;

    invoke-interface {v1}, Li/c/b0/e/c/k;->poll()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    if-eqz v0, :cond_4

    if-eqz v4, :cond_4

    .line 9
    iget-object v0, p0, Li/c/b0/e/f/b/b$b;->o:Li/c/b0/e/k/c;

    iget-object v1, p0, Li/c/b0/e/f/b/b$c;->r:Lo/a/b;

    invoke-virtual {v0, v1}, Li/c/b0/e/k/c;->g(Lo/a/b;)V

    return-void

    :cond_4
    if-nez v4, :cond_b

    .line 10
    :try_start_1
    iget-object v0, p0, Li/c/b0/e/f/b/b$b;->g:Li/c/b0/d/o;

    invoke-interface {v0, v1}, Li/c/b0/d/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The mapper returned a null Publisher"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lo/a/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 11
    iget v1, p0, Li/c/b0/e/f/b/b$b;->q:I

    if-eq v1, v3, :cond_6

    .line 12
    iget v1, p0, Li/c/b0/e/f/b/b$b;->k:I

    add-int/2addr v1, v3

    .line 13
    iget v4, p0, Li/c/b0/e/f/b/b$b;->i:I

    if-ne v1, v4, :cond_5

    .line 14
    iput v2, p0, Li/c/b0/e/f/b/b$b;->k:I

    .line 15
    iget-object v2, p0, Li/c/b0/e/f/b/b$b;->j:Lo/a/c;

    int-to-long v4, v1

    invoke-interface {v2, v4, v5}, Lo/a/c;->request(J)V

    goto :goto_2

    .line 16
    :cond_5
    iput v1, p0, Li/c/b0/e/f/b/b$b;->k:I

    .line 17
    :cond_6
    :goto_2
    instance-of v1, v0, Li/c/b0/d/q;

    if-eqz v1, :cond_a

    .line 18
    check-cast v0, Li/c/b0/d/q;

    .line 19
    :try_start_2
    invoke-interface {v0}, Li/c/b0/d/q;->get()Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 20
    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 21
    iget-object v1, p0, Li/c/b0/e/f/b/b$b;->o:Li/c/b0/e/k/c;

    invoke-virtual {v1, v0}, Li/c/b0/e/k/c;->c(Ljava/lang/Throwable;)Z

    .line 22
    iget-boolean v0, p0, Li/c/b0/e/f/b/b$c;->s:Z

    if-nez v0, :cond_7

    .line 23
    iget-object v0, p0, Li/c/b0/e/f/b/b$b;->j:Lo/a/c;

    invoke-interface {v0}, Lo/a/c;->cancel()V

    .line 24
    iget-object v0, p0, Li/c/b0/e/f/b/b$b;->o:Li/c/b0/e/k/c;

    iget-object v1, p0, Li/c/b0/e/f/b/b$c;->r:Lo/a/b;

    invoke-virtual {v0, v1}, Li/c/b0/e/k/c;->g(Lo/a/b;)V

    return-void

    :cond_7
    const/4 v0, 0x0

    :goto_3
    if-nez v0, :cond_8

    goto/16 :goto_0

    .line 25
    :cond_8
    iget-object v1, p0, Li/c/b0/e/f/b/b$b;->f:Li/c/b0/e/f/b/b$e;

    invoke-virtual {v1}, Li/c/b0/e/j/e;->e()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 26
    iget-object v1, p0, Li/c/b0/e/f/b/b$c;->r:Lo/a/b;

    invoke-interface {v1, v0}, Lo/a/b;->onNext(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 27
    :cond_9
    iput-boolean v3, p0, Li/c/b0/e/f/b/b$b;->p:Z

    .line 28
    iget-object v1, p0, Li/c/b0/e/f/b/b$b;->f:Li/c/b0/e/f/b/b$e;

    new-instance v2, Li/c/b0/e/f/b/b$g;

    invoke-direct {v2, v0, v1}, Li/c/b0/e/f/b/b$g;-><init>(Ljava/lang/Object;Lo/a/b;)V

    invoke-virtual {v1, v2}, Li/c/b0/e/j/e;->g(Lo/a/c;)V

    goto :goto_4

    .line 29
    :cond_a
    iput-boolean v3, p0, Li/c/b0/e/f/b/b$b;->p:Z

    .line 30
    iget-object v1, p0, Li/c/b0/e/f/b/b$b;->f:Li/c/b0/e/f/b/b$e;

    invoke-interface {v0, v1}, Lo/a/a;->a(Lo/a/b;)V

    goto :goto_4

    :catchall_1
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

    iget-object v1, p0, Li/c/b0/e/f/b/b$c;->r:Lo/a/b;

    invoke-virtual {v0, v1}, Li/c/b0/e/k/c;->g(Lo/a/b;)V

    return-void

    :catchall_2
    move-exception v0

    .line 35
    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 36
    iget-object v1, p0, Li/c/b0/e/f/b/b$b;->j:Lo/a/c;

    invoke-interface {v1}, Lo/a/c;->cancel()V

    .line 37
    iget-object v1, p0, Li/c/b0/e/f/b/b$b;->o:Li/c/b0/e/k/c;

    invoke-virtual {v1, v0}, Li/c/b0/e/k/c;->c(Ljava/lang/Throwable;)Z

    .line 38
    iget-object v0, p0, Li/c/b0/e/f/b/b$b;->o:Li/c/b0/e/k/c;

    iget-object v1, p0, Li/c/b0/e/f/b/b$c;->r:Lo/a/b;

    invoke-virtual {v0, v1}, Li/c/b0/e/k/c;->g(Lo/a/b;)V

    return-void

    .line 39
    :cond_b
    :goto_4
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    :cond_c
    return-void
.end method

.method f()V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/b/b$c;->r:Lo/a/b;

    invoke-interface {v0, p0}, Lo/a/b;->onSubscribe(Lo/a/c;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/b/b$b;->o:Li/c/b0/e/k/c;

    invoke-virtual {v0, p1}, Li/c/b0/e/k/c;->c(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Li/c/b0/e/f/b/b$b;->m:Z

    .line 3
    invoke-virtual {p0}, Li/c/b0/e/f/b/b$c;->e()V

    :cond_0
    return-void
.end method

.method public request(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/b/b$b;->f:Li/c/b0/e/f/b/b$e;

    invoke-virtual {v0, p1, p2}, Li/c/b0/e/j/e;->request(J)V

    return-void
.end method
