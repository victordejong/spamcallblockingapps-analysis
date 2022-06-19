.class public Le/p/b/t;
.super Le/p/b/z;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/p/b/t$b;,
        Le/p/b/t$a;
    }
.end annotation


# instance fields
.field public final a:Le/p/b/j;

.field public final b:Le/p/b/b0;


# direct methods
.method public constructor <init>(Le/p/b/j;Le/p/b/b0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/p/b/z;-><init>()V

    .line 2
    iput-object p1, p0, Le/p/b/t;->a:Le/p/b/j;

    .line 3
    iput-object p2, p0, Le/p/b/t;->b:Le/p/b/b0;

    return-void
.end method


# virtual methods
.method public c(Le/p/b/x;)Z
    .locals 1

    .line 1
    iget-object p1, p1, Le/p/b/x;->c:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string v0, "http"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "https"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public e()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public f(Le/p/b/x;I)Le/p/b/z$a;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    sget-object v1, Lcom/squareup/picasso/Picasso$d;->d:Lcom/squareup/picasso/Picasso$d;

    sget-object v2, Lcom/squareup/picasso/Picasso$d;->c:Lcom/squareup/picasso/Picasso$d;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p2, :cond_4

    and-int/lit8 v5, p2, 0x4

    if-eqz v5, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    if-eqz v5, :cond_1

    .line 2
    sget-object v5, Lu3/e;->n:Lu3/e;

    goto :goto_3

    :cond_1
    const/16 v16, 0x0

    const/4 v14, -0x1

    and-int/lit8 v5, p2, 0x1

    if-nez v5, :cond_2

    move v5, v4

    goto :goto_1

    :cond_2
    move v5, v3

    :goto_1
    xor-int/lit8 v7, v5, 0x1

    and-int/lit8 v5, p2, 0x2

    if-nez v5, :cond_3

    move v5, v4

    goto :goto_2

    :cond_3
    move v5, v3

    :goto_2
    xor-int/lit8 v8, v5, 0x1

    .line 3
    new-instance v5, Lu3/e;

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, -0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v6, v5

    invoke-direct/range {v6 .. v20}, Lu3/e;-><init>(ZZIIZZZIIZZZLjava/lang/String;Ls1/z/c/f;)V

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    .line 4
    :goto_3
    new-instance v6, Lu3/g0$a;

    invoke-direct {v6}, Lu3/g0$a;-><init>()V

    move-object/from16 v7, p1

    iget-object v7, v7, Le/p/b/x;->c:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lu3/g0$a;->i(Ljava/lang/String;)Lu3/g0$a;

    if-eqz v5, :cond_7

    const-string v7, "cacheControl"

    .line 5
    invoke-static {v5, v7}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v5}, Lu3/e;->toString()Ljava/lang/String;

    move-result-object v5

    .line 7
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_5

    goto :goto_4

    :cond_5
    move v4, v3

    :goto_4
    const-string v7, "Cache-Control"

    if-eqz v4, :cond_6

    invoke-virtual {v6, v7}, Lu3/g0$a;->g(Ljava/lang/String;)Lu3/g0$a;

    goto :goto_5

    .line 8
    :cond_6
    invoke-virtual {v6, v7, v5}, Lu3/g0$a;->c(Ljava/lang/String;Ljava/lang/String;)Lu3/g0$a;

    .line 9
    :cond_7
    :goto_5
    invoke-virtual {v6}, Lu3/g0$a;->b()Lu3/g0;

    move-result-object v4

    .line 10
    iget-object v5, v0, Le/p/b/t;->a:Le/p/b/j;

    check-cast v5, Le/p/b/u;

    .line 11
    iget-object v5, v5, Le/p/b/u;->a:Lu3/f$a;

    invoke-interface {v5, v4}, Lu3/f$a;->a(Lu3/g0;)Lu3/f;

    move-result-object v4

    invoke-interface {v4}, Lu3/f;->execute()Lu3/k0;

    move-result-object v4

    .line 12
    iget-object v5, v4, Lu3/k0;->h:Lu3/l0;

    .line 13
    invoke-virtual {v4}, Lu3/k0;->j()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 14
    iget-object v3, v4, Lu3/k0;->j:Lu3/k0;

    if-nez v3, :cond_8

    move-object v3, v1

    goto :goto_6

    :cond_8
    move-object v3, v2

    :goto_6
    const-wide/16 v6, 0x0

    if-ne v3, v2, :cond_a

    .line 15
    invoke-virtual {v5}, Lu3/l0;->k()J

    move-result-wide v8

    cmp-long v2, v8, v6

    if-eqz v2, :cond_9

    goto :goto_7

    .line 16
    :cond_9
    invoke-virtual {v5}, Lu3/l0;->close()V

    .line 17
    new-instance v1, Le/p/b/t$a;

    const-string v2, "Received response with 0 content-length header."

    invoke-direct {v1, v2}, Le/p/b/t$a;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    :goto_7
    if-ne v3, v1, :cond_b

    .line 18
    invoke-virtual {v5}, Lu3/l0;->k()J

    move-result-wide v1

    cmp-long v1, v1, v6

    if-lez v1, :cond_b

    .line 19
    iget-object v1, v0, Le/p/b/t;->b:Le/p/b/b0;

    invoke-virtual {v5}, Lu3/l0;->k()J

    move-result-wide v6

    .line 20
    iget-object v1, v1, Le/p/b/b0;->c:Landroid/os/Handler;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v4, 0x4

    invoke-virtual {v1, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 21
    :cond_b
    new-instance v1, Le/p/b/z$a;

    invoke-virtual {v5}, Lu3/l0;->q()Lv3/h;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Le/p/b/z$a;-><init>(Lv3/b0;Lcom/squareup/picasso/Picasso$d;)V

    return-object v1

    .line 22
    :cond_c
    invoke-virtual {v5}, Lu3/l0;->close()V

    .line 23
    new-instance v1, Le/p/b/t$b;

    .line 24
    iget v2, v4, Lu3/k0;->e:I

    .line 25
    invoke-direct {v1, v2, v3}, Le/p/b/t$b;-><init>(II)V

    throw v1
.end method

.method public g(ZLandroid/net/NetworkInfo;)Z
    .locals 0

    if-eqz p2, :cond_1

    .line 1
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public h()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
