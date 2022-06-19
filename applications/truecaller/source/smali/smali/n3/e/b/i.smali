.class public final synthetic Ln3/e/b/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ln3/e/b/p0;

.field public final synthetic b:Ln3/h/a/b;


# direct methods
.method public synthetic constructor <init>(Ln3/e/b/p0;Ln3/h/a/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/e/b/i;->a:Ln3/e/b/p0;

    iput-object p2, p0, Ln3/e/b/i;->b:Ln3/h/a/b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Ln3/e/b/i;->a:Ln3/e/b/p0;

    iget-object v1, p0, Ln3/e/b/i;->b:Ln3/h/a/b;

    .line 1
    iget-object v2, v0, Ln3/e/b/p0;->f:Landroid/os/HandlerThread;

    if-eqz v2, :cond_2

    .line 2
    iget-object v2, v0, Ln3/e/b/p0;->d:Ljava/util/concurrent/Executor;

    instance-of v3, v2, Ln3/e/b/j0;

    if-eqz v3, :cond_1

    .line 3
    check-cast v2, Ln3/e/b/j0;

    .line 4
    iget-object v3, v2, Ln3/e/b/j0;->a:Ljava/lang/Object;

    monitor-enter v3

    .line 5
    :try_start_0
    iget-object v4, v2, Ln3/e/b/j0;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v4}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v4

    if-nez v4, :cond_0

    .line 6
    iget-object v2, v2, Ln3/e/b/j0;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v2}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 7
    :cond_0
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 8
    :cond_1
    :goto_0
    iget-object v0, v0, Ln3/e/b/p0;->f:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    const/4 v0, 0x0

    .line 9
    invoke-virtual {v1, v0}, Ln3/h/a/b;->a(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method
