.class final Lio/grpc/f1/j1;
.super Lio/grpc/c$a;
.source "SourceFile"


# instance fields
.field private final a:Lio/grpc/f1/s;

.field private final b:Ljava/lang/Object;

.field private c:Lio/grpc/f1/q;

.field d:Z

.field e:Lio/grpc/f1/a0;


# direct methods
.method constructor <init>(Lio/grpc/f1/s;Lio/grpc/r0;Lio/grpc/q0;Lio/grpc/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/f1/s;",
            "Lio/grpc/r0<",
            "**>;",
            "Lio/grpc/q0;",
            "Lio/grpc/d;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/grpc/c$a;-><init>()V

    .line 2
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lio/grpc/f1/j1;->b:Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lio/grpc/f1/j1;->a:Lio/grpc/f1/s;

    .line 4
    invoke-static {}, Lio/grpc/r;->i()Lio/grpc/r;

    return-void
.end method

.method private b(Lio/grpc/f1/q;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lio/grpc/f1/j1;->d:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "already finalized"

    invoke-static {v0, v2}, Lcom/google/common/base/m;->v(ZLjava/lang/Object;)V

    .line 2
    iput-boolean v1, p0, Lio/grpc/f1/j1;->d:Z

    .line 3
    iget-object v0, p0, Lio/grpc/f1/j1;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v2, p0, Lio/grpc/f1/j1;->c:Lio/grpc/f1/q;

    if-nez v2, :cond_0

    .line 5
    iput-object p1, p0, Lio/grpc/f1/j1;->c:Lio/grpc/f1/q;

    .line 6
    monitor-exit v0

    return-void

    .line 7
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iget-object v0, p0, Lio/grpc/f1/j1;->e:Lio/grpc/f1/a0;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-string v0, "delayedStream is null"

    invoke-static {v1, v0}, Lcom/google/common/base/m;->v(ZLjava/lang/Object;)V

    .line 9
    iget-object v0, p0, Lio/grpc/f1/j1;->e:Lio/grpc/f1/a0;

    invoke-virtual {v0, p1}, Lio/grpc/f1/a0;->s(Lio/grpc/f1/q;)V

    return-void

    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public a(Lio/grpc/b1;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lio/grpc/b1;->p()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Cannot fail with OK status"

    invoke-static {v0, v1}, Lcom/google/common/base/m;->e(ZLjava/lang/Object;)V

    .line 2
    iget-boolean v0, p0, Lio/grpc/f1/j1;->d:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "apply() or fail() already called"

    invoke-static {v0, v1}, Lcom/google/common/base/m;->v(ZLjava/lang/Object;)V

    .line 3
    new-instance v0, Lio/grpc/f1/e0;

    invoke-direct {v0, p1}, Lio/grpc/f1/e0;-><init>(Lio/grpc/b1;)V

    invoke-direct {p0, v0}, Lio/grpc/f1/j1;->b(Lio/grpc/f1/q;)V

    return-void
.end method

.method c()Lio/grpc/f1/q;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/f1/j1;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lio/grpc/f1/j1;->c:Lio/grpc/f1/q;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lio/grpc/f1/a0;

    invoke-direct {v1}, Lio/grpc/f1/a0;-><init>()V

    iput-object v1, p0, Lio/grpc/f1/j1;->e:Lio/grpc/f1/a0;

    .line 4
    iput-object v1, p0, Lio/grpc/f1/j1;->c:Lio/grpc/f1/q;

    monitor-exit v0

    return-object v1

    .line 5
    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
