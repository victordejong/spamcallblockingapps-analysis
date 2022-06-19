.class public abstract Lp3/a/n1/i2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp3/a/n1/s;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp3/a/n1/i2$s;,
        Lp3/a/n1/i2$u;,
        Lp3/a/n1/i2$y;,
        Lp3/a/n1/i2$r;,
        Lp3/a/n1/i2$q;,
        Lp3/a/n1/i2$x;,
        Lp3/a/n1/i2$v;,
        Lp3/a/n1/i2$w;,
        Lp3/a/n1/i2$p;,
        Lp3/a/n1/i2$t;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReqT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lp3/a/n1/s;"
    }
.end annotation


# static fields
.field public static final u:Lp3/a/o0$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp3/a/o0$f<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final v:Lp3/a/o0$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp3/a/o0$f<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final w:Lp3/a/g1;

.field public static x:Ljava/util/Random;


# instance fields
.field public final a:Lp3/a/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp3/a/p0<",
            "TReqT;*>;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Ljava/util/concurrent/ScheduledExecutorService;

.field public final d:Lp3/a/o0;

.field public final e:Lp3/a/n1/j2;

.field public final f:Lp3/a/n1/t0;

.field public final g:Z

.field public final h:Ljava/lang/Object;

.field public final i:Lp3/a/n1/i2$r;

.field public final j:J

.field public final k:J

.field public final l:Lp3/a/n1/i2$y;

.field public final m:Lp3/a/n1/z0;

.field public volatile n:Lp3/a/n1/i2$v;

.field public final o:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public p:J

.field public q:Lp3/a/n1/t;

.field public r:Lp3/a/n1/i2$s;

.field public s:Lp3/a/n1/i2$s;

.field public t:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lp3/a/o0;->c:Lp3/a/o0$d;

    const-string v1, "grpc-previous-rpc-attempts"

    .line 2
    invoke-static {v1, v0}, Lp3/a/o0$f;->a(Ljava/lang/String;Lp3/a/o0$d;)Lp3/a/o0$f;

    move-result-object v1

    sput-object v1, Lp3/a/n1/i2;->u:Lp3/a/o0$f;

    const-string v1, "grpc-retry-pushback-ms"

    .line 3
    invoke-static {v1, v0}, Lp3/a/o0$f;->a(Ljava/lang/String;Lp3/a/o0$d;)Lp3/a/o0$f;

    move-result-object v0

    sput-object v0, Lp3/a/n1/i2;->v:Lp3/a/o0$f;

    .line 4
    sget-object v0, Lp3/a/g1;->g:Lp3/a/g1;

    const-string v1, "Stream thrown away because RetriableStream committed"

    .line 5
    invoke-virtual {v0, v1}, Lp3/a/g1;->i(Ljava/lang/String;)Lp3/a/g1;

    move-result-object v0

    sput-object v0, Lp3/a/n1/i2;->w:Lp3/a/g1;

    .line 6
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lp3/a/n1/i2;->x:Ljava/util/Random;

    return-void
.end method

.method public static o(Lp3/a/n1/i2;Lp3/a/n1/i2$x;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lp3/a/n1/i2;->q(Lp3/a/n1/i2$x;)Ljava/lang/Runnable;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    check-cast p0, Lp3/a/n1/i2$c;

    invoke-virtual {p0}, Lp3/a/n1/i2$c;->run()V

    :cond_0
    return-void
.end method

.method public static p(Lp3/a/n1/i2;Ljava/lang/Integer;)V
    .locals 4

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lp3/a/n1/i2;->u()V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lp3/a/n1/i2;->h:Ljava/lang/Object;

    monitor-enter v0

    .line 5
    :try_start_0
    iget-object v1, p0, Lp3/a/n1/i2;->s:Lp3/a/n1/i2$s;

    if-nez v1, :cond_2

    .line 6
    monitor-exit v0

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {v1}, Lp3/a/n1/i2$s;->a()Ljava/util/concurrent/Future;

    move-result-object v1

    .line 8
    new-instance v2, Lp3/a/n1/i2$s;

    iget-object v3, p0, Lp3/a/n1/i2;->h:Ljava/lang/Object;

    invoke-direct {v2, v3}, Lp3/a/n1/i2$s;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lp3/a/n1/i2;->s:Lp3/a/n1/i2$s;

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    .line 10
    invoke-interface {v1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 11
    :cond_3
    iget-object v0, p0, Lp3/a/n1/i2;->c:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lp3/a/n1/i2$t;

    invoke-direct {v1, p0, v2}, Lp3/a/n1/i2$t;-><init>(Lp3/a/n1/i2;Lp3/a/n1/i2$s;)V

    .line 12
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long p0, p0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 13
    invoke-interface {v0, v1, p0, p1, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    invoke-virtual {v2, p0}, Lp3/a/n1/i2$s;->b(Ljava/util/concurrent/Future;)V

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    .line 14
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public final a(Lp3/a/m;)V
    .locals 1

    .line 1
    new-instance v0, Lp3/a/n1/i2$d;

    invoke-direct {v0, p0, p1}, Lp3/a/n1/i2$d;-><init>(Lp3/a/n1/i2;Lp3/a/m;)V

    invoke-virtual {p0, v0}, Lp3/a/n1/i2;->s(Lp3/a/n1/i2$p;)V

    return-void
.end method

.method public final b(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lp3/a/n1/i2;->n:Lp3/a/n1/i2$v;

    .line 2
    iget-boolean v1, v0, Lp3/a/n1/i2$v;->a:Z

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, v0, Lp3/a/n1/i2$v;->f:Lp3/a/n1/i2$x;

    iget-object v0, v0, Lp3/a/n1/i2$x;->a:Lp3/a/n1/s;

    invoke-interface {v0, p1}, Lp3/a/n1/s2;->b(I)V

    return-void

    .line 4
    :cond_0
    new-instance v0, Lp3/a/n1/i2$m;

    invoke-direct {v0, p0, p1}, Lp3/a/n1/i2$m;-><init>(Lp3/a/n1/i2;I)V

    invoke-virtual {p0, v0}, Lp3/a/n1/i2;->s(Lp3/a/n1/i2$p;)V

    return-void
.end method

.method public final c(Ljava/io/InputStream;)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "RetriableStream.writeMessage() should not be called directly"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final d(I)V
    .locals 1

    .line 1
    new-instance v0, Lp3/a/n1/i2$j;

    invoke-direct {v0, p0, p1}, Lp3/a/n1/i2$j;-><init>(Lp3/a/n1/i2;I)V

    invoke-virtual {p0, v0}, Lp3/a/n1/i2;->s(Lp3/a/n1/i2$p;)V

    return-void
.end method

.method public final e(I)V
    .locals 1

    .line 1
    new-instance v0, Lp3/a/n1/i2$k;

    invoke-direct {v0, p0, p1}, Lp3/a/n1/i2$k;-><init>(Lp3/a/n1/i2;I)V

    invoke-virtual {p0, v0}, Lp3/a/n1/i2;->s(Lp3/a/n1/i2$p;)V

    return-void
.end method

.method public f()V
    .locals 1

    .line 1
    new-instance v0, Lp3/a/n1/i2$l;

    invoke-direct {v0, p0}, Lp3/a/n1/i2$l;-><init>(Lp3/a/n1/i2;)V

    invoke-virtual {p0, v0}, Lp3/a/n1/i2;->s(Lp3/a/n1/i2$p;)V

    return-void
.end method

.method public final flush()V
    .locals 2

    .line 1
    iget-object v0, p0, Lp3/a/n1/i2;->n:Lp3/a/n1/i2$v;

    .line 2
    iget-boolean v1, v0, Lp3/a/n1/i2$v;->a:Z

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, v0, Lp3/a/n1/i2$v;->f:Lp3/a/n1/i2$x;

    iget-object v0, v0, Lp3/a/n1/i2$x;->a:Lp3/a/n1/s;

    invoke-interface {v0}, Lp3/a/n1/s2;->flush()V

    return-void

    .line 4
    :cond_0
    new-instance v0, Lp3/a/n1/i2$g;

    invoke-direct {v0, p0}, Lp3/a/n1/i2$g;-><init>(Lp3/a/n1/i2;)V

    invoke-virtual {p0, v0}, Lp3/a/n1/i2;->s(Lp3/a/n1/i2$p;)V

    return-void
.end method

.method public final g(Z)V
    .locals 1

    .line 1
    new-instance v0, Lp3/a/n1/i2$h;

    invoke-direct {v0, p0, p1}, Lp3/a/n1/i2$h;-><init>(Lp3/a/n1/i2;Z)V

    invoke-virtual {p0, v0}, Lp3/a/n1/i2;->s(Lp3/a/n1/i2$p;)V

    return-void
.end method

.method public final h(Lp3/a/g1;)V
    .locals 11

    .line 1
    new-instance v0, Lp3/a/n1/i2$x;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lp3/a/n1/i2$x;-><init>(I)V

    .line 2
    new-instance v1, Lp3/a/n1/x1;

    invoke-direct {v1}, Lp3/a/n1/x1;-><init>()V

    iput-object v1, v0, Lp3/a/n1/i2$x;->a:Lp3/a/n1/s;

    .line 3
    invoke-virtual {p0, v0}, Lp3/a/n1/i2;->q(Lp3/a/n1/i2$x;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lp3/a/n1/i2;->q:Lp3/a/n1/t;

    new-instance v2, Lp3/a/o0;

    invoke-direct {v2}, Lp3/a/o0;-><init>()V

    invoke-interface {v1, p1, v2}, Lp3/a/n1/t;->c(Lp3/a/g1;Lp3/a/o0;)V

    .line 5
    check-cast v0, Lp3/a/n1/i2$c;

    invoke-virtual {v0}, Lp3/a/n1/i2$c;->run()V

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lp3/a/n1/i2;->n:Lp3/a/n1/i2$v;

    iget-object v0, v0, Lp3/a/n1/i2$v;->f:Lp3/a/n1/i2$x;

    iget-object v0, v0, Lp3/a/n1/i2$x;->a:Lp3/a/n1/s;

    invoke-interface {v0, p1}, Lp3/a/n1/s;->h(Lp3/a/g1;)V

    .line 7
    iget-object p1, p0, Lp3/a/n1/i2;->h:Ljava/lang/Object;

    monitor-enter p1

    .line 8
    :try_start_0
    iget-object v0, p0, Lp3/a/n1/i2;->n:Lp3/a/n1/i2$v;

    .line 9
    new-instance v10, Lp3/a/n1/i2$v;

    iget-object v2, v0, Lp3/a/n1/i2$v;->b:Ljava/util/List;

    iget-object v3, v0, Lp3/a/n1/i2$v;->c:Ljava/util/Collection;

    iget-object v4, v0, Lp3/a/n1/i2$v;->d:Ljava/util/Collection;

    iget-object v5, v0, Lp3/a/n1/i2$v;->f:Lp3/a/n1/i2$x;

    iget-boolean v7, v0, Lp3/a/n1/i2$v;->a:Z

    iget-boolean v8, v0, Lp3/a/n1/i2$v;->h:Z

    iget v9, v0, Lp3/a/n1/i2$v;->e:I

    const/4 v6, 0x1

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lp3/a/n1/i2$v;-><init>(Ljava/util/List;Ljava/util/Collection;Ljava/util/Collection;Lp3/a/n1/i2$x;ZZZI)V

    .line 10
    iput-object v10, p0, Lp3/a/n1/i2;->n:Lp3/a/n1/i2$v;

    .line 11
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final i()V
    .locals 1

    .line 1
    new-instance v0, Lp3/a/n1/i2$i;

    invoke-direct {v0, p0}, Lp3/a/n1/i2$i;-><init>(Lp3/a/n1/i2;)V

    invoke-virtual {p0, v0}, Lp3/a/n1/i2;->s(Lp3/a/n1/i2$p;)V

    return-void
.end method

.method public final j(Lp3/a/t;)V
    .locals 1

    .line 1
    new-instance v0, Lp3/a/n1/i2$f;

    invoke-direct {v0, p0, p1}, Lp3/a/n1/i2$f;-><init>(Lp3/a/n1/i2;Lp3/a/t;)V

    invoke-virtual {p0, v0}, Lp3/a/n1/i2;->s(Lp3/a/n1/i2$p;)V

    return-void
.end method

.method public final k(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lp3/a/n1/i2$b;

    invoke-direct {v0, p0, p1}, Lp3/a/n1/i2$b;-><init>(Lp3/a/n1/i2;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lp3/a/n1/i2;->s(Lp3/a/n1/i2$p;)V

    return-void
.end method

.method public l(Lp3/a/n1/z0;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lp3/a/n1/i2;->h:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "closed"

    .line 2
    iget-object v2, p0, Lp3/a/n1/i2;->m:Lp3/a/n1/z0;

    invoke-virtual {p1, v1, v2}, Lp3/a/n1/z0;->b(Ljava/lang/String;Ljava/lang/Object;)Lp3/a/n1/z0;

    .line 3
    iget-object v1, p0, Lp3/a/n1/i2;->n:Lp3/a/n1/i2$v;

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, v1, Lp3/a/n1/i2$v;->f:Lp3/a/n1/i2$x;

    if-eqz v0, :cond_0

    .line 6
    new-instance v0, Lp3/a/n1/z0;

    invoke-direct {v0}, Lp3/a/n1/z0;-><init>()V

    .line 7
    iget-object v1, v1, Lp3/a/n1/i2$v;->f:Lp3/a/n1/i2$x;

    iget-object v1, v1, Lp3/a/n1/i2$x;->a:Lp3/a/n1/s;

    invoke-interface {v1, v0}, Lp3/a/n1/s;->l(Lp3/a/n1/z0;)V

    const-string v1, "committed"

    .line 8
    invoke-virtual {p1, v1, v0}, Lp3/a/n1/z0;->b(Ljava/lang/String;Ljava/lang/Object;)Lp3/a/n1/z0;

    goto :goto_1

    .line 9
    :cond_0
    new-instance v0, Lp3/a/n1/z0;

    invoke-direct {v0}, Lp3/a/n1/z0;-><init>()V

    .line 10
    iget-object v1, v1, Lp3/a/n1/i2$v;->c:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lp3/a/n1/i2$x;

    .line 11
    new-instance v3, Lp3/a/n1/z0;

    invoke-direct {v3}, Lp3/a/n1/z0;-><init>()V

    .line 12
    iget-object v2, v2, Lp3/a/n1/i2$x;->a:Lp3/a/n1/s;

    invoke-interface {v2, v3}, Lp3/a/n1/s;->l(Lp3/a/n1/z0;)V

    .line 13
    iget-object v2, v0, Lp3/a/n1/z0;->a:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v1, "open"

    .line 14
    invoke-virtual {p1, v1, v0}, Lp3/a/n1/z0;->b(Ljava/lang/String;Ljava/lang/Object;)Lp3/a/n1/z0;

    :goto_1
    return-void

    :catchall_0
    move-exception p1

    .line 15
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final m(Lp3/a/r;)V
    .locals 1

    .line 1
    new-instance v0, Lp3/a/n1/i2$e;

    invoke-direct {v0, p0, p1}, Lp3/a/n1/i2$e;-><init>(Lp3/a/n1/i2;Lp3/a/r;)V

    invoke-virtual {p0, v0}, Lp3/a/n1/i2;->s(Lp3/a/n1/i2$p;)V

    return-void
.end method

.method public final n(Lp3/a/n1/t;)V
    .locals 6

    .line 1
    iput-object p1, p0, Lp3/a/n1/i2;->q:Lp3/a/n1/t;

    .line 2
    invoke-virtual {p0}, Lp3/a/n1/i2;->y()Lp3/a/g1;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lp3/a/n1/i2;->h(Lp3/a/g1;)V

    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Lp3/a/n1/i2;->h:Ljava/lang/Object;

    monitor-enter p1

    .line 5
    :try_start_0
    iget-object v0, p0, Lp3/a/n1/i2;->n:Lp3/a/n1/i2$v;

    iget-object v0, v0, Lp3/a/n1/i2$v;->b:Ljava/util/List;

    new-instance v1, Lp3/a/n1/i2$o;

    invoke-direct {v1, p0}, Lp3/a/n1/i2$o;-><init>(Lp3/a/n1/i2;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 p1, 0x0

    .line 7
    invoke-virtual {p0, p1}, Lp3/a/n1/i2;->r(I)Lp3/a/n1/i2$x;

    move-result-object v0

    .line 8
    iget-boolean v1, p0, Lp3/a/n1/i2;->g:Z

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    .line 9
    iget-object v2, p0, Lp3/a/n1/i2;->h:Ljava/lang/Object;

    monitor-enter v2

    .line 10
    :try_start_1
    iget-object v3, p0, Lp3/a/n1/i2;->n:Lp3/a/n1/i2$v;

    invoke-virtual {v3, v0}, Lp3/a/n1/i2$v;->a(Lp3/a/n1/i2$x;)Lp3/a/n1/i2$v;

    move-result-object v3

    iput-object v3, p0, Lp3/a/n1/i2;->n:Lp3/a/n1/i2$v;

    .line 11
    iget-object v3, p0, Lp3/a/n1/i2;->n:Lp3/a/n1/i2$v;

    invoke-virtual {p0, v3}, Lp3/a/n1/i2;->v(Lp3/a/n1/i2$v;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lp3/a/n1/i2;->l:Lp3/a/n1/i2$y;

    if-eqz v3, :cond_2

    .line 12
    iget-object v4, v3, Lp3/a/n1/i2$y;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    iget v3, v3, Lp3/a/n1/i2$y;->b:I

    if-le v4, v3, :cond_1

    const/4 p1, 0x1

    :cond_1
    if-eqz p1, :cond_3

    .line 13
    :cond_2
    new-instance v1, Lp3/a/n1/i2$s;

    iget-object p1, p0, Lp3/a/n1/i2;->h:Ljava/lang/Object;

    invoke-direct {v1, p1}, Lp3/a/n1/i2$s;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lp3/a/n1/i2;->s:Lp3/a/n1/i2$s;

    .line 14
    :cond_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_4

    .line 15
    iget-object p1, p0, Lp3/a/n1/i2;->c:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lp3/a/n1/i2$t;

    invoke-direct {v2, p0, v1}, Lp3/a/n1/i2$t;-><init>(Lp3/a/n1/i2;Lp3/a/n1/i2$s;)V

    iget-object v3, p0, Lp3/a/n1/i2;->f:Lp3/a/n1/t0;

    iget-wide v3, v3, Lp3/a/n1/t0;->b:J

    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 16
    invoke-interface {p1, v2, v3, v4, v5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    .line 17
    invoke-virtual {v1, p1}, Lp3/a/n1/i2$s;->b(Ljava/util/concurrent/Future;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 18
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 19
    :cond_4
    :goto_0
    invoke-virtual {p0, v0}, Lp3/a/n1/i2;->t(Lp3/a/n1/i2$x;)V

    return-void

    :catchall_1
    move-exception v0

    .line 20
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public final q(Lp3/a/n1/i2$x;)Ljava/lang/Runnable;
    .locals 18

    move-object/from16 v7, p0

    .line 1
    iget-object v8, v7, Lp3/a/n1/i2;->h:Ljava/lang/Object;

    monitor-enter v8

    .line 2
    :try_start_0
    iget-object v0, v7, Lp3/a/n1/i2;->n:Lp3/a/n1/i2$v;

    iget-object v0, v0, Lp3/a/n1/i2$v;->f:Lp3/a/n1/i2$x;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    monitor-exit v8

    return-object v1

    .line 4
    :cond_0
    iget-object v0, v7, Lp3/a/n1/i2;->n:Lp3/a/n1/i2$v;

    iget-object v3, v0, Lp3/a/n1/i2$v;->c:Ljava/util/Collection;

    .line 5
    iget-object v0, v7, Lp3/a/n1/i2;->n:Lp3/a/n1/i2$v;

    .line 6
    iget-object v2, v0, Lp3/a/n1/i2$v;->f:Lp3/a/n1/i2$x;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v2, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v5

    :goto_0
    const-string v6, "Already committed"

    invoke-static {v2, v6}, Ln3/g0/y;->checkState1(ZLjava/lang/Object;)V

    .line 7
    iget-object v2, v0, Lp3/a/n1/i2$v;->b:Ljava/util/List;

    .line 8
    iget-object v6, v0, Lp3/a/n1/i2$v;->c:Ljava/util/Collection;

    move-object/from16 v15, p1

    invoke-interface {v6, v15}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 9
    invoke-static/range {p1 .. p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    move-object v10, v1

    move-object v11, v2

    goto :goto_1

    .line 10
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    move-object v10, v2

    move-object v11, v4

    move v4, v5

    .line 11
    :goto_1
    new-instance v2, Lp3/a/n1/i2$v;

    iget-object v12, v0, Lp3/a/n1/i2$v;->d:Ljava/util/Collection;

    iget-boolean v14, v0, Lp3/a/n1/i2$v;->g:Z

    iget-boolean v5, v0, Lp3/a/n1/i2$v;->h:Z

    iget v0, v0, Lp3/a/n1/i2$v;->e:I

    move-object v9, v2

    move-object/from16 v13, p1

    move v15, v4

    move/from16 v16, v5

    move/from16 v17, v0

    invoke-direct/range {v9 .. v17}, Lp3/a/n1/i2$v;-><init>(Ljava/util/List;Ljava/util/Collection;Ljava/util/Collection;Lp3/a/n1/i2$x;ZZZI)V

    .line 12
    iput-object v2, v7, Lp3/a/n1/i2;->n:Lp3/a/n1/i2$v;

    .line 13
    iget-object v0, v7, Lp3/a/n1/i2;->i:Lp3/a/n1/i2$r;

    iget-wide v4, v7, Lp3/a/n1/i2;->p:J

    neg-long v4, v4

    .line 14
    iget-object v0, v0, Lp3/a/n1/i2$r;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 15
    iget-object v0, v7, Lp3/a/n1/i2;->r:Lp3/a/n1/i2$s;

    if-eqz v0, :cond_3

    .line 16
    invoke-virtual {v0}, Lp3/a/n1/i2$s;->a()Ljava/util/concurrent/Future;

    move-result-object v0

    .line 17
    iput-object v1, v7, Lp3/a/n1/i2;->r:Lp3/a/n1/i2$s;

    move-object v5, v0

    goto :goto_2

    :cond_3
    move-object v5, v1

    .line 18
    :goto_2
    iget-object v0, v7, Lp3/a/n1/i2;->s:Lp3/a/n1/i2$s;

    if-eqz v0, :cond_4

    .line 19
    invoke-virtual {v0}, Lp3/a/n1/i2$s;->a()Ljava/util/concurrent/Future;

    move-result-object v0

    .line 20
    iput-object v1, v7, Lp3/a/n1/i2;->s:Lp3/a/n1/i2$s;

    move-object v6, v0

    goto :goto_3

    :cond_4
    move-object v6, v1

    .line 21
    :goto_3
    new-instance v0, Lp3/a/n1/i2$c;

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    invoke-direct/range {v1 .. v6}, Lp3/a/n1/i2$c;-><init>(Lp3/a/n1/i2;Ljava/util/Collection;Lp3/a/n1/i2$x;Ljava/util/concurrent/Future;Ljava/util/concurrent/Future;)V

    monitor-exit v8

    return-object v0

    :catchall_0
    move-exception v0

    .line 22
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final r(I)Lp3/a/n1/i2$x;
    .locals 4

    .line 1
    new-instance v0, Lp3/a/n1/i2$x;

    invoke-direct {v0, p1}, Lp3/a/n1/i2$x;-><init>(I)V

    .line 2
    new-instance v1, Lp3/a/n1/i2$q;

    invoke-direct {v1, p0, v0}, Lp3/a/n1/i2$q;-><init>(Lp3/a/n1/i2;Lp3/a/n1/i2$x;)V

    .line 3
    new-instance v2, Lp3/a/n1/i2$a;

    invoke-direct {v2, p0, v1}, Lp3/a/n1/i2$a;-><init>(Lp3/a/n1/i2;Lp3/a/j;)V

    .line 4
    iget-object v1, p0, Lp3/a/n1/i2;->d:Lp3/a/o0;

    .line 5
    new-instance v3, Lp3/a/o0;

    invoke-direct {v3}, Lp3/a/o0;-><init>()V

    .line 6
    invoke-virtual {v3, v1}, Lp3/a/o0;->f(Lp3/a/o0;)V

    if-lez p1, :cond_0

    .line 7
    sget-object v1, Lp3/a/n1/i2;->u:Lp3/a/o0$f;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, v1, p1}, Lp3/a/o0;->h(Lp3/a/o0$f;Ljava/lang/Object;)V

    .line 8
    :cond_0
    invoke-virtual {p0, v2, v3}, Lp3/a/n1/i2;->w(Lp3/a/j$a;Lp3/a/o0;)Lp3/a/n1/s;

    move-result-object p1

    iput-object p1, v0, Lp3/a/n1/i2$x;->a:Lp3/a/n1/s;

    return-object v0
.end method

.method public final s(Lp3/a/n1/i2$p;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lp3/a/n1/i2;->h:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lp3/a/n1/i2;->n:Lp3/a/n1/i2$v;

    iget-boolean v1, v1, Lp3/a/n1/i2$v;->a:Z

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lp3/a/n1/i2;->n:Lp3/a/n1/i2$v;

    iget-object v1, v1, Lp3/a/n1/i2$v;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    iget-object v1, p0, Lp3/a/n1/i2;->n:Lp3/a/n1/i2$v;

    iget-object v1, v1, Lp3/a/n1/i2$v;->c:Ljava/util/Collection;

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp3/a/n1/i2$x;

    .line 7
    invoke-interface {p1, v1}, Lp3/a/n1/i2$p;->a(Lp3/a/n1/i2$x;)V

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 8
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final t(Lp3/a/n1/i2$x;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    .line 1
    :goto_0
    iget-object v3, p0, Lp3/a/n1/i2;->h:Ljava/lang/Object;

    monitor-enter v3

    .line 2
    :try_start_0
    iget-object v4, p0, Lp3/a/n1/i2;->n:Lp3/a/n1/i2$v;

    .line 3
    iget-object v5, v4, Lp3/a/n1/i2$v;->f:Lp3/a/n1/i2$x;

    if-eqz v5, :cond_0

    if-eq v5, p1, :cond_0

    .line 4
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p1, p1, Lp3/a/n1/i2$x;->a:Lp3/a/n1/s;

    sget-object v0, Lp3/a/n1/i2;->w:Lp3/a/g1;

    invoke-interface {p1, v0}, Lp3/a/n1/s;->h(Lp3/a/g1;)V

    return-void

    .line 6
    :cond_0
    :try_start_1
    iget-object v5, v4, Lp3/a/n1/i2$v;->b:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ne v2, v5, :cond_1

    .line 7
    invoke-virtual {v4, p1}, Lp3/a/n1/i2$v;->f(Lp3/a/n1/i2$x;)Lp3/a/n1/i2$v;

    move-result-object p1

    iput-object p1, p0, Lp3/a/n1/i2;->n:Lp3/a/n1/i2$v;

    .line 8
    monitor-exit v3

    return-void

    .line 9
    :cond_1
    iget-boolean v5, p1, Lp3/a/n1/i2$x;->b:Z

    if-eqz v5, :cond_2

    .line 10
    monitor-exit v3

    return-void

    :cond_2
    add-int/lit16 v5, v2, 0x80

    .line 11
    iget-object v6, v4, Lp3/a/n1/i2$v;->b:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-nez v1, :cond_3

    .line 12
    new-instance v1, Ljava/util/ArrayList;

    iget-object v4, v4, Lp3/a/n1/i2$v;->b:Ljava/util/List;

    invoke-interface {v4, v2, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_1

    .line 13
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 14
    iget-object v4, v4, Lp3/a/n1/i2$v;->b:Ljava/util/List;

    invoke-interface {v4, v2, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 15
    :goto_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lp3/a/n1/i2$p;

    .line 17
    iget-object v4, p0, Lp3/a/n1/i2;->n:Lp3/a/n1/i2$v;

    .line 18
    iget-object v6, v4, Lp3/a/n1/i2$v;->f:Lp3/a/n1/i2$x;

    if-eqz v6, :cond_4

    if-eq v6, p1, :cond_4

    goto :goto_3

    .line 19
    :cond_4
    iget-boolean v4, v4, Lp3/a/n1/i2$v;->g:Z

    if-eqz v4, :cond_6

    if-ne v6, p1, :cond_5

    const/4 v0, 0x1

    :cond_5
    const-string p1, "substream should be CANCELLED_BECAUSE_COMMITTED already"

    .line 20
    invoke-static {v0, p1}, Ln3/g0/y;->checkState1(ZLjava/lang/Object;)V

    return-void

    .line 21
    :cond_6
    invoke-interface {v3, p1}, Lp3/a/n1/i2$p;->a(Lp3/a/n1/i2$x;)V

    goto :goto_2

    :cond_7
    :goto_3
    move v2, v5

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 22
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final u()V
    .locals 3

    .line 1
    iget-object v0, p0, Lp3/a/n1/i2;->h:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lp3/a/n1/i2;->s:Lp3/a/n1/i2$s;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Lp3/a/n1/i2$s;->a()Ljava/util/concurrent/Future;

    move-result-object v1

    .line 4
    iput-object v2, p0, Lp3/a/n1/i2;->s:Lp3/a/n1/i2$s;

    move-object v2, v1

    .line 5
    :cond_0
    iget-object v1, p0, Lp3/a/n1/i2;->n:Lp3/a/n1/i2$v;

    invoke-virtual {v1}, Lp3/a/n1/i2$v;->b()Lp3/a/n1/i2$v;

    move-result-object v1

    iput-object v1, p0, Lp3/a/n1/i2;->n:Lp3/a/n1/i2$v;

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    .line 7
    invoke-interface {v2, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 8
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final v(Lp3/a/n1/i2$v;)Z
    .locals 2

    .line 1
    iget-object v0, p1, Lp3/a/n1/i2$v;->f:Lp3/a/n1/i2$x;

    if-nez v0, :cond_0

    iget v0, p1, Lp3/a/n1/i2$v;->e:I

    iget-object v1, p0, Lp3/a/n1/i2;->f:Lp3/a/n1/t0;

    iget v1, v1, Lp3/a/n1/t0;->a:I

    if-ge v0, v1, :cond_0

    iget-boolean p1, p1, Lp3/a/n1/i2$v;->h:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public abstract w(Lp3/a/j$a;Lp3/a/o0;)Lp3/a/n1/s;
.end method

.method public abstract x()V
.end method

.method public abstract y()Lp3/a/g1;
.end method

.method public final z(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TReqT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lp3/a/n1/i2;->n:Lp3/a/n1/i2$v;

    .line 2
    iget-boolean v1, v0, Lp3/a/n1/i2$v;->a:Z

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, v0, Lp3/a/n1/i2$v;->f:Lp3/a/n1/i2$x;

    iget-object v0, v0, Lp3/a/n1/i2$x;->a:Lp3/a/n1/s;

    iget-object v1, p0, Lp3/a/n1/i2;->a:Lp3/a/p0;

    .line 4
    iget-object v1, v1, Lp3/a/p0;->d:Lp3/a/p0$c;

    invoke-interface {v1, p1}, Lp3/a/p0$c;->a(Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object p1

    .line 5
    invoke-interface {v0, p1}, Lp3/a/n1/s2;->c(Ljava/io/InputStream;)V

    return-void

    .line 6
    :cond_0
    new-instance v0, Lp3/a/n1/i2$n;

    invoke-direct {v0, p0, p1}, Lp3/a/n1/i2$n;-><init>(Lp3/a/n1/i2;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lp3/a/n1/i2;->s(Lp3/a/n1/i2$p;)V

    return-void
.end method
