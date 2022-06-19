.class public final Le/m/a/h/a/h/r;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultT:",
        "Ljava/lang/Object;",
        ">",
        "Le/m/a/h/a/h/r<",
        "TResultT;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Le/m/a/h/a/h/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/a/h/a/h/m<",
            "TResultT;>;"
        }
    .end annotation
.end field

.field public c:Z

.field public d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TResultT;"
        }
    .end annotation
.end field

.field public e:Ljava/lang/Exception;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Le/m/a/h/a/h/r;->a:Ljava/lang/Object;

    new-instance v0, Le/m/a/h/a/h/m;

    .line 3
    invoke-direct {v0}, Le/m/a/h/a/h/m;-><init>()V

    iput-object v0, p0, Le/m/a/h/a/h/r;->b:Le/m/a/h/a/h/m;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/concurrent/Executor;Le/m/a/h/a/h/b;)Le/m/a/h/a/h/r;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Le/m/a/h/a/h/b;",
            ")",
            "Le/m/a/h/a/h/r<",
            "TResultT;>;"
        }
    .end annotation

    iget-object v0, p0, Le/m/a/h/a/h/r;->b:Le/m/a/h/a/h/m;

    new-instance v1, Le/m/a/h/a/h/i;

    .line 1
    invoke-direct {v1, p1, p2}, Le/m/a/h/a/h/i;-><init>(Ljava/util/concurrent/Executor;Le/m/a/h/a/h/b;)V

    invoke-virtual {v0, v1}, Le/m/a/h/a/h/m;->a(Le/m/a/h/a/h/l;)V

    .line 2
    invoke-virtual {p0}, Le/m/a/h/a/h/r;->h()V

    return-object p0
.end method

.method public final b(Ljava/util/concurrent/Executor;Le/m/a/h/a/h/c;)Le/m/a/h/a/h/r;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Le/m/a/h/a/h/c<",
            "-TResultT;>;)",
            "Le/m/a/h/a/h/r<",
            "TResultT;>;"
        }
    .end annotation

    iget-object v0, p0, Le/m/a/h/a/h/r;->b:Le/m/a/h/a/h/m;

    new-instance v1, Le/m/a/h/a/h/k;

    .line 1
    invoke-direct {v1, p1, p2}, Le/m/a/h/a/h/k;-><init>(Ljava/util/concurrent/Executor;Le/m/a/h/a/h/c;)V

    invoke-virtual {v0, v1}, Le/m/a/h/a/h/m;->a(Le/m/a/h/a/h/l;)V

    .line 2
    invoke-virtual {p0}, Le/m/a/h/a/h/r;->h()V

    return-object p0
.end method

.method public final c()Ljava/lang/Exception;
    .locals 2

    iget-object v0, p0, Le/m/a/h/a/h/r;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Le/m/a/h/a/h/r;->e:Ljava/lang/Exception;

    .line 1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final d()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResultT;"
        }
    .end annotation

    iget-object v0, p0, Le/m/a/h/a/h/r;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 1
    :try_start_0
    iget-boolean v1, p0, Le/m/a/h/a/h/r;->c:Z

    const-string v2, "Task is not yet complete"

    .line 2
    invoke-static {v1, v2}, Ln3/g0/y;->H2(ZLjava/lang/Object;)V

    .line 3
    iget-object v1, p0, Le/m/a/h/a/h/r;->e:Ljava/lang/Exception;

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Le/m/a/h/a/h/r;->d:Ljava/lang/Object;

    .line 5
    monitor-exit v0

    return-object v1

    .line 6
    :cond_0
    new-instance v2, Le/m/a/h/a/h/d;

    .line 7
    invoke-direct {v2, v1}, Le/m/a/h/a/h/d;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catchall_0
    move-exception v1

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final e()Z
    .locals 3

    iget-object v0, p0, Le/m/a/h/a/h/r;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Le/m/a/h/a/h/r;->c:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Le/m/a/h/a/h/r;->e:Ljava/lang/Exception;

    if-nez v1, :cond_0

    const/4 v2, 0x1

    .line 1
    :cond_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    .line 2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final f(Ljava/lang/Exception;)V
    .locals 4

    iget-object v0, p0, Le/m/a/h/a/h/r;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 1
    :try_start_0
    iget-boolean v1, p0, Le/m/a/h/a/h/r;->c:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const-string v3, "Task is already complete"

    .line 2
    invoke-static {v1, v3}, Ln3/g0/y;->H2(ZLjava/lang/Object;)V

    .line 3
    iput-boolean v2, p0, Le/m/a/h/a/h/r;->c:Z

    iput-object p1, p0, Le/m/a/h/a/h/r;->e:Ljava/lang/Exception;

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Le/m/a/h/a/h/r;->b:Le/m/a/h/a/h/m;

    .line 5
    invoke-virtual {p1, p0}, Le/m/a/h/a/h/m;->b(Le/m/a/h/a/h/r;)V

    return-void

    :catchall_0
    move-exception p1

    .line 6
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final g(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResultT;)V"
        }
    .end annotation

    iget-object v0, p0, Le/m/a/h/a/h/r;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 1
    :try_start_0
    iget-boolean v1, p0, Le/m/a/h/a/h/r;->c:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const-string v3, "Task is already complete"

    .line 2
    invoke-static {v1, v3}, Ln3/g0/y;->H2(ZLjava/lang/Object;)V

    .line 3
    iput-boolean v2, p0, Le/m/a/h/a/h/r;->c:Z

    iput-object p1, p0, Le/m/a/h/a/h/r;->d:Ljava/lang/Object;

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Le/m/a/h/a/h/r;->b:Le/m/a/h/a/h/m;

    .line 5
    invoke-virtual {p1, p0}, Le/m/a/h/a/h/m;->b(Le/m/a/h/a/h/r;)V

    return-void

    :catchall_0
    move-exception p1

    .line 6
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final h()V
    .locals 2

    iget-object v0, p0, Le/m/a/h/a/h/r;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Le/m/a/h/a/h/r;->c:Z

    if-nez v1, :cond_0

    .line 1
    monitor-exit v0

    return-void

    .line 2
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Le/m/a/h/a/h/r;->b:Le/m/a/h/a/h/m;

    .line 3
    invoke-virtual {v0, p0}, Le/m/a/h/a/h/m;->b(Le/m/a/h/a/h/r;)V

    return-void

    :catchall_0
    move-exception v1

    .line 4
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
