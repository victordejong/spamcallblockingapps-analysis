.class public final Le/a/b0/b/j/e/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu3/b0;


# instance fields
.field public final a:Le/a/b0/b/j/e/d;


# direct methods
.method public constructor <init>(Le/a/b0/b/j/e/d;)V
    .locals 1

    const-string v0, "userAgentProvider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/b0/b/j/e/c;->a:Le/a/b0/b/j/e/d;

    return-void
.end method


# virtual methods
.method public a(Lu3/b0$a;)Lu3/k0;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "chain"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Lu3/b0$a;->request()Lu3/g0;

    move-result-object v0

    .line 2
    iget-object v1, p0, Le/a/b0/b/j/e/c;->a:Le/a/b0/b/j/e/d;

    invoke-interface {v1}, Le/a/b0/b/j/e/d;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "request"

    .line 3
    invoke-static {v0, v2}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 5
    iget-object v4, v0, Lu3/g0;->b:Lu3/a0;

    .line 6
    iget-object v5, v0, Lu3/g0;->c:Ljava/lang/String;

    .line 7
    iget-object v7, v0, Lu3/g0;->e:Lu3/j0;

    .line 8
    iget-object v2, v0, Lu3/g0;->f:Ljava/util/Map;

    .line 9
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 10
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    goto :goto_0

    .line 11
    :cond_0
    iget-object v2, v0, Lu3/g0;->f:Ljava/util/Map;

    .line 12
    invoke-static {v2}, Ls1/u/i;->b1(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    .line 13
    :goto_0
    iget-object v0, v0, Lu3/g0;->d:Lu3/z;

    .line 14
    invoke-virtual {v0}, Lu3/z;->c()Lu3/z$a;

    move-result-object v0

    const-string v3, "User-Agent"

    const-string v6, "name"

    .line 15
    invoke-static {v3, v6}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, v3}, Lu3/z$a;->f(Ljava/lang/String;)Lu3/z$a;

    .line 17
    invoke-static {v3, v6}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "value"

    invoke-static {v1, v6}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-virtual {v0, v3, v1}, Lu3/z$a;->a(Ljava/lang/String;Ljava/lang/String;)Lu3/z$a;

    if-eqz v4, :cond_1

    .line 19
    invoke-virtual {v0}, Lu3/z$a;->d()Lu3/z;

    move-result-object v6

    .line 20
    invoke-static {v2}, Lu3/p0/c;->y(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v8

    .line 21
    new-instance v0, Lu3/g0;

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lu3/g0;-><init>(Lu3/a0;Ljava/lang/String;Lu3/z;Lu3/j0;Ljava/util/Map;)V

    goto :goto_1

    .line 22
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "url == null"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :cond_2
    :goto_1
    invoke-interface {p1, v0}, Lu3/b0$a;->a(Lu3/g0;)Lu3/k0;

    move-result-object p1

    return-object p1
.end method
