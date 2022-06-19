.class public final Lu3/p0/g/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lu3/p0/g/m$a;

.field public b:Lu3/p0/g/m;

.field public c:I

.field public d:I

.field public e:I

.field public f:Lu3/n0;

.field public final g:Lu3/p0/g/j;

.field public final h:Lu3/a;

.field public final i:Lu3/p0/g/e;

.field public final j:Lu3/u;


# direct methods
.method public constructor <init>(Lu3/p0/g/j;Lu3/a;Lu3/p0/g/e;Lu3/u;)V
    .locals 1

    const-string v0, "connectionPool"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "address"

    invoke-static {p2, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "call"

    invoke-static {p3, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventListener"

    invoke-static {p4, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu3/p0/g/d;->g:Lu3/p0/g/j;

    iput-object p2, p0, Lu3/p0/g/d;->h:Lu3/a;

    iput-object p3, p0, Lu3/p0/g/d;->i:Lu3/p0/g/e;

    iput-object p4, p0, Lu3/p0/g/d;->j:Lu3/u;

    return-void
.end method


# virtual methods
.method public final a(IIIIZZ)Lu3/p0/g/i;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v1, p0

    .line 1
    :goto_0
    iget-object v0, v1, Lu3/p0/g/d;->i:Lu3/p0/g/e;

    .line 2
    iget-boolean v0, v0, Lu3/p0/g/e;->m:Z

    if-nez v0, :cond_27

    .line 3
    iget-object v0, v1, Lu3/p0/g/d;->i:Lu3/p0/g/e;

    .line 4
    iget-object v2, v0, Lu3/p0/g/e;->g:Lu3/p0/g/i;

    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_6

    .line 5
    monitor-enter v2

    .line 6
    :try_start_0
    iget-boolean v5, v2, Lu3/p0/g/i;->i:Z

    if-nez v5, :cond_1

    .line 7
    iget-object v5, v2, Lu3/p0/g/i;->q:Lu3/n0;

    .line 8
    iget-object v5, v5, Lu3/n0;->a:Lu3/a;

    .line 9
    iget-object v5, v5, Lu3/a;->a:Lu3/a0;

    .line 10
    invoke-virtual {p0, v5}, Lu3/p0/g/d;->b(Lu3/a0;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    move-object v5, v4

    goto :goto_2

    .line 11
    :cond_1
    :goto_1
    iget-object v5, v1, Lu3/p0/g/d;->i:Lu3/p0/g/e;

    invoke-virtual {v5}, Lu3/p0/g/e;->i()Ljava/net/Socket;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    :goto_2
    monitor-exit v2

    .line 13
    iget-object v6, v1, Lu3/p0/g/d;->i:Lu3/p0/g/e;

    .line 14
    iget-object v6, v6, Lu3/p0/g/e;->g:Lu3/p0/g/i;

    if-eqz v6, :cond_4

    if-nez v5, :cond_2

    move v0, v3

    :cond_2
    if-eqz v0, :cond_3

    goto :goto_4

    :cond_3
    const-string v0, "Check failed."

    .line 15
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    if-eqz v5, :cond_5

    .line 16
    invoke-static {v5}, Lu3/p0/c;->e(Ljava/net/Socket;)V

    .line 17
    :cond_5
    iget-object v5, v1, Lu3/p0/g/d;->j:Lu3/u;

    iget-object v6, v1, Lu3/p0/g/d;->i:Lu3/p0/g/e;

    invoke-virtual {v5, v6, v2}, Lu3/u;->h(Lu3/f;Lu3/l;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 18
    monitor-exit v2

    throw v0

    .line 19
    :cond_6
    :goto_3
    iput v0, v1, Lu3/p0/g/d;->c:I

    .line 20
    iput v0, v1, Lu3/p0/g/d;->d:I

    .line 21
    iput v0, v1, Lu3/p0/g/d;->e:I

    .line 22
    iget-object v2, v1, Lu3/p0/g/d;->g:Lu3/p0/g/j;

    iget-object v5, v1, Lu3/p0/g/d;->h:Lu3/a;

    iget-object v6, v1, Lu3/p0/g/d;->i:Lu3/p0/g/e;

    invoke-virtual {v2, v5, v6, v4, v0}, Lu3/p0/g/j;->a(Lu3/a;Lu3/p0/g/e;Ljava/util/List;Z)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 23
    iget-object v0, v1, Lu3/p0/g/d;->i:Lu3/p0/g/e;

    .line 24
    iget-object v2, v0, Lu3/p0/g/e;->g:Lu3/p0/g/i;

    if-eqz v2, :cond_7

    .line 25
    iget-object v4, v1, Lu3/p0/g/d;->j:Lu3/u;

    invoke-virtual {v4, v0, v2}, Lu3/u;->g(Lu3/f;Lu3/l;)V

    :goto_4
    move/from16 v0, p6

    goto/16 :goto_e

    .line 26
    :cond_7
    invoke-static {}, Ls1/z/c/l;->k()V

    throw v4

    .line 27
    :cond_8
    iget-object v2, v1, Lu3/p0/g/d;->f:Lu3/n0;

    if-eqz v2, :cond_9

    .line 28
    iput-object v4, v1, Lu3/p0/g/d;->f:Lu3/n0;

    goto :goto_5

    .line 29
    :cond_9
    iget-object v2, v1, Lu3/p0/g/d;->a:Lu3/p0/g/m$a;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lu3/p0/g/m$a;->a()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 30
    iget-object v0, v1, Lu3/p0/g/d;->a:Lu3/p0/g/m$a;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lu3/p0/g/m$a;->b()Lu3/n0;

    move-result-object v2

    :goto_5
    move-object v5, v4

    goto/16 :goto_d

    :cond_a
    invoke-static {}, Ls1/z/c/l;->k()V

    throw v4

    .line 31
    :cond_b
    iget-object v2, v1, Lu3/p0/g/d;->b:Lu3/p0/g/m;

    if-nez v2, :cond_c

    .line 32
    new-instance v2, Lu3/p0/g/m;

    iget-object v5, v1, Lu3/p0/g/d;->h:Lu3/a;

    iget-object v6, v1, Lu3/p0/g/d;->i:Lu3/p0/g/e;

    .line 33
    iget-object v7, v6, Lu3/p0/g/e;->p:Lu3/e0;

    .line 34
    iget-object v7, v7, Lu3/e0;->D:Lu3/p0/g/k;

    .line 35
    iget-object v8, v1, Lu3/p0/g/d;->j:Lu3/u;

    invoke-direct {v2, v5, v7, v6, v8}, Lu3/p0/g/m;-><init>(Lu3/a;Lu3/p0/g/k;Lu3/f;Lu3/u;)V

    .line 36
    iput-object v2, v1, Lu3/p0/g/d;->b:Lu3/p0/g/m;

    .line 37
    :cond_c
    invoke-virtual {v2}, Lu3/p0/g/m;->a()Z

    move-result v5

    if-eqz v5, :cond_26

    .line 38
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 39
    :cond_d
    invoke-virtual {v2}, Lu3/p0/g/m;->b()Z

    move-result v6

    if-eqz v6, :cond_19

    .line 40
    invoke-virtual {v2}, Lu3/p0/g/m;->b()Z

    move-result v6

    const-string v7, "No route to "

    if-eqz v6, :cond_18

    .line 41
    iget-object v6, v2, Lu3/p0/g/m;->a:Ljava/util/List;

    iget v8, v2, Lu3/p0/g/m;->b:I

    add-int/lit8 v9, v8, 0x1

    iput v9, v2, Lu3/p0/g/m;->b:I

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/Proxy;

    .line 42
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 43
    iput-object v8, v2, Lu3/p0/g/m;->c:Ljava/util/List;

    .line 44
    invoke-virtual {v6}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v9

    sget-object v10, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v9, v10, :cond_11

    invoke-virtual {v6}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v9

    sget-object v10, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne v9, v10, :cond_e

    goto :goto_7

    .line 45
    :cond_e
    invoke-virtual {v6}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v9

    .line 46
    instance-of v10, v9, Ljava/net/InetSocketAddress;

    if-eqz v10, :cond_10

    .line 47
    check-cast v9, Ljava/net/InetSocketAddress;

    const-string v10, "$this$socketHost"

    .line 48
    invoke-static {v9, v10}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-virtual {v9}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v10

    if-eqz v10, :cond_f

    .line 50
    invoke-virtual {v10}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v10

    const-string v11, "address.hostAddress"

    invoke-static {v10, v11}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_6

    .line 51
    :cond_f
    invoke-virtual {v9}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "hostName"

    invoke-static {v10, v11}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    :goto_6
    invoke-virtual {v9}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v9

    goto :goto_8

    :cond_10
    const-string v0, "Proxy.address() is not an InetSocketAddress: "

    .line 53
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 54
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 55
    :cond_11
    :goto_7
    iget-object v9, v2, Lu3/p0/g/m;->e:Lu3/a;

    .line 56
    iget-object v9, v9, Lu3/a;->a:Lu3/a0;

    .line 57
    iget-object v10, v9, Lu3/a0;->e:Ljava/lang/String;

    .line 58
    iget v9, v9, Lu3/a0;->f:I

    :goto_8
    const v11, 0xffff

    if-gt v3, v9, :cond_17

    if-lt v11, v9, :cond_17

    .line 59
    invoke-virtual {v6}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v7

    sget-object v11, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne v7, v11, :cond_12

    .line 60
    invoke-static {v10, v9}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 61
    :cond_12
    iget-object v7, v2, Lu3/p0/g/m;->h:Lu3/u;

    iget-object v11, v2, Lu3/p0/g/m;->g:Lu3/f;

    invoke-virtual {v7, v11, v10}, Lu3/u;->j(Lu3/f;Ljava/lang/String;)V

    .line 62
    iget-object v7, v2, Lu3/p0/g/m;->e:Lu3/a;

    .line 63
    iget-object v7, v7, Lu3/a;->d:Lu3/t;

    .line 64
    invoke-interface {v7, v10}, Lu3/t;->lookup(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 65
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_16

    .line 66
    iget-object v11, v2, Lu3/p0/g/m;->h:Lu3/u;

    iget-object v12, v2, Lu3/p0/g/m;->g:Lu3/f;

    invoke-virtual {v11, v12, v10, v7}, Lu3/u;->i(Lu3/f;Ljava/lang/String;Ljava/util/List;)V

    .line 67
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_13

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/net/InetAddress;

    .line 68
    new-instance v11, Ljava/net/InetSocketAddress;

    invoke-direct {v11, v10, v9}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 69
    :cond_13
    :goto_a
    iget-object v7, v2, Lu3/p0/g/m;->c:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_15

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/net/InetSocketAddress;

    .line 70
    new-instance v9, Lu3/n0;

    iget-object v10, v2, Lu3/p0/g/m;->e:Lu3/a;

    invoke-direct {v9, v10, v6, v8}, Lu3/n0;-><init>(Lu3/a;Ljava/net/Proxy;Ljava/net/InetSocketAddress;)V

    .line 71
    iget-object v8, v2, Lu3/p0/g/m;->f:Lu3/p0/g/k;

    .line 72
    monitor-enter v8

    :try_start_1
    const-string v10, "route"

    invoke-static {v9, v10}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    iget-object v10, v8, Lu3/p0/g/k;->a:Ljava/util/Set;

    invoke-interface {v10, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v8

    if-eqz v10, :cond_14

    .line 74
    iget-object v8, v2, Lu3/p0/g/m;->d:Ljava/util/List;

    invoke-interface {v8, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 75
    :cond_14
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :catchall_1
    move-exception v0

    .line 76
    monitor-exit v8

    throw v0

    .line 77
    :cond_15
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    xor-int/2addr v6, v3

    if-eqz v6, :cond_d

    goto :goto_c

    .line 78
    :cond_16
    new-instance v0, Ljava/net/UnknownHostException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v2, Lu3/p0/g/m;->e:Lu3/a;

    .line 79
    iget-object v2, v2, Lu3/a;->d:Lu3/t;

    .line 80
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " returned no addresses for "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_17
    new-instance v0, Ljava/net/SocketException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "; port is out of range"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_18
    new-instance v0, Ljava/net/SocketException;

    .line 83
    invoke-static {v7}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lu3/p0/g/m;->e:Lu3/a;

    .line 84
    iget-object v4, v4, Lu3/a;->a:Lu3/a0;

    .line 85
    iget-object v4, v4, Lu3/a0;->e:Ljava/lang/String;

    .line 86
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "; exhausted proxy configurations: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lu3/p0/g/m;->a:Ljava/util/List;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 87
    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_19
    :goto_c
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 89
    iget-object v6, v2, Lu3/p0/g/m;->d:Ljava/util/List;

    invoke-static {v5, v6}, Ls1/u/i;->b(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 90
    iget-object v2, v2, Lu3/p0/g/m;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 91
    :cond_1a
    new-instance v2, Lu3/p0/g/m$a;

    invoke-direct {v2, v5}, Lu3/p0/g/m$a;-><init>(Ljava/util/List;)V

    .line 92
    iput-object v2, v1, Lu3/p0/g/d;->a:Lu3/p0/g/m$a;

    .line 93
    iget-object v5, v2, Lu3/p0/g/m$a;->b:Ljava/util/List;

    .line 94
    iget-object v6, v1, Lu3/p0/g/d;->i:Lu3/p0/g/e;

    .line 95
    iget-boolean v6, v6, Lu3/p0/g/e;->m:Z

    if-nez v6, :cond_25

    .line 96
    iget-object v6, v1, Lu3/p0/g/d;->g:Lu3/p0/g/j;

    iget-object v7, v1, Lu3/p0/g/d;->h:Lu3/a;

    iget-object v8, v1, Lu3/p0/g/d;->i:Lu3/p0/g/e;

    invoke-virtual {v6, v7, v8, v5, v0}, Lu3/p0/g/j;->a(Lu3/a;Lu3/p0/g/e;Ljava/util/List;Z)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 97
    iget-object v0, v1, Lu3/p0/g/d;->i:Lu3/p0/g/e;

    .line 98
    iget-object v2, v0, Lu3/p0/g/e;->g:Lu3/p0/g/i;

    if-eqz v2, :cond_1b

    .line 99
    iget-object v4, v1, Lu3/p0/g/d;->j:Lu3/u;

    invoke-virtual {v4, v0, v2}, Lu3/u;->g(Lu3/f;Lu3/l;)V

    goto/16 :goto_4

    .line 100
    :cond_1b
    invoke-static {}, Ls1/z/c/l;->k()V

    throw v4

    .line 101
    :cond_1c
    invoke-virtual {v2}, Lu3/p0/g/m$a;->b()Lu3/n0;

    move-result-object v2

    .line 102
    :goto_d
    new-instance v14, Lu3/p0/g/i;

    iget-object v0, v1, Lu3/p0/g/d;->g:Lu3/p0/g/j;

    invoke-direct {v14, v0, v2}, Lu3/p0/g/i;-><init>(Lu3/p0/g/j;Lu3/n0;)V

    .line 103
    iget-object v0, v1, Lu3/p0/g/d;->i:Lu3/p0/g/e;

    .line 104
    iput-object v14, v0, Lu3/p0/g/e;->o:Lu3/p0/g/i;

    .line 105
    :try_start_2
    iget-object v12, v1, Lu3/p0/g/d;->i:Lu3/p0/g/e;

    .line 106
    iget-object v13, v1, Lu3/p0/g/d;->j:Lu3/u;

    move-object v6, v14

    move/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    .line 107
    invoke-virtual/range {v6 .. v13}, Lu3/p0/g/i;->c(IIIIZLu3/f;Lu3/u;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 108
    iget-object v0, v1, Lu3/p0/g/d;->i:Lu3/p0/g/e;

    .line 109
    iput-object v4, v0, Lu3/p0/g/e;->o:Lu3/p0/g/i;

    .line 110
    iget-object v0, v1, Lu3/p0/g/d;->i:Lu3/p0/g/e;

    .line 111
    iget-object v0, v0, Lu3/p0/g/e;->p:Lu3/e0;

    .line 112
    iget-object v6, v0, Lu3/e0;->D:Lu3/p0/g/k;

    .line 113
    iget-object v0, v14, Lu3/p0/g/i;->q:Lu3/n0;

    .line 114
    monitor-enter v6

    :try_start_3
    const-string v7, "route"

    invoke-static {v0, v7}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    iget-object v7, v6, Lu3/p0/g/k;->a:Ljava/util/Set;

    invoke-interface {v7, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 116
    monitor-exit v6

    .line 117
    iget-object v0, v1, Lu3/p0/g/d;->g:Lu3/p0/g/j;

    iget-object v6, v1, Lu3/p0/g/d;->h:Lu3/a;

    iget-object v7, v1, Lu3/p0/g/d;->i:Lu3/p0/g/e;

    invoke-virtual {v0, v6, v7, v5, v3}, Lu3/p0/g/j;->a(Lu3/a;Lu3/p0/g/e;Ljava/util/List;Z)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 118
    iget-object v0, v1, Lu3/p0/g/d;->i:Lu3/p0/g/e;

    .line 119
    iget-object v0, v0, Lu3/p0/g/e;->g:Lu3/p0/g/i;

    if-eqz v0, :cond_1d

    .line 120
    iput-object v2, v1, Lu3/p0/g/d;->f:Lu3/n0;

    .line 121
    invoke-virtual {v14}, Lu3/p0/g/i;->m()Ljava/net/Socket;

    move-result-object v2

    invoke-static {v2}, Lu3/p0/c;->e(Ljava/net/Socket;)V

    .line 122
    iget-object v2, v1, Lu3/p0/g/d;->j:Lu3/u;

    iget-object v4, v1, Lu3/p0/g/d;->i:Lu3/p0/g/e;

    invoke-virtual {v2, v4, v0}, Lu3/u;->g(Lu3/f;Lu3/l;)V

    move-object v2, v0

    goto/16 :goto_4

    .line 123
    :cond_1d
    invoke-static {}, Ls1/z/c/l;->k()V

    throw v4

    .line 124
    :cond_1e
    monitor-enter v14

    .line 125
    :try_start_4
    iget-object v0, v1, Lu3/p0/g/d;->g:Lu3/p0/g/j;

    .line 126
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "connection"

    invoke-static {v14, v2}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    sget-object v2, Lu3/p0/c;->a:[B

    .line 128
    iget-object v2, v0, Lu3/p0/g/j;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2, v14}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 129
    iget-object v2, v0, Lu3/p0/g/j;->b:Lu3/p0/f/c;

    iget-object v0, v0, Lu3/p0/g/j;->c:Lu3/p0/g/j$a;

    const-wide/16 v4, 0x0

    const/4 v6, 0x2

    invoke-static {v2, v0, v4, v5, v6}, Lu3/p0/f/c;->d(Lu3/p0/f/c;Lu3/p0/f/a;JI)V

    .line 130
    iget-object v0, v1, Lu3/p0/g/d;->i:Lu3/p0/g/e;

    invoke-virtual {v0, v14}, Lu3/p0/g/e;->b(Lu3/p0/g/i;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 131
    monitor-exit v14

    .line 132
    iget-object v0, v1, Lu3/p0/g/d;->j:Lu3/u;

    iget-object v2, v1, Lu3/p0/g/d;->i:Lu3/p0/g/e;

    invoke-virtual {v0, v2, v14}, Lu3/u;->g(Lu3/f;Lu3/l;)V

    move/from16 v0, p6

    move-object v2, v14

    .line 133
    :goto_e
    invoke-virtual {v2, v0}, Lu3/p0/g/i;->i(Z)Z

    move-result v4

    if-eqz v4, :cond_1f

    return-object v2

    .line 134
    :cond_1f
    invoke-virtual {v2}, Lu3/p0/g/i;->l()V

    .line 135
    iget-object v2, v1, Lu3/p0/g/d;->f:Lu3/n0;

    if-eqz v2, :cond_20

    goto/16 :goto_0

    .line 136
    :cond_20
    iget-object v2, v1, Lu3/p0/g/d;->a:Lu3/p0/g/m$a;

    if-eqz v2, :cond_21

    invoke-virtual {v2}, Lu3/p0/g/m$a;->a()Z

    move-result v2

    goto :goto_f

    :cond_21
    move v2, v3

    :goto_f
    if-eqz v2, :cond_22

    goto/16 :goto_0

    .line 137
    :cond_22
    iget-object v2, v1, Lu3/p0/g/d;->b:Lu3/p0/g/m;

    if-eqz v2, :cond_23

    invoke-virtual {v2}, Lu3/p0/g/m;->a()Z

    move-result v3

    :cond_23
    if-eqz v3, :cond_24

    goto/16 :goto_0

    .line 138
    :cond_24
    new-instance v0, Ljava/io/IOException;

    const-string v2, "exhausted all routes"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_2
    move-exception v0

    .line 139
    monitor-exit v14

    throw v0

    :catchall_3
    move-exception v0

    .line 140
    monitor-exit v6

    throw v0

    :catchall_4
    move-exception v0

    .line 141
    iget-object v2, v1, Lu3/p0/g/d;->i:Lu3/p0/g/e;

    .line 142
    iput-object v4, v2, Lu3/p0/g/e;->o:Lu3/p0/g/i;

    .line 143
    throw v0

    .line 144
    :cond_25
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Canceled"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_26
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 146
    :cond_27
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Canceled"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b(Lu3/a0;)Z
    .locals 3

    const-string v0, "url"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lu3/p0/g/d;->h:Lu3/a;

    .line 2
    iget-object v0, v0, Lu3/a;->a:Lu3/a0;

    .line 3
    iget v1, p1, Lu3/a0;->f:I

    iget v2, v0, Lu3/a0;->f:I

    if-ne v1, v2, :cond_0

    .line 4
    iget-object p1, p1, Lu3/a0;->e:Ljava/lang/String;

    iget-object v0, v0, Lu3/a0;->e:Ljava/lang/String;

    .line 5
    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final c(Ljava/io/IOException;)V
    .locals 2

    const-string v0, "e"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lu3/p0/g/d;->f:Lu3/n0;

    .line 2
    instance-of v0, p1, Lu3/p0/j/u;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lu3/p0/j/u;

    iget-object v0, v0, Lu3/p0/j/u;->a:Lu3/p0/j/b;

    sget-object v1, Lu3/p0/j/b;->f:Lu3/p0/j/b;

    if-ne v0, v1, :cond_0

    .line 3
    iget p1, p0, Lu3/p0/g/d;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lu3/p0/g/d;->c:I

    goto :goto_0

    .line 4
    :cond_0
    instance-of p1, p1, Lu3/p0/j/a;

    if-eqz p1, :cond_1

    .line 5
    iget p1, p0, Lu3/p0/g/d;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lu3/p0/g/d;->d:I

    goto :goto_0

    .line 6
    :cond_1
    iget p1, p0, Lu3/p0/g/d;->e:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lu3/p0/g/d;->e:I

    :goto_0
    return-void
.end method
