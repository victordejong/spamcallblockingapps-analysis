.class public final Le/p/a/y/k/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Le/p/a/y/k/j$a;

    invoke-direct {v0}, Le/p/a/y/k/j$a;-><init>()V

    sput-object v0, Le/p/a/y/k/j;->a:Ljava/util/Comparator;

    .line 2
    sget-object v0, Le/p/a/y/f;->a:Le/p/a/y/f;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "OkHttp"

    sput-object v0, Le/p/a/y/k/j;->b:Ljava/lang/String;

    const-string v1, "-Sent-Millis"

    .line 4
    invoke-static {v0, v1}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Le/p/a/y/k/j;->c:Ljava/lang/String;

    const-string v1, "-Received-Millis"

    .line 5
    invoke-static {v0, v1}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Le/p/a/y/k/j;->d:Ljava/lang/String;

    return-void
.end method

.method public static a(Le/p/a/m;)J
    .locals 2

    const-string v0, "Content-Length"

    .line 1
    invoke-virtual {p0, v0}, Le/p/a/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-wide/16 v0, -0x1

    if-nez p0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-wide v0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "Connection"

    .line 1
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Keep-Alive"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Proxy-Authenticate"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Proxy-Authorization"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Trailers"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Transfer-Encoding"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Upgrade"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static c(Le/p/a/b;Le/p/a/u;Ljava/net/Proxy;)Le/p/a/s;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 1
    iget v2, v0, Le/p/a/u;->c:I

    const/16 v3, 0x197

    const-string v4, "Basic"

    const/4 v6, 0x0

    if-ne v2, v3, :cond_3

    .line 2
    move-object/from16 v2, p0

    check-cast v2, Le/p/a/y/k/a;

    .line 3
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual/range {p1 .. p1}, Le/p/a/u;->b()Ljava/util/List;

    move-result-object v3

    .line 5
    iget-object v0, v0, Le/p/a/u;->a:Le/p/a/s;

    .line 6
    iget-object v7, v0, Le/p/a/s;->a:Le/p/a/n;

    .line 7
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    :goto_0
    if-ge v6, v8, :cond_2

    .line 8
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Le/p/a/f;

    .line 9
    iget-object v10, v9, Le/p/a/f;->a:Ljava/lang/String;

    .line 10
    invoke-virtual {v4, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    goto :goto_1

    .line 11
    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v10

    check-cast v10, Ljava/net/InetSocketAddress;

    .line 12
    invoke-virtual {v10}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v1, v7}, Le/p/a/y/k/a;->a(Ljava/net/Proxy;Le/p/a/n;)Ljava/net/InetAddress;

    move-result-object v12

    invoke-virtual {v10}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v13

    .line 13
    iget-object v14, v7, Le/p/a/n;->a:Ljava/lang/String;

    .line 14
    iget-object v15, v9, Le/p/a/f;->b:Ljava/lang/String;

    .line 15
    iget-object v9, v9, Le/p/a/f;->a:Ljava/lang/String;

    .line 16
    :try_start_0
    new-instance v10, Ljava/net/URL;

    iget-object v5, v7, Le/p/a/n;->i:Ljava/lang/String;

    invoke-direct {v10, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    sget-object v18, Ljava/net/Authenticator$RequestorType;->PROXY:Ljava/net/Authenticator$RequestorType;

    move-object/from16 v16, v9

    move-object/from16 v17, v10

    invoke-static/range {v11 .. v18}, Ljava/net/Authenticator;->requestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/net/Authenticator$RequestorType;)Ljava/net/PasswordAuthentication;

    move-result-object v5

    if-nez v5, :cond_1

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 18
    :cond_1
    invoke-virtual {v5}, Ljava/net/PasswordAuthentication;->getUserName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/net/PasswordAuthentication;->getPassword()[C

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    invoke-static {v1, v2}, Le/m/d/y/n;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 19
    invoke-virtual {v0}, Le/p/a/s;->c()Le/p/a/s$b;

    move-result-object v0

    const-string v2, "Proxy-Authorization"

    invoke-virtual {v0, v2, v1}, Le/p/a/s$b;->b(Ljava/lang/String;Ljava/lang/String;)Le/p/a/s$b;

    invoke-virtual {v0}, Le/p/a/s$b;->a()Le/p/a/s;

    move-result-object v5

    goto/16 :goto_4

    :catch_0
    move-exception v0

    .line 20
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    const/4 v5, 0x0

    goto :goto_4

    .line 21
    :cond_3
    move-object/from16 v2, p0

    check-cast v2, Le/p/a/y/k/a;

    .line 22
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-virtual/range {p1 .. p1}, Le/p/a/u;->b()Ljava/util/List;

    move-result-object v3

    .line 24
    iget-object v0, v0, Le/p/a/u;->a:Le/p/a/s;

    .line 25
    iget-object v5, v0, Le/p/a/s;->a:Le/p/a/n;

    .line 26
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    :goto_2
    if-ge v6, v7, :cond_2

    .line 27
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Le/p/a/f;

    .line 28
    iget-object v9, v8, Le/p/a/f;->a:Ljava/lang/String;

    .line 29
    invoke-virtual {v4, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    goto :goto_3

    .line 30
    :cond_4
    iget-object v10, v5, Le/p/a/n;->d:Ljava/lang/String;

    .line 31
    invoke-virtual {v2, v1, v5}, Le/p/a/y/k/a;->a(Ljava/net/Proxy;Le/p/a/n;)Ljava/net/InetAddress;

    move-result-object v11

    .line 32
    iget v12, v5, Le/p/a/n;->e:I

    .line 33
    iget-object v13, v5, Le/p/a/n;->a:Ljava/lang/String;

    .line 34
    iget-object v14, v8, Le/p/a/f;->b:Ljava/lang/String;

    .line 35
    iget-object v15, v8, Le/p/a/f;->a:Ljava/lang/String;

    .line 36
    :try_start_1
    new-instance v8, Ljava/net/URL;

    iget-object v9, v5, Le/p/a/n;->i:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 37
    sget-object v17, Ljava/net/Authenticator$RequestorType;->SERVER:Ljava/net/Authenticator$RequestorType;

    move-object/from16 v16, v8

    invoke-static/range {v10 .. v17}, Ljava/net/Authenticator;->requestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/net/Authenticator$RequestorType;)Ljava/net/PasswordAuthentication;

    move-result-object v8

    if-nez v8, :cond_5

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 38
    :cond_5
    invoke-virtual {v8}, Ljava/net/PasswordAuthentication;->getUserName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/net/PasswordAuthentication;->getPassword()[C

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    invoke-static {v1, v2}, Le/m/d/y/n;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 39
    invoke-virtual {v0}, Le/p/a/s;->c()Le/p/a/s$b;

    move-result-object v0

    const-string v2, "Authorization"

    invoke-virtual {v0, v2, v1}, Le/p/a/s$b;->b(Ljava/lang/String;Ljava/lang/String;)Le/p/a/s$b;

    invoke-virtual {v0}, Le/p/a/s$b;->a()Le/p/a/s;

    move-result-object v5

    goto :goto_4

    :catch_1
    move-exception v0

    .line 40
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :goto_4
    return-object v5
.end method

.method public static d(Le/p/a/m;Ljava/lang/String;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/p/a/m;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/util/TreeMap;

    sget-object v0, Le/p/a/y/k/j;->a:Ljava/util/Comparator;

    invoke-direct {p1, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 2
    invoke-virtual {p0}, Le/p/a/m;->d()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 3
    invoke-virtual {p0, v1}, Le/p/a/m;->b(I)Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {p0, v1}, Le/p/a/m;->e(I)Ljava/lang/String;

    move-result-object v3

    .line 5
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-virtual {p1, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-eqz v5, :cond_0

    .line 7
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 8
    :cond_0
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10
    :cond_1
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
