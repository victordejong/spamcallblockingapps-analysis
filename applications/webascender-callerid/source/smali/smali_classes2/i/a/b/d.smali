.class public final synthetic Li/a/b/d;
.super Ljava/lang/Object;
.source "Context.java"


# direct methods
.method public static a(Li/a/b/e;)Li/a/b/p;
    .locals 1
    .param p0, "_this"    # Li/a/b/e;

    .line 1
    invoke-static {}, Li/a/b/h;->b()Li/a/b/i;

    move-result-object v0

    invoke-interface {v0, p0}, Li/a/b/i;->attach(Li/a/b/e;)Li/a/b/p;

    move-result-object v0

    return-object v0
.end method

.method public static b(Li/a/b/e;Li/a/b/n;)Li/a/b/e;
    .locals 0
    .param p0, "_this"    # Li/a/b/e;

    .line 1
    invoke-interface {p1, p0}, Li/a/b/n;->f(Li/a/b/e;)Li/a/b/e;

    move-result-object p1

    return-object p1
.end method

.method public static c()Li/a/b/e;
    .locals 1

    .line 1
    invoke-static {}, Li/a/b/h;->b()Li/a/b/i;

    move-result-object v0

    invoke-interface {v0}, Li/a/b/i;->current()Li/a/b/e;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Li/a/b/d;->d()Li/a/b/e;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static d()Li/a/b/e;
    .locals 1

    .line 1
    invoke-static {}, Li/a/b/c;->a()Li/a/b/e;

    move-result-object v0

    return-object v0
.end method
