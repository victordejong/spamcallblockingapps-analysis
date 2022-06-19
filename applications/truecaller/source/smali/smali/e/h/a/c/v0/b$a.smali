.class public Le/h/a/c/v0/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/h/a/c/v0/b;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/h/a/c/v0/b;


# direct methods
.method public constructor <init>(Le/h/a/c/v0/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/h/a/c/v0/b$a;->a:Le/h/a/c/v0/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    iget-object v1, p0, Le/h/a/c/v0/b$a;->a:Le/h/a/c/v0/b;

    .line 4
    iget-object v1, v1, Le/h/a/c/v0/b;->i:Ljava/util/Map;

    .line 5
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6
    iget-object v1, p0, Le/h/a/c/v0/b$a;->a:Le/h/a/c/v0/b;

    .line 7
    iget-object v1, v1, Le/h/a/c/v0/b;->i:Ljava/util/Map;

    .line 8
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 9
    iget-object v1, p0, Le/h/a/c/v0/b$a;->a:Le/h/a/c/v0/b;

    .line 10
    iget-object v1, v1, Le/h/a/c/v0/b;->i:Ljava/util/Map;

    .line 11
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Le/h/a/c/v0/b$a;->a:Le/h/a/c/v0/b;

    invoke-virtual {v0}, Le/h/a/c/v0/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Le/h/a/c/v0/b;->a(Le/h/a/c/v0/b;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 13
    :goto_0
    iget-object v1, p0, Le/h/a/c/v0/b$a;->a:Le/h/a/c/v0/b;

    iget-object v1, v1, Le/h/a/c/v0/b;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 14
    iget-object v1, p0, Le/h/a/c/v0/b$a;->a:Le/h/a/c/v0/b;

    iget-object v1, v1, Le/h/a/c/v0/b;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 15
    iget-object v1, p0, Le/h/a/c/v0/b$a;->a:Le/h/a/c/v0/b;

    iget-object v2, v1, Le/h/a/c/v0/b;->a:Ljava/util/Map;

    iget-object v1, v1, Le/h/a/c/v0/b;->b:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 16
    :cond_1
    iget-object v1, p0, Le/h/a/c/v0/b$a;->a:Le/h/a/c/v0/b;

    iget-object v1, v1, Le/h/a/c/v0/b;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 17
    iget-object v0, p0, Le/h/a/c/v0/b$a;->a:Le/h/a/c/v0/b;

    .line 18
    iget-object v0, v0, Le/h/a/c/v0/b;->e:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 19
    invoke-virtual {v0}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v0

    iget-object v1, p0, Le/h/a/c/v0/b$a;->a:Le/h/a/c/v0/b;

    .line 20
    iget-object v1, v1, Le/h/a/c/v0/b;->e:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 21
    invoke-static {v1}, Ln3/g0/y;->p0(Lcom/clevertap/android/sdk/CleverTapInstanceConfig;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activated successfully with configs: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Le/h/a/c/v0/b$a;->a:Le/h/a/c/v0/b;

    iget-object v3, v3, Le/h/a/c/v0/b;->a:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 22
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 23
    iget-object v1, p0, Le/h/a/c/v0/b$a;->a:Le/h/a/c/v0/b;

    .line 24
    iget-object v1, v1, Le/h/a/c/v0/b;->e:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 25
    invoke-virtual {v1}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v1

    iget-object v2, p0, Le/h/a/c/v0/b$a;->a:Le/h/a/c/v0/b;

    .line 26
    iget-object v2, v2, Le/h/a/c/v0/b;->e:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 27
    invoke-static {v2}, Ln3/g0/y;->p0(Lcom/clevertap/android/sdk/CleverTapInstanceConfig;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Activate failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 29
    invoke-virtual {v1, v2, v0}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    :goto_1
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    .line 31
    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
