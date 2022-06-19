.class Lzendesk/core/Tls12SocketFactory;
.super Ljavax/net/ssl/SSLSocketFactory;
.source "SourceFile"


# static fields
.field private static final TLS_V12_ONLY:[Ljava/lang/String;


# instance fields
.field final delegate:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 1
    sget-object v1, Lm/j0;->TLS_1_2:Lm/j0;

    invoke-virtual {v1}, Lm/j0;->javaName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lzendesk/core/Tls12SocketFactory;->TLS_V12_ONLY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/core/Tls12SocketFactory;->delegate:Ljavax/net/ssl/SSLSocketFactory;

    return-void
.end method

.method public static enableTls12OnPreLollipop(Lm/c0$a;)Lm/c0$a;
    .locals 5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const-string v2, "Tls12SocketFactory"

    const/4 v3, 0x0

    const/16 v4, 0x10

    if-lt v0, v4, :cond_0

    const/16 v4, 0x15

    if-ge v0, v4, :cond_0

    :try_start_0
    const-string v0, "TLSv1.2"

    .line 2
    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    const/4 v4, 0x0

    .line 3
    invoke-virtual {v0, v4, v4, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 4
    new-instance v4, Lzendesk/core/Tls12SocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-direct {v4, v0}, Lzendesk/core/Tls12SocketFactory;-><init>(Ljavax/net/ssl/SSLSocketFactory;)V

    invoke-virtual {p0, v4}, Lm/c0$a;->Q(Ljavax/net/ssl/SSLSocketFactory;)Lm/c0$a;

    .line 5
    new-instance v0, Lm/m$a;

    sget-object v4, Lm/m;->g:Lm/m;

    invoke-direct {v0, v4}, Lm/m$a;-><init>(Lm/m;)V

    new-array v1, v1, [Lm/j0;

    sget-object v4, Lm/j0;->TLS_1_2:Lm/j0;

    aput-object v4, v1, v3

    .line 6
    invoke-virtual {v0, v1}, Lm/m$a;->f([Lm/j0;)Lm/m$a;

    .line 7
    invoke-virtual {v0}, Lm/m$a;->a()Lm/m;

    move-result-object v0

    .line 8
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lm/c0$a;->g(Ljava/util/List;)Lm/c0$a;

    const-string v0, "Applied TLS 1.2 patch"

    new-array v1, v3, [Ljava/lang/Object;

    .line 9
    invoke-static {v2, v0, v1}, Lg/k/b/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-array v1, v3, [Ljava/lang/Object;

    const-string v3, "Error while setting TLS 1.2"

    .line 10
    invoke-static {v2, v3, v0, v1}, Lg/k/b/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-array v0, v3, [Ljava/lang/Object;

    const-string v4, "Skipping TLS 1.2 patch"

    .line 11
    invoke-static {v2, v4, v0}, Lg/k/b/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    new-instance v0, Lm/m$a;

    sget-object v2, Lm/m;->g:Lm/m;

    invoke-direct {v0, v2}, Lm/m$a;-><init>(Lm/m;)V

    const/4 v2, 0x2

    new-array v2, v2, [Lm/j0;

    sget-object v4, Lm/j0;->TLS_1_2:Lm/j0;

    aput-object v4, v2, v3

    sget-object v3, Lm/j0;->TLS_1_3:Lm/j0;

    aput-object v3, v2, v1

    .line 13
    invoke-virtual {v0, v2}, Lm/m$a;->f([Lm/j0;)Lm/m$a;

    .line 14
    invoke-virtual {v0}, Lm/m$a;->a()Lm/m;

    move-result-object v0

    .line 15
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lm/c0$a;->g(Ljava/util/List;)Lm/c0$a;

    :goto_0
    return-object p0
.end method

.method private static patch(Ljava/net/Socket;)Ljava/net/Socket;
    .locals 2

    .line 1
    instance-of v0, p0, Ljavax/net/ssl/SSLSocket;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    sget-object v1, Lzendesk/core/Tls12SocketFactory;->TLS_V12_ONLY:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method


# virtual methods
.method public createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lzendesk/core/Tls12SocketFactory;->delegate:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object p1

    invoke-static {p1}, Lzendesk/core/Tls12SocketFactory;->patch(Ljava/net/Socket;)Ljava/net/Socket;

    return-object p1
.end method

.method public createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lzendesk/core/Tls12SocketFactory;->delegate:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object p1

    invoke-static {p1}, Lzendesk/core/Tls12SocketFactory;->patch(Ljava/net/Socket;)Ljava/net/Socket;

    return-object p1
.end method

.method public createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lzendesk/core/Tls12SocketFactory;->delegate:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object p1

    invoke-static {p1}, Lzendesk/core/Tls12SocketFactory;->patch(Ljava/net/Socket;)Ljava/net/Socket;

    return-object p1
.end method

.method public createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lzendesk/core/Tls12SocketFactory;->delegate:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object p1

    invoke-static {p1}, Lzendesk/core/Tls12SocketFactory;->patch(Ljava/net/Socket;)Ljava/net/Socket;

    return-object p1
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lzendesk/core/Tls12SocketFactory;->delegate:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object p1

    invoke-static {p1}, Lzendesk/core/Tls12SocketFactory;->patch(Ljava/net/Socket;)Ljava/net/Socket;

    return-object p1
.end method

.method public getDefaultCipherSuites()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/core/Tls12SocketFactory;->delegate:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->getDefaultCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/core/Tls12SocketFactory;->delegate:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
