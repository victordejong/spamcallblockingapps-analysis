.class public final Le/m/a/f/q/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/tasks/Task;

.field public final synthetic b:Le/m/a/f/q/s;


# direct methods
.method public constructor <init>(Le/m/a/f/q/s;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    iput-object p1, p0, Le/m/a/f/q/r;->b:Le/m/a/f/q/s;

    iput-object p2, p0, Le/m/a/f/q/r;->a:Lcom/google/android/gms/tasks/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/m/a/f/q/r;->b:Le/m/a/f/q/s;

    .line 2
    iget-object v0, v0, Le/m/a/f/q/s;->b:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Le/m/a/f/q/r;->b:Le/m/a/f/q/s;

    .line 4
    iget-object v1, v1, Le/m/a/f/q/s;->c:Lcom/google/android/gms/tasks/OnSuccessListener;

    if-eqz v1, :cond_0

    .line 5
    iget-object v2, p0, Le/m/a/f/q/r;->a:Lcom/google/android/gms/tasks/Task;

    invoke-virtual {v2}, Lcom/google/android/gms/tasks/Task;->o()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/tasks/OnSuccessListener;->onSuccess(Ljava/lang/Object;)V

    .line 6
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
