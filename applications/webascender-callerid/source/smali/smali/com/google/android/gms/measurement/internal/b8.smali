.class final Lcom/google/android/gms/measurement/internal/b8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic f:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Ljava/lang/String;

.field final synthetic i:Lcom/google/android/gms/measurement/internal/aa;

.field final synthetic j:Z

.field final synthetic k:Lcom/google/android/gms/measurement/internal/j8;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/j8;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/aa;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/b8;->k:Lcom/google/android/gms/measurement/internal/j8;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/b8;->f:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/b8;->g:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/b8;->h:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/measurement/internal/b8;->i:Lcom/google/android/gms/measurement/internal/aa;

    iput-boolean p7, p0, Lcom/google/android/gms/measurement/internal/b8;->j:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/b8;->f:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/b8;->k:Lcom/google/android/gms/measurement/internal/j8;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/j8;->A(Lcom/google/android/gms/measurement/internal/j8;)Lcom/google/android/gms/measurement/internal/d3;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/b8;->k:Lcom/google/android/gms/measurement/internal/j8;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/l5;->a:Lcom/google/android/gms/measurement/internal/r4;

    .line 1
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/r4;->c()Lcom/google/android/gms/measurement/internal/n3;

    move-result-object v2

    .line 2
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/n3;->o()Lcom/google/android/gms/measurement/internal/l3;

    move-result-object v2

    const-string v3, "(legacy) Failed to get user properties; not connected to service"

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/b8;->g:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/b8;->h:Ljava/lang/String;

    .line 3
    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/google/android/gms/measurement/internal/l3;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/b8;->f:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/b8;->f:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    .line 6
    :cond_0
    :try_start_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/b8;->i:Lcom/google/android/gms/measurement/internal/aa;

    .line 7
    invoke-static {v3}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/b8;->f:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/b8;->g:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/b8;->h:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/google/android/gms/measurement/internal/b8;->j:Z

    iget-object v7, p0, Lcom/google/android/gms/measurement/internal/b8;->i:Lcom/google/android/gms/measurement/internal/aa;

    .line 8
    invoke-interface {v2, v4, v5, v6, v7}, Lcom/google/android/gms/measurement/internal/d3;->O0(Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/measurement/internal/aa;)Ljava/util/List;

    move-result-object v2

    .line 9
    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/b8;->f:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/b8;->g:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/b8;->h:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/google/android/gms/measurement/internal/b8;->j:Z

    .line 11
    invoke-interface {v2, v1, v4, v5, v6}, Lcom/google/android/gms/measurement/internal/d3;->C2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v2

    .line 12
    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 13
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/b8;->k:Lcom/google/android/gms/measurement/internal/j8;

    .line 14
    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/j8;->B(Lcom/google/android/gms/measurement/internal/j8;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/b8;->f:Ljava/util/concurrent/atomic/AtomicReference;

    .line 15
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_0
    move-exception v2

    .line 16
    :try_start_4
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/b8;->k:Lcom/google/android/gms/measurement/internal/j8;

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/l5;->a:Lcom/google/android/gms/measurement/internal/r4;

    .line 17
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/r4;->c()Lcom/google/android/gms/measurement/internal/n3;

    move-result-object v3

    .line 18
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/n3;->o()Lcom/google/android/gms/measurement/internal/l3;

    move-result-object v3

    const-string v4, "(legacy) Failed to get user properties; remote exception"

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/b8;->g:Ljava/lang/String;

    .line 19
    invoke-virtual {v3, v4, v1, v5, v2}, Lcom/google/android/gms/measurement/internal/l3;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/b8;->f:Ljava/util/concurrent/atomic/AtomicReference;

    .line 20
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/b8;->f:Ljava/util/concurrent/atomic/AtomicReference;

    goto :goto_1

    .line 21
    :goto_2
    monitor-exit v0

    return-void

    .line 22
    :goto_3
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/b8;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 23
    throw v1

    :catchall_1
    move-exception v1

    .line 24
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1
.end method
