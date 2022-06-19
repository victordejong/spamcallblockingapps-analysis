.class public final Lu3/p0/d/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu3/c;


# instance fields
.field public final b:Lu3/t;


# direct methods
.method public constructor <init>(Lu3/t;I)V
    .locals 0

    and-int/lit8 p1, p2, 0x1

    if-eqz p1, :cond_0

    .line 1
    sget-object p1, Lu3/t;->a:Lu3/t;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string p2, "defaultDns"

    .line 2
    invoke-static {p1, p2}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu3/p0/d/b;->b:Lu3/t;

    return-void
.end method


# virtual methods
.method public a(Lu3/n0;Lu3/k0;)Lu3/g0;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v0, "response"

    invoke-static {v3, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v4, v3, Lu3/k0;->g:Lu3/z;

    .line 2
    iget v0, v3, Lu3/k0;->e:I

    const/4 v5, 0x1

    const/16 v6, 0x191

    const/4 v7, 0x0

    const/16 v8, 0x197

    if-eq v0, v6, :cond_1

    if-eq v0, v8, :cond_0

    .line 3
    sget-object v0, Ls1/u/s;->a:Ls1/u/s;

    goto :goto_3

    :cond_0
    const-string v0, "Proxy-Authenticate"

    goto :goto_0

    :cond_1
    const-string v0, "WWW-Authenticate"

    :goto_0
    move-object v6, v0

    .line 4
    sget-object v0, Lu3/p0/h/e;->a:Lv3/i;

    const-string v0, "$this$parseChallenges"

    invoke-static {v4, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "headerName"

    invoke-static {v6, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-virtual {v4}, Lu3/z;->size()I

    move-result v10

    move v11, v7

    :goto_1
    if-ge v11, v10, :cond_3

    .line 7
    invoke-virtual {v4, v11}, Lu3/z;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0, v5}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    new-instance v0, Lv3/f;

    invoke-direct {v0}, Lv3/f;-><init>()V

    invoke-virtual {v4, v11}, Lu3/z;->d(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lv3/f;->K0(Ljava/lang/String;)Lv3/f;

    .line 9
    :try_start_0
    invoke-static {v0, v9}, Lu3/p0/h/e;->b(Lv3/f;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v12, v0

    .line 10
    sget-object v0, Lu3/p0/l/h;->c:Lu3/p0/l/h$a;

    .line 11
    sget-object v0, Lu3/p0/l/h;->a:Lu3/p0/l/h;

    const/4 v13, 0x5

    const-string v14, "Unable to parse challenge"

    .line 12
    invoke-virtual {v0, v14, v13, v12}, Lu3/p0/l/h;->i(Ljava/lang/String;ILjava/lang/Throwable;)V

    :cond_2
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_3
    move-object v0, v9

    .line 13
    :goto_3
    iget-object v4, v3, Lu3/k0;->b:Lu3/g0;

    .line 14
    iget-object v6, v4, Lu3/g0;->b:Lu3/a0;

    .line 15
    iget v3, v3, Lu3/k0;->e:I

    if-ne v3, v8, :cond_4

    move v7, v5

    :cond_4
    if-eqz v2, :cond_5

    .line 16
    iget-object v3, v2, Lu3/n0;->b:Ljava/net/Proxy;

    if-eqz v3, :cond_5

    goto :goto_4

    .line 17
    :cond_5
    sget-object v3, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    .line 18
    :goto_4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lu3/j;

    .line 19
    iget-object v9, v8, Lu3/j;->b:Ljava/lang/String;

    const-string v10, "Basic"

    .line 20
    invoke-static {v10, v9, v5}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    if-nez v9, :cond_7

    goto :goto_5

    :cond_7
    if-eqz v2, :cond_8

    .line 21
    iget-object v9, v2, Lu3/n0;->a:Lu3/a;

    if-eqz v9, :cond_8

    .line 22
    iget-object v9, v9, Lu3/a;->d:Lu3/t;

    if-eqz v9, :cond_8

    goto :goto_6

    .line 23
    :cond_8
    iget-object v9, v1, Lu3/p0/d/b;->b:Lu3/t;

    :goto_6
    const-string v10, "realm"

    const-string v11, "proxy"

    if-eqz v7, :cond_a

    .line 24
    invoke-virtual {v3}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v12

    if-eqz v12, :cond_9

    check-cast v12, Ljava/net/InetSocketAddress;

    .line 25
    invoke-virtual {v12}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v13

    .line 26
    invoke-static {v3, v11}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3, v6, v9}, Lu3/p0/d/b;->b(Ljava/net/Proxy;Lu3/a0;Lu3/t;)Ljava/net/InetAddress;

    move-result-object v14

    .line 27
    invoke-virtual {v12}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v15

    .line 28
    iget-object v9, v6, Lu3/a0;->b:Ljava/lang/String;

    .line 29
    iget-object v11, v8, Lu3/j;->a:Ljava/util/Map;

    invoke-interface {v11, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v17, v10

    check-cast v17, Ljava/lang/String;

    .line 30
    iget-object v10, v8, Lu3/j;->b:Ljava/lang/String;

    .line 31
    invoke-virtual {v6}, Lu3/a0;->k()Ljava/net/URL;

    move-result-object v19

    .line 32
    sget-object v20, Ljava/net/Authenticator$RequestorType;->PROXY:Ljava/net/Authenticator$RequestorType;

    move-object/from16 v16, v9

    move-object/from16 v18, v10

    .line 33
    invoke-static/range {v13 .. v20}, Ljava/net/Authenticator;->requestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/net/Authenticator$RequestorType;)Ljava/net/PasswordAuthentication;

    move-result-object v9

    goto :goto_7

    .line 34
    :cond_9
    new-instance v0, Ls1/p;

    const-string v2, "null cannot be cast to non-null type java.net.InetSocketAddress"

    invoke-direct {v0, v2}, Ls1/p;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_a
    iget-object v12, v6, Lu3/a0;->e:Ljava/lang/String;

    .line 36
    invoke-static {v3, v11}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3, v6, v9}, Lu3/p0/d/b;->b(Ljava/net/Proxy;Lu3/a0;Lu3/t;)Ljava/net/InetAddress;

    move-result-object v11

    .line 37
    iget v13, v6, Lu3/a0;->f:I

    .line 38
    iget-object v14, v6, Lu3/a0;->b:Ljava/lang/String;

    .line 39
    iget-object v9, v8, Lu3/j;->a:Ljava/util/Map;

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v15, v9

    check-cast v15, Ljava/lang/String;

    .line 40
    iget-object v10, v8, Lu3/j;->b:Ljava/lang/String;

    .line 41
    invoke-virtual {v6}, Lu3/a0;->k()Ljava/net/URL;

    move-result-object v16

    .line 42
    sget-object v17, Ljava/net/Authenticator$RequestorType;->SERVER:Ljava/net/Authenticator$RequestorType;

    move-object v9, v12

    move-object/from16 v18, v10

    move-object v10, v11

    move v11, v13

    move-object v12, v14

    move-object v13, v15

    move-object/from16 v14, v18

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    .line 43
    invoke-static/range {v9 .. v16}, Ljava/net/Authenticator;->requestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/net/Authenticator$RequestorType;)Ljava/net/PasswordAuthentication;

    move-result-object v9

    :goto_7
    if-eqz v9, :cond_6

    if-eqz v7, :cond_b

    const-string v0, "Proxy-Authorization"

    goto :goto_8

    :cond_b
    const-string v0, "Authorization"

    .line 44
    :goto_8
    invoke-virtual {v9}, Ljava/net/PasswordAuthentication;->getUserName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "auth.userName"

    invoke-static {v2, v3}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/net/PasswordAuthentication;->getPassword()[C

    move-result-object v3

    const-string v5, "auth.password"

    invoke-static {v3, v5}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>([C)V

    .line 45
    iget-object v3, v8, Lu3/j;->a:Ljava/util/Map;

    const-string v6, "charset"

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_c

    .line 46
    :try_start_1
    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    const-string v7, "Charset.forName(charset)"

    invoke-static {v3, v7}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_9

    .line 47
    :catch_1
    :cond_c
    sget-object v3, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    const-string v7, "ISO_8859_1"

    invoke-static {v3, v7}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_9
    const-string v7, "username"

    .line 48
    invoke-static {v2, v7}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "password"

    invoke-static {v5, v7}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v6}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3a

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 50
    sget-object v5, Lv3/i;->e:Lv3/i$a;

    const-string v5, "$this$encode"

    .line 51
    invoke-static {v2, v5}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v6}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    const-string v3, "(this as java.lang.String).getBytes(charset)"

    invoke-static {v2, v3}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lv3/i;

    invoke-direct {v3, v2}, Lv3/i;-><init>([B)V

    .line 53
    invoke-virtual {v3}, Lv3/i;->a()Ljava/lang/String;

    move-result-object v2

    .line 54
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Basic "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "request"

    .line 55
    invoke-static {v4, v3}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 57
    iget-object v6, v4, Lu3/g0;->b:Lu3/a0;

    .line 58
    iget-object v7, v4, Lu3/g0;->c:Ljava/lang/String;

    .line 59
    iget-object v9, v4, Lu3/g0;->e:Lu3/j0;

    .line 60
    iget-object v3, v4, Lu3/g0;->f:Ljava/util/Map;

    .line 61
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 62
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    goto :goto_a

    .line 63
    :cond_d
    iget-object v3, v4, Lu3/g0;->f:Ljava/util/Map;

    .line 64
    invoke-static {v3}, Ls1/u/i;->b1(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    .line 65
    :goto_a
    iget-object v4, v4, Lu3/g0;->d:Lu3/z;

    .line 66
    invoke-virtual {v4}, Lu3/z;->c()Lu3/z$a;

    move-result-object v4

    const-string v5, "name"

    .line 67
    invoke-static {v0, v5}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "value"

    invoke-static {v2, v8}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-static {v0, v5}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v8}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    sget-object v5, Lu3/z;->b:Lu3/z$b;

    .line 70
    invoke-virtual {v5, v0}, Lu3/z$b;->a(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v5, v2, v0}, Lu3/z$b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-virtual {v4, v0}, Lu3/z$a;->f(Ljava/lang/String;)Lu3/z$a;

    .line 73
    invoke-virtual {v4, v0, v2}, Lu3/z$a;->c(Ljava/lang/String;Ljava/lang/String;)Lu3/z$a;

    if-eqz v6, :cond_e

    .line 74
    invoke-virtual {v4}, Lu3/z$a;->d()Lu3/z;

    move-result-object v8

    .line 75
    invoke-static {v3}, Lu3/p0/c;->y(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v10

    .line 76
    new-instance v0, Lu3/g0;

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Lu3/g0;-><init>(Lu3/a0;Ljava/lang/String;Lu3/z;Lu3/j0;Ljava/util/Map;)V

    return-object v0

    .line 77
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "url == null"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public final b(Ljava/net/Proxy;Lu3/a0;Lu3/t;)Ljava/net/InetAddress;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lu3/p0/d/a;->a:[I

    invoke-virtual {v0}, Ljava/net/Proxy$Type;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 2
    :goto_0
    invoke-virtual {p1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Ljava/net/InetSocketAddress;

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p1

    const-string p2, "(address() as InetSocketAddress).address"

    invoke-static {p1, p2}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ls1/p;

    const-string p2, "null cannot be cast to non-null type java.net.InetSocketAddress"

    invoke-direct {p1, p2}, Ls1/p;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, p2, Lu3/a0;->e:Ljava/lang/String;

    .line 4
    invoke-interface {p3, p1}, Lu3/t;->lookup(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/net/InetAddress;

    :goto_1
    return-object p1
.end method
