.class public final Ln3/e/a/e/k2/k$a;
.super Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/e/a/e/k2/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

.field public final c:Ljava/lang/Object;

.field public d:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ln3/e/a/e/k2/k$a;->c:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Ln3/e/a/e/k2/k$a;->d:Z

    .line 4
    iput-object p1, p0, Ln3/e/a/e/k2/k$a;->a:Ljava/util/concurrent/Executor;

    .line 5
    iput-object p2, p0, Ln3/e/a/e/k2/k$a;->b:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    return-void
.end method


# virtual methods
.method public onCameraAccessPrioritiesChanged()V
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/e/a/e/k2/k$a;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Ln3/e/a/e/k2/k$a;->d:Z

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Ln3/e/a/e/k2/k$a;->a:Ljava/util/concurrent/Executor;

    new-instance v2, Ln3/e/a/e/k2/k$a$a;

    invoke-direct {v2, p0}, Ln3/e/a/e/k2/k$a$a;-><init>(Ln3/e/a/e/k2/k$a;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 4
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onCameraAvailable(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/e/a/e/k2/k$a;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Ln3/e/a/e/k2/k$a;->d:Z

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Ln3/e/a/e/k2/k$a;->a:Ljava/util/concurrent/Executor;

    new-instance v2, Ln3/e/a/e/k2/k$a$b;

    invoke-direct {v2, p0, p1}, Ln3/e/a/e/k2/k$a$b;-><init>(Ln3/e/a/e/k2/k$a;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 4
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onCameraUnavailable(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/e/a/e/k2/k$a;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Ln3/e/a/e/k2/k$a;->d:Z

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Ln3/e/a/e/k2/k$a;->a:Ljava/util/concurrent/Executor;

    new-instance v2, Ln3/e/a/e/k2/k$a$c;

    invoke-direct {v2, p0, p1}, Ln3/e/a/e/k2/k$a$c;-><init>(Ln3/e/a/e/k2/k$a;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 4
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
