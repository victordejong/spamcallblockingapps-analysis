.class public final Lio/grpc/r$a;
.super Lio/grpc/r;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final m:Lio/grpc/t;

.field private final n:Lio/grpc/r;

.field private o:Z

.field private p:Ljava/lang/Throwable;

.field private q:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field


# virtual methods
.method public C(Ljava/lang/Throwable;)Z
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lio/grpc/r$a;->o:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 3
    iput-boolean v1, p0, Lio/grpc/r$a;->o:Z

    .line 4
    iget-object v0, p0, Lio/grpc/r$a;->q:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lio/grpc/r$a;->q:Ljava/util/concurrent/ScheduledFuture;

    .line 7
    :cond_0
    iput-object p1, p0, Lio/grpc/r$a;->p:Ljava/lang/Throwable;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 8
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {p0}, Lio/grpc/r;->r()V

    :cond_2
    return v1

    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public b()Lio/grpc/r;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/r$a;->n:Lio/grpc/r;

    invoke-virtual {v0}, Lio/grpc/r;->b()Lio/grpc/r;

    move-result-object v0

    return-object v0
.end method

.method c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lio/grpc/r$a;->C(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public f()Ljava/lang/Throwable;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/r$a;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/grpc/r$a;->p:Ljava/lang/Throwable;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public j(Lio/grpc/r;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/r$a;->n:Lio/grpc/r;

    invoke-virtual {v0, p1}, Lio/grpc/r;->j(Lio/grpc/r;)V

    return-void
.end method

.method public l()Lio/grpc/t;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/r$a;->m:Lio/grpc/t;

    return-object v0
.end method

.method public o()Z
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lio/grpc/r$a;->o:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3
    monitor-exit p0

    return v1

    .line 4
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-super {p0}, Lio/grpc/r;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-super {p0}, Lio/grpc/r;->f()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/r$a;->C(Ljava/lang/Throwable;)Z

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
