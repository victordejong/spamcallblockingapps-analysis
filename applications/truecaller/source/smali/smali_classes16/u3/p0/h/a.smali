.class public final Lu3/p0/h/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu3/b0;


# instance fields
.field public final a:Lu3/q;


# direct methods
.method public constructor <init>(Lu3/q;)V
    .locals 1

    const-string v0, "cookieJar"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu3/p0/h/a;->a:Lu3/q;

    return-void
.end method


# virtual methods
.method public a(Lu3/b0$a;)Lu3/k0;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "chain"

    invoke-static {v1, v2}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface/range {p1 .. p1}, Lu3/b0$a;->request()Lu3/g0;

    move-result-object v2

    .line 2
    new-instance v3, Lu3/g0$a;

    invoke-direct {v3, v2}, Lu3/g0$a;-><init>(Lu3/g0;)V

    .line 3
    iget-object v4, v2, Lu3/g0;->e:Lu3/j0;

    const-string v5, "Content-Type"

    const-wide/16 v6, -0x1

    const-string v8, "Content-Length"

    if-eqz v4, :cond_2

    .line 4
    invoke-virtual {v4}, Lu3/j0;->b()Lu3/c0;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 5
    iget-object v9, v9, Lu3/c0;->a:Ljava/lang/String;

    .line 6
    invoke-virtual {v3, v5, v9}, Lu3/g0$a;->c(Ljava/lang/String;Ljava/lang/String;)Lu3/g0$a;

    .line 7
    :cond_0
    invoke-virtual {v4}, Lu3/j0;->a()J

    move-result-wide v9

    cmp-long v4, v9, v6

    const-string v11, "Transfer-Encoding"

    if-eqz v4, :cond_1

    .line 8
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v8, v4}, Lu3/g0$a;->c(Ljava/lang/String;Ljava/lang/String;)Lu3/g0$a;

    .line 9
    invoke-virtual {v3, v11}, Lu3/g0$a;->g(Ljava/lang/String;)Lu3/g0$a;

    goto :goto_0

    :cond_1
    const-string v4, "chunked"

    .line 10
    invoke-virtual {v3, v11, v4}, Lu3/g0$a;->c(Ljava/lang/String;Ljava/lang/String;)Lu3/g0$a;

    .line 11
    invoke-virtual {v3, v8}, Lu3/g0$a;->g(Ljava/lang/String;)Lu3/g0$a;

    :cond_2
    :goto_0
    const-string v4, "Host"

    .line 12
    invoke-virtual {v2, v4}, Lu3/g0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    if-nez v9, :cond_3

    .line 13
    iget-object v9, v2, Lu3/g0;->b:Lu3/a0;

    .line 14
    invoke-static {v9, v10}, Lu3/p0/c;->w(Lu3/a0;Z)Ljava/lang/String;

    move-result-object v9

    .line 15
    invoke-virtual {v3, v4, v9}, Lu3/g0$a;->c(Ljava/lang/String;Ljava/lang/String;)Lu3/g0$a;

    :cond_3
    const-string v4, "Connection"

    .line 16
    invoke-virtual {v2, v4}, Lu3/g0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_4

    const-string v9, "Keep-Alive"

    .line 17
    invoke-virtual {v3, v4, v9}, Lu3/g0$a;->c(Ljava/lang/String;Ljava/lang/String;)Lu3/g0$a;

    :cond_4
    const-string v4, "Accept-Encoding"

    .line 18
    invoke-virtual {v2, v4}, Lu3/g0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v11, "gzip"

    const/4 v12, 0x1

    if-nez v9, :cond_5

    const-string v9, "Range"

    invoke-virtual {v2, v9}, Lu3/g0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_5

    .line 19
    invoke-virtual {v3, v4, v11}, Lu3/g0$a;->c(Ljava/lang/String;Ljava/lang/String;)Lu3/g0$a;

    move v4, v12

    goto :goto_1

    :cond_5
    move v4, v10

    .line 20
    :goto_1
    iget-object v9, v0, Lu3/p0/h/a;->a:Lu3/q;

    .line 21
    iget-object v13, v2, Lu3/g0;->b:Lu3/a0;

    .line 22
    invoke-interface {v9, v13}, Lu3/q;->a(Lu3/a0;)Ljava/util/List;

    move-result-object v9

    .line 23
    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v13

    xor-int/2addr v13, v12

    const/4 v14, 0x0

    if-eqz v13, :cond_9

    .line 24
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    add-int/lit8 v16, v10, 0x1

    if-ltz v10, :cond_7

    check-cast v15, Lu3/o;

    if-lez v10, :cond_6

    const-string v10, "; "

    .line 26
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    :cond_6
    iget-object v10, v15, Lu3/o;->a:Ljava/lang/String;

    .line 28
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v10, 0x3d

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 29
    iget-object v10, v15, Lu3/o;->b:Ljava/lang/String;

    .line 30
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, v16

    goto :goto_2

    .line 31
    :cond_7
    invoke-static {}, Ls1/u/i;->N0()V

    throw v14

    .line 32
    :cond_8
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v9, v10}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "Cookie"

    .line 33
    invoke-virtual {v3, v10, v9}, Lu3/g0$a;->c(Ljava/lang/String;Ljava/lang/String;)Lu3/g0$a;

    :cond_9
    const-string v9, "User-Agent"

    .line 34
    invoke-virtual {v2, v9}, Lu3/g0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_a

    const-string v10, "okhttp/4.8.0"

    .line 35
    invoke-virtual {v3, v9, v10}, Lu3/g0$a;->c(Ljava/lang/String;Ljava/lang/String;)Lu3/g0$a;

    .line 36
    :cond_a
    invoke-virtual {v3}, Lu3/g0$a;->b()Lu3/g0;

    move-result-object v3

    invoke-interface {v1, v3}, Lu3/b0$a;->a(Lu3/g0;)Lu3/k0;

    move-result-object v1

    .line 37
    iget-object v3, v0, Lu3/p0/h/a;->a:Lu3/q;

    .line 38
    iget-object v9, v2, Lu3/g0;->b:Lu3/a0;

    .line 39
    iget-object v10, v1, Lu3/k0;->g:Lu3/z;

    .line 40
    invoke-static {v3, v9, v10}, Lu3/p0/h/e;->d(Lu3/q;Lu3/a0;Lu3/z;)V

    .line 41
    new-instance v3, Lu3/k0$a;

    invoke-direct {v3, v1}, Lu3/k0$a;-><init>(Lu3/k0;)V

    .line 42
    invoke-virtual {v3, v2}, Lu3/k0$a;->g(Lu3/g0;)Lu3/k0$a;

    if-eqz v4, :cond_b

    const-string v2, "Content-Encoding"

    const/4 v4, 0x2

    .line 43
    invoke-static {v1, v2, v14, v4}, Lu3/k0;->d(Lu3/k0;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9, v12}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 44
    invoke-static {v1}, Lu3/p0/h/e;->a(Lu3/k0;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 45
    iget-object v9, v1, Lu3/k0;->h:Lu3/l0;

    if-eqz v9, :cond_b

    .line 46
    new-instance v10, Lv3/o;

    invoke-virtual {v9}, Lu3/l0;->q()Lv3/h;

    move-result-object v9

    invoke-direct {v10, v9}, Lv3/o;-><init>(Lv3/b0;)V

    .line 47
    iget-object v9, v1, Lu3/k0;->g:Lu3/z;

    .line 48
    invoke-virtual {v9}, Lu3/z;->c()Lu3/z$a;

    move-result-object v9

    .line 49
    invoke-virtual {v9, v2}, Lu3/z$a;->f(Ljava/lang/String;)Lu3/z$a;

    .line 50
    invoke-virtual {v9, v8}, Lu3/z$a;->f(Ljava/lang/String;)Lu3/z$a;

    .line 51
    invoke-virtual {v9}, Lu3/z$a;->d()Lu3/z;

    move-result-object v2

    .line 52
    invoke-virtual {v3, v2}, Lu3/k0$a;->d(Lu3/z;)Lu3/k0$a;

    .line 53
    invoke-static {v1, v5, v14, v4}, Lu3/k0;->d(Lu3/k0;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 54
    new-instance v2, Lu3/p0/h/h;

    const-string v4, "$this$buffer"

    .line 55
    invoke-static {v10, v4}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    new-instance v4, Lv3/v;

    invoke-direct {v4, v10}, Lv3/v;-><init>(Lv3/b0;)V

    .line 57
    invoke-direct {v2, v1, v6, v7, v4}, Lu3/p0/h/h;-><init>(Ljava/lang/String;JLv3/h;)V

    .line 58
    iput-object v2, v3, Lu3/k0$a;->g:Lu3/l0;

    .line 59
    :cond_b
    invoke-virtual {v3}, Lu3/k0$a;->a()Lu3/k0;

    move-result-object v1

    return-object v1
.end method
