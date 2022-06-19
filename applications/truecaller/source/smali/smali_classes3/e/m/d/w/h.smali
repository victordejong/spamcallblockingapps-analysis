.class public Le/m/d/w/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/d/w/i;


# static fields
.field public static final m:Ljava/lang/Object;

.field public static final n:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field public final a:Le/m/d/g;

.field public final b:Le/m/d/w/s/c;

.field public final c:Le/m/d/w/r/c;

.field public final d:Le/m/d/w/p;

.field public final e:Le/m/d/w/r/b;

.field public final f:Le/m/d/w/n;

.field public final g:Ljava/lang/Object;

.field public final h:Ljava/util/concurrent/ExecutorService;

.field public final i:Ljava/util/concurrent/ExecutorService;

.field public j:Ljava/lang/String;

.field public k:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Le/m/d/w/q/a;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/m/d/w/o;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Le/m/d/w/h;->m:Ljava/lang/Object;

    .line 2
    new-instance v0, Le/m/d/w/h$a;

    invoke-direct {v0}, Le/m/d/w/h$a;-><init>()V

    sput-object v0, Le/m/d/w/h;->n:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method public constructor <init>(Le/m/d/g;Le/m/d/v/b;Le/m/d/v/b;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/d/g;",
            "Le/m/d/v/b<",
            "Le/m/d/a0/h;",
            ">;",
            "Le/m/d/v/b<",
            "Le/m/d/t/f;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sget-object v10, Le/m/d/w/h;->n:Ljava/util/concurrent/ThreadFactory;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, 0x1e

    move-object v0, v8

    move-object v5, v9

    move-object v7, v10

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    new-instance v0, Le/m/d/w/s/c;

    .line 2
    invoke-virtual {p1}, Le/m/d/g;->a()V

    .line 3
    iget-object v1, p1, Le/m/d/g;->a:Landroid/content/Context;

    .line 4
    invoke-direct {v0, v1, p2, p3}, Le/m/d/w/s/c;-><init>(Landroid/content/Context;Le/m/d/v/b;Le/m/d/v/b;)V

    new-instance p2, Le/m/d/w/r/c;

    invoke-direct {p2, p1}, Le/m/d/w/r/c;-><init>(Le/m/d/g;)V

    .line 5
    invoke-static {}, Le/m/d/w/p;->c()Le/m/d/w/p;

    move-result-object p3

    new-instance v1, Le/m/d/w/r/b;

    invoke-direct {v1, p1}, Le/m/d/w/r/b;-><init>(Le/m/d/g;)V

    new-instance v2, Le/m/d/w/n;

    invoke-direct {v2}, Le/m/d/w/n;-><init>()V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Le/m/d/w/h;->g:Ljava/lang/Object;

    .line 8
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Le/m/d/w/h;->k:Ljava/util/Set;

    .line 9
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Le/m/d/w/h;->l:Ljava/util/List;

    .line 10
    iput-object p1, p0, Le/m/d/w/h;->a:Le/m/d/g;

    .line 11
    iput-object v0, p0, Le/m/d/w/h;->b:Le/m/d/w/s/c;

    .line 12
    iput-object p2, p0, Le/m/d/w/h;->c:Le/m/d/w/r/c;

    .line 13
    iput-object p3, p0, Le/m/d/w/h;->d:Le/m/d/w/p;

    .line 14
    iput-object v1, p0, Le/m/d/w/h;->e:Le/m/d/w/r/b;

    .line 15
    iput-object v2, p0, Le/m/d/w/h;->f:Le/m/d/w/n;

    .line 16
    iput-object v8, p0, Le/m/d/w/h;->h:Ljava/util/concurrent/ExecutorService;

    .line 17
    new-instance p1, Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, 0x1e

    move-object v0, p1

    move-object v5, v9

    move-object v7, v10

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object p1, p0, Le/m/d/w/h;->i:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static g()Le/m/d/w/h;
    .locals 1

    .line 1
    invoke-static {}, Le/m/d/g;->b()Le/m/d/g;

    move-result-object v0

    .line 2
    invoke-static {v0}, Le/m/d/w/h;->h(Le/m/d/g;)Le/m/d/w/h;

    move-result-object v0

    return-object v0
.end method

.method public static h(Le/m/d/g;)Le/m/d/w/h;
    .locals 2

    const/4 v0, 0x1

    const-string v1, "Null is not a valid value of FirebaseApp."

    .line 1
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->b(ZLjava/lang/Object;)V

    .line 2
    const-class v0, Le/m/d/w/i;

    .line 3
    invoke-virtual {p0}, Le/m/d/g;->a()V

    .line 4
    iget-object p0, p0, Le/m/d/g;->d:Le/m/d/m/t;

    invoke-virtual {p0, v0}, Le/m/d/m/n;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    .line 5
    check-cast p0, Le/m/d/w/h;

    return-object p0
.end method


# virtual methods
.method public a(Z)Lcom/google/android/gms/tasks/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/android/gms/tasks/Task<",
            "Le/m/d/w/m;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/m/d/w/h;->l()V

    .line 2
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 3
    new-instance v1, Le/m/d/w/k;

    iget-object v2, p0, Le/m/d/w/h;->d:Le/m/d/w/p;

    invoke-direct {v1, v2, v0}, Le/m/d/w/k;-><init>(Le/m/d/w/p;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 4
    iget-object v2, p0, Le/m/d/w/h;->g:Ljava/lang/Object;

    monitor-enter v2

    .line 5
    :try_start_0
    iget-object v3, p0, Le/m/d/w/h;->l:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object v0, v0, Lcom/google/android/gms/tasks/TaskCompletionSource;->a:Le/m/a/f/q/b0;

    .line 8
    iget-object v1, p0, Le/m/d/w/h;->h:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Le/m/d/w/c;

    invoke-direct {v2, p0, p1}, Le/m/d/w/c;-><init>(Le/m/d/w/h;Z)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-object v0

    :catchall_0
    move-exception p1

    .line 9
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public b()Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/d/w/h;->h:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Le/m/d/w/d;

    invoke-direct {v1, p0}, Le/m/d/w/d;-><init>(Le/m/d/w/h;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/tasks/Tasks;->c(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final c(Z)V
    .locals 5

    .line 1
    sget-object v0, Le/m/d/w/h;->m:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Le/m/d/w/h;->a:Le/m/d/g;

    .line 3
    invoke-virtual {v1}, Le/m/d/g;->a()V

    .line 4
    iget-object v1, v1, Le/m/d/g;->a:Landroid/content/Context;

    const-string v2, "generatefid.lock"

    .line 5
    invoke-static {v1, v2}, Le/m/d/w/g;->a(Landroid/content/Context;Ljava/lang/String;)Le/m/d/w/g;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :try_start_1
    iget-object v2, p0, Le/m/d/w/h;->c:Le/m/d/w/r/c;

    .line 7
    invoke-virtual {v2}, Le/m/d/w/r/c;->b()Le/m/d/w/r/d;

    move-result-object v2

    .line 8
    invoke-virtual {v2}, Le/m/d/w/r/d;->i()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 9
    invoke-virtual {p0, v2}, Le/m/d/w/h;->m(Le/m/d/w/r/d;)Ljava/lang/String;

    move-result-object v3

    .line 10
    iget-object v4, p0, Le/m/d/w/h;->c:Le/m/d/w/r/c;

    .line 11
    invoke-virtual {v2}, Le/m/d/w/r/d;->k()Le/m/d/w/r/d$a;

    move-result-object v2

    .line 12
    check-cast v2, Le/m/d/w/r/a$b;

    .line 13
    iput-object v3, v2, Le/m/d/w/r/a$b;->a:Ljava/lang/String;

    .line 14
    sget-object v3, Le/m/d/w/r/c$a;->c:Le/m/d/w/r/c$a;

    .line 15
    invoke-virtual {v2, v3}, Le/m/d/w/r/a$b;->b(Le/m/d/w/r/c$a;)Le/m/d/w/r/d$a;

    .line 16
    invoke-virtual {v2}, Le/m/d/w/r/a$b;->a()Le/m/d/w/r/d;

    move-result-object v2

    .line 17
    invoke-virtual {v4, v2}, Le/m/d/w/r/c;->a(Le/m/d/w/r/d;)Le/m/d/w/r/d;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    if-eqz v1, :cond_1

    .line 18
    :try_start_2
    invoke-virtual {v1}, Le/m/d/w/g;->b()V

    :cond_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p1, :cond_2

    .line 19
    invoke-virtual {v2}, Le/m/d/w/r/d;->k()Le/m/d/w/r/d$a;

    move-result-object v0

    check-cast v0, Le/m/d/w/r/a$b;

    const/4 v1, 0x0

    .line 20
    iput-object v1, v0, Le/m/d/w/r/a$b;->c:Ljava/lang/String;

    .line 21
    invoke-virtual {v0}, Le/m/d/w/r/a$b;->a()Le/m/d/w/r/d;

    move-result-object v2

    .line 22
    :cond_2
    invoke-virtual {p0, v2}, Le/m/d/w/h;->p(Le/m/d/w/r/d;)V

    .line 23
    iget-object v0, p0, Le/m/d/w/h;->i:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Le/m/d/w/a;

    invoke-direct {v1, p0, p1}, Le/m/d/w/a;-><init>(Le/m/d/w/h;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    if-eqz v1, :cond_3

    .line 24
    :try_start_3
    invoke-virtual {v1}, Le/m/d/w/g;->b()V

    .line 25
    :cond_3
    throw p1

    :catchall_1
    move-exception p1

    .line 26
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public final d(Le/m/d/w/r/d;)Le/m/d/w/r/d;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/d/w/j;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1
    sget-object v0, Le/m/d/w/j$a;->b:Le/m/d/w/j$a;

    iget-object v2, v1, Le/m/d/w/h;->b:Le/m/d/w/s/c;

    .line 2
    invoke-virtual/range {p0 .. p0}, Le/m/d/w/h;->e()Ljava/lang/String;

    move-result-object v3

    .line 3
    move-object/from16 v4, p1

    check-cast v4, Le/m/d/w/r/a;

    .line 4
    iget-object v5, v4, Le/m/d/w/r/a;->b:Ljava/lang/String;

    .line 5
    invoke-virtual/range {p0 .. p0}, Le/m/d/w/h;->j()Ljava/lang/String;

    move-result-object v6

    .line 6
    iget-object v4, v4, Le/m/d/w/r/a;->e:Ljava/lang/String;

    .line 7
    iget-object v7, v2, Le/m/d/w/s/c;->d:Le/m/d/w/s/e;

    invoke-virtual {v7}, Le/m/d/w/s/e;->a()Z

    move-result v7

    const-string v8, "Firebase Installations Service is unavailable. Please try again later."

    if-eqz v7, :cond_a

    const/4 v7, 0x2

    new-array v9, v7, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v6, v9, v10

    const/4 v11, 0x1

    aput-object v5, v9, v11

    const-string v5, "projects/%s/installations/%s/authTokens:generate"

    .line 8
    invoke-static {v5, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 9
    invoke-virtual {v2, v5}, Le/m/d/w/s/c;->a(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v5

    move v9, v10

    :goto_0
    if-gt v9, v11, :cond_9

    const v12, 0x8003

    .line 10
    invoke-static {v12}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 11
    invoke-virtual {v2, v5, v3}, Le/m/d/w/s/c;->c(Ljava/net/URL;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v12

    :try_start_0
    const-string v13, "POST"

    .line 12
    invoke-virtual {v12, v13}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v13, "Authorization"

    .line 13
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "FIS_v2 "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-virtual {v12, v11}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 15
    invoke-virtual {v2, v12}, Le/m/d/w/s/c;->h(Ljava/net/HttpURLConnection;)V

    .line 16
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v13

    .line 17
    iget-object v14, v2, Le/m/d/w/s/c;->d:Le/m/d/w/s/e;

    invoke-virtual {v14, v13}, Le/m/d/w/s/e;->b(I)V

    const/16 v14, 0xc8

    if-lt v13, v14, :cond_0

    const/16 v14, 0x12c

    if-ge v13, v14, :cond_0

    move v14, v11

    goto :goto_1

    :cond_0
    move v14, v10

    :goto_1
    const/4 v15, 0x0

    if-eqz v14, :cond_1

    .line 18
    invoke-virtual {v2, v12}, Le/m/d/w/s/c;->f(Ljava/net/HttpURLConnection;)Le/m/d/w/s/f;

    move-result-object v2

    goto :goto_3

    .line 19
    :cond_1
    invoke-static {v12, v15, v3, v6}, Le/m/d/w/s/c;->b(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v14, 0x191

    if-eq v13, v14, :cond_5

    const/16 v14, 0x194

    if-ne v13, v14, :cond_2

    goto :goto_2

    :cond_2
    const/16 v14, 0x1ad

    if-eq v13, v14, :cond_4

    const/16 v14, 0x1f4

    if-lt v13, v14, :cond_3

    const/16 v14, 0x258

    if-ge v13, v14, :cond_3

    goto/16 :goto_4

    .line 20
    :cond_3
    invoke-static {}, Le/m/d/w/s/f;->a()Le/m/d/w/s/f$a;

    move-result-object v13

    sget-object v14, Le/m/d/w/s/f$b;->b:Le/m/d/w/s/f$b;

    check-cast v13, Le/m/d/w/s/b$b;

    .line 21
    iput-object v14, v13, Le/m/d/w/s/b$b;->c:Le/m/d/w/s/f$b;

    .line 22
    invoke-virtual {v13}, Le/m/d/w/s/b$b;->a()Le/m/d/w/s/f;

    move-result-object v2

    goto :goto_3

    .line 23
    :cond_4
    new-instance v13, Le/m/d/w/j;

    const-string v14, "Firebase servers have received too many requests from this client in a short period of time. Please try again later."

    sget-object v15, Le/m/d/w/j$a;->c:Le/m/d/w/j$a;

    invoke-direct {v13, v14, v15}, Le/m/d/w/j;-><init>(Ljava/lang/String;Le/m/d/w/j$a;)V

    throw v13

    .line 24
    :cond_5
    :goto_2
    invoke-static {}, Le/m/d/w/s/f;->a()Le/m/d/w/s/f$a;

    move-result-object v13

    sget-object v14, Le/m/d/w/s/f$b;->c:Le/m/d/w/s/f$b;

    check-cast v13, Le/m/d/w/s/b$b;

    .line 25
    iput-object v14, v13, Le/m/d/w/s/b$b;->c:Le/m/d/w/s/f$b;

    .line 26
    invoke-virtual {v13}, Le/m/d/w/s/b$b;->a()Le/m/d/w/s/f;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    :goto_3
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 28
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 29
    check-cast v2, Le/m/d/w/s/b;

    .line 30
    iget-object v3, v2, Le/m/d/w/s/b;->c:Le/m/d/w/s/f$b;

    .line 31
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-eqz v3, :cond_8

    if-eq v3, v11, :cond_7

    if-ne v3, v7, :cond_6

    .line 32
    invoke-virtual {v1, v15}, Le/m/d/w/h;->q(Ljava/lang/String;)V

    .line 33
    invoke-virtual/range {p1 .. p1}, Le/m/d/w/r/d;->k()Le/m/d/w/r/d$a;

    move-result-object v0

    sget-object v2, Le/m/d/w/r/c$a;->b:Le/m/d/w/r/c$a;

    invoke-virtual {v0, v2}, Le/m/d/w/r/d$a;->b(Le/m/d/w/r/c$a;)Le/m/d/w/r/d$a;

    invoke-virtual {v0}, Le/m/d/w/r/d$a;->a()Le/m/d/w/r/d;

    move-result-object v0

    return-object v0

    .line 34
    :cond_6
    new-instance v2, Le/m/d/w/j;

    invoke-direct {v2, v8, v0}, Le/m/d/w/j;-><init>(Ljava/lang/String;Le/m/d/w/j$a;)V

    throw v2

    .line 35
    :cond_7
    invoke-virtual/range {p1 .. p1}, Le/m/d/w/r/d;->k()Le/m/d/w/r/d$a;

    move-result-object v0

    .line 36
    check-cast v0, Le/m/d/w/r/a$b;

    const-string v2, "BAD CONFIG"

    .line 37
    iput-object v2, v0, Le/m/d/w/r/a$b;->g:Ljava/lang/String;

    .line 38
    sget-object v2, Le/m/d/w/r/c$a;->e:Le/m/d/w/r/c$a;

    .line 39
    invoke-virtual {v0, v2}, Le/m/d/w/r/a$b;->b(Le/m/d/w/r/c$a;)Le/m/d/w/r/d$a;

    .line 40
    invoke-virtual {v0}, Le/m/d/w/r/a$b;->a()Le/m/d/w/r/d;

    move-result-object v0

    return-object v0

    .line 41
    :cond_8
    iget-object v0, v2, Le/m/d/w/s/b;->a:Ljava/lang/String;

    .line 42
    iget-wide v2, v2, Le/m/d/w/s/b;->b:J

    .line 43
    iget-object v4, v1, Le/m/d/w/h;->d:Le/m/d/w/p;

    .line 44
    invoke-virtual {v4}, Le/m/d/w/p;->b()J

    move-result-wide v4

    .line 45
    invoke-virtual/range {p1 .. p1}, Le/m/d/w/r/d;->k()Le/m/d/w/r/d$a;

    move-result-object v6

    .line 46
    check-cast v6, Le/m/d/w/r/a$b;

    .line 47
    iput-object v0, v6, Le/m/d/w/r/a$b;->c:Ljava/lang/String;

    .line 48
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v6, Le/m/d/w/r/a$b;->e:Ljava/lang/Long;

    .line 49
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v6, Le/m/d/w/r/a$b;->f:Ljava/lang/Long;

    .line 50
    invoke-virtual {v6}, Le/m/d/w/r/a$b;->a()Le/m/d/w/r/d;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    .line 51
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 52
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 53
    throw v0

    .line 54
    :catch_0
    :goto_4
    invoke-virtual {v12}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 55
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 56
    :cond_9
    new-instance v2, Le/m/d/w/j;

    invoke-direct {v2, v8, v0}, Le/m/d/w/j;-><init>(Ljava/lang/String;Le/m/d/w/j$a;)V

    throw v2

    .line 57
    :cond_a
    new-instance v2, Le/m/d/w/j;

    invoke-direct {v2, v8, v0}, Le/m/d/w/j;-><init>(Ljava/lang/String;Le/m/d/w/j$a;)V

    throw v2
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/d/w/h;->a:Le/m/d/g;

    .line 2
    invoke-virtual {v0}, Le/m/d/g;->a()V

    .line 3
    iget-object v0, v0, Le/m/d/g;->c:Le/m/d/i;

    .line 4
    iget-object v0, v0, Le/m/d/i;->a:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/d/w/h;->a:Le/m/d/g;

    .line 2
    invoke-virtual {v0}, Le/m/d/g;->a()V

    .line 3
    iget-object v0, v0, Le/m/d/g;->c:Le/m/d/i;

    .line 4
    iget-object v0, v0, Le/m/d/i;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Lcom/google/android/gms/tasks/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/m/d/w/h;->l()V

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Le/m/d/w/h;->j:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->f(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 6
    new-instance v1, Le/m/d/w/l;

    invoke-direct {v1, v0}, Le/m/d/w/l;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 7
    iget-object v2, p0, Le/m/d/w/h;->g:Ljava/lang/Object;

    monitor-enter v2

    .line 8
    :try_start_1
    iget-object v3, p0, Le/m/d/w/h;->l:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    iget-object v0, v0, Lcom/google/android/gms/tasks/TaskCompletionSource;->a:Le/m/a/f/q/b0;

    .line 11
    iget-object v1, p0, Le/m/d/w/h;->h:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Le/m/d/w/b;

    invoke-direct {v2, p0}, Le/m/d/w/b;-><init>(Le/m/d/w/h;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-object v0

    :catchall_0
    move-exception v0

    .line 12
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 13
    monitor-exit p0

    throw v0
.end method

.method public final i()Le/m/d/w/r/d;
    .locals 3

    .line 1
    sget-object v0, Le/m/d/w/h;->m:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Le/m/d/w/h;->a:Le/m/d/g;

    .line 3
    invoke-virtual {v1}, Le/m/d/g;->a()V

    .line 4
    iget-object v1, v1, Le/m/d/g;->a:Landroid/content/Context;

    const-string v2, "generatefid.lock"

    .line 5
    invoke-static {v1, v2}, Le/m/d/w/g;->a(Landroid/content/Context;Ljava/lang/String;)Le/m/d/w/g;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :try_start_1
    iget-object v2, p0, Le/m/d/w/h;->c:Le/m/d/w/r/c;

    .line 7
    invoke-virtual {v2}, Le/m/d/w/r/c;->b()Le/m/d/w/r/d;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 8
    :try_start_2
    invoke-virtual {v1}, Le/m/d/w/g;->b()V

    :cond_0
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Le/m/d/w/g;->b()V

    .line 9
    :cond_1
    throw v2

    :catchall_1
    move-exception v1

    .line 10
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/d/w/h;->a:Le/m/d/g;

    .line 2
    invoke-virtual {v0}, Le/m/d/g;->a()V

    .line 3
    iget-object v0, v0, Le/m/d/g;->c:Le/m/d/i;

    .line 4
    iget-object v0, v0, Le/m/d/i;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final k(Le/m/d/w/r/d;)V
    .locals 3

    .line 1
    sget-object v0, Le/m/d/w/h;->m:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Le/m/d/w/h;->a:Le/m/d/g;

    .line 3
    invoke-virtual {v1}, Le/m/d/g;->a()V

    .line 4
    iget-object v1, v1, Le/m/d/g;->a:Landroid/content/Context;

    const-string v2, "generatefid.lock"

    .line 5
    invoke-static {v1, v2}, Le/m/d/w/g;->a(Landroid/content/Context;Ljava/lang/String;)Le/m/d/w/g;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :try_start_1
    iget-object v2, p0, Le/m/d/w/h;->c:Le/m/d/w/r/c;

    invoke-virtual {v2, p1}, Le/m/d/w/r/c;->a(Le/m/d/w/r/d;)Le/m/d/w/r/d;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 7
    :try_start_2
    invoke-virtual {v1}, Le/m/d/w/g;->b()V

    .line 8
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    if-eqz v1, :cond_1

    .line 9
    invoke-virtual {v1}, Le/m/d/w/g;->b()V

    .line 10
    :cond_1
    throw p1

    :catchall_1
    move-exception p1

    .line 11
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public final l()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Le/m/d/w/h;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->h(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Le/m/d/w/h;->j()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Please set your Project ID. A valid Firebase Project ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options."

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Preconditions;->h(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Le/m/d/w/h;->e()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.Please refer to https://firebase.google.com/support/privacy/init-options."

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Preconditions;->h(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    invoke-virtual {p0}, Le/m/d/w/h;->f()Ljava/lang/String;

    move-result-object v0

    .line 5
    sget-object v3, Le/m/d/w/p;->c:Ljava/util/regex/Pattern;

    const-string v3, ":"

    .line 6
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 7
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->b(ZLjava/lang/Object;)V

    .line 8
    invoke-virtual {p0}, Le/m/d/w/h;->e()Ljava/lang/String;

    move-result-object v0

    .line 9
    sget-object v1, Le/m/d/w/p;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    .line 10
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/Preconditions;->b(ZLjava/lang/Object;)V

    return-void
.end method

.method public final m(Le/m/d/w/r/d;)Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Le/m/d/w/h;->a:Le/m/d/g;

    .line 2
    invoke-virtual {v0}, Le/m/d/g;->a()V

    .line 3
    iget-object v0, v0, Le/m/d/g;->b:Ljava/lang/String;

    const-string v1, "CHIME_ANDROID_SDK"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Le/m/d/w/h;->a:Le/m/d/g;

    invoke-virtual {v0}, Le/m/d/g;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    :cond_0
    check-cast p1, Le/m/d/w/r/a;

    .line 6
    iget-object p1, p1, Le/m/d/w/r/a;->c:Le/m/d/w/r/c$a;

    .line 7
    sget-object v0, Le/m/d/w/r/c$a;->a:Le/m/d/w/r/c$a;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_3

    .line 8
    :cond_2
    iget-object p1, p0, Le/m/d/w/h;->f:Le/m/d/w/n;

    invoke-virtual {p1}, Le/m/d/w/n;->a()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 9
    :cond_3
    iget-object p1, p0, Le/m/d/w/h;->e:Le/m/d/w/r/b;

    .line 10
    iget-object v0, p1, Le/m/d/w/r/b;->a:Landroid/content/SharedPreferences;

    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p1, Le/m/d/w/r/b;->a:Landroid/content/SharedPreferences;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 12
    :try_start_1
    iget-object v2, p1, Le/m/d/w/r/b;->a:Landroid/content/SharedPreferences;

    const-string v3, "|S|id"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_4

    .line 13
    :try_start_2
    monitor-exit v0

    goto :goto_1

    .line 14
    :cond_4
    invoke-virtual {p1}, Le/m/d/w/r/b;->a()Ljava/lang/String;

    move-result-object v2

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 15
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 16
    iget-object p1, p0, Le/m/d/w/h;->f:Le/m/d/w/n;

    invoke-virtual {p1}, Le/m/d/w/n;->a()Ljava/lang/String;

    move-result-object v2

    :cond_5
    return-object v2

    :catchall_0
    move-exception p1

    .line 17
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    :catchall_1
    move-exception p1

    .line 18
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public final n(Le/m/d/w/r/d;)Le/m/d/w/r/d;
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/d/w/j;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1
    sget-object v0, Le/m/d/w/j$a;->b:Le/m/d/w/j$a;

    .line 2
    move-object/from16 v2, p1

    check-cast v2, Le/m/d/w/r/a;

    .line 3
    iget-object v3, v2, Le/m/d/w/r/a;->b:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    .line 4
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v6, 0xb

    if-ne v3, v6, :cond_3

    .line 5
    iget-object v3, v1, Le/m/d/w/h;->e:Le/m/d/w/r/b;

    .line 6
    iget-object v6, v3, Le/m/d/w/r/b;->a:Landroid/content/SharedPreferences;

    monitor-enter v6

    .line 7
    :try_start_0
    sget-object v7, Le/m/d/w/r/b;->c:[Ljava/lang/String;

    array-length v8, v7

    move v9, v5

    :goto_0
    if-ge v9, v8, :cond_2

    aget-object v10, v7, v9

    .line 8
    iget-object v11, v3, Le/m/d/w/r/b;->b:Ljava/lang/String;

    .line 9
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "|T|"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "|"

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 10
    iget-object v11, v3, Le/m/d/w/r/b;->a:Landroid/content/SharedPreferences;

    invoke-interface {v11, v10, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 11
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_1

    const-string v3, "{"

    .line 12
    invoke-virtual {v10, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 13
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v7, "token"

    .line 14
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_0
    move-object v4, v10

    .line 15
    :catch_0
    :goto_1
    :try_start_2
    monitor-exit v6

    goto :goto_2

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 16
    :cond_2
    monitor-exit v6

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 17
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 18
    :cond_3
    :goto_2
    iget-object v3, v1, Le/m/d/w/h;->b:Le/m/d/w/s/c;

    .line 19
    invoke-virtual/range {p0 .. p0}, Le/m/d/w/h;->e()Ljava/lang/String;

    move-result-object v6

    .line 20
    iget-object v2, v2, Le/m/d/w/r/a;->b:Ljava/lang/String;

    .line 21
    invoke-virtual/range {p0 .. p0}, Le/m/d/w/h;->j()Ljava/lang/String;

    move-result-object v7

    .line 22
    invoke-virtual/range {p0 .. p0}, Le/m/d/w/h;->f()Ljava/lang/String;

    move-result-object v8

    .line 23
    iget-object v9, v3, Le/m/d/w/s/c;->d:Le/m/d/w/s/e;

    invoke-virtual {v9}, Le/m/d/w/s/e;->a()Z

    move-result v9

    const-string v10, "Firebase Installations Service is unavailable. Please try again later."

    if-eqz v9, :cond_c

    const/4 v9, 0x1

    new-array v11, v9, [Ljava/lang/Object;

    aput-object v7, v11, v5

    const-string v12, "projects/%s/installations"

    .line 24
    invoke-static {v12, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 25
    invoke-virtual {v3, v11}, Le/m/d/w/s/c;->a(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v11

    move v12, v5

    :goto_3
    if-gt v12, v9, :cond_b

    const v13, 0x8001

    .line 26
    invoke-static {v13}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 27
    invoke-virtual {v3, v11, v6}, Le/m/d/w/s/c;->c(Ljava/net/URL;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v13

    :try_start_3
    const-string v14, "POST"

    .line 28
    invoke-virtual {v13, v14}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v13, v9}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    if-eqz v4, :cond_4

    const-string v14, "x-goog-fis-android-iid-migration-auth"

    .line 30
    invoke-virtual {v13, v14, v4}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    :cond_4
    invoke-virtual {v3, v13, v2, v8}, Le/m/d/w/s/c;->g(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v14

    .line 33
    iget-object v15, v3, Le/m/d/w/s/c;->d:Le/m/d/w/s/e;

    invoke-virtual {v15, v14}, Le/m/d/w/s/e;->b(I)V

    const/16 v15, 0xc8

    if-lt v14, v15, :cond_5

    const/16 v15, 0x12c

    if-ge v14, v15, :cond_5

    move v15, v9

    goto :goto_4

    :cond_5
    move v15, v5

    :goto_4
    if-eqz v15, :cond_6

    .line 34
    invoke-virtual {v3, v13}, Le/m/d/w/s/c;->e(Ljava/net/HttpURLConnection;)Le/m/d/w/s/d;

    move-result-object v2
    :try_end_3
    .catch Ljava/lang/AssertionError; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 35
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 36
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    goto :goto_5

    .line 37
    :cond_6
    :try_start_4
    invoke-static {v13, v8, v6, v7}, Le/m/d/w/s/c;->b(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v15, 0x1ad

    if-eq v14, v15, :cond_a

    const/16 v15, 0x1f4

    if-lt v14, v15, :cond_7

    const/16 v15, 0x258

    if-ge v14, v15, :cond_7

    goto/16 :goto_6

    :cond_7
    const/16 v20, 0x0

    const/16 v19, 0x0

    const/16 v18, 0x0

    const/16 v17, 0x0

    .line 38
    sget-object v21, Le/m/d/w/s/d$a;->b:Le/m/d/w/s/d$a;

    .line 39
    new-instance v14, Le/m/d/w/s/a;

    const/16 v22, 0x0

    move-object/from16 v16, v14

    invoke-direct/range {v16 .. v22}, Le/m/d/w/s/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Le/m/d/w/s/f;Le/m/d/w/s/d$a;Le/m/d/w/s/a$a;)V
    :try_end_4
    .catch Ljava/lang/AssertionError; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 40
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 41
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    move-object v2, v14

    .line 42
    :goto_5
    check-cast v2, Le/m/d/w/s/a;

    .line 43
    iget-object v3, v2, Le/m/d/w/s/a;->e:Le/m/d/w/s/d$a;

    .line 44
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-eqz v3, :cond_9

    if-ne v3, v9, :cond_8

    const-string v0, "BAD CONFIG"

    .line 45
    invoke-virtual/range {p1 .. p1}, Le/m/d/w/r/d;->k()Le/m/d/w/r/d$a;

    move-result-object v2

    .line 46
    check-cast v2, Le/m/d/w/r/a$b;

    .line 47
    iput-object v0, v2, Le/m/d/w/r/a$b;->g:Ljava/lang/String;

    .line 48
    sget-object v0, Le/m/d/w/r/c$a;->e:Le/m/d/w/r/c$a;

    .line 49
    invoke-virtual {v2, v0}, Le/m/d/w/r/a$b;->b(Le/m/d/w/r/c$a;)Le/m/d/w/r/d$a;

    .line 50
    invoke-virtual {v2}, Le/m/d/w/r/a$b;->a()Le/m/d/w/r/d;

    move-result-object v0

    return-object v0

    .line 51
    :cond_8
    new-instance v2, Le/m/d/w/j;

    const-string v3, "Firebase Installations Service is unavailable. Please try again later."

    invoke-direct {v2, v3, v0}, Le/m/d/w/j;-><init>(Ljava/lang/String;Le/m/d/w/j$a;)V

    throw v2

    .line 52
    :cond_9
    iget-object v0, v2, Le/m/d/w/s/a;->b:Ljava/lang/String;

    .line 53
    iget-object v3, v2, Le/m/d/w/s/a;->c:Ljava/lang/String;

    .line 54
    iget-object v4, v1, Le/m/d/w/h;->d:Le/m/d/w/p;

    .line 55
    invoke-virtual {v4}, Le/m/d/w/p;->b()J

    move-result-wide v4

    .line 56
    iget-object v6, v2, Le/m/d/w/s/a;->d:Le/m/d/w/s/f;

    .line 57
    invoke-virtual {v6}, Le/m/d/w/s/f;->c()Ljava/lang/String;

    move-result-object v6

    .line 58
    iget-object v2, v2, Le/m/d/w/s/a;->d:Le/m/d/w/s/f;

    .line 59
    invoke-virtual {v2}, Le/m/d/w/s/f;->d()J

    move-result-wide v7

    .line 60
    invoke-virtual/range {p1 .. p1}, Le/m/d/w/r/d;->k()Le/m/d/w/r/d$a;

    move-result-object v2

    .line 61
    check-cast v2, Le/m/d/w/r/a$b;

    .line 62
    iput-object v0, v2, Le/m/d/w/r/a$b;->a:Ljava/lang/String;

    .line 63
    sget-object v0, Le/m/d/w/r/c$a;->d:Le/m/d/w/r/c$a;

    .line 64
    invoke-virtual {v2, v0}, Le/m/d/w/r/a$b;->b(Le/m/d/w/r/c$a;)Le/m/d/w/r/d$a;

    .line 65
    iput-object v6, v2, Le/m/d/w/r/a$b;->c:Ljava/lang/String;

    .line 66
    iput-object v3, v2, Le/m/d/w/r/a$b;->d:Ljava/lang/String;

    .line 67
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v2, Le/m/d/w/r/a$b;->e:Ljava/lang/Long;

    .line 68
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v2, Le/m/d/w/r/a$b;->f:Ljava/lang/Long;

    .line 69
    invoke-virtual {v2}, Le/m/d/w/r/a$b;->a()Le/m/d/w/r/d;

    move-result-object v0

    return-object v0

    .line 70
    :cond_a
    :try_start_5
    new-instance v14, Le/m/d/w/j;

    const-string v15, "Firebase servers have received too many requests from this client in a short period of time. Please try again later."

    sget-object v5, Le/m/d/w/j$a;->c:Le/m/d/w/j$a;

    invoke-direct {v14, v15, v5}, Le/m/d/w/j;-><init>(Ljava/lang/String;Le/m/d/w/j$a;)V

    throw v14
    :try_end_5
    .catch Ljava/lang/AssertionError; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    .line 71
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 72
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 73
    throw v0

    .line 74
    :catch_1
    :goto_6
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 75
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    add-int/lit8 v12, v12, 0x1

    const/4 v5, 0x0

    goto/16 :goto_3

    .line 76
    :cond_b
    new-instance v2, Le/m/d/w/j;

    invoke-direct {v2, v10, v0}, Le/m/d/w/j;-><init>(Ljava/lang/String;Le/m/d/w/j$a;)V

    throw v2

    .line 77
    :cond_c
    new-instance v2, Le/m/d/w/j;

    invoke-direct {v2, v10, v0}, Le/m/d/w/j;-><init>(Ljava/lang/String;Le/m/d/w/j$a;)V

    throw v2
.end method

.method public final o(Ljava/lang/Exception;)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/m/d/w/h;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Le/m/d/w/h;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/m/d/w/o;

    .line 5
    invoke-interface {v2, p1}, Le/m/d/w/o;->a(Ljava/lang/Exception;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 7
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final p(Le/m/d/w/r/d;)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/m/d/w/h;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Le/m/d/w/h;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/m/d/w/o;

    .line 5
    invoke-interface {v2, p1}, Le/m/d/w/o;->b(Le/m/d/w/r/d;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 7
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final declared-synchronized q(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    iput-object p1, p0, Le/m/d/w/h;->j:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
