.class public final Le/a/m0/c1/b0$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$Editor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/m0/c1/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field public final a:Le/a/m0/c1/b0$o;

.field public final b:Le/a/m0/c1/b0$f;

.field public final c:Le/a/m0/c1/b0;

.field public final d:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Le/a/m0/c1/b0$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/m0/c1/b0;Le/a/m0/c1/b0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p2, Ljava/util/ArrayDeque;

    invoke-direct {p2}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p2, p0, Le/a/m0/c1/b0$e;->d:Ljava/util/Queue;

    .line 3
    iput-object p1, p0, Le/a/m0/c1/b0$e;->c:Le/a/m0/c1/b0;

    .line 4
    iget-object p1, p1, Le/a/m0/c1/b0;->c:Le/a/m0/c1/b0$o;

    .line 5
    iput-object p1, p0, Le/a/m0/c1/b0$e;->a:Le/a/m0/c1/b0$o;

    .line 6
    sget-object p1, Le/a/m0/c1/b0$g;->a:Le/a/m0/c1/b0$g;

    iput-object p1, p0, Le/a/m0/c1/b0$e;->b:Le/a/m0/c1/b0$f;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 7

    .line 1
    sget-object v0, Le/a/m0/c1/b0;->i:Le/a/m0/c1/b0$n;

    .line 2
    iget-object v0, v0, Le/a/m0/c1/b0$n;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 3
    iget-object v0, p0, Le/a/m0/c1/b0$e;->d:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Le/a/m0/c1/b0$e;->d:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    iget-object v2, p0, Le/a/m0/c1/b0$e;->c:Le/a/m0/c1/b0;

    iget-object v3, p0, Le/a/m0/c1/b0$e;->d:Ljava/util/Queue;

    .line 6
    invoke-virtual {v2, p0, v3}, Le/a/m0/c1/b0;->d(Landroid/content/SharedPreferences$Editor;Ljava/util/Queue;)V

    .line 7
    iget-object v2, p0, Le/a/m0/c1/b0$e;->a:Le/a/m0/c1/b0$o;

    iget-object v2, v2, Le/a/m0/c1/b0$o;->a:Ljava/lang/Object;

    monitor-enter v2

    move v3, v1

    .line 8
    :cond_0
    :goto_0
    :try_start_0
    iget-object v4, p0, Le/a/m0/c1/b0$e;->d:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/m0/c1/b0$b;

    if-eqz v4, :cond_1

    .line 9
    iget-object v5, p0, Le/a/m0/c1/b0$e;->a:Le/a/m0/c1/b0$o;

    iget-object v5, v5, Le/a/m0/c1/b0$o;->b:Ljava/util/Map;

    invoke-interface {v4, p0, v5}, Le/a/m0/c1/b0$b;->a(Landroid/content/SharedPreferences$Editor;Ljava/util/Map;)V

    add-int/lit8 v3, v3, 0x1

    .line 10
    instance-of v5, v4, Le/a/m0/c1/b0$p;

    if-eqz v5, :cond_0

    .line 11
    check-cast v4, Le/a/m0/c1/b0$p;

    invoke-interface {v4}, Le/a/m0/c1/b0$p;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_1
    iget-object v4, p0, Le/a/m0/c1/b0$e;->a:Le/a/m0/c1/b0$o;

    iget-object v4, v4, Le/a/m0/c1/b0$o;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 13
    iget-object v4, p0, Le/a/m0/c1/b0$e;->c:Le/a/m0/c1/b0;

    const/4 v5, 0x0

    .line 14
    invoke-virtual {v4, p0, v5}, Le/a/m0/c1/b0;->d(Landroid/content/SharedPreferences$Editor;Ljava/util/Queue;)V

    .line 15
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 16
    iget-object v2, p0, Le/a/m0/c1/b0$e;->c:Le/a/m0/c1/b0;

    .line 17
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, v2, Le/a/m0/c1/b0;->f:Ljava/util/WeakHashMap;

    invoke-virtual {v4}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 19
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 20
    iget-object v5, v2, Le/a/m0/c1/b0;->f:Ljava/util/WeakHashMap;

    invoke-virtual {v5}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 21
    iget-object v5, v2, Le/a/m0/c1/b0;->f:Ljava/util/WeakHashMap;

    invoke-virtual {v5}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    if-eqz v6, :cond_3

    .line 22
    invoke-interface {v6, v2, v4}, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    if-eqz v3, :cond_7

    .line 23
    iget-object v0, p0, Le/a/m0/c1/b0$e;->a:Le/a/m0/c1/b0$o;

    iget-object v2, v0, Le/a/m0/c1/b0$o;->d:Ljava/lang/Thread;

    if-nez v2, :cond_7

    .line 24
    monitor-enter v0

    .line 25
    :try_start_1
    iget-object v2, p0, Le/a/m0/c1/b0$e;->a:Le/a/m0/c1/b0$o;

    iget-object v2, v2, Le/a/m0/c1/b0$o;->d:Ljava/lang/Thread;

    if-nez v2, :cond_5

    .line 26
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    iget-object v4, p0, Le/a/m0/c1/b0$e;->a:Le/a/m0/c1/b0$o;

    new-instance v5, Ljava/lang/Thread;

    iget-object v6, p0, Le/a/m0/c1/b0$e;->c:Le/a/m0/c1/b0;

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v5, v4, Le/a/m0/c1/b0$o;->d:Ljava/lang/Thread;

    invoke-virtual {v2, v5}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    .line 27
    :cond_5
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :catchall_1
    move-exception v0

    .line 28
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_6
    move v3, v1

    :cond_7
    :goto_2
    if-eqz v3, :cond_8

    const/4 v1, 0x1

    :cond_8
    return v1
.end method

.method public apply()V
    .locals 2

    .line 1
    sget-object v0, Le/a/m0/c1/b0;->i:Le/a/m0/c1/b0$n;

    .line 2
    iget-object v0, v0, Le/a/m0/c1/b0$n;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 3
    invoke-virtual {p0}, Le/a/m0/c1/b0$e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Le/a/m0/c1/b0$e;->c:Le/a/m0/c1/b0;

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v1, Le/a/m0/c1/b0;->k:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public clear()Landroid/content/SharedPreferences$Editor;
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/m0/c1/b0$e;->d:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 2
    iget-object v0, p0, Le/a/m0/c1/b0$e;->d:Ljava/util/Queue;

    iget-object v1, p0, Le/a/m0/c1/b0$e;->b:Le/a/m0/c1/b0$f;

    check-cast v1, Le/a/m0/c1/b0$g;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3}, Le/a/m0/c1/b0$g;->a(ILjava/lang/String;Ljava/lang/Object;)Le/a/m0/c1/b0$b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public commit()Z
    .locals 4

    .line 1
    sget-object v0, Le/a/m0/c1/b0;->i:Le/a/m0/c1/b0$n;

    .line 2
    iget-object v0, v0, Le/a/m0/c1/b0$n;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 3
    invoke-virtual {p0}, Le/a/m0/c1/b0$e;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Le/a/m0/c1/b0$e;->c:Le/a/m0/c1/b0;

    .line 5
    iget-object v2, v0, Le/a/m0/c1/b0;->c:Le/a/m0/c1/b0$o;

    monitor-enter v2

    .line 6
    :try_start_0
    sget-object v3, Le/a/m0/c1/b0;->k:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :try_start_1
    iget-object v0, v0, Le/a/m0/c1/b0;->c:Le/a/m0/c1/b0$o;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    :try_start_2
    monitor-exit v2

    const/4 v0, 0x1

    move v1, v0

    goto :goto_0

    .line 9
    :catch_0
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 10
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    :goto_0
    return v1
.end method

.method public putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/m0/c1/b0$e;->d:Ljava/util/Queue;

    iget-object v1, p0, Le/a/m0/c1/b0$e;->b:Le/a/m0/c1/b0$f;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    check-cast v1, Le/a/m0/c1/b0$g;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1, p2}, Le/a/m0/c1/b0$g;->a(ILjava/lang/String;Ljava/lang/Object;)Le/a/m0/c1/b0$b;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/m0/c1/b0$e;->d:Ljava/util/Queue;

    iget-object v1, p0, Le/a/m0/c1/b0$e;->b:Le/a/m0/c1/b0$f;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    check-cast v1, Le/a/m0/c1/b0$g;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1, p2}, Le/a/m0/c1/b0$g;->a(ILjava/lang/String;Ljava/lang/Object;)Le/a/m0/c1/b0$b;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/m0/c1/b0$e;->d:Ljava/util/Queue;

    iget-object v1, p0, Le/a/m0/c1/b0$e;->b:Le/a/m0/c1/b0$f;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    check-cast v1, Le/a/m0/c1/b0$g;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1, p2}, Le/a/m0/c1/b0$g;->a(ILjava/lang/String;Ljava/lang/Object;)Le/a/m0/c1/b0$b;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/m0/c1/b0$e;->d:Ljava/util/Queue;

    iget-object v1, p0, Le/a/m0/c1/b0$e;->b:Le/a/m0/c1/b0$f;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    check-cast v1, Le/a/m0/c1/b0$g;

    const/4 p3, 0x1

    invoke-virtual {v1, p3, p1, p2}, Le/a/m0/c1/b0$g;->a(ILjava/lang/String;Ljava/lang/Object;)Le/a/m0/c1/b0$b;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/m0/c1/b0$e;->d:Ljava/util/Queue;

    iget-object v1, p0, Le/a/m0/c1/b0$e;->b:Le/a/m0/c1/b0$f;

    check-cast v1, Le/a/m0/c1/b0$g;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1, p2}, Le/a/m0/c1/b0$g;->a(ILjava/lang/String;Ljava/lang/Object;)Le/a/m0/c1/b0$b;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/SharedPreferences$Editor;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/m0/c1/b0$e;->d:Ljava/util/Queue;

    iget-object v1, p0, Le/a/m0/c1/b0$e;->b:Le/a/m0/c1/b0$f;

    check-cast v1, Le/a/m0/c1/b0$g;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1, p2}, Le/a/m0/c1/b0$g;->a(ILjava/lang/String;Ljava/lang/Object;)Le/a/m0/c1/b0$b;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/m0/c1/b0$e;->d:Ljava/util/Queue;

    iget-object v1, p0, Le/a/m0/c1/b0$e;->b:Le/a/m0/c1/b0$f;

    check-cast v1, Le/a/m0/c1/b0$g;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Le/a/m0/c1/b0$g;->a(ILjava/lang/String;Ljava/lang/Object;)Le/a/m0/c1/b0$b;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    return-object p0
.end method
