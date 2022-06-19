.class public final Le/a/f4/b/f/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu3/b0;


# instance fields
.field public final a:Le/a/f4/b/f/b;

.field public final b:Le/a/f4/b/d;


# direct methods
.method public constructor <init>(Le/a/f4/b/f/b;Le/a/f4/b/d;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "resolver"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "crossDomainSupport"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/f4/b/f/a;->a:Le/a/f4/b/f/b;

    iput-object p2, p0, Le/a/f4/b/f/a;->b:Le/a/f4/b/d;

    return-void
.end method


# virtual methods
.method public a(Lu3/b0$a;)Lu3/k0;
    .locals 10
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
    iget-object v1, v0, Lu3/g0;->b:Lu3/a0;

    .line 3
    iget-object v1, v1, Lu3/a0;->e:Ljava/lang/String;

    .line 4
    iget-object v2, p0, Le/a/f4/b/f/a;->a:Le/a/f4/b/f/b;

    invoke-static {v0}, Le/a/n/g0;->T(Lu3/g0;)Le/a/b0/b/e;

    move-result-object v3

    iget-object v4, p0, Le/a/f4/b/f/a;->b:Le/a/f4/b/d;

    invoke-interface {v2, v3, v4}, Le/a/f4/b/f/b;->a(Le/a/b0/b/e;Le/a/f4/b/a;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5
    iget-object v3, v0, Lu3/g0;->b:Lu3/a0;

    .line 6
    invoke-virtual {v3}, Lu3/a0;->f()Lu3/a0$a;

    move-result-object v3

    invoke-virtual {v3, v2}, Lu3/a0$a;->e(Ljava/lang/String;)Lu3/a0$a;

    invoke-virtual {v3}, Lu3/a0$a;->b()Lu3/a0;

    move-result-object v5

    const-string v2, "request"

    .line 7
    invoke-static {v0, v2}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 9
    iget-object v6, v0, Lu3/g0;->c:Ljava/lang/String;

    .line 10
    iget-object v8, v0, Lu3/g0;->e:Lu3/j0;

    .line 11
    iget-object v2, v0, Lu3/g0;->f:Ljava/util/Map;

    .line 12
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 13
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    goto :goto_0

    .line 14
    :cond_0
    iget-object v2, v0, Lu3/g0;->f:Ljava/util/Map;

    .line 15
    invoke-static {v2}, Ls1/u/i;->b1(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    .line 16
    :goto_0
    iget-object v0, v0, Lu3/g0;->d:Lu3/z;

    .line 17
    invoke-virtual {v0}, Lu3/z;->c()Lu3/z$a;

    move-result-object v0

    const-string v3, "url"

    .line 18
    invoke-static {v5, v3}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "Host"

    const-string v4, "name"

    .line 19
    invoke-static {v3, v4}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "value"

    invoke-static {v1, v4}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-virtual {v0, v3, v1}, Lu3/z$a;->a(Ljava/lang/String;Ljava/lang/String;)Lu3/z$a;

    .line 21
    invoke-virtual {v0}, Lu3/z$a;->d()Lu3/z;

    move-result-object v7

    .line 22
    invoke-static {v2}, Lu3/p0/c;->y(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v9

    .line 23
    new-instance v0, Lu3/g0;

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lu3/g0;-><init>(Lu3/a0;Ljava/lang/String;Lu3/z;Lu3/j0;Ljava/util/Map;)V

    .line 24
    invoke-interface {p1, v0}, Lu3/b0$a;->a(Lu3/g0;)Lu3/k0;

    move-result-object p1

    return-object p1

    .line 25
    :cond_1
    invoke-interface {p1, v0}, Lu3/b0$a;->a(Lu3/g0;)Lu3/k0;

    move-result-object p1

    return-object p1
.end method
