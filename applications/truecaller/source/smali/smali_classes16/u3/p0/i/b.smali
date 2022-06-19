.class public final Lu3/p0/i/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu3/p0/h/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu3/p0/i/b$e;,
        Lu3/p0/i/b$b;,
        Lu3/p0/i/b$a;,
        Lu3/p0/i/b$d;,
        Lu3/p0/i/b$c;,
        Lu3/p0/i/b$f;
    }
.end annotation


# instance fields
.field public a:I

.field public final b:Lu3/p0/i/a;

.field public c:Lu3/z;

.field public final d:Lu3/e0;

.field public final e:Lu3/p0/g/i;

.field public final f:Lv3/h;

.field public final g:Lv3/g;


# direct methods
.method public constructor <init>(Lu3/e0;Lu3/p0/g/i;Lv3/h;Lv3/g;)V
    .locals 1

    const-string v0, "connection"

    invoke-static {p2, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p3, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sink"

    invoke-static {p4, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu3/p0/i/b;->d:Lu3/e0;

    iput-object p2, p0, Lu3/p0/i/b;->e:Lu3/p0/g/i;

    iput-object p3, p0, Lu3/p0/i/b;->f:Lv3/h;

    iput-object p4, p0, Lu3/p0/i/b;->g:Lv3/g;

    .line 2
    new-instance p1, Lu3/p0/i/a;

    invoke-direct {p1, p3}, Lu3/p0/i/a;-><init>(Lv3/h;)V

    iput-object p1, p0, Lu3/p0/i/b;->b:Lu3/p0/i/a;

    return-void
.end method

.method public static final i(Lu3/p0/i/b;Lv3/m;)V
    .locals 2

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object p0, p1, Lv3/m;->e:Lv3/c0;

    .line 3
    sget-object v0, Lv3/c0;->d:Lv3/c0;

    const-string v1, "delegate"

    .line 4
    invoke-static {v0, v1}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iput-object v0, p1, Lv3/m;->e:Lv3/c0;

    .line 6
    invoke-virtual {p0}, Lv3/c0;->a()Lv3/c0;

    .line 7
    invoke-virtual {p0}, Lv3/c0;->b()Lv3/c0;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lu3/p0/i/b;->g:Lv3/g;

    invoke-interface {v0}, Lv3/g;->flush()V

    return-void
.end method

.method public b(Lu3/k0;)Lv3/b0;
    .locals 10

    const-string v0, "response"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lu3/p0/h/e;->a(Lu3/k0;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lu3/p0/i/b;->j(J)Lv3/b0;

    move-result-object p1

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "Transfer-Encoding"

    .line 2
    invoke-static {p1, v2, v0, v1}, Lu3/k0;->d(Lu3/k0;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "chunked"

    invoke-static {v2, v0, v1}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x5

    const-string v3, "state: "

    const/4 v4, 0x0

    const/4 v5, 0x4

    if-eqz v0, :cond_3

    .line 3
    iget-object p1, p1, Lu3/k0;->b:Lu3/g0;

    .line 4
    iget-object p1, p1, Lu3/g0;->b:Lu3/a0;

    .line 5
    iget v0, p0, Lu3/p0/i/b;->a:I

    if-ne v0, v5, :cond_1

    goto :goto_0

    :cond_1
    move v1, v4

    :goto_0
    if-eqz v1, :cond_2

    .line 6
    iput v2, p0, Lu3/p0/i/b;->a:I

    .line 7
    new-instance v0, Lu3/p0/i/b$c;

    invoke-direct {v0, p0, p1}, Lu3/p0/i/b$c;-><init>(Lu3/p0/i/b;Lu3/a0;)V

    move-object p1, v0

    goto :goto_2

    .line 8
    :cond_2
    invoke-static {v3}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lu3/p0/i/b;->a:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_3
    invoke-static {p1}, Lu3/p0/c;->k(Lu3/k0;)J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long p1, v6, v8

    if-eqz p1, :cond_4

    .line 10
    invoke-virtual {p0, v6, v7}, Lu3/p0/i/b;->j(J)Lv3/b0;

    move-result-object p1

    goto :goto_2

    .line 11
    :cond_4
    iget p1, p0, Lu3/p0/i/b;->a:I

    if-ne p1, v5, :cond_5

    goto :goto_1

    :cond_5
    move v1, v4

    :goto_1
    if-eqz v1, :cond_6

    .line 12
    iput v2, p0, Lu3/p0/i/b;->a:I

    .line 13
    iget-object p1, p0, Lu3/p0/i/b;->e:Lu3/p0/g/i;

    .line 14
    invoke-virtual {p1}, Lu3/p0/g/i;->l()V

    .line 15
    new-instance p1, Lu3/p0/i/b$f;

    invoke-direct {p1, p0}, Lu3/p0/i/b$f;-><init>(Lu3/p0/i/b;)V

    :goto_2
    return-object p1

    .line 16
    :cond_6
    invoke-static {v3}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lu3/p0/i/b;->a:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c()Lu3/p0/g/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lu3/p0/i/b;->e:Lu3/p0/g/i;

    return-object v0
.end method

.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lu3/p0/i/b;->e:Lu3/p0/g/i;

    .line 2
    iget-object v0, v0, Lu3/p0/g/i;->b:Ljava/net/Socket;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lu3/p0/c;->e(Ljava/net/Socket;)V

    :cond_0
    return-void
.end method

.method public d(Lu3/g0;J)Lv3/z;
    .locals 6

    const-string v0, "request"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "Transfer-Encoding"

    .line 1
    invoke-virtual {p1, v0}, Lu3/g0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "chunked"

    invoke-static {v1, p1, v0}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    const/4 v1, 0x2

    const-string v2, "state: "

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    .line 2
    iget p1, p0, Lu3/p0/i/b;->a:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    iput v1, p0, Lu3/p0/i/b;->a:I

    .line 4
    new-instance p1, Lu3/p0/i/b$b;

    invoke-direct {p1, p0}, Lu3/p0/i/b$b;-><init>(Lu3/p0/i/b;)V

    goto :goto_2

    .line 5
    :cond_1
    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lu3/p0/i/b;->a:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    const-wide/16 v4, -0x1

    cmp-long p1, p2, v4

    if-eqz p1, :cond_5

    .line 6
    iget p1, p0, Lu3/p0/i/b;->a:I

    if-ne p1, v0, :cond_3

    goto :goto_1

    :cond_3
    move v0, v3

    :goto_1
    if-eqz v0, :cond_4

    .line 7
    iput v1, p0, Lu3/p0/i/b;->a:I

    .line 8
    new-instance p1, Lu3/p0/i/b$e;

    invoke-direct {p1, p0}, Lu3/p0/i/b$e;-><init>(Lu3/p0/i/b;)V

    :goto_2
    return-object p1

    .line 9
    :cond_4
    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lu3/p0/i/b;->a:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 10
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot stream a request body without chunked encoding or a known content length!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lu3/p0/i/b;->g:Lv3/g;

    invoke-interface {v0}, Lv3/g;->flush()V

    return-void
.end method

.method public f(Lu3/k0;)J
    .locals 3

    const-string v0, "response"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lu3/p0/h/e;->a(Lu3/k0;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "Transfer-Encoding"

    .line 2
    invoke-static {p1, v2, v0, v1}, Lu3/k0;->d(Lu3/k0;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "chunked"

    invoke-static {v2, v0, v1}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, -0x1

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {p1}, Lu3/p0/c;->k(Lu3/k0;)J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public g(Lu3/g0;)V
    .locals 4

    const-string v0, "request"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Lu3/p0/i/b;->e:Lu3/p0/g/i;

    .line 2
    iget-object v1, v1, Lu3/p0/g/i;->q:Lu3/n0;

    .line 3
    iget-object v1, v1, Lu3/n0;->b:Ljava/net/Proxy;

    .line 4
    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    const-string v2, "connection.route().proxy.type()"

    invoke-static {v1, v2}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proxyType"

    invoke-static {v1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    iget-object v2, p1, Lu3/g0;->c:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    .line 9
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 10
    iget-object v2, p1, Lu3/g0;->b:Lu3/a0;

    .line 11
    iget-boolean v3, v2, Lu3/a0;->a:Z

    if-nez v3, :cond_0

    .line 12
    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 13
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string v1, "url"

    .line 14
    invoke-static {v2, v1}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-virtual {v2}, Lu3/a0;->b()Ljava/lang/String;

    move-result-object v1

    .line 16
    invoke-virtual {v2}, Lu3/a0;->d()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const/16 v3, 0x3f

    .line 17
    invoke-static {v1, v3, v2}, Le/d/c/a/a;->h2(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 18
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v1, " HTTP/1.1"

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v0, v1}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget-object p1, p1, Lu3/g0;->d:Lu3/z;

    .line 22
    invoke-virtual {p0, p1, v0}, Lu3/p0/i/b;->k(Lu3/z;Ljava/lang/String;)V

    return-void
.end method

.method public h(Z)Lu3/k0$a;
    .locals 4

    .line 1
    iget v0, p0, Lu3/p0/i/b;->a:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    if-eqz v2, :cond_4

    .line 2
    :try_start_0
    iget-object v0, p0, Lu3/p0/i/b;->b:Lu3/p0/i/a;

    invoke-virtual {v0}, Lu3/p0/i/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lu3/p0/h/j;->a(Ljava/lang/String;)Lu3/p0/h/j;

    move-result-object v0

    .line 3
    new-instance v2, Lu3/k0$a;

    invoke-direct {v2}, Lu3/k0$a;-><init>()V

    .line 4
    iget-object v3, v0, Lu3/p0/h/j;->a:Lu3/f0;

    invoke-virtual {v2, v3}, Lu3/k0$a;->f(Lu3/f0;)Lu3/k0$a;

    .line 5
    iget v3, v0, Lu3/p0/h/j;->b:I

    .line 6
    iput v3, v2, Lu3/k0$a;->c:I

    .line 7
    iget-object v3, v0, Lu3/p0/h/j;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lu3/k0$a;->e(Ljava/lang/String;)Lu3/k0$a;

    .line 8
    iget-object v3, p0, Lu3/p0/i/b;->b:Lu3/p0/i/a;

    invoke-virtual {v3}, Lu3/p0/i/a;->a()Lu3/z;

    move-result-object v3

    invoke-virtual {v2, v3}, Lu3/k0$a;->d(Lu3/z;)Lu3/k0$a;

    const/16 v3, 0x64

    if-eqz p1, :cond_2

    .line 9
    iget p1, v0, Lu3/p0/h/j;->b:I

    if-ne p1, v3, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    .line 10
    :cond_2
    iget p1, v0, Lu3/p0/h/j;->b:I

    if-ne p1, v3, :cond_3

    .line 11
    iput v1, p0, Lu3/p0/i/b;->a:I

    goto :goto_1

    :cond_3
    const/4 p1, 0x4

    .line 12
    iput p1, p0, Lu3/p0/i/b;->a:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v2

    :catch_0
    move-exception p1

    .line 13
    iget-object v0, p0, Lu3/p0/i/b;->e:Lu3/p0/g/i;

    .line 14
    iget-object v0, v0, Lu3/p0/g/i;->q:Lu3/n0;

    .line 15
    iget-object v0, v0, Lu3/n0;->a:Lu3/a;

    .line 16
    iget-object v0, v0, Lu3/a;->a:Lu3/a0;

    .line 17
    invoke-virtual {v0}, Lu3/a0;->i()Ljava/lang/String;

    move-result-object v0

    .line 18
    new-instance v1, Ljava/io/IOException;

    const-string v2, "unexpected end of stream on "

    invoke-static {v2, v0}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_4
    const-string p1, "state: "

    .line 19
    invoke-static {p1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lu3/p0/i/b;->a:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 20
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final j(J)Lv3/b0;
    .locals 2

    .line 1
    iget v0, p0, Lu3/p0/i/b;->a:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x5

    .line 2
    iput v0, p0, Lu3/p0/i/b;->a:I

    .line 3
    new-instance v0, Lu3/p0/i/b$d;

    invoke-direct {v0, p0, p1, p2}, Lu3/p0/i/b$d;-><init>(Lu3/p0/i/b;J)V

    return-object v0

    :cond_1
    const-string p1, "state: "

    .line 4
    invoke-static {p1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lu3/p0/i/b;->a:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final k(Lu3/z;Ljava/lang/String;)V
    .locals 5

    const-string v0, "headers"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestLine"

    invoke-static {p2, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p0, Lu3/p0/i/b;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lu3/p0/i/b;->g:Lv3/g;

    invoke-interface {v0, p2}, Lv3/g;->d1(Ljava/lang/String;)Lv3/g;

    move-result-object p2

    const-string v0, "\r\n"

    invoke-interface {p2, v0}, Lv3/g;->d1(Ljava/lang/String;)Lv3/g;

    .line 3
    invoke-virtual {p1}, Lu3/z;->size()I

    move-result p2

    :goto_1
    if-ge v1, p2, :cond_1

    .line 4
    iget-object v3, p0, Lu3/p0/i/b;->g:Lv3/g;

    invoke-virtual {p1, v1}, Lu3/z;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lv3/g;->d1(Ljava/lang/String;)Lv3/g;

    move-result-object v3

    const-string v4, ": "

    .line 5
    invoke-interface {v3, v4}, Lv3/g;->d1(Ljava/lang/String;)Lv3/g;

    move-result-object v3

    .line 6
    invoke-virtual {p1, v1}, Lu3/z;->d(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lv3/g;->d1(Ljava/lang/String;)Lv3/g;

    move-result-object v3

    .line 7
    invoke-interface {v3, v0}, Lv3/g;->d1(Ljava/lang/String;)Lv3/g;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 8
    :cond_1
    iget-object p1, p0, Lu3/p0/i/b;->g:Lv3/g;

    invoke-interface {p1, v0}, Lv3/g;->d1(Ljava/lang/String;)Lv3/g;

    .line 9
    iput v2, p0, Lu3/p0/i/b;->a:I

    return-void

    :cond_2
    const-string p1, "state: "

    .line 10
    invoke-static {p1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lu3/p0/i/b;->a:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
