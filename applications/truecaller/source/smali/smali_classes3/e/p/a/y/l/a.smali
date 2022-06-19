.class public final Le/p/a/y/l/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static m:Ljavax/net/ssl/SSLSocketFactory;

.field public static n:Le/p/a/y/m/f;


# instance fields
.field public final a:Le/p/a/w;

.field public b:Ljava/net/Socket;

.field public c:Ljava/net/Socket;

.field public d:Le/p/a/l;

.field public e:Le/p/a/r;

.field public volatile f:Le/p/a/y/j/d;

.field public g:I

.field public h:Lv3/h;

.field public i:Lv3/g;

.field public final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/Reference<",
            "Le/p/a/y/k/q;",
            ">;>;"
        }
    .end annotation
.end field

.field public k:Z

.field public l:J


# direct methods
.method public constructor <init>(Le/p/a/w;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Le/p/a/y/l/a;->j:Ljava/util/List;

    const-wide v0, 0x7fffffffffffffffL

    .line 3
    iput-wide v0, p0, Le/p/a/y/l/a;->l:J

    .line 4
    iput-object p1, p0, Le/p/a/y/l/a;->a:Le/p/a/w;

    return-void
.end method

.method public static declared-synchronized b(Ljavax/net/ssl/SSLSocketFactory;)Le/p/a/y/m/f;
    .locals 3

    const-class v0, Le/p/a/y/l/a;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Le/p/a/y/l/a;->m:Ljavax/net/ssl/SSLSocketFactory;

    if-eq p0, v1, :cond_0

    .line 2
    sget-object v1, Le/p/a/y/f;->a:Le/p/a/y/f;

    .line 3
    invoke-virtual {v1, p0}, Le/p/a/y/f;->f(Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v2

    .line 4
    invoke-virtual {v1, v2}, Le/p/a/y/f;->g(Ljavax/net/ssl/X509TrustManager;)Le/p/a/y/m/f;

    move-result-object v1

    sput-object v1, Le/p/a/y/l/a;->n:Le/p/a/y/m/f;

    .line 5
    sput-object p0, Le/p/a/y/l/a;->m:Ljavax/net/ssl/SSLSocketFactory;

    .line 6
    :cond_0
    sget-object p0, Le/p/a/y/l/a;->n:Le/p/a/y/m/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final a(IIILe/p/a/y/a;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v0, p2

    .line 1
    sget-object v2, Le/p/a/r;->c:Le/p/a/r;

    iget-object v3, v1, Le/p/a/y/l/a;->b:Ljava/net/Socket;

    invoke-virtual {v3, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 2
    :try_start_0
    sget-object v3, Le/p/a/y/f;->a:Le/p/a/y/f;

    .line 3
    iget-object v4, v1, Le/p/a/y/l/a;->b:Ljava/net/Socket;

    iget-object v5, v1, Le/p/a/y/l/a;->a:Le/p/a/w;

    .line 4
    iget-object v5, v5, Le/p/a/w;->c:Ljava/net/InetSocketAddress;

    move/from16 v6, p1

    .line 5
    invoke-virtual {v3, v4, v5, v6}, Le/p/a/y/f;->c(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_2

    .line 6
    iget-object v3, v1, Le/p/a/y/l/a;->b:Ljava/net/Socket;

    invoke-static {v3}, Ls1/a/a/a/v0/f/d;->q3(Ljava/net/Socket;)Lv3/b0;

    move-result-object v3

    const-string v4, "$this$buffer"

    .line 7
    invoke-static {v3, v4}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v5, Lv3/v;

    invoke-direct {v5, v3}, Lv3/v;-><init>(Lv3/b0;)V

    .line 9
    iput-object v5, v1, Le/p/a/y/l/a;->h:Lv3/h;

    .line 10
    iget-object v3, v1, Le/p/a/y/l/a;->b:Ljava/net/Socket;

    invoke-static {v3}, Ls1/a/a/a/v0/f/d;->m3(Ljava/net/Socket;)Lv3/z;

    move-result-object v3

    .line 11
    invoke-static {v3, v4}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    new-instance v5, Lv3/u;

    invoke-direct {v5, v3}, Lv3/u;-><init>(Lv3/z;)V

    .line 13
    iput-object v5, v1, Le/p/a/y/l/a;->i:Lv3/g;

    .line 14
    iget-object v3, v1, Le/p/a/y/l/a;->a:Le/p/a/w;

    .line 15
    iget-object v5, v3, Le/p/a/w;->a:Le/p/a/a;

    .line 16
    iget-object v5, v5, Le/p/a/a;->i:Ljavax/net/ssl/SSLSocketFactory;

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v5, :cond_e

    .line 17
    iget-object v3, v3, Le/p/a/w;->b:Ljava/net/Proxy;

    invoke-virtual {v3}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v3

    sget-object v5, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v3, v5, :cond_0

    move v3, v7

    goto :goto_0

    :cond_0
    move v3, v8

    :goto_0
    if-eqz v3, :cond_6

    .line 18
    new-instance v3, Le/p/a/s$b;

    invoke-direct {v3}, Le/p/a/s$b;-><init>()V

    iget-object v5, v1, Le/p/a/y/l/a;->a:Le/p/a/w;

    .line 19
    iget-object v5, v5, Le/p/a/w;->a:Le/p/a/a;

    .line 20
    iget-object v5, v5, Le/p/a/a;->a:Le/p/a/n;

    .line 21
    invoke-virtual {v3, v5}, Le/p/a/s$b;->d(Le/p/a/n;)Le/p/a/s$b;

    iget-object v5, v1, Le/p/a/y/l/a;->a:Le/p/a/w;

    .line 22
    iget-object v5, v5, Le/p/a/w;->a:Le/p/a/a;

    .line 23
    iget-object v5, v5, Le/p/a/a;->a:Le/p/a/n;

    .line 24
    invoke-static {v5}, Le/p/a/y/i;->g(Le/p/a/n;)Ljava/lang/String;

    move-result-object v5

    const-string v9, "Host"

    invoke-virtual {v3, v9, v5}, Le/p/a/s$b;->b(Ljava/lang/String;Ljava/lang/String;)Le/p/a/s$b;

    const-string v5, "Proxy-Connection"

    const-string v9, "Keep-Alive"

    invoke-virtual {v3, v5, v9}, Le/p/a/s$b;->b(Ljava/lang/String;Ljava/lang/String;)Le/p/a/s$b;

    const-string v5, "User-Agent"

    const-string v9, "okhttp/2.7.4"

    invoke-virtual {v3, v5, v9}, Le/p/a/s$b;->b(Ljava/lang/String;Ljava/lang/String;)Le/p/a/s$b;

    invoke-virtual {v3}, Le/p/a/s$b;->a()Le/p/a/s;

    move-result-object v3

    .line 25
    iget-object v5, v3, Le/p/a/s;->a:Le/p/a/n;

    const-string v9, "CONNECT "

    .line 26
    invoke-static {v9}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 27
    iget-object v10, v5, Le/p/a/n;->d:Ljava/lang/String;

    .line 28
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    iget v5, v5, Le/p/a/n;->e:I

    const-string v10, " HTTP/1.1"

    .line 30
    invoke-static {v9, v5, v10}, Le/d/c/a/a;->J2(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 31
    :goto_1
    new-instance v9, Le/p/a/y/k/d;

    iget-object v10, v1, Le/p/a/y/l/a;->h:Lv3/h;

    iget-object v11, v1, Le/p/a/y/l/a;->i:Lv3/g;

    invoke-direct {v9, v6, v10, v11}, Le/p/a/y/k/d;-><init>(Le/p/a/y/k/q;Lv3/h;Lv3/g;)V

    .line 32
    invoke-interface {v10}, Lv3/b0;->i()Lv3/c0;

    move-result-object v10

    int-to-long v11, v0

    sget-object v13, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v10, v11, v12, v13}, Lv3/c0;->g(JLjava/util/concurrent/TimeUnit;)Lv3/c0;

    .line 33
    iget-object v10, v1, Le/p/a/y/l/a;->i:Lv3/g;

    invoke-interface {v10}, Lv3/z;->i()Lv3/c0;

    move-result-object v10

    move/from16 v11, p3

    int-to-long v14, v11

    invoke-virtual {v10, v14, v15, v13}, Lv3/c0;->g(JLjava/util/concurrent/TimeUnit;)Lv3/c0;

    .line 34
    iget-object v10, v3, Le/p/a/s;->c:Le/p/a/m;

    .line 35
    invoke-virtual {v9, v10, v5}, Le/p/a/y/k/d;->l(Le/p/a/m;Ljava/lang/String;)V

    .line 36
    iget-object v10, v9, Le/p/a/y/k/d;->c:Lv3/g;

    invoke-interface {v10}, Lv3/g;->flush()V

    .line 37
    invoke-virtual {v9}, Le/p/a/y/k/d;->k()Le/p/a/u$b;

    move-result-object v10

    .line 38
    iput-object v3, v10, Le/p/a/u$b;->a:Le/p/a/s;

    .line 39
    invoke-virtual {v10}, Le/p/a/u$b;->a()Le/p/a/u;

    move-result-object v3

    .line 40
    sget-object v10, Le/p/a/y/k/j;->a:Ljava/util/Comparator;

    .line 41
    iget-object v10, v3, Le/p/a/u;->f:Le/p/a/m;

    .line 42
    invoke-static {v10}, Le/p/a/y/k/j;->a(Le/p/a/m;)J

    move-result-wide v14

    const-wide/16 v16, -0x1

    cmp-long v10, v14, v16

    if-nez v10, :cond_1

    const-wide/16 v14, 0x0

    .line 43
    :cond_1
    invoke-virtual {v9, v14, v15}, Le/p/a/y/k/d;->i(J)Lv3/b0;

    move-result-object v9

    const v10, 0x7fffffff

    .line 44
    invoke-static {v9, v10, v13}, Le/p/a/y/i;->k(Lv3/b0;ILjava/util/concurrent/TimeUnit;)Z

    .line 45
    check-cast v9, Le/p/a/y/k/d$f;

    invoke-virtual {v9}, Le/p/a/y/k/d$f;->close()V

    .line 46
    iget v9, v3, Le/p/a/u;->c:I

    const/16 v10, 0xc8

    if-eq v9, v10, :cond_4

    const/16 v10, 0x197

    if-ne v9, v10, :cond_3

    .line 47
    iget-object v9, v1, Le/p/a/y/l/a;->a:Le/p/a/w;

    .line 48
    iget-object v10, v9, Le/p/a/w;->a:Le/p/a/a;

    .line 49
    iget-object v10, v10, Le/p/a/a;->d:Le/p/a/b;

    .line 50
    iget-object v9, v9, Le/p/a/w;->b:Ljava/net/Proxy;

    .line 51
    invoke-static {v10, v3, v9}, Le/p/a/y/k/j;->c(Le/p/a/b;Le/p/a/u;Ljava/net/Proxy;)Le/p/a/s;

    move-result-object v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 52
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Failed to authenticate with proxy"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Unexpected response code for CONNECT: "

    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 54
    iget v3, v3, Le/p/a/u;->c:I

    .line 55
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_4
    iget-object v0, v1, Le/p/a/y/l/a;->h:Lv3/h;

    invoke-interface {v0}, Lv3/h;->m()Lv3/f;

    move-result-object v0

    invoke-virtual {v0}, Lv3/f;->N1()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v1, Le/p/a/y/l/a;->i:Lv3/g;

    invoke-interface {v0}, Lv3/g;->m()Lv3/f;

    move-result-object v0

    invoke-virtual {v0}, Lv3/f;->N1()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    .line 57
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v2, "TLS tunnel buffered too many bytes!"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_6
    :goto_2
    iget-object v0, v1, Le/p/a/y/l/a;->a:Le/p/a/w;

    .line 59
    iget-object v0, v0, Le/p/a/w;->a:Le/p/a/a;

    .line 60
    iget-object v3, v0, Le/p/a/a;->i:Ljavax/net/ssl/SSLSocketFactory;

    .line 61
    :try_start_1
    iget-object v5, v1, Le/p/a/y/l/a;->b:Ljava/net/Socket;

    .line 62
    iget-object v9, v0, Le/p/a/a;->a:Le/p/a/n;

    .line 63
    iget-object v10, v9, Le/p/a/n;->d:Ljava/lang/String;

    .line 64
    iget v9, v9, Le/p/a/n;->e:I

    .line 65
    invoke-virtual {v3, v5, v10, v9, v7}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v3

    check-cast v3, Ljavax/net/ssl/SSLSocket;
    :try_end_1
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v5, p4

    .line 66
    :try_start_2
    invoke-virtual {v5, v3}, Le/p/a/y/a;->a(Ljavax/net/ssl/SSLSocket;)Le/p/a/i;

    move-result-object v5

    .line 67
    iget-boolean v9, v5, Le/p/a/i;->b:Z

    if-eqz v9, :cond_7

    .line 68
    sget-object v9, Le/p/a/y/f;->a:Le/p/a/y/f;

    .line 69
    iget-object v10, v0, Le/p/a/a;->a:Le/p/a/n;

    .line 70
    iget-object v10, v10, Le/p/a/n;->d:Ljava/lang/String;

    .line 71
    iget-object v11, v0, Le/p/a/a;->e:Ljava/util/List;

    .line 72
    invoke-virtual {v9, v3, v10, v11}, Le/p/a/y/f;->b(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    .line 73
    :cond_7
    invoke-virtual {v3}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 74
    invoke-virtual {v3}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v9

    invoke-static {v9}, Le/p/a/l;->a(Ljavax/net/ssl/SSLSession;)Le/p/a/l;

    move-result-object v9

    .line 75
    iget-object v10, v0, Le/p/a/a;->j:Ljavax/net/ssl/HostnameVerifier;

    .line 76
    iget-object v11, v0, Le/p/a/a;->a:Le/p/a/n;

    .line 77
    iget-object v11, v11, Le/p/a/n;->d:Ljava/lang/String;

    .line 78
    invoke-virtual {v3}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 79
    iget-object v10, v0, Le/p/a/a;->k:Le/p/a/e;

    .line 80
    sget-object v11, Le/p/a/e;->b:Le/p/a/e;

    if-eq v10, v11, :cond_8

    .line 81
    iget-object v10, v0, Le/p/a/a;->i:Ljavax/net/ssl/SSLSocketFactory;

    .line 82
    invoke-static {v10}, Le/p/a/y/l/a;->b(Ljavax/net/ssl/SSLSocketFactory;)Le/p/a/y/m/f;

    move-result-object v10

    .line 83
    new-instance v11, Le/p/a/y/m/b;

    invoke-direct {v11, v10}, Le/p/a/y/m/b;-><init>(Le/p/a/y/m/f;)V

    .line 84
    iget-object v10, v9, Le/p/a/l;->b:Ljava/util/List;

    .line 85
    invoke-virtual {v11, v10}, Le/p/a/y/m/b;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    .line 86
    iget-object v11, v0, Le/p/a/a;->k:Le/p/a/e;

    .line 87
    iget-object v0, v0, Le/p/a/a;->a:Le/p/a/n;

    .line 88
    iget-object v0, v0, Le/p/a/n;->d:Ljava/lang/String;

    .line 89
    invoke-virtual {v11, v0, v10}, Le/p/a/e;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 90
    :cond_8
    iget-boolean v0, v5, Le/p/a/i;->b:Z

    if-eqz v0, :cond_9

    .line 91
    sget-object v0, Le/p/a/y/f;->a:Le/p/a/y/f;

    .line 92
    invoke-virtual {v0, v3}, Le/p/a/y/f;->d(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_9
    move-object v0, v6

    .line 93
    :goto_3
    iput-object v3, v1, Le/p/a/y/l/a;->c:Ljava/net/Socket;

    .line 94
    invoke-static {v3}, Ls1/a/a/a/v0/f/d;->q3(Ljava/net/Socket;)Lv3/b0;

    move-result-object v5

    .line 95
    invoke-static {v5, v4}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    new-instance v10, Lv3/v;

    invoke-direct {v10, v5}, Lv3/v;-><init>(Lv3/b0;)V

    .line 97
    iput-object v10, v1, Le/p/a/y/l/a;->h:Lv3/h;

    .line 98
    iget-object v5, v1, Le/p/a/y/l/a;->c:Ljava/net/Socket;

    invoke-static {v5}, Ls1/a/a/a/v0/f/d;->m3(Ljava/net/Socket;)Lv3/z;

    move-result-object v5

    .line 99
    invoke-static {v5, v4}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    new-instance v4, Lv3/u;

    invoke-direct {v4, v5}, Lv3/u;-><init>(Lv3/z;)V

    .line 101
    iput-object v4, v1, Le/p/a/y/l/a;->i:Lv3/g;

    .line 102
    iput-object v9, v1, Le/p/a/y/l/a;->d:Le/p/a/l;

    if-eqz v0, :cond_a

    .line 103
    invoke-static {v0}, Le/p/a/r;->a(Ljava/lang/String;)Le/p/a/r;

    move-result-object v2

    :cond_a
    iput-object v2, v1, Le/p/a/y/l/a;->e:Le/p/a/r;
    :try_end_2
    .catch Ljava/lang/AssertionError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 104
    sget-object v0, Le/p/a/y/f;->a:Le/p/a/y/f;

    .line 105
    invoke-virtual {v0, v3}, Le/p/a/y/f;->a(Ljavax/net/ssl/SSLSocket;)V

    goto/16 :goto_7

    .line 106
    :cond_b
    :try_start_3
    iget-object v2, v9, Le/p/a/l;->b:Ljava/util/List;

    .line 107
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 108
    new-instance v4, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Hostname "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    iget-object v0, v0, Le/p/a/a;->a:Le/p/a/n;

    .line 110
    iget-object v0, v0, Le/p/a/n;->d:Ljava/lang/String;

    .line 111
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not verified:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n    certificate: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Le/p/a/e;->b(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n    DN: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n    subjectAltNames: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Le/p/a/y/m/d;->a(Ljava/security/cert/X509Certificate;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_3
    .catch Ljava/lang/AssertionError; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_6

    :catch_0
    move-exception v0

    move-object v6, v3

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    .line 112
    :goto_4
    :try_start_4
    invoke-static {v0}, Le/p/a/y/i;->j(Ljava/lang/AssertionError;)Z

    move-result v2

    if-eqz v2, :cond_c

    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 113
    :cond_c
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_5
    move-object v3, v6

    :goto_6
    if-eqz v3, :cond_d

    .line 114
    sget-object v2, Le/p/a/y/f;->a:Le/p/a/y/f;

    .line 115
    invoke-virtual {v2, v3}, Le/p/a/y/f;->a(Ljavax/net/ssl/SSLSocket;)V

    .line 116
    :cond_d
    invoke-static {v3}, Le/p/a/y/i;->d(Ljava/net/Socket;)V

    throw v0

    .line 117
    :cond_e
    iput-object v2, v1, Le/p/a/y/l/a;->e:Le/p/a/r;

    .line 118
    iget-object v0, v1, Le/p/a/y/l/a;->b:Ljava/net/Socket;

    iput-object v0, v1, Le/p/a/y/l/a;->c:Ljava/net/Socket;

    .line 119
    :goto_7
    iget-object v0, v1, Le/p/a/y/l/a;->e:Le/p/a/r;

    sget-object v2, Le/p/a/r;->d:Le/p/a/r;

    if-eq v0, v2, :cond_f

    sget-object v2, Le/p/a/r;->e:Le/p/a/r;

    if-ne v0, v2, :cond_11

    .line 120
    :cond_f
    iget-object v0, v1, Le/p/a/y/l/a;->c:Ljava/net/Socket;

    invoke-virtual {v0, v8}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 121
    new-instance v0, Le/p/a/y/j/d$c;

    invoke-direct {v0, v7}, Le/p/a/y/j/d$c;-><init>(Z)V

    iget-object v2, v1, Le/p/a/y/l/a;->c:Ljava/net/Socket;

    iget-object v3, v1, Le/p/a/y/l/a;->a:Le/p/a/w;

    .line 122
    iget-object v3, v3, Le/p/a/w;->a:Le/p/a/a;

    .line 123
    iget-object v3, v3, Le/p/a/a;->a:Le/p/a/n;

    .line 124
    iget-object v3, v3, Le/p/a/n;->d:Ljava/lang/String;

    .line 125
    iget-object v4, v1, Le/p/a/y/l/a;->h:Lv3/h;

    iget-object v5, v1, Le/p/a/y/l/a;->i:Lv3/g;

    .line 126
    iput-object v2, v0, Le/p/a/y/j/d$c;->a:Ljava/net/Socket;

    .line 127
    iput-object v3, v0, Le/p/a/y/j/d$c;->b:Ljava/lang/String;

    .line 128
    iput-object v4, v0, Le/p/a/y/j/d$c;->c:Lv3/h;

    .line 129
    iput-object v5, v0, Le/p/a/y/j/d$c;->d:Lv3/g;

    .line 130
    iget-object v2, v1, Le/p/a/y/l/a;->e:Le/p/a/r;

    .line 131
    iput-object v2, v0, Le/p/a/y/j/d$c;->e:Le/p/a/r;

    .line 132
    new-instance v2, Le/p/a/y/j/d;

    invoke-direct {v2, v0, v6}, Le/p/a/y/j/d;-><init>(Le/p/a/y/j/d$c;Le/p/a/y/j/d$a;)V

    .line 133
    iget-object v0, v2, Le/p/a/y/j/d;->r:Le/p/a/y/j/c;

    invoke-interface {v0}, Le/p/a/y/j/c;->g()V

    .line 134
    iget-object v0, v2, Le/p/a/y/j/d;->r:Le/p/a/y/j/c;

    iget-object v3, v2, Le/p/a/y/j/d;->m:Le/p/a/y/j/t;

    invoke-interface {v0, v3}, Le/p/a/y/j/c;->M0(Le/p/a/y/j/t;)V

    .line 135
    iget-object v0, v2, Le/p/a/y/j/d;->m:Le/p/a/y/j/t;

    const/high16 v3, 0x10000

    invoke-virtual {v0, v3}, Le/p/a/y/j/t;->b(I)I

    move-result v0

    if-eq v0, v3, :cond_10

    .line 136
    iget-object v4, v2, Le/p/a/y/j/d;->r:Le/p/a/y/j/c;

    sub-int/2addr v0, v3

    int-to-long v5, v0

    invoke-interface {v4, v8, v5, v6}, Le/p/a/y/j/c;->c(IJ)V

    .line 137
    :cond_10
    iput-object v2, v1, Le/p/a/y/l/a;->f:Le/p/a/y/j/d;

    :cond_11
    return-void

    .line 138
    :catch_2
    new-instance v0, Ljava/net/ConnectException;

    const-string v2, "Failed to connect to "

    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Le/p/a/y/l/a;->a:Le/p/a/w;

    .line 139
    iget-object v3, v3, Le/p/a/w;->c:Ljava/net/InetSocketAddress;

    .line 140
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "Connection{"

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/p/a/y/l/a;->a:Le/p/a/w;

    .line 2
    iget-object v1, v1, Le/p/a/w;->a:Le/p/a/a;

    .line 3
    iget-object v1, v1, Le/p/a/a;->a:Le/p/a/n;

    .line 4
    iget-object v1, v1, Le/p/a/n;->d:Ljava/lang/String;

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/p/a/y/l/a;->a:Le/p/a/w;

    .line 6
    iget-object v1, v1, Le/p/a/w;->a:Le/p/a/a;

    .line 7
    iget-object v1, v1, Le/p/a/a;->a:Le/p/a/n;

    .line 8
    iget v1, v1, Le/p/a/n;->e:I

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", proxy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/p/a/y/l/a;->a:Le/p/a/w;

    .line 10
    iget-object v1, v1, Le/p/a/w;->b:Ljava/net/Proxy;

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " hostAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/p/a/y/l/a;->a:Le/p/a/w;

    .line 12
    iget-object v1, v1, Le/p/a/w;->c:Ljava/net/InetSocketAddress;

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " cipherSuite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/p/a/y/l/a;->d:Le/p/a/l;

    if-eqz v1, :cond_0

    .line 14
    iget-object v1, v1, Le/p/a/l;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v1, "none"

    .line 15
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/p/a/y/l/a;->e:Le/p/a/r;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
