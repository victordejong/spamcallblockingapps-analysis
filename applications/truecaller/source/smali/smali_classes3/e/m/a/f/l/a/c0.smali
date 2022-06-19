.class public final Le/m/a/f/l/a/c0;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/util/concurrent/BlockingQueue;

.field public c:Z

.field public final synthetic d:Lcom/google/android/gms/measurement/internal/zzfo;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzfo;Ljava/lang/String;Ljava/util/concurrent/BlockingQueue;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/a/f/l/a/c0;->d:Lcom/google/android/gms/measurement/internal/zzfo;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Le/m/a/f/l/a/c0;->c:Z

    const-string p1, "null reference"

    .line 2
    invoke-static {p3, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/a/f/l/a/c0;->a:Ljava/lang/Object;

    iput-object p3, p0, Le/m/a/f/l/a/c0;->b:Ljava/util/concurrent/BlockingQueue;

    .line 4
    invoke-virtual {p0, p2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/m/a/f/l/a/c0;->d:Lcom/google/android/gms/measurement/internal/zzfo;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzfo;->i:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Le/m/a/f/l/a/c0;->c:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Le/m/a/f/l/a/c0;->d:Lcom/google/android/gms/measurement/internal/zzfo;

    .line 4
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzfo;->j:Ljava/util/concurrent/Semaphore;

    .line 5
    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    iget-object v1, p0, Le/m/a/f/l/a/c0;->d:Lcom/google/android/gms/measurement/internal/zzfo;

    .line 6
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzfo;->i:Ljava/lang/Object;

    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    iget-object v1, p0, Le/m/a/f/l/a/c0;->d:Lcom/google/android/gms/measurement/internal/zzfo;

    .line 8
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzfo;->c:Le/m/a/f/l/a/c0;

    const/4 v3, 0x0

    if-ne p0, v2, :cond_0

    .line 9
    iput-object v3, v1, Lcom/google/android/gms/measurement/internal/zzfo;->c:Le/m/a/f/l/a/c0;

    goto :goto_0

    .line 10
    :cond_0
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/zzfo;->d:Le/m/a/f/l/a/c0;

    if-ne p0, v2, :cond_1

    .line 11
    iput-object v3, v1, Lcom/google/android/gms/measurement/internal/zzfo;->d:Le/m/a/f/l/a/c0;

    goto :goto_0

    .line 12
    :cond_1
    iget-object v1, v1, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v1

    .line 14
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzeh;->f:Lcom/google/android/gms/measurement/internal/zzef;

    const-string v2, "Current scheduler thread is neither worker nor network"

    .line 15
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzef;->a(Ljava/lang/String;)V

    :goto_0
    const/4 v1, 0x1

    .line 16
    iput-boolean v1, p0, Le/m/a/f/l/a/c0;->c:Z

    .line 17
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final b(Ljava/lang/InterruptedException;)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/m/a/f/l/a/c0;->d:Lcom/google/android/gms/measurement/internal/zzfo;

    iget-object v0, v0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzfr;->zzay()Lcom/google/android/gms/measurement/internal/zzeh;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzeh;->i:Lcom/google/android/gms/measurement/internal/zzef;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " was interrupted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzef;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final run()V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_0

    .line 1
    :try_start_0
    iget-object v2, p0, Le/m/a/f/l/a/c0;->d:Lcom/google/android/gms/measurement/internal/zzfo;

    .line 2
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzfo;->j:Ljava/util/concurrent/Semaphore;

    .line 3
    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 4
    invoke-virtual {p0, v2}, Le/m/a/f/l/a/c0;->b(Ljava/lang/InterruptedException;)V

    goto :goto_0

    .line 5
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v1

    :goto_1
    iget-object v2, p0, Le/m/a/f/l/a/c0;->b:Ljava/util/concurrent/BlockingQueue;

    .line 6
    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/m/a/f/l/a/b0;

    if-eqz v2, :cond_2

    iget-boolean v3, v2, Le/m/a/f/l/a/b0;->b:Z

    if-eq v0, v3, :cond_1

    const/16 v3, 0xa

    goto :goto_2

    :cond_1
    move v3, v1

    .line 7
    :goto_2
    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 8
    invoke-virtual {v2}, Ljava/util/concurrent/FutureTask;->run()V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Le/m/a/f/l/a/c0;->a:Ljava/lang/Object;

    .line 9
    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v3, p0, Le/m/a/f/l/a/c0;->b:Ljava/util/concurrent/BlockingQueue;

    .line 10
    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3

    iget-object v3, p0, Le/m/a/f/l/a/c0;->d:Lcom/google/android/gms/measurement/internal/zzfo;

    .line 11
    sget-object v4, Lcom/google/android/gms/measurement/internal/zzfo;->k:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 12
    :try_start_3
    iget-object v3, p0, Le/m/a/f/l/a/c0;->a:Ljava/lang/Object;

    const-wide/16 v4, 0x7530

    .line 13
    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catch_1
    move-exception v3

    .line 14
    :try_start_4
    invoke-virtual {p0, v3}, Le/m/a/f/l/a/c0;->b(Ljava/lang/InterruptedException;)V

    .line 15
    :cond_3
    :goto_3
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    iget-object v2, p0, Le/m/a/f/l/a/c0;->d:Lcom/google/android/gms/measurement/internal/zzfo;

    .line 16
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzfo;->i:Ljava/lang/Object;

    .line 17
    monitor-enter v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    iget-object v3, p0, Le/m/a/f/l/a/c0;->b:Ljava/util/concurrent/BlockingQueue;

    .line 18
    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_5

    iget-object v0, p0, Le/m/a/f/l/a/c0;->d:Lcom/google/android/gms/measurement/internal/zzfo;

    iget-object v0, v0, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 19
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzfr;->g:Lcom/google/android/gms/measurement/internal/zzaf;

    .line 20
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzdu;->f0:Lcom/google/android/gms/measurement/internal/zzdt;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Lcom/google/android/gms/measurement/internal/zzaf;->r(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzdt;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 21
    invoke-virtual {p0}, Le/m/a/f/l/a/c0;->a()V

    .line 22
    :cond_4
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 23
    invoke-virtual {p0}, Le/m/a/f/l/a/c0;->a()V

    return-void

    .line 24
    :cond_5
    :try_start_7
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_1
    move-exception v0

    .line 25
    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :catchall_2
    move-exception v0

    .line 26
    invoke-virtual {p0}, Le/m/a/f/l/a/c0;->a()V

    .line 27
    throw v0
.end method
