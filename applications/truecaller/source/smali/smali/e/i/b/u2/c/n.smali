.class public abstract Le/i/b/u2/c/n;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Le/i/b/u2/c/m;
.end method

.method public b()Ljava/net/URL;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/i/b/u2/c/n;->a()Le/i/b/u2/c/m;

    move-result-object v0

    invoke-virtual {v0}, Le/i/b/u2/c/m;->c()Le/i/b/u2/c/o;

    move-result-object v0

    invoke-virtual {v0}, Le/i/b/u2/c/o;->a()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0}, Le/i/b/u2/c/n;->e()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/i/b/u2/c/p;

    .line 3
    invoke-virtual {v2}, Le/i/b/u2/c/p;->a()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public abstract d()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Le/i/b/u2/c/r;",
            ">;"
        }
    .end annotation

    .annotation runtime Le/m/e/d0/b;
        value = "products"
    .end annotation
.end method

.method public abstract e()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Le/i/b/u2/c/p;",
            ">;"
        }
    .end annotation

    .annotation runtime Le/m/e/d0/b;
        value = "impressionPixels"
    .end annotation
.end method

.method public abstract f()Le/i/b/u2/c/q;
.end method

.method public g()Ljava/net/URL;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/i/b/u2/c/n;->f()Le/i/b/u2/c/q;

    move-result-object v0

    invoke-virtual {v0}, Le/i/b/u2/c/q;->b()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public h()Le/i/b/u2/c/r;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/i/b/u2/c/n;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/i/b/u2/c/r;

    return-object v0
.end method
