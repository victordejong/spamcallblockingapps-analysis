.class public Le/i/b/q2/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/i/b/q2/e;


# instance fields
.field public final a:Le/i/b/q2/l;

.field public final b:Le/i/b/z1/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/i/b/z1/u<",
            "Lcom/criteo/publisher/logging/RemoteLogRecords;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Le/i/b/u2/x;

.field public final d:Ljava/util/concurrent/Executor;

.field public final e:Le/i/b/l2/a;


# direct methods
.method public constructor <init>(Le/i/b/q2/l;Le/i/b/z1/u;Le/i/b/u2/x;Ljava/util/concurrent/Executor;Le/i/b/l2/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/i/b/q2/l;",
            "Le/i/b/z1/u<",
            "Lcom/criteo/publisher/logging/RemoteLogRecords;",
            ">;",
            "Le/i/b/u2/x;",
            "Ljava/util/concurrent/Executor;",
            "Le/i/b/l2/a;",
            ")V"
        }
    .end annotation

    const-string v0, "remoteLogRecordsFactory"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sendingQueue"

    invoke-static {p2, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p3, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {p4, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "consentData"

    invoke-static {p5, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/i/b/q2/k;->a:Le/i/b/q2/l;

    iput-object p2, p0, Le/i/b/q2/k;->b:Le/i/b/z1/u;

    iput-object p3, p0, Le/i/b/q2/k;->c:Le/i/b/u2/x;

    iput-object p4, p0, Le/i/b/q2/k;->d:Ljava/util/concurrent/Executor;

    iput-object p5, p0, Le/i/b/q2/k;->e:Le/i/b/l2/a;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Le/i/b/q2/f;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const-string v0, "tag"

    move-object/from16 v3, p1

    invoke-static {v3, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logMessage"

    invoke-static {v2, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v3, v1, Le/i/b/q2/k;->e:Le/i/b/l2/a;

    .line 2
    iget-object v3, v3, Le/i/b/l2/a;->a:Landroid/content/SharedPreferences;

    const-string v4, "CRTO_ConsentGiven"

    const/4 v5, 0x0

    .line 3
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    .line 4
    :cond_0
    sget-object v3, Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;->Companion:Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel$a;

    .line 5
    iget v4, v2, Le/i/b/q2/f;->a:I

    .line 6
    invoke-virtual {v3, v4}, Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel$a;->a(I)Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;

    move-result-object v4

    if-eqz v4, :cond_c

    iget-object v6, v1, Le/i/b/q2/k;->c:Le/i/b/u2/x;

    .line 7
    iget-object v6, v6, Le/i/b/u2/x;->b:Le/i/b/u2/d0;

    .line 8
    invoke-virtual {v6}, Le/i/b/u2/d0;->l()Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;

    move-result-object v6

    .line 9
    sget-object v7, Le/i/b/u2/x$a;->a:Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;

    .line 10
    invoke-static {v6, v7}, Le/i/b/s2/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;

    const-string v7, "config.remoteLogLevel"

    .line 11
    invoke-static {v6, v7}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v6

    const/4 v7, 0x1

    if-ltz v6, :cond_1

    move v6, v7

    goto :goto_0

    :cond_1
    move v6, v5

    :goto_0
    const/4 v8, 0x0

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    move-object v4, v8

    :goto_1
    if-eqz v4, :cond_c

    .line 12
    iget-object v4, v1, Le/i/b/q2/k;->a:Le/i/b/q2/l;

    .line 13
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget v6, v2, Le/i/b/q2/f;->a:I

    .line 15
    invoke-virtual {v3, v6}, Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel$a;->a(I)Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;

    move-result-object v3

    .line 16
    invoke-static {v2, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget-object v0, v2, Le/i/b/q2/f;->b:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 18
    iget-object v0, v2, Le/i/b/q2/f;->c:Ljava/lang/Throwable;

    if-nez v0, :cond_3

    goto/16 :goto_5

    .line 19
    :cond_3
    new-instance v0, Ljava/util/Date;

    iget-object v6, v4, Le/i/b/q2/l;->g:Le/i/b/e2;

    invoke-interface {v6}, Le/i/b/e2;->a()J

    move-result-wide v9

    invoke-direct {v0, v9, v10}, Ljava/util/Date;-><init>(J)V

    .line 20
    iget-object v6, v4, Le/i/b/q2/l;->a:Ljava/text/SimpleDateFormat;

    invoke-virtual {v6, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    const/4 v0, 0x4

    new-array v9, v0, [Ljava/lang/String;

    .line 21
    iget-object v0, v2, Le/i/b/q2/f;->b:Ljava/lang/String;

    aput-object v0, v9, v5

    .line 22
    iget-object v0, v2, Le/i/b/q2/f;->c:Ljava/lang/Throwable;

    if-eqz v0, :cond_4

    .line 23
    iget-object v5, v4, Le/i/b/q2/l;->h:Le/i/b/q2/j;

    .line 24
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "throwable"

    invoke-static {v0, v10}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    :try_start_0
    new-instance v11, Ljava/util/LinkedHashMap;

    invoke-direct {v11}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {v5, v0, v11}, Le/i/b/q2/j;->a(Ljava/lang/Throwable;Ljava/util/Map;)Ljava/lang/Throwable;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 26
    new-instance v5, Le/i/b/q2/j$a;

    invoke-direct {v5, v0}, Le/i/b/q2/j$a;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v5

    .line 27
    :goto_2
    invoke-static {v0, v10}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_4
    move-object v0, v8

    :goto_3
    aput-object v0, v9, v7

    const-string v0, "threadId:"

    .line 29
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 30
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    const-string v10, "Thread.currentThread()"

    invoke-static {v5, v10}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v10, "Thread.currentThread().name"

    invoke-static {v5, v10}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x2

    aput-object v0, v9, v5

    const/4 v0, 0x3

    aput-object v6, v9, v0

    .line 32
    invoke-static {v9}, Ls1/u/i;->V([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 33
    move-object v5, v0

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    xor-int/2addr v5, v7

    if-eqz v5, :cond_5

    move-object v9, v0

    goto :goto_4

    :cond_5
    move-object v9, v8

    :goto_4
    if-eqz v9, :cond_6

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x3e

    const-string v10, ","

    invoke-static/range {v9 .. v16}, Ls1/u/i;->O(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_6
    :goto_5
    move-object v0, v8

    :goto_6
    if-eqz v3, :cond_9

    if-nez v0, :cond_7

    goto :goto_8

    .line 34
    :cond_7
    new-instance v5, Lcom/criteo/publisher/logging/RemoteLogRecords$b;

    invoke-static {v0}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v5, v3, v0}, Lcom/criteo/publisher/logging/RemoteLogRecords$b;-><init>(Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;Ljava/util/List;)V

    .line 35
    new-instance v0, Lcom/criteo/publisher/logging/RemoteLogRecords$a;

    .line 36
    iget-object v3, v4, Le/i/b/q2/l;->b:Le/i/b/s2/f;

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "4.4.0"

    const-string v3, "buildConfigWrapper.sdkVersion"

    invoke-static {v10, v3}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iget-object v3, v4, Le/i/b/q2/l;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const-string v3, "context.packageName"

    invoke-static {v11, v3}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object v3, v4, Le/i/b/q2/l;->d:Le/i/b/s2/b;

    invoke-virtual {v3}, Le/i/b/s2/b;->b()Ljava/lang/String;

    move-result-object v12

    .line 39
    iget-object v3, v4, Le/i/b/q2/l;->e:Le/i/b/e3;

    .line 40
    iget-object v3, v3, Le/i/b/e3;->b:Ls1/g;

    invoke-interface {v3}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Ljava/lang/String;

    .line 41
    iget-object v3, v4, Le/i/b/q2/l;->f:Le/i/b/d2/c;

    invoke-virtual {v3}, Le/i/b/d2/c;->b()I

    move-result v14

    .line 42
    iget-object v3, v2, Le/i/b/q2/f;->c:Ljava/lang/Throwable;

    if-eqz v3, :cond_8

    .line 43
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    move-object v15, v3

    goto :goto_7

    :cond_8
    move-object v15, v8

    .line 44
    :goto_7
    iget-object v2, v2, Le/i/b/q2/f;->d:Ljava/lang/String;

    const-string v3, "android-"

    .line 45
    invoke-static {v3}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object v9, v0

    move-object/from16 v16, v2

    .line 46
    invoke-direct/range {v9 .. v17}, Lcom/criteo/publisher/logging/RemoteLogRecords$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    new-instance v2, Lcom/criteo/publisher/logging/RemoteLogRecords;

    invoke-static {v5}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/criteo/publisher/logging/RemoteLogRecords;-><init>(Lcom/criteo/publisher/logging/RemoteLogRecords$a;Ljava/util/List;)V

    goto :goto_9

    :cond_9
    :goto_8
    move-object v2, v8

    :goto_9
    if-eqz v2, :cond_c

    .line 48
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v8

    :cond_a
    invoke-static {v0, v8}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 49
    iget-object v0, v1, Le/i/b/q2/k;->d:Ljava/util/concurrent/Executor;

    new-instance v3, Le/i/b/q2/k$a;

    invoke-direct {v3, v2, v1}, Le/i/b/q2/k$a;-><init>(Lcom/criteo/publisher/logging/RemoteLogRecords;Le/i/b/q2/k;)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_a

    .line 50
    :cond_b
    iget-object v0, v1, Le/i/b/q2/k;->b:Le/i/b/z1/u;

    invoke-interface {v0, v2}, Le/i/b/z1/u;->a(Ljava/lang/Object;)Z

    :cond_c
    :goto_a
    return-void
.end method
