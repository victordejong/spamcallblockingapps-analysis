.class final Li/c/z/e/b/j$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Li/c/i;
.implements Lo/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/z/e/b/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/z/e/b/j$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Li/c/i<",
        "TT;>;",
        "Lo/a/c;"
    }
.end annotation


# instance fields
.field final f:Lo/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/a/b<",
            "-TR;>;"
        }
    .end annotation
.end field

.field final g:Z

.field final h:I

.field final i:Ljava/util/concurrent/atomic/AtomicLong;

.field final j:Li/c/w/a;

.field final k:Ljava/util/concurrent/atomic/AtomicInteger;

.field final l:Li/c/z/j/c;

.field final m:Li/c/y/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/y/d<",
            "-TT;+",
            "Li/c/n<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field final n:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Li/c/z/f/b<",
            "TR;>;>;"
        }
    .end annotation
.end field

.field o:Lo/a/c;

.field volatile p:Z


# direct methods
.method constructor <init>(Lo/a/b;Li/c/y/d;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/a/b<",
            "-TR;>;",
            "Li/c/y/d<",
            "-TT;+",
            "Li/c/n<",
            "+TR;>;>;ZI)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/z/e/b/j$a;->f:Lo/a/b;

    .line 3
    iput-object p2, p0, Li/c/z/e/b/j$a;->m:Li/c/y/d;

    .line 4
    iput-boolean p3, p0, Li/c/z/e/b/j$a;->g:Z

    .line 5
    iput p4, p0, Li/c/z/e/b/j$a;->h:I

    .line 6
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Li/c/z/e/b/j$a;->i:Ljava/util/concurrent/atomic/AtomicLong;

    .line 7
    new-instance p1, Li/c/w/a;

    invoke-direct {p1}, Li/c/w/a;-><init>()V

    iput-object p1, p0, Li/c/z/e/b/j$a;->j:Li/c/w/a;

    .line 8
    new-instance p1, Li/c/z/j/c;

    invoke-direct {p1}, Li/c/z/j/c;-><init>()V

    iput-object p1, p0, Li/c/z/e/b/j$a;->l:Li/c/z/j/c;

    .line 9
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Li/c/z/e/b/j$a;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 10
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Li/c/z/e/b/j$a;->n:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/z/e/b/j$a;->n:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/c/z/f/b;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Li/c/z/f/b;->clear()V

    :cond_0
    return-void
.end method

.method b()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Li/c/z/e/b/j$a;->c()V

    :cond_0
    return-void
.end method

.method c()V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Li/c/z/e/b/j$a;->f:Lo/a/b;

    .line 2
    iget-object v2, v0, Li/c/z/e/b/j$a;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    iget-object v3, v0, Li/c/z/e/b/j$a;->n:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 4
    :cond_0
    iget-object v6, v0, Li/c/z/e/b/j$a;->i:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    move-wide v10, v8

    :goto_0
    const/4 v12, 0x0

    cmp-long v13, v10, v6

    if-eqz v13, :cond_9

    .line 5
    iget-boolean v14, v0, Li/c/z/e/b/j$a;->p:Z

    if-eqz v14, :cond_1

    .line 6
    invoke-virtual/range {p0 .. p0}, Li/c/z/e/b/j$a;->a()V

    return-void

    .line 7
    :cond_1
    iget-boolean v14, v0, Li/c/z/e/b/j$a;->g:Z

    if-nez v14, :cond_2

    .line 8
    iget-object v14, v0, Li/c/z/e/b/j$a;->l:Li/c/z/j/c;

    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Throwable;

    if-eqz v14, :cond_2

    .line 9
    iget-object v2, v0, Li/c/z/e/b/j$a;->l:Li/c/z/j/c;

    invoke-virtual {v2}, Li/c/z/j/c;->b()Ljava/lang/Throwable;

    move-result-object v2

    .line 10
    invoke-virtual/range {p0 .. p0}, Li/c/z/e/b/j$a;->a()V

    .line 11
    invoke-interface {v1, v2}, Lo/a/b;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 12
    :cond_2
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v14

    if-nez v14, :cond_3

    const/4 v14, 0x1

    goto :goto_1

    :cond_3
    const/4 v14, 0x0

    .line 13
    :goto_1
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Li/c/z/f/b;

    if-eqz v15, :cond_4

    .line 14
    invoke-virtual {v15}, Li/c/z/f/b;->poll()Ljava/lang/Object;

    move-result-object v15

    goto :goto_2

    :cond_4
    const/4 v15, 0x0

    :goto_2
    if-nez v15, :cond_5

    const/16 v16, 0x1

    goto :goto_3

    :cond_5
    const/16 v16, 0x0

    :goto_3
    if-eqz v14, :cond_7

    if-eqz v16, :cond_7

    .line 15
    iget-object v2, v0, Li/c/z/e/b/j$a;->l:Li/c/z/j/c;

    invoke-virtual {v2}, Li/c/z/j/c;->b()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 16
    invoke-interface {v1, v2}, Lo/a/b;->onError(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 17
    :cond_6
    invoke-interface {v1}, Lo/a/b;->onComplete()V

    :goto_4
    return-void

    :cond_7
    if-eqz v16, :cond_8

    goto :goto_5

    .line 18
    :cond_8
    invoke-interface {v1, v15}, Lo/a/b;->onNext(Ljava/lang/Object;)V

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    goto :goto_0

    :cond_9
    :goto_5
    if-nez v13, :cond_10

    .line 19
    iget-boolean v6, v0, Li/c/z/e/b/j$a;->p:Z

    if-eqz v6, :cond_a

    .line 20
    invoke-virtual/range {p0 .. p0}, Li/c/z/e/b/j$a;->a()V

    return-void

    .line 21
    :cond_a
    iget-boolean v6, v0, Li/c/z/e/b/j$a;->g:Z

    if-nez v6, :cond_b

    .line 22
    iget-object v6, v0, Li/c/z/e/b/j$a;->l:Li/c/z/j/c;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Throwable;

    if-eqz v6, :cond_b

    .line 23
    iget-object v2, v0, Li/c/z/e/b/j$a;->l:Li/c/z/j/c;

    invoke-virtual {v2}, Li/c/z/j/c;->b()Ljava/lang/Throwable;

    move-result-object v2

    .line 24
    invoke-virtual/range {p0 .. p0}, Li/c/z/e/b/j$a;->a()V

    .line 25
    invoke-interface {v1, v2}, Lo/a/b;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 26
    :cond_b
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    if-nez v6, :cond_c

    const/4 v6, 0x1

    goto :goto_6

    :cond_c
    const/4 v6, 0x0

    .line 27
    :goto_6
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Li/c/z/f/b;

    if-eqz v7, :cond_d

    .line 28
    invoke-virtual {v7}, Li/c/z/f/b;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_e

    :cond_d
    const/4 v12, 0x1

    :cond_e
    if-eqz v6, :cond_10

    if-eqz v12, :cond_10

    .line 29
    iget-object v2, v0, Li/c/z/e/b/j$a;->l:Li/c/z/j/c;

    invoke-virtual {v2}, Li/c/z/j/c;->b()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 30
    invoke-interface {v1, v2}, Lo/a/b;->onError(Ljava/lang/Throwable;)V

    goto :goto_7

    .line 31
    :cond_f
    invoke-interface {v1}, Lo/a/b;->onComplete()V

    :goto_7
    return-void

    :cond_10
    cmp-long v6, v10, v8

    if-eqz v6, :cond_11

    .line 32
    iget-object v6, v0, Li/c/z/e/b/j$a;->i:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v6, v10, v11}, Li/c/z/j/d;->d(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 33
    iget v6, v0, Li/c/z/e/b/j$a;->h:I

    const v7, 0x7fffffff

    if-eq v6, v7, :cond_11

    .line 34
    iget-object v6, v0, Li/c/z/e/b/j$a;->o:Lo/a/c;

    invoke-interface {v6, v10, v11}, Lo/a/c;->request(J)V

    :cond_11
    neg-int v5, v5

    .line 35
    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v5

    if-nez v5, :cond_0

    return-void
.end method

.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Li/c/z/e/b/j$a;->p:Z

    .line 2
    iget-object v0, p0, Li/c/z/e/b/j$a;->o:Lo/a/c;

    invoke-interface {v0}, Lo/a/c;->cancel()V

    .line 3
    iget-object v0, p0, Li/c/z/e/b/j$a;->j:Li/c/w/a;

    invoke-virtual {v0}, Li/c/w/a;->dispose()V

    return-void
.end method

.method e()Li/c/z/f/b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/z/f/b<",
            "TR;>;"
        }
    .end annotation

    .line 1
    :cond_0
    iget-object v0, p0, Li/c/z/e/b/j$a;->n:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/c/z/f/b;

    if-eqz v0, :cond_1

    return-object v0

    .line 2
    :cond_1
    new-instance v0, Li/c/z/f/b;

    invoke-static {}, Li/c/f;->b()I

    move-result v1

    invoke-direct {v0, v1}, Li/c/z/f/b;-><init>(I)V

    .line 3
    iget-object v1, p0, Li/c/z/e/b/j$a;->n:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0
.end method

.method f(Li/c/z/e/b/j$a$a;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/z/e/b/j$a<",
            "TT;TR;>.a;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/z/e/b/j$a;->j:Li/c/w/a;

    invoke-virtual {v0, p1}, Li/c/w/a;->c(Li/c/w/b;)Z

    .line 2
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    const-wide/16 v0, 0x1

    const v2, 0x7fffffff

    if-nez p1, :cond_6

    const/4 p1, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, p1, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3
    iget-object v4, p0, Li/c/z/e/b/j$a;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v4

    if-nez v4, :cond_0

    const/4 p1, 0x1

    .line 4
    :cond_0
    iget-object v3, p0, Li/c/z/e/b/j$a;->n:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Li/c/z/f/b;

    if-eqz p1, :cond_3

    if-eqz v3, :cond_1

    .line 5
    invoke-virtual {v3}, Li/c/z/f/b;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 6
    :cond_1
    iget-object p1, p0, Li/c/z/e/b/j$a;->l:Li/c/z/j/c;

    invoke-virtual {p1}, Li/c/z/j/c;->b()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 7
    iget-object v0, p0, Li/c/z/e/b/j$a;->f:Lo/a/b;

    invoke-interface {v0, p1}, Lo/a/b;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 8
    :cond_2
    iget-object p1, p0, Li/c/z/e/b/j$a;->f:Lo/a/b;

    invoke-interface {p1}, Lo/a/b;->onComplete()V

    :goto_0
    return-void

    .line 9
    :cond_3
    iget p1, p0, Li/c/z/e/b/j$a;->h:I

    if-eq p1, v2, :cond_4

    .line 10
    iget-object p1, p0, Li/c/z/e/b/j$a;->o:Lo/a/c;

    invoke-interface {p1, v0, v1}, Lo/a/c;->request(J)V

    .line 11
    :cond_4
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_5

    return-void

    .line 12
    :cond_5
    invoke-virtual {p0}, Li/c/z/e/b/j$a;->c()V

    goto :goto_1

    .line 13
    :cond_6
    iget-object p1, p0, Li/c/z/e/b/j$a;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 14
    iget p1, p0, Li/c/z/e/b/j$a;->h:I

    if-eq p1, v2, :cond_7

    .line 15
    iget-object p1, p0, Li/c/z/e/b/j$a;->o:Lo/a/c;

    invoke-interface {p1, v0, v1}, Lo/a/c;->request(J)V

    .line 16
    :cond_7
    invoke-virtual {p0}, Li/c/z/e/b/j$a;->b()V

    :goto_1
    return-void
.end method

.method g(Li/c/z/e/b/j$a$a;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/z/e/b/j$a<",
            "TT;TR;>.a;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/z/e/b/j$a;->j:Li/c/w/a;

    invoke-virtual {v0, p1}, Li/c/w/a;->c(Li/c/w/b;)Z

    .line 2
    iget-object p1, p0, Li/c/z/e/b/j$a;->l:Li/c/z/j/c;

    invoke-virtual {p1, p2}, Li/c/z/j/c;->a(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3
    iget-boolean p1, p0, Li/c/z/e/b/j$a;->g:Z

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Li/c/z/e/b/j$a;->o:Lo/a/c;

    invoke-interface {p1}, Lo/a/c;->cancel()V

    .line 5
    iget-object p1, p0, Li/c/z/e/b/j$a;->j:Li/c/w/a;

    invoke-virtual {p1}, Li/c/w/a;->dispose()V

    goto :goto_0

    .line 6
    :cond_0
    iget p1, p0, Li/c/z/e/b/j$a;->h:I

    const p2, 0x7fffffff

    if-eq p1, p2, :cond_1

    .line 7
    iget-object p1, p0, Li/c/z/e/b/j$a;->o:Lo/a/c;

    const-wide/16 v0, 0x1

    invoke-interface {p1, v0, v1}, Lo/a/c;->request(J)V

    .line 8
    :cond_1
    :goto_0
    iget-object p1, p0, Li/c/z/e/b/j$a;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 9
    invoke-virtual {p0}, Li/c/z/e/b/j$a;->b()V

    goto :goto_1

    .line 10
    :cond_2
    invoke-static {p2}, Li/c/a0/a;->q(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method h(Li/c/z/e/b/j$a$a;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/z/e/b/j$a<",
            "TT;TR;>.a;TR;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/z/e/b/j$a;->j:Li/c/w/a;

    invoke-virtual {v0, p1}, Li/c/w/a;->c(Li/c/w/b;)Z

    .line 2
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-nez p1, :cond_6

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3
    iget-object v1, p0, Li/c/z/e/b/j$a;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x1

    .line 4
    :cond_0
    iget-object v0, p0, Li/c/z/e/b/j$a;->i:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_4

    .line 5
    iget-object v0, p0, Li/c/z/e/b/j$a;->f:Lo/a/b;

    invoke-interface {v0, p2}, Lo/a/b;->onNext(Ljava/lang/Object;)V

    .line 6
    iget-object p2, p0, Li/c/z/e/b/j$a;->n:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Li/c/z/f/b;

    if-eqz p1, :cond_3

    if-eqz p2, :cond_1

    .line 7
    invoke-virtual {p2}, Li/c/z/f/b;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 8
    :cond_1
    iget-object p1, p0, Li/c/z/e/b/j$a;->l:Li/c/z/j/c;

    invoke-virtual {p1}, Li/c/z/j/c;->b()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 9
    iget-object p2, p0, Li/c/z/e/b/j$a;->f:Lo/a/b;

    invoke-interface {p2, p1}, Lo/a/b;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 10
    :cond_2
    iget-object p1, p0, Li/c/z/e/b/j$a;->f:Lo/a/b;

    invoke-interface {p1}, Lo/a/b;->onComplete()V

    :goto_0
    return-void

    .line 11
    :cond_3
    iget-object p1, p0, Li/c/z/e/b/j$a;->i:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v0, 0x1

    invoke-static {p1, v0, v1}, Li/c/z/j/d;->d(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 12
    iget p1, p0, Li/c/z/e/b/j$a;->h:I

    const p2, 0x7fffffff

    if-eq p1, p2, :cond_5

    .line 13
    iget-object p1, p0, Li/c/z/e/b/j$a;->o:Lo/a/c;

    invoke-interface {p1, v0, v1}, Lo/a/c;->request(J)V

    goto :goto_1

    .line 14
    :cond_4
    invoke-virtual {p0}, Li/c/z/e/b/j$a;->e()Li/c/z/f/b;

    move-result-object p1

    .line 15
    monitor-enter p1

    .line 16
    :try_start_0
    invoke-virtual {p1, p2}, Li/c/z/f/b;->offer(Ljava/lang/Object;)Z

    .line 17
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    :cond_5
    :goto_1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_7

    return-void

    :catchall_0
    move-exception p2

    .line 19
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2

    .line 20
    :cond_6
    invoke-virtual {p0}, Li/c/z/e/b/j$a;->e()Li/c/z/f/b;

    move-result-object p1

    .line 21
    monitor-enter p1

    .line 22
    :try_start_2
    invoke-virtual {p1, p2}, Li/c/z/f/b;->offer(Ljava/lang/Object;)Z

    .line 23
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 24
    iget-object p1, p0, Li/c/z/e/b/j$a;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 25
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    if-eqz p1, :cond_7

    return-void

    .line 26
    :cond_7
    invoke-virtual {p0}, Li/c/z/e/b/j$a;->c()V

    return-void

    :catchall_1
    move-exception p2

    .line 27
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p2
.end method

.method public onComplete()V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/z/e/b/j$a;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 2
    invoke-virtual {p0}, Li/c/z/e/b/j$a;->b()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/z/e/b/j$a;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 2
    iget-object v0, p0, Li/c/z/e/b/j$a;->l:Li/c/z/j/c;

    invoke-virtual {v0, p1}, Li/c/z/j/c;->a(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-boolean p1, p0, Li/c/z/e/b/j$a;->g:Z

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Li/c/z/e/b/j$a;->j:Li/c/w/a;

    invoke-virtual {p1}, Li/c/w/a;->dispose()V

    .line 5
    :cond_0
    invoke-virtual {p0}, Li/c/z/e/b/j$a;->b()V

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {p1}, Li/c/a0/a;->q(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Li/c/z/e/b/j$a;->m:Li/c/y/d;

    invoke-interface {v0, p1}, Li/c/y/d;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The mapper returned a null MaybeSource"

    invoke-static {p1, v0}, Li/c/z/b/b;->d(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Li/c/n;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iget-object v0, p0, Li/c/z/e/b/j$a;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 3
    new-instance v0, Li/c/z/e/b/j$a$a;

    invoke-direct {v0, p0}, Li/c/z/e/b/j$a$a;-><init>(Li/c/z/e/b/j$a;)V

    .line 4
    iget-boolean v1, p0, Li/c/z/e/b/j$a;->p:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Li/c/z/e/b/j$a;->j:Li/c/w/a;

    invoke-virtual {v1, v0}, Li/c/w/a;->b(Li/c/w/b;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {p1, v0}, Li/c/n;->a(Li/c/l;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 6
    invoke-static {p1}, Lio/reactivex/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 7
    iget-object v0, p0, Li/c/z/e/b/j$a;->o:Lo/a/c;

    invoke-interface {v0}, Lo/a/c;->cancel()V

    .line 8
    invoke-virtual {p0, p1}, Li/c/z/e/b/j$a;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lo/a/c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Li/c/z/e/b/j$a;->o:Lo/a/c;

    invoke-static {v0, p1}, Li/c/z/i/g;->validate(Lo/a/c;Lo/a/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iput-object p1, p0, Li/c/z/e/b/j$a;->o:Lo/a/c;

    .line 3
    iget-object v0, p0, Li/c/z/e/b/j$a;->f:Lo/a/b;

    invoke-interface {v0, p0}, Lo/a/b;->onSubscribe(Lo/a/c;)V

    .line 4
    iget v0, p0, Li/c/z/e/b/j$a;->h:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    .line 5
    invoke-interface {p1, v0, v1}, Lo/a/c;->request(J)V

    goto :goto_0

    :cond_0
    int-to-long v0, v0

    .line 6
    invoke-interface {p1, v0, v1}, Lo/a/c;->request(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method public request(J)V
    .locals 1

    .line 1
    invoke-static {p1, p2}, Li/c/z/i/g;->validate(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Li/c/z/e/b/j$a;->i:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Li/c/z/j/d;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 3
    invoke-virtual {p0}, Li/c/z/e/b/j$a;->b()V

    :cond_0
    return-void
.end method
