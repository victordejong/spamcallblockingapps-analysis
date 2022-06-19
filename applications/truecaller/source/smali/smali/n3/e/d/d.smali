.class public final synthetic Ln3/e/d/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/e/d/v$a;


# instance fields
.field public final synthetic a:Landroidx/camera/view/PreviewView$a;

.field public final synthetic b:Ln3/e/d/t;

.field public final synthetic c:Ln3/e/b/j1/b0;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/view/PreviewView$a;Ln3/e/d/t;Ln3/e/b/j1/b0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/e/d/d;->a:Landroidx/camera/view/PreviewView$a;

    iput-object p2, p0, Ln3/e/d/d;->b:Ln3/e/d/t;

    iput-object p3, p0, Ln3/e/d/d;->c:Ln3/e/b/j1/b0;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-object v0, p0, Ln3/e/d/d;->a:Landroidx/camera/view/PreviewView$a;

    iget-object v1, p0, Ln3/e/d/d;->b:Ln3/e/d/t;

    iget-object v2, p0, Ln3/e/d/d;->c:Ln3/e/b/j1/b0;

    .line 1
    iget-object v0, v0, Landroidx/camera/view/PreviewView$a;->a:Landroidx/camera/view/PreviewView;

    iget-object v0, v0, Landroidx/camera/view/PreviewView;->e:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Landroidx/camera/view/PreviewView$e;->a:Landroidx/camera/view/PreviewView$e;

    invoke-virtual {v1, v0}, Ln3/e/d/t;->a(Landroidx/camera/view/PreviewView$e;)V

    .line 3
    :cond_0
    iget-object v0, v1, Ln3/e/d/t;->e:Lcom/google/common/util/concurrent/ListenableFuture;

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0, v4}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 5
    iput-object v3, v1, Ln3/e/d/t;->e:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 6
    :cond_1
    invoke-interface {v2}, Ln3/e/b/j1/b0;->e()Ln3/e/b/j1/c1;

    move-result-object v0

    check-cast v0, Ln3/e/b/j1/x0;

    .line 7
    iget-object v2, v0, Ln3/e/b/j1/x0;->b:Ljava/util/Map;

    monitor-enter v2

    .line 8
    :try_start_0
    iget-object v3, v0, Ln3/e/b/j1/x0;->b:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/e/b/j1/x0$a;

    if-eqz v1, :cond_2

    .line 9
    iget-object v3, v1, Ln3/e/b/j1/x0$a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 10
    invoke-static {}, Landroid/support/v4/media/session/MediaSessionCompat;->O0()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v3

    new-instance v4, Ln3/e/b/j1/v0;

    invoke-direct {v4, v0, v1}, Ln3/e/b/j1/v0;-><init>(Ln3/e/b/j1/x0;Ln3/e/b/j1/x0$a;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 11
    :cond_2
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
