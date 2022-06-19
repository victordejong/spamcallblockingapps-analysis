.class public Lp3/a/o1/o/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp3/a/o1/o/i$d;,
        Lp3/a/o1/o/i$c;,
        Lp3/a/o1/o/i$b;,
        Lp3/a/o1/o/i$a;,
        Lp3/a/o1/o/i$e;
    }
.end annotation


# static fields
.field public static final b:Ljava/util/logging/Logger;

.field public static final c:[Ljava/lang/String;

.field public static final d:Lp3/a/o1/o/i;


# instance fields
.field public final a:Ljava/security/Provider;


# direct methods
.method public static constructor <clinit>()V
    .locals 18

    .line 1
    const-class v1, Lp3/a/o1/o/i;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lp3/a/o1/o/i;->b:Ljava/util/logging/Logger;

    const-string v0, "com.google.android.gms.org.conscrypt.OpenSSLProvider"

    const-string v2, "org.conscrypt.OpenSSLProvider"

    const-string v3, "com.android.org.conscrypt.OpenSSLProvider"

    const-string v4, "org.apache.harmony.xnet.provider.jsse.OpenSSLProvider"

    const-string v5, "com.google.android.libraries.stitch.sslguard.SslGuardProvider"

    .line 2
    filled-new-array {v0, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lp3/a/o1/o/i;->c:[Ljava/lang/String;

    const-string v2, "Can\'t find class"

    .line 3
    sget-object v3, Lp3/a/o1/o/i$e;->a:Lp3/a/o1/o/i$e;

    const-class v0, [B

    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v4

    .line 4
    array-length v5, v4

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    const/4 v8, 0x0

    if-ge v7, v5, :cond_2

    aget-object v9, v4, v7

    .line 5
    sget-object v10, Lp3/a/o1/o/i;->c:[Ljava/lang/String;

    array-length v11, v10

    move v12, v6

    :goto_1
    if-ge v12, v11, :cond_1

    aget-object v13, v10, v12

    .line 6
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 7
    sget-object v4, Lp3/a/o1/o/i;->b:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v7, "Found registered provider {0}"

    invoke-virtual {v4, v5, v7, v13}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v16, v9

    goto :goto_2

    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 8
    :cond_2
    sget-object v4, Lp3/a/o1/o/i;->b:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v7, "Unable to find Conscrypt"

    invoke-virtual {v4, v5, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    move-object/from16 v16, v8

    :goto_2
    const/4 v4, 0x1

    if-eqz v16, :cond_7

    .line 9
    new-instance v10, Lp3/a/o1/o/e;

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const-string v7, "setUseSessionTickets"

    invoke-direct {v10, v8, v7, v5}, Lp3/a/o1/o/e;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 10
    new-instance v11, Lp3/a/o1/o/e;

    new-array v5, v4, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const-string v7, "setHostname"

    invoke-direct {v11, v8, v7, v5}, Lp3/a/o1/o/e;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 11
    new-instance v14, Lp3/a/o1/o/e;

    new-array v5, v6, [Ljava/lang/Class;

    const-string v7, "getAlpnSelectedProtocol"

    invoke-direct {v14, v0, v7, v5}, Lp3/a/o1/o/e;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 12
    new-instance v15, Lp3/a/o1/o/e;

    new-array v5, v4, [Ljava/lang/Class;

    aput-object v0, v5, v6

    const-string v0, "setAlpnProtocols"

    invoke-direct {v15, v8, v0, v5}, Lp3/a/o1/o/e;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    :try_start_0
    const-string v0, "android.net.TrafficStats"

    .line 13
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v5, "tagSocket"

    new-array v7, v4, [Ljava/lang/Class;

    .line 14
    const-class v9, Ljava/net/Socket;

    aput-object v9, v7, v6

    invoke-virtual {v0, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v7, "untagSocket"

    new-array v9, v4, [Ljava/lang/Class;

    .line 15
    const-class v12, Ljava/net/Socket;

    aput-object v12, v9, v6

    invoke-virtual {v0, v7, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-object v12, v5

    move-object v13, v8

    goto :goto_3

    :catch_1
    move-object v12, v8

    move-object v13, v12

    .line 16
    :goto_3
    invoke-virtual/range {v16 .. v16}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v5, "GmsCore_OpenSSL"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 17
    invoke-virtual/range {v16 .. v16}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v5, "Conscrypt"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 18
    invoke-virtual/range {v16 .. v16}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v5, "Ssl_Guard"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_6

    .line 19
    :cond_3
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v5, "android.net.Network"

    .line 20
    invoke-virtual {v0, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move v0, v4

    goto :goto_4

    :catch_2
    move-exception v0

    .line 21
    sget-object v5, Lp3/a/o1/o/i;->b:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v5, v7, v2, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v6

    :goto_4
    if-eqz v0, :cond_4

    goto :goto_6

    .line 22
    :cond_4
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "android.app.ActivityOptions"

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    move v6, v4

    goto :goto_5

    :catch_3
    move-exception v0

    .line 24
    sget-object v1, Lp3/a/o1/o/i;->b:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v3, v2, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_5
    if-eqz v6, :cond_5

    .line 25
    sget-object v3, Lp3/a/o1/o/i$e;->b:Lp3/a/o1/o/i$e;

    goto :goto_6

    .line 26
    :cond_5
    sget-object v3, Lp3/a/o1/o/i$e;->c:Lp3/a/o1/o/i$e;

    :cond_6
    :goto_6
    move-object/from16 v17, v3

    .line 27
    new-instance v0, Lp3/a/o1/o/i$a;

    move-object v9, v0

    invoke-direct/range {v9 .. v17}, Lp3/a/o1/o/i$a;-><init>(Lp3/a/o1/o/e;Lp3/a/o1/o/e;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lp3/a/o1/o/e;Lp3/a/o1/o/e;Ljava/security/Provider;Lp3/a/o1/o/i$e;)V

    goto/16 :goto_8

    .line 28
    :cond_7
    :try_start_4
    invoke-static {}, Ljavax/net/ssl/SSLContext;->getDefault()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getProvider()Ljava/security/Provider;

    move-result-object v0
    :try_end_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_6

    :try_start_5
    const-string v1, "TLS"

    .line 29
    invoke-static {v1, v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 30
    invoke-virtual {v1, v8, v8, v8}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 31
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->createSSLEngine()Ljavax/net/ssl/SSLEngine;

    move-result-object v1

    .line 32
    new-instance v2, Lp3/a/o1/o/f;

    invoke-direct {v2}, Lp3/a/o1/o/f;-><init>()V

    .line 33
    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Method;

    new-array v3, v6, [Ljava/lang/Object;

    .line 34
    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    new-instance v1, Lp3/a/o1/o/g;

    invoke-direct {v1}, Lp3/a/o1/o/g;-><init>()V

    .line 36
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    .line 37
    new-instance v2, Lp3/a/o1/o/h;

    invoke-direct {v2}, Lp3/a/o1/o/h;-><init>()V

    .line 38
    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Method;

    .line 39
    new-instance v3, Lp3/a/o1/o/i$b;

    invoke-direct {v3, v0, v1, v2, v8}, Lp3/a/o1/o/i$b;-><init>(Ljava/security/Provider;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lp3/a/o1/o/f;)V
    :try_end_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/security/KeyManagementException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/security/PrivilegedActionException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_5} :catch_4

    move-object v0, v3

    goto :goto_8

    :catch_4
    const-string v1, "org.eclipse.jetty.alpn.ALPN"

    .line 40
    :try_start_6
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "org.eclipse.jetty.alpn.ALPN$Provider"

    .line 41
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "org.eclipse.jetty.alpn.ALPN$ClientProvider"

    .line 42
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    const-string v3, "org.eclipse.jetty.alpn.ALPN$ServerProvider"

    .line 43
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v14

    const-string v3, "put"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    .line 44
    const-class v7, Ljavax/net/ssl/SSLSocket;

    aput-object v7, v5, v6

    aput-object v2, v5, v4

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    const-string v2, "get"

    new-array v3, v4, [Ljava/lang/Class;

    .line 45
    const-class v5, Ljavax/net/ssl/SSLSocket;

    aput-object v5, v3, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    const-string v2, "remove"

    new-array v3, v4, [Ljava/lang/Class;

    .line 46
    const-class v4, Ljavax/net/ssl/SSLSocket;

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    .line 47
    new-instance v1, Lp3/a/o1/o/i$c;

    move-object v9, v1

    move-object v15, v0

    invoke-direct/range {v9 .. v15}, Lp3/a/o1/o/i$c;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Class;Ljava/security/Provider;)V
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_7

    .line 48
    :catch_5
    new-instance v1, Lp3/a/o1/o/i;

    invoke-direct {v1, v0}, Lp3/a/o1/o/i;-><init>(Ljava/security/Provider;)V

    :goto_7
    move-object v0, v1

    .line 49
    :goto_8
    sput-object v0, Lp3/a/o1/o/i;->d:Lp3/a/o1/o/i;

    return-void

    :catch_6
    move-exception v0

    .line 50
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Ljava/security/Provider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lp3/a/o1/o/i;->a:Ljava/security/Provider;

    return-void
.end method

.method public static b(Ljava/util/List;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lp3/a/o1/o/j;",
            ">;)[B"
        }
    .end annotation

    .line 1
    new-instance v0, Lv3/f;

    invoke-direct {v0}, Lv3/f;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 3
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lp3/a/o1/o/j;

    .line 4
    sget-object v4, Lp3/a/o1/o/j;->b:Lp3/a/o1/o/j;

    if-ne v3, v4, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    iget-object v4, v3, Lp3/a/o1/o/j;->a:Ljava/lang/String;

    .line 6
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v4}, Lv3/f;->B0(I)Lv3/f;

    .line 7
    iget-object v3, v3, Lp3/a/o1/o/j;->a:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v3}, Lv3/f;->K0(Ljava/lang/String;)Lv3/f;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {v0}, Lv3/f;->i0()[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Ljavax/net/ssl/SSLSocket;)V
    .locals 0

    return-void
.end method

.method public c(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
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

    return-void
.end method

.method public d(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public e()Lp3/a/o1/o/i$e;
    .locals 1

    .line 1
    sget-object v0, Lp3/a/o1/o/i$e;->c:Lp3/a/o1/o/i$e;

    return-object v0
.end method
