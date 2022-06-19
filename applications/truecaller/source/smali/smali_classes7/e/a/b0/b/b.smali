.class public Le/a/b0/b/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu3/b0;


# instance fields
.field public final a:Z

.field public final b:Le/a/b0/e/l;

.field public final c:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/b0/e/h;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Le/a/f4/b/a;

.field public final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLe/a/b0/e/l;Lo3/a;Le/a/f4/b/a;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Le/a/b0/e/l;",
            "Lo3/a<",
            "Le/a/b0/e/h;",
            ">;",
            "Le/a/f4/b/a;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "accountManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "temporaryAuthTokenManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "crossDomainSupport"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Le/a/b0/b/b;->a:Z

    iput-object p2, p0, Le/a/b0/b/b;->b:Le/a/b0/e/l;

    iput-object p3, p0, Le/a/b0/b/b;->c:Lo3/a;

    iput-object p4, p0, Le/a/b0/b/b;->d:Le/a/f4/b/a;

    iput-object p5, p0, Le/a/b0/b/b;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lu3/b0$a;)Lu3/k0;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "chain"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    invoke-interface {p1}, Lu3/b0$a;->request()Lu3/g0;

    move-result-object v0

    .line 2
    iget-object v1, p0, Le/a/b0/b/b;->d:Le/a/f4/b/a;

    invoke-static {v0}, Le/a/n/g0;->T(Lu3/g0;)Le/a/b0/b/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Le/a/f4/b/a;->a(Le/a/b0/b/e;)Z

    move-result v1

    .line 3
    iget-object v2, p0, Le/a/b0/b/b;->e:Ljava/lang/String;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 4
    iget-object v2, p0, Le/a/b0/b/b;->c:Lo3/a;

    invoke-interface {v2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/b0/e/h;

    invoke-interface {v2}, Le/a/b0/e/h;->a()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 5
    :cond_1
    iget-boolean v2, p0, Le/a/b0/b/b;->a:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Le/a/b0/b/b;->b:Le/a/b0/e/l;

    invoke-interface {v2}, Le/a/b0/e/l;->o()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 6
    :cond_2
    iget-object v2, p0, Le/a/b0/b/b;->b:Le/a/b0/e/l;

    invoke-interface {v2}, Le/a/b0/e/l;->m()Ljava/lang/String;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_4

    .line 7
    iget-object v1, v0, Lu3/g0;->b:Lu3/a0;

    .line 8
    invoke-virtual {v1}, Lu3/a0;->f()Lu3/a0$a;

    move-result-object v1

    const-string v3, "encoding"

    const-string v4, "json"

    .line 9
    invoke-virtual {v1, v3, v4}, Lu3/a0$a;->a(Ljava/lang/String;Ljava/lang/String;)Lu3/a0$a;

    .line 10
    invoke-virtual {v1}, Lu3/a0$a;->b()Lu3/a0;

    move-result-object v6

    const-string v1, "request"

    .line 11
    invoke-static {v0, v1}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 13
    iget-object v7, v0, Lu3/g0;->c:Ljava/lang/String;

    .line 14
    iget-object v9, v0, Lu3/g0;->e:Lu3/j0;

    .line 15
    iget-object v1, v0, Lu3/g0;->f:Ljava/util/Map;

    .line 16
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 17
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    goto :goto_1

    .line 18
    :cond_3
    iget-object v1, v0, Lu3/g0;->f:Ljava/util/Map;

    .line 19
    invoke-static {v1}, Ls1/u/i;->b1(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 20
    :goto_1
    iget-object v0, v0, Lu3/g0;->d:Lu3/z;

    .line 21
    invoke-virtual {v0}, Lu3/z;->c()Lu3/z$a;

    move-result-object v0

    const-string v3, "Authorization"

    .line 22
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bearer "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "name"

    .line 23
    invoke-static {v3, v4}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "value"

    invoke-static {v2, v4}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-virtual {v0, v3, v2}, Lu3/z$a;->a(Ljava/lang/String;Ljava/lang/String;)Lu3/z$a;

    const-string v2, "url"

    .line 25
    invoke-static {v6, v2}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-virtual {v0}, Lu3/z$a;->d()Lu3/z;

    move-result-object v8

    .line 27
    invoke-static {v1}, Lu3/p0/c;->y(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v10

    .line 28
    new-instance v0, Lu3/g0;

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Lu3/g0;-><init>(Lu3/a0;Ljava/lang/String;Lu3/z;Lu3/j0;Ljava/util/Map;)V

    goto :goto_2

    :cond_4
    if-nez v1, :cond_7

    .line 29
    iget-boolean v1, p0, Le/a/b0/b/b;->a:Z

    if-eqz v1, :cond_6

    .line 30
    iget-object p1, p0, Le/a/b0/b/b;->b:Le/a/b0/e/l;

    invoke-interface {p1}, Le/a/b0/e/l;->d()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "Bug in application code. You should not do these requests if not everything is initialized. This is to prevent that (potentially lots of) bad backend requests are made."

    if-nez p1, :cond_5

    const/4 p1, 0x0

    :try_start_1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/truecaller/log/AssertionUtil;->isTrue(Z[Ljava/lang/String;)V

    .line 31
    :cond_5
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 32
    :cond_6
    :goto_2
    invoke-interface {p1, v0}, Lu3/b0$a;->a(Lu3/g0;)Lu3/k0;

    move-result-object p1

    return-object p1

    .line 33
    :cond_7
    new-instance p1, Le/a/b0/b/d;

    invoke-direct {p1}, Le/a/b0/b/d;-><init>()V

    throw p1
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    .line 34
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
