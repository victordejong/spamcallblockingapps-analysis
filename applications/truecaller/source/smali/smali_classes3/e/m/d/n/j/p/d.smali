.class public Le/m/d/n/j/p/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/SuccessContinuation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/SuccessContinuation<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/m/d/n/j/p/e;


# direct methods
.method public constructor <init>(Le/m/d/n/j/p/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/d/n/j/p/d;->a:Le/m/d/n/j/p/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    sget-object p1, Le/m/d/n/j/f;->a:Le/m/d/n/j/f;

    iget-object v0, p0, Le/m/d/n/j/p/d;->a:Le/m/d/n/j/p/e;

    .line 3
    iget-object v1, v0, Le/m/d/n/j/p/e;->f:Le/m/d/n/j/p/k/a;

    .line 4
    iget-object v0, v0, Le/m/d/n/j/p/e;->b:Le/m/d/n/j/p/j/f;

    .line 5
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x6

    const/4 v5, 0x0

    .line 6
    :try_start_0
    invoke-virtual {v1, v0}, Le/m/d/n/j/p/k/a;->c(Le/m/d/n/j/p/j/f;)Ljava/util/Map;

    move-result-object v6

    .line 7
    iget-object v7, v1, Le/m/d/n/j/p/k/a;->b:Le/m/d/n/j/m/b;

    iget-object v8, v1, Le/m/d/n/j/p/k/a;->a:Ljava/lang/String;

    .line 8
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    new-instance v7, Le/m/d/n/j/m/a;

    invoke-direct {v7, v8, v6}, Le/m/d/n/j/m/a;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 10
    iget-object v8, v7, Le/m/d/n/j/m/a;->c:Ljava/util/Map;

    const-string v9, "User-Agent"

    const-string v10, "Crashlytics Android SDK/18.2.8"

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v8, v7, Le/m/d/n/j/m/a;->c:Ljava/util/Map;

    const-string v9, "X-CRASHLYTICS-DEVELOPER-TOKEN"

    const-string v10, "470fa2b4ae81cd56ecbcda9735803434cec591fa"

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-virtual {v1, v7, v0}, Le/m/d/n/j/p/k/a;->a(Le/m/d/n/j/m/a;Le/m/d/n/j/p/j/f;)Le/m/d/n/j/m/a;

    .line 13
    invoke-virtual {p1, v3}, Le/m/d/n/j/f;->a(I)Z

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Settings query params were: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    invoke-virtual {p1, v2}, Le/m/d/n/j/f;->a(I)Z

    .line 16
    invoke-virtual {v7}, Le/m/d/n/j/m/a;->b()Le/m/d/n/j/m/c;

    move-result-object v0

    .line 17
    invoke-virtual {v1, v0}, Le/m/d/n/j/p/k/a;->d(Le/m/d/n/j/m/c;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 18
    :catch_0
    invoke-virtual {p1, v4}, Le/m/d/n/j/f;->a(I)Z

    move-object v0, v5

    :goto_0
    if-eqz v0, :cond_0

    .line 19
    iget-object v1, p0, Le/m/d/n/j/p/d;->a:Le/m/d/n/j/p/e;

    .line 20
    iget-object v1, v1, Le/m/d/n/j/p/e;->c:Le/m/d/n/j/p/g;

    .line 21
    invoke-virtual {v1, v0}, Le/m/d/n/j/p/g;->a(Lorg/json/JSONObject;)Le/m/d/n/j/p/j/e;

    move-result-object v1

    .line 22
    iget-object v6, p0, Le/m/d/n/j/p/d;->a:Le/m/d/n/j/p/e;

    .line 23
    iget-object v6, v6, Le/m/d/n/j/p/e;->e:Le/m/d/n/j/p/a;

    .line 24
    iget-wide v7, v1, Le/m/d/n/j/p/j/e;->d:J

    .line 25
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "Failed to close settings writer."

    .line 26
    invoke-virtual {p1, v2}, Le/m/d/n/j/f;->a(I)Z

    :try_start_1
    const-string v2, "expires_at"

    .line 27
    invoke-virtual {v0, v2, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 28
    new-instance v2, Ljava/io/FileWriter;

    .line 29
    iget-object v6, v6, Le/m/d/n/j/p/a;->a:Ljava/io/File;

    .line 30
    invoke-direct {v2, v6}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 31
    :try_start_2
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v2}, Ljava/io/FileWriter;->flush()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_1
    move-object v2, v5

    .line 33
    :catch_2
    :try_start_3
    invoke-virtual {p1, v4}, Le/m/d/n/j/f;->a(I)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 34
    :goto_1
    invoke-static {v2, v9}, Le/m/d/n/j/j/l;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 35
    iget-object v2, p0, Le/m/d/n/j/p/d;->a:Le/m/d/n/j/p/e;

    .line 36
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 38
    invoke-virtual {p1, v3}, Le/m/d/n/j/f;->a(I)Z

    .line 39
    iget-object p1, p0, Le/m/d/n/j/p/d;->a:Le/m/d/n/j/p/e;

    .line 40
    iget-object v0, p1, Le/m/d/n/j/p/e;->b:Le/m/d/n/j/p/j/f;

    .line 41
    iget-object v0, v0, Le/m/d/n/j/p/j/f;->f:Ljava/lang/String;

    .line 42
    iget-object p1, p1, Le/m/d/n/j/p/e;->a:Landroid/content/Context;

    invoke-static {p1}, Le/m/d/n/j/j/l;->g(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 43
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v2, "existing_instance_identifier"

    .line 44
    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 45
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 46
    iget-object p1, p0, Le/m/d/n/j/p/d;->a:Le/m/d/n/j/p/e;

    .line 47
    iget-object p1, p1, Le/m/d/n/j/p/e;->h:Ljava/util/concurrent/atomic/AtomicReference;

    .line 48
    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 49
    iget-object p1, p0, Le/m/d/n/j/p/d;->a:Le/m/d/n/j/p/e;

    .line 50
    iget-object p1, p1, Le/m/d/n/j/p/e;->i:Ljava/util/concurrent/atomic/AtomicReference;

    .line 51
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 52
    iget-object v0, v1, Le/m/d/n/j/p/j/e;->a:Le/m/d/n/j/p/j/a;

    .line 53
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->b(Ljava/lang/Object;)Z

    .line 54
    new-instance p1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 55
    iget-object v0, v1, Le/m/d/n/j/p/j/e;->a:Le/m/d/n/j/p/j/a;

    .line 56
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->b(Ljava/lang/Object;)Z

    .line 57
    iget-object v0, p0, Le/m/d/n/j/p/d;->a:Le/m/d/n/j/p/e;

    .line 58
    iget-object v0, v0, Le/m/d/n/j/p/e;->i:Ljava/util/concurrent/atomic/AtomicReference;

    .line 59
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_4

    :catchall_2
    move-exception p1

    move-object v5, v2

    :goto_2
    move-object v2, v5

    .line 60
    :goto_3
    invoke-static {v2, v9}, Le/m/d/n/j/j/l;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 61
    throw p1

    .line 62
    :cond_0
    :goto_4
    invoke-static {v5}, Lcom/google/android/gms/tasks/Tasks;->f(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
