.class final Li/c/b0/e/f/b/o$a;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Li/c/b0/b/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/e/f/b/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Li/c/b0/b/o<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final f:Lo/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/a/b<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final g:Li/c/b0/e/j/e;

.field final h:Lo/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/a/a<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final i:Li/c/b0/d/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/d/p<",
            "-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field j:J

.field k:J


# direct methods
.method constructor <init>(Lo/a/b;JLi/c/b0/d/p;Li/c/b0/e/j/e;Lo/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/a/b<",
            "-TT;>;J",
            "Li/c/b0/d/p<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Li/c/b0/e/j/e;",
            "Lo/a/a<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/b/o$a;->f:Lo/a/b;

    .line 3
    iput-object p5, p0, Li/c/b0/e/f/b/o$a;->g:Li/c/b0/e/j/e;

    .line 4
    iput-object p6, p0, Li/c/b0/e/f/b/o$a;->h:Lo/a/a;

    .line 5
    iput-object p4, p0, Li/c/b0/e/f/b/o$a;->i:Li/c/b0/d/p;

    .line 6
    iput-wide p2, p0, Li/c/b0/e/f/b/o$a;->j:J

    return-void
.end method


# virtual methods
.method a()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 2
    :cond_0
    iget-object v1, p0, Li/c/b0/e/f/b/o$a;->g:Li/c/b0/e/j/e;

    invoke-virtual {v1}, Li/c/b0/e/j/e;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 3
    :cond_1
    iget-wide v1, p0, Li/c/b0/e/f/b/o$a;->k:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    .line 4
    iput-wide v3, p0, Li/c/b0/e/f/b/o$a;->k:J

    .line 5
    iget-object v3, p0, Li/c/b0/e/f/b/o$a;->g:Li/c/b0/e/j/e;

    invoke-virtual {v3, v1, v2}, Li/c/b0/e/j/e;->f(J)V

    .line 6
    :cond_2
    iget-object v1, p0, Li/c/b0/e/f/b/o$a;->h:Lo/a/a;

    invoke-interface {v1, p0}, Lo/a/a;->a(Lo/a/b;)V

    neg-int v0, v0

    .line 7
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    return-void
.end method

.method public onComplete()V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/b/o$a;->f:Lo/a/b;

    invoke-interface {v0}, Lo/a/b;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 5

    .line 1
    iget-wide v0, p0, Li/c/b0/e/f/b/o$a;->j:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const-wide/16 v2, 0x1

    sub-long v2, v0, v2

    .line 2
    iput-wide v2, p0, Li/c/b0/e/f/b/o$a;->j:J

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 3
    iget-object v0, p0, Li/c/b0/e/f/b/o$a;->f:Lo/a/b;

    invoke-interface {v0, p1}, Lo/a/b;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 4
    :cond_1
    :try_start_0
    iget-object v0, p0, Li/c/b0/e/f/b/o$a;->i:Li/c/b0/d/p;

    invoke-interface {v0, p1}, Li/c/b0/d/p;->test(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    .line 5
    iget-object v0, p0, Li/c/b0/e/f/b/o$a;->f:Lo/a/b;

    invoke-interface {v0, p1}, Lo/a/b;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 6
    :cond_2
    invoke-virtual {p0}, Li/c/b0/e/f/b/o$a;->a()V

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    .line 7
    invoke-static {v0}, Lio/reactivex/rxjava3/exceptions/a;->b(Ljava/lang/Throwable;)V

    .line 8
    iget-object v1, p0, Li/c/b0/e/f/b/o$a;->f:Lo/a/b;

    new-instance v2, Lio/reactivex/rxjava3/exceptions/CompositeException;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Throwable;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 p1, 0x1

    aput-object v0, v3, p1

    invoke-direct {v2, v3}, Lio/reactivex/rxjava3/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Lo/a/b;->onError(Ljava/lang/Throwable;)V

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
    iget-wide v0, p0, Li/c/b0/e/f/b/o$a;->k:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Li/c/b0/e/f/b/o$a;->k:J

    .line 2
    iget-object v0, p0, Li/c/b0/e/f/b/o$a;->f:Lo/a/b;

    invoke-interface {v0, p1}, Lo/a/b;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onSubscribe(Lo/a/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/b/o$a;->g:Li/c/b0/e/j/e;

    invoke-virtual {v0, p1}, Li/c/b0/e/j/e;->g(Lo/a/c;)V

    return-void
.end method
