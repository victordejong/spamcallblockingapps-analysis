.class public final synthetic Li/a/a/f/j;
.super Ljava/lang/Object;
.source "Span.java"


# direct methods
.method public static a(Li/a/a/f/k;Ljava/lang/String;Ljava/lang/String;)Li/a/a/f/k;
    .locals 0
    .param p0, "_this"    # Li/a/a/f/k;

    .line 1
    invoke-static {p1}, Li/a/a/c/e;->d(Ljava/lang/String;)Li/a/a/c/f;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Li/a/a/f/k;->g(Li/a/a/c/f;Ljava/lang/Object;)Li/a/a/f/k;

    move-result-object p1

    return-object p1
.end method

.method public static b(Li/a/a/f/k;Ljava/lang/String;Z)Li/a/a/f/k;
    .locals 0
    .param p0, "_this"    # Li/a/a/f/k;

    .line 1
    invoke-static {p1}, Li/a/a/c/e;->a(Ljava/lang/String;)Li/a/a/c/f;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Li/a/a/f/k;->g(Li/a/a/c/f;Ljava/lang/Object;)Li/a/a/f/k;

    move-result-object p1

    return-object p1
.end method

.method public static c(Li/a/a/f/k;Li/a/b/e;)Li/a/b/e;
    .locals 1
    .param p0, "_this"    # Li/a/a/f/k;

    .line 1
    sget-object v0, Li/a/a/f/o;->a:Li/a/b/g;

    invoke-interface {p1, v0, p0}, Li/a/b/e;->f(Li/a/b/g;Ljava/lang/Object;)Li/a/b/e;

    move-result-object p1

    return-object p1
.end method

.method public static d()Li/a/a/f/k;
    .locals 2

    .line 1
    invoke-static {}, Li/a/b/d;->c()Li/a/b/e;

    move-result-object v0

    sget-object v1, Li/a/a/f/o;->a:Li/a/b/g;

    invoke-interface {v0, v1}, Li/a/b/e;->e(Li/a/b/g;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/a/a/f/k;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Li/a/a/f/j;->f()Li/a/a/f/k;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static e(Li/a/b/e;)Li/a/a/f/k;
    .locals 1

    if-nez p0, :cond_0

    .line 1
    invoke-static {}, Li/a/a/f/j;->f()Li/a/a/f/k;

    move-result-object p0

    return-object p0

    .line 2
    :cond_0
    sget-object v0, Li/a/a/f/o;->a:Li/a/b/g;

    invoke-interface {p0, v0}, Li/a/b/e;->e(Li/a/b/g;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li/a/a/f/k;

    if-nez p0, :cond_1

    .line 3
    invoke-static {}, Li/a/a/f/j;->f()Li/a/a/f/k;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static f()Li/a/a/f/k;
    .locals 1

    .line 1
    sget-object v0, Li/a/a/f/i;->b:Li/a/a/f/i;

    return-object v0
.end method

.method public static g(Li/a/a/f/n;)Li/a/a/f/k;
    .locals 1

    if-eqz p0, :cond_1

    .line 1
    invoke-interface {p0}, Li/a/a/f/n;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p0}, Li/a/a/f/i;->e(Li/a/a/f/n;)Li/a/a/f/k;

    move-result-object p0

    return-object p0

    .line 3
    :cond_1
    :goto_0
    invoke-static {}, Li/a/a/f/j;->f()Li/a/a/f/k;

    move-result-object p0

    return-object p0
.end method
