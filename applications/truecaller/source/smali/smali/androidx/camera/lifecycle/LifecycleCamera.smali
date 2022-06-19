.class public final Landroidx/camera/lifecycle/LifecycleCamera;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/v/a0;
.implements Ln3/e/b/h0;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ln3/v/b0;

.field public final c:Ln3/e/b/k1/c;

.field public d:Z


# direct methods
.method public constructor <init>(Ln3/v/b0;Ln3/e/b/k1/c;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/camera/lifecycle/LifecycleCamera;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Landroidx/camera/lifecycle/LifecycleCamera;->d:Z

    .line 4
    iput-object p1, p0, Landroidx/camera/lifecycle/LifecycleCamera;->b:Ln3/v/b0;

    .line 5
    iput-object p2, p0, Landroidx/camera/lifecycle/LifecycleCamera;->c:Ln3/e/b/k1/c;

    .line 6
    invoke-interface {p1}, Ln3/v/b0;->getLifecycle()Ln3/v/u;

    move-result-object v1

    check-cast v1, Ln3/v/c0;

    .line 7
    iget-object v1, v1, Ln3/v/c0;->c:Ln3/v/u$b;

    .line 8
    sget-object v2, Ln3/v/u$b;->d:Ln3/v/u$b;

    .line 9
    invoke-virtual {v1, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {p2}, Ln3/e/b/k1/c;->f()V

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p2}, Ln3/e/b/k1/c;->k()V

    .line 12
    :goto_0
    invoke-interface {p1}, Ln3/v/b0;->getLifecycle()Ln3/v/u;

    move-result-object p1

    invoke-virtual {p1, p0}, Ln3/v/u;->a(Ln3/v/a0;)V

    return-void
.end method


# virtual methods
.method public a()Ln3/e/b/l0;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/camera/lifecycle/LifecycleCamera;->c:Ln3/e/b/k1/c;

    invoke-virtual {v0}, Ln3/e/b/k1/c;->a()Ln3/e/b/l0;

    move-result-object v0

    return-object v0
.end method

.method public b()Ln3/e/b/i0;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/camera/lifecycle/LifecycleCamera;->c:Ln3/e/b/k1/c;

    invoke-virtual {v0}, Ln3/e/b/k1/c;->b()Ln3/e/b/i0;

    move-result-object v0

    return-object v0
.end method

.method public c()Ln3/v/b0;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/camera/lifecycle/LifecycleCamera;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroidx/camera/lifecycle/LifecycleCamera;->b:Ln3/v/b0;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public f()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ln3/e/b/g1;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/camera/lifecycle/LifecycleCamera;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Landroidx/camera/lifecycle/LifecycleCamera;->c:Ln3/e/b/k1/c;

    invoke-virtual {v1}, Ln3/e/b/k1/c;->l()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public j()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/camera/lifecycle/LifecycleCamera;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/lifecycle/LifecycleCamera;->d:Z

    if-eqz v1, :cond_0

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_0
    iget-object v1, p0, Landroidx/camera/lifecycle/LifecycleCamera;->b:Ln3/v/b0;

    invoke-virtual {p0, v1}, Landroidx/camera/lifecycle/LifecycleCamera;->onStop(Ln3/v/b0;)V

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Landroidx/camera/lifecycle/LifecycleCamera;->d:Z

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public k()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/camera/lifecycle/LifecycleCamera;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Landroidx/camera/lifecycle/LifecycleCamera;->d:Z

    if-nez v1, :cond_0

    .line 3
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Landroidx/camera/lifecycle/LifecycleCamera;->d:Z

    .line 5
    iget-object v2, p0, Landroidx/camera/lifecycle/LifecycleCamera;->b:Ln3/v/b0;

    invoke-interface {v2}, Ln3/v/b0;->getLifecycle()Ln3/v/u;

    move-result-object v2

    check-cast v2, Ln3/v/c0;

    .line 6
    iget-object v2, v2, Ln3/v/c0;->c:Ln3/v/u$b;

    .line 7
    sget-object v3, Ln3/v/u$b;->d:Ln3/v/u$b;

    .line 8
    invoke-virtual {v2, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    if-ltz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-eqz v1, :cond_2

    .line 9
    iget-object v1, p0, Landroidx/camera/lifecycle/LifecycleCamera;->b:Ln3/v/b0;

    invoke-virtual {p0, v1}, Landroidx/camera/lifecycle/LifecycleCamera;->onStart(Ln3/v/b0;)V

    .line 10
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onDestroy(Ln3/v/b0;)V
    .locals 2
    .annotation runtime Ln3/v/m0;
        value = .enum Ln3/v/u$a;->ON_DESTROY:Ln3/v/u$a;
    .end annotation

    .line 1
    iget-object p1, p0, Landroidx/camera/lifecycle/LifecycleCamera;->a:Ljava/lang/Object;

    monitor-enter p1

    .line 2
    :try_start_0
    iget-object v0, p0, Landroidx/camera/lifecycle/LifecycleCamera;->c:Ln3/e/b/k1/c;

    invoke-virtual {v0}, Ln3/e/b/k1/c;->l()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln3/e/b/k1/c;->m(Ljava/util/Collection;)V

    .line 3
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onStart(Ln3/v/b0;)V
    .locals 1
    .annotation runtime Ln3/v/m0;
        value = .enum Ln3/v/u$a;->ON_START:Ln3/v/u$a;
    .end annotation

    .line 1
    iget-object p1, p0, Landroidx/camera/lifecycle/LifecycleCamera;->a:Ljava/lang/Object;

    monitor-enter p1

    .line 2
    :try_start_0
    iget-boolean v0, p0, Landroidx/camera/lifecycle/LifecycleCamera;->d:Z

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Landroidx/camera/lifecycle/LifecycleCamera;->c:Ln3/e/b/k1/c;

    invoke-virtual {v0}, Ln3/e/b/k1/c;->f()V

    .line 4
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onStop(Ln3/v/b0;)V
    .locals 1
    .annotation runtime Ln3/v/m0;
        value = .enum Ln3/v/u$a;->ON_STOP:Ln3/v/u$a;
    .end annotation

    .line 1
    iget-object p1, p0, Landroidx/camera/lifecycle/LifecycleCamera;->a:Ljava/lang/Object;

    monitor-enter p1

    .line 2
    :try_start_0
    iget-boolean v0, p0, Landroidx/camera/lifecycle/LifecycleCamera;->d:Z

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Landroidx/camera/lifecycle/LifecycleCamera;->c:Ln3/e/b/k1/c;

    invoke-virtual {v0}, Ln3/e/b/k1/c;->k()V

    .line 4
    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
