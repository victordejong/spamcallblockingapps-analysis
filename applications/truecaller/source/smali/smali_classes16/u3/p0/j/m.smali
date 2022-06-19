.class public final Lu3/p0/j/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu3/p0/h/d;


# static fields
.field public static final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public volatile a:Lu3/p0/j/o;

.field public final b:Lu3/f0;

.field public volatile c:Z

.field public final d:Lu3/p0/g/i;

.field public final e:Lu3/p0/h/g;

.field public final f:Lu3/p0/j/f;


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    const-string v0, "connection"

    const-string v1, "host"

    const-string v2, "keep-alive"

    const-string v3, "proxy-connection"

    const-string v4, "te"

    const-string v5, "transfer-encoding"

    const-string v6, "encoding"

    const-string v7, "upgrade"

    const-string v8, ":method"

    const-string v9, ":path"

    const-string v10, ":scheme"

    const-string v11, ":authority"

    .line 1
    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lu3/p0/c;->l([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lu3/p0/j/m;->g:Ljava/util/List;

    const-string v1, "connection"

    const-string v2, "host"

    const-string v3, "keep-alive"

    const-string v4, "proxy-connection"

    const-string v5, "te"

    const-string v6, "transfer-encoding"

    const-string v7, "encoding"

    const-string v8, "upgrade"

    .line 3
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lu3/p0/c;->l([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lu3/p0/j/m;->h:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lu3/e0;Lu3/p0/g/i;Lu3/p0/h/g;Lu3/p0/j/f;)V
    .locals 1

    const-string v0, "client"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connection"

    invoke-static {p2, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chain"

    invoke-static {p3, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "http2Connection"

    invoke-static {p4, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lu3/p0/j/m;->d:Lu3/p0/g/i;

    iput-object p3, p0, Lu3/p0/j/m;->e:Lu3/p0/h/g;

    iput-object p4, p0, Lu3/p0/j/m;->f:Lu3/p0/j/f;

    .line 2
    iget-object p1, p1, Lu3/e0;->t:Ljava/util/List;

    .line 3
    sget-object p2, Lu3/f0;->f:Lu3/f0;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    sget-object p2, Lu3/f0;->e:Lu3/f0;

    .line 5
    :goto_0
    iput-object p2, p0, Lu3/p0/j/m;->b:Lu3/f0;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lu3/p0/j/m;->a:Lu3/p0/j/o;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lu3/p0/j/o;->g()Lv3/z;

    move-result-object v0

    check-cast v0, Lu3/p0/j/o$a;

    invoke-virtual {v0}, Lu3/p0/j/o$a;->close()V

    return-void

    :cond_0
    invoke-static {}, Ls1/z/c/l;->k()V

    const/4 v0, 0x0

    throw v0
.end method

.method public b(Lu3/k0;)Lv3/b0;
    .locals 1

    const-string v0, "response"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lu3/p0/j/m;->a:Lu3/p0/j/o;

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p1, Lu3/p0/j/o;->g:Lu3/p0/j/o$b;

    return-object p1

    .line 3
    :cond_0
    invoke-static {}, Ls1/z/c/l;->k()V

    const/4 p1, 0x0

    throw p1
.end method

.method public c()Lu3/p0/g/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lu3/p0/j/m;->d:Lu3/p0/g/i;

    return-object v0
.end method

.method public cancel()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lu3/p0/j/m;->c:Z

    .line 2
    iget-object v0, p0, Lu3/p0/j/m;->a:Lu3/p0/j/o;

    if-eqz v0, :cond_0

    sget-object v1, Lu3/p0/j/b;->g:Lu3/p0/j/b;

    invoke-virtual {v0, v1}, Lu3/p0/j/o;->e(Lu3/p0/j/b;)V

    :cond_0
    return-void
.end method

.method public d(Lu3/g0;J)Lv3/z;
    .locals 0

    const-string p2, "request"

    invoke-static {p1, p2}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lu3/p0/j/m;->a:Lu3/p0/j/o;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lu3/p0/j/o;->g()Lv3/z;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, Ls1/z/c/l;->k()V

    const/4 p1, 0x0

    throw p1
.end method

.method public e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lu3/p0/j/m;->f:Lu3/p0/j/f;

    .line 2
    iget-object v0, v0, Lu3/p0/j/f;->z:Lu3/p0/j/p;

    invoke-virtual {v0}, Lu3/p0/j/p;->flush()V

    return-void
.end method

.method public f(Lu3/k0;)J
    .locals 2

    const-string v0, "response"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lu3/p0/h/e;->a(Lu3/k0;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p1}, Lu3/p0/c;->k(Lu3/k0;)J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public g(Lu3/g0;)V
    .locals 14

    const-string v0, "request"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lu3/p0/j/m;->a:Lu3/p0/j/o;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p1, Lu3/g0;->e:Lu3/j0;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    const-string v3, "request"

    .line 3
    invoke-static {p1, v3}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v3, p1, Lu3/g0;->d:Lu3/z;

    .line 5
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v3}, Lu3/z;->size()I

    move-result v5

    add-int/lit8 v5, v5, 0x4

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    new-instance v5, Lu3/p0/j/c;

    sget-object v6, Lu3/p0/j/c;->f:Lv3/i;

    .line 7
    iget-object v7, p1, Lu3/g0;->c:Ljava/lang/String;

    .line 8
    invoke-direct {v5, v6, v7}, Lu3/p0/j/c;-><init>(Lv3/i;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    new-instance v5, Lu3/p0/j/c;

    sget-object v6, Lu3/p0/j/c;->g:Lv3/i;

    .line 10
    iget-object v7, p1, Lu3/g0;->b:Lu3/a0;

    const-string v8, "url"

    .line 11
    invoke-static {v7, v8}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v7}, Lu3/a0;->b()Ljava/lang/String;

    move-result-object v8

    .line 13
    invoke-virtual {v7}, Lu3/a0;->d()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    const/16 v9, 0x3f

    .line 14
    invoke-static {v8, v9, v7}, Le/d/c/a/a;->h2(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 15
    :cond_2
    invoke-direct {v5, v6, v8}, Lu3/p0/j/c;-><init>(Lv3/i;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, "Host"

    .line 16
    invoke-virtual {p1, v5}, Lu3/g0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 17
    new-instance v6, Lu3/p0/j/c;

    sget-object v7, Lu3/p0/j/c;->i:Lv3/i;

    invoke-direct {v6, v7, v5}, Lu3/p0/j/c;-><init>(Lv3/i;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    :cond_3
    new-instance v5, Lu3/p0/j/c;

    sget-object v6, Lu3/p0/j/c;->h:Lv3/i;

    .line 19
    iget-object p1, p1, Lu3/g0;->b:Lu3/a0;

    .line 20
    iget-object p1, p1, Lu3/a0;->b:Ljava/lang/String;

    .line 21
    invoke-direct {v5, v6, p1}, Lu3/p0/j/c;-><init>(Lv3/i;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    invoke-virtual {v3}, Lu3/z;->size()I

    move-result p1

    move v5, v1

    :goto_1
    if-ge v5, p1, :cond_7

    .line 23
    invoke-virtual {v3, v5}, Lu3/z;->b(I)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "Locale.US"

    invoke-static {v7, v8}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v6, :cond_6

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "(this as java.lang.String).toLowerCase(locale)"

    invoke-static {v6, v7}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    sget-object v7, Lu3/p0/j/m;->g:Ljava/util/List;

    .line 25
    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "te"

    invoke-static {v6, v7}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 26
    invoke-virtual {v3, v5}, Lu3/z;->d(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "trailers"

    invoke-static {v7, v8}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 27
    :cond_4
    new-instance v7, Lu3/p0/j/c;

    invoke-virtual {v3, v5}, Lu3/z;->d(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v6, v8}, Lu3/p0/j/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 28
    :cond_6
    new-instance p1, Ls1/p;

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, v0}, Ls1/p;-><init>(Ljava/lang/String;)V

    throw p1

    .line 29
    :cond_7
    iget-object p1, p0, Lu3/p0/j/m;->f:Lu3/p0/j/f;

    .line 30
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "requestHeaders"

    invoke-static {v4, v3}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    xor-int/lit8 v3, v0, 0x1

    const/4 v9, 0x0

    .line 31
    iget-object v11, p1, Lu3/p0/j/f;->z:Lu3/p0/j/p;

    monitor-enter v11

    .line 32
    :try_start_0
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 33
    :try_start_1
    iget v5, p1, Lu3/p0/j/f;->f:I

    const v6, 0x3fffffff    # 1.9999999f

    if-le v5, v6, :cond_8

    .line 34
    sget-object v5, Lu3/p0/j/b;->f:Lu3/p0/j/b;

    invoke-virtual {p1, v5}, Lu3/p0/j/f;->l(Lu3/p0/j/b;)V

    .line 35
    :cond_8
    iget-boolean v5, p1, Lu3/p0/j/f;->g:Z

    if-nez v5, :cond_11

    .line 36
    iget v12, p1, Lu3/p0/j/f;->f:I

    add-int/lit8 v5, v12, 0x2

    .line 37
    iput v5, p1, Lu3/p0/j/f;->f:I

    .line 38
    new-instance v13, Lu3/p0/j/o;

    const/4 v10, 0x0

    move-object v5, v13

    move v6, v12

    move-object v7, p1

    move v8, v3

    invoke-direct/range {v5 .. v10}, Lu3/p0/j/o;-><init>(ILu3/p0/j/f;ZZLu3/z;)V

    if-eqz v0, :cond_9

    .line 39
    iget-wide v5, p1, Lu3/p0/j/f;->w:J

    iget-wide v7, p1, Lu3/p0/j/f;->x:J

    cmp-long v0, v5, v7

    if-gez v0, :cond_9

    .line 40
    iget-wide v5, v13, Lu3/p0/j/o;->c:J

    .line 41
    iget-wide v7, v13, Lu3/p0/j/o;->d:J

    cmp-long v0, v5, v7

    if-ltz v0, :cond_a

    :cond_9
    move v1, v2

    .line 42
    :cond_a
    invoke-virtual {v13}, Lu3/p0/j/o;->i()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 43
    iget-object v0, p1, Lu3/p0/j/f;->c:Ljava/util/Map;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    :cond_b
    :try_start_2
    monitor-exit p1

    .line 45
    iget-object v0, p1, Lu3/p0/j/f;->z:Lu3/p0/j/p;

    invoke-virtual {v0, v3, v12, v4}, Lu3/p0/j/p;->k(ZILjava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 46
    monitor-exit v11

    if-eqz v1, :cond_c

    .line 47
    iget-object p1, p1, Lu3/p0/j/f;->z:Lu3/p0/j/p;

    invoke-virtual {p1}, Lu3/p0/j/p;->flush()V

    .line 48
    :cond_c
    iput-object v13, p0, Lu3/p0/j/m;->a:Lu3/p0/j/o;

    .line 49
    iget-boolean p1, p0, Lu3/p0/j/m;->c:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_e

    .line 50
    iget-object p1, p0, Lu3/p0/j/m;->a:Lu3/p0/j/o;

    if-nez p1, :cond_d

    invoke-static {}, Ls1/z/c/l;->k()V

    throw v0

    :cond_d
    sget-object v0, Lu3/p0/j/b;->g:Lu3/p0/j/b;

    invoke-virtual {p1, v0}, Lu3/p0/j/o;->e(Lu3/p0/j/b;)V

    .line 51
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Canceled"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 52
    :cond_e
    iget-object p1, p0, Lu3/p0/j/m;->a:Lu3/p0/j/o;

    if-eqz p1, :cond_10

    .line 53
    iget-object p1, p1, Lu3/p0/j/o;->i:Lu3/p0/j/o$c;

    .line 54
    iget-object v1, p0, Lu3/p0/j/m;->e:Lu3/p0/h/g;

    .line 55
    iget v1, v1, Lu3/p0/h/g;->h:I

    int-to-long v1, v1

    .line 56
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v1, v2, v3}, Lv3/c0;->g(JLjava/util/concurrent/TimeUnit;)Lv3/c0;

    .line 57
    iget-object p1, p0, Lu3/p0/j/m;->a:Lu3/p0/j/o;

    if-eqz p1, :cond_f

    .line 58
    iget-object p1, p1, Lu3/p0/j/o;->j:Lu3/p0/j/o$c;

    .line 59
    iget-object v0, p0, Lu3/p0/j/m;->e:Lu3/p0/h/g;

    .line 60
    iget v0, v0, Lu3/p0/h/g;->i:I

    int-to-long v0, v0

    .line 61
    invoke-virtual {p1, v0, v1, v3}, Lv3/c0;->g(JLjava/util/concurrent/TimeUnit;)Lv3/c0;

    return-void

    :cond_f
    invoke-static {}, Ls1/z/c/l;->k()V

    throw v0

    .line 62
    :cond_10
    invoke-static {}, Ls1/z/c/l;->k()V

    throw v0

    .line 63
    :cond_11
    :try_start_3
    new-instance v0, Lu3/p0/j/a;

    invoke-direct {v0}, Lu3/p0/j/a;-><init>()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    .line 64
    :try_start_4
    monitor-exit p1

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    .line 65
    monitor-exit v11

    throw p1
.end method

.method public h(Z)Lu3/k0$a;
    .locals 11

    .line 1
    iget-object v0, p0, Lu3/p0/j/m;->a:Lu3/p0/j/o;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v2, v0, Lu3/p0/j/o;->i:Lu3/p0/j/o$c;

    invoke-virtual {v2}, Lv3/b;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :goto_0
    :try_start_1
    iget-object v2, v0, Lu3/p0/j/o;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lu3/p0/j/o;->k:Lu3/p0/j/b;

    if-nez v2, :cond_0

    .line 5
    invoke-virtual {v0}, Lu3/p0/j/o;->l()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 6
    :cond_0
    :try_start_2
    iget-object v2, v0, Lu3/p0/j/o;->i:Lu3/p0/j/o$c;

    invoke-virtual {v2}, Lu3/p0/j/o$c;->l()V

    .line 7
    iget-object v2, v0, Lu3/p0/j/o;->e:Ljava/util/ArrayDeque;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_7

    .line 8
    iget-object v2, v0, Lu3/p0/j/o;->e:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "headersQueue.removeFirst()"

    invoke-static {v2, v3}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lu3/z;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    .line 9
    iget-object v0, p0, Lu3/p0/j/m;->b:Lu3/f0;

    const-string v3, "headerBlock"

    .line 10
    invoke-static {v2, v3}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "protocol"

    invoke-static {v0, v3}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0x14

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    invoke-virtual {v2}, Lu3/z;->size()I

    move-result v4

    const/4 v5, 0x0

    move-object v7, v1

    move v6, v5

    :goto_1
    if-ge v6, v4, :cond_3

    .line 13
    invoke-virtual {v2, v6}, Lu3/z;->b(I)Ljava/lang/String;

    move-result-object v8

    .line 14
    invoke-virtual {v2, v6}, Lu3/z;->d(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, ":status"

    .line 15
    invoke-static {v8, v10}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 16
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "HTTP/1.1 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lu3/p0/h/j;->a(Ljava/lang/String;)Lu3/p0/h/j;

    move-result-object v7

    goto :goto_2

    .line 17
    :cond_1
    sget-object v10, Lu3/p0/j/m;->h:Ljava/util/List;

    .line 18
    invoke-interface {v10, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string v10, "name"

    .line 19
    invoke-static {v8, v10}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "value"

    invoke-static {v9, v10}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    invoke-static {v9}, Ls1/f0/v;->g0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    if-eqz v7, :cond_6

    .line 22
    new-instance v2, Lu3/k0$a;

    invoke-direct {v2}, Lu3/k0$a;-><init>()V

    .line 23
    invoke-virtual {v2, v0}, Lu3/k0$a;->f(Lu3/f0;)Lu3/k0$a;

    .line 24
    iget v0, v7, Lu3/p0/h/j;->b:I

    .line 25
    iput v0, v2, Lu3/k0$a;->c:I

    .line 26
    iget-object v0, v7, Lu3/p0/h/j;->c:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lu3/k0$a;->e(Ljava/lang/String;)Lu3/k0$a;

    new-array v0, v5, [Ljava/lang/String;

    .line 27
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    check-cast v0, [Ljava/lang/String;

    .line 28
    new-instance v3, Lu3/z;

    invoke-direct {v3, v0, v1}, Lu3/z;-><init>([Ljava/lang/String;Ls1/z/c/f;)V

    .line 29
    invoke-virtual {v2, v3}, Lu3/k0$a;->d(Lu3/z;)Lu3/k0$a;

    if-eqz p1, :cond_4

    .line 30
    iget p1, v2, Lu3/k0$a;->c:I

    const/16 v0, 0x64

    if-ne p1, v0, :cond_4

    goto :goto_3

    :cond_4
    move-object v1, v2

    :goto_3
    return-object v1

    .line 31
    :cond_5
    new-instance p1, Ls1/p;

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p1, v0}, Ls1/p;-><init>(Ljava/lang/String;)V

    throw p1

    .line 32
    :cond_6
    new-instance p1, Ljava/net/ProtocolException;

    const-string v0, "Expected \':status\' header not present"

    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 33
    :cond_7
    :try_start_3
    iget-object p1, v0, Lu3/p0/j/o;->l:Ljava/io/IOException;

    if-nez p1, :cond_9

    new-instance p1, Lu3/p0/j/u;

    iget-object v2, v0, Lu3/p0/j/o;->k:Lu3/p0/j/b;

    if-nez v2, :cond_8

    invoke-static {}, Ls1/z/c/l;->k()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    :cond_8
    :try_start_4
    invoke-direct {p1, v2}, Lu3/p0/j/u;-><init>(Lu3/p0/j/b;)V

    :cond_9
    throw p1

    :catchall_0
    move-exception p1

    .line 34
    iget-object v1, v0, Lu3/p0/j/o;->i:Lu3/p0/j/o$c;

    invoke-virtual {v1}, Lu3/p0/j/o$c;->l()V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit v0

    throw p1

    .line 35
    :cond_a
    invoke-static {}, Ls1/z/c/l;->k()V

    throw v1
.end method
