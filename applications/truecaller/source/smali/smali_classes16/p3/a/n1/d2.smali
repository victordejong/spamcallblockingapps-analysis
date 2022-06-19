.class public Lp3/a/n1/d2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp3/a/c1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp3/a/n1/d2$c;
    }
.end annotation


# static fields
.field public static final d:Ljava/util/logging/Logger;

.field public static final e:Lp3/a/n1/d2$c;

.field public static final f:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "Ljava/net/ProxySelector;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "Ljava/net/ProxySelector;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lp3/a/n1/d2$c;

.field public final c:Ljava/net/InetSocketAddress;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lp3/a/n1/d2;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lp3/a/n1/d2;->d:Ljava/util/logging/Logger;

    .line 2
    new-instance v0, Lp3/a/n1/d2$a;

    invoke-direct {v0}, Lp3/a/n1/d2$a;-><init>()V

    sput-object v0, Lp3/a/n1/d2;->e:Lp3/a/n1/d2$c;

    .line 3
    new-instance v0, Lp3/a/n1/d2$b;

    invoke-direct {v0}, Lp3/a/n1/d2$b;-><init>()V

    sput-object v0, Lp3/a/n1/d2;->f:Lcom/google/common/base/Supplier;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    sget-object v0, Lp3/a/n1/d2;->f:Lcom/google/common/base/Supplier;

    sget-object v1, Lp3/a/n1/d2;->e:Lp3/a/n1/d2$c;

    const-string v2, "GRPC_PROXY_EXP"

    invoke-static {v2}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iput-object v0, p0, Lp3/a/n1/d2;->a:Lcom/google/common/base/Supplier;

    .line 5
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iput-object v1, p0, Lp3/a/n1/d2;->b:Lp3/a/n1/d2$c;

    if-eqz v2, :cond_1

    const/4 v0, 0x2

    const-string v1, ":"

    .line 7
    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x50

    .line 8
    array-length v2, v0

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 9
    aget-object v1, v0, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 10
    :cond_0
    sget-object v2, Lp3/a/n1/d2;->d:Ljava/util/logging/Logger;

    const-string v3, "Detected GRPC_PROXY_EXP and will honor it, but this feature will be removed in a future release. Use the JVM flags \"-Dhttps.proxyHost=HOST -Dhttps.proxyPort=PORT\" to set the https proxy for this JVM."

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 11
    new-instance v2, Ljava/net/InetSocketAddress;

    const/4 v3, 0x0

    aget-object v0, v0, v3

    invoke-direct {v2, v0, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 12
    iput-object v2, p0, Lp3/a/n1/d2;->c:Ljava/net/InetSocketAddress;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lp3/a/n1/d2;->c:Ljava/net/InetSocketAddress;

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Ljava/net/SocketAddress;)Lp3/a/b1;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    instance-of v2, v0, Ljava/net/InetSocketAddress;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    .line 2
    :cond_0
    iget-object v5, v1, Lp3/a/n1/d2;->c:Ljava/net/InetSocketAddress;

    const-string v2, "proxyAddress"

    const-string v4, "targetAddress"

    if-eqz v5, :cond_1

    .line 3
    sget v3, Lp3/a/z;->e:I

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 4
    invoke-static {v5, v2}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    move-object v6, v0

    check-cast v6, Ljava/net/InetSocketAddress;

    .line 6
    invoke-static {v6, v4}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v0, Lp3/a/z;

    const/4 v9, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lp3/a/z;-><init>(Ljava/net/SocketAddress;Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/lang/String;Lp3/a/z$a;)V

    return-object v0

    .line 8
    :cond_1
    move-object v12, v0

    check-cast v12, Ljava/net/InetSocketAddress;

    .line 9
    :try_start_0
    invoke-static {v12}, Lp3/a/n1/r0;->d(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :try_start_1
    new-instance v0, Ljava/net/URI;

    const-string v14, "https"

    const/4 v15, 0x0

    .line 11
    invoke-virtual {v12}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v13, v0

    invoke-direct/range {v13 .. v20}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    .line 12
    iget-object v5, v1, Lp3/a/n1/d2;->a:Lcom/google/common/base/Supplier;

    invoke-interface {v5}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/ProxySelector;

    if-nez v5, :cond_2

    .line 13
    sget-object v0, Lp3/a/n1/d2;->d:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v4, "proxy selector is null, so continuing without proxy lookup"

    invoke-virtual {v0, v2, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 14
    :cond_2
    invoke-virtual {v5, v0}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object v0

    .line 15
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_3

    .line 16
    sget-object v5, Lp3/a/n1/d2;->d:Ljava/util/logging/Logger;

    const-string v6, "More than 1 proxy detected, gRPC will select the first one"

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_3
    const/4 v5, 0x0

    .line 17
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Proxy;

    .line 18
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v5

    sget-object v6, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-ne v5, v6, :cond_4

    goto/16 :goto_2

    .line 19
    :cond_4
    invoke-virtual {v0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 20
    iget-object v5, v1, Lp3/a/n1/d2;->b:Lp3/a/n1/d2$c;

    .line 21
    invoke-static {v0}, Lp3/a/n1/r0;->d(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v6

    .line 22
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v7

    .line 23
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v8

    const/4 v11, 0x0

    const-string v9, "https"

    const-string v10, ""

    .line 24
    invoke-interface/range {v5 .. v11}, Lp3/a/n1/d2$c;->a(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/PasswordAuthentication;

    move-result-object v5

    .line 25
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 26
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    .line 27
    new-instance v7, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    invoke-direct {v7, v6, v0}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    move-object v11, v7

    goto :goto_0

    :cond_5
    move-object v11, v0

    .line 28
    :goto_0
    sget v0, Lp3/a/z;->e:I

    const/4 v14, 0x0

    const/4 v13, 0x0

    .line 29
    invoke-static {v12, v4}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    invoke-static {v11, v2}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v5, :cond_6

    .line 31
    new-instance v3, Lp3/a/z;

    const/4 v15, 0x0

    move-object v10, v3

    invoke-direct/range {v10 .. v15}, Lp3/a/z;-><init>(Ljava/net/SocketAddress;Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/lang/String;Lp3/a/z$a;)V

    goto :goto_2

    .line 32
    :cond_6
    invoke-virtual {v5}, Ljava/net/PasswordAuthentication;->getUserName()Ljava/lang/String;

    move-result-object v13

    .line 33
    invoke-virtual {v5}, Ljava/net/PasswordAuthentication;->getPassword()[C

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_1

    :cond_7
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/net/PasswordAuthentication;->getPassword()[C

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V

    :goto_1
    move-object v14, v3

    .line 34
    new-instance v3, Lp3/a/z;

    const/4 v15, 0x0

    move-object v10, v3

    invoke-direct/range {v10 .. v15}, Lp3/a/z;-><init>(Ljava/net/SocketAddress;Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/lang/String;Lp3/a/z$a;)V

    goto :goto_2

    :catch_0
    move-exception v0

    .line 35
    sget-object v2, Lp3/a/n1/d2;->d:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v5, "Failed to construct URI for proxy lookup, proceeding without proxy"

    invoke-virtual {v2, v4, v5, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 36
    sget-object v0, Lp3/a/n1/d2;->d:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v5, "Failed to get host for proxy lookup, proceeding without proxy"

    invoke-virtual {v0, v4, v5, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-object v3
.end method
