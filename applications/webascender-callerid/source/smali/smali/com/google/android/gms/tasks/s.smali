.class final Lcom/google/android/gms/tasks/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f:Lcom/google/android/gms/tasks/g;

.field private final synthetic g:Lcom/google/android/gms/tasks/t;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tasks/t;Lcom/google/android/gms/tasks/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/tasks/s;->g:Lcom/google/android/gms/tasks/t;

    iput-object p2, p0, Lcom/google/android/gms/tasks/s;->f:Lcom/google/android/gms/tasks/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/tasks/s;->g:Lcom/google/android/gms/tasks/t;

    invoke-static {v0}, Lcom/google/android/gms/tasks/t;->b(Lcom/google/android/gms/tasks/t;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/tasks/s;->g:Lcom/google/android/gms/tasks/t;

    invoke-static {v1}, Lcom/google/android/gms/tasks/t;->c(Lcom/google/android/gms/tasks/t;)Lcom/google/android/gms/tasks/d;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/tasks/s;->g:Lcom/google/android/gms/tasks/t;

    invoke-static {v1}, Lcom/google/android/gms/tasks/t;->c(Lcom/google/android/gms/tasks/t;)Lcom/google/android/gms/tasks/d;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/tasks/s;->f:Lcom/google/android/gms/tasks/g;

    invoke-virtual {v2}, Lcom/google/android/gms/tasks/g;->n()Ljava/lang/Exception;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/tasks/d;->c(Ljava/lang/Exception;)V

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
