.class public final Le/m/a/f/q/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/tasks/Task;

.field public final synthetic b:Le/m/a/f/q/q;


# direct methods
.method public constructor <init>(Le/m/a/f/q/q;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    iput-object p1, p0, Le/m/a/f/q/p;->b:Le/m/a/f/q/q;

    iput-object p2, p0, Le/m/a/f/q/p;->a:Lcom/google/android/gms/tasks/Task;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/m/a/f/q/p;->b:Le/m/a/f/q/q;

    .line 2
    iget-object v0, v0, Le/m/a/f/q/q;->b:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Le/m/a/f/q/p;->b:Le/m/a/f/q/q;

    .line 4
    iget-object v1, v1, Le/m/a/f/q/q;->c:Lcom/google/android/gms/tasks/OnFailureListener;

    if-eqz v1, :cond_0

    .line 5
    iget-object v2, p0, Le/m/a/f/q/p;->a:Lcom/google/android/gms/tasks/Task;

    invoke-virtual {v2}, Lcom/google/android/gms/tasks/Task;->n()Ljava/lang/Exception;

    move-result-object v2

    const-string v3, "null reference"

    .line 6
    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    invoke-interface {v1, v2}, Lcom/google/android/gms/tasks/OnFailureListener;->onFailure(Ljava/lang/Exception;)V

    .line 8
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
