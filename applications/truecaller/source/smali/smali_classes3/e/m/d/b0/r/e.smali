.class public final synthetic Le/m/d/b0/r/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# instance fields
.field public final synthetic a:Le/m/d/b0/r/l;

.field public final synthetic b:Ljava/util/Date;


# direct methods
.method public synthetic constructor <init>(Le/m/d/b0/r/l;Ljava/util/Date;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/d/b0/r/e;->a:Le/m/d/b0/r/l;

    iput-object p2, p0, Le/m/d/b0/r/e;->b:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public final then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Le/m/d/b0/r/e;->a:Le/m/d/b0/r/l;

    iget-object v1, p0, Le/m/d/b0/r/e;->b:Ljava/util/Date;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->s()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    iget-object v0, v0, Le/m/d/b0/r/l;->h:Le/m/d/b0/r/n;

    .line 4
    iget-object v2, v0, Le/m/d/b0/r/n;->b:Ljava/lang/Object;

    monitor-enter v2

    .line 5
    :try_start_0
    iget-object v0, v0, Le/m/d/b0/r/n;->a:Landroid/content/SharedPreferences;

    .line 6
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "last_fetch_status"

    const/4 v4, -0x1

    .line 7
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "last_fetch_time_in_millis"

    .line 8
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 9
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 10
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->n()Ljava/lang/Exception;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 12
    :cond_1
    instance-of v1, v1, Le/m/d/b0/n;

    if-eqz v1, :cond_2

    .line 13
    iget-object v0, v0, Le/m/d/b0/r/l;->h:Le/m/d/b0/r/n;

    .line 14
    iget-object v1, v0, Le/m/d/b0/r/n;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 15
    :try_start_1
    iget-object v0, v0, Le/m/d/b0/r/n;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "last_fetch_status"

    const/4 v3, 0x2

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 16
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    .line 17
    :cond_2
    iget-object v0, v0, Le/m/d/b0/r/l;->h:Le/m/d/b0/r/n;

    .line 18
    iget-object v1, v0, Le/m/d/b0/r/n;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 19
    :try_start_2
    iget-object v0, v0, Le/m/d/b0/r/n;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "last_fetch_status"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 20
    monitor-exit v1

    :goto_0
    return-object p1

    :catchall_2
    move-exception p1

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p1
.end method
