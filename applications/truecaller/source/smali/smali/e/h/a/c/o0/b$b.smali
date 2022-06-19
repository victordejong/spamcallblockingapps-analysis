.class public Le/h/a/c/o0/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/h/a/c/o0/b;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/h/a/c/o0/b;


# direct methods
.method public constructor <init>(Le/h/a/c/o0/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/h/a/c/o0/b$b;->a:Le/h/a/c/o0/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Le/h/a/c/o0/b$b;->a:Le/h/a/c/o0/b;

    .line 3
    invoke-virtual {v0}, Le/h/a/c/o0/b;->d()Le/h/a/c/g0;

    move-result-object v0

    .line 4
    iget-object v1, p0, Le/h/a/c/o0/b$b;->a:Le/h/a/c/o0/b;

    .line 5
    invoke-virtual {v1}, Le/h/a/c/o0/b;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Feature flags init is called"

    .line 6
    invoke-virtual {v0, v1, v2}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Le/h/a/c/o0/b$b;->a:Le/h/a/c/o0/b;

    invoke-virtual {v0}, Le/h/a/c/o0/b;->c()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :try_start_1
    iget-object v1, p0, Le/h/a/c/o0/b$b;->a:Le/h/a/c/o0/b;

    .line 9
    iget-object v1, v1, Le/h/a/c/o0/b;->g:Ljava/util/Map;

    .line 10
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 11
    iget-object v1, p0, Le/h/a/c/o0/b$b;->a:Le/h/a/c/o0/b;

    iget-object v1, v1, Le/h/a/c/o0/b;->f:Le/h/a/c/z0/a;

    invoke-virtual {v1, v0}, Le/h/a/c/z0/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 12
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 13
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "kv"

    .line 14
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 15
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x0

    .line 16
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 17
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    if-eqz v3, :cond_0

    const-string v4, "n"

    .line 18
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "v"

    .line 19
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 20
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 21
    iget-object v5, p0, Le/h/a/c/o0/b$b;->a:Le/h/a/c/o0/b;

    .line 22
    iget-object v5, v5, Le/h/a/c/o0/b;->g:Ljava/util/Map;

    .line 23
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v5, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 24
    :cond_1
    iget-object v1, p0, Le/h/a/c/o0/b$b;->a:Le/h/a/c/o0/b;

    .line 25
    invoke-virtual {v1}, Le/h/a/c/o0/b;->d()Le/h/a/c/g0;

    move-result-object v1

    .line 26
    iget-object v2, p0, Le/h/a/c/o0/b$b;->a:Le/h/a/c/o0/b;

    .line 27
    invoke-virtual {v2}, Le/h/a/c/o0/b;->e()Ljava/lang/String;

    move-result-object v2

    .line 28
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Feature flags initialized from file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " with configs  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Le/h/a/c/o0/b$b;->a:Le/h/a/c/o0/b;

    .line 29
    iget-object v4, v4, Le/h/a/c/o0/b;->g:Ljava/util/Map;

    .line 30
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 31
    invoke-virtual {v1, v2, v3}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 32
    :cond_2
    iget-object v1, p0, Le/h/a/c/o0/b$b;->a:Le/h/a/c/o0/b;

    .line 33
    invoke-virtual {v1}, Le/h/a/c/o0/b;->d()Le/h/a/c/g0;

    move-result-object v1

    .line 34
    iget-object v2, p0, Le/h/a/c/o0/b$b;->a:Le/h/a/c/o0/b;

    .line 35
    invoke-virtual {v2}, Le/h/a/c/o0/b;->e()Ljava/lang/String;

    move-result-object v2

    .line 36
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Feature flags file is empty-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    :goto_1
    :try_start_2
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    monitor-exit p0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 38
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 39
    iget-object v2, p0, Le/h/a/c/o0/b$b;->a:Le/h/a/c/o0/b;

    .line 40
    invoke-virtual {v2}, Le/h/a/c/o0/b;->d()Le/h/a/c/g0;

    move-result-object v2

    .line 41
    iget-object v3, p0, Le/h/a/c/o0/b$b;->a:Le/h/a/c/o0/b;

    .line 42
    invoke-virtual {v3}, Le/h/a/c/o0/b;->e()Ljava/lang/String;

    move-result-object v3

    .line 43
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UnArchiveData failed file- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 45
    invoke-virtual {v2, v3, v0}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    monitor-exit p0

    :goto_2
    return-object v0

    :catchall_0
    move-exception v0

    .line 47
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
