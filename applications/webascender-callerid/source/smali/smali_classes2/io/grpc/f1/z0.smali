.class public Lio/grpc/f1/z0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/f1/z0$c;,
        Lio/grpc/f1/z0$d;,
        Lio/grpc/f1/z0$e;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/ScheduledExecutorService;

.field private final b:Lcom/google/common/base/q;

.field private final c:Lio/grpc/f1/z0$d;

.field private final d:Z

.field private e:Lio/grpc/f1/z0$e;

.field private f:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private g:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private final h:Ljava/lang/Runnable;

.field private final i:Ljava/lang/Runnable;

.field private final j:J

.field private final k:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    .line 2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    return-void
.end method

.method public constructor <init>(Lio/grpc/f1/z0$d;Ljava/util/concurrent/ScheduledExecutorService;JJZ)V
    .locals 9

    .line 1
    invoke-static {}, Lcom/google/common/base/q;->c()Lcom/google/common/base/q;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p3

    move-wide v6, p5

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lio/grpc/f1/z0;-><init>(Lio/grpc/f1/z0$d;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/common/base/q;JJZ)V

    return-void
.end method

.method constructor <init>(Lio/grpc/f1/z0$d;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/common/base/q;JJZ)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v0, Lio/grpc/f1/z0$e;->IDLE:Lio/grpc/f1/z0$e;

    iput-object v0, p0, Lio/grpc/f1/z0;->e:Lio/grpc/f1/z0$e;

    .line 4
    new-instance v0, Lio/grpc/f1/a1;

    new-instance v1, Lio/grpc/f1/z0$a;

    invoke-direct {v1, p0}, Lio/grpc/f1/z0$a;-><init>(Lio/grpc/f1/z0;)V

    invoke-direct {v0, v1}, Lio/grpc/f1/a1;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lio/grpc/f1/z0;->h:Ljava/lang/Runnable;

    .line 5
    new-instance v0, Lio/grpc/f1/a1;

    new-instance v1, Lio/grpc/f1/z0$b;

    invoke-direct {v1, p0}, Lio/grpc/f1/z0$b;-><init>(Lio/grpc/f1/z0;)V

    invoke-direct {v0, v1}, Lio/grpc/f1/a1;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lio/grpc/f1/z0;->i:Ljava/lang/Runnable;

    const-string v0, "keepAlivePinger"

    .line 6
    invoke-static {p1, v0}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lio/grpc/f1/z0$d;

    iput-object p1, p0, Lio/grpc/f1/z0;->c:Lio/grpc/f1/z0$d;

    const-string p1, "scheduler"

    .line 7
    invoke-static {p2, p1}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p2, p0, Lio/grpc/f1/z0;->a:Ljava/util/concurrent/ScheduledExecutorService;

    const-string p1, "stopwatch"

    .line 8
    invoke-static {p3, p1}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, p3

    check-cast p1, Lcom/google/common/base/q;

    iput-object p1, p0, Lio/grpc/f1/z0;->b:Lcom/google/common/base/q;

    .line 9
    iput-wide p4, p0, Lio/grpc/f1/z0;->j:J

    .line 10
    iput-wide p6, p0, Lio/grpc/f1/z0;->k:J

    .line 11
    iput-boolean p8, p0, Lio/grpc/f1/z0;->d:Z

    .line 12
    invoke-virtual {p3}, Lcom/google/common/base/q;->f()Lcom/google/common/base/q;

    invoke-virtual {p3}, Lcom/google/common/base/q;->g()Lcom/google/common/base/q;

    return-void
.end method

.method static synthetic a(Lio/grpc/f1/z0;)Lio/grpc/f1/z0$e;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/grpc/f1/z0;->e:Lio/grpc/f1/z0$e;

    return-object p0
.end method

.method static synthetic b(Lio/grpc/f1/z0;Lio/grpc/f1/z0$e;)Lio/grpc/f1/z0$e;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/f1/z0;->e:Lio/grpc/f1/z0$e;

    return-object p1
.end method

.method static synthetic c(Lio/grpc/f1/z0;)Lio/grpc/f1/z0$d;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/grpc/f1/z0;->c:Lio/grpc/f1/z0$d;

    return-object p0
.end method

.method static synthetic d(Lio/grpc/f1/z0;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/f1/z0;->g:Ljava/util/concurrent/ScheduledFuture;

    return-object p1
.end method

.method static synthetic e(Lio/grpc/f1/z0;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/grpc/f1/z0;->f:Ljava/util/concurrent/ScheduledFuture;

    return-object p1
.end method

.method static synthetic f(Lio/grpc/f1/z0;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/grpc/f1/z0;->h:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic g(Lio/grpc/f1/z0;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/grpc/f1/z0;->k:J

    return-wide v0
.end method

.method static synthetic h(Lio/grpc/f1/z0;)Ljava/util/concurrent/ScheduledExecutorService;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/grpc/f1/z0;->a:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method static synthetic i(Lio/grpc/f1/z0;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/grpc/f1/z0;->i:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic j(Lio/grpc/f1/z0;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/grpc/f1/z0;->j:J

    return-wide v0
.end method

.method static synthetic k(Lio/grpc/f1/z0;)Lcom/google/common/base/q;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/grpc/f1/z0;->b:Lcom/google/common/base/q;

    return-object p0
.end method


# virtual methods
.method public declared-synchronized l()V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/grpc/f1/z0;->b:Lcom/google/common/base/q;

    invoke-virtual {v0}, Lcom/google/common/base/q;->f()Lcom/google/common/base/q;

    invoke-virtual {v0}, Lcom/google/common/base/q;->g()Lcom/google/common/base/q;

    .line 2
    iget-object v0, p0, Lio/grpc/f1/z0;->e:Lio/grpc/f1/z0$e;

    sget-object v1, Lio/grpc/f1/z0$e;->PING_SCHEDULED:Lio/grpc/f1/z0$e;

    if-ne v0, v1, :cond_0

    .line 3
    sget-object v0, Lio/grpc/f1/z0$e;->PING_DELAYED:Lio/grpc/f1/z0$e;

    iput-object v0, p0, Lio/grpc/f1/z0;->e:Lio/grpc/f1/z0$e;

    goto :goto_0

    .line 4
    :cond_0
    sget-object v2, Lio/grpc/f1/z0$e;->PING_SENT:Lio/grpc/f1/z0$e;

    if-eq v0, v2, :cond_1

    sget-object v2, Lio/grpc/f1/z0$e;->IDLE_AND_PING_SENT:Lio/grpc/f1/z0$e;

    if-ne v0, v2, :cond_5

    .line 5
    :cond_1
    iget-object v0, p0, Lio/grpc/f1/z0;->f:Ljava/util/concurrent/ScheduledFuture;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 6
    invoke-interface {v0, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 7
    :cond_2
    iget-object v0, p0, Lio/grpc/f1/z0;->e:Lio/grpc/f1/z0$e;

    sget-object v3, Lio/grpc/f1/z0$e;->IDLE_AND_PING_SENT:Lio/grpc/f1/z0$e;

    if-ne v0, v3, :cond_3

    .line 8
    sget-object v0, Lio/grpc/f1/z0$e;->IDLE:Lio/grpc/f1/z0$e;

    iput-object v0, p0, Lio/grpc/f1/z0;->e:Lio/grpc/f1/z0$e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit p0

    return-void

    .line 10
    :cond_3
    :try_start_1
    iput-object v1, p0, Lio/grpc/f1/z0;->e:Lio/grpc/f1/z0$e;

    .line 11
    iget-object v0, p0, Lio/grpc/f1/z0;->g:Ljava/util/concurrent/ScheduledFuture;

    if-nez v0, :cond_4

    const/4 v2, 0x1

    :cond_4
    const-string v0, "There should be no outstanding pingFuture"

    invoke-static {v2, v0}, Lcom/google/common/base/m;->v(ZLjava/lang/Object;)V

    .line 12
    iget-object v0, p0, Lio/grpc/f1/z0;->a:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lio/grpc/f1/z0;->i:Ljava/lang/Runnable;

    iget-wide v2, p0, Lio/grpc/f1/z0;->j:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/f1/z0;->g:Ljava/util/concurrent/ScheduledFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    :cond_5
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized m()V
    .locals 8

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/grpc/f1/z0;->e:Lio/grpc/f1/z0$e;

    sget-object v1, Lio/grpc/f1/z0$e;->IDLE:Lio/grpc/f1/z0$e;

    if-ne v0, v1, :cond_0

    .line 2
    sget-object v0, Lio/grpc/f1/z0$e;->PING_SCHEDULED:Lio/grpc/f1/z0$e;

    iput-object v0, p0, Lio/grpc/f1/z0;->e:Lio/grpc/f1/z0$e;

    .line 3
    iget-object v0, p0, Lio/grpc/f1/z0;->g:Ljava/util/concurrent/ScheduledFuture;

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lio/grpc/f1/z0;->a:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lio/grpc/f1/z0;->i:Ljava/lang/Runnable;

    iget-wide v2, p0, Lio/grpc/f1/z0;->j:J

    iget-object v4, p0, Lio/grpc/f1/z0;->b:Lcom/google/common/base/q;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 5
    invoke-virtual {v4, v5}, Lcom/google/common/base/q;->d(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    sub-long/2addr v2, v6

    .line 6
    invoke-interface {v0, v1, v2, v3, v5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/f1/z0;->g:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0

    .line 7
    :cond_0
    sget-object v1, Lio/grpc/f1/z0$e;->IDLE_AND_PING_SENT:Lio/grpc/f1/z0$e;

    if-ne v0, v1, :cond_1

    .line 8
    sget-object v0, Lio/grpc/f1/z0$e;->PING_SENT:Lio/grpc/f1/z0$e;

    iput-object v0, p0, Lio/grpc/f1/z0;->e:Lio/grpc/f1/z0$e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized n()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lio/grpc/f1/z0;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    iget-object v0, p0, Lio/grpc/f1/z0;->e:Lio/grpc/f1/z0$e;

    sget-object v1, Lio/grpc/f1/z0$e;->PING_SCHEDULED:Lio/grpc/f1/z0$e;

    if-eq v0, v1, :cond_1

    sget-object v1, Lio/grpc/f1/z0$e;->PING_DELAYED:Lio/grpc/f1/z0$e;

    if-ne v0, v1, :cond_2

    .line 4
    :cond_1
    sget-object v0, Lio/grpc/f1/z0$e;->IDLE:Lio/grpc/f1/z0$e;

    iput-object v0, p0, Lio/grpc/f1/z0;->e:Lio/grpc/f1/z0$e;

    .line 5
    :cond_2
    iget-object v0, p0, Lio/grpc/f1/z0;->e:Lio/grpc/f1/z0$e;

    sget-object v1, Lio/grpc/f1/z0$e;->PING_SENT:Lio/grpc/f1/z0$e;

    if-ne v0, v1, :cond_3

    .line 6
    sget-object v0, Lio/grpc/f1/z0$e;->IDLE_AND_PING_SENT:Lio/grpc/f1/z0$e;

    iput-object v0, p0, Lio/grpc/f1/z0;->e:Lio/grpc/f1/z0$e;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized o()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lio/grpc/f1/z0;->d:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/grpc/f1/z0;->m()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized p()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/grpc/f1/z0;->e:Lio/grpc/f1/z0$e;

    sget-object v1, Lio/grpc/f1/z0$e;->DISCONNECTED:Lio/grpc/f1/z0$e;

    if-eq v0, v1, :cond_1

    .line 2
    iput-object v1, p0, Lio/grpc/f1/z0;->e:Lio/grpc/f1/z0$e;

    .line 3
    iget-object v0, p0, Lio/grpc/f1/z0;->f:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 5
    :cond_0
    iget-object v0, p0, Lio/grpc/f1/z0;->g:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lio/grpc/f1/z0;->g:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
