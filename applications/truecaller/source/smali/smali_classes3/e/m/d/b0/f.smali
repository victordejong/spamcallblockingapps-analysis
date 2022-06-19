.class public final synthetic Le/m/d/b0/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# instance fields
.field public final synthetic a:Le/m/d/b0/k;


# direct methods
.method public synthetic constructor <init>(Le/m/d/b0/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/d/b0/f;->a:Le/m/d/b0/k;

    return-void
.end method


# virtual methods
.method public final then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Le/m/d/b0/f;->a:Le/m/d/b0/k;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->s()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    iget-object v1, v0, Le/m/d/b0/k;->d:Le/m/d/b0/r/j;

    .line 4
    monitor-enter v1

    const/4 v2, 0x0

    .line 5
    :try_start_0
    invoke-static {v2}, Lcom/google/android/gms/tasks/Tasks;->f(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    iput-object v2, v1, Le/m/d/b0/r/j;->c:Lcom/google/android/gms/tasks/Task;

    .line 6
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    iget-object v1, v1, Le/m/d/b0/r/j;->b:Le/m/d/b0/r/o;

    .line 8
    monitor-enter v1

    .line 9
    :try_start_1
    iget-object v2, v1, Le/m/d/b0/r/o;->a:Landroid/content/Context;

    iget-object v3, v1, Le/m/d/b0/r/o;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    monitor-exit v1

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->o()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->o()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/m/d/b0/r/k;

    .line 13
    iget-object p1, p1, Le/m/d/b0/r/k;->d:Lorg/json/JSONArray;

    .line 14
    iget-object v1, v0, Le/m/d/b0/k;->b:Le/m/d/j/c;

    if-nez v1, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    :try_start_2
    invoke-static {p1}, Le/m/d/b0/k;->d(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p1

    .line 16
    iget-object v0, v0, Le/m/d/b0/k;->b:Le/m/d/j/c;

    invoke-virtual {v0, p1}, Le/m/d/j/c;->c(Ljava/util/List;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Le/m/d/j/a; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_1
    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 17
    monitor-exit v1

    throw p1

    :catchall_1
    move-exception p1

    .line 18
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :cond_2
    const/4 p1, 0x0

    .line 19
    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
