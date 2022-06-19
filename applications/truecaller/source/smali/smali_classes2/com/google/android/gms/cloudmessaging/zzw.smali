.class public final synthetic Lcom/google/android/gms/cloudmessaging/zzw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/cloudmessaging/Rpc;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/util/concurrent/ScheduledFuture;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/cloudmessaging/Rpc;Ljava/lang/String;Ljava/util/concurrent/ScheduledFuture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cloudmessaging/zzw;->a:Lcom/google/android/gms/cloudmessaging/Rpc;

    iput-object p2, p0, Lcom/google/android/gms/cloudmessaging/zzw;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/cloudmessaging/zzw;->c:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 3

    iget-object p1, p0, Lcom/google/android/gms/cloudmessaging/zzw;->a:Lcom/google/android/gms/cloudmessaging/Rpc;

    iget-object v0, p0, Lcom/google/android/gms/cloudmessaging/zzw;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/cloudmessaging/zzw;->c:Ljava/util/concurrent/ScheduledFuture;

    .line 1
    iget-object v2, p1, Lcom/google/android/gms/cloudmessaging/Rpc;->a:Ln3/g/h;

    monitor-enter v2

    :try_start_0
    iget-object p1, p1, Lcom/google/android/gms/cloudmessaging/Rpc;->a:Ln3/g/h;

    .line 2
    invoke-virtual {p1, v0}, Ln3/g/h;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 4
    invoke-interface {v1, p1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    return-void

    :catchall_0
    move-exception p1

    .line 5
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
