.class public Ln3/y/c/j;
.super Ln3/y/c/m$k;
.source "SourceFile"


# instance fields
.field public final synthetic f:Ln3/y/c/m;


# direct methods
.method public constructor <init>(Ln3/y/c/m;IZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/y/c/j;->f:Ln3/y/c/m;

    invoke-direct {p0, p1, p2, p3}, Ln3/y/c/m$k;-><init>(Ln3/y/c/m;IZ)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, Ln3/y/c/j;->f:Ln3/y/c/m;

    iget-object v0, v0, Ln3/y/c/m;->a:Ln3/y/c/j0;

    .line 2
    iget-object v0, v0, Ln3/y/c/j0;->k:Ln3/y/c/j0$e;

    .line 3
    iget-object v1, v0, Ln3/y/c/j0$e;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/y/c/j0$d;

    invoke-virtual {v0, v1}, Ln3/y/c/j0$e;->e(Ln3/y/c/j0$d;)V

    .line 4
    iget-object v0, v0, Ln3/y/c/j0$e;->e:Ln3/y/b/a/t0/j;

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    :try_start_1
    iget-object v1, v0, Ln3/y/b/a/t0/j;->i:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/y/b/a/t0/j$e;

    iget-object v1, v1, Ln3/y/b/a/t0/j$e;->a:Ln3/y/b/a/t0/r;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 8
    invoke-virtual {v0, v2, v1, v3, v3}, Ln3/y/b/a/t0/j;->E(IILandroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 9
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 10
    :try_start_3
    monitor-exit v0

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method
