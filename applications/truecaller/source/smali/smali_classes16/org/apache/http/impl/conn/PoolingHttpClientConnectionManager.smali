.class public Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/http/conn/HttpClientConnectionManager;
.implements Lorg/apache/http/pool/ConnPoolControl;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$InternalConnectionFactory;,
        Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/http/conn/HttpClientConnectionManager;",
        "Lorg/apache/http/pool/ConnPoolControl<",
        "Lorg/apache/http/conn/routing/HttpRoute;",
        ">;",
        "Ljava/io/Closeable;"
    }
.end annotation

.annotation build Lorg/apache/http/annotation/Contract;
    threading = .enum Lorg/apache/http/annotation/ThreadingBehavior;->SAFE_CONDITIONAL:Lorg/apache/http/annotation/ThreadingBehavior;
.end annotation


# instance fields
.field private final configData:Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;

.field private final connectionOperator:Lorg/apache/http/conn/HttpClientConnectionOperator;

.field private final isShutDown:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final log:Lw3/a/b/b/a;

.field private final pool:Lorg/apache/http/impl/conn/CPool;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->getDefaultRegistry()Lorg/apache/http/config/Registry;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;-><init>(Lorg/apache/http/config/Registry;)V

    return-void
.end method

.method public constructor <init>(JLjava/util/concurrent/TimeUnit;)V
    .locals 8

    .line 2
    invoke-static {}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->getDefaultRegistry()Lorg/apache/http/config/Registry;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v5, p1

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;-><init>(Lorg/apache/http/config/Registry;Lorg/apache/http/conn/HttpConnectionFactory;Lorg/apache/http/conn/SchemePortResolver;Lorg/apache/http/conn/DnsResolver;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/config/Registry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/config/Registry<",
            "Lorg/apache/http/conn/socket/ConnectionSocketFactory;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, v0, v0}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;-><init>(Lorg/apache/http/config/Registry;Lorg/apache/http/conn/HttpConnectionFactory;Lorg/apache/http/conn/DnsResolver;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/config/Registry;Lorg/apache/http/conn/DnsResolver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/config/Registry<",
            "Lorg/apache/http/conn/socket/ConnectionSocketFactory;",
            ">;",
            "Lorg/apache/http/conn/DnsResolver;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, v0, p2}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;-><init>(Lorg/apache/http/config/Registry;Lorg/apache/http/conn/HttpConnectionFactory;Lorg/apache/http/conn/DnsResolver;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/config/Registry;Lorg/apache/http/conn/HttpConnectionFactory;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/config/Registry<",
            "Lorg/apache/http/conn/socket/ConnectionSocketFactory;",
            ">;",
            "Lorg/apache/http/conn/HttpConnectionFactory<",
            "Lorg/apache/http/conn/routing/HttpRoute;",
            "Lorg/apache/http/conn/ManagedHttpClientConnection;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;-><init>(Lorg/apache/http/config/Registry;Lorg/apache/http/conn/HttpConnectionFactory;Lorg/apache/http/conn/DnsResolver;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/config/Registry;Lorg/apache/http/conn/HttpConnectionFactory;Lorg/apache/http/conn/DnsResolver;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/config/Registry<",
            "Lorg/apache/http/conn/socket/ConnectionSocketFactory;",
            ">;",
            "Lorg/apache/http/conn/HttpConnectionFactory<",
            "Lorg/apache/http/conn/routing/HttpRoute;",
            "Lorg/apache/http/conn/ManagedHttpClientConnection;",
            ">;",
            "Lorg/apache/http/conn/DnsResolver;",
            ")V"
        }
    .end annotation

    .line 7
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v3, 0x0

    const-wide/16 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v7}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;-><init>(Lorg/apache/http/config/Registry;Lorg/apache/http/conn/HttpConnectionFactory;Lorg/apache/http/conn/SchemePortResolver;Lorg/apache/http/conn/DnsResolver;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/config/Registry;Lorg/apache/http/conn/HttpConnectionFactory;Lorg/apache/http/conn/SchemePortResolver;Lorg/apache/http/conn/DnsResolver;JLjava/util/concurrent/TimeUnit;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/config/Registry<",
            "Lorg/apache/http/conn/socket/ConnectionSocketFactory;",
            ">;",
            "Lorg/apache/http/conn/HttpConnectionFactory<",
            "Lorg/apache/http/conn/routing/HttpRoute;",
            "Lorg/apache/http/conn/ManagedHttpClientConnection;",
            ">;",
            "Lorg/apache/http/conn/SchemePortResolver;",
            "Lorg/apache/http/conn/DnsResolver;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    .line 8
    new-instance v1, Lorg/apache/http/impl/conn/DefaultHttpClientConnectionOperator;

    invoke-direct {v1, p1, p3, p4}, Lorg/apache/http/impl/conn/DefaultHttpClientConnectionOperator;-><init>(Lorg/apache/http/config/Lookup;Lorg/apache/http/conn/SchemePortResolver;Lorg/apache/http/conn/DnsResolver;)V

    move-object v0, p0

    move-object v2, p2

    move-wide v3, p5

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;-><init>(Lorg/apache/http/conn/HttpClientConnectionOperator;Lorg/apache/http/conn/HttpConnectionFactory;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/conn/HttpClientConnectionOperator;Lorg/apache/http/conn/HttpConnectionFactory;JLjava/util/concurrent/TimeUnit;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/conn/HttpClientConnectionOperator;",
            "Lorg/apache/http/conn/HttpConnectionFactory<",
            "Lorg/apache/http/conn/routing/HttpRoute;",
            "Lorg/apache/http/conn/ManagedHttpClientConnection;",
            ">;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lw3/a/b/b/i;->f(Ljava/lang/Class;)Lw3/a/b/b/a;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->log:Lw3/a/b/b/a;

    .line 11
    new-instance v0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;

    invoke-direct {v0}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->configData:Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;

    .line 12
    new-instance v8, Lorg/apache/http/impl/conn/CPool;

    new-instance v2, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$InternalConnectionFactory;

    invoke-direct {v2, v0, p2}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$InternalConnectionFactory;-><init>(Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;Lorg/apache/http/conn/HttpConnectionFactory;)V

    const/4 v3, 0x2

    const/16 v4, 0x14

    move-object v1, v8

    move-wide v5, p3

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lorg/apache/http/impl/conn/CPool;-><init>(Lorg/apache/http/pool/ConnFactory;IIJLjava/util/concurrent/TimeUnit;)V

    iput-object v8, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->pool:Lorg/apache/http/impl/conn/CPool;

    const/16 p2, 0x7d0

    .line 13
    invoke-virtual {v8, p2}, Lorg/apache/http/pool/AbstractConnPool;->setValidateAfterInactivity(I)V

    const-string p2, "HttpClientConnectionOperator"

    .line 14
    invoke-static {p1, p2}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/http/conn/HttpClientConnectionOperator;

    iput-object p1, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->connectionOperator:Lorg/apache/http/conn/HttpClientConnectionOperator;

    .line 15
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->isShutDown:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/conn/HttpConnectionFactory;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/conn/HttpConnectionFactory<",
            "Lorg/apache/http/conn/routing/HttpRoute;",
            "Lorg/apache/http/conn/ManagedHttpClientConnection;",
            ">;)V"
        }
    .end annotation

    .line 6
    invoke-static {}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->getDefaultRegistry()Lorg/apache/http/config/Registry;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;-><init>(Lorg/apache/http/config/Registry;Lorg/apache/http/conn/HttpConnectionFactory;Lorg/apache/http/conn/DnsResolver;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/impl/conn/CPool;Lorg/apache/http/config/Lookup;Lorg/apache/http/conn/SchemePortResolver;Lorg/apache/http/conn/DnsResolver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/impl/conn/CPool;",
            "Lorg/apache/http/config/Lookup<",
            "Lorg/apache/http/conn/socket/ConnectionSocketFactory;",
            ">;",
            "Lorg/apache/http/conn/SchemePortResolver;",
            "Lorg/apache/http/conn/DnsResolver;",
            ")V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lw3/a/b/b/i;->f(Ljava/lang/Class;)Lw3/a/b/b/a;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->log:Lw3/a/b/b/a;

    .line 18
    new-instance v0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;

    invoke-direct {v0}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->configData:Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;

    .line 19
    iput-object p1, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->pool:Lorg/apache/http/impl/conn/CPool;

    .line 20
    new-instance p1, Lorg/apache/http/impl/conn/DefaultHttpClientConnectionOperator;

    invoke-direct {p1, p2, p3, p4}, Lorg/apache/http/impl/conn/DefaultHttpClientConnectionOperator;-><init>(Lorg/apache/http/config/Lookup;Lorg/apache/http/conn/SchemePortResolver;Lorg/apache/http/conn/DnsResolver;)V

    iput-object p1, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->connectionOperator:Lorg/apache/http/conn/HttpClientConnectionOperator;

    .line 21
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->isShutDown:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static synthetic access$000(Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;Lorg/apache/http/HttpHost;)Lorg/apache/http/config/SocketConfig;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->resolveSocketConfig(Lorg/apache/http/HttpHost;)Lorg/apache/http/config/SocketConfig;

    move-result-object p0

    return-object p0
.end method

.method private format(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[route: "

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const-string v1, "[state: "

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private format(Lorg/apache/http/impl/conn/CPoolEntry;)Ljava/lang/String;
    .locals 3

    const-string v0, "[id: "

    .line 5
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 6
    invoke-virtual {p1}, Lorg/apache/http/pool/PoolEntry;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "[route: "

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/http/pool/PoolEntry;->getRoute()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {p1}, Lorg/apache/http/pool/PoolEntry;->getState()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v2, "[state: "

    .line 9
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private formatStats(Lorg/apache/http/conn/routing/HttpRoute;)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->pool:Lorg/apache/http/impl/conn/CPool;

    invoke-virtual {v1}, Lorg/apache/http/pool/AbstractConnPool;->getTotalStats()Lorg/apache/http/pool/PoolStats;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->pool:Lorg/apache/http/impl/conn/CPool;

    invoke-virtual {v2, p1}, Lorg/apache/http/pool/AbstractConnPool;->getStats(Ljava/lang/Object;)Lorg/apache/http/pool/PoolStats;

    move-result-object p1

    const-string v2, "[total kept alive: "

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/apache/http/pool/PoolStats;->getAvailable()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "route allocated: "

    .line 5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/http/pool/PoolStats;->getLeased()I

    move-result v3

    invoke-virtual {p1}, Lorg/apache/http/pool/PoolStats;->getAvailable()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " of "

    .line 6
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/apache/http/pool/PoolStats;->getMax()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "total allocated: "

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/apache/http/pool/PoolStats;->getLeased()I

    move-result p1

    invoke-virtual {v1}, Lorg/apache/http/pool/PoolStats;->getAvailable()I

    move-result v2

    add-int/2addr v2, p1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/apache/http/pool/PoolStats;->getMax()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static getDefaultRegistry()Lorg/apache/http/config/Registry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/http/config/Registry<",
            "Lorg/apache/http/conn/socket/ConnectionSocketFactory;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lorg/apache/http/config/RegistryBuilder;->create()Lorg/apache/http/config/RegistryBuilder;

    move-result-object v0

    invoke-static {}, Lorg/apache/http/conn/socket/PlainConnectionSocketFactory;->getSocketFactory()Lorg/apache/http/conn/socket/PlainConnectionSocketFactory;

    move-result-object v1

    const-string v2, "http"

    invoke-virtual {v0, v2, v1}, Lorg/apache/http/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/config/RegistryBuilder;

    move-result-object v0

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLConnectionSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLConnectionSocketFactory;

    move-result-object v1

    const-string v2, "https"

    invoke-virtual {v0, v2, v1}, Lorg/apache/http/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/config/RegistryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/config/RegistryBuilder;->build()Lorg/apache/http/config/Registry;

    move-result-object v0

    return-object v0
.end method

.method private resolveSocketConfig(Lorg/apache/http/HttpHost;)Lorg/apache/http/config/SocketConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->configData:Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;

    invoke-virtual {v0, p1}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;->getSocketConfig(Lorg/apache/http/HttpHost;)Lorg/apache/http/config/SocketConfig;

    move-result-object p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->configData:Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;

    invoke-virtual {p1}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;->getDefaultSocketConfig()Lorg/apache/http/config/SocketConfig;

    move-result-object p1

    :cond_0
    if-nez p1, :cond_1

    .line 3
    sget-object p1, Lorg/apache/http/config/SocketConfig;->DEFAULT:Lorg/apache/http/config/SocketConfig;

    :cond_1
    return-object p1
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->shutdown()V

    return-void
.end method

.method public closeExpiredConnections()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->log:Lw3/a/b/b/a;

    const-string v1, "Closing expired connections"

    invoke-interface {v0, v1}, Lw3/a/b/b/a;->h(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->pool:Lorg/apache/http/impl/conn/CPool;

    invoke-virtual {v0}, Lorg/apache/http/pool/AbstractConnPool;->closeExpired()V

    return-void
.end method

.method public closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->log:Lw3/a/b/b/a;

    invoke-interface {v0}, Lw3/a/b/b/a;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->log:Lw3/a/b/b/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Closing connections idle longer than "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lw3/a/b/b/a;->h(Ljava/lang/Object;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->pool:Lorg/apache/http/impl/conn/CPool;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/http/pool/AbstractConnPool;->closeIdle(JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public connect(Lorg/apache/http/HttpClientConnection;Lorg/apache/http/conn/routing/HttpRoute;ILorg/apache/http/protocol/HttpContext;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Managed Connection"

    .line 1
    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP route"

    .line 2
    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    invoke-static {p1}, Lorg/apache/http/impl/conn/CPoolProxy;->getPoolEntry(Lorg/apache/http/HttpClientConnection;)Lorg/apache/http/impl/conn/CPoolEntry;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/apache/http/pool/PoolEntry;->getConnection()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lorg/apache/http/conn/ManagedHttpClientConnection;

    .line 6
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-virtual {p2}, Lorg/apache/http/conn/routing/HttpRoute;->getProxyHost()Lorg/apache/http/HttpHost;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p2}, Lorg/apache/http/conn/routing/HttpRoute;->getProxyHost()Lorg/apache/http/HttpHost;

    move-result-object p1

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p2}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object p1

    :goto_0
    move-object v3, p1

    .line 10
    iget-object v1, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->connectionOperator:Lorg/apache/http/conn/HttpClientConnectionOperator;

    invoke-virtual {p2}, Lorg/apache/http/conn/routing/HttpRoute;->getLocalSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v4

    invoke-direct {p0, v3}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->resolveSocketConfig(Lorg/apache/http/HttpHost;)Lorg/apache/http/config/SocketConfig;

    move-result-object v6

    move v5, p3

    move-object v7, p4

    invoke-interface/range {v1 .. v7}, Lorg/apache/http/conn/HttpClientConnectionOperator;->connect(Lorg/apache/http/conn/ManagedHttpClientConnection;Lorg/apache/http/HttpHost;Ljava/net/InetSocketAddress;ILorg/apache/http/config/SocketConfig;Lorg/apache/http/protocol/HttpContext;)V

    return-void

    :catchall_0
    move-exception p2

    .line 11
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method public enumAvailable(Lorg/apache/http/pool/PoolEntryCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/pool/PoolEntryCallback<",
            "Lorg/apache/http/conn/routing/HttpRoute;",
            "Lorg/apache/http/conn/ManagedHttpClientConnection;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->pool:Lorg/apache/http/impl/conn/CPool;

    invoke-virtual {v0, p1}, Lorg/apache/http/impl/conn/CPool;->enumAvailable(Lorg/apache/http/pool/PoolEntryCallback;)V

    return-void
.end method

.method public enumLeased(Lorg/apache/http/pool/PoolEntryCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/pool/PoolEntryCallback<",
            "Lorg/apache/http/conn/routing/HttpRoute;",
            "Lorg/apache/http/conn/ManagedHttpClientConnection;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->pool:Lorg/apache/http/impl/conn/CPool;

    invoke-virtual {v0, p1}, Lorg/apache/http/impl/conn/CPool;->enumLeased(Lorg/apache/http/pool/PoolEntryCallback;)V

    return-void
.end method

.method public finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->shutdown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getConnectionConfig(Lorg/apache/http/HttpHost;)Lorg/apache/http/config/ConnectionConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->configData:Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;

    invoke-virtual {v0, p1}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;->getConnectionConfig(Lorg/apache/http/HttpHost;)Lorg/apache/http/config/ConnectionConfig;

    move-result-object p1

    return-object p1
.end method

.method public getDefaultConnectionConfig()Lorg/apache/http/config/ConnectionConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->configData:Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;->getDefaultConnectionConfig()Lorg/apache/http/config/ConnectionConfig;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultMaxPerRoute()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->pool:Lorg/apache/http/impl/conn/CPool;

    invoke-virtual {v0}, Lorg/apache/http/pool/AbstractConnPool;->getDefaultMaxPerRoute()I

    move-result v0

    return v0
.end method

.method public getDefaultSocketConfig()Lorg/apache/http/config/SocketConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->configData:Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;->getDefaultSocketConfig()Lorg/apache/http/config/SocketConfig;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMaxPerRoute(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lorg/apache/http/conn/routing/HttpRoute;

    invoke-virtual {p0, p1}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->getMaxPerRoute(Lorg/apache/http/conn/routing/HttpRoute;)I

    move-result p1

    return p1
.end method

.method public getMaxPerRoute(Lorg/apache/http/conn/routing/HttpRoute;)I
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->pool:Lorg/apache/http/impl/conn/CPool;

    invoke-virtual {v0, p1}, Lorg/apache/http/pool/AbstractConnPool;->getMaxPerRoute(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getMaxTotal()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->pool:Lorg/apache/http/impl/conn/CPool;

    invoke-virtual {v0}, Lorg/apache/http/pool/AbstractConnPool;->getMaxTotal()I

    move-result v0

    return v0
.end method

.method public getRoutes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/apache/http/conn/routing/HttpRoute;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->pool:Lorg/apache/http/impl/conn/CPool;

    invoke-virtual {v0}, Lorg/apache/http/pool/AbstractConnPool;->getRoutes()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getSocketConfig(Lorg/apache/http/HttpHost;)Lorg/apache/http/config/SocketConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->configData:Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;

    invoke-virtual {v0, p1}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;->getSocketConfig(Lorg/apache/http/HttpHost;)Lorg/apache/http/config/SocketConfig;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getStats(Ljava/lang/Object;)Lorg/apache/http/pool/PoolStats;
    .locals 0

    .line 1
    check-cast p1, Lorg/apache/http/conn/routing/HttpRoute;

    invoke-virtual {p0, p1}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->getStats(Lorg/apache/http/conn/routing/HttpRoute;)Lorg/apache/http/pool/PoolStats;

    move-result-object p1

    return-object p1
.end method

.method public getStats(Lorg/apache/http/conn/routing/HttpRoute;)Lorg/apache/http/pool/PoolStats;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->pool:Lorg/apache/http/impl/conn/CPool;

    invoke-virtual {v0, p1}, Lorg/apache/http/pool/AbstractConnPool;->getStats(Ljava/lang/Object;)Lorg/apache/http/pool/PoolStats;

    move-result-object p1

    return-object p1
.end method

.method public getTotalStats()Lorg/apache/http/pool/PoolStats;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->pool:Lorg/apache/http/impl/conn/CPool;

    invoke-virtual {v0}, Lorg/apache/http/pool/AbstractConnPool;->getTotalStats()Lorg/apache/http/pool/PoolStats;

    move-result-object v0

    return-object v0
.end method

.method public getValidateAfterInactivity()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->pool:Lorg/apache/http/impl/conn/CPool;

    invoke-virtual {v0}, Lorg/apache/http/pool/AbstractConnPool;->getValidateAfterInactivity()I

    move-result v0

    return v0
.end method

.method public leaseConnection(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)Lorg/apache/http/HttpClientConnection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "Lorg/apache/http/impl/conn/CPoolEntry;",
            ">;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lorg/apache/http/HttpClientConnection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Lorg/apache/http/conn/ConnectionPoolTimeoutException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p1, p2, p3, p4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/http/impl/conn/CPoolEntry;

    if-eqz p2, :cond_2

    .line 2
    invoke-interface {p1}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result p1

    if-nez p1, :cond_2

    .line 3
    invoke-virtual {p2}, Lorg/apache/http/pool/PoolEntry;->getConnection()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string p3, "Pool entry with no connection"

    invoke-static {p1, p3}, Lorg/apache/http/util/Asserts;->check(ZLjava/lang/String;)V

    .line 4
    iget-object p1, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->log:Lw3/a/b/b/a;

    invoke-interface {p1}, Lw3/a/b/b/a;->j()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->log:Lw3/a/b/b/a;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Connection leased: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->format(Lorg/apache/http/impl/conn/CPoolEntry;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/apache/http/pool/PoolEntry;->getRoute()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/apache/http/conn/routing/HttpRoute;

    invoke-direct {p0, p4}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->formatStats(Lorg/apache/http/conn/routing/HttpRoute;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Lw3/a/b/b/a;->h(Ljava/lang/Object;)V

    .line 6
    :cond_1
    invoke-static {p2}, Lorg/apache/http/impl/conn/CPoolProxy;->newProxy(Lorg/apache/http/impl/conn/CPoolEntry;)Lorg/apache/http/HttpClientConnection;

    move-result-object p1

    return-object p1

    .line 7
    :cond_2
    new-instance p1, Ljava/util/concurrent/ExecutionException;

    new-instance p2, Ljava/util/concurrent/CancellationException;

    const-string p3, "Operation cancelled"

    invoke-direct {p2, p3}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    :catch_0
    new-instance p1, Lorg/apache/http/conn/ConnectionPoolTimeoutException;

    const-string p2, "Timeout waiting for connection from pool"

    invoke-direct {p1, p2}, Lorg/apache/http/conn/ConnectionPoolTimeoutException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public releaseConnection(Lorg/apache/http/HttpClientConnection;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)V
    .locals 6

    const-string v0, "Managed connection"

    .line 1
    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    monitor-enter p1

    .line 3
    :try_start_0
    invoke-static {p1}, Lorg/apache/http/impl/conn/CPoolProxy;->detach(Lorg/apache/http/HttpClientConnection;)Lorg/apache/http/impl/conn/CPoolEntry;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    monitor-exit p1

    return-void

    .line 5
    :cond_0
    invoke-virtual {v0}, Lorg/apache/http/pool/PoolEntry;->getConnection()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/conn/ManagedHttpClientConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 6
    :try_start_1
    invoke-interface {v1}, Lorg/apache/http/HttpConnection;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz p5, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    sget-object p5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 8
    :goto_0
    invoke-virtual {v0, p2}, Lorg/apache/http/pool/PoolEntry;->setState(Ljava/lang/Object;)V

    .line 9
    invoke-virtual {v0, p3, p4, p5}, Lorg/apache/http/pool/PoolEntry;->updateExpiry(JLjava/util/concurrent/TimeUnit;)V

    .line 10
    iget-object p2, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->log:Lw3/a/b/b/a;

    invoke-interface {p2}, Lw3/a/b/b/a;->j()Z

    move-result p2

    if-eqz p2, :cond_3

    const-wide/16 v4, 0x0

    cmp-long p2, p3, v4

    if-lez p2, :cond_2

    .line 11
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "for "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3, p4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p3

    long-to-double p3, p3

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr p3, v4

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p3, " seconds"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_2
    const-string p2, "indefinitely"

    .line 12
    :goto_1
    iget-object p3, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->log:Lw3/a/b/b/a;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Connection "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->format(Lorg/apache/http/impl/conn/CPoolEntry;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, " can be kept alive "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p2}, Lw3/a/b/b/a;->h(Ljava/lang/Object;)V

    .line 13
    :cond_3
    invoke-interface {v1, v3}, Lorg/apache/http/HttpConnection;->setSocketTimeout(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    :cond_4
    :try_start_2
    iget-object p2, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->pool:Lorg/apache/http/impl/conn/CPool;

    invoke-interface {v1}, Lorg/apache/http/HttpConnection;->isOpen()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/CPoolEntry;->isRouteComplete()Z

    move-result p3

    if-eqz p3, :cond_5

    goto :goto_2

    :cond_5
    move v2, v3

    :goto_2
    invoke-virtual {p2, v0, v2}, Lorg/apache/http/pool/AbstractConnPool;->release(Lorg/apache/http/pool/PoolEntry;Z)V

    .line 15
    iget-object p2, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->log:Lw3/a/b/b/a;

    invoke-interface {p2}, Lw3/a/b/b/a;->j()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 16
    iget-object p2, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->log:Lw3/a/b/b/a;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Connection released: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->format(Lorg/apache/http/impl/conn/CPoolEntry;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/apache/http/pool/PoolEntry;->getRoute()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/apache/http/conn/routing/HttpRoute;

    invoke-direct {p0, p4}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->formatStats(Lorg/apache/http/conn/routing/HttpRoute;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Lw3/a/b/b/a;->h(Ljava/lang/Object;)V

    .line 17
    :cond_6
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    .line 18
    iget-object p3, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->pool:Lorg/apache/http/impl/conn/CPool;

    invoke-interface {v1}, Lorg/apache/http/HttpConnection;->isOpen()Z

    move-result p4

    if-eqz p4, :cond_7

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/CPoolEntry;->isRouteComplete()Z

    move-result p4

    if-eqz p4, :cond_7

    goto :goto_3

    :cond_7
    move v2, v3

    :goto_3
    invoke-virtual {p3, v0, v2}, Lorg/apache/http/pool/AbstractConnPool;->release(Lorg/apache/http/pool/PoolEntry;Z)V

    .line 19
    iget-object p3, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->log:Lw3/a/b/b/a;

    invoke-interface {p3}, Lw3/a/b/b/a;->j()Z

    move-result p3

    if-eqz p3, :cond_8

    .line 20
    iget-object p3, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->log:Lw3/a/b/b/a;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Connection released: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->format(Lorg/apache/http/impl/conn/CPoolEntry;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/apache/http/pool/PoolEntry;->getRoute()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lorg/apache/http/conn/routing/HttpRoute;

    invoke-direct {p0, p5}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->formatStats(Lorg/apache/http/conn/routing/HttpRoute;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p3, p4}, Lw3/a/b/b/a;->h(Ljava/lang/Object;)V

    :cond_8
    throw p2

    :catchall_1
    move-exception p2

    .line 21
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p2
.end method

.method public requestConnection(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Lorg/apache/http/conn/ConnectionRequest;
    .locals 3

    const-string v0, "HTTP route"

    .line 1
    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->log:Lw3/a/b/b/a;

    invoke-interface {v0}, Lw3/a/b/b/a;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->log:Lw3/a/b/b/a;

    const-string v1, "Connection request: "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->format(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->formatStats(Lorg/apache/http/conn/routing/HttpRoute;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lw3/a/b/b/a;->h(Ljava/lang/Object;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->pool:Lorg/apache/http/impl/conn/CPool;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/apache/http/pool/AbstractConnPool;->lease(Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/http/concurrent/FutureCallback;)Ljava/util/concurrent/Future;

    move-result-object p2

    .line 5
    new-instance v0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$1;

    invoke-direct {v0, p0, p2, p1}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$1;-><init>(Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;Ljava/util/concurrent/Future;Lorg/apache/http/conn/routing/HttpRoute;)V

    return-object v0
.end method

.method public routeComplete(Lorg/apache/http/HttpClientConnection;Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string p3, "Managed Connection"

    .line 1
    invoke-static {p1, p3}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p3, "HTTP route"

    .line 2
    invoke-static {p2, p3}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    invoke-static {p1}, Lorg/apache/http/impl/conn/CPoolProxy;->getPoolEntry(Lorg/apache/http/HttpClientConnection;)Lorg/apache/http/impl/conn/CPoolEntry;

    move-result-object p2

    .line 5
    invoke-virtual {p2}, Lorg/apache/http/impl/conn/CPoolEntry;->markRouteComplete()V

    .line 6
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public setConnectionConfig(Lorg/apache/http/HttpHost;Lorg/apache/http/config/ConnectionConfig;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->configData:Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;

    invoke-virtual {v0, p1, p2}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;->setConnectionConfig(Lorg/apache/http/HttpHost;Lorg/apache/http/config/ConnectionConfig;)V

    return-void
.end method

.method public setDefaultConnectionConfig(Lorg/apache/http/config/ConnectionConfig;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->configData:Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;

    invoke-virtual {v0, p1}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;->setDefaultConnectionConfig(Lorg/apache/http/config/ConnectionConfig;)V

    return-void
.end method

.method public setDefaultMaxPerRoute(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->pool:Lorg/apache/http/impl/conn/CPool;

    invoke-virtual {v0, p1}, Lorg/apache/http/pool/AbstractConnPool;->setDefaultMaxPerRoute(I)V

    return-void
.end method

.method public setDefaultSocketConfig(Lorg/apache/http/config/SocketConfig;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->configData:Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;

    invoke-virtual {v0, p1}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;->setDefaultSocketConfig(Lorg/apache/http/config/SocketConfig;)V

    return-void
.end method

.method public bridge synthetic setMaxPerRoute(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p1, Lorg/apache/http/conn/routing/HttpRoute;

    invoke-virtual {p0, p1, p2}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->setMaxPerRoute(Lorg/apache/http/conn/routing/HttpRoute;I)V

    return-void
.end method

.method public setMaxPerRoute(Lorg/apache/http/conn/routing/HttpRoute;I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->pool:Lorg/apache/http/impl/conn/CPool;

    invoke-virtual {v0, p1, p2}, Lorg/apache/http/pool/AbstractConnPool;->setMaxPerRoute(Ljava/lang/Object;I)V

    return-void
.end method

.method public setMaxTotal(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->pool:Lorg/apache/http/impl/conn/CPool;

    invoke-virtual {v0, p1}, Lorg/apache/http/pool/AbstractConnPool;->setMaxTotal(I)V

    return-void
.end method

.method public setSocketConfig(Lorg/apache/http/HttpHost;Lorg/apache/http/config/SocketConfig;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->configData:Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;

    invoke-virtual {v0, p1, p2}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager$ConfigData;->setSocketConfig(Lorg/apache/http/HttpHost;Lorg/apache/http/config/SocketConfig;)V

    return-void
.end method

.method public setValidateAfterInactivity(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->pool:Lorg/apache/http/impl/conn/CPool;

    invoke-virtual {v0, p1}, Lorg/apache/http/pool/AbstractConnPool;->setValidateAfterInactivity(I)V

    return-void
.end method

.method public shutdown()V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->isShutDown:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->log:Lw3/a/b/b/a;

    const-string v1, "Connection manager is shutting down"

    invoke-interface {v0, v1}, Lw3/a/b/b/a;->h(Ljava/lang/Object;)V

    .line 3
    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->pool:Lorg/apache/http/impl/conn/CPool;

    invoke-virtual {v0}, Lorg/apache/http/pool/AbstractConnPool;->shutdown()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    iget-object v1, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->log:Lw3/a/b/b/a;

    const-string v2, "I/O exception shutting down connection manager"

    invoke-interface {v1, v2, v0}, Lw3/a/b/b/a;->d(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 5
    :goto_0
    iget-object v0, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->log:Lw3/a/b/b/a;

    const-string v1, "Connection manager shut down"

    invoke-interface {v0, v1}, Lw3/a/b/b/a;->h(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public upgrade(Lorg/apache/http/HttpClientConnection;Lorg/apache/http/conn/routing/HttpRoute;Lorg/apache/http/protocol/HttpContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Managed Connection"

    .line 1
    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HTTP route"

    .line 2
    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    invoke-static {p1}, Lorg/apache/http/impl/conn/CPoolProxy;->getPoolEntry(Lorg/apache/http/HttpClientConnection;)Lorg/apache/http/impl/conn/CPoolEntry;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/apache/http/pool/PoolEntry;->getConnection()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/conn/ManagedHttpClientConnection;

    .line 6
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object p1, p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->connectionOperator:Lorg/apache/http/conn/HttpClientConnectionOperator;

    invoke-virtual {p2}, Lorg/apache/http/conn/routing/HttpRoute;->getTargetHost()Lorg/apache/http/HttpHost;

    move-result-object p2

    invoke-interface {p1, v0, p2, p3}, Lorg/apache/http/conn/HttpClientConnectionOperator;->upgrade(Lorg/apache/http/conn/ManagedHttpClientConnection;Lorg/apache/http/HttpHost;Lorg/apache/http/protocol/HttpContext;)V

    return-void

    :catchall_0
    move-exception p2

    .line 8
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method
