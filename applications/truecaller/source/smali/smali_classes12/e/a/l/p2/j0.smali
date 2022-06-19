.class public final Le/a/l/p2/j0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/l/p2/i0;


# instance fields
.field public final a:Ls1/g;

.field public final b:Ls1/g;

.field public final c:Le/a/l/s2/a;


# direct methods
.method public constructor <init>(Le/a/l/s2/a;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "firebasePersonalisationManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l/p2/j0;->c:Le/a/l/s2/a;

    .line 2
    sget-object p1, Le/a/l/p2/j0$e;->b:Le/a/l/p2/j0$e;

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/l/p2/j0;->a:Ls1/g;

    .line 3
    new-instance p1, Le/a/l/p2/j0$f;

    invoke-direct {p1, p0}, Le/a/l/p2/j0$f;-><init>(Le/a/l/p2/j0;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/l/p2/j0;->b:Ls1/g;

    return-void
.end method


# virtual methods
.method public a(Le/a/l/p2/v1;Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/l/p2/v1;",
            "Ls1/w/d<",
            "-",
            "Le/a/l/r2/a<",
            "Le/a/l/p2/z1;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Le/a/l/r2/a$b;->a:Le/a/l/r2/a$b;

    instance-of v1, p2, Le/a/l/p2/j0$a;

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Le/a/l/p2/j0$a;

    iget v2, v1, Le/a/l/p2/j0$a;->e:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Le/a/l/p2/j0$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v1, Le/a/l/p2/j0$a;

    invoke-direct {v1, p0, p2}, Le/a/l/p2/j0$a;-><init>(Le/a/l/p2/j0;Ls1/w/d;)V

    :goto_0
    iget-object p2, v1, Le/a/l/p2/j0$a;->d:Ljava/lang/Object;

    sget-object v2, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v3, v1, Le/a/l/p2/j0$a;->e:I

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v4, :cond_1

    :try_start_0
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    :try_start_1
    invoke-virtual {p0}, Le/a/l/p2/j0;->e()Le/a/l/p2/t0;

    move-result-object p2

    iput v4, v1, Le/a/l/p2/j0$a;->e:I

    invoke-interface {p2, p1, v1}, Le/a/l/p2/t0;->d(Le/a/l/p2/v1;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v2, :cond_3

    return-object v2

    :cond_3
    :goto_1
    check-cast p2, Le/a/l/p2/z1;

    new-instance p1, Le/a/l/r2/a$c;

    invoke-direct {p1, p2}, Le/a/l/r2/a$c;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 5
    instance-of p2, p1, Lx3/l;

    if-eqz p2, :cond_4

    new-instance v0, Le/a/l/r2/a$a;

    check-cast p1, Lx3/l;

    .line 6
    iget p1, p1, Lx3/l;->a:I

    .line 7
    invoke-direct {v0, p1}, Le/a/l/r2/a$a;-><init>(I)V

    goto :goto_2

    .line 8
    :cond_4
    instance-of p2, p1, Ljava/net/SocketTimeoutException;

    if-eqz p2, :cond_5

    sget-object v0, Le/a/l/r2/a$d;->a:Le/a/l/r2/a$d;

    goto :goto_2

    .line 9
    :cond_5
    instance-of p1, p1, Ljava/io/IOException;

    :goto_2
    move-object p1, v0

    :goto_3
    return-object p1
.end method

.method public b(Le/a/l/p2/a2$b;Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/l/p2/a2$b;",
            "Ls1/w/d<",
            "-",
            "Le/a/l/r2/a<",
            "+",
            "Ljava/util/List<",
            "Le/a/l/p2/a2$a;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Le/a/l/r2/a$b;->a:Le/a/l/r2/a$b;

    instance-of v1, p2, Le/a/l/p2/j0$b;

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Le/a/l/p2/j0$b;

    iget v2, v1, Le/a/l/p2/j0$b;->e:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Le/a/l/p2/j0$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v1, Le/a/l/p2/j0$b;

    invoke-direct {v1, p0, p2}, Le/a/l/p2/j0$b;-><init>(Le/a/l/p2/j0;Ls1/w/d;)V

    :goto_0
    iget-object p2, v1, Le/a/l/p2/j0$b;->d:Ljava/lang/Object;

    sget-object v2, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v3, v1, Le/a/l/p2/j0$b;->e:I

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v4, :cond_1

    :try_start_0
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    :try_start_1
    invoke-virtual {p0}, Le/a/l/p2/j0;->e()Le/a/l/p2/t0;

    move-result-object p2

    iput v4, v1, Le/a/l/p2/j0$b;->e:I

    invoke-interface {p2, p1, v1}, Le/a/l/p2/t0;->f(Le/a/l/p2/a2$b;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v2, :cond_3

    return-object v2

    :cond_3
    :goto_1
    check-cast p2, Ljava/util/List;

    new-instance p1, Le/a/l/r2/a$c;

    invoke-direct {p1, p2}, Le/a/l/r2/a$c;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 5
    instance-of p2, p1, Lx3/l;

    if-eqz p2, :cond_4

    new-instance v0, Le/a/l/r2/a$a;

    check-cast p1, Lx3/l;

    .line 6
    iget p1, p1, Lx3/l;->a:I

    .line 7
    invoke-direct {v0, p1}, Le/a/l/r2/a$a;-><init>(I)V

    goto :goto_2

    .line 8
    :cond_4
    instance-of p2, p1, Ljava/net/SocketTimeoutException;

    if-eqz p2, :cond_5

    sget-object v0, Le/a/l/r2/a$d;->a:Le/a/l/r2/a$d;

    goto :goto_2

    .line 9
    :cond_5
    instance-of p1, p1, Ljava/io/IOException;

    :goto_2
    move-object p1, v0

    :goto_3
    return-object p1
.end method

.method public c(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Le/a/l/r2/a<",
            "+",
            "Ljava/util/List<",
            "Le/a/l/p2/k1;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Le/a/l/r2/a$b;->a:Le/a/l/r2/a$b;

    instance-of v1, p2, Le/a/l/p2/j0$c;

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Le/a/l/p2/j0$c;

    iget v2, v1, Le/a/l/p2/j0$c;->e:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Le/a/l/p2/j0$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v1, Le/a/l/p2/j0$c;

    invoke-direct {v1, p0, p2}, Le/a/l/p2/j0$c;-><init>(Le/a/l/p2/j0;Ls1/w/d;)V

    :goto_0
    iget-object p2, v1, Le/a/l/p2/j0$c;->d:Ljava/lang/Object;

    sget-object v2, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v3, v1, Le/a/l/p2/j0$c;->e:I

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v4, :cond_1

    :try_start_0
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    :try_start_1
    iget-object p2, p0, Le/a/l/p2/j0;->c:Le/a/l/s2/a;

    invoke-interface {p2}, Le/a/l/s2/a;->a()Ljava/lang/String;

    move-result-object p2

    .line 5
    invoke-virtual {p0}, Le/a/l/p2/j0;->e()Le/a/l/p2/t0;

    move-result-object v3

    iput v4, v1, Le/a/l/p2/j0$c;->e:I

    invoke-interface {v3, p1, p2, v1}, Le/a/l/p2/t0;->b(Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v2, :cond_3

    return-object v2

    :cond_3
    :goto_1
    check-cast p2, Ljava/util/List;

    new-instance p1, Le/a/l/r2/a$c;

    invoke-direct {p1, p2}, Le/a/l/r2/a$c;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 6
    instance-of p2, p1, Lx3/l;

    if-eqz p2, :cond_4

    new-instance v0, Le/a/l/r2/a$a;

    check-cast p1, Lx3/l;

    .line 7
    iget p1, p1, Lx3/l;->a:I

    .line 8
    invoke-direct {v0, p1}, Le/a/l/r2/a$a;-><init>(I)V

    goto :goto_2

    .line 9
    :cond_4
    instance-of p2, p1, Ljava/net/SocketTimeoutException;

    if-eqz p2, :cond_5

    sget-object v0, Le/a/l/r2/a$d;->a:Le/a/l/r2/a$d;

    goto :goto_2

    .line 10
    :cond_5
    instance-of p1, p1, Ljava/io/IOException;

    :goto_2
    move-object p1, v0

    :goto_3
    return-object p1
.end method

.method public d(Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Le/a/l/r2/a<",
            "Le/a/l/p2/o1;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Le/a/l/r2/a$b;->a:Le/a/l/r2/a$b;

    instance-of v1, p1, Le/a/l/p2/j0$d;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Le/a/l/p2/j0$d;

    iget v2, v1, Le/a/l/p2/j0$d;->e:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Le/a/l/p2/j0$d;->e:I

    goto :goto_0

    :cond_0
    new-instance v1, Le/a/l/p2/j0$d;

    invoke-direct {v1, p0, p1}, Le/a/l/p2/j0$d;-><init>(Le/a/l/p2/j0;Ls1/w/d;)V

    :goto_0
    iget-object p1, v1, Le/a/l/p2/j0$d;->d:Ljava/lang/Object;

    sget-object v2, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v3, v1, Le/a/l/p2/j0$d;->e:I

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v4, :cond_1

    :try_start_0
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    :try_start_1
    invoke-virtual {p0}, Le/a/l/p2/j0;->e()Le/a/l/p2/t0;

    move-result-object p1

    iput v4, v1, Le/a/l/p2/j0$d;->e:I

    invoke-interface {p1, v1}, Le/a/l/p2/t0;->g(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_3

    return-object v2

    :cond_3
    :goto_1
    check-cast p1, Le/a/l/p2/o1;

    new-instance v1, Le/a/l/r2/a$c;

    invoke-direct {v1, p1}, Le/a/l/r2/a$c;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 2
    instance-of v1, p1, Lx3/l;

    if-eqz v1, :cond_4

    new-instance v0, Le/a/l/r2/a$a;

    check-cast p1, Lx3/l;

    .line 3
    iget p1, p1, Lx3/l;->a:I

    .line 4
    invoke-direct {v0, p1}, Le/a/l/r2/a$a;-><init>(I)V

    goto :goto_2

    .line 5
    :cond_4
    instance-of v1, p1, Ljava/net/SocketTimeoutException;

    if-eqz v1, :cond_5

    sget-object v0, Le/a/l/r2/a$d;->a:Le/a/l/r2/a$d;

    goto :goto_2

    .line 6
    :cond_5
    instance-of p1, p1, Ljava/io/IOException;

    :goto_2
    move-object v1, v0

    :goto_3
    return-object v1
.end method

.method public final e()Le/a/l/p2/t0;
    .locals 1

    iget-object v0, p0, Le/a/l/p2/j0;->b:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/l/p2/t0;

    return-object v0
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Le/a/l/r2/a<",
            "Le/a/l/p2/o1;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    const-string v2, "$this$toRequestBody"

    sget-object v3, Le/a/l/r2/a$b;->a:Le/a/l/r2/a$b;

    instance-of v4, v1, Le/a/l/p2/j0$g;

    if-eqz v4, :cond_0

    move-object v4, v1

    check-cast v4, Le/a/l/p2/j0$g;

    iget v5, v4, Le/a/l/p2/j0$g;->e:I

    const/high16 v6, -0x80000000

    and-int v7, v5, v6

    if-eqz v7, :cond_0

    sub-int/2addr v5, v6

    iput v5, v4, Le/a/l/p2/j0$g;->e:I

    move-object/from16 v5, p0

    goto :goto_0

    :cond_0
    new-instance v4, Le/a/l/p2/j0$g;

    move-object/from16 v5, p0

    invoke-direct {v4, v5, v1}, Le/a/l/p2/j0$g;-><init>(Le/a/l/p2/j0;Ls1/w/d;)V

    :goto_0
    iget-object v1, v4, Le/a/l/p2/j0$g;->d:Ljava/lang/Object;

    sget-object v6, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v7, v4, Le/a/l/p2/j0$g;->e:I

    const/4 v8, 0x1

    if-eqz v7, :cond_2

    if-ne v7, v8, :cond_1

    :try_start_0
    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_2
    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Le/a/l/p2/j0;->e()Le/a/l/p2/t0;

    move-result-object v1

    sget-object v7, Lu3/c0;->f:Lu3/c0$a;

    const-string v7, "text/plain"

    invoke-static {v7}, Lu3/c0$a;->b(Ljava/lang/String;)Lu3/c0;

    move-result-object v7

    .line 5
    invoke-static {v0, v2}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sget-object v9, Ls1/f0/b;->a:Ljava/nio/charset/Charset;

    if-eqz v7, :cond_4

    .line 7
    sget-object v10, Lu3/c0;->d:Ljava/util/regex/Pattern;

    const/4 v10, 0x0

    .line 8
    invoke-virtual {v7, v10}, Lu3/c0;->a(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v10

    if-nez v10, :cond_3

    .line 9
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "; charset=utf-8"

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lu3/c0$a;->b(Ljava/lang/String;)Lu3/c0;

    move-result-object v7

    goto :goto_1

    :cond_3
    move-object v9, v10

    .line 10
    :cond_4
    :goto_1
    invoke-virtual {v0, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string v9, "(this as java.lang.String).getBytes(charset)"

    invoke-static {v0, v9}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    array-length v9, v0

    .line 12
    invoke-static {v0, v2}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    array-length v2, v0

    int-to-long v10, v2

    const/4 v2, 0x0

    int-to-long v12, v2

    int-to-long v14, v9

    invoke-static/range {v10 .. v15}, Lu3/p0/c;->c(JJJ)V

    .line 14
    new-instance v10, Lu3/j0$a$a;

    invoke-direct {v10, v0, v7, v9, v2}, Lu3/j0$a$a;-><init>([BLu3/c0;II)V

    .line 15
    iput v8, v4, Le/a/l/p2/j0$g;->e:I

    move-object/from16 v0, p2

    invoke-interface {v1, v10, v0, v4}, Le/a/l/p2/t0;->h(Lu3/j0;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v6, :cond_5

    return-object v6

    :cond_5
    :goto_2
    check-cast v1, Le/a/l/p2/o1;

    new-instance v0, Le/a/l/r2/a$c;

    invoke-direct {v0, v1}, Le/a/l/r2/a$c;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 16
    instance-of v1, v0, Lx3/l;

    if-eqz v1, :cond_6

    new-instance v3, Le/a/l/r2/a$a;

    check-cast v0, Lx3/l;

    .line 17
    iget v0, v0, Lx3/l;->a:I

    .line 18
    invoke-direct {v3, v0}, Le/a/l/r2/a$a;-><init>(I)V

    goto :goto_3

    .line 19
    :cond_6
    instance-of v1, v0, Ljava/net/SocketTimeoutException;

    if-eqz v1, :cond_7

    sget-object v3, Le/a/l/r2/a$d;->a:Le/a/l/r2/a$d;

    goto :goto_3

    .line 20
    :cond_7
    instance-of v0, v0, Ljava/io/IOException;

    :goto_3
    move-object v0, v3

    :goto_4
    return-object v0
.end method

.method public g(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Le/a/l/r2/a<",
            "Le/a/l/p2/k1;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Le/a/l/r2/a$b;->a:Le/a/l/r2/a$b;

    instance-of v1, p2, Le/a/l/p2/j0$h;

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Le/a/l/p2/j0$h;

    iget v2, v1, Le/a/l/p2/j0$h;->e:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Le/a/l/p2/j0$h;->e:I

    goto :goto_0

    :cond_0
    new-instance v1, Le/a/l/p2/j0$h;

    invoke-direct {v1, p0, p2}, Le/a/l/p2/j0$h;-><init>(Le/a/l/p2/j0;Ls1/w/d;)V

    :goto_0
    iget-object p2, v1, Le/a/l/p2/j0$h;->d:Ljava/lang/Object;

    sget-object v2, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v3, v1, Le/a/l/p2/j0$h;->e:I

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v4, :cond_1

    :try_start_0
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    :try_start_1
    invoke-virtual {p0}, Le/a/l/p2/j0;->e()Le/a/l/p2/t0;

    move-result-object p2

    iput v4, v1, Le/a/l/p2/j0$h;->e:I

    invoke-interface {p2, p1, v1}, Le/a/l/p2/t0;->a(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v2, :cond_3

    return-object v2

    :cond_3
    :goto_1
    check-cast p2, Le/a/l/p2/k1;

    new-instance p1, Le/a/l/r2/a$c;

    invoke-direct {p1, p2}, Le/a/l/r2/a$c;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 5
    instance-of p2, p1, Lx3/l;

    if-eqz p2, :cond_4

    new-instance v0, Le/a/l/r2/a$a;

    check-cast p1, Lx3/l;

    .line 6
    iget p1, p1, Lx3/l;->a:I

    .line 7
    invoke-direct {v0, p1}, Le/a/l/r2/a$a;-><init>(I)V

    goto :goto_2

    .line 8
    :cond_4
    instance-of p2, p1, Ljava/net/SocketTimeoutException;

    if-eqz p2, :cond_5

    sget-object v0, Le/a/l/r2/a$d;->a:Le/a/l/r2/a$d;

    goto :goto_2

    .line 9
    :cond_5
    instance-of p1, p1, Ljava/io/IOException;

    :goto_2
    move-object p1, v0

    :goto_3
    return-object p1
.end method

.method public h(Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Le/a/l/r2/a<",
            "Le/a/l/p2/o1;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    const-string v2, "$this$toRequestBody"

    sget-object v3, Le/a/l/r2/a$b;->a:Le/a/l/r2/a$b;

    instance-of v4, v1, Le/a/l/p2/j0$i;

    if-eqz v4, :cond_0

    move-object v4, v1

    check-cast v4, Le/a/l/p2/j0$i;

    iget v5, v4, Le/a/l/p2/j0$i;->e:I

    const/high16 v6, -0x80000000

    and-int v7, v5, v6

    if-eqz v7, :cond_0

    sub-int/2addr v5, v6

    iput v5, v4, Le/a/l/p2/j0$i;->e:I

    move-object/from16 v5, p0

    goto :goto_0

    :cond_0
    new-instance v4, Le/a/l/p2/j0$i;

    move-object/from16 v5, p0

    invoke-direct {v4, v5, v1}, Le/a/l/p2/j0$i;-><init>(Le/a/l/p2/j0;Ls1/w/d;)V

    :goto_0
    iget-object v1, v4, Le/a/l/p2/j0$i;->d:Ljava/lang/Object;

    sget-object v6, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v7, v4, Le/a/l/p2/j0$i;->e:I

    const/4 v8, 0x1

    if-eqz v7, :cond_2

    if-ne v7, v8, :cond_1

    :try_start_0
    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_2
    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Le/a/l/p2/j0;->e()Le/a/l/p2/t0;

    move-result-object v1

    sget-object v7, Lu3/c0;->f:Lu3/c0$a;

    const-string v7, "text/plain"

    invoke-static {v7}, Lu3/c0$a;->b(Ljava/lang/String;)Lu3/c0;

    move-result-object v7

    .line 5
    invoke-static {v0, v2}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sget-object v9, Ls1/f0/b;->a:Ljava/nio/charset/Charset;

    if-eqz v7, :cond_4

    .line 7
    sget-object v10, Lu3/c0;->d:Ljava/util/regex/Pattern;

    const/4 v10, 0x0

    .line 8
    invoke-virtual {v7, v10}, Lu3/c0;->a(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v10

    if-nez v10, :cond_3

    .line 9
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "; charset=utf-8"

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lu3/c0$a;->b(Ljava/lang/String;)Lu3/c0;

    move-result-object v7

    goto :goto_1

    :cond_3
    move-object v9, v10

    .line 10
    :cond_4
    :goto_1
    invoke-virtual {v0, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string v9, "(this as java.lang.String).getBytes(charset)"

    invoke-static {v0, v9}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    array-length v9, v0

    .line 12
    invoke-static {v0, v2}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    array-length v2, v0

    int-to-long v10, v2

    const/4 v2, 0x0

    int-to-long v12, v2

    int-to-long v14, v9

    invoke-static/range {v10 .. v15}, Lu3/p0/c;->c(JJJ)V

    .line 14
    new-instance v10, Lu3/j0$a$a;

    invoke-direct {v10, v0, v7, v9, v2}, Lu3/j0$a$a;-><init>([BLu3/c0;II)V

    .line 15
    iput v8, v4, Le/a/l/p2/j0$i;->e:I

    move-object/from16 v0, p2

    invoke-interface {v1, v10, v0, v4}, Le/a/l/p2/t0;->j(Lu3/j0;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v6, :cond_5

    return-object v6

    :cond_5
    :goto_2
    check-cast v1, Le/a/l/p2/o1;

    new-instance v0, Le/a/l/r2/a$c;

    invoke-direct {v0, v1}, Le/a/l/r2/a$c;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 16
    instance-of v1, v0, Lx3/l;

    if-eqz v1, :cond_6

    new-instance v3, Le/a/l/r2/a$a;

    check-cast v0, Lx3/l;

    .line 17
    iget v0, v0, Lx3/l;->a:I

    .line 18
    invoke-direct {v3, v0}, Le/a/l/r2/a$a;-><init>(I)V

    goto :goto_3

    .line 19
    :cond_6
    instance-of v1, v0, Ljava/net/SocketTimeoutException;

    if-eqz v1, :cond_7

    sget-object v3, Le/a/l/r2/a$d;->a:Le/a/l/r2/a$d;

    goto :goto_3

    .line 20
    :cond_7
    instance-of v0, v0, Ljava/io/IOException;

    :goto_3
    move-object v0, v3

    :goto_4
    return-object v0
.end method
