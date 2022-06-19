.class public final Le/p/a/y/j/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/p/a/y/j/d$d;,
        Le/p/a/y/j/d$e;,
        Le/p/a/y/j/d$c;
    }
.end annotation


# static fields
.field public static final u:Ljava/util/concurrent/ExecutorService;


# instance fields
.field public final a:Le/p/a/r;

.field public final b:Z

.field public final c:Le/p/a/y/j/d$d;

.field public final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Le/p/a/y/j/k;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/lang/String;

.field public f:I

.field public g:I

.field public h:Z

.field public final i:Ljava/util/concurrent/ExecutorService;

.field public final j:Le/p/a/y/j/s;

.field public k:J

.field public l:J

.field public m:Le/p/a/y/j/t;

.field public final n:Le/p/a/y/j/t;

.field public o:Z

.field public final p:Le/p/a/y/j/v;

.field public final q:Ljava/net/Socket;

.field public final r:Le/p/a/y/j/c;

.field public final s:Le/p/a/y/j/d$e;

.field public final t:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .line 1
    const-class v0, Le/p/a/y/j/d;

    .line 2
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const/4 v1, 0x1

    .line 3
    sget-object v8, Le/p/a/y/i;->a:[B

    .line 4
    new-instance v8, Le/p/a/y/h;

    const-string v9, "OkHttp FramedConnection"

    invoke-direct {v8, v9, v1}, Le/p/a/y/h;-><init>(Ljava/lang/String;Z)V

    move-object v1, v0

    .line 5
    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Le/p/a/y/j/d;->u:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Le/p/a/y/j/d$c;Le/p/a/y/j/d$a;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    sget-object v2, Le/p/a/r;->e:Le/p/a/r;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v0, Le/p/a/y/j/d;->d:Ljava/util/Map;

    .line 3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    const-wide/16 v3, 0x0

    .line 4
    iput-wide v3, v0, Le/p/a/y/j/d;->k:J

    .line 5
    new-instance v3, Le/p/a/y/j/t;

    invoke-direct {v3}, Le/p/a/y/j/t;-><init>()V

    iput-object v3, v0, Le/p/a/y/j/d;->m:Le/p/a/y/j/t;

    .line 6
    new-instance v3, Le/p/a/y/j/t;

    invoke-direct {v3}, Le/p/a/y/j/t;-><init>()V

    iput-object v3, v0, Le/p/a/y/j/d;->n:Le/p/a/y/j/t;

    const/4 v4, 0x0

    .line 7
    iput-boolean v4, v0, Le/p/a/y/j/d;->o:Z

    .line 8
    new-instance v5, Ljava/util/LinkedHashSet;

    invoke-direct {v5}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v5, v0, Le/p/a/y/j/d;->t:Ljava/util/Set;

    .line 9
    iget-object v5, v1, Le/p/a/y/j/d$c;->e:Le/p/a/r;

    .line 10
    iput-object v5, v0, Le/p/a/y/j/d;->a:Le/p/a/r;

    .line 11
    sget-object v6, Le/p/a/y/j/s;->a:Le/p/a/y/j/s;

    .line 12
    iput-object v6, v0, Le/p/a/y/j/d;->j:Le/p/a/y/j/s;

    const/4 v6, 0x1

    .line 13
    iput-boolean v6, v0, Le/p/a/y/j/d;->b:Z

    .line 14
    sget-object v7, Le/p/a/y/j/d$d;->a:Le/p/a/y/j/d$d;

    .line 15
    iput-object v7, v0, Le/p/a/y/j/d;->c:Le/p/a/y/j/d$d;

    .line 16
    iput v6, v0, Le/p/a/y/j/d;->g:I

    if-ne v5, v2, :cond_0

    const/4 v7, 0x3

    .line 17
    iput v7, v0, Le/p/a/y/j/d;->g:I

    :cond_0
    const/4 v7, 0x7

    .line 18
    iget-object v8, v0, Le/p/a/y/j/d;->m:Le/p/a/y/j/t;

    const/high16 v9, 0x1000000

    invoke-virtual {v8, v7, v4, v9}, Le/p/a/y/j/t;->d(III)Le/p/a/y/j/t;

    .line 19
    iget-object v8, v1, Le/p/a/y/j/d$c;->b:Ljava/lang/String;

    .line 20
    iput-object v8, v0, Le/p/a/y/j/d;->e:Ljava/lang/String;

    const/4 v9, 0x0

    if-ne v5, v2, :cond_1

    .line 21
    new-instance v2, Le/p/a/y/j/o;

    invoke-direct {v2}, Le/p/a/y/j/o;-><init>()V

    iput-object v2, v0, Le/p/a/y/j/d;->p:Le/p/a/y/j/v;

    .line 22
    new-instance v2, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v11, 0x0

    const/4 v12, 0x1

    const-wide/16 v13, 0x3c

    sget-object v15, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v16, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct/range {v16 .. v16}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v8, v5, v4

    const-string v8, "OkHttp %s Push Observer"

    invoke-static {v8, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 23
    sget-object v8, Le/p/a/y/i;->a:[B

    .line 24
    new-instance v8, Le/p/a/y/h;

    invoke-direct {v8, v5, v6}, Le/p/a/y/h;-><init>(Ljava/lang/String;Z)V

    move-object v10, v2

    move-object/from16 v17, v8

    .line 25
    invoke-direct/range {v10 .. v17}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v2, v0, Le/p/a/y/j/d;->i:Ljava/util/concurrent/ExecutorService;

    const v2, 0xffff

    .line 26
    invoke-virtual {v3, v7, v4, v2}, Le/p/a/y/j/t;->d(III)Le/p/a/y/j/t;

    const/4 v2, 0x5

    const/16 v5, 0x4000

    .line 27
    invoke-virtual {v3, v2, v4, v5}, Le/p/a/y/j/t;->d(III)Le/p/a/y/j/t;

    goto :goto_0

    .line 28
    :cond_1
    sget-object v2, Le/p/a/r;->d:Le/p/a/r;

    if-ne v5, v2, :cond_2

    .line 29
    new-instance v2, Le/p/a/y/j/u;

    invoke-direct {v2}, Le/p/a/y/j/u;-><init>()V

    iput-object v2, v0, Le/p/a/y/j/d;->p:Le/p/a/y/j/v;

    .line 30
    iput-object v9, v0, Le/p/a/y/j/d;->i:Ljava/util/concurrent/ExecutorService;

    :goto_0
    const/high16 v2, 0x10000

    .line 31
    invoke-virtual {v3, v2}, Le/p/a/y/j/t;->b(I)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v0, Le/p/a/y/j/d;->l:J

    .line 32
    iget-object v2, v1, Le/p/a/y/j/d$c;->a:Ljava/net/Socket;

    .line 33
    iput-object v2, v0, Le/p/a/y/j/d;->q:Ljava/net/Socket;

    .line 34
    iget-object v2, v0, Le/p/a/y/j/d;->p:Le/p/a/y/j/v;

    .line 35
    iget-object v3, v1, Le/p/a/y/j/d$c;->d:Lv3/g;

    .line 36
    invoke-interface {v2, v3, v6}, Le/p/a/y/j/v;->b(Lv3/g;Z)Le/p/a/y/j/c;

    move-result-object v2

    iput-object v2, v0, Le/p/a/y/j/d;->r:Le/p/a/y/j/c;

    .line 37
    new-instance v2, Le/p/a/y/j/d$e;

    iget-object v3, v0, Le/p/a/y/j/d;->p:Le/p/a/y/j/v;

    .line 38
    iget-object v1, v1, Le/p/a/y/j/d$c;->c:Lv3/h;

    .line 39
    invoke-interface {v3, v1, v6}, Le/p/a/y/j/v;->a(Lv3/h;Z)Le/p/a/y/j/b;

    move-result-object v1

    invoke-direct {v2, v0, v1, v9}, Le/p/a/y/j/d$e;-><init>(Le/p/a/y/j/d;Le/p/a/y/j/b;Le/p/a/y/j/d$a;)V

    iput-object v2, v0, Le/p/a/y/j/d;->s:Le/p/a/y/j/d$e;

    .line 40
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void

    .line 41
    :cond_2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static b(Le/p/a/y/j/d;I)Z
    .locals 2

    .line 1
    iget-object p0, p0, Le/p/a/y/j/d;->a:Le/p/a/r;

    sget-object v0, Le/p/a/r;->e:Le/p/a/r;

    const/4 v1, 0x1

    if-ne p0, v0, :cond_0

    if-eqz p1, :cond_0

    and-int/lit8 p0, p1, 0x1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public E(ILe/p/a/y/j/a;)V
    .locals 8

    .line 1
    sget-object v0, Le/p/a/y/j/d;->u:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Le/p/a/y/j/d$a;

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v1, p0, Le/p/a/y/j/d;->e:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v4, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v4, v2

    const-string v3, "OkHttp %s stream %d"

    move-object v1, v7

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Le/p/a/y/j/d$a;-><init>(Le/p/a/y/j/d;Ljava/lang/String;[Ljava/lang/Object;ILe/p/a/y/j/a;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public I(IJ)V
    .locals 9

    .line 1
    sget-object v0, Le/p/a/y/j/d;->u:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Le/p/a/y/j/d$b;

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v1, p0, Le/p/a/y/j/d;->e:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v4, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v4, v2

    const-string v3, "OkHttp Window Update %s stream %d"

    move-object v1, v8

    move-object v2, p0

    move v5, p1

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Le/p/a/y/j/d$b;-><init>(Le/p/a/y/j/d;Ljava/lang/String;[Ljava/lang/Object;IJ)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Le/p/a/y/j/a;->d:Le/p/a/y/j/a;

    sget-object v1, Le/p/a/y/j/a;->o:Le/p/a/y/j/a;

    invoke-virtual {p0, v0, v1}, Le/p/a/y/j/d;->d(Le/p/a/y/j/a;Le/p/a/y/j/a;)V

    return-void
.end method

.method public final d(Le/p/a/y/j/a;Le/p/a/y/j/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Le/p/a/y/j/d;->q(Le/p/a/y/j/a;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    :goto_0
    monitor-enter p0

    .line 3
    :try_start_1
    iget-object v1, p0, Le/p/a/y/j/d;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 4
    iget-object v0, p0, Le/p/a/y/j/d;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Le/p/a/y/j/d;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Le/p/a/y/j/k;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/p/a/y/j/k;

    .line 5
    iget-object v1, p0, Le/p/a/y/j/d;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 6
    invoke-virtual {p0, v2}, Le/p/a/y/j/d;->l(Z)V

    .line 7
    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 8
    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 9
    :try_start_2
    invoke-virtual {v3, p2}, Le/p/a/y/j/k;->c(Le/p/a/y/j/a;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v3

    if-eqz p1, :cond_1

    move-object p1, v3

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 10
    :cond_2
    :try_start_3
    iget-object p2, p0, Le/p/a/y/j/d;->r:Le/p/a/y/j/c;

    invoke-interface {p2}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception p2

    if-nez p1, :cond_3

    move-object p1, p2

    .line 11
    :cond_3
    :goto_3
    :try_start_4
    iget-object p2, p0, Le/p/a/y/j/d;->q:Ljava/net/Socket;

    invoke-virtual {p2}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    move-exception p1

    :goto_4
    if-nez p1, :cond_4

    return-void

    .line 12
    :cond_4
    throw p1

    :catchall_0
    move-exception p1

    .line 13
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/p/a/y/j/d;->r:Le/p/a/y/j/c;

    invoke-interface {v0}, Le/p/a/y/j/c;->flush()V

    return-void
.end method

.method public declared-synchronized j(I)Le/p/a/y/j/k;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Le/p/a/y/j/d;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/p/a/y/j/k;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized k(I)Le/p/a/y/j/k;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Le/p/a/y/j/d;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/p/a/y/j/k;

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Le/p/a/y/j/d;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Le/p/a/y/j/d;->l(Z)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized l(Z)V
    .locals 0

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 2
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public q(Le/p/a/y/j/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/p/a/y/j/d;->r:Le/p/a/y/j/c;

    monitor-enter v0

    .line 2
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    iget-boolean v1, p0, Le/p/a/y/j/d;->h:Z

    if-eqz v1, :cond_0

    .line 4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 5
    :try_start_3
    iput-boolean v1, p0, Le/p/a/y/j/d;->h:Z

    .line 6
    iget v1, p0, Le/p/a/y/j/d;->f:I

    .line 7
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 8
    :try_start_4
    iget-object v2, p0, Le/p/a/y/j/d;->r:Le/p/a/y/j/c;

    sget-object v3, Le/p/a/y/i;->a:[B

    invoke-interface {v2, v1, p1, v3}, Le/p/a/y/j/c;->C(ILe/p/a/y/j/a;[B)V

    .line 9
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void

    :catchall_0
    move-exception p1

    .line 10
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1

    :catchall_1
    move-exception p1

    .line 11
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p1
.end method

.method public s(IZLv3/f;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 1
    iget-object p4, p0, Le/p/a/y/j/d;->r:Le/p/a/y/j/c;

    invoke-interface {p4, p2, p1, p3, v3}, Le/p/a/y/j/c;->r(ZILv3/f;I)V

    return-void

    :cond_0
    :goto_0
    cmp-long v2, p4, v0

    if-lez v2, :cond_4

    .line 2
    monitor-enter p0

    .line 3
    :goto_1
    :try_start_0
    iget-wide v4, p0, Le/p/a/y/j/d;->l:J

    cmp-long v2, v4, v0

    if-gtz v2, :cond_2

    .line 4
    iget-object v2, p0, Le/p/a/y/j/d;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_1

    .line 6
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "stream closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :cond_2
    :try_start_1
    invoke-static {p4, p5, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v2, v4

    .line 8
    iget-object v4, p0, Le/p/a/y/j/d;->r:Le/p/a/y/j/c;

    invoke-interface {v4}, Le/p/a/y/j/c;->t()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 9
    iget-wide v4, p0, Le/p/a/y/j/d;->l:J

    int-to-long v6, v2

    sub-long/2addr v4, v6

    iput-wide v4, p0, Le/p/a/y/j/d;->l:J

    .line 10
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-long/2addr p4, v6

    .line 11
    iget-object v4, p0, Le/p/a/y/j/d;->r:Le/p/a/y/j/c;

    if-eqz p2, :cond_3

    cmp-long v5, p4, v0

    if-nez v5, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    move v5, v3

    :goto_2
    invoke-interface {v4, v5, p1, p3, v2}, Le/p/a/y/j/c;->r(ZILv3/f;I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 12
    :catch_0
    :try_start_2
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1

    .line 13
    :goto_3
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_4
    return-void
.end method
