.class public final Le/a/n2/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu3/b0;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu3/b0$a;)Lu3/k0;
    .locals 8

    const-string v0, "chain"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Lu3/b0$a;->request()Lu3/g0;

    move-result-object v0

    const-string v1, "request"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    iget-object v3, v0, Lu3/g0;->b:Lu3/a0;

    .line 5
    iget-object v4, v0, Lu3/g0;->c:Ljava/lang/String;

    .line 6
    iget-object v6, v0, Lu3/g0;->e:Lu3/j0;

    .line 7
    iget-object v1, v0, Lu3/g0;->f:Ljava/util/Map;

    .line 8
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    goto :goto_0

    .line 10
    :cond_0
    iget-object v1, v0, Lu3/g0;->f:Ljava/util/Map;

    .line 11
    invoke-static {v1}, Ls1/u/i;->b1(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 12
    :goto_0
    iget-object v0, v0, Lu3/g0;->d:Lu3/z;

    .line 13
    invoke-virtual {v0}, Lu3/z;->c()Lu3/z$a;

    move-result-object v0

    const-string v2, "clientSecret"

    const-string v5, "lvc22mp3l1sfv6ujg83rd17btt"

    const-string v7, "name"

    .line 14
    invoke-static {v2, v7}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "value"

    invoke-static {v5, v7}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0, v2, v5}, Lu3/z$a;->a(Ljava/lang/String;Ljava/lang/String;)Lu3/z$a;

    if-eqz v3, :cond_1

    .line 16
    invoke-virtual {v0}, Lu3/z$a;->d()Lu3/z;

    move-result-object v5

    .line 17
    invoke-static {v1}, Lu3/p0/c;->y(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v7

    .line 18
    new-instance v0, Lu3/g0;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lu3/g0;-><init>(Lu3/a0;Ljava/lang/String;Lu3/z;Lu3/j0;Ljava/util/Map;)V

    .line 19
    invoke-interface {p1, v0}, Lu3/b0$a;->a(Lu3/g0;)Lu3/k0;

    move-result-object p1

    return-object p1

    .line 20
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "url == null"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
