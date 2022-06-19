.class public Le/h/a/c/b0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/h/a/c/b0$a;
    }
.end annotation


# static fields
.field public static l:I = -0x1


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:Z

.field public c:Le/h/a/c/b0$a;

.field public final d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

.field public final e:Landroid/content/Context;

.field public final f:Ljava/lang/Object;

.field public g:Z

.field public h:Ljava/lang/String;

.field public i:Z

.field public final j:Le/h/a/c/w;

.field public final k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Le/h/a/c/a1/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Ljava/lang/String;Le/h/a/c/w;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Le/h/a/c/b0;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Le/h/a/c/b0;->b:Z

    .line 4
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Le/h/a/c/b0;->f:Ljava/lang/Object;

    .line 5
    iput-boolean v0, p0, Le/h/a/c/b0;->g:Z

    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Le/h/a/c/b0;->h:Ljava/lang/String;

    .line 7
    iput-boolean v0, p0, Le/h/a/c/b0;->i:Z

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Le/h/a/c/b0;->k:Ljava/util/ArrayList;

    .line 9
    iput-object p1, p0, Le/h/a/c/b0;->e:Landroid/content/Context;

    .line 10
    iput-object p2, p0, Le/h/a/c/b0;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 11
    iput-object p4, p0, Le/h/a/c/b0;->j:Le/h/a/c/w;

    .line 12
    invoke-static {p2}, Le/h/a/c/y0/a;->a(Lcom/clevertap/android/sdk/CleverTapInstanceConfig;)Le/h/a/c/y0/b;

    move-result-object p1

    invoke-virtual {p1}, Le/h/a/c/y0/b;->a()Le/h/a/c/y0/k;

    move-result-object p1

    .line 13
    new-instance p4, Le/h/a/c/y;

    invoke-direct {p4, p0}, Le/h/a/c/y;-><init>(Le/h/a/c/b0;)V

    .line 14
    iget-object v0, p1, Le/h/a/c/y0/k;->c:Ljava/util/concurrent/Executor;

    .line 15
    new-instance v1, Le/h/a/c/y0/j;

    const-string v2, "getDeviceCachedInfo"

    invoke-direct {v1, p1, v2, p4}, Le/h/a/c/y0/j;-><init>(Le/h/a/c/y0/k;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 16
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 17
    invoke-static {p2}, Le/h/a/c/y0/a;->a(Lcom/clevertap/android/sdk/CleverTapInstanceConfig;)Le/h/a/c/y0/b;

    move-result-object p1

    invoke-virtual {p1}, Le/h/a/c/y0/b;->a()Le/h/a/c/y0/k;

    move-result-object p1

    .line 18
    new-instance p4, Le/h/a/c/z;

    invoke-direct {p4, p0}, Le/h/a/c/z;-><init>(Le/h/a/c/b0;)V

    .line 19
    iget-object v0, p1, Le/h/a/c/y0/k;->b:Ljava/util/concurrent/Executor;

    .line 20
    iget-object v1, p1, Le/h/a/c/y0/k;->f:Ljava/util/List;

    new-instance v2, Le/h/a/c/y0/i;

    invoke-direct {v2, v0, p4}, Le/h/a/c/y0/i;-><init>(Ljava/util/concurrent/Executor;Le/h/a/c/y0/g;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    new-instance p4, Le/h/a/c/a0;

    invoke-direct {p4, p0, p3}, Le/h/a/c/a0;-><init>(Le/h/a/c/b0;Ljava/lang/String;)V

    .line 22
    iget-object p3, p1, Le/h/a/c/y0/k;->c:Ljava/util/concurrent/Executor;

    .line 23
    new-instance v0, Le/h/a/c/y0/j;

    const-string v1, "initDeviceID"

    invoke-direct {v0, p1, v1, p4}, Le/h/a/c/y0/j;-><init>(Le/h/a/c/y0/k;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 24
    invoke-interface {p3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 25
    invoke-virtual {p0}, Le/h/a/c/b0;->g()Le/h/a/c/g0;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    iget-object p2, p2, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string p4, ":async_deviceID"

    const-string v0, "DeviceInfo() called"

    .line 27
    invoke-static {p3, p2, p4, p1, v0}, Le/d/c/a/a;->R0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Le/h/a/c/g0;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Le/h/a/c/b0;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Le/h/a/c/b0;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 3
    iget-boolean v1, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->m:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, p0, Le/h/a/c/b0;->e:Landroid/content/Context;

    invoke-virtual {p0}, Le/h/a/c/b0;->k()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Ln3/g0/y;->y0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Le/h/a/c/b0;->e:Landroid/content/Context;

    const-string v3, "deviceId"

    invoke-static {v1, v3, v2}, Ln3/g0/y;->y0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    monitor-exit v0

    return-object v1

    .line 6
    :cond_1
    iget-object v1, p0, Le/h/a/c/b0;->e:Landroid/content/Context;

    invoke-virtual {p0}, Le/h/a/c/b0;->k()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Ln3/g0/y;->y0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public b(Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-static {p1}, Le/h/a/c/j0;->n(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Le/h/a/c/b0;->g()Le/h/a/c/g0;

    move-result-object v0

    iget-object v1, p0, Le/h/a/c/b0;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 3
    iget-object v1, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 4
    iget v0, v0, Le/h/a/c/g0;->a:I

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "__h"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/h/a/c/b0;->c(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 6
    :cond_0
    monitor-enter p0

    .line 7
    :try_start_0
    invoke-virtual {p0}, Le/h/a/c/b0;->l()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_2

    .line 8
    iget-object v0, p0, Le/h/a/c/b0;->f:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 9
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "__i"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "-"

    const-string v5, ""

    .line 10
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 11
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v1, :cond_1

    .line 12
    invoke-virtual {p0, v2}, Le/h/a/c/b0;->r(Ljava/lang/String;)V

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {p0}, Le/h/a/c/b0;->g()Le/h/a/c/g0;

    move-result-object v2

    iget-object v3, p0, Le/h/a/c/b0;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 14
    iget-object v3, v3, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v4, "Unable to generate fallback error device ID"

    .line 15
    invoke-virtual {v2, v3, v4}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 17
    :cond_2
    :goto_1
    monitor-exit p0

    .line 18
    iget-object v0, p0, Le/h/a/c/b0;->e:Landroid/content/Context;

    invoke-virtual {p0}, Le/h/a/c/b0;->k()Ljava/lang/String;

    move-result-object v2

    .line 19
    invoke-static {v0}, Ln3/g0/y;->u0(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 20
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 21
    :try_start_3
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    const/16 v0, 0x15

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    .line 22
    invoke-virtual {p0}, Le/h/a/c/b0;->l()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p1

    invoke-virtual {p0, v0, v1}, Le/h/a/c/b0;->p(I[Ljava/lang/String;)Ljava/lang/String;

    .line 23
    invoke-virtual {p0}, Le/h/a/c/b0;->g()Le/h/a/c/g0;

    move-result-object p1

    iget-object v0, p0, Le/h/a/c/b0;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 24
    iget-object v0, v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 25
    iget p1, p1, Le/h/a/c/g0;->a:I

    :goto_2
    return-void

    :catchall_2
    move-exception p1

    .line 26
    monitor-exit p0

    throw p1
.end method

.method public c(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Le/h/a/c/b0;->g()Le/h/a/c/g0;

    move-result-object v0

    iget-object v1, p0, Le/h/a/c/b0;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 2
    iget-object v1, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Force updating the device ID to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Le/h/a/c/b0;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 5
    :try_start_0
    iget-object v1, p0, Le/h/a/c/b0;->e:Landroid/content/Context;

    invoke-virtual {p0}, Le/h/a/c/b0;->k()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Ln3/g0/y;->F1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final declared-synchronized d()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Le/h/a/c/b0;->g()Le/h/a/c/g0;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Le/h/a/c/b0;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 2
    iget-object v2, v2, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":async_deviceID"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "generateDeviceID() called!"

    invoke-virtual {v0, v1, v2}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Le/h/a/c/b0;->m()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "__g"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Le/h/a/c/b0;->f:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    :try_start_1
    invoke-virtual {p0}, Le/h/a/c/b0;->e()Ljava/lang/String;

    move-result-object v1

    .line 8
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    .line 9
    :goto_0
    :try_start_2
    invoke-virtual {p0, v0}, Le/h/a/c/b0;->c(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Le/h/a/c/b0;->g()Le/h/a/c/g0;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Le/h/a/c/b0;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 11
    iget-object v2, v2, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":async_deviceID"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "generateDeviceID() done executing!"

    invoke-virtual {v0, v1, v2}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 13
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    .line 14
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final e()Ljava/lang/String;
    .locals 4

    const-string v0, "__"

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Lorg/json/JSONObject;
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Le/h/a/c/b0;->m()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    new-instance v0, Le/h/a/c/t0/f;

    iget-object v1, p0, Le/h/a/c/b0;->e:Landroid/content/Context;

    iget-object v2, p0, Le/h/a/c/b0;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-direct {v0, v1, v2, p0}, Le/h/a/c/t0/f;-><init>(Landroid/content/Context;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Le/h/a/c/b0;)V

    invoke-virtual {v0}, Le/h/a/c/t0/f;->b()Z

    move-result v0

    .line 3
    :cond_0
    iget-object v1, p0, Le/h/a/c/b0;->j:Le/h/a/c/w;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    iget-boolean v2, p0, Le/h/a/c/b0;->g:Z

    invoke-static {p0, v1, v2, v0}, Ln3/g0/y;->T(Le/h/a/c/b0;Landroid/location/Location;ZZ)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 4
    :catchall_0
    iget-object v0, p0, Le/h/a/c/b0;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {v0}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v0

    iget-object v1, p0, Le/h/a/c/b0;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 5
    iget-object v1, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 6
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    return-object v0
.end method

.method public final g()Le/h/a/c/g0;
    .locals 1

    .line 1
    iget-object v0, p0, Le/h/a/c/b0;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {v0}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/h/a/c/b0;->i()Le/h/a/c/b0$a;

    move-result-object v0

    .line 2
    iget-object v0, v0, Le/h/a/c/b0$a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final i()Le/h/a/c/b0$a;
    .locals 1

    .line 1
    iget-object v0, p0, Le/h/a/c/b0;->c:Le/h/a/c/b0$a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Le/h/a/c/b0$a;

    invoke-direct {v0, p0}, Le/h/a/c/b0$a;-><init>(Le/h/a/c/b0;)V

    iput-object v0, p0, Le/h/a/c/b0;->c:Le/h/a/c/b0$a;

    .line 3
    :cond_0
    iget-object v0, p0, Le/h/a/c/b0;->c:Le/h/a/c/b0$a;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/h/a/c/b0;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Le/h/a/c/b0;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Le/h/a/c/b0;->l()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 2

    const-string v0, "deviceId:"

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/h/a/c/b0;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 2
    iget-object v1, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Le/h/a/c/b0;->e:Landroid/content/Context;

    const-string v1, "fallbackId:"

    .line 2
    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Le/h/a/c/b0;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 3
    iget-object v2, v2, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 5
    invoke-static {v0, v1, v2}, Ln3/g0/y;->y0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Le/h/a/c/b0;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Le/h/a/c/b0;->h:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public n()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/h/a/c/b0;->i()Le/h/a/c/b0$a;

    move-result-object v0

    .line 2
    iget v0, v0, Le/h/a/c/b0$a;->m:I

    return v0
.end method

.method public o()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/h/a/c/b0;->j()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Le/h/a/c/b0;->j()Ljava/lang/String;

    move-result-object v0

    const-string v1, "__i"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final varargs p(I[Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x202

    .line 1
    invoke-static {v0, p1, p2}, Ln3/g0/y;->F(II[Ljava/lang/String;)Le/h/a/c/a1/a;

    move-result-object p1

    .line 2
    iget-object p2, p0, Le/h/a/c/b0;->k:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object p1, p1, Le/h/a/c/a1/a;->b:Ljava/lang/String;

    return-object p1
.end method

.method public q()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Le/h/a/c/b0;->j()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-string v1, "OptOut:"

    .line 2
    invoke-static {v1, v0}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Le/h/a/c/b0;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {v0}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v0

    iget-object v1, p0, Le/h/a/c/b0;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 4
    iget-object v1, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v2, "Unable to set current user OptOut state from storage: storage key is null"

    .line 5
    invoke-virtual {v0, v1, v2}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_1
    iget-object v1, p0, Le/h/a/c/b0;->e:Landroid/content/Context;

    iget-object v2, p0, Le/h/a/c/b0;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-static {v1, v2, v0}, Ln3/g0/y;->a0(Landroid/content/Context;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Ljava/lang/String;)Z

    move-result v1

    .line 7
    iget-object v2, p0, Le/h/a/c/b0;->j:Le/h/a/c/w;

    .line 8
    iget-object v3, v2, Le/h/a/c/w;->n:Ljava/lang/Object;

    monitor-enter v3

    .line 9
    :try_start_0
    iput-boolean v1, v2, Le/h/a/c/w;->e:Z

    .line 10
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    iget-object v2, p0, Le/h/a/c/b0;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {v2}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v2

    iget-object v3, p0, Le/h/a/c/b0;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 12
    iget-object v3, v3, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Set current user OptOut state from storage to: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " for key: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    .line 14
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final r(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Le/h/a/c/b0;->g()Le/h/a/c/g0;

    move-result-object v0

    iget-object v1, p0, Le/h/a/c/b0;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 2
    iget-object v1, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updating the fallback id - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Le/h/a/c/b0;->e:Landroid/content/Context;

    const-string v1, "fallbackId:"

    .line 5
    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Le/h/a/c/b0;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 6
    iget-object v2, v2, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-static {v0, v1, p1}, Ln3/g0/y;->F1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
