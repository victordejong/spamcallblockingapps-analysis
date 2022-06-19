.class public Le/p/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/p/a/d$a;
    }
.end annotation


# instance fields
.field public final a:Le/p/a/q;

.field public b:Z

.field public c:Le/p/a/s;

.field public d:Le/p/a/y/k/g;


# direct methods
.method public constructor <init>(Le/p/a/q;Le/p/a/s;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Le/p/a/q;

    invoke-direct {v0, p1}, Le/p/a/q;-><init>(Le/p/a/q;)V

    .line 3
    iget-object v1, v0, Le/p/a/q;->h:Ljava/net/ProxySelector;

    if-nez v1, :cond_0

    .line 4
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v1

    iput-object v1, v0, Le/p/a/q;->h:Ljava/net/ProxySelector;

    .line 5
    :cond_0
    iget-object v1, v0, Le/p/a/q;->i:Ljava/net/CookieHandler;

    if-nez v1, :cond_1

    .line 6
    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object v1

    iput-object v1, v0, Le/p/a/q;->i:Ljava/net/CookieHandler;

    .line 7
    :cond_1
    iget-object v1, v0, Le/p/a/q;->k:Ljavax/net/SocketFactory;

    if-nez v1, :cond_2

    .line 8
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v1

    iput-object v1, v0, Le/p/a/q;->k:Ljavax/net/SocketFactory;

    .line 9
    :cond_2
    iget-object v1, v0, Le/p/a/q;->l:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v1, :cond_4

    .line 10
    monitor-enter p1

    .line 11
    :try_start_0
    sget-object v1, Le/p/a/q;->z:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_3

    :try_start_1
    const-string v1, "TLS"

    .line 12
    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    const/4 v2, 0x0

    .line 13
    invoke-virtual {v1, v2, v2, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 14
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    sput-object v1, Le/p/a/q;->z:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 15
    :catch_0
    :try_start_2
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2}, Ljava/lang/AssertionError;-><init>()V

    throw p2

    .line 16
    :cond_3
    :goto_0
    sget-object v1, Le/p/a/q;->z:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p1

    .line 17
    iput-object v1, v0, Le/p/a/q;->l:Ljavax/net/ssl/SSLSocketFactory;

    goto :goto_1

    :catchall_0
    move-exception p2

    .line 18
    monitor-exit p1

    throw p2

    .line 19
    :cond_4
    :goto_1
    iget-object p1, v0, Le/p/a/q;->m:Ljavax/net/ssl/HostnameVerifier;

    if-nez p1, :cond_5

    .line 20
    sget-object p1, Le/p/a/y/m/d;->a:Le/p/a/y/m/d;

    iput-object p1, v0, Le/p/a/q;->m:Ljavax/net/ssl/HostnameVerifier;

    .line 21
    :cond_5
    iget-object p1, v0, Le/p/a/q;->n:Le/p/a/e;

    if-nez p1, :cond_6

    .line 22
    sget-object p1, Le/p/a/e;->b:Le/p/a/e;

    iput-object p1, v0, Le/p/a/q;->n:Le/p/a/e;

    .line 23
    :cond_6
    iget-object p1, v0, Le/p/a/q;->o:Le/p/a/b;

    if-nez p1, :cond_7

    .line 24
    sget-object p1, Le/p/a/y/k/a;->a:Le/p/a/b;

    iput-object p1, v0, Le/p/a/q;->o:Le/p/a/b;

    .line 25
    :cond_7
    iget-object p1, v0, Le/p/a/q;->p:Le/p/a/h;

    if-nez p1, :cond_8

    .line 26
    sget-object p1, Le/p/a/h;->g:Le/p/a/h;

    .line 27
    iput-object p1, v0, Le/p/a/q;->p:Le/p/a/h;

    .line 28
    :cond_8
    iget-object p1, v0, Le/p/a/q;->d:Ljava/util/List;

    if-nez p1, :cond_9

    .line 29
    sget-object p1, Le/p/a/q;->x:Ljava/util/List;

    iput-object p1, v0, Le/p/a/q;->d:Ljava/util/List;

    .line 30
    :cond_9
    iget-object p1, v0, Le/p/a/q;->e:Ljava/util/List;

    if-nez p1, :cond_a

    .line 31
    sget-object p1, Le/p/a/q;->y:Ljava/util/List;

    iput-object p1, v0, Le/p/a/q;->e:Ljava/util/List;

    .line 32
    :cond_a
    iget-object p1, v0, Le/p/a/q;->q:Le/p/a/k;

    if-nez p1, :cond_b

    .line 33
    sget-object p1, Le/p/a/k;->a:Le/p/a/k;

    iput-object p1, v0, Le/p/a/q;->q:Le/p/a/k;

    .line 34
    :cond_b
    iput-object v0, p0, Le/p/a/d;->a:Le/p/a/q;

    .line 35
    iput-object p2, p0, Le/p/a/d;->c:Le/p/a/s;

    return-void
.end method


# virtual methods
.method public a()Le/p/a/u;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Le/p/a/d;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Le/p/a/d;->b:Z

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 5
    :try_start_1
    iget-object v0, p0, Le/p/a/d;->a:Le/p/a/q;

    .line 6
    iget-object v0, v0, Le/p/a/q;->b:Le/p/a/j;

    .line 7
    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 8
    :try_start_2
    iget-object v1, v0, Le/p/a/j;->a:Ljava/util/Deque;

    invoke-interface {v1, p0}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 9
    :try_start_3
    monitor-exit v0

    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, v0}, Le/p/a/d;->b(Z)Le/p/a/u;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 11
    iget-object v1, p0, Le/p/a/d;->a:Le/p/a/q;

    .line 12
    iget-object v1, v1, Le/p/a/q;->b:Le/p/a/j;

    .line 13
    invoke-virtual {v1, p0}, Le/p/a/j;->a(Le/p/a/d;)V

    return-object v0

    :catchall_0
    move-exception v1

    .line 14
    :try_start_4
    monitor-exit v0

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    .line 15
    iget-object v1, p0, Le/p/a/d;->a:Le/p/a/q;

    .line 16
    iget-object v1, v1, Le/p/a/q;->b:Le/p/a/j;

    .line 17
    invoke-virtual {v1, p0}, Le/p/a/j;->a(Le/p/a/d;)V

    throw v0

    .line 18
    :cond_0
    :try_start_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already Executed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_2
    move-exception v0

    .line 19
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0
.end method

.method public final b(Z)Le/p/a/u;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v1, p0

    move/from16 v11, p1

    .line 1
    iget-object v4, v1, Le/p/a/d;->c:Le/p/a/s;

    .line 2
    iget-object v0, v1, Le/p/a/d;->a:Le/p/a/q;

    .line 3
    iget-object v0, v0, Le/p/a/q;->f:Ljava/util/List;

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-lez v0, :cond_1

    .line 5
    new-instance v0, Le/p/a/d$a;

    invoke-direct {v0, p0, v12, v4, v11}, Le/p/a/d$a;-><init>(Le/p/a/d;ILe/p/a/s;Z)V

    .line 6
    iget-object v2, v1, Le/p/a/d;->a:Le/p/a/q;

    .line 7
    iget-object v2, v2, Le/p/a/q;->f:Ljava/util/List;

    .line 8
    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/p/a/o;

    .line 9
    invoke-interface {v2, v0}, Le/p/a/o;->a(Le/p/a/o$a;)Le/p/a/u;

    move-result-object v0

    if-eqz v0, :cond_0

    goto/16 :goto_a

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "application interceptor "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " returned null"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11
    :cond_1
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    new-instance v0, Le/p/a/y/k/g;

    iget-object v3, v1, Le/p/a/d;->a:Le/p/a/q;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, v0

    move/from16 v7, p1

    invoke-direct/range {v2 .. v10}, Le/p/a/y/k/g;-><init>(Le/p/a/q;Le/p/a/s;ZZZLe/p/a/y/k/q;Le/p/a/y/k/m;Le/p/a/u;)V

    iput-object v0, v1, Le/p/a/d;->d:Le/p/a/y/k/g;

    move v2, v13

    :goto_0
    const/4 v3, 0x0

    .line 13
    :try_start_0
    iget-object v0, v1, Le/p/a/d;->d:Le/p/a/y/k/g;

    invoke-virtual {v0}, Le/p/a/y/k/g;->j()V

    .line 14
    iget-object v0, v1, Le/p/a/d;->d:Le/p/a/y/k/g;

    invoke-virtual {v0}, Le/p/a/y/k/g;->e()V
    :try_end_0
    .catch Le/p/a/y/k/n; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    iget-object v0, v1, Le/p/a/d;->d:Le/p/a/y/k/g;

    .line 16
    iget-object v10, v0, Le/p/a/y/k/g;->k:Le/p/a/u;

    if-eqz v10, :cond_16

    .line 17
    iget-object v4, v0, Le/p/a/y/k/g;->b:Le/p/a/y/k/q;

    invoke-virtual {v4}, Le/p/a/y/k/q;->a()Le/p/a/y/l/a;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 18
    iget-object v4, v4, Le/p/a/y/l/a;->a:Le/p/a/w;

    goto :goto_1

    :cond_2
    move-object v4, v3

    :goto_1
    if-eqz v4, :cond_3

    .line 19
    iget-object v4, v4, Le/p/a/w;->b:Ljava/net/Proxy;

    goto :goto_2

    .line 20
    :cond_3
    iget-object v4, v0, Le/p/a/y/k/g;->a:Le/p/a/q;

    .line 21
    iget-object v4, v4, Le/p/a/q;->c:Ljava/net/Proxy;

    .line 22
    :goto_2
    iget-object v5, v0, Le/p/a/y/k/g;->k:Le/p/a/u;

    .line 23
    iget v5, v5, Le/p/a/u;->c:I

    .line 24
    iget-object v6, v0, Le/p/a/y/k/g;->h:Le/p/a/s;

    .line 25
    iget-object v6, v6, Le/p/a/s;->b:Ljava/lang/String;

    const/16 v7, 0x133

    const-string v8, "GET"

    if-eq v5, v7, :cond_7

    const/16 v7, 0x134

    if-eq v5, v7, :cond_7

    const/16 v7, 0x191

    if-eq v5, v7, :cond_6

    const/16 v7, 0x197

    if-eq v5, v7, :cond_4

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_6

    .line 26
    :cond_4
    invoke-virtual {v4}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v5

    sget-object v6, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v5, v6, :cond_5

    goto :goto_3

    .line 27
    :cond_5
    new-instance v0, Ljava/net/ProtocolException;

    const-string v2, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    invoke-direct {v0, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_6
    :goto_3
    iget-object v5, v0, Le/p/a/y/k/g;->a:Le/p/a/q;

    .line 29
    iget-object v5, v5, Le/p/a/q;->o:Le/p/a/b;

    .line 30
    iget-object v0, v0, Le/p/a/y/k/g;->k:Le/p/a/u;

    invoke-static {v5, v0, v4}, Le/p/a/y/k/j;->c(Le/p/a/b;Le/p/a/u;Ljava/net/Proxy;)Le/p/a/s;

    move-result-object v0

    goto/16 :goto_8

    .line 31
    :cond_7
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "HEAD"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_6

    .line 32
    :cond_8
    :pswitch_0
    iget-object v4, v0, Le/p/a/y/k/g;->a:Le/p/a/q;

    .line 33
    iget-boolean v4, v4, Le/p/a/q;->s:Z

    if-nez v4, :cond_9

    goto :goto_6

    .line 34
    :cond_9
    iget-object v4, v0, Le/p/a/y/k/g;->k:Le/p/a/u;

    .line 35
    iget-object v4, v4, Le/p/a/u;->f:Le/p/a/m;

    const-string v5, "Location"

    invoke-virtual {v4, v5}, Le/p/a/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_a

    goto :goto_4

    :cond_a
    move-object v4, v3

    :goto_4
    if-nez v4, :cond_b

    goto :goto_6

    .line 36
    :cond_b
    iget-object v5, v0, Le/p/a/y/k/g;->h:Le/p/a/s;

    .line 37
    iget-object v5, v5, Le/p/a/s;->a:Le/p/a/n;

    .line 38
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    new-instance v7, Le/p/a/n$b;

    invoke-direct {v7}, Le/p/a/n$b;-><init>()V

    .line 40
    invoke-virtual {v7, v5, v4}, Le/p/a/n$b;->e(Le/p/a/n;Ljava/lang/String;)Le/p/a/n$b$a;

    move-result-object v4

    .line 41
    sget-object v5, Le/p/a/n$b$a;->a:Le/p/a/n$b$a;

    if-ne v4, v5, :cond_c

    invoke-virtual {v7}, Le/p/a/n$b;->a()Le/p/a/n;

    move-result-object v4

    goto :goto_5

    :cond_c
    move-object v4, v3

    :goto_5
    if-nez v4, :cond_d

    goto :goto_6

    .line 42
    :cond_d
    iget-object v5, v4, Le/p/a/n;->a:Ljava/lang/String;

    .line 43
    iget-object v7, v0, Le/p/a/y/k/g;->h:Le/p/a/s;

    .line 44
    iget-object v7, v7, Le/p/a/s;->a:Le/p/a/n;

    .line 45
    iget-object v7, v7, Le/p/a/n;->a:Ljava/lang/String;

    .line 46
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    .line 47
    iget-object v5, v0, Le/p/a/y/k/g;->a:Le/p/a/q;

    .line 48
    iget-boolean v5, v5, Le/p/a/q;->r:Z

    if-nez v5, :cond_e

    :goto_6
    move-object v4, v3

    goto :goto_9

    .line 49
    :cond_e
    iget-object v5, v0, Le/p/a/y/k/g;->h:Le/p/a/s;

    invoke-virtual {v5}, Le/p/a/s;->c()Le/p/a/s$b;

    move-result-object v5

    .line 50
    invoke-static {v6}, Le/m/d/y/n;->P0(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_10

    const-string v7, "PROPFIND"

    .line 51
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    xor-int/2addr v7, v12

    if-eqz v7, :cond_f

    .line 52
    invoke-virtual {v5, v8, v3}, Le/p/a/s$b;->c(Ljava/lang/String;Le/p/a/t;)Le/p/a/s$b;

    goto :goto_7

    .line 53
    :cond_f
    invoke-virtual {v5, v6, v3}, Le/p/a/s$b;->c(Ljava/lang/String;Le/p/a/t;)Le/p/a/s$b;

    .line 54
    :goto_7
    iget-object v6, v5, Le/p/a/s$b;->c:Le/p/a/m$b;

    const-string v7, "Transfer-Encoding"

    invoke-virtual {v6, v7}, Le/p/a/m$b;->e(Ljava/lang/String;)Le/p/a/m$b;

    .line 55
    iget-object v6, v5, Le/p/a/s$b;->c:Le/p/a/m$b;

    const-string v7, "Content-Length"

    invoke-virtual {v6, v7}, Le/p/a/m$b;->e(Ljava/lang/String;)Le/p/a/m$b;

    .line 56
    iget-object v6, v5, Le/p/a/s$b;->c:Le/p/a/m$b;

    const-string v7, "Content-Type"

    invoke-virtual {v6, v7}, Le/p/a/m$b;->e(Ljava/lang/String;)Le/p/a/m$b;

    .line 57
    :cond_10
    invoke-virtual {v0, v4}, Le/p/a/y/k/g;->i(Le/p/a/n;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 58
    iget-object v0, v5, Le/p/a/s$b;->c:Le/p/a/m$b;

    const-string v6, "Authorization"

    invoke-virtual {v0, v6}, Le/p/a/m$b;->e(Ljava/lang/String;)Le/p/a/m$b;

    .line 59
    :cond_11
    invoke-virtual {v5, v4}, Le/p/a/s$b;->d(Le/p/a/n;)Le/p/a/s$b;

    invoke-virtual {v5}, Le/p/a/s$b;->a()Le/p/a/s;

    move-result-object v0

    :goto_8
    move-object v4, v0

    :goto_9
    if-nez v4, :cond_13

    if-nez v11, :cond_12

    .line 60
    iget-object v0, v1, Le/p/a/d;->d:Le/p/a/y/k/g;

    .line 61
    iget-object v0, v0, Le/p/a/y/k/g;->b:Le/p/a/y/k/q;

    invoke-virtual {v0}, Le/p/a/y/k/q;->g()V

    :cond_12
    move-object v0, v10

    :goto_a
    return-object v0

    .line 62
    :cond_13
    iget-object v0, v1, Le/p/a/d;->d:Le/p/a/y/k/g;

    invoke-virtual {v0}, Le/p/a/y/k/g;->a()Le/p/a/y/k/q;

    move-result-object v0

    add-int/lit8 v14, v2, 0x1

    const/16 v2, 0x14

    if-gt v14, v2, :cond_15

    .line 63
    iget-object v2, v1, Le/p/a/d;->d:Le/p/a/y/k/g;

    .line 64
    iget-object v5, v4, Le/p/a/s;->a:Le/p/a/n;

    .line 65
    invoke-virtual {v2, v5}, Le/p/a/y/k/g;->i(Le/p/a/n;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 66
    invoke-virtual {v0}, Le/p/a/y/k/q;->g()V

    move-object v8, v3

    goto :goto_b

    :cond_14
    move-object v8, v0

    .line 67
    :goto_b
    new-instance v0, Le/p/a/y/k/g;

    iget-object v3, v1, Le/p/a/d;->a:Le/p/a/q;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object v2, v0

    move/from16 v7, p1

    invoke-direct/range {v2 .. v10}, Le/p/a/y/k/g;-><init>(Le/p/a/q;Le/p/a/s;ZZZLe/p/a/y/k/q;Le/p/a/y/k/m;Le/p/a/u;)V

    iput-object v0, v1, Le/p/a/d;->d:Le/p/a/y/k/g;

    move v2, v14

    goto/16 :goto_0

    .line 68
    :cond_15
    invoke-virtual {v0}, Le/p/a/y/k/q;->g()V

    .line 69
    new-instance v0, Ljava/net/ProtocolException;

    const-string v2, "Too many follow-up requests: "

    invoke-static {v2, v14}, Le/d/c/a/a;->i2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :catchall_0
    move-exception v0

    goto :goto_c

    :catch_0
    move-exception v0

    .line 71
    :try_start_1
    iget-object v4, v1, Le/p/a/d;->d:Le/p/a/y/k/g;

    invoke-virtual {v4, v0, v3}, Le/p/a/y/k/g;->h(Ljava/io/IOException;Lv3/z;)Le/p/a/y/k/g;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_17

    .line 72
    :try_start_2
    iput-object v3, v1, Le/p/a/d;->d:Le/p/a/y/k/g;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_0

    .line 73
    :cond_17
    :try_start_3
    throw v0

    :catch_1
    move-exception v0

    .line 74
    iget-object v3, v1, Le/p/a/d;->d:Le/p/a/y/k/g;

    invoke-virtual {v3, v0}, Le/p/a/y/k/g;->g(Le/p/a/y/k/n;)Le/p/a/y/k/g;

    move-result-object v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_18

    .line 75
    :try_start_4
    iput-object v3, v1, Le/p/a/d;->d:Le/p/a/y/k/g;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    move v12, v13

    goto :goto_c

    .line 76
    :cond_18
    :try_start_5
    iget-object v0, v0, Le/p/a/y/k/n;->a:Ljava/io/IOException;

    .line 77
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_c
    if-eqz v12, :cond_19

    .line 78
    iget-object v2, v1, Le/p/a/d;->d:Le/p/a/y/k/g;

    invoke-virtual {v2}, Le/p/a/y/k/g;->a()Le/p/a/y/k/q;

    move-result-object v2

    .line 79
    invoke-virtual {v2}, Le/p/a/y/k/q;->g()V

    .line 80
    :cond_19
    throw v0

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
