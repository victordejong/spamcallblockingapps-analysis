.class public final synthetic Li/a/d/f/u;
.super Ljava/lang/Object;
.source "SpanProcessor.java"


# direct methods
.method public static a(Li/a/d/f/v;)V
    .locals 4
    .param p0, "_this"    # Li/a/d/f/v;

    .line 1
    invoke-interface {p0}, Li/a/d/f/v;->shutdown()Li/a/d/c/e;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v2, v3, v1}, Li/a/d/c/e;->d(JLjava/util/concurrent/TimeUnit;)Li/a/d/c/e;

    return-void
.end method

.method public static b(Li/a/d/f/v;)Li/a/d/c/e;
    .locals 1
    .param p0, "_this"    # Li/a/d/f/v;

    .line 1
    invoke-static {}, Li/a/d/c/e;->g()Li/a/d/c/e;

    move-result-object v0

    return-object v0
.end method

.method public static c(Li/a/d/f/v;)Li/a/d/c/e;
    .locals 1
    .param p0, "_this"    # Li/a/d/f/v;

    .line 1
    invoke-interface {p0}, Li/a/d/f/v;->b0()Li/a/d/c/e;

    move-result-object v0

    return-object v0
.end method

.method public static d(Ljava/lang/Iterable;)Li/a/d/f/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Li/a/d/f/v;",
            ">;)",
            "Li/a/d/f/v;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li/a/d/f/v;

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 5
    invoke-static {}, Li/a/d/f/j;->a()Li/a/d/f/v;

    move-result-object p0

    return-object p0

    .line 6
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_2

    const/4 p0, 0x0

    .line 7
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li/a/d/f/v;

    return-object p0

    .line 8
    :cond_2
    invoke-static {v0}, Li/a/d/f/i;->a(Ljava/util/List;)Li/a/d/f/v;

    move-result-object p0

    return-object p0
.end method
