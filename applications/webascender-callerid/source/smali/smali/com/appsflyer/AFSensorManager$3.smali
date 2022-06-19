.class final Lcom/appsflyer/AFSensorManager$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/AFSensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ı:Lcom/appsflyer/AFSensorManager;


# direct methods
.method constructor <init>(Lcom/appsflyer/AFSensorManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appsflyer/AFSensorManager$3;->ı:Lcom/appsflyer/AFSensorManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/appsflyer/AFSensorManager$3;->ı:Lcom/appsflyer/AFSensorManager;

    iget-object v0, v0, Lcom/appsflyer/AFSensorManager;->ɩ:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/appsflyer/AFSensorManager$3;->ı:Lcom/appsflyer/AFSensorManager;

    iget-boolean v2, v1, Lcom/appsflyer/AFSensorManager;->ı:Z

    if-eqz v2, :cond_0

    .line 3
    iget-object v2, v1, Lcom/appsflyer/AFSensorManager;->ǃ:Landroid/os/Handler;

    iget-object v1, v1, Lcom/appsflyer/AFSensorManager;->Ι:Ljava/lang/Runnable;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4
    iget-object v1, p0, Lcom/appsflyer/AFSensorManager$3;->ı:Lcom/appsflyer/AFSensorManager;

    iget-object v2, v1, Lcom/appsflyer/AFSensorManager;->ǃ:Landroid/os/Handler;

    iget-object v1, v1, Lcom/appsflyer/AFSensorManager;->ι:Ljava/lang/Runnable;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5
    iget-object v1, p0, Lcom/appsflyer/AFSensorManager$3;->ı:Lcom/appsflyer/AFSensorManager;

    .line 6
    iget-object v2, v1, Lcom/appsflyer/AFSensorManager;->і:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/appsflyer/AFSensorManager$8;

    invoke-direct {v3, v1}, Lcom/appsflyer/AFSensorManager$8;-><init>(Lcom/appsflyer/AFSensorManager;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 7
    iget-object v1, p0, Lcom/appsflyer/AFSensorManager$3;->ı:Lcom/appsflyer/AFSensorManager;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/appsflyer/AFSensorManager;->ı:Z

    .line 8
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
