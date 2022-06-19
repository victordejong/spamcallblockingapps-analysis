.class public abstract Lp3/a/n1/a$c;
.super Lp3/a/n1/e$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/a/n1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation


# instance fields
.field public final h:Lp3/a/n1/r2;

.field public i:Z

.field public j:Lp3/a/n1/t;

.field public k:Z

.field public l:Lp3/a/t;

.field public m:Z

.field public n:Ljava/lang/Runnable;

.field public volatile o:Z

.field public p:Z

.field public q:Z


# direct methods
.method public constructor <init>(ILp3/a/n1/r2;Lp3/a/n1/x2;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lp3/a/n1/e$a;-><init>(ILp3/a/n1/r2;Lp3/a/n1/x2;)V

    .line 2
    sget-object p1, Lp3/a/t;->d:Lp3/a/t;

    .line 3
    iput-object p1, p0, Lp3/a/n1/a$c;->l:Lp3/a/t;

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lp3/a/n1/a$c;->m:Z

    const-string p1, "statsTraceCtx"

    .line 5
    invoke-static {p2, p1}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lp3/a/n1/a$c;->h:Lp3/a/n1/r2;

    return-void
.end method


# virtual methods
.method public c(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lp3/a/n1/a$c;->p:Z

    const-string v1, "status should have been reported on deframer closed"

    invoke-static {v0, v1}, Ln3/g0/y;->checkState1(ZLjava/lang/Object;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lp3/a/n1/a$c;->m:Z

    .line 3
    iget-boolean v1, p0, Lp3/a/n1/a$c;->q:Z

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 4
    sget-object p1, Lp3/a/g1;->o:Lp3/a/g1;

    const-string v1, "Encountered end-of-stream mid-frame"

    .line 5
    invoke-virtual {p1, v1}, Lp3/a/g1;->i(Ljava/lang/String;)Lp3/a/g1;

    move-result-object p1

    new-instance v1, Lp3/a/o0;

    invoke-direct {v1}, Lp3/a/o0;-><init>()V

    .line 6
    sget-object v2, Lp3/a/n1/t$a;->a:Lp3/a/n1/t$a;

    invoke-virtual {p0, p1, v2, v0, v1}, Lp3/a/n1/a$c;->i(Lp3/a/g1;Lp3/a/n1/t$a;ZLp3/a/o0;)V

    .line 7
    :cond_0
    iget-object p1, p0, Lp3/a/n1/a$c;->n:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 8
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lp3/a/n1/a$c;->n:Ljava/lang/Runnable;

    :cond_1
    return-void
.end method

.method public final g(Lp3/a/g1;Lp3/a/n1/t$a;Lp3/a/o0;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lp3/a/n1/a$c;->i:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lp3/a/n1/a$c;->i:Z

    .line 3
    iget-object v1, p0, Lp3/a/n1/a$c;->h:Lp3/a/n1/r2;

    .line 4
    iget-object v2, v1, Lp3/a/n1/r2;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, v1, Lp3/a/n1/r2;->a:[Lp3/a/j1;

    array-length v1, v0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v2, v0, v3

    .line 6
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lp3/a/n1/a$c;->j:Lp3/a/n1/t;

    .line 8
    invoke-interface {v0, p1, p2, p3}, Lp3/a/n1/t;->e(Lp3/a/g1;Lp3/a/n1/t$a;Lp3/a/o0;)V

    .line 9
    iget-object p2, p0, Lp3/a/n1/e$a;->c:Lp3/a/n1/x2;

    if-eqz p2, :cond_2

    .line 10
    invoke-virtual {p1}, Lp3/a/g1;->g()Z

    move-result p1

    const-wide/16 v0, 0x1

    if-eqz p1, :cond_1

    .line 11
    iget-wide v2, p2, Lp3/a/n1/x2;->c:J

    add-long/2addr v2, v0

    iput-wide v2, p2, Lp3/a/n1/x2;->c:J

    goto :goto_1

    .line 12
    :cond_1
    iget-wide v2, p2, Lp3/a/n1/x2;->d:J

    add-long/2addr v2, v0

    iput-wide v2, p2, Lp3/a/n1/x2;->d:J

    :cond_2
    :goto_1
    return-void
.end method

.method public h(Lp3/a/o0;)V
    .locals 8

    .line 1
    sget-object v0, Lp3/a/k$b;->a:Lp3/a/k;

    iget-boolean v1, p0, Lp3/a/n1/a$c;->p:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const-string v3, "Received headers on closed stream"

    invoke-static {v1, v3}, Ln3/g0/y;->checkState1(ZLjava/lang/Object;)V

    .line 2
    iget-object v1, p0, Lp3/a/n1/a$c;->h:Lp3/a/n1/r2;

    .line 3
    iget-object v1, v1, Lp3/a/n1/r2;->a:[Lp3/a/j1;

    array-length v3, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_0

    aget-object v6, v1, v5

    .line 4
    check-cast v6, Lp3/a/j;

    .line 5
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 6
    :cond_0
    sget-object v1, Lp3/a/n1/r0;->e:Lp3/a/o0$f;

    invoke-virtual {p1, v1}, Lp3/a/o0;->d(Lp3/a/o0$f;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 7
    iget-boolean v3, p0, Lp3/a/n1/a$c;->k:Z

    const/4 v5, 0x0

    if-eqz v3, :cond_4

    if-eqz v1, :cond_4

    const-string v3, "gzip"

    .line 8
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 9
    new-instance v1, Lp3/a/n1/s0;

    invoke-direct {v1}, Lp3/a/n1/s0;-><init>()V

    .line 10
    iget-object v3, p0, Lp3/a/n1/e$a;->d:Lp3/a/n1/u1;

    .line 11
    iget-object v6, v3, Lp3/a/n1/u1;->e:Lp3/a/s;

    if-ne v6, v0, :cond_1

    move v6, v2

    goto :goto_1

    :cond_1
    move v6, v4

    :goto_1
    const-string v7, "per-message decompressor already set"

    invoke-static {v6, v7}, Ln3/g0/y;->checkState1(ZLjava/lang/Object;)V

    .line 12
    iget-object v6, v3, Lp3/a/n1/u1;->f:Lp3/a/n1/s0;

    if-nez v6, :cond_2

    move v6, v2

    goto :goto_2

    :cond_2
    move v6, v4

    :goto_2
    const-string v7, "full stream decompressor already set"

    invoke-static {v6, v7}, Ln3/g0/y;->checkState1(ZLjava/lang/Object;)V

    const-string v6, "Can\'t pass a null full stream decompressor"

    .line 13
    invoke-static {v1, v6}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v1, v3, Lp3/a/n1/u1;->f:Lp3/a/n1/s0;

    .line 14
    iput-object v5, v3, Lp3/a/n1/u1;->m:Lp3/a/n1/w;

    .line 15
    new-instance v1, Lp3/a/n1/g;

    iget-object v3, p0, Lp3/a/n1/e$a;->d:Lp3/a/n1/u1;

    invoke-direct {v1, p0, p0, v3}, Lp3/a/n1/g;-><init>(Lp3/a/n1/u1$b;Lp3/a/n1/g$h;Lp3/a/n1/u1;)V

    iput-object v1, p0, Lp3/a/n1/e$a;->a:Lp3/a/n1/a0;

    move v1, v2

    goto :goto_3

    :cond_3
    const-string v3, "identity"

    .line 16
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 17
    sget-object p1, Lp3/a/g1;->o:Lp3/a/g1;

    new-array v0, v2, [Ljava/lang/Object;

    aput-object v1, v0, v4

    const-string v1, "Can\'t find full stream decompressor for %s"

    .line 18
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-virtual {p1, v0}, Lp3/a/g1;->i(Ljava/lang/String;)Lp3/a/g1;

    move-result-object p1

    .line 20
    invoke-virtual {p1}, Lp3/a/g1;->a()Lp3/a/i1;

    move-result-object p1

    .line 21
    move-object v0, p0

    check-cast v0, Lp3/a/o1/e$b;

    invoke-virtual {v0, p1}, Lp3/a/o1/e$b;->e(Ljava/lang/Throwable;)V

    return-void

    :cond_4
    move v1, v4

    .line 22
    :goto_3
    sget-object v3, Lp3/a/n1/r0;->c:Lp3/a/o0$f;

    invoke-virtual {p1, v3}, Lp3/a/o0;->d(Lp3/a/o0$f;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_8

    .line 23
    iget-object v6, p0, Lp3/a/n1/a$c;->l:Lp3/a/t;

    .line 24
    iget-object v6, v6, Lp3/a/t;->a:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lp3/a/t$a;

    if-eqz v6, :cond_5

    .line 25
    iget-object v5, v6, Lp3/a/t$a;->a:Lp3/a/s;

    :cond_5
    if-nez v5, :cond_6

    .line 26
    sget-object p1, Lp3/a/g1;->o:Lp3/a/g1;

    new-array v0, v2, [Ljava/lang/Object;

    aput-object v3, v0, v4

    const-string v1, "Can\'t find decompressor for %s"

    .line 27
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lp3/a/g1;->i(Ljava/lang/String;)Lp3/a/g1;

    move-result-object p1

    .line 28
    invoke-virtual {p1}, Lp3/a/g1;->a()Lp3/a/i1;

    move-result-object p1

    .line 29
    move-object v0, p0

    check-cast v0, Lp3/a/o1/e$b;

    invoke-virtual {v0, p1}, Lp3/a/o1/e$b;->e(Ljava/lang/Throwable;)V

    return-void

    :cond_6
    if-eq v5, v0, :cond_8

    if-eqz v1, :cond_7

    .line 30
    sget-object p1, Lp3/a/g1;->o:Lp3/a/g1;

    new-array v0, v4, [Ljava/lang/Object;

    const-string v1, "Full stream and gRPC message encoding cannot both be set"

    .line 31
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 32
    invoke-virtual {p1, v0}, Lp3/a/g1;->i(Ljava/lang/String;)Lp3/a/g1;

    move-result-object p1

    .line 33
    invoke-virtual {p1}, Lp3/a/g1;->a()Lp3/a/i1;

    move-result-object p1

    .line 34
    move-object v0, p0

    check-cast v0, Lp3/a/o1/e$b;

    invoke-virtual {v0, p1}, Lp3/a/o1/e$b;->e(Ljava/lang/Throwable;)V

    return-void

    .line 35
    :cond_7
    iget-object v0, p0, Lp3/a/n1/e$a;->a:Lp3/a/n1/a0;

    invoke-interface {v0, v5}, Lp3/a/n1/a0;->j(Lp3/a/s;)V

    .line 36
    :cond_8
    iget-object v0, p0, Lp3/a/n1/a$c;->j:Lp3/a/n1/t;

    .line 37
    invoke-interface {v0, p1}, Lp3/a/n1/t;->b(Lp3/a/o0;)V

    return-void
.end method

.method public final i(Lp3/a/g1;Lp3/a/n1/t$a;ZLp3/a/o0;)V
    .locals 2

    const-string v0, "status"

    .line 1
    invoke-static {p1, v0}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "trailers"

    .line 2
    invoke-static {p4, v0}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-boolean v0, p0, Lp3/a/n1/a$c;->p:Z

    if-eqz v0, :cond_0

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lp3/a/n1/a$c;->p:Z

    .line 5
    invoke-virtual {p1}, Lp3/a/g1;->g()Z

    move-result v1

    iput-boolean v1, p0, Lp3/a/n1/a$c;->q:Z

    .line 6
    iget-object v1, p0, Lp3/a/n1/e$a;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 7
    :try_start_0
    iput-boolean v0, p0, Lp3/a/n1/e$a;->g:Z

    .line 8
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    iget-boolean v0, p0, Lp3/a/n1/a$c;->m:Z

    if-eqz v0, :cond_1

    const/4 p3, 0x0

    .line 10
    iput-object p3, p0, Lp3/a/n1/a$c;->n:Ljava/lang/Runnable;

    .line 11
    invoke-virtual {p0, p1, p2, p4}, Lp3/a/n1/a$c;->g(Lp3/a/g1;Lp3/a/n1/t$a;Lp3/a/o0;)V

    goto :goto_0

    .line 12
    :cond_1
    new-instance v0, Lp3/a/n1/a$c$a;

    invoke-direct {v0, p0, p1, p2, p4}, Lp3/a/n1/a$c$a;-><init>(Lp3/a/n1/a$c;Lp3/a/g1;Lp3/a/n1/t$a;Lp3/a/o0;)V

    iput-object v0, p0, Lp3/a/n1/a$c;->n:Ljava/lang/Runnable;

    if-eqz p3, :cond_2

    .line 13
    iget-object p1, p0, Lp3/a/n1/e$a;->a:Lp3/a/n1/a0;

    invoke-interface {p1}, Lp3/a/n1/a0;->close()V

    goto :goto_0

    .line 14
    :cond_2
    iget-object p1, p0, Lp3/a/n1/e$a;->a:Lp3/a/n1/a0;

    invoke-interface {p1}, Lp3/a/n1/a0;->l()V

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 15
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
