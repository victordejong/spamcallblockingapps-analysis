.class public final Le/p/a/y/k/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/p/a/a;

.field public final b:Le/p/a/h;

.field public c:Le/p/a/y/k/o;

.field public d:Le/p/a/y/l/a;

.field public e:Z

.field public f:Le/p/a/y/k/i;


# direct methods
.method public constructor <init>(Le/p/a/h;Le/p/a/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/p/a/y/k/q;->b:Le/p/a/h;

    .line 3
    iput-object p2, p0, Le/p/a/y/k/q;->a:Le/p/a/a;

    return-void
.end method


# virtual methods
.method public declared-synchronized a()Le/p/a/y/l/a;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Le/p/a/y/k/q;->d:Le/p/a/y/l/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v0}, Le/p/a/y/k/q;->d(ZZZ)V

    return-void
.end method

.method public final c(Ljava/io/IOException;)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/p/a/y/k/q;->b:Le/p/a/h;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Le/p/a/y/k/q;->c:Le/p/a/y/k/o;

    if-eqz v1, :cond_1

    .line 3
    iget-object v2, p0, Le/p/a/y/k/q;->d:Le/p/a/y/l/a;

    iget v3, v2, Le/p/a/y/l/a;->g:I

    if-nez v3, :cond_0

    .line 4
    iget-object v2, v2, Le/p/a/y/l/a;->a:Le/p/a/w;

    .line 5
    invoke-virtual {v1, v2, p1}, Le/p/a/y/k/o;->a(Le/p/a/w;Ljava/io/IOException;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Le/p/a/y/k/q;->c:Le/p/a/y/k/o;

    .line 7
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-virtual {p0}, Le/p/a/y/k/q;->b()V

    return-void

    :catchall_0
    move-exception p1

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final d(ZZZ)V
    .locals 5

    .line 1
    iget-object v0, p0, Le/p/a/y/k/q;->b:Le/p/a/h;

    monitor-enter v0

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    .line 2
    :try_start_0
    iput-object v1, p0, Le/p/a/y/k/q;->f:Le/p/a/y/k/i;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :cond_0
    :goto_0
    const/4 p3, 0x1

    if-eqz p2, :cond_1

    .line 3
    iput-boolean p3, p0, Le/p/a/y/k/q;->e:Z

    .line 4
    :cond_1
    iget-object p2, p0, Le/p/a/y/k/q;->d:Le/p/a/y/l/a;

    if-eqz p2, :cond_a

    if-eqz p1, :cond_2

    .line 5
    iput-boolean p3, p2, Le/p/a/y/l/a;->k:Z

    .line 6
    :cond_2
    iget-object p1, p0, Le/p/a/y/k/q;->f:Le/p/a/y/k/i;

    if-nez p1, :cond_a

    iget-boolean p1, p0, Le/p/a/y/k/q;->e:Z

    if-nez p1, :cond_3

    iget-boolean p1, p2, Le/p/a/y/l/a;->k:Z

    if-eqz p1, :cond_a

    .line 7
    :cond_3
    iget-object p1, p2, Le/p/a/y/l/a;->j:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, p1, :cond_9

    .line 8
    iget-object v4, p2, Le/p/a/y/l/a;->j:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/Reference;

    .line 9
    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p0, :cond_8

    .line 10
    iget-object p1, p2, Le/p/a/y/l/a;->j:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 11
    iget-object p1, p0, Le/p/a/y/k/q;->d:Le/p/a/y/l/a;

    iget p2, p1, Le/p/a/y/l/a;->g:I

    if-lez p2, :cond_4

    .line 12
    iput-object v1, p0, Le/p/a/y/k/q;->c:Le/p/a/y/k/o;

    .line 13
    :cond_4
    iget-object p1, p1, Le/p/a/y/l/a;->j:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 14
    iget-object p1, p0, Le/p/a/y/k/q;->d:Le/p/a/y/l/a;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    iput-wide v3, p1, Le/p/a/y/l/a;->l:J

    .line 15
    sget-object p1, Le/p/a/y/b;->b:Le/p/a/y/b;

    iget-object p2, p0, Le/p/a/y/k/q;->b:Le/p/a/h;

    iget-object v3, p0, Le/p/a/y/k/q;->d:Le/p/a/y/l/a;

    check-cast p1, Le/p/a/q$a;

    .line 16
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-boolean p1, v3, Le/p/a/y/l/a;->k:Z

    if-nez p1, :cond_6

    iget p1, p2, Le/p/a/h;->b:I

    if-nez p1, :cond_5

    goto :goto_2

    .line 19
    :cond_5
    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    move p3, v2

    goto :goto_3

    .line 20
    :cond_6
    :goto_2
    iget-object p1, p2, Le/p/a/h;->e:Ljava/util/Deque;

    invoke-interface {p1, v3}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    :goto_3
    if-eqz p3, :cond_7

    .line 21
    iget-object p1, p0, Le/p/a/y/k/q;->d:Le/p/a/y/l/a;

    goto :goto_4

    :cond_7
    move-object p1, v1

    .line 22
    :goto_4
    iput-object v1, p0, Le/p/a/y/k/q;->d:Le/p/a/y/l/a;

    move-object v1, p1

    goto :goto_5

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 23
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 24
    :cond_a
    :goto_5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_b

    .line 25
    iget-object p1, v1, Le/p/a/y/l/a;->c:Ljava/net/Socket;

    .line 26
    invoke-static {p1}, Le/p/a/y/i;->d(Ljava/net/Socket;)V

    :cond_b
    return-void

    .line 27
    :goto_6
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final e(IIIZZ)Le/p/a/y/l/a;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Le/p/a/y/k/n;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1
    :goto_0
    iget-object v2, v1, Le/p/a/y/k/q;->b:Le/p/a/h;

    monitor-enter v2

    .line 2
    :try_start_0
    iget-boolean v0, v1, Le/p/a/y/k/q;->e:Z

    if-nez v0, :cond_1c

    .line 3
    iget-object v0, v1, Le/p/a/y/k/q;->f:Le/p/a/y/k/i;

    if-nez v0, :cond_1b

    .line 4
    iget-object v0, v1, Le/p/a/y/k/q;->d:Le/p/a/y/l/a;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 5
    iget-boolean v5, v0, Le/p/a/y/l/a;->k:Z

    if-nez v5, :cond_0

    .line 6
    monitor-exit v2

    :goto_1
    move/from16 v10, p1

    move/from16 v11, p2

    move/from16 v12, p3

    move-object v2, v0

    goto/16 :goto_b

    .line 7
    :cond_0
    sget-object v0, Le/p/a/y/b;->b:Le/p/a/y/b;

    iget-object v5, v1, Le/p/a/y/k/q;->b:Le/p/a/h;

    iget-object v6, v1, Le/p/a/y/k/q;->a:Le/p/a/a;

    invoke-virtual {v0, v5, v6, v1}, Le/p/a/y/b;->a(Le/p/a/h;Le/p/a/a;Le/p/a/y/k/q;)Le/p/a/y/l/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8
    iput-object v0, v1, Le/p/a/y/k/q;->d:Le/p/a/y/l/a;

    .line 9
    monitor-exit v2

    goto :goto_1

    .line 10
    :cond_1
    iget-object v0, v1, Le/p/a/y/k/q;->c:Le/p/a/y/k/o;

    if-nez v0, :cond_2

    .line 11
    new-instance v0, Le/p/a/y/k/o;

    iget-object v5, v1, Le/p/a/y/k/q;->a:Le/p/a/a;

    .line 12
    sget-object v6, Le/p/a/y/b;->b:Le/p/a/y/b;

    iget-object v7, v1, Le/p/a/y/k/q;->b:Le/p/a/h;

    check-cast v6, Le/p/a/q$a;

    .line 13
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object v6, v7, Le/p/a/h;->f:Le/p/a/y/g;

    .line 15
    invoke-direct {v0, v5, v6}, Le/p/a/y/k/o;-><init>(Le/p/a/a;Le/p/a/y/g;)V

    iput-object v0, v1, Le/p/a/y/k/q;->c:Le/p/a/y/k/o;

    .line 16
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 17
    iget-object v0, v1, Le/p/a/y/k/q;->c:Le/p/a/y/k/o;

    invoke-virtual {v0}, Le/p/a/y/k/o;->e()Le/p/a/w;

    move-result-object v0

    .line 18
    new-instance v2, Le/p/a/y/l/a;

    invoke-direct {v2, v0}, Le/p/a/y/l/a;-><init>(Le/p/a/w;)V

    .line 19
    iget-object v0, v2, Le/p/a/y/l/a;->j:Ljava/util/List;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    iget-object v5, v1, Le/p/a/y/k/q;->b:Le/p/a/h;

    monitor-enter v5

    .line 21
    :try_start_1
    sget-object v0, Le/p/a/y/b;->b:Le/p/a/y/b;

    iget-object v6, v1, Le/p/a/y/k/q;->b:Le/p/a/h;

    check-cast v0, Le/p/a/q$a;

    .line 22
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iget-object v0, v6, Le/p/a/h;->e:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 24
    iget-object v0, v6, Le/p/a/h;->a:Ljava/util/concurrent/Executor;

    iget-object v7, v6, Le/p/a/h;->d:Ljava/lang/Runnable;

    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 25
    :cond_3
    iget-object v0, v6, Le/p/a/h;->e:Ljava/util/Deque;

    invoke-interface {v0, v2}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 26
    iput-object v2, v1, Le/p/a/y/k/q;->d:Le/p/a/y/l/a;

    .line 27
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 28
    iget-object v0, v1, Le/p/a/y/k/q;->a:Le/p/a/a;

    .line 29
    iget-object v0, v0, Le/p/a/a;->f:Ljava/util/List;

    .line 30
    iget-object v5, v2, Le/p/a/y/l/a;->e:Le/p/a/r;

    if-nez v5, :cond_1a

    .line 31
    new-instance v5, Le/p/a/y/a;

    invoke-direct {v5, v0}, Le/p/a/y/a;-><init>(Ljava/util/List;)V

    .line 32
    iget-object v6, v2, Le/p/a/y/l/a;->a:Le/p/a/w;

    .line 33
    iget-object v7, v6, Le/p/a/w;->b:Ljava/net/Proxy;

    .line 34
    iget-object v6, v6, Le/p/a/w;->a:Le/p/a/a;

    .line 35
    iget-object v8, v6, Le/p/a/a;->i:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v8, :cond_5

    .line 36
    sget-object v8, Le/p/a/i;->h:Le/p/a/i;

    invoke-interface {v0, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    goto :goto_2

    .line 37
    :cond_4
    new-instance v2, Le/p/a/y/k/n;

    new-instance v3, Ljava/net/UnknownServiceException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CLEARTEXT communication not supported: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Le/p/a/y/k/n;-><init>(Ljava/io/IOException;)V

    throw v2

    :cond_5
    :goto_2
    const/4 v8, 0x0

    move-object v9, v8

    .line 38
    :goto_3
    iget-object v0, v2, Le/p/a/y/l/a;->e:Le/p/a/r;

    if-nez v0, :cond_12

    .line 39
    :try_start_2
    invoke-virtual {v7}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v10, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v10, :cond_7

    invoke-virtual {v7}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v10, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v0, v10, :cond_6

    goto :goto_4

    :cond_6
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0, v7}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    goto :goto_5

    .line 40
    :cond_7
    :goto_4
    iget-object v0, v6, Le/p/a/a;->c:Ljavax/net/SocketFactory;

    .line 41
    invoke-virtual {v0}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    :goto_5
    iput-object v0, v2, Le/p/a/y/l/a;->b:Ljava/net/Socket;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move/from16 v10, p1

    move/from16 v11, p2

    move/from16 v12, p3

    .line 42
    :try_start_3
    invoke-virtual {v2, v10, v11, v12, v5}, Le/p/a/y/l/a;->a(IIILe/p/a/y/a;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    move/from16 v10, p1

    move/from16 v11, p2

    move/from16 v12, p3

    .line 43
    :goto_6
    iget-object v13, v2, Le/p/a/y/l/a;->c:Ljava/net/Socket;

    invoke-static {v13}, Le/p/a/y/i;->d(Ljava/net/Socket;)V

    .line 44
    iget-object v13, v2, Le/p/a/y/l/a;->b:Ljava/net/Socket;

    invoke-static {v13}, Le/p/a/y/i;->d(Ljava/net/Socket;)V

    .line 45
    iput-object v8, v2, Le/p/a/y/l/a;->c:Ljava/net/Socket;

    .line 46
    iput-object v8, v2, Le/p/a/y/l/a;->b:Ljava/net/Socket;

    .line 47
    iput-object v8, v2, Le/p/a/y/l/a;->h:Lv3/h;

    .line 48
    iput-object v8, v2, Le/p/a/y/l/a;->i:Lv3/g;

    .line 49
    iput-object v8, v2, Le/p/a/y/l/a;->d:Le/p/a/l;

    .line 50
    iput-object v8, v2, Le/p/a/y/l/a;->e:Le/p/a/r;

    if-nez v9, :cond_8

    .line 51
    new-instance v9, Le/p/a/y/k/n;

    invoke-direct {v9, v0}, Le/p/a/y/k/n;-><init>(Ljava/io/IOException;)V

    goto :goto_7

    .line 52
    :cond_8
    iget-object v13, v9, Le/p/a/y/k/n;->a:Ljava/io/IOException;

    .line 53
    sget-object v14, Le/p/a/y/k/n;->b:Ljava/lang/reflect/Method;

    if-eqz v14, :cond_9

    :try_start_4
    new-array v15, v3, [Ljava/lang/Object;

    aput-object v13, v15, v4

    .line 54
    invoke-virtual {v14, v0, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_2

    .line 55
    :catch_2
    :cond_9
    iput-object v0, v9, Le/p/a/y/k/n;->a:Ljava/io/IOException;

    :goto_7
    if-eqz p4, :cond_11

    .line 56
    iput-boolean v3, v5, Le/p/a/y/a;->d:Z

    .line 57
    iget-boolean v13, v5, Le/p/a/y/a;->c:Z

    if-nez v13, :cond_a

    goto :goto_8

    .line 58
    :cond_a
    instance-of v13, v0, Ljava/net/ProtocolException;

    if-eqz v13, :cond_b

    goto :goto_8

    .line 59
    :cond_b
    instance-of v13, v0, Ljava/io/InterruptedIOException;

    if-eqz v13, :cond_c

    goto :goto_8

    .line 60
    :cond_c
    instance-of v13, v0, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v13, :cond_d

    .line 61
    invoke-virtual {v0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v14

    instance-of v14, v14, Ljava/security/cert/CertificateException;

    if-eqz v14, :cond_d

    goto :goto_8

    .line 62
    :cond_d
    instance-of v14, v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz v14, :cond_e

    goto :goto_8

    :cond_e
    if-nez v13, :cond_10

    .line 63
    instance-of v0, v0, Ljavax/net/ssl/SSLProtocolException;

    if-eqz v0, :cond_f

    goto :goto_9

    :cond_f
    :goto_8
    move v0, v4

    goto :goto_a

    :cond_10
    :goto_9
    move v0, v3

    :goto_a
    if-eqz v0, :cond_11

    goto/16 :goto_3

    .line 64
    :cond_11
    throw v9

    :cond_12
    move/from16 v10, p1

    move/from16 v11, p2

    move/from16 v12, p3

    .line 65
    sget-object v0, Le/p/a/y/b;->b:Le/p/a/y/b;

    iget-object v5, v1, Le/p/a/y/k/q;->b:Le/p/a/h;

    check-cast v0, Le/p/a/q$a;

    .line 66
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v5, v5, Le/p/a/h;->f:Le/p/a/y/g;

    .line 68
    iget-object v0, v2, Le/p/a/y/l/a;->a:Le/p/a/w;

    .line 69
    monitor-enter v5

    .line 70
    :try_start_5
    iget-object v6, v5, Le/p/a/y/g;->a:Ljava/util/Set;

    invoke-interface {v6, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 71
    monitor-exit v5

    .line 72
    :goto_b
    iget-object v6, v1, Le/p/a/y/k/q;->b:Le/p/a/h;

    monitor-enter v6

    .line 73
    :try_start_6
    iget v0, v2, Le/p/a/y/l/a;->g:I

    if-nez v0, :cond_13

    .line 74
    monitor-exit v6

    return-object v2

    .line 75
    :cond_13
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 76
    iget-object v0, v2, Le/p/a/y/l/a;->c:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, v2, Le/p/a/y/l/a;->c:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, v2, Le/p/a/y/l/a;->c:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_c

    .line 77
    :cond_14
    iget-object v0, v2, Le/p/a/y/l/a;->f:Le/p/a/y/j/d;

    if-eqz v0, :cond_15

    goto :goto_d

    :cond_15
    if-eqz p5, :cond_18

    .line 78
    :try_start_7
    iget-object v0, v2, Le/p/a/y/l/a;->c:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getSoTimeout()I

    move-result v5
    :try_end_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 79
    :try_start_8
    iget-object v0, v2, Le/p/a/y/l/a;->c:Ljava/net/Socket;

    invoke-virtual {v0, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 80
    iget-object v0, v2, Le/p/a/y/l/a;->h:Lv3/h;

    invoke-interface {v0}, Lv3/h;->N1()Z

    move-result v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v0, :cond_16

    .line 81
    :try_start_9
    iget-object v0, v2, Le/p/a/y/l/a;->c:Ljava/net/Socket;

    invoke-virtual {v0, v5}, Ljava/net/Socket;->setSoTimeout(I)V

    goto :goto_c

    :cond_16
    iget-object v0, v2, Le/p/a/y/l/a;->c:Ljava/net/Socket;

    invoke-virtual {v0, v5}, Ljava/net/Socket;->setSoTimeout(I)V

    goto :goto_d

    :catchall_0
    move-exception v0

    iget-object v6, v2, Le/p/a/y/l/a;->c:Ljava/net/Socket;

    invoke-virtual {v6, v5}, Ljava/net/Socket;->setSoTimeout(I)V

    throw v0
    :try_end_9
    .catch Ljava/net/SocketTimeoutException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    :catch_3
    :cond_17
    :goto_c
    move v3, v4

    :catch_4
    :cond_18
    :goto_d
    if-eqz v3, :cond_19

    return-object v2

    .line 82
    :cond_19
    invoke-virtual/range {p0 .. p0}, Le/p/a/y/k/q;->b()V

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    .line 83
    :try_start_a
    monitor-exit v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    .line 84
    monitor-exit v5

    throw v0

    .line 85
    :cond_1a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "already connected"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_3
    move-exception v0

    .line 86
    :try_start_b
    monitor-exit v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    throw v0

    .line 87
    :cond_1b
    :try_start_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "stream != null"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "released"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_4
    move-exception v0

    .line 89
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    throw v0
.end method

.method public f()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v1}, Le/p/a/y/k/q;->d(ZZZ)V

    return-void
.end method

.method public g()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1, v0}, Le/p/a/y/k/q;->d(ZZZ)V

    return-void
.end method

.method public h(Le/p/a/y/k/i;)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/p/a/y/k/q;->b:Le/p/a/h;

    monitor-enter v0

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    iget-object v1, p0, Le/p/a/y/k/q;->f:Le/p/a/y/k/i;

    if-ne p1, v1, :cond_0

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0, v0, p1}, Le/p/a/y/k/q;->d(ZZZ)V

    return-void

    .line 5
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Le/p/a/y/k/q;->f:Le/p/a/y/k/i;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception p1

    .line 6
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/p/a/y/k/q;->a:Le/p/a/a;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
