.class public final Le/m/a/h/a/g/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/h/a/g/b;


# instance fields
.field public final a:Le/m/a/h/a/g/y;

.field public final b:Le/m/a/h/a/g/t0;

.field public final c:Le/m/a/h/a/g/o0;

.field public final d:Le/m/a/h/a/g/a0;

.field public final e:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Le/m/a/h/a/g/y;Le/m/a/h/a/g/t0;Le/m/a/h/a/g/o0;Le/m/a/h/a/g/a0;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Le/m/a/h/a/g/i;->e:Landroid/os/Handler;

    iput-object p1, p0, Le/m/a/h/a/g/i;->a:Le/m/a/h/a/g/y;

    iput-object p2, p0, Le/m/a/h/a/g/i;->b:Le/m/a/h/a/g/t0;

    iput-object p3, p0, Le/m/a/h/a/g/i;->c:Le/m/a/h/a/g/o0;

    iput-object p4, p0, Le/m/a/h/a/g/i;->d:Le/m/a/h/a/g/a0;

    return-void
.end method

.method public static h(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Locale;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Locale;

    .line 3
    invoke-virtual {v1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a(Le/m/a/h/a/g/c;)Le/m/a/h/a/h/r;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/a/h/a/g/c;",
            ")",
            "Le/m/a/h/a/h/r<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Le/m/a/h/a/g/c;->b:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    .line 3
    iget-object v0, p1, Le/m/a/h/a/g/c;->b:Ljava/util/List;

    .line 4
    iget-object v1, p0, Le/m/a/h/a/g/i;->c:Le/m/a/h/a/g/o0;

    .line 5
    invoke-virtual {v1}, Le/m/a/h/a/g/o0;->a()Le/m/a/h/a/g/h0;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :cond_0
    new-instance v3, Ljava/util/HashSet;

    .line 6
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 7
    invoke-virtual {v1}, Le/m/a/h/a/g/o0;->f()Ljava/util/Set;

    move-result-object v4

    .line 8
    move-object v5, v4

    check-cast v5, Ljava/util/HashSet;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-virtual {v1}, Le/m/a/h/a/g/o0;->c()Ljava/util/Set;

    move-result-object v1

    .line 10
    move-object v5, v1

    check-cast v5, Ljava/util/HashSet;

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-virtual {v2, v1}, Le/m/a/h/a/g/h0;->a(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 12
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v4, v5}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 13
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move-object v1, v3

    :goto_1
    const/4 v2, 0x0

    if-nez v1, :cond_3

    goto :goto_3

    .line 14
    :cond_3
    new-instance v3, Ljava/util/HashSet;

    .line 15
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 16
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Locale;

    .line 17
    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 18
    :cond_4
    invoke-interface {v1, v3}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 19
    :goto_3
    iget-object v0, p1, Le/m/a/h/a/g/c;->a:Ljava/util/List;

    .line 20
    iget-object v1, p0, Le/m/a/h/a/g/i;->c:Le/m/a/h/a/g/o0;

    .line 21
    invoke-virtual {v1}, Le/m/a/h/a/g/o0;->c()Ljava/util/Set;

    move-result-object v1

    .line 22
    invoke-interface {v1, v0}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 23
    iget-object v0, p1, Le/m/a/h/a/g/c;->a:Ljava/util/List;

    .line 24
    iget-object v1, p0, Le/m/a/h/a/g/i;->d:Le/m/a/h/a/g/a0;

    .line 25
    invoke-virtual {v1}, Le/m/a/h/a/g/a0;->a()Ljava/util/Set;

    move-result-object v1

    .line 26
    invoke-static {v0, v1}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_4

    .line 27
    :cond_5
    iget-object v0, p0, Le/m/a/h/a/g/i;->e:Landroid/os/Handler;

    new-instance v1, Le/m/a/h/a/g/u0;

    .line 28
    invoke-direct {v1, p0, p1}, Le/m/a/h/a/g/u0;-><init>(Le/m/a/h/a/g/i;Le/m/a/h/a/g/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 29
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Ln3/g0/y;->B2(Ljava/lang/Object;)Le/m/a/h/a/h/r;

    move-result-object p1

    return-object p1

    .line 30
    :cond_6
    :goto_4
    iget-object v0, p0, Le/m/a/h/a/g/i;->d:Le/m/a/h/a/g/a0;

    .line 31
    iget-object v1, p1, Le/m/a/h/a/g/c;->a:Ljava/util/List;

    .line 32
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-class v3, Le/m/a/h/a/g/a0;

    monitor-enter v3

    .line 33
    :try_start_0
    invoke-virtual {v0}, Le/m/a/h/a/g/a0;->a()Ljava/util/Set;

    move-result-object v4

    new-instance v5, Ljava/util/HashSet;

    .line 34
    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 35
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v6, 0x1

    move v7, v2

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 36
    invoke-interface {v1, v8}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    move v7, v6

    goto :goto_5

    .line 37
    :cond_7
    invoke-virtual {v5, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :cond_8
    if-eqz v7, :cond_9

    .line 38
    :try_start_1
    invoke-virtual {v0}, Le/m/a/h/a/g/a0;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 39
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "modules_to_uninstall_if_emulated"

    .line 40
    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 41
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    :catch_0
    :cond_9
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 43
    iget-object v5, p0, Le/m/a/h/a/g/i;->a:Le/m/a/h/a/g/y;

    .line 44
    iget-object v7, p1, Le/m/a/h/a/g/c;->a:Ljava/util/List;

    .line 45
    iget-object p1, p1, Le/m/a/h/a/g/c;->b:Ljava/util/List;

    .line 46
    invoke-static {p1}, Le/m/a/h/a/g/i;->h(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    .line 47
    iget-object p1, v5, Le/m/a/h/a/g/y;->b:Le/m/a/h/a/d/r;

    if-nez p1, :cond_a

    .line 48
    invoke-static {}, Le/m/a/h/a/g/y;->c()Le/m/a/h/a/h/r;

    move-result-object p1

    goto :goto_6

    :cond_a
    sget-object p1, Le/m/a/h/a/g/y;->c:Le/m/a/h/a/d/g;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v7, v0, v2

    aput-object v8, v0, v6

    const-string v1, "startInstall(%s,%s)"

    .line 49
    invoke-virtual {p1, v1, v0}, Le/m/a/h/a/d/g;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance p1, Le/m/a/h/a/h/n;

    .line 50
    invoke-direct {p1}, Le/m/a/h/a/h/n;-><init>()V

    iget-object v0, v5, Le/m/a/h/a/g/y;->b:Le/m/a/h/a/d/r;

    new-instance v1, Le/m/a/h/a/g/r;

    move-object v4, v1

    move-object v6, p1

    move-object v9, p1

    .line 51
    invoke-direct/range {v4 .. v9}, Le/m/a/h/a/g/r;-><init>(Le/m/a/h/a/g/y;Le/m/a/h/a/h/n;Ljava/util/Collection;Ljava/util/Collection;Le/m/a/h/a/h/n;)V

    invoke-virtual {v0, v1, p1}, Le/m/a/h/a/d/r;->b(Le/m/a/h/a/d/h;Le/m/a/h/a/h/n;)V

    .line 52
    iget-object p1, p1, Le/m/a/h/a/h/n;->a:Le/m/a/h/a/h/r;

    :goto_6
    return-object p1

    :catchall_0
    move-exception p1

    .line 53
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final b(Ljava/util/List;)Le/m/a/h/a/h/r;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Le/m/a/h/a/h/r<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Le/m/a/h/a/g/i;->d:Le/m/a/h/a/g/a0;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Le/m/a/h/a/g/a0;

    monitor-enter v1

    .line 2
    :try_start_0
    invoke-virtual {v0}, Le/m/a/h/a/g/a0;->a()Ljava/util/Set;

    move-result-object v2

    new-instance v3, Ljava/util/HashSet;

    .line 3
    invoke-direct {v3, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 4
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 5
    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    or-int/2addr v5, v6

    goto :goto_0

    :cond_0
    if-eqz v5, :cond_1

    .line 6
    :try_start_1
    invoke-virtual {v0}, Le/m/a/h/a/g/a0;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 7
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "modules_to_uninstall_if_emulated"

    .line 8
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 9
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :catch_0
    :cond_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 11
    iget-object v0, p0, Le/m/a/h/a/g/i;->a:Le/m/a/h/a/g/y;

    .line 12
    iget-object v1, v0, Le/m/a/h/a/g/y;->b:Le/m/a/h/a/d/r;

    if-nez v1, :cond_2

    .line 13
    invoke-static {}, Le/m/a/h/a/g/y;->c()Le/m/a/h/a/h/r;

    move-result-object p1

    goto :goto_1

    :cond_2
    sget-object v1, Le/m/a/h/a/g/y;->c:Le/m/a/h/a/d/g;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    const-string v3, "deferredUninstall(%s)"

    .line 14
    invoke-virtual {v1, v3, v2}, Le/m/a/h/a/d/g;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v1, Le/m/a/h/a/h/n;

    .line 15
    invoke-direct {v1}, Le/m/a/h/a/h/n;-><init>()V

    iget-object v2, v0, Le/m/a/h/a/g/y;->b:Le/m/a/h/a/d/r;

    new-instance v3, Le/m/a/h/a/g/s;

    .line 16
    invoke-direct {v3, v0, v1, p1, v1}, Le/m/a/h/a/g/s;-><init>(Le/m/a/h/a/g/y;Le/m/a/h/a/h/n;Ljava/util/List;Le/m/a/h/a/h/n;)V

    invoke-virtual {v2, v3, v1}, Le/m/a/h/a/d/r;->b(Le/m/a/h/a/d/h;Le/m/a/h/a/h/n;)V

    .line 17
    iget-object p1, v1, Le/m/a/h/a/h/n;->a:Le/m/a/h/a/h/r;

    :goto_1
    return-object p1

    :catchall_0
    move-exception p1

    .line 18
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final declared-synchronized c(Le/m/a/h/a/g/e;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Le/m/a/h/a/g/i;->b:Le/m/a/h/a/g/t0;

    .line 1
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, v0, Le/m/a/h/a/e/c;->a:Le/m/a/h/a/d/g;

    const-string v2, "unregisterListener"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 2
    invoke-virtual {v1, v2, v3}, Le/m/a/h/a/d/g;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    const-string v1, "Unregistered Play Core listener should not be null."

    .line 3
    invoke-static {p1, v1}, Ln3/g0/y;->p2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Le/m/a/h/a/e/c;->d:Ljava/util/Set;

    .line 4
    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {v0}, Le/m/a/h/a/e/c;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 7
    :try_start_3
    monitor-exit v0

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized d(Le/m/a/h/a/g/e;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Le/m/a/h/a/g/i;->b:Le/m/a/h/a/g/t0;

    .line 1
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, v0, Le/m/a/h/a/e/c;->a:Le/m/a/h/a/d/g;

    const-string v2, "registerListener"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 2
    invoke-virtual {v1, v2, v3}, Le/m/a/h/a/d/g;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    const-string v1, "Registered Play Core listener should not be null."

    .line 3
    invoke-static {p1, v1}, Ln3/g0/y;->p2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Le/m/a/h/a/e/c;->d:Ljava/util/Set;

    .line 4
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {v0}, Le/m/a/h/a/e/c;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 7
    :try_start_3
    monitor-exit v0

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final e(Le/m/a/h/a/g/d;Landroid/app/Activity;I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Le/m/a/h/a/g/d;->h()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 2
    invoke-virtual {p1}, Le/m/a/h/a/g/d;->f()Landroid/app/PendingIntent;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Le/m/a/h/a/g/d;->f()Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p2

    move v2, p3

    .line 4
    invoke-virtual/range {v0 .. v6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public final f(I)Le/m/a/h/a/h/r;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Le/m/a/h/a/h/r<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Le/m/a/h/a/g/i;->a:Le/m/a/h/a/g/y;

    .line 1
    iget-object v1, v0, Le/m/a/h/a/g/y;->b:Le/m/a/h/a/d/r;

    if-nez v1, :cond_0

    .line 2
    invoke-static {}, Le/m/a/h/a/g/y;->c()Le/m/a/h/a/h/r;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object v1, Le/m/a/h/a/g/y;->c:Le/m/a/h/a/d/g;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "cancelInstall(%d)"

    invoke-virtual {v1, v3, v2}, Le/m/a/h/a/d/g;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v1, Le/m/a/h/a/h/n;

    .line 4
    invoke-direct {v1}, Le/m/a/h/a/h/n;-><init>()V

    iget-object v2, v0, Le/m/a/h/a/g/y;->b:Le/m/a/h/a/d/r;

    new-instance v3, Le/m/a/h/a/g/t;

    .line 5
    invoke-direct {v3, v0, v1, p1, v1}, Le/m/a/h/a/g/t;-><init>(Le/m/a/h/a/g/y;Le/m/a/h/a/h/n;ILe/m/a/h/a/h/n;)V

    invoke-virtual {v2, v3, v1}, Le/m/a/h/a/d/r;->b(Le/m/a/h/a/d/h;Le/m/a/h/a/h/n;)V

    .line 6
    iget-object p1, v1, Le/m/a/h/a/h/n;->a:Le/m/a/h/a/h/r;

    :goto_0
    return-object p1
.end method

.method public final g()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Le/m/a/h/a/g/i;->c:Le/m/a/h/a/g/o0;

    .line 1
    invoke-virtual {v0}, Le/m/a/h/a/g/o0;->c()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
