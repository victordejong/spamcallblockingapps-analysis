.class public Ln3/m0/c0/u/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/common/util/concurrent/ListenableFuture;

.field public final synthetic b:Landroidx/work/impl/workers/ConstraintTrackingWorker;


# direct methods
.method public constructor <init>(Landroidx/work/impl/workers/ConstraintTrackingWorker;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/m0/c0/u/a;->b:Landroidx/work/impl/workers/ConstraintTrackingWorker;

    iput-object p2, p0, Ln3/m0/c0/u/a;->a:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/m0/c0/u/a;->b:Landroidx/work/impl/workers/ConstraintTrackingWorker;

    iget-object v0, v0, Landroidx/work/impl/workers/ConstraintTrackingWorker;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Ln3/m0/c0/u/a;->b:Landroidx/work/impl/workers/ConstraintTrackingWorker;

    iget-boolean v1, v1, Landroidx/work/impl/workers/ConstraintTrackingWorker;->c:Z

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Ln3/m0/c0/u/a;->b:Landroidx/work/impl/workers/ConstraintTrackingWorker;

    invoke-virtual {v1}, Landroidx/work/impl/workers/ConstraintTrackingWorker;->o()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Ln3/m0/c0/u/a;->b:Landroidx/work/impl/workers/ConstraintTrackingWorker;

    iget-object v1, v1, Landroidx/work/impl/workers/ConstraintTrackingWorker;->d:Ln3/m0/c0/t/w/c;

    iget-object v2, p0, Ln3/m0/c0/u/a;->a:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-virtual {v1, v2}, Ln3/m0/c0/t/w/c;->k(Lcom/google/common/util/concurrent/ListenableFuture;)Z

    .line 5
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
