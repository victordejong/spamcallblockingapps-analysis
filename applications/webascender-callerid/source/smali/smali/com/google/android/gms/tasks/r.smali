.class final Lcom/google/android/gms/tasks/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f:Lcom/google/android/gms/tasks/g;

.field private final synthetic g:Lcom/google/android/gms/tasks/q;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tasks/q;Lcom/google/android/gms/tasks/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/tasks/r;->g:Lcom/google/android/gms/tasks/q;

    iput-object p2, p0, Lcom/google/android/gms/tasks/r;->f:Lcom/google/android/gms/tasks/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/tasks/r;->g:Lcom/google/android/gms/tasks/q;

    invoke-static {v0}, Lcom/google/android/gms/tasks/q;->b(Lcom/google/android/gms/tasks/q;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/tasks/r;->g:Lcom/google/android/gms/tasks/q;

    invoke-static {v1}, Lcom/google/android/gms/tasks/q;->c(Lcom/google/android/gms/tasks/q;)Lcom/google/android/gms/tasks/c;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/tasks/r;->g:Lcom/google/android/gms/tasks/q;

    invoke-static {v1}, Lcom/google/android/gms/tasks/q;->c(Lcom/google/android/gms/tasks/q;)Lcom/google/android/gms/tasks/c;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/tasks/r;->f:Lcom/google/android/gms/tasks/g;

    invoke-interface {v1, v2}, Lcom/google/android/gms/tasks/c;->a(Lcom/google/android/gms/tasks/g;)V

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
