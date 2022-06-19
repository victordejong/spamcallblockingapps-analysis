.class public final Le/p/a/y/k/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/p/a/y/k/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/p/a/y/k/d$g;,
        Le/p/a/y/k/d$d;,
        Le/p/a/y/k/d$f;,
        Le/p/a/y/k/d$b;,
        Le/p/a/y/k/d$c;,
        Le/p/a/y/k/d$e;
    }
.end annotation


# instance fields
.field public final a:Le/p/a/y/k/q;

.field public final b:Lv3/h;

.field public final c:Lv3/g;

.field public d:Le/p/a/y/k/g;

.field public e:I


# direct methods
.method public constructor <init>(Le/p/a/y/k/q;Lv3/h;Lv3/g;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Le/p/a/y/k/d;->e:I

    .line 3
    iput-object p1, p0, Le/p/a/y/k/d;->a:Le/p/a/y/k/q;

    .line 4
    iput-object p2, p0, Le/p/a/y/k/d;->b:Lv3/h;

    .line 5
    iput-object p3, p0, Le/p/a/y/k/d;->c:Lv3/g;

    return-void
.end method

.method public static h(Le/p/a/y/k/d;Lv3/m;)V
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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/p/a/y/k/d;->c:Lv3/g;

    invoke-interface {v0}, Lv3/g;->flush()V

    return-void
.end method

.method public b(Le/p/a/y/k/m;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Le/p/a/y/k/d;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x3

    .line 2
    iput v0, p0, Le/p/a/y/k/d;->e:I

    .line 3
    iget-object v0, p0, Le/p/a/y/k/d;->c:Lv3/g;

    .line 4
    new-instance v7, Lv3/f;

    invoke-direct {v7}, Lv3/f;-><init>()V

    .line 5
    iget-object v1, p1, Le/p/a/y/k/m;->c:Lv3/f;

    .line 6
    iget-wide v5, v1, Lv3/f;->b:J

    const-wide/16 v3, 0x0

    move-object v2, v7

    .line 7
    invoke-virtual/range {v1 .. v6}, Lv3/f;->k(Lv3/f;JJ)Lv3/f;

    .line 8
    iget-wide v1, v7, Lv3/f;->b:J

    .line 9
    invoke-interface {v0, v7, v1, v2}, Lv3/z;->h1(Lv3/f;J)V

    return-void

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "state: "

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Le/p/a/y/k/d;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c()Le/p/a/u$b;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/p/a/y/k/d;->k()Le/p/a/u$b;

    move-result-object v0

    return-object v0
.end method

.method public d(Le/p/a/y/k/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/p/a/y/k/d;->d:Le/p/a/y/k/g;

    return-void
.end method

.method public e(Le/p/a/s;J)Lv3/z;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p1, p1, Le/p/a/s;->c:Le/p/a/m;

    const-string v0, "Transfer-Encoding"

    invoke-virtual {p1, v0}, Le/p/a/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "chunked"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "state: "

    const/4 v3, 0x1

    if-eqz p1, :cond_1

    .line 3
    iget p1, p0, Le/p/a/y/k/d;->e:I

    if-ne p1, v3, :cond_0

    .line 4
    iput v1, p0, Le/p/a/y/k/d;->e:I

    .line 5
    new-instance p1, Le/p/a/y/k/d$c;

    invoke-direct {p1, p0, v0}, Le/p/a/y/k/d$c;-><init>(Le/p/a/y/k/d;Le/p/a/y/k/d$a;)V

    return-object p1

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p3, p0, Le/p/a/y/k/d;->e:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const-wide/16 v4, -0x1

    cmp-long p1, p2, v4

    if-eqz p1, :cond_3

    .line 7
    iget p1, p0, Le/p/a/y/k/d;->e:I

    if-ne p1, v3, :cond_2

    .line 8
    iput v1, p0, Le/p/a/y/k/d;->e:I

    .line 9
    new-instance p1, Le/p/a/y/k/d$e;

    invoke-direct {p1, p0, p2, p3, v0}, Le/p/a/y/k/d$e;-><init>(Le/p/a/y/k/d;JLe/p/a/y/k/d$a;)V

    return-object p1

    .line 10
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p3, p0, Le/p/a/y/k/d;->e:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot stream a request body without chunked encoding or a known content length!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public f(Le/p/a/s;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/p/a/y/k/d;->d:Le/p/a/y/k/g;

    invoke-virtual {v0}, Le/p/a/y/k/g;->m()V

    .line 2
    iget-object v0, p0, Le/p/a/y/k/d;->d:Le/p/a/y/k/g;

    .line 3
    iget-object v0, v0, Le/p/a/y/k/g;->b:Le/p/a/y/k/q;

    invoke-virtual {v0}, Le/p/a/y/k/q;->a()Le/p/a/y/l/a;

    move-result-object v0

    .line 4
    iget-object v0, v0, Le/p/a/y/l/a;->a:Le/p/a/w;

    .line 5
    iget-object v0, v0, Le/p/a/w;->b:Ljava/net/Proxy;

    .line 6
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    iget-object v2, p1, Le/p/a/s;->b:Ljava/lang/String;

    .line 9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {p1}, Le/p/a/s;->b()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 12
    iget-object v0, p1, Le/p/a/s;->a:Le/p/a/n;

    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 14
    :cond_1
    iget-object v0, p1, Le/p/a/s;->a:Le/p/a/n;

    .line 15
    invoke-static {v0}, Le/m/d/y/n;->Z0(Le/p/a/n;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v0, " HTTP/1.1"

    .line 16
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 18
    iget-object p1, p1, Le/p/a/s;->c:Le/p/a/m;

    .line 19
    invoke-virtual {p0, p1, v0}, Le/p/a/y/k/d;->l(Le/p/a/m;Ljava/lang/String;)V

    return-void
.end method

.method public g(Le/p/a/u;)Le/p/a/v;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Le/p/a/y/k/g;->b(Le/p/a/u;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, v1}, Le/p/a/y/k/d;->i(J)Lv3/b0;

    move-result-object v0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v0, p1, Le/p/a/u;->f:Le/p/a/m;

    const-string v1, "Transfer-Encoding"

    invoke-virtual {v0, v1}, Le/p/a/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    const-string v2, "chunked"

    .line 4
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x5

    const-string v3, "state: "

    const/4 v4, 0x4

    if-eqz v0, :cond_3

    .line 5
    iget-object v0, p0, Le/p/a/y/k/d;->d:Le/p/a/y/k/g;

    .line 6
    iget v1, p0, Le/p/a/y/k/d;->e:I

    if-ne v1, v4, :cond_2

    .line 7
    iput v2, p0, Le/p/a/y/k/d;->e:I

    .line 8
    new-instance v1, Le/p/a/y/k/d$d;

    invoke-direct {v1, p0, v0}, Le/p/a/y/k/d$d;-><init>(Le/p/a/y/k/d;Le/p/a/y/k/g;)V

    move-object v0, v1

    goto :goto_1

    .line 9
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {v3}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Le/p/a/y/k/d;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_3
    sget-object v0, Le/p/a/y/k/j;->a:Ljava/util/Comparator;

    .line 11
    iget-object v0, p1, Le/p/a/u;->f:Le/p/a/m;

    .line 12
    invoke-static {v0}, Le/p/a/y/k/j;->a(Le/p/a/m;)J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v0, v5, v7

    if-eqz v0, :cond_4

    .line 13
    invoke-virtual {p0, v5, v6}, Le/p/a/y/k/d;->i(J)Lv3/b0;

    move-result-object v0

    goto :goto_1

    .line 14
    :cond_4
    iget v0, p0, Le/p/a/y/k/d;->e:I

    if-ne v0, v4, :cond_6

    .line 15
    iget-object v0, p0, Le/p/a/y/k/d;->a:Le/p/a/y/k/q;

    if-eqz v0, :cond_5

    .line 16
    iput v2, p0, Le/p/a/y/k/d;->e:I

    .line 17
    invoke-virtual {v0}, Le/p/a/y/k/q;->f()V

    .line 18
    new-instance v0, Le/p/a/y/k/d$g;

    invoke-direct {v0, p0, v1}, Le/p/a/y/k/d$g;-><init>(Le/p/a/y/k/d;Le/p/a/y/k/d$a;)V

    .line 19
    :goto_1
    new-instance v1, Le/p/a/y/k/k;

    .line 20
    iget-object p1, p1, Le/p/a/u;->f:Le/p/a/m;

    const-string v2, "$this$buffer"

    .line 21
    invoke-static {v0, v2}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    new-instance v2, Lv3/v;

    invoke-direct {v2, v0}, Lv3/v;-><init>(Lv3/b0;)V

    .line 23
    invoke-direct {v1, p1, v2}, Le/p/a/y/k/k;-><init>(Le/p/a/m;Lv3/h;)V

    return-object v1

    .line 24
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "streamAllocation == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {v3}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Le/p/a/y/k/d;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public i(J)Lv3/b0;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Le/p/a/y/k/d;->e:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x5

    .line 2
    iput v0, p0, Le/p/a/y/k/d;->e:I

    .line 3
    new-instance v0, Le/p/a/y/k/d$f;

    invoke-direct {v0, p0, p1, p2}, Le/p/a/y/k/d$f;-><init>(Le/p/a/y/k/d;J)V

    return-object v0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "state: "

    invoke-static {p2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Le/p/a/y/k/d;->e:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public j()Le/p/a/m;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Le/p/a/m$b;

    invoke-direct {v0}, Le/p/a/m$b;-><init>()V

    .line 2
    :goto_0
    iget-object v1, p0, Le/p/a/y/k/d;->b:Lv3/h;

    invoke-interface {v1}, Lv3/h;->o1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    .line 3
    sget-object v2, Le/p/a/y/b;->b:Le/p/a/y/b;

    check-cast v2, Le/p/a/q$a;

    .line 4
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, ":"

    const/4 v3, 0x1

    .line 5
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Le/p/a/m$b;->b(Ljava/lang/String;Ljava/lang/String;)Le/p/a/m$b;

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const-string v4, ""

    if-eqz v2, :cond_1

    .line 8
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 9
    iget-object v2, v0, Le/p/a/m$b;->a:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object v2, v0, Le/p/a/m$b;->a:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_1
    iget-object v2, v0, Le/p/a/m$b;->a:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    iget-object v2, v0, Le/p/a/m$b;->a:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 13
    :cond_2
    invoke-virtual {v0}, Le/p/a/m$b;->c()Le/p/a/m;

    move-result-object v0

    return-object v0
.end method

.method public k()Le/p/a/u$b;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Le/p/a/y/k/d;->e:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "state: "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Le/p/a/y/k/d;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Le/p/a/y/k/d;->b:Lv3/h;

    invoke-interface {v0}, Lv3/h;->o1()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/p/a/y/k/p;->a(Ljava/lang/String;)Le/p/a/y/k/p;

    move-result-object v0

    .line 4
    new-instance v1, Le/p/a/u$b;

    invoke-direct {v1}, Le/p/a/u$b;-><init>()V

    iget-object v2, v0, Le/p/a/y/k/p;->a:Le/p/a/r;

    .line 5
    iput-object v2, v1, Le/p/a/u$b;->b:Le/p/a/r;

    .line 6
    iget v2, v0, Le/p/a/y/k/p;->b:I

    .line 7
    iput v2, v1, Le/p/a/u$b;->c:I

    .line 8
    iget-object v2, v0, Le/p/a/y/k/p;->c:Ljava/lang/String;

    .line 9
    iput-object v2, v1, Le/p/a/u$b;->d:Ljava/lang/String;

    .line 10
    invoke-virtual {p0}, Le/p/a/y/k/d;->j()Le/p/a/m;

    move-result-object v2

    invoke-virtual {v1, v2}, Le/p/a/u$b;->d(Le/p/a/m;)Le/p/a/u$b;

    .line 11
    iget v0, v0, Le/p/a/y/k/p;->b:I

    const/16 v2, 0x64

    if-eq v0, v2, :cond_1

    const/4 v0, 0x4

    .line 12
    iput v0, p0, Le/p/a/y/k/d;->e:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .line 13
    new-instance v1, Ljava/io/IOException;

    const-string v2, "unexpected end of stream on "

    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Le/p/a/y/k/d;->a:Le/p/a/y/k/q;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 15
    throw v1
.end method

.method public l(Le/p/a/m;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Le/p/a/y/k/d;->e:I

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Le/p/a/y/k/d;->c:Lv3/g;

    invoke-interface {v0, p2}, Lv3/g;->d1(Ljava/lang/String;)Lv3/g;

    move-result-object p2

    const-string v0, "\r\n"

    invoke-interface {p2, v0}, Lv3/g;->d1(Ljava/lang/String;)Lv3/g;

    const/4 p2, 0x0

    .line 3
    invoke-virtual {p1}, Le/p/a/m;->d()I

    move-result v1

    :goto_0
    if-ge p2, v1, :cond_0

    .line 4
    iget-object v2, p0, Le/p/a/y/k/d;->c:Lv3/g;

    invoke-virtual {p1, p2}, Le/p/a/m;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lv3/g;->d1(Ljava/lang/String;)Lv3/g;

    move-result-object v2

    const-string v3, ": "

    invoke-interface {v2, v3}, Lv3/g;->d1(Ljava/lang/String;)Lv3/g;

    move-result-object v2

    invoke-virtual {p1, p2}, Le/p/a/m;->e(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lv3/g;->d1(Ljava/lang/String;)Lv3/g;

    move-result-object v2

    invoke-interface {v2, v0}, Lv3/g;->d1(Ljava/lang/String;)Lv3/g;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Le/p/a/y/k/d;->c:Lv3/g;

    invoke-interface {p1, v0}, Lv3/g;->d1(Ljava/lang/String;)Lv3/g;

    const/4 p1, 0x1

    .line 6
    iput p1, p0, Le/p/a/y/k/d;->e:I

    return-void

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "state: "

    invoke-static {p2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Le/p/a/y/k/d;->e:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
