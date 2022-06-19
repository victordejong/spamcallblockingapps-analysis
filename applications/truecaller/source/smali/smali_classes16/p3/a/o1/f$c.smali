.class public Lp3/a/o1/f$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp3/a/o1/f;->d(Lp3/a/n1/t1$a;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/concurrent/CountDownLatch;

.field public final synthetic b:Lp3/a/o1/a;

.field public final synthetic c:Lp3/a/o1/o/m/i;

.field public final synthetic d:Lp3/a/o1/f;


# direct methods
.method public constructor <init>(Lp3/a/o1/f;Ljava/util/concurrent/CountDownLatch;Lp3/a/o1/a;Lp3/a/o1/o/m/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp3/a/o1/f$c;->d:Lp3/a/o1/f;

    iput-object p2, p0, Lp3/a/o1/f$c;->a:Ljava/util/concurrent/CountDownLatch;

    iput-object p3, p0, Lp3/a/o1/f$c;->b:Lp3/a/o1/a;

    iput-object p4, p0, Lp3/a/o1/f$c;->c:Lp3/a/o1/o/m/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    :try_start_0
    iget-object v0, p0, Lp3/a/o1/f$c;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 3
    :goto_0
    new-instance v0, Lp3/a/o1/f$c$a;

    invoke-direct {v0, p0}, Lp3/a/o1/f$c$a;-><init>(Lp3/a/o1/f$c;)V

    const-string v1, "$this$buffer"

    .line 4
    invoke-static {v0, v1}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v1, Lv3/v;

    invoke-direct {v1, v0}, Lv3/v;-><init>(Lv3/b0;)V

    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 6
    :try_start_1
    iget-object v3, p0, Lp3/a/o1/f$c;->d:Lp3/a/o1/f;

    iget-object v4, v3, Lp3/a/o1/f;->P:Lp3/a/z;

    if-nez v4, :cond_0

    .line 7
    iget-object v4, v3, Lp3/a/o1/f;->y:Ljavax/net/SocketFactory;

    .line 8
    iget-object v3, v3, Lp3/a/o1/f;->a:Ljava/net/InetSocketAddress;

    .line 9
    invoke-virtual {v3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    iget-object v5, p0, Lp3/a/o1/f$c;->d:Lp3/a/o1/f;

    .line 10
    iget-object v5, v5, Lp3/a/o1/f;->a:Ljava/net/InetSocketAddress;

    .line 11
    invoke-virtual {v5}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Ljavax/net/SocketFactory;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v3

    :goto_1
    move-object v6, v3

    goto :goto_2

    .line 12
    :cond_0
    iget-object v5, v4, Lp3/a/z;->a:Ljava/net/SocketAddress;

    .line 13
    instance-of v6, v5, Ljava/net/InetSocketAddress;

    if-eqz v6, :cond_4

    .line 14
    iget-object v6, v4, Lp3/a/z;->b:Ljava/net/InetSocketAddress;

    .line 15
    check-cast v5, Ljava/net/InetSocketAddress;

    .line 16
    iget-object v7, v4, Lp3/a/z;->c:Ljava/lang/String;

    .line 17
    iget-object v4, v4, Lp3/a/z;->d:Ljava/lang/String;

    .line 18
    invoke-static {v3, v6, v5, v7, v4}, Lp3/a/o1/f;->h(Lp3/a/o1/f;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/lang/String;)Ljava/net/Socket;

    move-result-object v3

    goto :goto_1

    .line 19
    :goto_2
    iget-object v3, p0, Lp3/a/o1/f$c;->d:Lp3/a/o1/f;

    .line 20
    iget-object v4, v3, Lp3/a/o1/f;->z:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v4, :cond_1

    .line 21
    iget-object v5, v3, Lp3/a/o1/f;->A:Ljavax/net/ssl/HostnameVerifier;

    .line 22
    invoke-virtual {v3}, Lp3/a/o1/f;->m()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lp3/a/o1/f$c;->d:Lp3/a/o1/f;

    invoke-virtual {v0}, Lp3/a/o1/f;->n()I

    move-result v8

    iget-object v0, p0, Lp3/a/o1/f$c;->d:Lp3/a/o1/f;

    .line 23
    iget-object v9, v0, Lp3/a/o1/f;->D:Lp3/a/o1/o/b;

    .line 24
    invoke-static/range {v4 .. v9}, Lp3/a/o1/j;->a(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Ljava/net/Socket;Ljava/lang/String;ILp3/a/o1/o/b;)Ljavax/net/ssl/SSLSocket;

    move-result-object v6

    .line 25
    invoke-virtual {v6}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    .line 26
    :cond_1
    invoke-virtual {v6, v2}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 27
    invoke-static {v6}, Ls1/a/a/a/v0/f/d;->q3(Ljava/net/Socket;)Lv3/b0;

    move-result-object v3

    const-string v4, "$this$buffer"

    .line 28
    invoke-static {v3, v4}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    new-instance v4, Lv3/v;

    invoke-direct {v4, v3}, Lv3/v;-><init>(Lv3/b0;)V
    :try_end_1
    .catch Lp3/a/h1; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 30
    :try_start_2
    iget-object v1, p0, Lp3/a/o1/f$c;->b:Lp3/a/o1/a;

    invoke-static {v6}, Ls1/a/a/a/v0/f/d;->m3(Ljava/net/Socket;)Lv3/z;

    move-result-object v3

    invoke-virtual {v1, v3, v6}, Lp3/a/o1/a;->b(Lv3/z;Ljava/net/Socket;)V

    .line 31
    iget-object v1, p0, Lp3/a/o1/f$c;->d:Lp3/a/o1/f;

    .line 32
    iget-object v3, v1, Lp3/a/o1/f;->s:Lp3/a/a;

    .line 33
    invoke-virtual {v3}, Lp3/a/a;->a()Lp3/a/a$b;

    move-result-object v3

    sget-object v5, Lp3/a/y;->a:Lp3/a/a$c;

    .line 34
    invoke-virtual {v6}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Lp3/a/a$b;->c(Lp3/a/a$c;Ljava/lang/Object;)Lp3/a/a$b;

    sget-object v5, Lp3/a/y;->b:Lp3/a/a$c;

    .line 35
    invoke-virtual {v6}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Lp3/a/a$b;->c(Lp3/a/a$c;Ljava/lang/Object;)Lp3/a/a$b;

    sget-object v5, Lp3/a/y;->c:Lp3/a/a$c;

    .line 36
    invoke-virtual {v3, v5, v0}, Lp3/a/a$b;->c(Lp3/a/a$c;Ljava/lang/Object;)Lp3/a/a$b;

    sget-object v5, Lp3/a/n1/q0;->a:Lp3/a/a$c;

    if-nez v0, :cond_2

    .line 37
    sget-object v7, Lp3/a/d1;->a:Lp3/a/d1;

    goto :goto_3

    :cond_2
    sget-object v7, Lp3/a/d1;->c:Lp3/a/d1;

    .line 38
    :goto_3
    invoke-virtual {v3, v5, v7}, Lp3/a/a$b;->c(Lp3/a/a$c;Ljava/lang/Object;)Lp3/a/a$b;

    .line 39
    invoke-virtual {v3}, Lp3/a/a$b;->a()Lp3/a/a;

    move-result-object v3

    .line 40
    iput-object v3, v1, Lp3/a/o1/f;->s:Lp3/a/a;
    :try_end_2
    .catch Lp3/a/h1; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 41
    iget-object v1, p0, Lp3/a/o1/f$c;->d:Lp3/a/o1/f;

    new-instance v3, Lp3/a/o1/f$e;

    iget-object v5, p0, Lp3/a/o1/f$c;->c:Lp3/a/o1/o/m/i;

    check-cast v5, Lp3/a/o1/o/m/f;

    invoke-virtual {v5, v4, v2}, Lp3/a/o1/o/m/f;->e(Lv3/h;Z)Lp3/a/o1/o/m/b;

    move-result-object v2

    invoke-direct {v3, v1, v2}, Lp3/a/o1/f$e;-><init>(Lp3/a/o1/f;Lp3/a/o1/o/m/b;)V

    .line 42
    iput-object v3, v1, Lp3/a/o1/f;->r:Lp3/a/o1/f$e;

    .line 43
    iget-object v1, p0, Lp3/a/o1/f$c;->d:Lp3/a/o1/f;

    .line 44
    iget-object v1, v1, Lp3/a/o1/f;->j:Ljava/lang/Object;

    .line 45
    monitor-enter v1

    .line 46
    :try_start_3
    iget-object v2, p0, Lp3/a/o1/f$c;->d:Lp3/a/o1/f;

    const-string v3, "socket"

    invoke-static {v6, v3}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_3

    .line 48
    iget-object v2, p0, Lp3/a/o1/f$c;->d:Lp3/a/o1/f;

    new-instance v3, Lp3/a/a0$b;

    invoke-direct {v3, v0}, Lp3/a/a0$b;-><init>(Ljavax/net/ssl/SSLSession;)V

    .line 49
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    :cond_3
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_8

    :catch_1
    move-exception v0

    move-object v1, v4

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v1, v4

    goto :goto_6

    .line 51
    :cond_4
    :try_start_4
    sget-object v0, Lp3/a/g1;->o:Lp3/a/g1;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported SocketAddress implementation "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lp3/a/o1/f$c;->d:Lp3/a/o1/f;

    iget-object v4, v4, Lp3/a/o1/f;->P:Lp3/a/z;

    .line 52
    iget-object v4, v4, Lp3/a/z;->a:Ljava/net/SocketAddress;

    .line 53
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 54
    invoke-virtual {v0, v3}, Lp3/a/g1;->i(Ljava/lang/String;)Lp3/a/g1;

    move-result-object v0

    .line 55
    new-instance v3, Lp3/a/h1;

    invoke-direct {v3, v0}, Lp3/a/h1;-><init>(Lp3/a/g1;)V

    .line 56
    throw v3
    :try_end_4
    .catch Lp3/a/h1; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    goto :goto_7

    :catch_3
    move-exception v0

    .line 57
    :goto_4
    :try_start_5
    iget-object v3, p0, Lp3/a/o1/f$c;->d:Lp3/a/o1/f;

    invoke-virtual {v3, v0}, Lp3/a/o1/f;->a(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 58
    iget-object v0, p0, Lp3/a/o1/f$c;->d:Lp3/a/o1/f;

    new-instance v3, Lp3/a/o1/f$e;

    iget-object v4, p0, Lp3/a/o1/f$c;->c:Lp3/a/o1/o/m/i;

    check-cast v4, Lp3/a/o1/o/m/f;

    invoke-virtual {v4, v1, v2}, Lp3/a/o1/o/m/f;->e(Lv3/h;Z)Lp3/a/o1/o/m/b;

    move-result-object v1

    invoke-direct {v3, v0, v1}, Lp3/a/o1/f$e;-><init>(Lp3/a/o1/f;Lp3/a/o1/o/m/b;)V

    .line 59
    :goto_5
    iput-object v3, v0, Lp3/a/o1/f;->r:Lp3/a/o1/f$e;

    return-void

    :catch_4
    move-exception v0

    .line 60
    :goto_6
    :try_start_6
    iget-object v3, p0, Lp3/a/o1/f$c;->d:Lp3/a/o1/f;

    const/4 v4, 0x0

    sget-object v5, Lp3/a/o1/o/m/a;->h:Lp3/a/o1/o/m/a;

    .line 61
    iget-object v0, v0, Lp3/a/h1;->a:Lp3/a/g1;

    .line 62
    invoke-virtual {v3, v4, v5, v0}, Lp3/a/o1/f;->v(ILp3/a/o1/o/m/a;Lp3/a/g1;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 63
    iget-object v0, p0, Lp3/a/o1/f$c;->d:Lp3/a/o1/f;

    new-instance v3, Lp3/a/o1/f$e;

    iget-object v4, p0, Lp3/a/o1/f$c;->c:Lp3/a/o1/o/m/i;

    check-cast v4, Lp3/a/o1/o/m/f;

    invoke-virtual {v4, v1, v2}, Lp3/a/o1/o/m/f;->e(Lv3/h;Z)Lp3/a/o1/o/m/b;

    move-result-object v1

    invoke-direct {v3, v0, v1}, Lp3/a/o1/f$e;-><init>(Lp3/a/o1/f;Lp3/a/o1/o/m/b;)V

    goto :goto_5

    :goto_7
    move-object v4, v1

    :goto_8
    iget-object v1, p0, Lp3/a/o1/f$c;->d:Lp3/a/o1/f;

    new-instance v3, Lp3/a/o1/f$e;

    iget-object v5, p0, Lp3/a/o1/f$c;->c:Lp3/a/o1/o/m/i;

    check-cast v5, Lp3/a/o1/o/m/f;

    invoke-virtual {v5, v4, v2}, Lp3/a/o1/o/m/f;->e(Lv3/h;Z)Lp3/a/o1/o/m/b;

    move-result-object v2

    invoke-direct {v3, v1, v2}, Lp3/a/o1/f$e;-><init>(Lp3/a/o1/f;Lp3/a/o1/o/m/b;)V

    .line 64
    iput-object v3, v1, Lp3/a/o1/f;->r:Lp3/a/o1/f$e;

    .line 65
    throw v0
.end method
