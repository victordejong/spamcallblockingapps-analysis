.class public final synthetic Ln3/e/b/j1/h1;
.super Ljava/lang/Object;
.source "ReadableConfig.java"


# direct methods
.method public static a(Ln3/e/b/j1/i1;Ln3/e/b/j1/j0$a;)Z
    .locals 1
    .param p0, "_this"    # Ln3/e/b/j1/i1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/e/b/j1/j0$a<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ln3/e/b/j1/i1;->getConfig()Ln3/e/b/j1/j0;

    move-result-object v0

    invoke-interface {v0, p1}, Ln3/e/b/j1/j0;->c(Ln3/e/b/j1/j0$a;)Z

    move-result p1

    return p1
.end method

.method public static b(Ln3/e/b/j1/i1;Ljava/lang/String;Ln3/e/b/j1/j0$b;)V
    .locals 1
    .param p0, "_this"    # Ln3/e/b/j1/i1;

    .line 1
    invoke-interface {p0}, Ln3/e/b/j1/i1;->getConfig()Ln3/e/b/j1/j0;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ln3/e/b/j1/j0;->j(Ljava/lang/String;Ln3/e/b/j1/j0$b;)V

    return-void
.end method

.method public static c(Ln3/e/b/j1/i1;Ln3/e/b/j1/j0$a;)Ln3/e/b/j1/j0$c;
    .locals 1
    .param p0, "_this"    # Ln3/e/b/j1/i1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/e/b/j1/j0$a<",
            "*>;)",
            "Ln3/e/b/j1/j0$c;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ln3/e/b/j1/i1;->getConfig()Ln3/e/b/j1/j0;

    move-result-object v0

    invoke-interface {v0, p1}, Ln3/e/b/j1/j0;->e(Ln3/e/b/j1/j0$a;)Ln3/e/b/j1/j0$c;

    move-result-object p1

    return-object p1
.end method

.method public static d(Ln3/e/b/j1/i1;Ln3/e/b/j1/j0$a;)Ljava/util/Set;
    .locals 1
    .param p0, "_this"    # Ln3/e/b/j1/i1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/e/b/j1/j0$a<",
            "*>;)",
            "Ljava/util/Set<",
            "Ln3/e/b/j1/j0$c;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ln3/e/b/j1/i1;->getConfig()Ln3/e/b/j1/j0;

    move-result-object v0

    invoke-interface {v0, p1}, Ln3/e/b/j1/j0;->l(Ln3/e/b/j1/j0$a;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public static e(Ln3/e/b/j1/i1;)Ljava/util/Set;
    .locals 1
    .param p0, "_this"    # Ln3/e/b/j1/i1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ln3/e/b/j1/j0$a<",
            "*>;>;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ln3/e/b/j1/i1;->getConfig()Ln3/e/b/j1/j0;

    move-result-object v0

    invoke-interface {v0}, Ln3/e/b/j1/j0;->d()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static f(Ln3/e/b/j1/i1;Ln3/e/b/j1/j0$a;)Ljava/lang/Object;
    .locals 1
    .param p0, "_this"    # Ln3/e/b/j1/i1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ValueT:",
            "Ljava/lang/Object;",
            ">(",
            "Ln3/e/b/j1/j0$a<",
            "TValueT;>;)TValueT;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ln3/e/b/j1/i1;->getConfig()Ln3/e/b/j1/j0;

    move-result-object v0

    invoke-interface {v0, p1}, Ln3/e/b/j1/j0;->a(Ln3/e/b/j1/j0$a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public static g(Ln3/e/b/j1/i1;Ln3/e/b/j1/j0$a;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "_this"    # Ln3/e/b/j1/i1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ValueT:",
            "Ljava/lang/Object;",
            ">(",
            "Ln3/e/b/j1/j0$a<",
            "TValueT;>;TValueT;)TValueT;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ln3/e/b/j1/i1;->getConfig()Ln3/e/b/j1/j0;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ln3/e/b/j1/j0;->b(Ln3/e/b/j1/j0$a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public static h(Ln3/e/b/j1/i1;Ln3/e/b/j1/j0$a;Ln3/e/b/j1/j0$c;)Ljava/lang/Object;
    .locals 1
    .param p0, "_this"    # Ln3/e/b/j1/i1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ValueT:",
            "Ljava/lang/Object;",
            ">(",
            "Ln3/e/b/j1/j0$a<",
            "TValueT;>;",
            "Ln3/e/b/j1/j0$c;",
            ")TValueT;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ln3/e/b/j1/i1;->getConfig()Ln3/e/b/j1/j0;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ln3/e/b/j1/j0;->p(Ln3/e/b/j1/j0$a;Ln3/e/b/j1/j0$c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
