.class public final synthetic Le/m/h/b/b/e/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# instance fields
.field public final a:Le/m/h/b/b/e/q;

.field public final b:Le/m/h/a/c/a;


# direct methods
.method public constructor <init>(Le/m/h/b/b/e/q;Le/m/h/a/c/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/h/b/b/e/p;->a:Le/m/h/b/b/e/q;

    iput-object p2, p0, Le/m/h/b/b/e/p;->b:Le/m/h/a/c/a;

    return-void
.end method


# virtual methods
.method public final then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 12

    iget-object v0, p0, Le/m/h/b/b/e/p;->a:Le/m/h/b/b/e/q;

    iget-object v1, p0, Le/m/h/b/b/e/p;->b:Le/m/h/a/c/a;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->q()Z

    move-result p1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 3
    invoke-static {v2}, Lcom/google/android/gms/tasks/Tasks;->f(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    goto/16 :goto_3

    .line 4
    :cond_0
    iget-object p1, v0, Le/m/h/b/b/e/q;->a:Le/m/h/b/b/e/e;

    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :try_start_0
    iget-object v0, p1, Le/m/h/b/b/e/e;->e:Le/m/h/b/b/e/o;

    iget-object v3, p1, Le/m/h/b/b/e/e;->a:Landroid/content/Context;

    iget-object v4, p1, Le/m/h/b/b/e/e;->c:Le/m/h/b/b/b;

    .line 7
    invoke-virtual {v0, v3, v4}, Le/m/h/b/b/e/o;->b(Landroid/content/Context;Le/m/h/b/b/b;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Le/m/h/a/a; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    move-object v3, v0

    check-cast v3, Ljava/util/ArrayList;

    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/m/h/a/d/i;

    .line 9
    invoke-virtual {p1}, Le/m/h/b/b/e/e;->b()Z

    move-result v5

    const/4 v6, 0x1

    xor-int/2addr v5, v6

    if-eqz v5, :cond_1

    .line 10
    iget-object v7, p1, Le/m/h/b/b/e/e;->h:Le/m/h/a/d/l;

    iget-object v8, p1, Le/m/h/b/b/e/e;->c:Le/m/h/b/b/b;

    invoke-virtual {v7, v8}, Le/m/h/a/d/l;->b(Le/m/h/a/c/b;)V

    .line 11
    :cond_1
    iget-object v7, p1, Le/m/h/b/b/e/e;->c:Le/m/h/b/b/b;

    .line 12
    iget-object v3, v3, Le/m/h/a/d/i;->c:Ljava/lang/String;

    .line 13
    iget-object v8, p1, Le/m/h/b/b/e/e;->h:Le/m/h/a/d/l;

    .line 14
    monitor-enter v8
    :try_end_1
    .catch Le/m/h/a/a; {:try_start_1 .. :try_end_1} :catch_0

    .line 15
    :try_start_2
    invoke-virtual {v8}, Le/m/h/a/d/l;->i()Landroid/content/SharedPreferences;

    move-result-object v9

    const-string v10, "current_model_hash_%s"

    new-array v11, v6, [Ljava/lang/Object;

    .line 16
    invoke-virtual {v7}, Le/m/h/b/b/b;->b()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v11, v4

    .line 17
    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 18
    invoke-interface {v9, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 19
    :try_start_3
    monitor-exit v8

    .line 20
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v6

    if-nez v5, :cond_3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move-object v0, v2

    .line 21
    :cond_3
    :goto_0
    iput-object v0, p1, Le/m/h/b/b/e/e;->l:Ljava/util/List;
    :try_end_3
    .catch Le/m/h/a/a; {:try_start_3 .. :try_end_3} :catch_0

    if-eqz v0, :cond_5

    .line 22
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 23
    :cond_4
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    iput-object v0, p1, Le/m/h/b/b/e/e;->k:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 24
    iput-object v1, p1, Le/m/h/b/b/e/e;->m:Le/m/h/a/c/a;

    .line 25
    invoke-virtual {p1}, Le/m/h/b/b/e/e;->h()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    goto :goto_3

    .line 26
    :cond_5
    :goto_1
    sget-object v0, Le/m/h/b/b/e/e;->o:Lcom/google/android/gms/common/internal/GmsLogger;

    const-string v1, "TranslateDLManager"

    const-string v3, "No model updates for model: "

    iget-object p1, p1, Le/m/h/b/b/e/e;->c:Le/m/h/b/b/b;

    invoke-virtual {p1}, Le/m/h/b/b/b;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_6
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/common/internal/GmsLogger;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-static {v2}, Lcom/google/android/gms/tasks/Tasks;->f(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    goto :goto_3

    :catchall_0
    move-exception p1

    .line 28
    :try_start_4
    monitor-exit v8

    throw p1
    :try_end_4
    .catch Le/m/h/a/a; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    .line 29
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->e(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    :goto_3
    return-object p1
.end method
