.class final Lokhttp3/internal/connection/j$c;
.super Lkotlin/w/c/l;
.source "SourceFile"

# interfaces
.implements Lkotlin/w/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/connection/j;->g(Lm/y;Ljava/net/Proxy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/w/c/l;",
        "Lkotlin/w/b/a<",
        "Ljava/util/List<",
        "+",
        "Ljava/net/Proxy;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic f:Lokhttp3/internal/connection/j;

.field final synthetic g:Ljava/net/Proxy;

.field final synthetic h:Lm/y;


# direct methods
.method constructor <init>(Lokhttp3/internal/connection/j;Ljava/net/Proxy;Lm/y;)V
    .locals 0

    iput-object p1, p0, Lokhttp3/internal/connection/j$c;->f:Lokhttp3/internal/connection/j;

    iput-object p2, p0, Lokhttp3/internal/connection/j$c;->g:Ljava/net/Proxy;

    iput-object p3, p0, Lokhttp3/internal/connection/j$c;->h:Lm/y;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/w/c/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lokhttp3/internal/connection/j$c;->invoke()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/Proxy;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lokhttp3/internal/connection/j$c;->g:Ljava/net/Proxy;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/s/k;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/connection/j$c;->h:Lm/y;

    invoke-virtual {v0}, Lm/y;->u()Ljava/net/URI;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    new-array v0, v3, [Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    aput-object v1, v0, v2

    invoke-static {v0}, Lm/k0/b;->t([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 5
    :cond_1
    iget-object v1, p0, Lokhttp3/internal/connection/j$c;->f:Lokhttp3/internal/connection/j;

    invoke-static {v1}, Lokhttp3/internal/connection/j;->a(Lokhttp3/internal/connection/j;)Lm/a;

    move-result-object v1

    invoke-virtual {v1}, Lm/a;->i()Ljava/net/ProxySelector;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 6
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_4

    new-array v0, v3, [Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    aput-object v1, v0, v2

    invoke-static {v0}, Lm/k0/b;->t([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 7
    :cond_4
    invoke-static {v0}, Lm/k0/b;->P(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
