.class public final synthetic Le/m/d/z/m/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Le/m/d/z/m/k;


# direct methods
.method public synthetic constructor <init>(Le/m/d/z/m/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/d/z/m/c;->a:Le/m/d/z/m/k;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v0, p0, Le/m/d/z/m/c;->a:Le/m/d/z/m/k;

    .line 1
    iget-object v1, v0, Le/m/d/z/m/k;->d:Le/m/d/g;

    .line 2
    invoke-virtual {v1}, Le/m/d/g;->a()V

    .line 3
    iget-object v1, v1, Le/m/d/g;->a:Landroid/content/Context;

    .line 4
    iput-object v1, v0, Le/m/d/z/m/k;->j:Landroid/content/Context;

    .line 5
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Le/m/d/z/m/k;->o:Ljava/lang/String;

    .line 6
    invoke-static {}, Le/m/d/z/g/d;->e()Le/m/d/z/g/d;

    move-result-object v1

    iput-object v1, v0, Le/m/d/z/m/k;->k:Le/m/d/z/g/d;

    .line 7
    new-instance v1, Le/m/d/z/m/j;

    iget-object v2, v0, Le/m/d/z/m/k;->j:Landroid/content/Context;

    new-instance v9, Le/m/d/z/n/f;

    const-wide/16 v4, 0x64

    const-wide/16 v6, 0x1

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Le/m/d/z/n/f;-><init>(JJLjava/util/concurrent/TimeUnit;)V

    const-wide/16 v3, 0x1f4

    invoke-direct {v1, v2, v9, v3, v4}, Le/m/d/z/m/j;-><init>(Landroid/content/Context;Le/m/d/z/n/f;J)V

    iput-object v1, v0, Le/m/d/z/m/k;->l:Le/m/d/z/m/j;

    .line 8
    invoke-static {}, Le/m/d/z/f/a;->a()Le/m/d/z/f/a;

    move-result-object v1

    iput-object v1, v0, Le/m/d/z/m/k;->m:Le/m/d/z/f/a;

    .line 9
    new-instance v1, Le/m/d/z/m/h;

    iget-object v2, v0, Le/m/d/z/m/k;->g:Le/m/d/v/b;

    iget-object v3, v0, Le/m/d/z/m/k;->k:Le/m/d/z/g/d;

    .line 10
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v4, Le/m/d/z/g/g;->a:Le/m/d/z/g/g;

    const-class v4, Le/m/d/z/g/g;

    monitor-enter v4

    .line 12
    :try_start_0
    sget-object v5, Le/m/d/z/g/g;->a:Le/m/d/z/g/g;

    if-nez v5, :cond_0

    .line 13
    new-instance v5, Le/m/d/z/g/g;

    invoke-direct {v5}, Le/m/d/z/g/g;-><init>()V

    sput-object v5, Le/m/d/z/g/g;->a:Le/m/d/z/g/g;

    .line 14
    :cond_0
    sget-object v5, Le/m/d/z/g/g;->a:Le/m/d/z/g/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v4

    .line 15
    sget v4, Le/m/d/z/b;->a:I

    .line 16
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "fpr_log_source"

    .line 17
    iget-object v6, v3, Le/m/d/z/g/d;->a:Lcom/google/firebase/perf/config/RemoteConfigManager;

    const-wide/16 v7, -0x1

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Lcom/google/firebase/perf/config/RemoteConfigManager;->getRemoteConfigValueOrDefault(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-string v4, "com.google.firebase.perf.LogSourceName"

    .line 18
    sget-object v8, Le/m/d/z/g/g;->b:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 19
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 20
    iget-object v3, v3, Le/m/d/z/g/d;->c:Le/m/d/z/g/x;

    invoke-virtual {v3, v4, v6}, Le/m/d/z/g/x;->e(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 21
    :cond_1
    invoke-virtual {v3, v5}, Le/m/d/z/g/d;->d(Le/m/d/z/g/w;)Le/m/d/z/n/e;

    move-result-object v3

    .line 22
    invoke-virtual {v3}, Le/m/d/z/n/e;->c()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 23
    invoke-virtual {v3}, Le/m/d/z/n/e;->b()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v6, "FIREPERF"

    .line 24
    :goto_0
    invoke-direct {v1, v2, v6}, Le/m/d/z/m/h;-><init>(Le/m/d/v/b;Ljava/lang/String;)V

    iput-object v1, v0, Le/m/d/z/m/k;->h:Le/m/d/z/m/h;

    .line 25
    iget-object v1, v0, Le/m/d/z/m/k;->m:Le/m/d/z/f/a;

    new-instance v2, Ljava/lang/ref/WeakReference;

    sget-object v3, Le/m/d/z/m/k;->s:Le/m/d/z/m/k;

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 26
    iget-object v3, v1, Le/m/d/z/f/a;->d:Ljava/util/Set;

    monitor-enter v3

    .line 27
    :try_start_1
    iget-object v1, v1, Le/m/d/z/f/a;->d:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 28
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    invoke-static {}, Lcom/google/firebase/perf/v1/ApplicationInfo;->newBuilder()Lcom/google/firebase/perf/v1/ApplicationInfo$b;

    move-result-object v1

    iput-object v1, v0, Le/m/d/z/m/k;->n:Lcom/google/firebase/perf/v1/ApplicationInfo$b;

    .line 30
    iget-object v2, v0, Le/m/d/z/m/k;->d:Le/m/d/g;

    .line 31
    invoke-virtual {v2}, Le/m/d/g;->a()V

    .line 32
    iget-object v2, v2, Le/m/d/g;->c:Le/m/d/i;

    .line 33
    iget-object v2, v2, Le/m/d/i;->b:Ljava/lang/String;

    .line 34
    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 35
    iget-object v3, v1, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v3, Lcom/google/firebase/perf/v1/ApplicationInfo;

    invoke-static {v3, v2}, Lcom/google/firebase/perf/v1/ApplicationInfo;->access$100(Lcom/google/firebase/perf/v1/ApplicationInfo;Ljava/lang/String;)V

    .line 36
    invoke-static {}, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->newBuilder()Lcom/google/firebase/perf/v1/AndroidApplicationInfo$b;

    move-result-object v2

    iget-object v3, v0, Le/m/d/z/m/k;->o:Ljava/lang/String;

    .line 37
    invoke-virtual {v2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 38
    iget-object v4, v2, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v4, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;

    invoke-static {v4, v3}, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->access$100(Lcom/google/firebase/perf/v1/AndroidApplicationInfo;Ljava/lang/String;)V

    const-string v3, "20.0.5"

    .line 39
    invoke-virtual {v2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 40
    iget-object v4, v2, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v4, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;

    invoke-static {v4, v3}, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->access$400(Lcom/google/firebase/perf/v1/AndroidApplicationInfo;Ljava/lang/String;)V

    .line 41
    iget-object v3, v0, Le/m/d/z/m/k;->j:Landroid/content/Context;

    const-string v4, ""

    .line 42
    :try_start_2
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 43
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    move-object v4, v3

    .line 44
    :catch_0
    :goto_1
    invoke-virtual {v2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 45
    iget-object v3, v2, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v3, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;

    invoke-static {v3, v4}, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;->access$700(Lcom/google/firebase/perf/v1/AndroidApplicationInfo;Ljava/lang/String;)V

    .line 46
    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 47
    iget-object v1, v1, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/google/firebase/perf/v1/ApplicationInfo;

    invoke-virtual {v2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/perf/v1/AndroidApplicationInfo;

    invoke-static {v1, v2}, Lcom/google/firebase/perf/v1/ApplicationInfo;->access$700(Lcom/google/firebase/perf/v1/ApplicationInfo;Lcom/google/firebase/perf/v1/AndroidApplicationInfo;)V

    .line 48
    iget-object v1, v0, Le/m/d/z/m/k;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 49
    :cond_4
    :goto_2
    iget-object v1, v0, Le/m/d/z/m/k;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 50
    iget-object v1, v0, Le/m/d/z/m/k;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/m/d/z/m/i;

    if-eqz v1, :cond_4

    .line 51
    iget-object v2, v0, Le/m/d/z/m/k;->i:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Le/m/d/z/m/d;

    invoke-direct {v3, v0, v1}, Le/m/d/z/m/d;-><init>(Le/m/d/z/m/k;Le/m/d/z/m/i;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_5
    return-void

    :catchall_0
    move-exception v0

    .line 52
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 53
    monitor-exit v4

    throw v0
.end method
