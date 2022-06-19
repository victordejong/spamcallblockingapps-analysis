.class public Lio/grpc/f1/s0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final g:Ljava/util/logging/Logger;


# instance fields
.field private final a:J

.field private final b:Lcom/google/common/base/q;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/grpc/f1/s$a;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Ljava/lang/Throwable;

.field private f:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lio/grpc/f1/s0;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/f1/s0;->g:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(JLcom/google/common/base/q;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lio/grpc/f1/s0;->c:Ljava/util/Map;

    .line 3
    iput-wide p1, p0, Lio/grpc/f1/s0;->a:J

    .line 4
    iput-object p3, p0, Lio/grpc/f1/s0;->b:Lcom/google/common/base/q;

    return-void
.end method

.method private static b(Lio/grpc/f1/s$a;J)Ljava/lang/Runnable;
    .locals 1

    .line 1
    new-instance v0, Lio/grpc/f1/s0$a;

    invoke-direct {v0, p0, p1, p2}, Lio/grpc/f1/s0$a;-><init>(Lio/grpc/f1/s$a;J)V

    return-object v0
.end method

.method private static c(Lio/grpc/f1/s$a;Ljava/lang/Throwable;)Ljava/lang/Runnable;
    .locals 1

    .line 1
    new-instance v0, Lio/grpc/f1/s0$b;

    invoke-direct {v0, p0, p1}, Lio/grpc/f1/s0$b;-><init>(Lio/grpc/f1/s$a;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private static e(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 2
    sget-object p1, Lio/grpc/f1/s0;->g:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v1, "Failed to execute PingCallback"

    invoke-virtual {p1, v0, v1, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static g(Lio/grpc/f1/s$a;Ljava/util/concurrent/Executor;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-static {p0, p2}, Lio/grpc/f1/s0;->c(Lio/grpc/f1/s$a;Ljava/lang/Throwable;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-static {p1, p0}, Lio/grpc/f1/s0;->e(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public a(Lio/grpc/f1/s$a;Ljava/util/concurrent/Executor;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lio/grpc/f1/s0;->d:Z

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lio/grpc/f1/s0;->c:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    monitor-exit p0

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lio/grpc/f1/s0;->e:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    invoke-static {p1, v0}, Lio/grpc/f1/s0;->c(Lio/grpc/f1/s$a;Ljava/lang/Throwable;)Ljava/lang/Runnable;

    move-result-object p1

    goto :goto_0

    .line 6
    :cond_1
    iget-wide v0, p0, Lio/grpc/f1/s0;->f:J

    invoke-static {p1, v0, v1}, Lio/grpc/f1/s0;->b(Lio/grpc/f1/s$a;J)Ljava/lang/Runnable;

    move-result-object p1

    .line 7
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-static {p2, p1}, Lio/grpc/f1/s0;->e(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 9
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public d()Z
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lio/grpc/f1/s0;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lio/grpc/f1/s0;->d:Z

    .line 5
    iget-object v1, p0, Lio/grpc/f1/s0;->b:Lcom/google/common/base/q;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2}, Lcom/google/common/base/q;->d(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    iput-wide v1, p0, Lio/grpc/f1/s0;->f:J

    .line 6
    iget-object v3, p0, Lio/grpc/f1/s0;->c:Ljava/util/Map;

    const/4 v4, 0x0

    .line 7
    iput-object v4, p0, Lio/grpc/f1/s0;->c:Ljava/util/Map;

    .line 8
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 10
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/Executor;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/grpc/f1/s$a;

    invoke-static {v4, v1, v2}, Lio/grpc/f1/s0;->b(Lio/grpc/f1/s$a;J)Ljava/lang/Runnable;

    move-result-object v4

    invoke-static {v5, v4}, Lio/grpc/f1/s0;->e(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    return v0

    :catchall_0
    move-exception v0

    .line 11
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public f(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lio/grpc/f1/s0;->d:Z

    if-eqz v0, :cond_0

    .line 3
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lio/grpc/f1/s0;->d:Z

    .line 5
    iput-object p1, p0, Lio/grpc/f1/s0;->e:Ljava/lang/Throwable;

    .line 6
    iget-object v0, p0, Lio/grpc/f1/s0;->c:Ljava/util/Map;

    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Lio/grpc/f1/s0;->c:Ljava/util/Map;

    .line 8
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 10
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/f1/s$a;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    invoke-static {v2, v1, p1}, Lio/grpc/f1/s0;->g(Lio/grpc/f1/s$a;Ljava/util/concurrent/Executor;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
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

.method public h()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/grpc/f1/s0;->a:J

    return-wide v0
.end method
