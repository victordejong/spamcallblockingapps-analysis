.class public final synthetic Li/a/a/f/m;
.super Ljava/lang/Object;
.source "SpanContext.java"


# direct methods
.method public static a(Li/a/a/f/n;)Z
    .locals 1
    .param p0, "_this"    # Li/a/a/f/n;

    .line 1
    invoke-interface {p0}, Li/a/a/f/n;->e()Li/a/a/f/t;

    move-result-object v0

    invoke-interface {v0}, Li/a/a/f/t;->a()Z

    move-result v0

    return v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Li/a/a/f/t;Li/a/a/f/w;)Li/a/a/f/n;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, p2, p3, v0}, Li/a/a/f/g;->b(Ljava/lang/String;Ljava/lang/String;Li/a/a/f/t;Li/a/a/f/w;Z)Li/a/a/f/n;

    move-result-object p0

    return-object p0
.end method

.method public static c()Li/a/a/f/n;
    .locals 1

    .line 1
    sget-object v0, Li/a/a/f/g;->a:Li/a/a/f/n;

    return-object v0
.end method
