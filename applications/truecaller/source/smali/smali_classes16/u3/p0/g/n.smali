.class public final Lu3/p0/g/n;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/util/List<",
        "+",
        "Ljava/net/Proxy;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lu3/p0/g/m;

.field public final synthetic c:Ljava/net/Proxy;

.field public final synthetic d:Lu3/a0;


# direct methods
.method public constructor <init>(Lu3/p0/g/m;Ljava/net/Proxy;Lu3/a0;)V
    .locals 0

    iput-object p1, p0, Lu3/p0/g/n;->b:Lu3/p0/g/m;

    iput-object p2, p0, Lu3/p0/g/n;->c:Ljava/net/Proxy;

    iput-object p3, p0, Lu3/p0/g/n;->d:Lu3/a0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lu3/p0/g/n;->c:Ljava/net/Proxy;

    if-eqz v0, :cond_0

    invoke-static {v0}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lu3/p0/g/n;->d:Lu3/a0;

    invoke-virtual {v0}, Lu3/a0;->j()Ljava/net/URI;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    new-array v0, v3, [Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    aput-object v1, v0, v2

    invoke-static {v0}, Lu3/p0/c;->l([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 4
    :cond_1
    iget-object v1, p0, Lu3/p0/g/n;->b:Lu3/p0/g/m;

    .line 5
    iget-object v1, v1, Lu3/p0/g/m;->e:Lu3/a;

    .line 6
    iget-object v1, v1, Lu3/a;->k:Ljava/net/ProxySelector;

    .line 7
    invoke-virtual {v1, v0}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 8
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    :goto_0
    move v1, v3

    :goto_1
    if-eqz v1, :cond_4

    new-array v0, v3, [Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    aput-object v1, v0, v2

    invoke-static {v0}, Lu3/p0/c;->l([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 9
    :cond_4
    invoke-static {v0}, Lu3/p0/c;->x(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lu3/p0/g/n;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
