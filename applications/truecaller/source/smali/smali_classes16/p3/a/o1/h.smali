.class public Lp3/a/o1/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp3/a/o1/h$a;
    }
.end annotation


# static fields
.field public static final b:Ljava/util/logging/Logger;

.field public static final c:Lp3/a/o1/o/i;

.field public static d:Lp3/a/o1/h;


# instance fields
.field public final a:Lp3/a/o1/o/i;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    const-class v0, Lp3/a/o1/h;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sput-object v1, Lp3/a/o1/h;->b:Ljava/util/logging/Logger;

    .line 2
    sget-object v1, Lp3/a/o1/o/i;->d:Lp3/a/o1/o/i;

    .line 3
    sput-object v1, Lp3/a/o1/h;->c:Lp3/a/o1/o/i;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    :try_start_0
    const-string v1, "com.android.org.conscrypt.OpenSSLSocketImpl"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 6
    sget-object v2, Lp3/a/o1/h;->b:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v4, "Unable to find Conscrypt. Skipping"

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :try_start_1
    const-string v1, "org.apache.harmony.xnet.provider.jsse.OpenSSLSocketImpl"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 8
    sget-object v1, Lp3/a/o1/h;->b:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "Unable to find any OpenSSLSocketImpl. Skipping"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_0

    .line 9
    new-instance v0, Lp3/a/o1/h$a;

    sget-object v1, Lp3/a/o1/h;->c:Lp3/a/o1/o/i;

    invoke-direct {v0, v1}, Lp3/a/o1/h$a;-><init>(Lp3/a/o1/o/i;)V

    goto :goto_2

    .line 10
    :cond_0
    new-instance v0, Lp3/a/o1/h;

    sget-object v1, Lp3/a/o1/h;->c:Lp3/a/o1/o/i;

    invoke-direct {v0, v1}, Lp3/a/o1/h;-><init>(Lp3/a/o1/o/i;)V

    .line 11
    :goto_2
    sput-object v0, Lp3/a/o1/h;->d:Lp3/a/o1/h;

    return-void
.end method

.method public constructor <init>(Lp3/a/o1/o/i;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "platform"

    .line 2
    invoke-static {p1, v0}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lp3/a/o1/o/i;

    iput-object p1, p0, Lp3/a/o1/h;->a:Lp3/a/o1/o/i;

    return-void
.end method


# virtual methods
.method public a(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lp3/a/o1/o/j;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lp3/a/o1/h;->a:Lp3/a/o1/o/i;

    invoke-virtual {v0, p1, p2, p3}, Lp3/a/o1/o/i;->c(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public b(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lp3/a/o1/h;->a:Lp3/a/o1/o/i;

    invoke-virtual {v0, p1}, Lp3/a/o1/o/i;->d(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lp3/a/o1/o/j;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lp3/a/o1/h;->a(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    .line 2
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 3
    invoke-virtual {p0, p1}, Lp3/a/o1/h;->b(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_1

    .line 4
    iget-object p3, p0, Lp3/a/o1/h;->a:Lp3/a/o1/o/i;

    invoke-virtual {p3, p1}, Lp3/a/o1/o/i;->a(Ljavax/net/ssl/SSLSocket;)V

    return-object p2

    .line 5
    :cond_1
    :try_start_1
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TLS ALPN negotiation failed with protocols: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p2

    .line 6
    iget-object p3, p0, Lp3/a/o1/h;->a:Lp3/a/o1/o/i;

    invoke-virtual {p3, p1}, Lp3/a/o1/o/i;->a(Ljavax/net/ssl/SSLSocket;)V

    throw p2
.end method
