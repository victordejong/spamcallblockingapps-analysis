.class public Le/h/a/c/o0/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

.field public b:Ljava/lang/String;

.field public c:Z

.field public final d:Le/h/a/c/j;

.field public final e:Le/h/a/c/k;

.field public f:Le/h/a/c/z0/a;

.field public final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Le/h/a/c/k;Le/h/a/c/j;Le/h/a/c/z0/a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Le/h/a/c/o0/b;->c:Z

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Le/h/a/c/o0/b;->g:Ljava/util/Map;

    .line 4
    iput-object p1, p0, Le/h/a/c/o0/b;->b:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Le/h/a/c/o0/b;->a:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 6
    iput-object p3, p0, Le/h/a/c/o0/b;->e:Le/h/a/c/k;

    .line 7
    iput-object p4, p0, Le/h/a/c/o0/b;->d:Le/h/a/c/j;

    .line 8
    iput-object p5, p0, Le/h/a/c/o0/b;->f:Le/h/a/c/z0/a;

    .line 9
    invoke-virtual {p0}, Le/h/a/c/o0/b;->f()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lorg/json/JSONObject;)V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Le/h/a/c/o0/b;->f:Le/h/a/c/z0/a;

    invoke-virtual {p0}, Le/h/a/c/o0/b;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ff_cache.json"

    invoke-virtual {v0, v1, v2, p1}, Le/h/a/c/z0/a;->c(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 2
    invoke-virtual {p0}, Le/h/a/c/o0/b;->d()Le/h/a/c/g0;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Le/h/a/c/o0/b;->e()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Feature flags saved into file-["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Le/h/a/c/o0/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Le/h/a/c/o0/b;->g:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 4
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 5
    invoke-virtual {p0}, Le/h/a/c/o0/b;->d()Le/h/a/c/g0;

    move-result-object v0

    invoke-virtual {p0}, Le/h/a/c/o0/b;->e()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ArchiveData failed - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :goto_0
    monitor-exit p0

    return-void

    .line 7
    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public b()Ljava/lang/String;
    .locals 2

    const-string v0, "Feature_Flag_"

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/h/a/c/o0/b;->a:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 2
    iget-object v1, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/h/a/c/o0/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Le/h/a/c/o0/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ff_cache.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Le/h/a/c/g0;
    .locals 1

    .line 1
    iget-object v0, p0, Le/h/a/c/o0/b;->a:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {v0}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Le/h/a/c/o0/b;->a:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 2
    iget-object v1, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v2, "[Feature Flag]"

    .line 3
    invoke-static {v0, v1, v2}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()V
    .locals 5

    .line 1
    iget-object v0, p0, Le/h/a/c/o0/b;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Le/h/a/c/o0/b;->a:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-static {v0}, Le/h/a/c/y0/a;->a(Lcom/clevertap/android/sdk/CleverTapInstanceConfig;)Le/h/a/c/y0/b;

    move-result-object v0

    invoke-virtual {v0}, Le/h/a/c/y0/b;->a()Le/h/a/c/y0/k;

    move-result-object v0

    .line 3
    new-instance v1, Le/h/a/c/o0/b$a;

    invoke-direct {v1, p0}, Le/h/a/c/o0/b$a;-><init>(Le/h/a/c/o0/b;)V

    .line 4
    iget-object v2, v0, Le/h/a/c/y0/k;->b:Ljava/util/concurrent/Executor;

    .line 5
    iget-object v3, v0, Le/h/a/c/y0/k;->f:Ljava/util/List;

    new-instance v4, Le/h/a/c/y0/i;

    invoke-direct {v4, v2, v1}, Le/h/a/c/y0/i;-><init>(Ljava/util/concurrent/Executor;Le/h/a/c/y0/g;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance v1, Le/h/a/c/o0/b$b;

    invoke-direct {v1, p0}, Le/h/a/c/o0/b$b;-><init>(Le/h/a/c/o0/b;)V

    .line 7
    iget-object v2, v0, Le/h/a/c/y0/k;->c:Ljava/util/concurrent/Executor;

    .line 8
    new-instance v3, Le/h/a/c/y0/j;

    const-string v4, "initFeatureFlags"

    invoke-direct {v3, v0, v4, v1}, Le/h/a/c/y0/j;-><init>(Le/h/a/c/y0/k;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 9
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
