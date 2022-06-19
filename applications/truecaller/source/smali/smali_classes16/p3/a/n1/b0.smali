.class public Lp3/a/n1/b0;
.super Lp3/a/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp3/a/n1/b0$i;,
        Lp3/a/n1/b0$h;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReqT:",
        "Ljava/lang/Object;",
        "RespT:",
        "Ljava/lang/Object;",
        ">",
        "Lp3/a/f<",
        "TReqT;TRespT;>;"
    }
.end annotation


# static fields
.field public static final j:Ljava/util/logging/Logger;

.field public static final k:Lp3/a/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp3/a/f<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Lp3/a/q;

.field public volatile d:Z

.field public e:Lp3/a/f$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp3/a/f$a<",
            "TRespT;>;"
        }
    .end annotation
.end field

.field public f:Lp3/a/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp3/a/f<",
            "TReqT;TRespT;>;"
        }
    .end annotation
.end field

.field public g:Lp3/a/g1;

.field public h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public i:Lp3/a/n1/b0$i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp3/a/n1/b0$i<",
            "TRespT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lp3/a/n1/b0;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lp3/a/n1/b0;->j:Ljava/util/logging/Logger;

    .line 2
    new-instance v0, Lp3/a/n1/b0$g;

    invoke-direct {v0}, Lp3/a/n1/b0$g;-><init>()V

    sput-object v0, Lp3/a/n1/b0;->k:Lp3/a/f;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lp3/a/r;)V
    .locals 10

    .line 1
    invoke-direct {p0}, Lp3/a/f;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lp3/a/n1/b0;->h:Ljava/util/List;

    const-string v0, "callExecutor"

    .line 3
    invoke-static {p1, v0}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lp3/a/n1/b0;->b:Ljava/util/concurrent/Executor;

    const-string p1, "scheduler"

    .line 4
    invoke-static {p2, p1}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {}, Lp3/a/q;->l()Lp3/a/q;

    move-result-object p1

    iput-object p1, p0, Lp3/a/n1/b0;->c:Lp3/a/q;

    .line 6
    invoke-virtual {p1}, Lp3/a/q;->s()Lp3/a/r;

    move-result-object p1

    if-nez p3, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto/16 :goto_2

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    if-eqz p3, :cond_1

    .line 7
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p3, v2}, Lp3/a/r;->e(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_3

    .line 8
    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v4}, Lp3/a/r;->e(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v5

    cmp-long v5, v5, v0

    if-gez v5, :cond_3

    .line 9
    invoke-virtual {p1, v4}, Lp3/a/r;->e(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    .line 10
    sget-object p1, Lp3/a/n1/b0;->j:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p1, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 11
    new-instance v5, Ljava/lang/StringBuilder;

    new-array v6, v3, [Ljava/lang/Object;

    .line 12
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v2

    const-string v7, "Call timeout set to \'%d\' ns, due to context deadline."

    .line 13
    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p3, :cond_2

    const-string p3, " Explicit call timeout was not set."

    .line 14
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 15
    :cond_2
    invoke-virtual {p3, v4}, Lp3/a/r;->e(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    new-array p3, v3, [Ljava/lang/Object;

    .line 16
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, p3, v2

    const-string v4, " Explicit call timeout was \'%d\' ns."

    invoke-static {v4, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    :goto_0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 18
    :cond_3
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x1

    invoke-virtual {p1, v6, v7}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v8

    div-long/2addr v4, v8

    .line 19
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    invoke-virtual {p1, v6, v7}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v6

    rem-long/2addr v8, v6

    .line 20
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v6, 0x0

    cmp-long p3, v0, v6

    if-gez p3, :cond_4

    const-string p3, "ClientCall started after deadline exceeded. Deadline exceeded after -"

    .line 21
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    const-string p3, "Deadline exceeded after "

    .line 22
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    :goto_1
    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 24
    sget-object p3, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v2

    const-string v2, ".%09d"

    invoke-static {p3, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "s. "

    .line 25
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    new-instance p3, Lp3/a/n1/c0;

    invoke-direct {p3, p0, p1}, Lp3/a/n1/c0;-><init>(Lp3/a/n1/b0;Ljava/lang/StringBuilder;)V

    sget-object p1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    check-cast p2, Lp3/a/n1/m1$r;

    .line 27
    iget-object p2, p2, Lp3/a/n1/m1$r;->a:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p2, p3, v0, v1, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    .line 28
    :goto_2
    iput-object p1, p0, Lp3/a/n1/b0;->a:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    sget-object v0, Lp3/a/g1;->g:Lp3/a/g1;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lp3/a/g1;->i(Ljava/lang/String;)Lp3/a/g1;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "Call cancelled without message"

    .line 3
    invoke-virtual {v0, p1}, Lp3/a/g1;->i(Ljava/lang/String;)Lp3/a/g1;

    move-result-object p1

    :goto_0
    if-eqz p2, :cond_1

    .line 4
    invoke-virtual {p1, p2}, Lp3/a/g1;->h(Ljava/lang/Throwable;)Lp3/a/g1;

    move-result-object p1

    :cond_1
    const/4 p2, 0x0

    .line 5
    invoke-virtual {p0, p1, p2}, Lp3/a/n1/b0;->g(Lp3/a/g1;Z)V

    return-void
.end method

.method public final b()V
    .locals 1

    .line 1
    new-instance v0, Lp3/a/n1/b0$f;

    invoke-direct {v0, p0}, Lp3/a/n1/b0$f;-><init>(Lp3/a/n1/b0;)V

    invoke-virtual {p0, v0}, Lp3/a/n1/b0;->h(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final c(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lp3/a/n1/b0;->d:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lp3/a/n1/b0;->f:Lp3/a/f;

    invoke-virtual {v0, p1}, Lp3/a/f;->c(I)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lp3/a/n1/b0$e;

    invoke-direct {v0, p0, p1}, Lp3/a/n1/b0$e;-><init>(Lp3/a/n1/b0;I)V

    invoke-virtual {p0, v0}, Lp3/a/n1/b0;->h(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public final d(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TReqT;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lp3/a/n1/b0;->d:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lp3/a/n1/b0;->f:Lp3/a/f;

    invoke-virtual {v0, p1}, Lp3/a/f;->d(Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lp3/a/n1/b0$d;

    invoke-direct {v0, p0, p1}, Lp3/a/n1/b0$d;-><init>(Lp3/a/n1/b0;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lp3/a/n1/b0;->h(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public final e(Lp3/a/f$a;Lp3/a/o0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp3/a/f$a<",
            "TRespT;>;",
            "Lp3/a/o0;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lp3/a/n1/b0;->e:Lp3/a/f$a;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "already started"

    invoke-static {v0, v1}, Ln3/g0/y;->checkState1(ZLjava/lang/Object;)V

    .line 2
    monitor-enter p0

    :try_start_0
    const-string v0, "listener"

    .line 3
    invoke-static {p1, v0}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lp3/a/n1/b0;->e:Lp3/a/f$a;

    .line 4
    iget-object v0, p0, Lp3/a/n1/b0;->g:Lp3/a/g1;

    .line 5
    iget-boolean v1, p0, Lp3/a/n1/b0;->d:Z

    if-nez v1, :cond_1

    .line 6
    new-instance v2, Lp3/a/n1/b0$i;

    invoke-direct {v2, p1}, Lp3/a/n1/b0$i;-><init>(Lp3/a/f$a;)V

    iput-object v2, p0, Lp3/a/n1/b0;->i:Lp3/a/n1/b0$i;

    move-object p1, v2

    .line 7
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 8
    iget-object p2, p0, Lp3/a/n1/b0;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Lp3/a/n1/b0$h;

    invoke-direct {v1, p0, p1, v0}, Lp3/a/n1/b0$h;-><init>(Lp3/a/n1/b0;Lp3/a/f$a;Lp3/a/g1;)V

    invoke-interface {p2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    if-eqz v1, :cond_3

    .line 9
    iget-object v0, p0, Lp3/a/n1/b0;->f:Lp3/a/f;

    invoke-virtual {v0, p1, p2}, Lp3/a/f;->e(Lp3/a/f$a;Lp3/a/o0;)V

    goto :goto_1

    .line 10
    :cond_3
    new-instance v0, Lp3/a/n1/b0$a;

    invoke-direct {v0, p0, p1, p2}, Lp3/a/n1/b0$a;-><init>(Lp3/a/n1/b0;Lp3/a/f$a;Lp3/a/o0;)V

    invoke-virtual {p0, v0}, Lp3/a/n1/b0;->h(Ljava/lang/Runnable;)V

    :goto_1
    return-void

    :catchall_0
    move-exception p1

    .line 11
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public final g(Lp3/a/g1;Z)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lp3/a/n1/b0;->f:Lp3/a/f;

    if-nez v0, :cond_0

    .line 3
    sget-object p2, Lp3/a/n1/b0;->k:Lp3/a/f;

    .line 4
    invoke-virtual {p0, p2}, Lp3/a/n1/b0;->j(Lp3/a/f;)V

    const/4 p2, 0x0

    .line 5
    iget-object v0, p0, Lp3/a/n1/b0;->e:Lp3/a/f$a;

    .line 6
    iput-object p1, p0, Lp3/a/n1/b0;->g:Lp3/a/g1;

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 7
    monitor-exit p0

    return-void

    :cond_1
    const/4 p2, 0x1

    const/4 v0, 0x0

    .line 8
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_2

    .line 9
    new-instance p2, Lp3/a/n1/b0$c;

    invoke-direct {p2, p0, p1}, Lp3/a/n1/b0$c;-><init>(Lp3/a/n1/b0;Lp3/a/g1;)V

    invoke-virtual {p0, p2}, Lp3/a/n1/b0;->h(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    .line 10
    iget-object p2, p0, Lp3/a/n1/b0;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Lp3/a/n1/b0$h;

    invoke-direct {v1, p0, v0, p1}, Lp3/a/n1/b0$h;-><init>(Lp3/a/n1/b0;Lp3/a/f$a;Lp3/a/g1;)V

    invoke-interface {p2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 11
    :cond_3
    invoke-virtual {p0}, Lp3/a/n1/b0;->i()V

    .line 12
    :goto_1
    invoke-virtual {p0}, Lp3/a/n1/b0;->f()V

    return-void

    :catchall_0
    move-exception p1

    .line 13
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final h(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lp3/a/n1/b0;->d:Z

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lp3/a/n1/b0;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    monitor-exit p0

    return-void

    .line 5
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final i()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    :goto_0
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v1, p0, Lp3/a/n1/b0;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lp3/a/n1/b0;->h:Ljava/util/List;

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lp3/a/n1/b0;->d:Z

    .line 6
    iget-object v0, p0, Lp3/a/n1/b0;->i:Lp3/a/n1/b0$i;

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 8
    iget-object v1, p0, Lp3/a/n1/b0;->b:Ljava/util/concurrent/Executor;

    new-instance v2, Lp3/a/n1/b0$b;

    invoke-direct {v2, p0, v0}, Lp3/a/n1/b0$b;-><init>(Lp3/a/n1/b0;Lp3/a/n1/b0$i;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    .line 9
    :cond_1
    :try_start_1
    iget-object v1, p0, Lp3/a/n1/b0;->h:Ljava/util/List;

    .line 10
    iput-object v0, p0, Lp3/a/n1/b0;->h:Ljava/util/List;

    .line 11
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 13
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 14
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->clear()V

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 15
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final j(Lp3/a/f;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp3/a/f<",
            "TReqT;TRespT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lp3/a/n1/b0;->f:Lp3/a/f;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "realCall already set to %s"

    invoke-static {v2, v3, v0}, Ln3/g0/y;->checkState(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lp3/a/n1/b0;->a:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 4
    :cond_1
    iput-object p1, p0, Lp3/a/n1/b0;->f:Lp3/a/f;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Ln3/g0/y;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lp3/a/n1/b0;->f:Lp3/a/f;

    const-string v2, "realCall"

    .line 2
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 3
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
