.class public Le/d/e/d;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/d/e/d$a;
    }
.end annotation


# static fields
.field public static final g:Z


# instance fields
.field public final a:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Le/d/e/o<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Le/d/e/o<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final c:Le/d/e/b;

.field public final d:Le/d/e/r;

.field public volatile e:Z

.field public final f:Le/d/e/d$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Le/d/e/w;->a:Z

    sput-boolean v0, Le/d/e/d;->g:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Le/d/e/b;Le/d/e/r;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Le/d/e/o<",
            "*>;>;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Le/d/e/o<",
            "*>;>;",
            "Le/d/e/b;",
            "Le/d/e/r;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Le/d/e/d;->e:Z

    .line 3
    iput-object p1, p0, Le/d/e/d;->a:Ljava/util/concurrent/BlockingQueue;

    .line 4
    iput-object p2, p0, Le/d/e/d;->b:Ljava/util/concurrent/BlockingQueue;

    .line 5
    iput-object p3, p0, Le/d/e/d;->c:Le/d/e/b;

    .line 6
    iput-object p4, p0, Le/d/e/d;->d:Le/d/e/r;

    .line 7
    new-instance p1, Le/d/e/d$a;

    invoke-direct {p1, p0}, Le/d/e/d$a;-><init>(Le/d/e/d;)V

    iput-object p1, p0, Le/d/e/d;->f:Le/d/e/d$a;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/d/e/d;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/d/e/o;

    const-string v1, "cache-queue-take"

    .line 2
    invoke-virtual {v0, v1}, Le/d/e/o;->addMarker(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Le/d/e/o;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "cache-discard-canceled"

    .line 4
    invoke-virtual {v0, v1}, Le/d/e/o;->finish(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 5
    :cond_0
    iget-object v1, p0, Le/d/e/d;->c:Le/d/e/b;

    invoke-virtual {v0}, Le/d/e/o;->getCacheKey()Ljava/lang/String;

    move-result-object v2

    check-cast v1, Le/d/e/x/d;

    .line 6
    monitor-enter v1

    .line 7
    :try_start_0
    iget-object v3, v1, Le/d/e/x/d;->a:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/d/e/x/d$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v3, :cond_1

    .line 8
    monitor-exit v1

    goto/16 :goto_0

    .line 9
    :cond_1
    :try_start_1
    invoke-virtual {v1, v2}, Le/d/e/x/d;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v8, 0x2

    .line 10
    :try_start_2
    new-instance v9, Le/d/e/x/d$b;

    new-instance v10, Ljava/io/BufferedInputStream;

    .line 11
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 12
    invoke-direct {v10, v11}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v11

    invoke-direct {v9, v10, v11, v12}, Le/d/e/x/d$b;-><init>(Ljava/io/InputStream;J)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 13
    :try_start_3
    invoke-static {v9}, Le/d/e/x/d$a;->a(Le/d/e/x/d$b;)Le/d/e/x/d$a;

    move-result-object v10

    .line 14
    iget-object v11, v10, Le/d/e/x/d$a;->b:Ljava/lang/String;

    invoke-static {v2, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    const-string v3, "%s: key=%s, found=%s"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    .line 15
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v5

    aput-object v2, v11, v6

    iget-object v10, v10, Le/d/e/x/d$a;->b:Ljava/lang/String;

    aput-object v10, v11, v8

    .line 16
    invoke-static {v3, v11}, Le/d/e/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 17
    iget-object v3, v1, Le/d/e/x/d;->a:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/d/e/x/d$a;

    if-eqz v3, :cond_2

    .line 18
    iget-wide v10, v1, Le/d/e/x/d;->b:J

    iget-wide v12, v3, Le/d/e/x/d$a;->a:J

    sub-long/2addr v10, v12

    iput-wide v10, v1, Le/d/e/x/d;->b:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 19
    :cond_2
    :try_start_4
    invoke-virtual {v9}, Ljava/io/FilterInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 20
    monitor-exit v1

    goto :goto_0

    .line 21
    :cond_3
    :try_start_5
    iget-wide v10, v9, Le/d/e/x/d$b;->a:J

    iget-wide v12, v9, Le/d/e/x/d$b;->b:J

    sub-long/2addr v10, v12

    .line 22
    invoke-static {v9, v10, v11}, Le/d/e/x/d;->k(Le/d/e/x/d$b;J)[B

    move-result-object v10

    .line 23
    invoke-virtual {v3, v10}, Le/d/e/x/d$a;->b([B)Le/d/e/b$a;

    move-result-object v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 24
    :try_start_6
    invoke-virtual {v9}, Ljava/io/FilterInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 25
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v3

    .line 26
    :try_start_7
    invoke-virtual {v9}, Ljava/io/FilterInputStream;->close()V

    throw v3
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catch_0
    move-exception v3

    :try_start_8
    const-string v9, "%s: %s"

    new-array v8, v8, [Ljava/lang/Object;

    .line 27
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v8, v5

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v6

    .line 28
    invoke-static {v9, v8}, Le/d/e/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    invoke-virtual {v1, v2}, Le/d/e/x/d;->j(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 30
    monitor-exit v1

    :goto_0
    move-object v3, v4

    :goto_1
    if-nez v3, :cond_4

    const-string v1, "cache-miss"

    .line 31
    invoke-virtual {v0, v1}, Le/d/e/o;->addMarker(Ljava/lang/String;)V

    .line 32
    iget-object v1, p0, Le/d/e/d;->f:Le/d/e/d$a;

    invoke-static {v1, v0}, Le/d/e/d$a;->a(Le/d/e/d$a;Le/d/e/o;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 33
    iget-object v1, p0, Le/d/e/d;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 34
    :cond_4
    iget-wide v1, v3, Le/d/e/b$a;->e:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    cmp-long v1, v1, v7

    if-gez v1, :cond_5

    move v1, v6

    goto :goto_2

    :cond_5
    move v1, v5

    :goto_2
    if-eqz v1, :cond_6

    const-string v1, "cache-hit-expired"

    .line 35
    invoke-virtual {v0, v1}, Le/d/e/o;->addMarker(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v0, v3}, Le/d/e/o;->setCacheEntry(Le/d/e/b$a;)Le/d/e/o;

    .line 37
    iget-object v1, p0, Le/d/e/d;->f:Le/d/e/d$a;

    invoke-static {v1, v0}, Le/d/e/d$a;->a(Le/d/e/d$a;Le/d/e/o;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 38
    iget-object v1, p0, Le/d/e/d;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_6
    const-string v1, "cache-hit"

    .line 39
    invoke-virtual {v0, v1}, Le/d/e/o;->addMarker(Ljava/lang/String;)V

    .line 40
    new-instance v1, Le/d/e/l;

    iget-object v9, v3, Le/d/e/b$a;->a:[B

    iget-object v10, v3, Le/d/e/b$a;->g:Ljava/util/Map;

    if-nez v10, :cond_8

    :cond_7
    :goto_3
    move-object v11, v4

    goto :goto_5

    .line 41
    :cond_8
    invoke-interface {v10}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 42
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    goto :goto_3

    .line 43
    :cond_9
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 44
    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 45
    new-instance v8, Le/d/e/h;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {v8, v11, v7}, Le/d/e/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :goto_5
    const/16 v8, 0xc8

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    move-object v7, v1

    .line 46
    invoke-direct/range {v7 .. v14}, Le/d/e/l;-><init>(I[BLjava/util/Map;Ljava/util/List;ZJ)V

    .line 47
    invoke-virtual {v0, v1}, Le/d/e/o;->parseNetworkResponse(Le/d/e/l;)Le/d/e/q;

    move-result-object v1

    const-string v2, "cache-hit-parsed"

    .line 48
    invoke-virtual {v0, v2}, Le/d/e/o;->addMarker(Ljava/lang/String;)V

    .line 49
    iget-wide v7, v3, Le/d/e/b$a;->f:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    cmp-long v2, v7, v9

    if-gez v2, :cond_a

    move v5, v6

    :cond_a
    if-nez v5, :cond_b

    .line 50
    iget-object v2, p0, Le/d/e/d;->d:Le/d/e/r;

    check-cast v2, Le/d/e/g;

    invoke-virtual {v2, v0, v1}, Le/d/e/g;->a(Le/d/e/o;Le/d/e/q;)V

    goto :goto_6

    :cond_b
    const-string v2, "cache-hit-refresh-needed"

    .line 51
    invoke-virtual {v0, v2}, Le/d/e/o;->addMarker(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v0, v3}, Le/d/e/o;->setCacheEntry(Le/d/e/b$a;)Le/d/e/o;

    .line 53
    iput-boolean v6, v1, Le/d/e/q;->d:Z

    .line 54
    iget-object v2, p0, Le/d/e/d;->f:Le/d/e/d$a;

    invoke-static {v2, v0}, Le/d/e/d$a;->a(Le/d/e/d$a;Le/d/e/o;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 55
    iget-object v2, p0, Le/d/e/d;->d:Le/d/e/r;

    new-instance v3, Le/d/e/c;

    invoke-direct {v3, p0, v0}, Le/d/e/c;-><init>(Le/d/e/d;Le/d/e/o;)V

    check-cast v2, Le/d/e/g;

    .line 56
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    invoke-virtual {v0}, Le/d/e/o;->markDelivered()V

    const-string v4, "post-response"

    .line 58
    invoke-virtual {v0, v4}, Le/d/e/o;->addMarker(Ljava/lang/String;)V

    .line 59
    iget-object v2, v2, Le/d/e/g;->a:Ljava/util/concurrent/Executor;

    new-instance v4, Le/d/e/g$b;

    invoke-direct {v4, v0, v1, v3}, Le/d/e/g$b;-><init>(Le/d/e/o;Le/d/e/q;Ljava/lang/Runnable;)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_6

    .line 60
    :cond_c
    iget-object v2, p0, Le/d/e/d;->d:Le/d/e/r;

    check-cast v2, Le/d/e/g;

    invoke-virtual {v2, v0, v1}, Le/d/e/g;->a(Le/d/e/o;Le/d/e/q;)V

    :cond_d
    :goto_6
    return-void

    :catchall_1
    move-exception v0

    .line 61
    monitor-exit v1

    throw v0
.end method

.method public run()V
    .locals 11

    .line 1
    sget-boolean v0, Le/d/e/d;->g:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "start new dispatcher"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Le/d/e/w;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/16 v0, 0xa

    .line 2
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 3
    iget-object v0, p0, Le/d/e/d;->c:Le/d/e/b;

    check-cast v0, Le/d/e/x/d;

    .line 4
    monitor-enter v0

    .line 5
    :try_start_0
    iget-object v2, v0, Le/d/e/x/d;->c:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 6
    iget-object v2, v0, Le/d/e/x/d;->c:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "Unable to create cache dir %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 7
    iget-object v4, v0, Le/d/e/x/d;->c:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 8
    invoke-static {v2, v3}, Le/d/e/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    :cond_1
    monitor-exit v0

    goto :goto_2

    .line 10
    :cond_2
    :try_start_1
    iget-object v2, v0, Le/d/e/x/d;->c:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v2, :cond_3

    .line 11
    monitor-exit v0

    goto :goto_2

    .line 12
    :cond_3
    :try_start_2
    array-length v3, v2

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_4

    aget-object v5, v2, v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 13
    :try_start_3
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 14
    new-instance v8, Le/d/e/x/d$b;

    new-instance v9, Ljava/io/BufferedInputStream;

    .line 15
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 16
    invoke-direct {v9, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v8, v9, v6, v7}, Le/d/e/x/d$b;-><init>(Ljava/io/InputStream;J)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 17
    :try_start_4
    invoke-static {v8}, Le/d/e/x/d$a;->a(Le/d/e/x/d$b;)Le/d/e/x/d$a;

    move-result-object v9

    .line 18
    iput-wide v6, v9, Le/d/e/x/d$a;->a:J

    .line 19
    iget-object v6, v9, Le/d/e/x/d$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v6, v9}, Le/d/e/x/d;->e(Ljava/lang/String;Le/d/e/x/d$a;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 20
    :try_start_5
    invoke-virtual {v8}, Ljava/io/FilterInputStream;->close()V

    goto :goto_1

    :catchall_0
    move-exception v6

    invoke-virtual {v8}, Ljava/io/FilterInputStream;->close()V

    throw v6
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 21
    :catch_0
    :try_start_6
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 22
    :cond_4
    monitor-exit v0

    .line 23
    :goto_2
    :try_start_7
    invoke-virtual {p0}, Le/d/e/d;->a()V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    .line 24
    :catch_1
    iget-boolean v0, p0, Le/d/e/d;->e:Z

    if-eqz v0, :cond_5

    .line 25
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void

    :cond_5
    const-string v0, "Ignoring spurious interrupt of CacheDispatcher thread; use quit() to terminate it"

    new-array v2, v1, [Ljava/lang/Object;

    .line 26
    invoke-static {v0, v2}, Le/d/e/w;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_2

    :catchall_1
    move-exception v1

    .line 27
    monitor-exit v0

    throw v1
.end method
