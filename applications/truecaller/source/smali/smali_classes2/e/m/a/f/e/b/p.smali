.class public final Le/m/a/f/e/b/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic a:Le/m/a/f/e/b/q;


# direct methods
.method public synthetic constructor <init>(Le/m/a/f/e/b/q;)V
    .locals 0

    iput-object p1, p0, Le/m/a/f/e/b/p;->a:Le/m/a/f/e/b/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 6

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Le/m/a/f/e/b/p;->a:Le/m/a/f/e/b/q;

    .line 3
    iget-object v0, v0, Le/m/a/f/e/b/q;->c:Ljava/util/HashMap;

    .line 4
    monitor-enter v0

    .line 5
    :try_start_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/internal/zzn;

    iget-object v1, p0, Le/m/a/f/e/b/p;->a:Le/m/a/f/e/b/q;

    .line 6
    iget-object v1, v1, Le/m/a/f/e/b/q;->c:Ljava/util/HashMap;

    .line 7
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/m/a/f/e/b/o;

    if-eqz v1, :cond_3

    .line 8
    iget v3, v1, Le/m/a/f/e/b/o;->b:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    .line 9
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    .line 10
    iget-object v3, v1, Le/m/a/f/e/b/o;->f:Landroid/content/ComponentName;

    if-nez v3, :cond_1

    .line 11
    iget-object v3, p1, Lcom/google/android/gms/common/internal/zzn;->c:Landroid/content/ComponentName;

    :cond_1
    if-nez v3, :cond_2

    .line 12
    new-instance v3, Landroid/content/ComponentName;

    .line 13
    iget-object p1, p1, Lcom/google/android/gms/common/internal/zzn;->b:Ljava/lang/String;

    const-string v4, "null reference"

    .line 14
    invoke-static {p1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v4, "unknown"

    .line 15
    invoke-direct {v3, p1, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    :cond_2
    invoke-virtual {v1, v3}, Le/m/a/f/e/b/o;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 17
    :cond_3
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 18
    :cond_4
    iget-object v0, p0, Le/m/a/f/e/b/p;->a:Le/m/a/f/e/b/q;

    .line 19
    iget-object v0, v0, Le/m/a/f/e/b/q;->c:Ljava/util/HashMap;

    .line 20
    monitor-enter v0

    .line 21
    :try_start_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/internal/zzn;

    iget-object v3, p0, Le/m/a/f/e/b/p;->a:Le/m/a/f/e/b/q;

    .line 22
    iget-object v3, v3, Le/m/a/f/e/b/q;->c:Ljava/util/HashMap;

    .line 23
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/m/a/f/e/b/o;

    if-eqz v3, :cond_6

    .line 24
    iget-object v4, v3, Le/m/a/f/e/b/o;->a:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 25
    iget-boolean v4, v3, Le/m/a/f/e/b/o;->c:Z

    if-eqz v4, :cond_5

    .line 26
    iget-object v4, v3, Le/m/a/f/e/b/o;->g:Le/m/a/f/e/b/q;

    .line 27
    iget-object v4, v4, Le/m/a/f/e/b/q;->e:Landroid/os/Handler;

    .line 28
    iget-object v5, v3, Le/m/a/f/e/b/o;->e:Lcom/google/android/gms/common/internal/zzn;

    invoke-virtual {v4, v2, v5}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v4, v3, Le/m/a/f/e/b/o;->g:Le/m/a/f/e/b/q;

    .line 29
    iget-object v5, v4, Le/m/a/f/e/b/q;->g:Lcom/google/android/gms/common/stats/ConnectionTracker;

    .line 30
    iget-object v4, v4, Le/m/a/f/e/b/q;->d:Landroid/content/Context;

    .line 31
    invoke-virtual {v5, v4, v3}, Lcom/google/android/gms/common/stats/ConnectionTracker;->c(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    iput-boolean v1, v3, Le/m/a/f/e/b/o;->c:Z

    const/4 v1, 0x2

    iput v1, v3, Le/m/a/f/e/b/o;->b:I

    .line 32
    :cond_5
    iget-object v1, p0, Le/m/a/f/e/b/p;->a:Le/m/a/f/e/b/q;

    .line 33
    iget-object v1, v1, Le/m/a/f/e/b/q;->c:Ljava/util/HashMap;

    .line 34
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    :cond_6
    monitor-exit v0

    return v2

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1
.end method
