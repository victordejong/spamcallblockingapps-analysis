.class final Li/c/b0/e/f/e/m4$b;
.super Li/c/b0/e/f/e/m4$a;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/e/f/e/m4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/e/m4$b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/b0/e/f/e/m4$a<",
        "TT;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final r:Li/c/b0/b/d0;

.field final s:Z

.field final t:J

.field final u:Li/c/b0/b/d0$c;

.field v:J

.field w:Li/c/b0/k/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/k/e<",
            "TT;>;"
        }
    .end annotation
.end field

.field final x:Li/c/b0/e/a/f;


# direct methods
.method constructor <init>(Li/c/b0/b/c0;JLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;IJZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/c0<",
            "-",
            "Li/c/b0/b/v<",
            "TT;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Li/c/b0/b/d0;",
            "IJZ)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move v5, p6

    .line 1
    invoke-direct/range {v0 .. v5}, Li/c/b0/e/f/e/m4$a;-><init>(Li/c/b0/b/c0;JLjava/util/concurrent/TimeUnit;I)V

    .line 2
    iput-object p5, p0, Li/c/b0/e/f/e/m4$b;->r:Li/c/b0/b/d0;

    .line 3
    iput-wide p7, p0, Li/c/b0/e/f/e/m4$b;->t:J

    .line 4
    iput-boolean p9, p0, Li/c/b0/e/f/e/m4$b;->s:Z

    if-eqz p9, :cond_0

    .line 5
    invoke-virtual {p5}, Li/c/b0/b/d0;->b()Li/c/b0/b/d0$c;

    move-result-object p1

    iput-object p1, p0, Li/c/b0/e/f/e/m4$b;->u:Li/c/b0/b/d0$c;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Li/c/b0/e/f/e/m4$b;->u:Li/c/b0/b/d0$c;

    .line 7
    :goto_0
    new-instance p1, Li/c/b0/e/a/f;

    invoke-direct {p1}, Li/c/b0/e/a/f;-><init>()V

    iput-object p1, p0, Li/c/b0/e/f/e/m4$b;->x:Li/c/b0/e/a/f;

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/m4$b;->x:Li/c/b0/e/a/f;

    invoke-virtual {v0}, Li/c/b0/e/a/f;->dispose()V

    .line 2
    iget-object v0, p0, Li/c/b0/e/f/e/m4$b;->u:Li/c/b0/b/d0$c;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Li/c/b0/c/c;->dispose()V

    :cond_0
    return-void
.end method

.method b()V
    .locals 11

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/m4$a;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    const-wide/16 v0, 0x1

    .line 2
    iput-wide v0, p0, Li/c/b0/e/f/e/m4$a;->k:J

    .line 3
    iget-object v2, p0, Li/c/b0/e/f/e/m4$a;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 4
    iget v2, p0, Li/c/b0/e/f/e/m4$a;->j:I

    invoke-static {v2, p0}, Li/c/b0/k/e;->c(ILjava/lang/Runnable;)Li/c/b0/k/e;

    move-result-object v2

    iput-object v2, p0, Li/c/b0/e/f/e/m4$b;->w:Li/c/b0/k/e;

    .line 5
    new-instance v3, Li/c/b0/e/f/e/l4;

    invoke-direct {v3, v2}, Li/c/b0/e/f/e/l4;-><init>(Li/c/b0/k/d;)V

    .line 6
    iget-object v2, p0, Li/c/b0/e/f/e/m4$a;->f:Li/c/b0/b/c0;

    invoke-interface {v2, v3}, Li/c/b0/b/c0;->onNext(Ljava/lang/Object;)V

    .line 7
    new-instance v5, Li/c/b0/e/f/e/m4$b$a;

    invoke-direct {v5, p0, v0, v1}, Li/c/b0/e/f/e/m4$b$a;-><init>(Li/c/b0/e/f/e/m4$b;J)V

    .line 8
    iget-boolean v0, p0, Li/c/b0/e/f/e/m4$b;->s:Z

    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Li/c/b0/e/f/e/m4$b;->x:Li/c/b0/e/a/f;

    iget-object v4, p0, Li/c/b0/e/f/e/m4$b;->u:Li/c/b0/b/d0$c;

    iget-wide v8, p0, Li/c/b0/e/f/e/m4$a;->h:J

    iget-object v10, p0, Li/c/b0/e/f/e/m4$a;->i:Ljava/util/concurrent/TimeUnit;

    move-wide v6, v8

    invoke-virtual/range {v4 .. v10}, Li/c/b0/b/d0$c;->d(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Li/c/b0/c/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/c/b0/e/a/f;->a(Li/c/b0/c/c;)Z

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Li/c/b0/e/f/e/m4$b;->x:Li/c/b0/e/a/f;

    iget-object v4, p0, Li/c/b0/e/f/e/m4$b;->r:Li/c/b0/b/d0;

    iget-wide v8, p0, Li/c/b0/e/f/e/m4$a;->h:J

    iget-object v10, p0, Li/c/b0/e/f/e/m4$a;->i:Ljava/util/concurrent/TimeUnit;

    move-wide v6, v8

    invoke-virtual/range {v4 .. v10}, Li/c/b0/b/d0;->f(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Li/c/b0/c/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/c/b0/e/a/f;->a(Li/c/b0/c/c;)Z

    .line 11
    :goto_0
    invoke-virtual {v3}, Li/c/b0/e/f/e/l4;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    iget-object v0, p0, Li/c/b0/e/f/e/m4$b;->w:Li/c/b0/k/e;

    invoke-virtual {v0}, Li/c/b0/k/e;->onComplete()V

    :cond_1
    return-void
.end method

.method c()V
    .locals 12

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Li/c/b0/e/f/e/m4$a;->g:Li/c/b0/e/c/j;

    .line 3
    iget-object v1, p0, Li/c/b0/e/f/e/m4$a;->f:Li/c/b0/b/c0;

    .line 4
    iget-object v2, p0, Li/c/b0/e/f/e/m4$b;->w:Li/c/b0/k/e;

    const/4 v3, 0x1

    const/4 v4, 0x1

    .line 5
    :cond_1
    :goto_0
    iget-boolean v5, p0, Li/c/b0/e/f/e/m4$a;->p:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    .line 6
    invoke-interface {v0}, Li/c/b0/e/c/k;->clear()V

    .line 7
    iput-object v6, p0, Li/c/b0/e/f/e/m4$b;->w:Li/c/b0/k/e;

    move-object v2, v6

    goto :goto_3

    .line 8
    :cond_2
    iget-boolean v5, p0, Li/c/b0/e/f/e/m4$a;->l:Z

    .line 9
    invoke-interface {v0}, Li/c/b0/e/c/j;->poll()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_3

    const/4 v7, 0x1

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    :goto_1
    if-eqz v5, :cond_7

    if-eqz v7, :cond_7

    .line 10
    iget-object v5, p0, Li/c/b0/e/f/e/m4$a;->m:Ljava/lang/Throwable;

    if-eqz v5, :cond_5

    if-eqz v2, :cond_4

    .line 11
    invoke-virtual {v2, v5}, Li/c/b0/k/e;->onError(Ljava/lang/Throwable;)V

    .line 12
    :cond_4
    invoke-interface {v1, v5}, Li/c/b0/b/c0;->onError(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_5
    if-eqz v2, :cond_6

    .line 13
    invoke-virtual {v2}, Li/c/b0/k/e;->onComplete()V

    .line 14
    :cond_6
    invoke-interface {v1}, Li/c/b0/b/c0;->onComplete()V

    .line 15
    :goto_2
    invoke-virtual {p0}, Li/c/b0/e/f/e/m4$b;->a()V

    .line 16
    iput-boolean v3, p0, Li/c/b0/e/f/e/m4$a;->p:Z

    goto :goto_0

    :cond_7
    if-nez v7, :cond_b

    .line 17
    instance-of v5, v6, Li/c/b0/e/f/e/m4$b$a;

    const-wide/16 v7, 0x0

    if-eqz v5, :cond_9

    .line 18
    check-cast v6, Li/c/b0/e/f/e/m4$b$a;

    .line 19
    iget-wide v5, v6, Li/c/b0/e/f/e/m4$b$a;->g:J

    iget-wide v9, p0, Li/c/b0/e/f/e/m4$a;->k:J

    cmp-long v11, v5, v9

    if-eqz v11, :cond_8

    iget-boolean v5, p0, Li/c/b0/e/f/e/m4$b;->s:Z

    if-nez v5, :cond_1

    .line 20
    :cond_8
    iput-wide v7, p0, Li/c/b0/e/f/e/m4$b;->v:J

    .line 21
    invoke-virtual {p0, v2}, Li/c/b0/e/f/e/m4$b;->f(Li/c/b0/k/e;)Li/c/b0/k/e;

    move-result-object v2

    goto :goto_0

    :cond_9
    if-eqz v2, :cond_1

    .line 22
    invoke-virtual {v2, v6}, Li/c/b0/k/e;->onNext(Ljava/lang/Object;)V

    .line 23
    iget-wide v5, p0, Li/c/b0/e/f/e/m4$b;->v:J

    const-wide/16 v9, 0x1

    add-long/2addr v5, v9

    .line 24
    iget-wide v9, p0, Li/c/b0/e/f/e/m4$b;->t:J

    cmp-long v11, v5, v9

    if-nez v11, :cond_a

    .line 25
    iput-wide v7, p0, Li/c/b0/e/f/e/m4$b;->v:J

    .line 26
    invoke-virtual {p0, v2}, Li/c/b0/e/f/e/m4$b;->f(Li/c/b0/k/e;)Li/c/b0/k/e;

    move-result-object v2

    goto :goto_0

    .line 27
    :cond_a
    iput-wide v5, p0, Li/c/b0/e/f/e/m4$b;->v:J

    goto :goto_0

    :cond_b
    :goto_3
    neg-int v4, v4

    .line 28
    invoke-virtual {p0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v4

    if-nez v4, :cond_1

    return-void
.end method

.method e(Li/c/b0/e/f/e/m4$b$a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/m4$a;->g:Li/c/b0/e/c/j;

    invoke-interface {v0, p1}, Li/c/b0/e/c/k;->offer(Ljava/lang/Object;)Z

    .line 2
    invoke-virtual {p0}, Li/c/b0/e/f/e/m4$b;->c()V

    return-void
.end method

.method f(Li/c/b0/k/e;)Li/c/b0/k/e;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/k/e<",
            "TT;>;)",
            "Li/c/b0/k/e<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Li/c/b0/k/e;->onComplete()V

    const/4 p1, 0x0

    .line 2
    :cond_0
    iget-object v0, p0, Li/c/b0/e/f/e/m4$a;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Li/c/b0/e/f/e/m4$b;->a()V

    goto :goto_0

    .line 4
    :cond_1
    iget-wide v0, p0, Li/c/b0/e/f/e/m4$a;->k:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 5
    iput-wide v0, p0, Li/c/b0/e/f/e/m4$a;->k:J

    .line 6
    iget-object p1, p0, Li/c/b0/e/f/e/m4$a;->q:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 7
    iget p1, p0, Li/c/b0/e/f/e/m4$a;->j:I

    invoke-static {p1, p0}, Li/c/b0/k/e;->c(ILjava/lang/Runnable;)Li/c/b0/k/e;

    move-result-object p1

    .line 8
    iput-object p1, p0, Li/c/b0/e/f/e/m4$b;->w:Li/c/b0/k/e;

    .line 9
    new-instance v2, Li/c/b0/e/f/e/l4;

    invoke-direct {v2, p1}, Li/c/b0/e/f/e/l4;-><init>(Li/c/b0/k/d;)V

    .line 10
    iget-object v3, p0, Li/c/b0/e/f/e/m4$a;->f:Li/c/b0/b/c0;

    invoke-interface {v3, v2}, Li/c/b0/b/c0;->onNext(Ljava/lang/Object;)V

    .line 11
    iget-boolean v3, p0, Li/c/b0/e/f/e/m4$b;->s:Z

    if-eqz v3, :cond_2

    .line 12
    iget-object v3, p0, Li/c/b0/e/f/e/m4$b;->x:Li/c/b0/e/a/f;

    iget-object v4, p0, Li/c/b0/e/f/e/m4$b;->u:Li/c/b0/b/d0$c;

    new-instance v5, Li/c/b0/e/f/e/m4$b$a;

    invoke-direct {v5, p0, v0, v1}, Li/c/b0/e/f/e/m4$b$a;-><init>(Li/c/b0/e/f/e/m4$b;J)V

    iget-wide v8, p0, Li/c/b0/e/f/e/m4$a;->h:J

    iget-object v10, p0, Li/c/b0/e/f/e/m4$a;->i:Ljava/util/concurrent/TimeUnit;

    move-wide v6, v8

    invoke-virtual/range {v4 .. v10}, Li/c/b0/b/d0$c;->d(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Li/c/b0/c/c;

    move-result-object v0

    invoke-virtual {v3, v0}, Li/c/b0/e/a/f;->b(Li/c/b0/c/c;)Z

    .line 13
    :cond_2
    invoke-virtual {v2}, Li/c/b0/e/f/e/l4;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 14
    invoke-virtual {p1}, Li/c/b0/k/e;->onComplete()V

    :cond_3
    :goto_0
    return-object p1
.end method

.method public run()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Li/c/b0/e/f/e/m4$a;->d()V

    return-void
.end method
