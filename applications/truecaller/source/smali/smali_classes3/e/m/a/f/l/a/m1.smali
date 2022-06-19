.class public final Le/m/a/f/l/a/m1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic b:Lcom/google/android/gms/measurement/internal/zzhw;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzhw;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    iput-object p1, p0, Le/m/a/f/l/a/m1;->b:Lcom/google/android/gms/measurement/internal/zzhw;

    iput-object p2, p0, Le/m/a/f/l/a/m1;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Le/m/a/f/l/a/m1;->a:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Le/m/a/f/l/a/m1;->a:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v2, p0, Le/m/a/f/l/a/m1;->b:Lcom/google/android/gms/measurement/internal/zzhw;

    iget-object v2, v2, Le/m/a/f/l/a/v0;->a:Lcom/google/android/gms/measurement/internal/zzfr;

    .line 2
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/zzfr;->g:Lcom/google/android/gms/measurement/internal/zzaf;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzfr;->m()Lcom/google/android/gms/measurement/internal/zzdy;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzdy;->i()Ljava/lang/String;

    move-result-object v2

    .line 5
    sget-object v4, Lcom/google/android/gms/measurement/internal/zzdu;->L:Lcom/google/android/gms/measurement/internal/zzdt;

    .line 6
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 7
    invoke-virtual {v4, v2}, Lcom/google/android/gms/measurement/internal/zzdt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/zzaf;->c:Le/m/a/f/l/a/b;

    .line 8
    iget-object v5, v4, Lcom/google/android/gms/measurement/internal/zzdt;->a:Ljava/lang/String;

    .line 9
    invoke-interface {v3, v2, v5}, Le/m/a/f/l/a/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/google/android/gms/measurement/internal/zzdt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 10
    :goto_0
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Le/m/a/f/l/a/m1;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 12
    monitor-exit v0

    return-void

    :goto_1
    iget-object v2, p0, Le/m/a/f/l/a/m1;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 13
    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 14
    throw v1

    :catchall_1
    move-exception v1

    .line 15
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method
