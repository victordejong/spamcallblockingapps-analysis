.class public final Le/m/a/f/e/a/a/l0;
.super Lcom/google/android/gms/internal/base/zap;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/google/android/gms/common/api/internal/zacv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zacv;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Le/m/a/f/e/a/a/l0;->a:Lcom/google/android/gms/common/api/internal/zacv;

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/base/zap;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/RuntimeException;

    .line 3
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Runtime exception on the transformation worker thread: "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 4
    :cond_1
    new-instance v0, Ljava/lang/String;

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 6
    :goto_0
    throw p1

    .line 7
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/api/PendingResult;

    iget-object v0, p0, Le/m/a/f/e/a/a/l0;->a:Lcom/google/android/gms/common/api/internal/zacv;

    .line 8
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zacv;->d:Ljava/lang/Object;

    .line 9
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Le/m/a/f/e/a/a/l0;->a:Lcom/google/android/gms/common/api/internal/zacv;

    .line 10
    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zacv;->b:Lcom/google/android/gms/common/api/internal/zacv;

    const-string v2, "null reference"

    .line 11
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-nez p1, :cond_3

    .line 12
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0xd

    const-string v3, "Transform returned null"

    invoke-direct {p1, v2, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 13
    invoke-virtual {v1, p1}, Lcom/google/android/gms/common/api/internal/zacv;->e(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_1

    .line 14
    :cond_3
    instance-of v2, p1, Lcom/google/android/gms/common/api/internal/zack;

    if-eqz v2, :cond_4

    .line 15
    check-cast p1, Lcom/google/android/gms/common/api/internal/zack;

    const/4 p1, 0x0

    .line 16
    invoke-virtual {v1, p1}, Lcom/google/android/gms/common/api/internal/zacv;->e(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_1

    .line 17
    :cond_4
    iget-object v2, v1, Lcom/google/android/gms/common/api/internal/zacv;->d:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iput-object p1, v1, Lcom/google/android/gms/common/api/internal/zacv;->c:Lcom/google/android/gms/common/api/PendingResult;

    .line 18
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/zacv;->d()V

    .line 19
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception p1

    .line 21
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    :catchall_1
    move-exception p1

    .line 22
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method
