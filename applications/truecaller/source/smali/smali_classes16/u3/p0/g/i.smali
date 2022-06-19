.class public final Lu3/p0/g/i;
.super Lu3/p0/j/f$c;
.source "SourceFile"

# interfaces
.implements Lu3/l;


# instance fields
.field public b:Ljava/net/Socket;

.field public c:Ljava/net/Socket;

.field public d:Lu3/y;

.field public e:Lu3/f0;

.field public f:Lu3/p0/j/f;

.field public g:Lv3/h;

.field public h:Lv3/g;

.field public i:Z

.field public j:Z

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public final o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/Reference<",
            "Lu3/p0/g/e;",
            ">;>;"
        }
    .end annotation
.end field

.field public p:J

.field public final q:Lu3/n0;


# direct methods
.method public constructor <init>(Lu3/p0/g/j;Lu3/n0;)V
    .locals 1

    const-string v0, "connectionPool"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "route"

    invoke-static {p2, p1}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lu3/p0/j/f$c;-><init>()V

    iput-object p2, p0, Lu3/p0/g/i;->q:Lu3/n0;

    const/4 p1, 0x1

    .line 2
    iput p1, p0, Lu3/p0/g/i;->n:I

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lu3/p0/g/i;->o:Ljava/util/List;

    const-wide p1, 0x7fffffffffffffffL

    .line 4
    iput-wide p1, p0, Lu3/p0/g/i;->p:J

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lu3/p0/j/f;Lu3/p0/j/t;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "connection"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "settings"

    invoke-static {p2, p1}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget p1, p2, Lu3/p0/j/t;->a:I

    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_0

    iget-object p1, p2, Lu3/p0/j/t;->b:[I

    const/4 p2, 0x4

    aget p1, p1, p2

    goto :goto_0

    :cond_0
    const p1, 0x7fffffff

    .line 2
    :goto_0
    iput p1, p0, Lu3/p0/g/i;->n:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b(Lu3/p0/j/o;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "stream"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lu3/p0/j/b;->f:Lu3/p0/j/b;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lu3/p0/j/o;->c(Lu3/p0/j/b;Ljava/io/IOException;)V

    return-void
.end method

.method public final c(IIIIZLu3/f;Lu3/u;)V
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    const-string v0, "call"

    invoke-static {v8, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventListener"

    invoke-static {v9, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, v7, Lu3/p0/g/i;->e:Lu3/f0;

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-nez v0, :cond_0

    move v0, v11

    goto :goto_0

    :cond_0
    move v0, v10

    :goto_0
    if-eqz v0, :cond_13

    .line 2
    iget-object v0, v7, Lu3/p0/g/i;->q:Lu3/n0;

    .line 3
    iget-object v0, v0, Lu3/n0;->a:Lu3/a;

    .line 4
    iget-object v0, v0, Lu3/a;->c:Ljava/util/List;

    .line 5
    new-instance v12, Lu3/p0/g/b;

    invoke-direct {v12, v0}, Lu3/p0/g/b;-><init>(Ljava/util/List;)V

    .line 6
    iget-object v1, v7, Lu3/p0/g/i;->q:Lu3/n0;

    .line 7
    iget-object v1, v1, Lu3/n0;->a:Lu3/a;

    .line 8
    iget-object v2, v1, Lu3/a;->f:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v2, :cond_3

    .line 9
    sget-object v1, Lu3/n;->h:Lu3/n;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, v7, Lu3/p0/g/i;->q:Lu3/n0;

    .line 11
    iget-object v0, v0, Lu3/n0;->a:Lu3/a;

    .line 12
    iget-object v0, v0, Lu3/a;->a:Lu3/a0;

    .line 13
    iget-object v0, v0, Lu3/a0;->e:Ljava/lang/String;

    .line 14
    sget-object v1, Lu3/p0/l/h;->c:Lu3/p0/l/h$a;

    .line 15
    sget-object v1, Lu3/p0/l/h;->a:Lu3/p0/l/h;

    .line 16
    invoke-virtual {v1, v0}, Lu3/p0/l/h;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 17
    :cond_1
    new-instance v1, Lu3/p0/g/l;

    new-instance v2, Ljava/net/UnknownServiceException;

    const-string v3, "CLEARTEXT communication to "

    const-string v4, " not permitted by network security policy"

    .line 18
    invoke-static {v3, v0, v4}, Le/d/c/a/a;->C2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-direct {v2, v0}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lu3/p0/g/l;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 20
    :cond_2
    new-instance v0, Lu3/p0/g/l;

    new-instance v1, Ljava/net/UnknownServiceException;

    const-string v2, "CLEARTEXT communication not enabled for client"

    invoke-direct {v1, v2}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lu3/p0/g/l;-><init>(Ljava/io/IOException;)V

    throw v0

    .line 21
    :cond_3
    iget-object v0, v1, Lu3/a;->b:Ljava/util/List;

    .line 22
    sget-object v1, Lu3/f0;->f:Lu3/f0;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    :goto_1
    const/4 v13, 0x0

    move-object v14, v13

    .line 23
    :goto_2
    :try_start_0
    iget-object v0, v7, Lu3/p0/g/i;->q:Lu3/n0;

    invoke-virtual {v0}, Lu3/n0;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    .line 24
    invoke-virtual/range {v1 .. v6}, Lu3/p0/g/i;->f(IIILu3/f;Lu3/u;)V

    .line 25
    iget-object v0, v7, Lu3/p0/g/i;->b:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v0, :cond_4

    goto :goto_4

    :cond_4
    move/from16 v15, p1

    move/from16 v6, p2

    goto :goto_3

    :cond_5
    move/from16 v15, p1

    move/from16 v6, p2

    .line 26
    :try_start_1
    invoke-virtual {v7, v15, v6, v8, v9}, Lu3/p0/g/i;->e(IILu3/f;Lu3/u;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    move/from16 v5, p4

    .line 27
    :try_start_2
    invoke-virtual {v7, v12, v5, v8, v9}, Lu3/p0/g/i;->g(Lu3/p0/g/b;ILu3/f;Lu3/u;)V

    .line 28
    iget-object v0, v7, Lu3/p0/g/i;->q:Lu3/n0;

    .line 29
    iget-object v1, v0, Lu3/n0;->c:Ljava/net/InetSocketAddress;

    .line 30
    iget-object v0, v0, Lu3/n0;->b:Ljava/net/Proxy;

    .line 31
    iget-object v2, v7, Lu3/p0/g/i;->e:Lu3/f0;

    invoke-virtual {v9, v8, v1, v0, v2}, Lu3/u;->d(Lu3/f;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lu3/f0;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 32
    :goto_4
    iget-object v0, v7, Lu3/p0/g/i;->q:Lu3/n0;

    invoke-virtual {v0}, Lu3/n0;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, v7, Lu3/p0/g/i;->b:Ljava/net/Socket;

    if-eqz v0, :cond_6

    goto :goto_5

    .line 33
    :cond_6
    new-instance v0, Lu3/p0/g/l;

    new-instance v1, Ljava/net/ProtocolException;

    const-string v2, "Too many tunnel connections attempted: 21"

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lu3/p0/g/l;-><init>(Ljava/io/IOException;)V

    throw v0

    .line 34
    :cond_7
    :goto_5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, v7, Lu3/p0/g/i;->p:J

    return-void

    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    :goto_6
    move/from16 v5, p4

    goto :goto_7

    :catch_2
    move-exception v0

    move/from16 v15, p1

    move/from16 v6, p2

    goto :goto_6

    .line 35
    :goto_7
    iget-object v1, v7, Lu3/p0/g/i;->c:Ljava/net/Socket;

    if-eqz v1, :cond_8

    invoke-static {v1}, Lu3/p0/c;->e(Ljava/net/Socket;)V

    .line 36
    :cond_8
    iget-object v1, v7, Lu3/p0/g/i;->b:Ljava/net/Socket;

    if-eqz v1, :cond_9

    invoke-static {v1}, Lu3/p0/c;->e(Ljava/net/Socket;)V

    .line 37
    :cond_9
    iput-object v13, v7, Lu3/p0/g/i;->c:Ljava/net/Socket;

    .line 38
    iput-object v13, v7, Lu3/p0/g/i;->b:Ljava/net/Socket;

    .line 39
    iput-object v13, v7, Lu3/p0/g/i;->g:Lv3/h;

    .line 40
    iput-object v13, v7, Lu3/p0/g/i;->h:Lv3/g;

    .line 41
    iput-object v13, v7, Lu3/p0/g/i;->d:Lu3/y;

    .line 42
    iput-object v13, v7, Lu3/p0/g/i;->e:Lu3/f0;

    .line 43
    iput-object v13, v7, Lu3/p0/g/i;->f:Lu3/p0/j/f;

    .line 44
    iput v11, v7, Lu3/p0/g/i;->n:I

    .line 45
    iget-object v1, v7, Lu3/p0/g/i;->q:Lu3/n0;

    .line 46
    iget-object v3, v1, Lu3/n0;->c:Ljava/net/InetSocketAddress;

    .line 47
    iget-object v4, v1, Lu3/n0;->b:Ljava/net/Proxy;

    const/16 v16, 0x0

    move-object/from16 v1, p7

    move-object/from16 v2, p6

    move-object/from16 v5, v16

    move-object v6, v0

    .line 48
    invoke-virtual/range {v1 .. v6}, Lu3/u;->e(Lu3/f;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lu3/f0;Ljava/io/IOException;)V

    const-string v1, "e"

    if-nez v14, :cond_a

    .line 49
    new-instance v14, Lu3/p0/g/l;

    invoke-direct {v14, v0}, Lu3/p0/g/l;-><init>(Ljava/io/IOException;)V

    goto :goto_8

    .line 50
    :cond_a
    invoke-static {v0, v1}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iget-object v2, v14, Lu3/p0/g/l;->b:Ljava/io/IOException;

    invoke-virtual {v2, v0}, Ljava/io/IOException;->addSuppressed(Ljava/lang/Throwable;)V

    .line 52
    iput-object v0, v14, Lu3/p0/g/l;->a:Ljava/io/IOException;

    :goto_8
    if-eqz p5, :cond_11

    .line 53
    invoke-static {v0, v1}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iput-boolean v11, v12, Lu3/p0/g/b;->c:Z

    .line 55
    iget-boolean v1, v12, Lu3/p0/g/b;->b:Z

    if-nez v1, :cond_b

    goto :goto_9

    .line 56
    :cond_b
    instance-of v1, v0, Ljava/net/ProtocolException;

    if-eqz v1, :cond_c

    goto :goto_9

    .line 57
    :cond_c
    instance-of v1, v0, Ljava/io/InterruptedIOException;

    if-eqz v1, :cond_d

    goto :goto_9

    .line 58
    :cond_d
    instance-of v1, v0, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v1, :cond_e

    invoke-virtual {v0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/security/cert/CertificateException;

    if-eqz v1, :cond_e

    goto :goto_9

    .line 59
    :cond_e
    instance-of v1, v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz v1, :cond_f

    goto :goto_9

    .line 60
    :cond_f
    instance-of v0, v0, Ljavax/net/ssl/SSLException;

    if-eqz v0, :cond_10

    move v0, v11

    goto :goto_a

    :cond_10
    :goto_9
    move v0, v10

    :goto_a
    if-eqz v0, :cond_11

    goto/16 :goto_2

    .line 61
    :cond_11
    throw v14

    .line 62
    :cond_12
    new-instance v0, Lu3/p0/g/l;

    new-instance v1, Ljava/net/UnknownServiceException;

    const-string v2, "H2_PRIOR_KNOWLEDGE cannot be used with HTTPS"

    invoke-direct {v1, v2}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lu3/p0/g/l;-><init>(Ljava/io/IOException;)V

    throw v0

    .line 63
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already connected"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final d(Lu3/e0;Lu3/n0;Ljava/io/IOException;)V
    .locals 3

    const-string v0, "client"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "failedRoute"

    invoke-static {p2, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "failure"

    invoke-static {p3, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p2, Lu3/n0;->b:Ljava/net/Proxy;

    .line 2
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v0, p2, Lu3/n0;->a:Lu3/a;

    .line 4
    iget-object v1, v0, Lu3/a;->k:Ljava/net/ProxySelector;

    .line 5
    iget-object v0, v0, Lu3/a;->a:Lu3/a0;

    .line 6
    invoke-virtual {v0}, Lu3/a0;->j()Ljava/net/URI;

    move-result-object v0

    .line 7
    iget-object v2, p2, Lu3/n0;->b:Ljava/net/Proxy;

    .line 8
    invoke-virtual {v2}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v2

    .line 9
    invoke-virtual {v1, v0, v2, p3}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V

    .line 10
    :cond_0
    iget-object p1, p1, Lu3/e0;->D:Lu3/p0/g/k;

    .line 11
    monitor-enter p1

    :try_start_0
    const-string p3, "failedRoute"

    invoke-static {p2, p3}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget-object p3, p1, Lu3/p0/g/k;->a:Ljava/util/Set;

    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1

    throw p2
.end method

.method public final e(IILu3/f;Lu3/u;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "$this$buffer"

    .line 1
    iget-object v1, p0, Lu3/p0/g/i;->q:Lu3/n0;

    .line 2
    iget-object v2, v1, Lu3/n0;->b:Ljava/net/Proxy;

    .line 3
    iget-object v1, v1, Lu3/n0;->a:Lu3/a;

    .line 4
    invoke-virtual {v2}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    sget-object v4, Lu3/p0/g/f;->a:[I

    invoke-virtual {v3}, Ljava/net/Proxy$Type;->ordinal()I

    move-result v3

    aget v3, v4, v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    .line 5
    :goto_0
    new-instance v1, Ljava/net/Socket;

    invoke-direct {v1, v2}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    goto :goto_1

    .line 6
    :cond_1
    iget-object v1, v1, Lu3/a;->e:Ljavax/net/SocketFactory;

    .line 7
    invoke-virtual {v1}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 8
    :goto_1
    iput-object v1, p0, Lu3/p0/g/i;->b:Ljava/net/Socket;

    .line 9
    iget-object v3, p0, Lu3/p0/g/i;->q:Lu3/n0;

    .line 10
    iget-object v3, v3, Lu3/n0;->c:Ljava/net/InetSocketAddress;

    .line 11
    invoke-virtual {p4, p3, v3, v2}, Lu3/u;->f(Lu3/f;Ljava/net/InetSocketAddress;Ljava/net/Proxy;)V

    .line 12
    invoke-virtual {v1, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 13
    :try_start_0
    sget-object p2, Lu3/p0/l/h;->c:Lu3/p0/l/h$a;

    .line 14
    sget-object p2, Lu3/p0/l/h;->a:Lu3/p0/l/h;

    .line 15
    iget-object p3, p0, Lu3/p0/g/i;->q:Lu3/n0;

    .line 16
    iget-object p3, p3, Lu3/n0;->c:Ljava/net/InetSocketAddress;

    .line 17
    invoke-virtual {p2, v1, p3, p1}, Lu3/p0/l/h;->e(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_1

    .line 18
    :try_start_1
    invoke-static {v1}, Ls1/a/a/a/v0/f/d;->q3(Ljava/net/Socket;)Lv3/b0;

    move-result-object p1

    .line 19
    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    new-instance p2, Lv3/v;

    invoke-direct {p2, p1}, Lv3/v;-><init>(Lv3/b0;)V

    .line 21
    iput-object p2, p0, Lu3/p0/g/i;->g:Lv3/h;

    .line 22
    invoke-static {v1}, Ls1/a/a/a/v0/f/d;->m3(Ljava/net/Socket;)Lv3/z;

    move-result-object p1

    .line 23
    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    new-instance p2, Lv3/u;

    invoke-direct {p2, p1}, Lv3/u;-><init>(Lv3/z;)V

    .line 25
    iput-object p2, p0, Lu3/p0/g/i;->h:Lv3/g;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 26
    invoke-virtual {p1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string p3, "throw with null exception"

    invoke-static {p2, p3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    :goto_2
    return-void

    .line 27
    :cond_2
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 28
    new-instance p2, Ljava/net/ConnectException;

    const-string p3, "Failed to connect to "

    invoke-static {p3}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object p4, p0, Lu3/p0/g/i;->q:Lu3/n0;

    .line 29
    iget-object p4, p4, Lu3/n0;->c:Ljava/net/InetSocketAddress;

    .line 30
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p2, p1}, Ljava/net/ConnectException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 32
    throw p2

    .line 33
    :cond_3
    invoke-static {}, Ls1/z/c/l;->k()V

    const/4 p1, 0x0

    throw p1
.end method

.method public final f(IIILu3/f;Lu3/u;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    .line 1
    new-instance v4, Lu3/g0$a;

    invoke-direct {v4}, Lu3/g0$a;-><init>()V

    .line 2
    iget-object v5, v0, Lu3/p0/g/i;->q:Lu3/n0;

    .line 3
    iget-object v5, v5, Lu3/n0;->a:Lu3/a;

    .line 4
    iget-object v5, v5, Lu3/a;->a:Lu3/a0;

    .line 5
    invoke-virtual {v4, v5}, Lu3/g0$a;->j(Lu3/a0;)Lu3/g0$a;

    const-string v5, "CONNECT"

    const/4 v6, 0x0

    .line 6
    invoke-virtual {v4, v5, v6}, Lu3/g0$a;->e(Ljava/lang/String;Lu3/j0;)Lu3/g0$a;

    .line 7
    iget-object v5, v0, Lu3/p0/g/i;->q:Lu3/n0;

    .line 8
    iget-object v5, v5, Lu3/n0;->a:Lu3/a;

    .line 9
    iget-object v5, v5, Lu3/a;->a:Lu3/a0;

    const/4 v7, 0x1

    .line 10
    invoke-static {v5, v7}, Lu3/p0/c;->w(Lu3/a0;Z)Ljava/lang/String;

    move-result-object v5

    const-string v8, "Host"

    invoke-virtual {v4, v8, v5}, Lu3/g0$a;->c(Ljava/lang/String;Ljava/lang/String;)Lu3/g0$a;

    const-string v5, "Proxy-Connection"

    const-string v8, "Keep-Alive"

    .line 11
    invoke-virtual {v4, v5, v8}, Lu3/g0$a;->c(Ljava/lang/String;Ljava/lang/String;)Lu3/g0$a;

    const-string v5, "User-Agent"

    const-string v8, "okhttp/4.8.0"

    .line 12
    invoke-virtual {v4, v5, v8}, Lu3/g0$a;->c(Ljava/lang/String;Ljava/lang/String;)Lu3/g0$a;

    .line 13
    invoke-virtual {v4}, Lu3/g0$a;->b()Lu3/g0;

    move-result-object v4

    .line 14
    new-instance v5, Lu3/k0$a;

    invoke-direct {v5}, Lu3/k0$a;-><init>()V

    .line 15
    invoke-virtual {v5, v4}, Lu3/k0$a;->g(Lu3/g0;)Lu3/k0$a;

    .line 16
    sget-object v8, Lu3/f0;->c:Lu3/f0;

    invoke-virtual {v5, v8}, Lu3/k0$a;->f(Lu3/f0;)Lu3/k0$a;

    const/16 v8, 0x197

    .line 17
    iput v8, v5, Lu3/k0$a;->c:I

    const-string v8, "Preemptive Authenticate"

    .line 18
    invoke-virtual {v5, v8}, Lu3/k0$a;->e(Ljava/lang/String;)Lu3/k0$a;

    .line 19
    sget-object v8, Lu3/p0/c;->c:Lu3/l0;

    .line 20
    iput-object v8, v5, Lu3/k0$a;->g:Lu3/l0;

    const-wide/16 v8, -0x1

    .line 21
    iput-wide v8, v5, Lu3/k0$a;->k:J

    .line 22
    iput-wide v8, v5, Lu3/k0$a;->l:J

    const-string v8, "Proxy-Authenticate"

    const-string v9, "name"

    .line 23
    invoke-static {v8, v9}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "OkHttp-Preemptive"

    const-string v11, "value"

    invoke-static {v10, v11}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iget-object v12, v5, Lu3/k0$a;->f:Lu3/z$a;

    .line 25
    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v8, v9}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10, v11}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sget-object v9, Lu3/z;->b:Lu3/z$b;

    .line 27
    invoke-virtual {v9, v8}, Lu3/z$b;->a(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v9, v10, v8}, Lu3/z$b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-virtual {v12, v8}, Lu3/z$a;->f(Ljava/lang/String;)Lu3/z$a;

    .line 30
    invoke-virtual {v12, v8, v10}, Lu3/z$a;->c(Ljava/lang/String;Ljava/lang/String;)Lu3/z$a;

    .line 31
    invoke-virtual {v5}, Lu3/k0$a;->a()Lu3/k0;

    move-result-object v5

    .line 32
    iget-object v8, v0, Lu3/p0/g/i;->q:Lu3/n0;

    .line 33
    iget-object v9, v8, Lu3/n0;->a:Lu3/a;

    .line 34
    iget-object v9, v9, Lu3/a;->i:Lu3/c;

    .line 35
    invoke-interface {v9, v8, v5}, Lu3/c;->a(Lu3/n0;Lu3/k0;)Lu3/g0;

    move-result-object v5

    if-eqz v5, :cond_0

    move-object v4, v5

    .line 36
    :cond_0
    iget-object v5, v4, Lu3/g0;->b:Lu3/a0;

    const/4 v8, 0x0

    :goto_0
    const/16 v9, 0x15

    if-ge v8, v9, :cond_b

    move/from16 v9, p1

    .line 37
    invoke-virtual {v0, v9, v1, v2, v3}, Lu3/p0/g/i;->e(IILu3/f;Lu3/u;)V

    .line 38
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CONNECT "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5, v7}, Lu3/p0/c;->w(Lu3/a0;Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " HTTP/1.1"

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 39
    :goto_1
    iget-object v10, v0, Lu3/p0/g/i;->g:Lv3/h;

    if-eqz v10, :cond_a

    .line 40
    iget-object v11, v0, Lu3/p0/g/i;->h:Lv3/g;

    if-eqz v11, :cond_9

    .line 41
    new-instance v12, Lu3/p0/i/b;

    invoke-direct {v12, v6, v0, v10, v11}, Lu3/p0/i/b;-><init>(Lu3/e0;Lu3/p0/g/i;Lv3/h;Lv3/g;)V

    .line 42
    invoke-interface {v10}, Lv3/b0;->i()Lv3/c0;

    move-result-object v6

    int-to-long v13, v1

    sget-object v15, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v13, v14, v15}, Lv3/c0;->g(JLjava/util/concurrent/TimeUnit;)Lv3/c0;

    .line 43
    invoke-interface {v11}, Lv3/z;->i()Lv3/c0;

    move-result-object v6

    move/from16 v13, p3

    move v14, v8

    int-to-long v8, v13

    invoke-virtual {v6, v8, v9, v15}, Lv3/c0;->g(JLjava/util/concurrent/TimeUnit;)Lv3/c0;

    .line 44
    iget-object v6, v4, Lu3/g0;->d:Lu3/z;

    .line 45
    invoke-virtual {v12, v6, v7}, Lu3/p0/i/b;->k(Lu3/z;Ljava/lang/String;)V

    .line 46
    iget-object v6, v12, Lu3/p0/i/b;->g:Lv3/g;

    invoke-interface {v6}, Lv3/g;->flush()V

    const/4 v6, 0x0

    .line 47
    invoke-virtual {v12, v6}, Lu3/p0/i/b;->h(Z)Lu3/k0$a;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 48
    invoke-virtual {v6, v4}, Lu3/k0$a;->g(Lu3/g0;)Lu3/k0$a;

    .line 49
    invoke-virtual {v6}, Lu3/k0$a;->a()Lu3/k0;

    move-result-object v4

    const-string v6, "response"

    .line 50
    invoke-static {v4, v6}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-static {v4}, Lu3/p0/c;->k(Lu3/k0;)J

    move-result-wide v8

    const-wide/16 v16, -0x1

    cmp-long v6, v8, v16

    if-nez v6, :cond_1

    goto :goto_2

    .line 52
    :cond_1
    invoke-virtual {v12, v8, v9}, Lu3/p0/i/b;->j(J)Lv3/b0;

    move-result-object v6

    const v8, 0x7fffffff

    .line 53
    invoke-static {v6, v8, v15}, Lu3/p0/c;->u(Lv3/b0;ILjava/util/concurrent/TimeUnit;)Z

    .line 54
    check-cast v6, Lu3/p0/i/b$d;

    invoke-virtual {v6}, Lu3/p0/i/b$d;->close()V

    .line 55
    :goto_2
    iget v6, v4, Lu3/k0;->e:I

    const/16 v8, 0xc8

    if-eq v6, v8, :cond_5

    const/16 v8, 0x197

    if-ne v6, v8, :cond_4

    .line 56
    iget-object v6, v0, Lu3/p0/g/i;->q:Lu3/n0;

    .line 57
    iget-object v8, v6, Lu3/n0;->a:Lu3/a;

    .line 58
    iget-object v8, v8, Lu3/a;->i:Lu3/c;

    .line 59
    invoke-interface {v8, v6, v4}, Lu3/c;->a(Lu3/n0;Lu3/k0;)Lu3/g0;

    move-result-object v6

    if-eqz v6, :cond_3

    const/4 v8, 0x2

    const-string v9, "Connection"

    const/4 v10, 0x0

    .line 60
    invoke-static {v4, v9, v10, v8}, Lu3/k0;->d(Lu3/k0;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const-string v8, "close"

    const/4 v9, 0x1

    invoke-static {v8, v4, v9}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v6

    move v7, v9

    goto :goto_3

    :cond_2
    const/4 v4, 0x0

    move/from16 v9, p1

    move v8, v14

    move-object/from16 v18, v6

    move-object v6, v4

    move-object/from16 v4, v18

    goto/16 :goto_1

    .line 61
    :cond_3
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Failed to authenticate with proxy"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 62
    :cond_4
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unexpected response code for CONNECT: "

    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 63
    iget v3, v4, Lu3/k0;->e:I

    .line 64
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    const/4 v4, 0x1

    .line 65
    invoke-interface {v10}, Lv3/h;->getBuffer()Lv3/f;

    move-result-object v6

    invoke-virtual {v6}, Lv3/f;->N1()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v11}, Lv3/g;->getBuffer()Lv3/f;

    move-result-object v6

    invoke-virtual {v6}, Lv3/f;->N1()Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v6, 0x0

    move v7, v4

    move-object v4, v6

    :goto_3
    if-eqz v4, :cond_b

    .line 66
    iget-object v6, v0, Lu3/p0/g/i;->b:Ljava/net/Socket;

    if-eqz v6, :cond_6

    invoke-static {v6}, Lu3/p0/c;->e(Ljava/net/Socket;)V

    :cond_6
    const/4 v6, 0x0

    .line 67
    iput-object v6, v0, Lu3/p0/g/i;->b:Ljava/net/Socket;

    .line 68
    iput-object v6, v0, Lu3/p0/g/i;->h:Lv3/g;

    .line 69
    iput-object v6, v0, Lu3/p0/g/i;->g:Lv3/h;

    .line 70
    iget-object v8, v0, Lu3/p0/g/i;->q:Lu3/n0;

    .line 71
    iget-object v9, v8, Lu3/n0;->c:Ljava/net/InetSocketAddress;

    .line 72
    iget-object v8, v8, Lu3/n0;->b:Ljava/net/Proxy;

    .line 73
    invoke-virtual {v3, v2, v9, v8, v6}, Lu3/u;->d(Lu3/f;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lu3/f0;)V

    add-int/lit8 v8, v14, 0x1

    goto/16 :goto_0

    .line 74
    :cond_7
    new-instance v1, Ljava/io/IOException;

    const-string v2, "TLS tunnel buffered too many bytes!"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 75
    :cond_8
    invoke-static {}, Ls1/z/c/l;->k()V

    const/4 v1, 0x0

    throw v1

    .line 76
    :cond_9
    invoke-static {}, Ls1/z/c/l;->k()V

    throw v6

    .line 77
    :cond_a
    invoke-static {}, Ls1/z/c/l;->k()V

    throw v6

    :cond_b
    return-void
.end method

.method public final g(Lu3/p0/g/b;ILu3/f;Lu3/u;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v0, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    .line 1
    sget-object v4, Lu3/f0;->e:Lu3/f0;

    sget-object v5, Lu3/f0;->f:Lu3/f0;

    sget-object v6, Lu3/f0;->c:Lu3/f0;

    iget-object v7, v1, Lu3/p0/g/i;->q:Lu3/n0;

    .line 2
    iget-object v7, v7, Lu3/n0;->a:Lu3/a;

    .line 3
    iget-object v8, v7, Lu3/a;->f:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v8, :cond_1

    .line 4
    iget-object v2, v7, Lu3/a;->b:Ljava/util/List;

    .line 5
    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    iget-object v2, v1, Lu3/p0/g/i;->b:Ljava/net/Socket;

    iput-object v2, v1, Lu3/p0/g/i;->c:Ljava/net/Socket;

    .line 7
    iput-object v5, v1, Lu3/p0/g/i;->e:Lu3/f0;

    .line 8
    invoke-virtual {v1, v0}, Lu3/p0/g/i;->n(I)V

    return-void

    .line 9
    :cond_0
    iget-object v0, v1, Lu3/p0/g/i;->b:Ljava/net/Socket;

    iput-object v0, v1, Lu3/p0/g/i;->c:Ljava/net/Socket;

    .line 10
    iput-object v6, v1, Lu3/p0/g/i;->e:Lu3/f0;

    return-void

    .line 11
    :cond_1
    invoke-virtual {v3, v2}, Lu3/u;->t(Lu3/f;)V

    const-string v7, "$this$buffer"

    .line 12
    iget-object v8, v1, Lu3/p0/g/i;->q:Lu3/n0;

    .line 13
    iget-object v8, v8, Lu3/n0;->a:Lu3/a;

    .line 14
    iget-object v9, v8, Lu3/a;->f:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v9, :cond_12

    .line 15
    :try_start_0
    iget-object v10, v1, Lu3/p0/g/i;->b:Ljava/net/Socket;

    .line 16
    iget-object v11, v8, Lu3/a;->a:Lu3/a0;

    .line 17
    iget-object v12, v11, Lu3/a0;->e:Ljava/lang/String;

    .line 18
    iget v11, v11, Lu3/a0;->f:I

    const/4 v13, 0x1

    .line 19
    invoke-virtual {v9, v10, v12, v11, v13}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v9

    if-eqz v9, :cond_11

    check-cast v9, Ljavax/net/ssl/SSLSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v10, p1

    .line 20
    :try_start_1
    invoke-virtual {v10, v9}, Lu3/p0/g/b;->a(Ljavax/net/ssl/SSLSocket;)Lu3/n;

    move-result-object v10

    .line 21
    iget-boolean v11, v10, Lu3/n;->b:Z

    if-eqz v11, :cond_2

    .line 22
    sget-object v11, Lu3/p0/l/h;->c:Lu3/p0/l/h$a;

    .line 23
    sget-object v11, Lu3/p0/l/h;->a:Lu3/p0/l/h;

    .line 24
    iget-object v12, v8, Lu3/a;->a:Lu3/a0;

    .line 25
    iget-object v12, v12, Lu3/a0;->e:Ljava/lang/String;

    .line 26
    iget-object v14, v8, Lu3/a;->b:Ljava/util/List;

    .line 27
    invoke-virtual {v11, v9, v12, v14}, Lu3/p0/l/h;->d(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    .line 28
    :cond_2
    invoke-virtual {v9}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 29
    invoke-virtual {v9}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v11

    const-string v12, "sslSocketSession"

    .line 30
    invoke-static {v11, v12}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v11}, Lu3/y;->a(Ljavax/net/ssl/SSLSession;)Lu3/y;

    move-result-object v12

    .line 31
    iget-object v14, v8, Lu3/a;->g:Ljavax/net/ssl/HostnameVerifier;

    if-eqz v14, :cond_10

    .line 32
    iget-object v15, v8, Lu3/a;->a:Lu3/a0;

    .line 33
    iget-object v15, v15, Lu3/a0;->e:Ljava/lang/String;

    .line 34
    invoke-interface {v14, v15, v11}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 35
    invoke-virtual {v12}, Lu3/y;->c()Ljava/util/List;

    move-result-object v0

    .line 36
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v13

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    .line 37
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Ls1/p;

    const-string v2, "null cannot be cast to non-null type java.security.cert.X509Certificate"

    invoke-direct {v0, v2}, Ls1/p;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 38
    new-instance v2, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n              |Hostname "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    iget-object v4, v8, Lu3/a;->a:Lu3/a0;

    .line 40
    iget-object v4, v4, Lu3/a0;->e:Ljava/lang/String;

    .line 41
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " not verified:\n              |    certificate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    sget-object v4, Lu3/h;->d:Lu3/h$a;

    invoke-virtual {v4, v0}, Lu3/h$a;->a(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n              |    DN: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v4

    const-string v5, "cert.subjectDN"

    invoke-static {v4, v5}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n              |    subjectAltNames: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    sget-object v4, Lu3/p0/n/d;->a:Lu3/p0/n/d;

    const-string v5, "certificate"

    .line 45
    invoke-static {v0, v5}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x7

    .line 46
    invoke-virtual {v4, v0, v5}, Lu3/p0/n/d;->a(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x2

    .line 47
    invoke-virtual {v4, v0, v6}, Lu3/p0/n/d;->a(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    move-result-object v0

    .line 48
    invoke-static {v5, v0}, Ls1/u/i;->l0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 49
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\n              "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    .line 50
    invoke-static {v0, v3, v13}, Ls1/f0/n;->d(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-direct {v2, v0}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 52
    :cond_4
    new-instance v0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Hostname "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    iget-object v3, v8, Lu3/a;->a:Lu3/a0;

    .line 55
    iget-object v3, v3, Lu3/a0;->e:Ljava/lang/String;

    .line 56
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " not verified (no certificates)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 57
    invoke-direct {v0, v2}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_5
    iget-object v11, v8, Lu3/a;->h:Lu3/h;

    if-eqz v11, :cond_f

    .line 59
    new-instance v13, Lu3/y;

    .line 60
    iget-object v14, v12, Lu3/y;->b:Lu3/o0;

    .line 61
    iget-object v15, v12, Lu3/y;->c:Lu3/k;

    move-object/from16 v16, v5

    .line 62
    iget-object v5, v12, Lu3/y;->d:Ljava/util/List;

    move-object/from16 v17, v6

    .line 63
    new-instance v6, Lu3/p0/g/g;

    invoke-direct {v6, v11, v12, v8}, Lu3/p0/g/g;-><init>(Lu3/h;Lu3/y;Lu3/a;)V

    .line 64
    invoke-direct {v13, v14, v15, v5, v6}, Lu3/y;-><init>(Lu3/o0;Lu3/k;Ljava/util/List;Ls1/z/b/a;)V

    iput-object v13, v1, Lu3/p0/g/i;->d:Lu3/y;

    .line 65
    iget-object v5, v8, Lu3/a;->a:Lu3/a0;

    .line 66
    iget-object v5, v5, Lu3/a0;->e:Ljava/lang/String;

    .line 67
    new-instance v6, Lu3/p0/g/h;

    invoke-direct {v6, v1}, Lu3/p0/g/h;-><init>(Lu3/p0/g/i;)V

    invoke-virtual {v11, v5, v6}, Lu3/h;->a(Ljava/lang/String;Ls1/z/b/a;)V

    .line 68
    iget-boolean v5, v10, Lu3/n;->b:Z

    if-eqz v5, :cond_6

    .line 69
    sget-object v5, Lu3/p0/l/h;->c:Lu3/p0/l/h$a;

    .line 70
    sget-object v5, Lu3/p0/l/h;->a:Lu3/p0/l/h;

    .line 71
    invoke-virtual {v5, v9}, Lu3/p0/l/h;->f(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_6
    const/4 v5, 0x0

    .line 72
    :goto_0
    iput-object v9, v1, Lu3/p0/g/i;->c:Ljava/net/Socket;

    .line 73
    invoke-static {v9}, Ls1/a/a/a/v0/f/d;->q3(Ljava/net/Socket;)Lv3/b0;

    move-result-object v6

    .line 74
    invoke-static {v6, v7}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    new-instance v8, Lv3/v;

    invoke-direct {v8, v6}, Lv3/v;-><init>(Lv3/b0;)V

    .line 76
    iput-object v8, v1, Lu3/p0/g/i;->g:Lv3/h;

    .line 77
    invoke-static {v9}, Ls1/a/a/a/v0/f/d;->m3(Ljava/net/Socket;)Lv3/z;

    move-result-object v6

    .line 78
    invoke-static {v6, v7}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    new-instance v7, Lv3/u;

    invoke-direct {v7, v6}, Lv3/u;-><init>(Lv3/z;)V

    .line 80
    iput-object v7, v1, Lu3/p0/g/i;->h:Lv3/g;

    if-eqz v5, :cond_d

    const-string v6, "protocol"

    .line 81
    invoke-static {v5, v6}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    sget-object v6, Lu3/f0;->b:Lu3/f0;

    const-string v7, "http/1.0"

    invoke-static {v5, v7}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    :goto_1
    move-object v5, v6

    goto :goto_2

    :cond_7
    const-string v6, "http/1.1"

    .line 83
    invoke-static {v5, v6}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    goto :goto_3

    :cond_8
    const-string v6, "h2_prior_knowledge"

    .line 84
    invoke-static {v5, v6}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    move-object/from16 v5, v16

    goto :goto_2

    :cond_9
    const-string v6, "h2"

    .line 85
    invoke-static {v5, v6}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    move-object v5, v4

    goto :goto_2

    .line 86
    :cond_a
    sget-object v6, Lu3/f0;->d:Lu3/f0;

    const-string v7, "spdy/3.1"

    invoke-static {v5, v7}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    goto :goto_1

    .line 87
    :cond_b
    sget-object v6, Lu3/f0;->g:Lu3/f0;

    const-string v7, "quic"

    invoke-static {v5, v7}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    goto :goto_1

    :goto_2
    move-object v6, v5

    goto :goto_4

    .line 88
    :cond_c
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected protocol: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    :goto_3
    move-object/from16 v6, v17

    .line 89
    :goto_4
    iput-object v6, v1, Lu3/p0/g/i;->e:Lu3/f0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    sget-object v5, Lu3/p0/l/h;->c:Lu3/p0/l/h$a;

    .line 91
    sget-object v5, Lu3/p0/l/h;->a:Lu3/p0/l/h;

    .line 92
    invoke-virtual {v5, v9}, Lu3/p0/l/h;->a(Ljavax/net/ssl/SSLSocket;)V

    .line 93
    iget-object v5, v1, Lu3/p0/g/i;->d:Lu3/y;

    invoke-virtual {v3, v2, v5}, Lu3/u;->s(Lu3/f;Lu3/y;)V

    .line 94
    iget-object v2, v1, Lu3/p0/g/i;->e:Lu3/f0;

    if-ne v2, v4, :cond_e

    .line 95
    invoke-virtual {v1, v0}, Lu3/p0/g/i;->n(I)V

    :cond_e
    return-void

    .line 96
    :cond_f
    :try_start_2
    invoke-static {}, Ls1/z/c/l;->k()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x0

    throw v0

    .line 97
    :cond_10
    :try_start_3
    invoke-static {}, Ls1/z/c/l;->k()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v0, 0x0

    throw v0

    :catchall_0
    move-exception v0

    goto :goto_5

    .line 98
    :cond_11
    :try_start_4
    new-instance v0, Ls1/p;

    const-string v2, "null cannot be cast to non-null type javax.net.ssl.SSLSocket"

    invoke-direct {v0, v2}, Ls1/p;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    invoke-static {}, Ls1/z/c/l;->k()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/4 v0, 0x0

    throw v0

    :catchall_1
    move-exception v0

    const/4 v9, 0x0

    :goto_5
    if-eqz v9, :cond_13

    .line 99
    sget-object v2, Lu3/p0/l/h;->c:Lu3/p0/l/h$a;

    .line 100
    sget-object v2, Lu3/p0/l/h;->a:Lu3/p0/l/h;

    .line 101
    invoke-virtual {v2, v9}, Lu3/p0/l/h;->a(Ljavax/net/ssl/SSLSocket;)V

    :cond_13
    if-eqz v9, :cond_14

    .line 102
    invoke-static {v9}, Lu3/p0/c;->e(Ljava/net/Socket;)V

    :cond_14
    throw v0
.end method

.method public final h(Lu3/a;Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu3/a;",
            "Ljava/util/List<",
            "Lu3/n0;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "address"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lu3/p0/c;->a:[B

    .line 2
    iget-object v0, p0, Lu3/p0/g/i;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lu3/p0/g/i;->n:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_12

    iget-boolean v0, p0, Lu3/p0/g/i;->i:Z

    if-eqz v0, :cond_0

    goto/16 :goto_7

    .line 3
    :cond_0
    iget-object v0, p0, Lu3/p0/g/i;->q:Lu3/n0;

    .line 4
    iget-object v0, v0, Lu3/n0;->a:Lu3/a;

    .line 5
    invoke-virtual {v0, p1}, Lu3/a;->a(Lu3/a;)Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    .line 6
    :cond_1
    iget-object v0, p1, Lu3/a;->a:Lu3/a0;

    .line 7
    iget-object v0, v0, Lu3/a0;->e:Ljava/lang/String;

    .line 8
    iget-object v1, p0, Lu3/p0/g/i;->q:Lu3/n0;

    .line 9
    iget-object v1, v1, Lu3/n0;->a:Lu3/a;

    .line 10
    iget-object v1, v1, Lu3/a;->a:Lu3/a0;

    .line 11
    iget-object v1, v1, Lu3/a0;->e:Ljava/lang/String;

    .line 12
    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    return v1

    .line 13
    :cond_2
    iget-object v0, p0, Lu3/p0/g/i;->f:Lu3/p0/j/f;

    if-nez v0, :cond_3

    return v2

    :cond_3
    if-eqz p2, :cond_12

    .line 14
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 15
    :cond_4
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu3/n0;

    .line 16
    iget-object v3, v0, Lu3/n0;->b:Ljava/net/Proxy;

    .line 17
    invoke-virtual {v3}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v3

    sget-object v4, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-ne v3, v4, :cond_6

    .line 18
    iget-object v3, p0, Lu3/p0/g/i;->q:Lu3/n0;

    .line 19
    iget-object v3, v3, Lu3/n0;->b:Ljava/net/Proxy;

    .line 20
    invoke-virtual {v3}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v3

    sget-object v4, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-ne v3, v4, :cond_6

    iget-object v3, p0, Lu3/p0/g/i;->q:Lu3/n0;

    .line 21
    iget-object v3, v3, Lu3/n0;->c:Ljava/net/InetSocketAddress;

    iget-object v0, v0, Lu3/n0;->c:Ljava/net/InetSocketAddress;

    .line 22
    invoke-static {v3, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    move v0, v2

    :goto_0
    if-eqz v0, :cond_5

    move p2, v1

    goto :goto_2

    :cond_7
    :goto_1
    move p2, v2

    :goto_2
    if-nez p2, :cond_8

    goto/16 :goto_7

    .line 23
    :cond_8
    iget-object p2, p1, Lu3/a;->g:Ljavax/net/ssl/HostnameVerifier;

    .line 24
    sget-object v0, Lu3/p0/n/d;->a:Lu3/p0/n/d;

    if-eq p2, v0, :cond_9

    return v2

    .line 25
    :cond_9
    iget-object p2, p1, Lu3/a;->a:Lu3/a0;

    .line 26
    sget-object v3, Lu3/p0/c;->a:[B

    .line 27
    iget-object v3, p0, Lu3/p0/g/i;->q:Lu3/n0;

    .line 28
    iget-object v3, v3, Lu3/n0;->a:Lu3/a;

    .line 29
    iget-object v3, v3, Lu3/a;->a:Lu3/a0;

    .line 30
    iget v4, p2, Lu3/a0;->f:I

    iget v5, v3, Lu3/a0;->f:I

    if-eq v4, v5, :cond_a

    goto :goto_5

    .line 31
    :cond_a
    iget-object v4, p2, Lu3/a0;->e:Ljava/lang/String;

    iget-object v3, v3, Lu3/a0;->e:Ljava/lang/String;

    .line 32
    invoke-static {v4, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    goto :goto_4

    .line 33
    :cond_b
    iget-boolean v3, p0, Lu3/p0/g/i;->j:Z

    if-nez v3, :cond_e

    iget-object v3, p0, Lu3/p0/g/i;->d:Lu3/y;

    if-eqz v3, :cond_e

    .line 34
    invoke-virtual {v3}, Lu3/y;->c()Ljava/util/List;

    move-result-object v3

    .line 35
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    xor-int/2addr v4, v1

    if-eqz v4, :cond_d

    .line 36
    iget-object p2, p2, Lu3/a0;->e:Ljava/lang/String;

    .line 37
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_c

    check-cast v3, Ljava/security/cert/X509Certificate;

    .line 38
    invoke-virtual {v0, p2, v3}, Lu3/p0/n/d;->b(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    move-result p2

    if-eqz p2, :cond_d

    move p2, v1

    goto :goto_3

    .line 39
    :cond_c
    new-instance p1, Ls1/p;

    const-string p2, "null cannot be cast to non-null type java.security.cert.X509Certificate"

    invoke-direct {p1, p2}, Ls1/p;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    move p2, v2

    :goto_3
    if-eqz p2, :cond_e

    :goto_4
    move p2, v1

    goto :goto_6

    :cond_e
    :goto_5
    move p2, v2

    :goto_6
    if-nez p2, :cond_f

    return v2

    .line 40
    :cond_f
    :try_start_0
    iget-object p2, p1, Lu3/a;->h:Lu3/h;

    const/4 v0, 0x0

    if-eqz p2, :cond_11

    .line 41
    iget-object p1, p1, Lu3/a;->a:Lu3/a0;

    .line 42
    iget-object p1, p1, Lu3/a0;->e:Ljava/lang/String;

    .line 43
    iget-object v3, p0, Lu3/p0/g/i;->d:Lu3/y;

    if-eqz v3, :cond_10

    .line 44
    invoke-virtual {v3}, Lu3/y;->c()Ljava/util/List;

    move-result-object v0

    const-string v3, "hostname"

    .line 45
    invoke-static {p1, v3}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "peerCertificates"

    invoke-static {v0, v3}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    new-instance v3, Lu3/i;

    invoke-direct {v3, p2, v0, p1}, Lu3/i;-><init>(Lu3/h;Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {p2, p1, v3}, Lu3/h;->a(Ljava/lang/String;Ls1/z/b/a;)V

    return v1

    .line 47
    :cond_10
    invoke-static {}, Ls1/z/c/l;->k()V
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    throw v0

    :cond_11
    :try_start_1
    invoke-static {}, Ls1/z/c/l;->k()V
    :try_end_1
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_1 .. :try_end_1} :catch_0

    throw v0

    :catch_0
    :cond_12
    :goto_7
    return v2
.end method

.method public final i(Z)Z
    .locals 9

    .line 1
    sget-object v0, Lu3/p0/c;->a:[B

    .line 2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 3
    iget-object v2, p0, Lu3/p0/g/i;->b:Ljava/net/Socket;

    const/4 v3, 0x0

    if-eqz v2, :cond_8

    .line 4
    iget-object v4, p0, Lu3/p0/g/i;->c:Ljava/net/Socket;

    if-eqz v4, :cond_7

    .line 5
    iget-object v5, p0, Lu3/p0/g/i;->g:Lv3/h;

    if-eqz v5, :cond_6

    .line 6
    invoke-virtual {v2}, Ljava/net/Socket;->isClosed()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_5

    invoke-virtual {v4}, Ljava/net/Socket;->isClosed()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v4}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v4}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    .line 7
    :cond_0
    iget-object v2, p0, Lu3/p0/g/i;->f:Lu3/p0/j/f;

    const/4 v6, 0x1

    if-eqz v2, :cond_3

    .line 8
    monitor-enter v2

    .line 9
    :try_start_0
    iget-boolean p1, v2, Lu3/p0/j/f;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    monitor-exit v2

    goto :goto_0

    .line 10
    :cond_1
    :try_start_1
    iget-wide v4, v2, Lu3/p0/j/f;->p:J

    iget-wide v7, v2, Lu3/p0/j/f;->o:J

    cmp-long p1, v4, v7

    if-gez p1, :cond_2

    iget-wide v4, v2, Lu3/p0/j/f;->r:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long p1, v0, v4

    if-ltz p1, :cond_2

    monitor-exit v2

    goto :goto_0

    .line 11
    :cond_2
    monitor-exit v2

    move v3, v6

    :goto_0
    return v3

    :catchall_0
    move-exception p1

    monitor-exit v2

    throw p1

    .line 12
    :cond_3
    monitor-enter p0

    :try_start_2
    iget-wide v7, p0, Lu3/p0/g/i;->p:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    sub-long/2addr v0, v7

    monitor-exit p0

    const-wide v7, 0x2540be400L

    cmp-long v0, v0, v7

    if-ltz v0, :cond_4

    if-eqz p1, :cond_4

    const-string p1, "$this$isHealthy"

    .line 13
    invoke-static {v4, p1}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "source"

    invoke-static {v5, p1}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    :try_start_3
    invoke-virtual {v4}, Ljava/net/Socket;->getSoTimeout()I

    move-result p1
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 15
    :try_start_4
    invoke-virtual {v4, v6}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 16
    invoke-interface {v5}, Lv3/h;->N1()Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    xor-int/2addr v0, v6

    .line 17
    :try_start_5
    invoke-virtual {v4, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    move v3, v0

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-virtual {v4, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    throw v0
    :try_end_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :catch_0
    move v3, v6

    :catch_1
    :goto_1
    return v3

    :cond_4
    return v6

    :catchall_2
    move-exception p1

    .line 18
    monitor-exit p0

    throw p1

    :cond_5
    :goto_2
    return v3

    .line 19
    :cond_6
    invoke-static {}, Ls1/z/c/l;->k()V

    throw v3

    .line 20
    :cond_7
    invoke-static {}, Ls1/z/c/l;->k()V

    throw v3

    .line 21
    :cond_8
    invoke-static {}, Ls1/z/c/l;->k()V

    throw v3
.end method

.method public final j()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lu3/p0/g/i;->f:Lu3/p0/j/f;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final k(Lu3/e0;Lu3/p0/h/g;)Lu3/p0/h/d;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    const-string v0, "client"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chain"

    invoke-static {p2, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lu3/p0/g/i;->c:Ljava/net/Socket;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 2
    iget-object v2, p0, Lu3/p0/g/i;->g:Lv3/h;

    if-eqz v2, :cond_2

    .line 3
    iget-object v3, p0, Lu3/p0/g/i;->h:Lv3/g;

    if-eqz v3, :cond_1

    .line 4
    iget-object v1, p0, Lu3/p0/g/i;->f:Lu3/p0/j/f;

    if-eqz v1, :cond_0

    .line 5
    new-instance v0, Lu3/p0/j/m;

    invoke-direct {v0, p1, p0, p2, v1}, Lu3/p0/j/m;-><init>(Lu3/e0;Lu3/p0/g/i;Lu3/p0/h/g;Lu3/p0/j/f;)V

    goto :goto_0

    .line 6
    :cond_0
    iget v1, p2, Lu3/p0/h/g;->h:I

    .line 7
    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 8
    invoke-interface {v2}, Lv3/b0;->i()Lv3/c0;

    move-result-object v0

    .line 9
    iget v1, p2, Lu3/p0/h/g;->h:I

    int-to-long v4, v1

    .line 10
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5, v1}, Lv3/c0;->g(JLjava/util/concurrent/TimeUnit;)Lv3/c0;

    .line 11
    invoke-interface {v3}, Lv3/z;->i()Lv3/c0;

    move-result-object v0

    .line 12
    iget p2, p2, Lu3/p0/h/g;->i:I

    int-to-long v4, p2

    .line 13
    invoke-virtual {v0, v4, v5, v1}, Lv3/c0;->g(JLjava/util/concurrent/TimeUnit;)Lv3/c0;

    .line 14
    new-instance v0, Lu3/p0/i/b;

    invoke-direct {v0, p1, p0, v2, v3}, Lu3/p0/i/b;-><init>(Lu3/e0;Lu3/p0/g/i;Lv3/h;Lv3/g;)V

    :goto_0
    return-object v0

    .line 15
    :cond_1
    invoke-static {}, Ls1/z/c/l;->k()V

    throw v1

    .line 16
    :cond_2
    invoke-static {}, Ls1/z/c/l;->k()V

    throw v1

    .line 17
    :cond_3
    invoke-static {}, Ls1/z/c/l;->k()V

    throw v1
.end method

.method public final declared-synchronized l()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iput-boolean v0, p0, Lu3/p0/g/i;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public m()Ljava/net/Socket;
    .locals 1

    .line 1
    iget-object v0, p0, Lu3/p0/g/i;->c:Ljava/net/Socket;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Ls1/z/c/l;->k()V

    const/4 v0, 0x0

    throw v0
.end method

.method public final n(I)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lu3/p0/g/i;->c:Ljava/net/Socket;

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 2
    iget-object v2, p0, Lu3/p0/g/i;->g:Lv3/h;

    if-eqz v2, :cond_d

    .line 3
    iget-object v3, p0, Lu3/p0/g/i;->h:Lv3/g;

    if-eqz v3, :cond_c

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 5
    new-instance v4, Lu3/p0/j/f$b;

    sget-object v5, Lu3/p0/f/d;->h:Lu3/p0/f/d;

    const/4 v6, 0x1

    invoke-direct {v4, v6, v5}, Lu3/p0/j/f$b;-><init>(ZLu3/p0/f/d;)V

    .line 6
    iget-object v7, p0, Lu3/p0/g/i;->q:Lu3/n0;

    .line 7
    iget-object v7, v7, Lu3/n0;->a:Lu3/a;

    .line 8
    iget-object v7, v7, Lu3/a;->a:Lu3/a0;

    .line 9
    iget-object v7, v7, Lu3/a0;->e:Ljava/lang/String;

    const-string v8, "socket"

    .line 10
    invoke-static {v0, v8}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "peerName"

    invoke-static {v7, v8}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "source"

    invoke-static {v2, v8}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "sink"

    invoke-static {v3, v8}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iput-object v0, v4, Lu3/p0/j/f$b;->a:Ljava/net/Socket;

    .line 12
    iget-boolean v0, v4, Lu3/p0/j/f$b;->h:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lu3/p0/c;->g:Ljava/lang/String;

    const/16 v9, 0x20

    invoke-static {v0, v8, v9, v7}, Le/d/c/a/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "MockWebServer "

    .line 13
    invoke-static {v0, v7}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 14
    :goto_0
    iput-object v0, v4, Lu3/p0/j/f$b;->b:Ljava/lang/String;

    .line 15
    iput-object v2, v4, Lu3/p0/j/f$b;->c:Lv3/h;

    .line 16
    iput-object v3, v4, Lu3/p0/j/f$b;->d:Lv3/g;

    const-string v0, "listener"

    .line 17
    invoke-static {p0, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iput-object p0, v4, Lu3/p0/j/f$b;->e:Lu3/p0/j/f$c;

    .line 19
    iput p1, v4, Lu3/p0/j/f$b;->g:I

    .line 20
    new-instance p1, Lu3/p0/j/f;

    invoke-direct {p1, v4}, Lu3/p0/j/f;-><init>(Lu3/p0/j/f$b;)V

    .line 21
    iput-object p1, p0, Lu3/p0/g/i;->f:Lu3/p0/j/f;

    .line 22
    sget-object v0, Lu3/p0/j/f;->D:Lu3/p0/j/f;

    .line 23
    sget-object v0, Lu3/p0/j/f;->C:Lu3/p0/j/t;

    .line 24
    iget v2, v0, Lu3/p0/j/t;->a:I

    and-int/lit8 v2, v2, 0x10

    const/4 v3, 0x4

    if-eqz v2, :cond_1

    iget-object v0, v0, Lu3/p0/j/t;->b:[I

    aget v0, v0, v3

    goto :goto_1

    :cond_1
    const v0, 0x7fffffff

    .line 25
    :goto_1
    iput v0, p0, Lu3/p0/g/i;->n:I

    const-string v0, "taskRunner"

    .line 26
    invoke-static {v5, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iget-object v0, p1, Lu3/p0/j/f;->z:Lu3/p0/j/p;

    .line 28
    monitor-enter v0

    .line 29
    :try_start_0
    iget-boolean v2, v0, Lu3/p0/j/p;->c:Z

    if-nez v2, :cond_b

    .line 30
    iget-boolean v2, v0, Lu3/p0/j/p;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_2

    monitor-exit v0

    goto :goto_2

    .line 31
    :cond_2
    :try_start_1
    sget-object v2, Lu3/p0/j/p;->g:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 32
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ">> CONNECTION "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lu3/p0/j/e;->a:Lv3/i;

    invoke-virtual {v7}, Lv3/i;->g()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v4, v7}, Lu3/p0/c;->i(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 33
    :cond_3
    iget-object v2, v0, Lu3/p0/j/p;->e:Lv3/g;

    sget-object v4, Lu3/p0/j/e;->a:Lv3/i;

    invoke-interface {v2, v4}, Lv3/g;->E0(Lv3/i;)Lv3/g;

    .line 34
    iget-object v2, v0, Lu3/p0/j/p;->e:Lv3/g;

    invoke-interface {v2}, Lv3/g;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 35
    monitor-exit v0

    .line 36
    :goto_2
    iget-object v0, p1, Lu3/p0/j/f;->z:Lu3/p0/j/p;

    iget-object v2, p1, Lu3/p0/j/f;->s:Lu3/p0/j/t;

    .line 37
    monitor-enter v0

    :try_start_2
    const-string v4, "settings"

    invoke-static {v2, v4}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-boolean v4, v0, Lu3/p0/j/p;->c:Z

    if-nez v4, :cond_a

    .line 39
    iget v4, v2, Lu3/p0/j/t;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->bitCount(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x6

    .line 40
    invoke-virtual {v0, v1, v4, v3, v1}, Lu3/p0/j/p;->d(IIII)V

    const/16 v4, 0xa

    move v7, v1

    :goto_3
    if-ge v7, v4, :cond_8

    shl-int v8, v6, v7

    .line 41
    iget v9, v2, Lu3/p0/j/t;->a:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_4

    move v8, v6

    goto :goto_4

    :cond_4
    move v8, v1

    :goto_4
    if-nez v8, :cond_5

    goto :goto_6

    :cond_5
    if-eq v7, v3, :cond_7

    const/4 v8, 0x7

    if-eq v7, v8, :cond_6

    move v8, v7

    goto :goto_5

    :cond_6
    move v8, v3

    goto :goto_5

    :cond_7
    const/4 v8, 0x3

    .line 42
    :goto_5
    iget-object v9, v0, Lu3/p0/j/p;->e:Lv3/g;

    invoke-interface {v9, v8}, Lv3/g;->H1(I)Lv3/g;

    .line 43
    iget-object v8, v0, Lu3/p0/j/p;->e:Lv3/g;

    .line 44
    iget-object v9, v2, Lu3/p0/j/t;->b:[I

    aget v9, v9, v7

    .line 45
    invoke-interface {v8, v9}, Lv3/g;->B(I)Lv3/g;

    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 46
    :cond_8
    iget-object v2, v0, Lu3/p0/j/p;->e:Lv3/g;

    invoke-interface {v2}, Lv3/g;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 47
    monitor-exit v0

    .line 48
    iget-object v0, p1, Lu3/p0/j/f;->s:Lu3/p0/j/t;

    invoke-virtual {v0}, Lu3/p0/j/t;->a()I

    move-result v0

    const v2, 0xffff

    if-eq v0, v2, :cond_9

    .line 49
    iget-object v3, p1, Lu3/p0/j/f;->z:Lu3/p0/j/p;

    sub-int/2addr v0, v2

    int-to-long v6, v0

    invoke-virtual {v3, v1, v6, v7}, Lu3/p0/j/p;->c(IJ)V

    .line 50
    :cond_9
    invoke-virtual {v5}, Lu3/p0/f/d;->f()Lu3/p0/f/c;

    move-result-object v0

    iget-object v5, p1, Lu3/p0/j/f;->d:Ljava/lang/String;

    iget-object v2, p1, Lu3/p0/j/f;->A:Lu3/p0/j/f$d;

    const-wide/16 v7, 0x0

    const/4 v6, 0x1

    .line 51
    new-instance p1, Lu3/p0/f/b;

    move-object v1, p1

    move-object v3, v5

    move v4, v6

    invoke-direct/range {v1 .. v6}, Lu3/p0/f/b;-><init>(Ls1/z/b/a;Ljava/lang/String;ZLjava/lang/String;Z)V

    invoke-virtual {v0, p1, v7, v8}, Lu3/p0/f/c;->c(Lu3/p0/f/a;J)V

    return-void

    .line 52
    :cond_a
    :try_start_3
    new-instance p1, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1

    .line 53
    :cond_b
    :try_start_4
    new-instance p1, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit v0

    throw p1

    .line 54
    :cond_c
    invoke-static {}, Ls1/z/c/l;->k()V

    throw v1

    .line 55
    :cond_d
    invoke-static {}, Ls1/z/c/l;->k()V

    throw v1

    .line 56
    :cond_e
    invoke-static {}, Ls1/z/c/l;->k()V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "Connection{"

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lu3/p0/g/i;->q:Lu3/n0;

    .line 2
    iget-object v1, v1, Lu3/n0;->a:Lu3/a;

    .line 3
    iget-object v1, v1, Lu3/a;->a:Lu3/a0;

    .line 4
    iget-object v1, v1, Lu3/a0;->e:Ljava/lang/String;

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lu3/p0/g/i;->q:Lu3/n0;

    .line 6
    iget-object v1, v1, Lu3/n0;->a:Lu3/a;

    .line 7
    iget-object v1, v1, Lu3/a;->a:Lu3/a0;

    .line 8
    iget v1, v1, Lu3/a0;->f:I

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, " proxy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    iget-object v1, p0, Lu3/p0/g/i;->q:Lu3/n0;

    .line 11
    iget-object v1, v1, Lu3/n0;->b:Ljava/net/Proxy;

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " hostAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    iget-object v1, p0, Lu3/p0/g/i;->q:Lu3/n0;

    .line 14
    iget-object v1, v1, Lu3/n0;->c:Ljava/net/InetSocketAddress;

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " cipherSuite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-object v1, p0, Lu3/p0/g/i;->d:Lu3/y;

    if-eqz v1, :cond_0

    .line 17
    iget-object v1, v1, Lu3/y;->c:Lu3/k;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "none"

    .line 18
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    iget-object v1, p0, Lu3/p0/g/i;->e:Lu3/f0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
