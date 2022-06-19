.class public final synthetic Le/a/t/b/d/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu3/b0;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/t/b/d/a;->a:Ljava/lang/String;

    iput-object p2, p0, Le/a/t/b/d/a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lu3/b0$a;)Lu3/k0;
    .locals 11

    iget-object v0, p0, Le/a/t/b/d/a;->a:Ljava/lang/String;

    iget-object v1, p0, Le/a/t/b/d/a;->b:Ljava/lang/String;

    .line 1
    invoke-interface {p1}, Lu3/b0$a;->request()Lu3/g0;

    move-result-object v2

    const-string v3, "request"

    .line 2
    invoke-static {v2, v3}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    iget-object v5, v2, Lu3/g0;->b:Lu3/a0;

    .line 5
    iget-object v6, v2, Lu3/g0;->c:Ljava/lang/String;

    .line 6
    iget-object v8, v2, Lu3/g0;->e:Lu3/j0;

    .line 7
    iget-object v3, v2, Lu3/g0;->f:Ljava/util/Map;

    .line 8
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 9
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    goto :goto_0

    .line 10
    :cond_0
    iget-object v3, v2, Lu3/g0;->f:Ljava/util/Map;

    .line 11
    invoke-static {v3}, Ls1/u/i;->b1(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    .line 12
    :goto_0
    iget-object v2, v2, Lu3/g0;->d:Lu3/z;

    .line 13
    invoke-virtual {v2}, Lu3/z;->c()Lu3/z$a;

    move-result-object v2

    const-string v4, "sdkVersion"

    const-string v7, "2.6.0"

    const-string v9, "name"

    .line 14
    invoke-static {v4, v9}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "value"

    invoke-static {v7, v10}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-virtual {v2, v4, v7}, Lu3/z$a;->a(Ljava/lang/String;Ljava/lang/String;)Lu3/z$a;

    const-string v4, "sdkVariant"

    .line 16
    invoke-static {v4, v9}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v10}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-virtual {v2, v4, v0}, Lu3/z$a;->a(Ljava/lang/String;Ljava/lang/String;)Lu3/z$a;

    const-string v0, "sdkVariantVersion"

    .line 18
    invoke-static {v0, v9}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v10}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-virtual {v2, v0, v1}, Lu3/z$a;->a(Ljava/lang/String;Ljava/lang/String;)Lu3/z$a;

    if-eqz v5, :cond_1

    .line 20
    invoke-virtual {v2}, Lu3/z$a;->d()Lu3/z;

    move-result-object v7

    .line 21
    invoke-static {v3}, Lu3/p0/c;->y(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v9

    .line 22
    new-instance v0, Lu3/g0;

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lu3/g0;-><init>(Lu3/a0;Ljava/lang/String;Lu3/z;Lu3/j0;Ljava/util/Map;)V

    .line 23
    invoke-interface {p1, v0}, Lu3/b0$a;->a(Lu3/g0;)Lu3/k0;

    move-result-object p1

    return-object p1

    .line 24
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "url == null"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
