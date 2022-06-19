.class public final Lokhttp3/internal/connection/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lokhttp3/internal/connection/j$b;

.field private b:Lokhttp3/internal/connection/j;

.field private c:I

.field private d:I

.field private e:I

.field private f:Lm/i0;

.field private final g:Lokhttp3/internal/connection/h;

.field private final h:Lm/a;

.field private final i:Lokhttp3/internal/connection/e;

.field private final j:Lm/u;


# direct methods
.method public constructor <init>(Lokhttp3/internal/connection/h;Lm/a;Lokhttp3/internal/connection/e;Lm/u;)V
    .locals 1

    const-string v0, "connectionPool"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "address"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "call"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventListener"

    invoke-static {p4, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/connection/d;->g:Lokhttp3/internal/connection/h;

    iput-object p2, p0, Lokhttp3/internal/connection/d;->h:Lm/a;

    iput-object p3, p0, Lokhttp3/internal/connection/d;->i:Lokhttp3/internal/connection/e;

    iput-object p4, p0, Lokhttp3/internal/connection/d;->j:Lm/u;

    return-void
.end method

.method private final b(IIIIZ)Lokhttp3/internal/connection/g;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v1, p0

    .line 1
    iget-object v0, v1, Lokhttp3/internal/connection/d;->i:Lokhttp3/internal/connection/e;

    invoke-virtual {v0}, Lokhttp3/internal/connection/e;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_14

    .line 2
    iget-object v0, v1, Lokhttp3/internal/connection/d;->i:Lokhttp3/internal/connection/e;

    invoke-virtual {v0}, Lokhttp3/internal/connection/e;->m()Lokhttp3/internal/connection/g;

    move-result-object v2

    const/4 v0, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_6

    .line 3
    monitor-enter v2

    .line 4
    :try_start_0
    invoke-virtual {v2}, Lokhttp3/internal/connection/g;->q()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v2}, Lokhttp3/internal/connection/g;->A()Lm/i0;

    move-result-object v5

    invoke-virtual {v5}, Lm/i0;->a()Lm/a;

    move-result-object v5

    invoke-virtual {v5}, Lm/a;->l()Lm/y;

    move-result-object v5

    invoke-virtual {p0, v5}, Lokhttp3/internal/connection/d;->g(Lm/y;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    move-object v5, v4

    goto :goto_1

    .line 5
    :cond_1
    :goto_0
    iget-object v5, v1, Lokhttp3/internal/connection/d;->i:Lokhttp3/internal/connection/e;

    invoke-virtual {v5}, Lokhttp3/internal/connection/e;->w()Ljava/net/Socket;

    move-result-object v5

    .line 6
    :goto_1
    sget-object v6, Lkotlin/r;->a:Lkotlin/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit v2

    .line 8
    iget-object v6, v1, Lokhttp3/internal/connection/d;->i:Lokhttp3/internal/connection/e;

    invoke-virtual {v6}, Lokhttp3/internal/connection/e;->m()Lokhttp3/internal/connection/g;

    move-result-object v6

    if-eqz v6, :cond_4

    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_3

    return-object v2

    :cond_3
    const-string v0, "Check failed."

    .line 9
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    if-eqz v5, :cond_5

    .line 10
    invoke-static {v5}, Lm/k0/b;->k(Ljava/net/Socket;)V

    .line 11
    :cond_5
    iget-object v5, v1, Lokhttp3/internal/connection/d;->j:Lm/u;

    iget-object v6, v1, Lokhttp3/internal/connection/d;->i:Lokhttp3/internal/connection/e;

    invoke-virtual {v5, v6, v2}, Lm/u;->l(Lm/f;Lm/k;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 12
    monitor-exit v2

    throw v0

    .line 13
    :cond_6
    :goto_3
    iput v3, v1, Lokhttp3/internal/connection/d;->c:I

    .line 14
    iput v3, v1, Lokhttp3/internal/connection/d;->d:I

    .line 15
    iput v3, v1, Lokhttp3/internal/connection/d;->e:I

    .line 16
    iget-object v2, v1, Lokhttp3/internal/connection/d;->g:Lokhttp3/internal/connection/h;

    iget-object v5, v1, Lokhttp3/internal/connection/d;->h:Lm/a;

    iget-object v6, v1, Lokhttp3/internal/connection/d;->i:Lokhttp3/internal/connection/e;

    invoke-virtual {v2, v5, v6, v4, v3}, Lokhttp3/internal/connection/h;->a(Lm/a;Lokhttp3/internal/connection/e;Ljava/util/List;Z)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 17
    iget-object v0, v1, Lokhttp3/internal/connection/d;->i:Lokhttp3/internal/connection/e;

    invoke-virtual {v0}, Lokhttp3/internal/connection/e;->m()Lokhttp3/internal/connection/g;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 18
    iget-object v2, v1, Lokhttp3/internal/connection/d;->j:Lm/u;

    iget-object v3, v1, Lokhttp3/internal/connection/d;->i:Lokhttp3/internal/connection/e;

    invoke-virtual {v2, v3, v0}, Lm/u;->k(Lm/f;Lm/k;)V

    return-object v0

    .line 19
    :cond_7
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v4

    .line 20
    :cond_8
    iget-object v2, v1, Lokhttp3/internal/connection/d;->f:Lm/i0;

    if-eqz v2, :cond_a

    if-eqz v2, :cond_9

    .line 21
    iput-object v4, v1, Lokhttp3/internal/connection/d;->f:Lm/i0;

    :goto_4
    move-object v5, v4

    goto :goto_5

    .line 22
    :cond_9
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v4

    .line 23
    :cond_a
    iget-object v2, v1, Lokhttp3/internal/connection/d;->a:Lokhttp3/internal/connection/j$b;

    if-eqz v2, :cond_d

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Lokhttp3/internal/connection/j$b;->b()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 24
    iget-object v2, v1, Lokhttp3/internal/connection/d;->a:Lokhttp3/internal/connection/j$b;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lokhttp3/internal/connection/j$b;->c()Lm/i0;

    move-result-object v2

    goto :goto_4

    :cond_b
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v4

    .line 25
    :cond_c
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v4

    .line 26
    :cond_d
    iget-object v2, v1, Lokhttp3/internal/connection/d;->b:Lokhttp3/internal/connection/j;

    if-nez v2, :cond_e

    .line 27
    new-instance v2, Lokhttp3/internal/connection/j;

    iget-object v5, v1, Lokhttp3/internal/connection/d;->h:Lm/a;

    iget-object v6, v1, Lokhttp3/internal/connection/d;->i:Lokhttp3/internal/connection/e;

    invoke-virtual {v6}, Lokhttp3/internal/connection/e;->l()Lm/c0;

    move-result-object v6

    invoke-virtual {v6}, Lm/c0;->u()Lokhttp3/internal/connection/i;

    move-result-object v6

    iget-object v7, v1, Lokhttp3/internal/connection/d;->i:Lokhttp3/internal/connection/e;

    iget-object v8, v1, Lokhttp3/internal/connection/d;->j:Lm/u;

    invoke-direct {v2, v5, v6, v7, v8}, Lokhttp3/internal/connection/j;-><init>(Lm/a;Lokhttp3/internal/connection/i;Lm/f;Lm/u;)V

    .line 28
    iput-object v2, v1, Lokhttp3/internal/connection/d;->b:Lokhttp3/internal/connection/j;

    .line 29
    :cond_e
    invoke-virtual {v2}, Lokhttp3/internal/connection/j;->d()Lokhttp3/internal/connection/j$b;

    move-result-object v2

    .line 30
    iput-object v2, v1, Lokhttp3/internal/connection/d;->a:Lokhttp3/internal/connection/j$b;

    .line 31
    invoke-virtual {v2}, Lokhttp3/internal/connection/j$b;->a()Ljava/util/List;

    move-result-object v5

    .line 32
    iget-object v6, v1, Lokhttp3/internal/connection/d;->i:Lokhttp3/internal/connection/e;

    invoke-virtual {v6}, Lokhttp3/internal/connection/e;->isCanceled()Z

    move-result v6

    if-nez v6, :cond_13

    .line 33
    iget-object v6, v1, Lokhttp3/internal/connection/d;->g:Lokhttp3/internal/connection/h;

    iget-object v7, v1, Lokhttp3/internal/connection/d;->h:Lm/a;

    iget-object v8, v1, Lokhttp3/internal/connection/d;->i:Lokhttp3/internal/connection/e;

    invoke-virtual {v6, v7, v8, v5, v3}, Lokhttp3/internal/connection/h;->a(Lm/a;Lokhttp3/internal/connection/e;Ljava/util/List;Z)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 34
    iget-object v0, v1, Lokhttp3/internal/connection/d;->i:Lokhttp3/internal/connection/e;

    invoke-virtual {v0}, Lokhttp3/internal/connection/e;->m()Lokhttp3/internal/connection/g;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 35
    iget-object v2, v1, Lokhttp3/internal/connection/d;->j:Lm/u;

    iget-object v3, v1, Lokhttp3/internal/connection/d;->i:Lokhttp3/internal/connection/e;

    invoke-virtual {v2, v3, v0}, Lm/u;->k(Lm/f;Lm/k;)V

    return-object v0

    .line 36
    :cond_f
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v4

    .line 37
    :cond_10
    invoke-virtual {v2}, Lokhttp3/internal/connection/j$b;->c()Lm/i0;

    move-result-object v2

    .line 38
    :goto_5
    new-instance v3, Lokhttp3/internal/connection/g;

    iget-object v6, v1, Lokhttp3/internal/connection/d;->g:Lokhttp3/internal/connection/h;

    invoke-direct {v3, v6, v2}, Lokhttp3/internal/connection/g;-><init>(Lokhttp3/internal/connection/h;Lm/i0;)V

    .line 39
    iget-object v6, v1, Lokhttp3/internal/connection/d;->i:Lokhttp3/internal/connection/e;

    invoke-virtual {v6, v3}, Lokhttp3/internal/connection/e;->y(Lokhttp3/internal/connection/g;)V

    .line 40
    :try_start_1
    iget-object v12, v1, Lokhttp3/internal/connection/d;->i:Lokhttp3/internal/connection/e;

    .line 41
    iget-object v13, v1, Lokhttp3/internal/connection/d;->j:Lm/u;

    move-object v6, v3

    move v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    .line 42
    invoke-virtual/range {v6 .. v13}, Lokhttp3/internal/connection/g;->g(IIIIZLm/f;Lm/u;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 43
    iget-object v6, v1, Lokhttp3/internal/connection/d;->i:Lokhttp3/internal/connection/e;

    invoke-virtual {v6, v4}, Lokhttp3/internal/connection/e;->y(Lokhttp3/internal/connection/g;)V

    .line 44
    iget-object v6, v1, Lokhttp3/internal/connection/d;->i:Lokhttp3/internal/connection/e;

    invoke-virtual {v6}, Lokhttp3/internal/connection/e;->l()Lm/c0;

    move-result-object v6

    invoke-virtual {v6}, Lm/c0;->u()Lokhttp3/internal/connection/i;

    move-result-object v6

    invoke-virtual {v3}, Lokhttp3/internal/connection/g;->A()Lm/i0;

    move-result-object v7

    invoke-virtual {v6, v7}, Lokhttp3/internal/connection/i;->a(Lm/i0;)V

    .line 45
    iget-object v6, v1, Lokhttp3/internal/connection/d;->g:Lokhttp3/internal/connection/h;

    iget-object v7, v1, Lokhttp3/internal/connection/d;->h:Lm/a;

    iget-object v8, v1, Lokhttp3/internal/connection/d;->i:Lokhttp3/internal/connection/e;

    invoke-virtual {v6, v7, v8, v5, v0}, Lokhttp3/internal/connection/h;->a(Lm/a;Lokhttp3/internal/connection/e;Ljava/util/List;Z)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 46
    iget-object v0, v1, Lokhttp3/internal/connection/d;->i:Lokhttp3/internal/connection/e;

    invoke-virtual {v0}, Lokhttp3/internal/connection/e;->m()Lokhttp3/internal/connection/g;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 47
    iput-object v2, v1, Lokhttp3/internal/connection/d;->f:Lm/i0;

    .line 48
    invoke-virtual {v3}, Lokhttp3/internal/connection/g;->E()Ljava/net/Socket;

    move-result-object v2

    invoke-static {v2}, Lm/k0/b;->k(Ljava/net/Socket;)V

    .line 49
    iget-object v2, v1, Lokhttp3/internal/connection/d;->j:Lm/u;

    iget-object v3, v1, Lokhttp3/internal/connection/d;->i:Lokhttp3/internal/connection/e;

    invoke-virtual {v2, v3, v0}, Lm/u;->k(Lm/f;Lm/k;)V

    return-object v0

    .line 50
    :cond_11
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v4

    .line 51
    :cond_12
    monitor-enter v3

    .line 52
    :try_start_2
    iget-object v0, v1, Lokhttp3/internal/connection/d;->g:Lokhttp3/internal/connection/h;

    invoke-virtual {v0, v3}, Lokhttp3/internal/connection/h;->e(Lokhttp3/internal/connection/g;)V

    .line 53
    iget-object v0, v1, Lokhttp3/internal/connection/d;->i:Lokhttp3/internal/connection/e;

    invoke-virtual {v0, v3}, Lokhttp3/internal/connection/e;->d(Lokhttp3/internal/connection/g;)V

    .line 54
    sget-object v0, Lkotlin/r;->a:Lkotlin/r;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 55
    monitor-exit v3

    .line 56
    iget-object v0, v1, Lokhttp3/internal/connection/d;->j:Lm/u;

    iget-object v2, v1, Lokhttp3/internal/connection/d;->i:Lokhttp3/internal/connection/e;

    invoke-virtual {v0, v2, v3}, Lm/u;->k(Lm/f;Lm/k;)V

    return-object v3

    :catchall_1
    move-exception v0

    .line 57
    monitor-exit v3

    throw v0

    :catchall_2
    move-exception v0

    .line 58
    iget-object v2, v1, Lokhttp3/internal/connection/d;->i:Lokhttp3/internal/connection/e;

    invoke-virtual {v2, v4}, Lokhttp3/internal/connection/e;->y(Lokhttp3/internal/connection/g;)V

    throw v0

    .line 59
    :cond_13
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Canceled"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_14
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Canceled"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final c(IIIIZZ)Lokhttp3/internal/connection/g;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :goto_0
    invoke-direct/range {p0 .. p5}, Lokhttp3/internal/connection/d;->b(IIIIZ)Lokhttp3/internal/connection/g;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p6}, Lokhttp3/internal/connection/g;->v(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lokhttp3/internal/connection/g;->z()V

    .line 4
    iget-object v0, p0, Lokhttp3/internal/connection/d;->f:Lm/i0;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lokhttp3/internal/connection/d;->a:Lokhttp3/internal/connection/j$b;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lokhttp3/internal/connection/j$b;->b()Z

    move-result v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    goto :goto_0

    .line 6
    :cond_3
    iget-object v0, p0, Lokhttp3/internal/connection/d;->b:Lokhttp3/internal/connection/j;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lokhttp3/internal/connection/j;->b()Z

    move-result v1

    :cond_4
    if-eqz v1, :cond_5

    goto :goto_0

    .line 7
    :cond_5
    new-instance p1, Ljava/io/IOException;

    const-string p2, "exhausted all routes"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final f()Lm/i0;
    .locals 4

    .line 1
    iget v0, p0, Lokhttp3/internal/connection/d;->c:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gt v0, v1, :cond_3

    iget v0, p0, Lokhttp3/internal/connection/d;->d:I

    if-gt v0, v1, :cond_3

    iget v0, p0, Lokhttp3/internal/connection/d;->e:I

    if-lez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/connection/d;->i:Lokhttp3/internal/connection/e;

    invoke-virtual {v0}, Lokhttp3/internal/connection/e;->m()Lokhttp3/internal/connection/g;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {v0}, Lokhttp3/internal/connection/g;->r()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    monitor-exit v0

    return-object v2

    .line 5
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lokhttp3/internal/connection/g;->A()Lm/i0;

    move-result-object v1

    invoke-virtual {v1}, Lm/i0;->a()Lm/a;

    move-result-object v1

    invoke-virtual {v1}, Lm/a;->l()Lm/y;

    move-result-object v1

    iget-object v3, p0, Lokhttp3/internal/connection/d;->h:Lm/a;

    invoke-virtual {v3}, Lm/a;->l()Lm/y;

    move-result-object v3

    invoke-static {v1, v3}, Lm/k0/b;->g(Lm/y;Lm/y;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_2

    monitor-exit v0

    return-object v2

    .line 6
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Lokhttp3/internal/connection/g;->A()Lm/i0;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 7
    monitor-exit v0

    throw v1

    :cond_3
    :goto_0
    return-object v2
.end method


# virtual methods
.method public final a(Lm/c0;Lm/k0/f/g;)Lm/k0/f/d;
    .locals 8

    const-string v0, "client"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chain"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    invoke-virtual {p2}, Lm/k0/f/g;->f()I

    move-result v2

    .line 2
    invoke-virtual {p2}, Lm/k0/f/g;->h()I

    move-result v3

    .line 3
    invoke-virtual {p2}, Lm/k0/f/g;->j()I

    move-result v4

    .line 4
    invoke-virtual {p1}, Lm/c0;->A()I

    move-result v5

    .line 5
    invoke-virtual {p1}, Lm/c0;->G()Z

    move-result v6

    .line 6
    invoke-virtual {p2}, Lm/k0/f/g;->i()Lm/e0;

    move-result-object v0

    invoke-virtual {v0}, Lm/e0;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GET"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v7, v0, 0x1

    move-object v1, p0

    .line 7
    invoke-direct/range {v1 .. v7}, Lokhttp3/internal/connection/d;->c(IIIIZZ)Lokhttp3/internal/connection/g;

    move-result-object v0

    .line 8
    invoke-virtual {v0, p1, p2}, Lokhttp3/internal/connection/g;->x(Lm/c0;Lm/k0/f/g;)Lm/k0/f/d;

    move-result-object p1
    :try_end_0
    .catch Lokhttp3/internal/connection/RouteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p0, p1}, Lokhttp3/internal/connection/d;->h(Ljava/io/IOException;)V

    .line 10
    new-instance p2, Lokhttp3/internal/connection/RouteException;

    invoke-direct {p2, p1}, Lokhttp3/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw p2

    :catch_1
    move-exception p1

    .line 11
    invoke-virtual {p1}, Lokhttp3/internal/connection/RouteException;->c()Ljava/io/IOException;

    move-result-object p2

    invoke-virtual {p0, p2}, Lokhttp3/internal/connection/d;->h(Ljava/io/IOException;)V

    .line 12
    throw p1
.end method

.method public final d()Lm/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/d;->h:Lm/a;

    return-object v0
.end method

.method public final e()Z
    .locals 2

    .line 1
    iget v0, p0, Lokhttp3/internal/connection/d;->c:I

    if-nez v0, :cond_0

    iget v0, p0, Lokhttp3/internal/connection/d;->d:I

    if-nez v0, :cond_0

    iget v0, p0, Lokhttp3/internal/connection/d;->e:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/connection/d;->f:Lm/i0;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-direct {p0}, Lokhttp3/internal/connection/d;->f()Lm/i0;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4
    iput-object v0, p0, Lokhttp3/internal/connection/d;->f:Lm/i0;

    return v1

    .line 5
    :cond_2
    iget-object v0, p0, Lokhttp3/internal/connection/d;->a:Lokhttp3/internal/connection/j$b;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lokhttp3/internal/connection/j$b;->b()Z

    move-result v0

    if-ne v0, v1, :cond_3

    return v1

    .line 6
    :cond_3
    iget-object v0, p0, Lokhttp3/internal/connection/d;->b:Lokhttp3/internal/connection/j;

    if-eqz v0, :cond_4

    .line 7
    invoke-virtual {v0}, Lokhttp3/internal/connection/j;->b()Z

    move-result v0

    return v0

    :cond_4
    return v1
.end method

.method public final g(Lm/y;)Z
    .locals 3

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lokhttp3/internal/connection/d;->h:Lm/a;

    invoke-virtual {v0}, Lm/a;->l()Lm/y;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lm/y;->o()I

    move-result v1

    invoke-virtual {v0}, Lm/y;->o()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lm/y;->i()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lm/y;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final h(Ljava/io/IOException;)V
    .locals 2

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lokhttp3/internal/connection/d;->f:Lm/i0;

    .line 2
    instance-of v0, p1, Lokhttp3/internal/http2/StreamResetException;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lokhttp3/internal/http2/StreamResetException;

    iget-object v0, v0, Lokhttp3/internal/http2/StreamResetException;->f:Lokhttp3/internal/http2/a;

    sget-object v1, Lokhttp3/internal/http2/a;->REFUSED_STREAM:Lokhttp3/internal/http2/a;

    if-ne v0, v1, :cond_0

    .line 3
    iget p1, p0, Lokhttp3/internal/connection/d;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lokhttp3/internal/connection/d;->c:I

    goto :goto_0

    .line 4
    :cond_0
    instance-of p1, p1, Lokhttp3/internal/http2/ConnectionShutdownException;

    if-eqz p1, :cond_1

    .line 5
    iget p1, p0, Lokhttp3/internal/connection/d;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lokhttp3/internal/connection/d;->d:I

    goto :goto_0

    .line 6
    :cond_1
    iget p1, p0, Lokhttp3/internal/connection/d;->e:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lokhttp3/internal/connection/d;->e:I

    :goto_0
    return-void
.end method
