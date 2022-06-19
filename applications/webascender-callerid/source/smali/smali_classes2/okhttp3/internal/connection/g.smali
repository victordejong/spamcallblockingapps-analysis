.class public final Lokhttp3/internal/connection/g;
.super Lokhttp3/internal/http2/e$d;
.source "SourceFile"

# interfaces
.implements Lm/k;


# instance fields
.field private b:Ljava/net/Socket;

.field private c:Ljava/net/Socket;

.field private d:Lm/w;

.field private e:Lm/d0;

.field private f:Lokhttp3/internal/http2/e;

.field private g:Ln/h;

.field private h:Ln/g;

.field private i:Z

.field private j:Z

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private final o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/Reference<",
            "Lokhttp3/internal/connection/e;",
            ">;>;"
        }
    .end annotation
.end field

.field private p:J

.field private final q:Lm/i0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lokhttp3/internal/connection/h;Lm/i0;)V
    .locals 1

    const-string v0, "connectionPool"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "route"

    invoke-static {p2, p1}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lokhttp3/internal/http2/e$d;-><init>()V

    iput-object p2, p0, Lokhttp3/internal/connection/g;->q:Lm/i0;

    const/4 p1, 0x1

    .line 2
    iput p1, p0, Lokhttp3/internal/connection/g;->n:I

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/connection/g;->o:Ljava/util/List;

    const-wide p1, 0x7fffffffffffffffL

    .line 4
    iput-wide p1, p0, Lokhttp3/internal/connection/g;->p:J

    return-void
.end method

.method private final B(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lm/i0;",
            ">;)Z"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Ljava/util/Collection;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 2
    :cond_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/i0;

    .line 3
    invoke-virtual {v0}, Lm/i0;->b()Ljava/net/Proxy;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v3

    sget-object v4, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-ne v3, v4, :cond_3

    .line 4
    iget-object v3, p0, Lokhttp3/internal/connection/g;->q:Lm/i0;

    invoke-virtual {v3}, Lm/i0;->b()Ljava/net/Proxy;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v3

    sget-object v4, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lokhttp3/internal/connection/g;->q:Lm/i0;

    invoke-virtual {v3}, Lm/i0;->d()Ljava/net/InetSocketAddress;

    move-result-object v3

    invoke-virtual {v0}, Lm/i0;->d()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-static {v3, v0}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    :goto_1
    return v1
.end method

.method private final F(I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/g;->c:Ljava/net/Socket;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    iget-object v2, p0, Lokhttp3/internal/connection/g;->g:Ln/h;

    if-eqz v2, :cond_1

    .line 3
    iget-object v3, p0, Lokhttp3/internal/connection/g;->h:Ln/g;

    if-eqz v3, :cond_0

    const/4 v4, 0x0

    .line 4
    invoke-virtual {v0, v4}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 5
    new-instance v5, Lokhttp3/internal/http2/e$b;

    const/4 v6, 0x1

    sget-object v7, Lm/k0/e/e;->h:Lm/k0/e/e;

    invoke-direct {v5, v6, v7}, Lokhttp3/internal/http2/e$b;-><init>(ZLm/k0/e/e;)V

    .line 6
    iget-object v6, p0, Lokhttp3/internal/connection/g;->q:Lm/i0;

    invoke-virtual {v6}, Lm/i0;->a()Lm/a;

    move-result-object v6

    invoke-virtual {v6}, Lm/a;->l()Lm/y;

    move-result-object v6

    invoke-virtual {v6}, Lm/y;->i()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v0, v6, v2, v3}, Lokhttp3/internal/http2/e$b;->m(Ljava/net/Socket;Ljava/lang/String;Ln/h;Ln/g;)Lokhttp3/internal/http2/e$b;

    .line 7
    invoke-virtual {v5, p0}, Lokhttp3/internal/http2/e$b;->k(Lokhttp3/internal/http2/e$d;)Lokhttp3/internal/http2/e$b;

    .line 8
    invoke-virtual {v5, p1}, Lokhttp3/internal/http2/e$b;->l(I)Lokhttp3/internal/http2/e$b;

    .line 9
    invoke-virtual {v5}, Lokhttp3/internal/http2/e$b;->a()Lokhttp3/internal/http2/e;

    move-result-object p1

    .line 10
    iput-object p1, p0, Lokhttp3/internal/connection/g;->f:Lokhttp3/internal/http2/e;

    .line 11
    sget-object v0, Lokhttp3/internal/http2/e;->I:Lokhttp3/internal/http2/e$c;

    invoke-virtual {v0}, Lokhttp3/internal/http2/e$c;->a()Lokhttp3/internal/http2/m;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/internal/http2/m;->d()I

    move-result v0

    iput v0, p0, Lokhttp3/internal/connection/g;->n:I

    const/4 v0, 0x3

    .line 12
    invoke-static {p1, v4, v1, v0, v1}, Lokhttp3/internal/http2/e;->s1(Lokhttp3/internal/http2/e;ZLm/k0/e/e;ILjava/lang/Object;)V

    return-void

    .line 13
    :cond_0
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v1

    .line 14
    :cond_1
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v1

    .line 15
    :cond_2
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v1
.end method

.method private final G(Lm/y;)Z
    .locals 4

    .line 1
    sget-boolean v0, Lm/k0/b;->g:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Thread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const-string v2, "Thread.currentThread()"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " MUST hold lock on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Lokhttp3/internal/connection/g;->q:Lm/i0;

    invoke-virtual {v0}, Lm/i0;->a()Lm/a;

    move-result-object v0

    invoke-virtual {v0}, Lm/a;->l()Lm/y;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Lm/y;->o()I

    move-result v1

    invoke-virtual {v0}, Lm/y;->o()I

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 5
    :cond_2
    invoke-virtual {p1}, Lm/y;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lm/y;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    return v1

    .line 6
    :cond_3
    iget-boolean v0, p0, Lokhttp3/internal/connection/g;->j:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lokhttp3/internal/connection/g;->d:Lm/w;

    if-eqz v0, :cond_5

    if-eqz v0, :cond_4

    invoke-direct {p0, p1, v0}, Lokhttp3/internal/connection/g;->f(Lm/y;Lm/w;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    invoke-static {}, Lkotlin/w/c/k;->o()V

    const/4 p1, 0x0

    throw p1

    :cond_5
    :goto_1
    return v3
.end method

.method public static final synthetic d(Lokhttp3/internal/connection/g;)Lm/w;
    .locals 0

    .line 1
    iget-object p0, p0, Lokhttp3/internal/connection/g;->d:Lm/w;

    return-object p0
.end method

.method private final f(Lm/y;Lm/w;)Z
    .locals 3

    .line 1
    invoke-virtual {p2}, Lm/w;->d()Ljava/util/List;

    move-result-object p2

    .line 2
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    sget-object v0, Lm/k0/k/d;->a:Lm/k0/k/d;

    invoke-virtual {p1}, Lm/y;->i()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    check-cast p2, Ljava/security/cert/X509Certificate;

    .line 4
    invoke-virtual {v0, p1, p2}, Lm/k0/k/d;->c(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type java.security.cert.X509Certificate"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private final i(IILm/f;Lm/u;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/g;->q:Lm/i0;

    invoke-virtual {v0}, Lm/i0;->b()Ljava/net/Proxy;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lokhttp3/internal/connection/g;->q:Lm/i0;

    invoke-virtual {v1}, Lm/i0;->a()Lm/a;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v3, Lokhttp3/internal/connection/f;->a:[I

    invoke-virtual {v2}, Ljava/net/Proxy$Type;->ordinal()I

    move-result v2

    aget v2, v3, v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 4
    :goto_0
    new-instance v1, Ljava/net/Socket;

    invoke-direct {v1, v0}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {v1}, Lm/a;->j()Ljavax/net/SocketFactory;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 6
    :goto_1
    iput-object v1, p0, Lokhttp3/internal/connection/g;->b:Ljava/net/Socket;

    .line 7
    iget-object v2, p0, Lokhttp3/internal/connection/g;->q:Lm/i0;

    invoke-virtual {v2}, Lm/i0;->d()Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-virtual {p4, p3, v2, v0}, Lm/u;->j(Lm/f;Ljava/net/InetSocketAddress;Ljava/net/Proxy;)V

    .line 8
    invoke-virtual {v1, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 9
    :try_start_0
    sget-object p2, Lm/k0/i/h;->c:Lm/k0/i/h$a;

    invoke-virtual {p2}, Lm/k0/i/h$a;->g()Lm/k0/i/h;

    move-result-object p2

    iget-object p3, p0, Lokhttp3/internal/connection/g;->q:Lm/i0;

    invoke-virtual {p3}, Lm/i0;->d()Ljava/net/InetSocketAddress;

    move-result-object p3

    invoke-virtual {p2, v1, p3, p1}, Lm/k0/i/h;->f(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_1

    .line 10
    :try_start_1
    invoke-static {v1}, Ln/r;->m(Ljava/net/Socket;)Ln/d0;

    move-result-object p1

    invoke-static {p1}, Ln/r;->d(Ln/d0;)Ln/h;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/internal/connection/g;->g:Ln/h;

    .line 11
    invoke-static {v1}, Ln/r;->i(Ljava/net/Socket;)Ln/b0;

    move-result-object p1

    invoke-static {p1}, Ln/r;->c(Ln/b0;)Ln/g;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/internal/connection/g;->h:Ln/g;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string p3, "throw with null exception"

    invoke-static {p2, p3}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    :goto_2
    return-void

    .line 13
    :cond_2
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 14
    new-instance p2, Ljava/net/ConnectException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Failed to connect to "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lokhttp3/internal/connection/g;->q:Lm/i0;

    invoke-virtual {p4}, Lm/i0;->d()Ljava/net/InetSocketAddress;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p2, p1}, Ljava/net/ConnectException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 16
    throw p2

    .line 17
    :cond_3
    invoke-static {}, Lkotlin/w/c/k;->o()V

    const/4 p1, 0x0

    throw p1
.end method

.method private final j(Lokhttp3/internal/connection/b;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/g;->q:Lm/i0;

    invoke-virtual {v0}, Lm/i0;->a()Lm/a;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lm/a;->k()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    .line 3
    :try_start_0
    iget-object v3, p0, Lokhttp3/internal/connection/g;->b:Ljava/net/Socket;

    invoke-virtual {v0}, Lm/a;->l()Lm/y;

    move-result-object v4

    invoke-virtual {v4}, Lm/y;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lm/a;->l()Lm/y;

    move-result-object v5

    invoke-virtual {v5}, Lm/y;->o()I

    move-result v5

    const/4 v6, 0x1

    .line 4
    invoke-virtual {v1, v3, v4, v5, v6}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v1

    if-eqz v1, :cond_9

    check-cast v1, Ljavax/net/ssl/SSLSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    invoke-virtual {p1, v1}, Lokhttp3/internal/connection/b;->a(Ljavax/net/ssl/SSLSocket;)Lm/m;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lm/m;->h()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7
    sget-object v3, Lm/k0/i/h;->c:Lm/k0/i/h$a;

    invoke-virtual {v3}, Lm/k0/i/h$a;->g()Lm/k0/i/h;

    move-result-object v3

    invoke-virtual {v0}, Lm/a;->l()Lm/y;

    move-result-object v4

    invoke-virtual {v4}, Lm/y;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lm/a;->f()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3, v1, v4, v5}, Lm/k0/i/h;->e(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    .line 8
    :cond_0
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 9
    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v3

    .line 10
    sget-object v4, Lm/w;->e:Lm/w$a;

    const-string v5, "sslSocketSession"

    invoke-static {v3, v5}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Lm/w$a;->a(Ljavax/net/ssl/SSLSession;)Lm/w;

    move-result-object v4

    .line 11
    invoke-virtual {v0}, Lm/a;->e()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-virtual {v0}, Lm/a;->l()Lm/y;

    move-result-object v7

    invoke-virtual {v7}, Lm/y;->i()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7, v3}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 12
    invoke-virtual {v4}, Lm/w;->d()Ljava/util/List;

    move-result-object p1

    .line 13
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v6

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    .line 14
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type java.security.cert.X509Certificate"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    check-cast p1, Ljava/security/cert/X509Certificate;

    .line 15
    new-instance v3, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\n              |Hostname "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0}, Lm/a;->l()Lm/y;

    move-result-object v0

    invoke-virtual {v0}, Lm/y;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not verified:\n              |    certificate: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    sget-object v0, Lm/h;->d:Lm/h$b;

    invoke-virtual {v0, p1}, Lm/h$b;->a(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n              |    DN: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v0

    const-string v5, "cert.subjectDN"

    invoke-static {v0, v5}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n              |    subjectAltNames: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    sget-object v0, Lm/k0/k/d;->a:Lm/k0/k/d;

    invoke-virtual {v0, p1}, Lm/k0/k/d;->a(Ljava/security/cert/X509Certificate;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\n              "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 20
    invoke-static {p1, v2, v6, v2}, Lkotlin/c0/m;->h(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 21
    invoke-direct {v3, p1}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 22
    :cond_2
    new-instance p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Hostname "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lm/a;->l()Lm/y;

    move-result-object v0

    invoke-virtual {v0}, Lm/y;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not verified (no certificates)"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 24
    invoke-direct {p1, v0}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25
    :cond_3
    invoke-virtual {v0}, Lm/a;->a()Lm/h;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 26
    new-instance v5, Lm/w;

    invoke-virtual {v4}, Lm/w;->e()Lm/j0;

    move-result-object v6

    invoke-virtual {v4}, Lm/w;->a()Lm/j;

    move-result-object v7

    .line 27
    invoke-virtual {v4}, Lm/w;->c()Ljava/util/List;

    move-result-object v8

    new-instance v9, Lokhttp3/internal/connection/g$a;

    invoke-direct {v9, v3, v4, v0}, Lokhttp3/internal/connection/g$a;-><init>(Lm/h;Lm/w;Lm/a;)V

    .line 28
    invoke-direct {v5, v6, v7, v8, v9}, Lm/w;-><init>(Lm/j0;Lm/j;Ljava/util/List;Lkotlin/w/b/a;)V

    iput-object v5, p0, Lokhttp3/internal/connection/g;->d:Lm/w;

    .line 29
    invoke-virtual {v0}, Lm/a;->l()Lm/y;

    move-result-object v0

    invoke-virtual {v0}, Lm/y;->i()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lokhttp3/internal/connection/g$b;

    invoke-direct {v4, p0}, Lokhttp3/internal/connection/g$b;-><init>(Lokhttp3/internal/connection/g;)V

    invoke-virtual {v3, v0, v4}, Lm/h;->b(Ljava/lang/String;Lkotlin/w/b/a;)V

    .line 30
    invoke-virtual {p1}, Lm/m;->h()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 31
    sget-object p1, Lm/k0/i/h;->c:Lm/k0/i/h$a;

    invoke-virtual {p1}, Lm/k0/i/h$a;->g()Lm/k0/i/h;

    move-result-object p1

    invoke-virtual {p1, v1}, Lm/k0/i/h;->h(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v2

    .line 32
    :cond_4
    iput-object v1, p0, Lokhttp3/internal/connection/g;->c:Ljava/net/Socket;

    .line 33
    invoke-static {v1}, Ln/r;->m(Ljava/net/Socket;)Ln/d0;

    move-result-object p1

    invoke-static {p1}, Ln/r;->d(Ln/d0;)Ln/h;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/internal/connection/g;->g:Ln/h;

    .line 34
    invoke-static {v1}, Ln/r;->i(Ljava/net/Socket;)Ln/b0;

    move-result-object p1

    invoke-static {p1}, Ln/r;->c(Ln/b0;)Ln/g;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/internal/connection/g;->h:Ln/g;

    if-eqz v2, :cond_5

    .line 35
    sget-object p1, Lm/d0;->Companion:Lm/d0$a;

    invoke-virtual {p1, v2}, Lm/d0$a;->a(Ljava/lang/String;)Lm/d0;

    move-result-object p1

    goto :goto_0

    :cond_5
    sget-object p1, Lm/d0;->HTTP_1_1:Lm/d0;

    :goto_0
    iput-object p1, p0, Lokhttp3/internal/connection/g;->e:Lm/d0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_6

    .line 36
    sget-object p1, Lm/k0/i/h;->c:Lm/k0/i/h$a;

    invoke-virtual {p1}, Lm/k0/i/h$a;->g()Lm/k0/i/h;

    move-result-object p1

    invoke-virtual {p1, v1}, Lm/k0/i/h;->b(Ljavax/net/ssl/SSLSocket;)V

    :cond_6
    return-void

    .line 37
    :cond_7
    :try_start_2
    invoke-static {}, Lkotlin/w/c/k;->o()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 38
    :cond_8
    :try_start_3
    invoke-static {}, Lkotlin/w/c/k;->o()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    :catchall_0
    move-exception p1

    move-object v2, v1

    goto :goto_1

    .line 39
    :cond_9
    :try_start_4
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type javax.net.ssl.SSLSocket"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_1
    move-exception p1

    goto :goto_1

    :cond_a
    invoke-static {}, Lkotlin/w/c/k;->o()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2

    :goto_1
    if-eqz v2, :cond_b

    .line 40
    sget-object v0, Lm/k0/i/h;->c:Lm/k0/i/h$a;

    invoke-virtual {v0}, Lm/k0/i/h$a;->g()Lm/k0/i/h;

    move-result-object v0

    invoke-virtual {v0, v2}, Lm/k0/i/h;->b(Ljavax/net/ssl/SSLSocket;)V

    :cond_b
    if-eqz v2, :cond_c

    .line 41
    invoke-static {v2}, Lm/k0/b;->k(Ljava/net/Socket;)V

    :cond_c
    throw p1
.end method

.method private final k(IIILm/f;Lm/u;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lokhttp3/internal/connection/g;->m()Lm/e0;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lm/e0;->l()Lm/y;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x15

    if-ge v2, v3, :cond_1

    .line 3
    invoke-direct {p0, p1, p2, p4, p5}, Lokhttp3/internal/connection/g;->i(IILm/f;Lm/u;)V

    .line 4
    invoke-direct {p0, p2, p3, v0, v1}, Lokhttp3/internal/connection/g;->l(IILm/e0;Lm/y;)Lm/e0;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v3, p0, Lokhttp3/internal/connection/g;->b:Ljava/net/Socket;

    if-eqz v3, :cond_0

    invoke-static {v3}, Lm/k0/b;->k(Ljava/net/Socket;)V

    :cond_0
    const/4 v3, 0x0

    .line 6
    iput-object v3, p0, Lokhttp3/internal/connection/g;->b:Ljava/net/Socket;

    .line 7
    iput-object v3, p0, Lokhttp3/internal/connection/g;->h:Ln/g;

    .line 8
    iput-object v3, p0, Lokhttp3/internal/connection/g;->g:Ln/h;

    .line 9
    iget-object v4, p0, Lokhttp3/internal/connection/g;->q:Lm/i0;

    invoke-virtual {v4}, Lm/i0;->d()Ljava/net/InetSocketAddress;

    move-result-object v4

    iget-object v5, p0, Lokhttp3/internal/connection/g;->q:Lm/i0;

    invoke-virtual {v5}, Lm/i0;->b()Ljava/net/Proxy;

    move-result-object v5

    invoke-virtual {p5, p4, v4, v5, v3}, Lm/u;->h(Lm/f;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lm/d0;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final l(IILm/e0;Lm/y;)Lm/e0;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CONNECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-static {p4, v1}, Lm/k0/b;->N(Lm/y;Z)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " HTTP/1.1"

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 2
    :goto_0
    iget-object v0, p0, Lokhttp3/internal/connection/g;->g:Ln/h;

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    .line 3
    iget-object v3, p0, Lokhttp3/internal/connection/g;->h:Ln/g;

    if-eqz v3, :cond_6

    .line 4
    new-instance v4, Lm/k0/g/b;

    invoke-direct {v4, v2, p0, v0, v3}, Lm/k0/g/b;-><init>(Lm/c0;Lokhttp3/internal/connection/g;Ln/h;Ln/g;)V

    .line 5
    invoke-interface {v0}, Ln/d0;->timeout()Ln/e0;

    move-result-object v5

    int-to-long v6, p1

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v6, v7, v8}, Ln/e0;->g(JLjava/util/concurrent/TimeUnit;)Ln/e0;

    .line 6
    invoke-interface {v3}, Ln/b0;->timeout()Ln/e0;

    move-result-object v5

    int-to-long v6, p2

    invoke-virtual {v5, v6, v7, v8}, Ln/e0;->g(JLjava/util/concurrent/TimeUnit;)Ln/e0;

    .line 7
    invoke-virtual {p3}, Lm/e0;->f()Lm/x;

    move-result-object v5

    invoke-virtual {v4, v5, p4}, Lm/k0/g/b;->A(Lm/x;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v4}, Lm/k0/g/b;->a()V

    const/4 v5, 0x0

    .line 9
    invoke-virtual {v4, v5}, Lm/k0/g/b;->d(Z)Lm/g0$a;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 10
    invoke-virtual {v5, p3}, Lm/g0$a;->r(Lm/e0;)Lm/g0$a;

    .line 11
    invoke-virtual {v5}, Lm/g0$a;->c()Lm/g0;

    move-result-object p3

    .line 12
    invoke-virtual {v4, p3}, Lm/k0/g/b;->z(Lm/g0;)V

    .line 13
    invoke-virtual {p3}, Lm/g0;->f()I

    move-result v4

    const/16 v5, 0xc8

    if-eq v4, v5, :cond_3

    const/16 v0, 0x197

    if-ne v4, v0, :cond_2

    .line 14
    iget-object v0, p0, Lokhttp3/internal/connection/g;->q:Lm/i0;

    invoke-virtual {v0}, Lm/i0;->a()Lm/a;

    move-result-object v0

    invoke-virtual {v0}, Lm/a;->h()Lm/c;

    move-result-object v0

    iget-object v3, p0, Lokhttp3/internal/connection/g;->q:Lm/i0;

    invoke-interface {v0, v3, p3}, Lm/c;->a(Lm/i0;Lm/g0;)Lm/e0;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v3, 0x2

    const-string v4, "Connection"

    .line 15
    invoke-static {p3, v4, v2, v3, v2}, Lm/g0;->o(Lm/g0;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string v2, "close"

    invoke-static {v2, p3, v1}, Lkotlin/c0/m;->q(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p3

    if-eqz p3, :cond_0

    return-object v0

    :cond_0
    move-object p3, v0

    goto :goto_0

    .line 16
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Failed to authenticate with proxy"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_2
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unexpected response code for CONNECT: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lm/g0;->f()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_3
    invoke-interface {v0}, Ln/h;->m()Ln/f;

    move-result-object p1

    invoke-virtual {p1}, Ln/f;->S()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {v3}, Ln/g;->m()Ln/f;

    move-result-object p1

    invoke-virtual {p1}, Ln/f;->S()Z

    move-result p1

    if-eqz p1, :cond_4

    return-object v2

    .line 19
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "TLS tunnel buffered too many bytes!"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_5
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v2

    .line 21
    :cond_6
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v2

    .line 22
    :cond_7
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v2
.end method

.method private final m()Lm/e0;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lm/e0$a;

    invoke-direct {v0}, Lm/e0$a;-><init>()V

    .line 2
    iget-object v1, p0, Lokhttp3/internal/connection/g;->q:Lm/i0;

    invoke-virtual {v1}, Lm/i0;->a()Lm/a;

    move-result-object v1

    invoke-virtual {v1}, Lm/a;->l()Lm/y;

    move-result-object v1

    invoke-virtual {v0, v1}, Lm/e0$a;->l(Lm/y;)Lm/e0$a;

    const-string v1, "CONNECT"

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, v2}, Lm/e0$a;->g(Ljava/lang/String;Lm/f0;)Lm/e0$a;

    .line 4
    iget-object v1, p0, Lokhttp3/internal/connection/g;->q:Lm/i0;

    invoke-virtual {v1}, Lm/i0;->a()Lm/a;

    move-result-object v1

    invoke-virtual {v1}, Lm/a;->l()Lm/y;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lm/k0/b;->N(Lm/y;Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Host"

    invoke-virtual {v0, v2, v1}, Lm/e0$a;->e(Ljava/lang/String;Ljava/lang/String;)Lm/e0$a;

    const-string v1, "Proxy-Connection"

    const-string v2, "Keep-Alive"

    .line 5
    invoke-virtual {v0, v1, v2}, Lm/e0$a;->e(Ljava/lang/String;Ljava/lang/String;)Lm/e0$a;

    const-string v1, "User-Agent"

    const-string v2, "okhttp/4.8.0"

    .line 6
    invoke-virtual {v0, v1, v2}, Lm/e0$a;->e(Ljava/lang/String;Ljava/lang/String;)Lm/e0$a;

    .line 7
    invoke-virtual {v0}, Lm/e0$a;->b()Lm/e0;

    move-result-object v0

    .line 8
    new-instance v1, Lm/g0$a;

    invoke-direct {v1}, Lm/g0$a;-><init>()V

    .line 9
    invoke-virtual {v1, v0}, Lm/g0$a;->r(Lm/e0;)Lm/g0$a;

    .line 10
    sget-object v2, Lm/d0;->HTTP_1_1:Lm/d0;

    invoke-virtual {v1, v2}, Lm/g0$a;->p(Lm/d0;)Lm/g0$a;

    const/16 v2, 0x197

    .line 11
    invoke-virtual {v1, v2}, Lm/g0$a;->g(I)Lm/g0$a;

    const-string v2, "Preemptive Authenticate"

    .line 12
    invoke-virtual {v1, v2}, Lm/g0$a;->m(Ljava/lang/String;)Lm/g0$a;

    .line 13
    sget-object v2, Lm/k0/b;->c:Lm/h0;

    invoke-virtual {v1, v2}, Lm/g0$a;->b(Lm/h0;)Lm/g0$a;

    const-wide/16 v2, -0x1

    .line 14
    invoke-virtual {v1, v2, v3}, Lm/g0$a;->s(J)Lm/g0$a;

    .line 15
    invoke-virtual {v1, v2, v3}, Lm/g0$a;->q(J)Lm/g0$a;

    const-string v2, "Proxy-Authenticate"

    const-string v3, "OkHttp-Preemptive"

    .line 16
    invoke-virtual {v1, v2, v3}, Lm/g0$a;->j(Ljava/lang/String;Ljava/lang/String;)Lm/g0$a;

    .line 17
    invoke-virtual {v1}, Lm/g0$a;->c()Lm/g0;

    move-result-object v1

    .line 18
    iget-object v2, p0, Lokhttp3/internal/connection/g;->q:Lm/i0;

    invoke-virtual {v2}, Lm/i0;->a()Lm/a;

    move-result-object v2

    invoke-virtual {v2}, Lm/a;->h()Lm/c;

    move-result-object v2

    .line 19
    iget-object v3, p0, Lokhttp3/internal/connection/g;->q:Lm/i0;

    invoke-interface {v2, v3, v1}, Lm/c;->a(Lm/i0;Lm/g0;)Lm/e0;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v0, v1

    :cond_0
    return-object v0
.end method

.method private final n(Lokhttp3/internal/connection/b;ILm/f;Lm/u;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/g;->q:Lm/i0;

    invoke-virtual {v0}, Lm/i0;->a()Lm/a;

    move-result-object v0

    invoke-virtual {v0}, Lm/a;->k()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2
    iget-object p1, p0, Lokhttp3/internal/connection/g;->q:Lm/i0;

    invoke-virtual {p1}, Lm/i0;->a()Lm/a;

    move-result-object p1

    invoke-virtual {p1}, Lm/a;->f()Ljava/util/List;

    move-result-object p1

    sget-object p3, Lm/d0;->H2_PRIOR_KNOWLEDGE:Lm/d0;

    invoke-interface {p1, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lokhttp3/internal/connection/g;->b:Ljava/net/Socket;

    iput-object p1, p0, Lokhttp3/internal/connection/g;->c:Ljava/net/Socket;

    .line 4
    iput-object p3, p0, Lokhttp3/internal/connection/g;->e:Lm/d0;

    .line 5
    invoke-direct {p0, p2}, Lokhttp3/internal/connection/g;->F(I)V

    return-void

    .line 6
    :cond_0
    iget-object p1, p0, Lokhttp3/internal/connection/g;->b:Ljava/net/Socket;

    iput-object p1, p0, Lokhttp3/internal/connection/g;->c:Ljava/net/Socket;

    .line 7
    sget-object p1, Lm/d0;->HTTP_1_1:Lm/d0;

    iput-object p1, p0, Lokhttp3/internal/connection/g;->e:Lm/d0;

    return-void

    .line 8
    :cond_1
    invoke-virtual {p4, p3}, Lm/u;->C(Lm/f;)V

    .line 9
    invoke-direct {p0, p1}, Lokhttp3/internal/connection/g;->j(Lokhttp3/internal/connection/b;)V

    .line 10
    iget-object p1, p0, Lokhttp3/internal/connection/g;->d:Lm/w;

    invoke-virtual {p4, p3, p1}, Lm/u;->B(Lm/f;Lm/w;)V

    .line 11
    iget-object p1, p0, Lokhttp3/internal/connection/g;->e:Lm/d0;

    sget-object p3, Lm/d0;->HTTP_2:Lm/d0;

    if-ne p1, p3, :cond_2

    .line 12
    invoke-direct {p0, p2}, Lokhttp3/internal/connection/g;->F(I)V

    :cond_2
    return-void
.end method


# virtual methods
.method public A()Lm/i0;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/g;->q:Lm/i0;

    return-object v0
.end method

.method public final C(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lokhttp3/internal/connection/g;->p:J

    return-void
.end method

.method public final D(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lokhttp3/internal/connection/g;->i:Z

    return-void
.end method

.method public E()Ljava/net/Socket;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/g;->c:Ljava/net/Socket;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lkotlin/w/c/k;->o()V

    const/4 v0, 0x0

    throw v0
.end method

.method public final declared-synchronized H(Lokhttp3/internal/connection/e;Ljava/io/IOException;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p2, Lokhttp3/internal/http2/StreamResetException;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 2
    move-object v0, p2

    check-cast v0, Lokhttp3/internal/http2/StreamResetException;

    iget-object v0, v0, Lokhttp3/internal/http2/StreamResetException;->f:Lokhttp3/internal/http2/a;

    sget-object v2, Lokhttp3/internal/http2/a;->REFUSED_STREAM:Lokhttp3/internal/http2/a;

    if-ne v0, v2, :cond_0

    .line 3
    iget p1, p0, Lokhttp3/internal/connection/g;->m:I

    add-int/2addr p1, v1

    iput p1, p0, Lokhttp3/internal/connection/g;->m:I

    if-le p1, v1, :cond_5

    .line 4
    iput-boolean v1, p0, Lokhttp3/internal/connection/g;->i:Z

    .line 5
    iget p1, p0, Lokhttp3/internal/connection/g;->k:I

    add-int/2addr p1, v1

    iput p1, p0, Lokhttp3/internal/connection/g;->k:I

    goto :goto_0

    .line 6
    :cond_0
    check-cast p2, Lokhttp3/internal/http2/StreamResetException;

    iget-object p2, p2, Lokhttp3/internal/http2/StreamResetException;->f:Lokhttp3/internal/http2/a;

    sget-object v0, Lokhttp3/internal/http2/a;->CANCEL:Lokhttp3/internal/http2/a;

    if-ne p2, v0, :cond_1

    invoke-virtual {p1}, Lokhttp3/internal/connection/e;->isCanceled()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    iput-boolean v1, p0, Lokhttp3/internal/connection/g;->i:Z

    .line 8
    iget p1, p0, Lokhttp3/internal/connection/g;->k:I

    add-int/2addr p1, v1

    iput p1, p0, Lokhttp3/internal/connection/g;->k:I

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {p0}, Lokhttp3/internal/connection/g;->w()Z

    move-result v0

    if-eqz v0, :cond_3

    instance-of v0, p2, Lokhttp3/internal/http2/ConnectionShutdownException;

    if-eqz v0, :cond_5

    .line 10
    :cond_3
    iput-boolean v1, p0, Lokhttp3/internal/connection/g;->i:Z

    .line 11
    iget v0, p0, Lokhttp3/internal/connection/g;->l:I

    if-nez v0, :cond_5

    if-eqz p2, :cond_4

    .line 12
    invoke-virtual {p1}, Lokhttp3/internal/connection/e;->l()Lm/c0;

    move-result-object p1

    iget-object v0, p0, Lokhttp3/internal/connection/g;->q:Lm/i0;

    invoke-virtual {p0, p1, v0, p2}, Lokhttp3/internal/connection/g;->h(Lm/c0;Lm/i0;Ljava/io/IOException;)V

    .line 13
    :cond_4
    iget p1, p0, Lokhttp3/internal/connection/g;->k:I

    add-int/2addr p1, v1

    iput p1, p0, Lokhttp3/internal/connection/g;->k:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    :cond_5
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a()Lm/d0;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/g;->e:Lm/d0;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lkotlin/w/c/k;->o()V

    const/4 v0, 0x0

    throw v0
.end method

.method public declared-synchronized b(Lokhttp3/internal/http2/e;Lokhttp3/internal/http2/m;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "connection"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "settings"

    invoke-static {p2, p1}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Lokhttp3/internal/http2/m;->d()I

    move-result p1

    iput p1, p0, Lokhttp3/internal/connection/g;->n:I
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

.method public c(Lokhttp3/internal/http2/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "stream"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lokhttp3/internal/http2/a;->REFUSED_STREAM:Lokhttp3/internal/http2/a;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lokhttp3/internal/http2/h;->d(Lokhttp3/internal/http2/a;Ljava/io/IOException;)V

    return-void
.end method

.method public final e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/g;->b:Ljava/net/Socket;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lm/k0/b;->k(Ljava/net/Socket;)V

    :cond_0
    return-void
.end method

.method public final g(IIIIZLm/f;Lm/u;)V
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    const-string v0, "call"

    invoke-static {v8, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventListener"

    invoke-static {v9, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, v7, Lokhttp3/internal/connection/g;->e:Lm/d0;

    const/4 v10, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_d

    .line 2
    iget-object v0, v7, Lokhttp3/internal/connection/g;->q:Lm/i0;

    invoke-virtual {v0}, Lm/i0;->a()Lm/a;

    move-result-object v0

    invoke-virtual {v0}, Lm/a;->b()Ljava/util/List;

    move-result-object v0

    .line 3
    new-instance v11, Lokhttp3/internal/connection/b;

    invoke-direct {v11, v0}, Lokhttp3/internal/connection/b;-><init>(Ljava/util/List;)V

    .line 4
    iget-object v1, v7, Lokhttp3/internal/connection/g;->q:Lm/i0;

    invoke-virtual {v1}, Lm/i0;->a()Lm/a;

    move-result-object v1

    invoke-virtual {v1}, Lm/a;->k()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    if-nez v1, :cond_3

    .line 5
    sget-object v1, Lm/m;->h:Lm/m;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, v7, Lokhttp3/internal/connection/g;->q:Lm/i0;

    invoke-virtual {v0}, Lm/i0;->a()Lm/a;

    move-result-object v0

    invoke-virtual {v0}, Lm/a;->l()Lm/y;

    move-result-object v0

    invoke-virtual {v0}, Lm/y;->i()Ljava/lang/String;

    move-result-object v0

    .line 7
    sget-object v1, Lm/k0/i/h;->c:Lm/k0/i/h$a;

    invoke-virtual {v1}, Lm/k0/i/h$a;->g()Lm/k0/i/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lm/k0/i/h;->j(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    new-instance v1, Lokhttp3/internal/connection/RouteException;

    new-instance v2, Ljava/net/UnknownServiceException;

    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CLEARTEXT communication to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not permitted by network security policy"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-direct {v2, v0}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 11
    :cond_2
    new-instance v0, Lokhttp3/internal/connection/RouteException;

    new-instance v1, Ljava/net/UnknownServiceException;

    const-string v2, "CLEARTEXT communication not enabled for client"

    invoke-direct {v1, v2}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw v0

    .line 12
    :cond_3
    iget-object v0, v7, Lokhttp3/internal/connection/g;->q:Lm/i0;

    invoke-virtual {v0}, Lm/i0;->a()Lm/a;

    move-result-object v0

    invoke-virtual {v0}, Lm/a;->f()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lm/d0;->H2_PRIOR_KNOWLEDGE:Lm/d0;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    :goto_1
    const/4 v12, 0x0

    move-object v13, v12

    .line 13
    :goto_2
    :try_start_0
    iget-object v0, v7, Lokhttp3/internal/connection/g;->q:Lm/i0;

    invoke-virtual {v0}, Lm/i0;->c()Z

    move-result v0

    if-eqz v0, :cond_5

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    .line 14
    invoke-direct/range {v1 .. v6}, Lokhttp3/internal/connection/g;->k(IIILm/f;Lm/u;)V

    .line 15
    iget-object v0, v7, Lokhttp3/internal/connection/g;->b:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v0, :cond_4

    goto :goto_4

    :cond_4
    move/from16 v14, p1

    move/from16 v15, p2

    goto :goto_3

    :cond_5
    move/from16 v14, p1

    move/from16 v15, p2

    .line 16
    :try_start_1
    invoke-direct {v7, v14, v15, v8, v9}, Lokhttp3/internal/connection/g;->i(IILm/f;Lm/u;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    move/from16 v6, p4

    .line 17
    :try_start_2
    invoke-direct {v7, v11, v6, v8, v9}, Lokhttp3/internal/connection/g;->n(Lokhttp3/internal/connection/b;ILm/f;Lm/u;)V

    .line 18
    iget-object v0, v7, Lokhttp3/internal/connection/g;->q:Lm/i0;

    invoke-virtual {v0}, Lm/i0;->d()Ljava/net/InetSocketAddress;

    move-result-object v0

    iget-object v1, v7, Lokhttp3/internal/connection/g;->q:Lm/i0;

    invoke-virtual {v1}, Lm/i0;->b()Ljava/net/Proxy;

    move-result-object v1

    iget-object v2, v7, Lokhttp3/internal/connection/g;->e:Lm/d0;

    invoke-virtual {v9, v8, v0, v1, v2}, Lm/u;->h(Lm/f;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lm/d0;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 19
    :goto_4
    iget-object v0, v7, Lokhttp3/internal/connection/g;->q:Lm/i0;

    invoke-virtual {v0}, Lm/i0;->c()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, v7, Lokhttp3/internal/connection/g;->b:Ljava/net/Socket;

    if-eqz v0, :cond_6

    goto :goto_5

    .line 20
    :cond_6
    new-instance v0, Lokhttp3/internal/connection/RouteException;

    new-instance v1, Ljava/net/ProtocolException;

    const-string v2, "Too many tunnel connections attempted: 21"

    invoke-direct {v1, v2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw v0

    .line 21
    :cond_7
    :goto_5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, v7, Lokhttp3/internal/connection/g;->p:J

    return-void

    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    move/from16 v14, p1

    move/from16 v15, p2

    :goto_6
    move/from16 v6, p4

    .line 22
    :goto_7
    iget-object v1, v7, Lokhttp3/internal/connection/g;->c:Ljava/net/Socket;

    if-eqz v1, :cond_8

    invoke-static {v1}, Lm/k0/b;->k(Ljava/net/Socket;)V

    .line 23
    :cond_8
    iget-object v1, v7, Lokhttp3/internal/connection/g;->b:Ljava/net/Socket;

    if-eqz v1, :cond_9

    invoke-static {v1}, Lm/k0/b;->k(Ljava/net/Socket;)V

    .line 24
    :cond_9
    iput-object v12, v7, Lokhttp3/internal/connection/g;->c:Ljava/net/Socket;

    .line 25
    iput-object v12, v7, Lokhttp3/internal/connection/g;->b:Ljava/net/Socket;

    .line 26
    iput-object v12, v7, Lokhttp3/internal/connection/g;->g:Ln/h;

    .line 27
    iput-object v12, v7, Lokhttp3/internal/connection/g;->h:Ln/g;

    .line 28
    iput-object v12, v7, Lokhttp3/internal/connection/g;->d:Lm/w;

    .line 29
    iput-object v12, v7, Lokhttp3/internal/connection/g;->e:Lm/d0;

    .line 30
    iput-object v12, v7, Lokhttp3/internal/connection/g;->f:Lokhttp3/internal/http2/e;

    .line 31
    iput v10, v7, Lokhttp3/internal/connection/g;->n:I

    .line 32
    iget-object v1, v7, Lokhttp3/internal/connection/g;->q:Lm/i0;

    invoke-virtual {v1}, Lm/i0;->d()Ljava/net/InetSocketAddress;

    move-result-object v3

    iget-object v1, v7, Lokhttp3/internal/connection/g;->q:Lm/i0;

    invoke-virtual {v1}, Lm/i0;->b()Ljava/net/Proxy;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v1, p7

    move-object/from16 v2, p6

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lm/u;->i(Lm/f;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lm/d0;Ljava/io/IOException;)V

    if-nez v13, :cond_a

    .line 33
    new-instance v13, Lokhttp3/internal/connection/RouteException;

    invoke-direct {v13, v0}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    goto :goto_8

    .line 34
    :cond_a
    invoke-virtual {v13, v0}, Lokhttp3/internal/connection/RouteException;->a(Ljava/io/IOException;)V

    :goto_8
    if-eqz p5, :cond_b

    .line 35
    invoke-virtual {v11, v0}, Lokhttp3/internal/connection/b;->b(Ljava/io/IOException;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto/16 :goto_2

    .line 36
    :cond_b
    throw v13

    .line 37
    :cond_c
    new-instance v0, Lokhttp3/internal/connection/RouteException;

    new-instance v1, Ljava/net/UnknownServiceException;

    const-string v2, "H2_PRIOR_KNOWLEDGE cannot be used with HTTPS"

    invoke-direct {v1, v2}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw v0

    .line 38
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already connected"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final h(Lm/c0;Lm/i0;Ljava/io/IOException;)V
    .locals 3

    const-string v0, "client"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "failedRoute"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "failure"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Lm/i0;->b()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_0

    .line 2
    invoke-virtual {p2}, Lm/i0;->a()Lm/a;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lm/a;->i()Ljava/net/ProxySelector;

    move-result-object v1

    .line 4
    invoke-virtual {v0}, Lm/a;->l()Lm/y;

    move-result-object v0

    invoke-virtual {v0}, Lm/y;->u()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {p2}, Lm/i0;->b()Ljava/net/Proxy;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v2

    .line 5
    invoke-virtual {v1, v0, v2, p3}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V

    .line 6
    :cond_0
    invoke-virtual {p1}, Lm/c0;->u()Lokhttp3/internal/connection/i;

    move-result-object p1

    invoke-virtual {p1, p2}, Lokhttp3/internal/connection/i;->b(Lm/i0;)V

    return-void
.end method

.method public final o()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/ref/Reference<",
            "Lokhttp3/internal/connection/e;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/g;->o:Ljava/util/List;

    return-object v0
.end method

.method public final p()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lokhttp3/internal/connection/g;->p:J

    return-wide v0
.end method

.method public final q()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lokhttp3/internal/connection/g;->i:Z

    return v0
.end method

.method public final r()I
    .locals 1

    .line 1
    iget v0, p0, Lokhttp3/internal/connection/g;->k:I

    return v0
.end method

.method public s()Lm/w;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/g;->d:Lm/w;

    return-object v0
.end method

.method public final declared-synchronized t()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lokhttp3/internal/connection/g;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/connection/g;->l:I
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

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connection{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/internal/connection/g;->q:Lm/i0;

    invoke-virtual {v1}, Lm/i0;->a()Lm/a;

    move-result-object v1

    invoke-virtual {v1}, Lm/a;->l()Lm/y;

    move-result-object v1

    invoke-virtual {v1}, Lm/y;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lokhttp3/internal/connection/g;->q:Lm/i0;

    invoke-virtual {v1}, Lm/i0;->a()Lm/a;

    move-result-object v1

    invoke-virtual {v1}, Lm/a;->l()Lm/y;

    move-result-object v1

    invoke-virtual {v1}, Lm/y;->o()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, " proxy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    iget-object v1, p0, Lokhttp3/internal/connection/g;->q:Lm/i0;

    invoke-virtual {v1}, Lm/i0;->b()Ljava/net/Proxy;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " hostAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object v1, p0, Lokhttp3/internal/connection/g;->q:Lm/i0;

    invoke-virtual {v1}, Lm/i0;->d()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " cipherSuite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v1, p0, Lokhttp3/internal/connection/g;->d:Lm/w;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lm/w;->a()Lm/j;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "none"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-object v1, p0, Lokhttp3/internal/connection/g;->e:Lm/d0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u(Lm/a;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm/a;",
            "Ljava/util/List<",
            "Lm/i0;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "address"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-boolean v0, Lm/k0/b;->g:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Thread "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "Thread.currentThread()"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " MUST hold lock on "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Lokhttp3/internal/connection/g;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lokhttp3/internal/connection/g;->n:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_b

    iget-boolean v0, p0, Lokhttp3/internal/connection/g;->i:Z

    if-eqz v0, :cond_2

    goto/16 :goto_1

    .line 4
    :cond_2
    iget-object v0, p0, Lokhttp3/internal/connection/g;->q:Lm/i0;

    invoke-virtual {v0}, Lm/i0;->a()Lm/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lm/a;->d(Lm/a;)Z

    move-result v0

    if-nez v0, :cond_3

    return v2

    .line 5
    :cond_3
    invoke-virtual {p1}, Lm/a;->l()Lm/y;

    move-result-object v0

    invoke-virtual {v0}, Lm/y;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lokhttp3/internal/connection/g;->A()Lm/i0;

    move-result-object v1

    invoke-virtual {v1}, Lm/i0;->a()Lm/a;

    move-result-object v1

    invoke-virtual {v1}, Lm/a;->l()Lm/y;

    move-result-object v1

    invoke-virtual {v1}, Lm/y;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    return v1

    .line 6
    :cond_4
    iget-object v0, p0, Lokhttp3/internal/connection/g;->f:Lokhttp3/internal/http2/e;

    if-nez v0, :cond_5

    return v2

    :cond_5
    if-eqz p2, :cond_b

    .line 7
    invoke-direct {p0, p2}, Lokhttp3/internal/connection/g;->B(Ljava/util/List;)Z

    move-result p2

    if-nez p2, :cond_6

    goto :goto_1

    .line 8
    :cond_6
    invoke-virtual {p1}, Lm/a;->e()Ljavax/net/ssl/HostnameVerifier;

    move-result-object p2

    sget-object v0, Lm/k0/k/d;->a:Lm/k0/k/d;

    if-eq p2, v0, :cond_7

    return v2

    .line 9
    :cond_7
    invoke-virtual {p1}, Lm/a;->l()Lm/y;

    move-result-object p2

    invoke-direct {p0, p2}, Lokhttp3/internal/connection/g;->G(Lm/y;)Z

    move-result p2

    if-nez p2, :cond_8

    return v2

    .line 10
    :cond_8
    :try_start_0
    invoke-virtual {p1}, Lm/a;->a()Lm/h;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_a

    invoke-virtual {p1}, Lm/a;->l()Lm/y;

    move-result-object p1

    invoke-virtual {p1}, Lm/y;->i()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lokhttp3/internal/connection/g;->s()Lm/w;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Lm/w;->d()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lm/h;->a(Ljava/lang/String;Ljava/util/List;)V

    return v1

    :cond_9
    invoke-static {}, Lkotlin/w/c/k;->o()V
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    throw v0

    :cond_a
    :try_start_1
    invoke-static {}, Lkotlin/w/c/k;->o()V
    :try_end_1
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_1 .. :try_end_1} :catch_0

    throw v0

    :catch_0
    :cond_b
    :goto_1
    return v2
.end method

.method public final v(Z)Z
    .locals 7

    .line 1
    sget-boolean v0, Lm/k0/b;->g:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Thread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const-string v2, "Thread.currentThread()"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " MUST NOT hold lock on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 3
    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 4
    iget-object v2, p0, Lokhttp3/internal/connection/g;->b:Ljava/net/Socket;

    const/4 v3, 0x0

    if-eqz v2, :cond_8

    .line 5
    iget-object v4, p0, Lokhttp3/internal/connection/g;->c:Ljava/net/Socket;

    if-eqz v4, :cond_7

    .line 6
    iget-object v5, p0, Lokhttp3/internal/connection/g;->g:Ln/h;

    if-eqz v5, :cond_6

    .line 7
    invoke-virtual {v2}, Ljava/net/Socket;->isClosed()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v4}, Ljava/net/Socket;->isClosed()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v4}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v4}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 8
    :cond_2
    iget-object v2, p0, Lokhttp3/internal/connection/g;->f:Lokhttp3/internal/http2/e;

    if-eqz v2, :cond_3

    .line 9
    invoke-virtual {v2, v0, v1}, Lokhttp3/internal/http2/e;->J0(J)Z

    move-result p1

    return p1

    .line 10
    :cond_3
    monitor-enter p0

    :try_start_0
    iget-wide v2, p0, Lokhttp3/internal/connection/g;->p:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long/2addr v0, v2

    monitor-exit p0

    const-wide v2, 0x2540be400L

    cmp-long v6, v0, v2

    if-ltz v6, :cond_4

    if-eqz p1, :cond_4

    .line 11
    invoke-static {v4, v5}, Lm/k0/b;->D(Ljava/net/Socket;Ln/h;)Z

    move-result p1

    return p1

    :cond_4
    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 12
    monitor-exit p0

    throw p1

    :cond_5
    :goto_1
    const/4 p1, 0x0

    return p1

    .line 13
    :cond_6
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v3

    .line 14
    :cond_7
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v3

    .line 15
    :cond_8
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v3
.end method

.method public final w()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/g;->f:Lokhttp3/internal/http2/e;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final x(Lm/c0;Lm/k0/f/g;)Lm/k0/f/d;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    const-string v0, "client"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chain"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/g;->c:Ljava/net/Socket;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 2
    iget-object v2, p0, Lokhttp3/internal/connection/g;->g:Ln/h;

    if-eqz v2, :cond_2

    .line 3
    iget-object v3, p0, Lokhttp3/internal/connection/g;->h:Ln/g;

    if-eqz v3, :cond_1

    .line 4
    iget-object v1, p0, Lokhttp3/internal/connection/g;->f:Lokhttp3/internal/http2/e;

    if-eqz v1, :cond_0

    .line 5
    new-instance v0, Lokhttp3/internal/http2/f;

    invoke-direct {v0, p1, p0, p2, v1}, Lokhttp3/internal/http2/f;-><init>(Lm/c0;Lokhttp3/internal/connection/g;Lm/k0/f/g;Lokhttp3/internal/http2/e;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p2}, Lm/k0/f/g;->k()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 7
    invoke-interface {v2}, Ln/d0;->timeout()Ln/e0;

    move-result-object v0

    invoke-virtual {p2}, Lm/k0/f/g;->h()I

    move-result v1

    int-to-long v4, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5, v1}, Ln/e0;->g(JLjava/util/concurrent/TimeUnit;)Ln/e0;

    .line 8
    invoke-interface {v3}, Ln/b0;->timeout()Ln/e0;

    move-result-object v0

    invoke-virtual {p2}, Lm/k0/f/g;->j()I

    move-result p2

    int-to-long v4, p2

    invoke-virtual {v0, v4, v5, v1}, Ln/e0;->g(JLjava/util/concurrent/TimeUnit;)Ln/e0;

    .line 9
    new-instance v0, Lm/k0/g/b;

    invoke-direct {v0, p1, p0, v2, v3}, Lm/k0/g/b;-><init>(Lm/c0;Lokhttp3/internal/connection/g;Ln/h;Ln/g;)V

    :goto_0
    return-object v0

    .line 10
    :cond_1
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v1

    .line 11
    :cond_2
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v1

    .line 12
    :cond_3
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v1
.end method

.method public final declared-synchronized y()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iput-boolean v0, p0, Lokhttp3/internal/connection/g;->j:Z
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

.method public final declared-synchronized z()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iput-boolean v0, p0, Lokhttp3/internal/connection/g;->i:Z
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
