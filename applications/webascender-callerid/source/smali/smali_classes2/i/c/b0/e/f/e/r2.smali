.class public final Li/c/b0/e/f/e/r2;
.super Li/c/b0/b/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/e/r2$b;,
        Li/c/b0/e/f/e/r2$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/b0/b/v<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final f:Li/c/b0/f/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/f/a<",
            "TT;>;"
        }
    .end annotation
.end field

.field final g:I

.field final h:J

.field final i:Ljava/util/concurrent/TimeUnit;

.field final j:Li/c/b0/b/d0;

.field k:Li/c/b0/e/f/e/r2$a;


# direct methods
.method public constructor <init>(Li/c/b0/f/a;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/f/a<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Li/c/b0/e/f/e/r2;-><init>(Li/c/b0/f/a;IJLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;)V

    return-void
.end method

.method public constructor <init>(Li/c/b0/f/a;IJLjava/util/concurrent/TimeUnit;Li/c/b0/b/d0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/f/a<",
            "TT;>;IJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Li/c/b0/b/d0;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Li/c/b0/b/v;-><init>()V

    .line 3
    iput-object p1, p0, Li/c/b0/e/f/e/r2;->f:Li/c/b0/f/a;

    .line 4
    iput p2, p0, Li/c/b0/e/f/e/r2;->g:I

    .line 5
    iput-wide p3, p0, Li/c/b0/e/f/e/r2;->h:J

    .line 6
    iput-object p5, p0, Li/c/b0/e/f/e/r2;->i:Ljava/util/concurrent/TimeUnit;

    .line 7
    iput-object p6, p0, Li/c/b0/e/f/e/r2;->j:Li/c/b0/b/d0;

    return-void
.end method


# virtual methods
.method a(Li/c/b0/e/f/e/r2$a;)V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Li/c/b0/e/f/e/r2;->k:Li/c/b0/e/f/e/r2$a;

    if-eqz v0, :cond_4

    if-eq v0, p1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-wide v0, p1, Li/c/b0/e/f/e/r2$a;->h:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    .line 4
    iput-wide v0, p1, Li/c/b0/e/f/e/r2$a;->h:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_3

    .line 5
    iget-boolean v0, p1, Li/c/b0/e/f/e/r2$a;->i:Z

    if-nez v0, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    iget-wide v0, p0, Li/c/b0/e/f/e/r2;->h:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    .line 7
    invoke-virtual {p0, p1}, Li/c/b0/e/f/e/r2;->c(Li/c/b0/e/f/e/r2$a;)V

    .line 8
    monitor-exit p0

    return-void

    .line 9
    :cond_2
    new-instance v0, Li/c/b0/e/a/f;

    invoke-direct {v0}, Li/c/b0/e/a/f;-><init>()V

    .line 10
    iput-object v0, p1, Li/c/b0/e/f/e/r2$a;->g:Li/c/b0/c/c;

    .line 11
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    iget-object v1, p0, Li/c/b0/e/f/e/r2;->j:Li/c/b0/b/d0;

    iget-wide v2, p0, Li/c/b0/e/f/e/r2;->h:J

    iget-object v4, p0, Li/c/b0/e/f/e/r2;->i:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p1, v2, v3, v4}, Li/c/b0/b/d0;->e(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Li/c/b0/c/c;

    move-result-object p1

    invoke-virtual {v0, p1}, Li/c/b0/e/a/f;->a(Li/c/b0/c/c;)Z

    return-void

    .line 13
    :cond_3
    :goto_0
    :try_start_1
    monitor-exit p0

    return-void

    .line 14
    :cond_4
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 15
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method b(Li/c/b0/e/f/e/r2$a;)V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Li/c/b0/e/f/e/r2;->k:Li/c/b0/e/f/e/r2$a;

    if-ne v0, p1, :cond_1

    .line 3
    iget-object v0, p1, Li/c/b0/e/f/e/r2$a;->g:Li/c/b0/c/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Li/c/b0/c/c;->dispose()V

    .line 5
    iput-object v1, p1, Li/c/b0/e/f/e/r2$a;->g:Li/c/b0/c/c;

    .line 6
    :cond_0
    iget-wide v2, p1, Li/c/b0/e/f/e/r2$a;->h:J

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    iput-wide v2, p1, Li/c/b0/e/f/e/r2$a;->h:J

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-nez p1, :cond_1

    .line 7
    iput-object v1, p0, Li/c/b0/e/f/e/r2;->k:Li/c/b0/e/f/e/r2$a;

    .line 8
    iget-object p1, p0, Li/c/b0/e/f/e/r2;->f:Li/c/b0/f/a;

    invoke-virtual {p1}, Li/c/b0/f/a;->c()V

    .line 9
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method c(Li/c/b0/e/f/e/r2$a;)V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p1, Li/c/b0/e/f/e/r2$a;->h:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    iget-object v0, p0, Li/c/b0/e/f/e/r2;->k:Li/c/b0/e/f/e/r2$a;

    if-ne p1, v0, :cond_1

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Li/c/b0/e/f/e/r2;->k:Li/c/b0/e/f/e/r2$a;

    .line 4
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/c/b0/c/c;

    .line 5
    invoke-static {p1}, Li/c/b0/e/a/c;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p1, Li/c/b0/e/f/e/r2$a;->j:Z

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Li/c/b0/e/f/e/r2;->f:Li/c/b0/f/a;

    invoke-virtual {p1}, Li/c/b0/f/a;->c()V

    .line 8
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected subscribeActual(Li/c/b0/b/c0;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/c0<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Li/c/b0/e/f/e/r2;->k:Li/c/b0/e/f/e/r2$a;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Li/c/b0/e/f/e/r2$a;

    invoke-direct {v0, p0}, Li/c/b0/e/f/e/r2$a;-><init>(Li/c/b0/e/f/e/r2;)V

    .line 4
    iput-object v0, p0, Li/c/b0/e/f/e/r2;->k:Li/c/b0/e/f/e/r2$a;

    .line 5
    :cond_0
    iget-wide v1, v0, Li/c/b0/e/f/e/r2$a;->h:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    .line 6
    iget-object v3, v0, Li/c/b0/e/f/e/r2$a;->g:Li/c/b0/c/c;

    if-eqz v3, :cond_1

    .line 7
    invoke-interface {v3}, Li/c/b0/c/c;->dispose()V

    :cond_1
    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    .line 8
    iput-wide v1, v0, Li/c/b0/e/f/e/r2$a;->h:J

    .line 9
    iget-boolean v3, v0, Li/c/b0/e/f/e/r2$a;->i:Z

    const/4 v4, 0x1

    if-nez v3, :cond_2

    iget v3, p0, Li/c/b0/e/f/e/r2;->g:I

    int-to-long v5, v3

    cmp-long v3, v1, v5

    if-nez v3, :cond_2

    .line 10
    iput-boolean v4, v0, Li/c/b0/e/f/e/r2$a;->i:Z

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    .line 11
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    iget-object v1, p0, Li/c/b0/e/f/e/r2;->f:Li/c/b0/f/a;

    new-instance v2, Li/c/b0/e/f/e/r2$b;

    invoke-direct {v2, p1, p0, v0}, Li/c/b0/e/f/e/r2$b;-><init>(Li/c/b0/b/c0;Li/c/b0/e/f/e/r2;Li/c/b0/e/f/e/r2$a;)V

    invoke-virtual {v1, v2}, Li/c/b0/b/v;->subscribe(Li/c/b0/b/c0;)V

    if-eqz v4, :cond_3

    .line 13
    iget-object p1, p0, Li/c/b0/e/f/e/r2;->f:Li/c/b0/f/a;

    invoke-virtual {p1, v0}, Li/c/b0/f/a;->a(Li/c/b0/d/g;)V

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    .line 14
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
