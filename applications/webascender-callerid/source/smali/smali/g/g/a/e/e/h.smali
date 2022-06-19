.class public abstract Lg/g/a/e/e/h;
.super Lm/u;
.source "SourceFile"


# instance fields
.field private final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lg/g/a/e/e/g;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lm/u;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lg/g/a/e/e/h;->b:Ljava/util/HashMap;

    return-void
.end method

.method private final E(Lg/g/a/e/e/g;Lm/f;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lg/g/a/e/e/h;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 3
    invoke-virtual {p0}, Lg/g/a/e/e/h;->D()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EVENT"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "it"

    if-eqz v1, :cond_0

    .line 4
    sget-object p2, Lg/g/a/e/e/b;->c:Lg/g/a/e/e/b;

    .line 5
    new-instance v7, Lg/g/a/e/e/o;

    invoke-virtual {p1}, Lg/g/a/e/e/g;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    move-object v1, v7

    move-object v2, v3

    move-wide v3, v8

    invoke-direct/range {v1 .. v6}, Lg/g/a/e/e/o;-><init>(Ljava/lang/String;JJ)V

    .line 6
    invoke-virtual {p2, p1, v7}, Lg/g/a/e/e/b;->j(Lg/g/a/e/e/g;Lg/g/a/e/e/o;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lg/g/a/e/e/h;->D()Ljava/lang/String;

    move-result-object v1

    const-string v3, "IMAGE_LOADING"

    invoke-static {v1, v3}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    sget-object v7, Lg/g/a/e/e/b;->c:Lg/g/a/e/e/b;

    .line 9
    new-instance v8, Lg/g/a/e/e/o;

    invoke-virtual {p1}, Lg/g/a/e/e/g;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    move-object v1, v8

    move-object v2, v3

    move-wide v3, v9

    invoke-direct/range {v1 .. v6}, Lg/g/a/e/e/o;-><init>(Ljava/lang/String;JJ)V

    .line 10
    invoke-interface {p2}, Lm/f;->request()Lm/e0;

    move-result-object p2

    invoke-virtual {p2}, Lm/e0;->l()Lm/y;

    move-result-object p2

    invoke-virtual {p2}, Lm/y;->u()Ljava/net/URI;

    move-result-object p2

    invoke-virtual {p2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "call.request().url.toUri().toString()"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v7, p1, v8, p2}, Lg/g/a/e/e/b;->e(Lg/g/a/e/e/g;Lg/g/a/e/e/o;Ljava/lang/String;)V

    .line 12
    :cond_1
    :goto_0
    iget-object p2, p0, Lg/g/a/e/e/h;->b:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    :cond_2
    return-void
.end method

.method private final F(Lg/g/a/e/e/g;Lm/f;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p2}, Lg/g/a/e/e/h;->G(Lm/f;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p0, Lg/g/a/e/e/h;->b:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public B(Lm/f;Lm/w;)V
    .locals 0

    const-string p2, "call"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p2, Lg/g/a/e/e/g;->TLS_CONN:Lg/g/a/e/e/g;

    invoke-direct {p0, p2, p1}, Lg/g/a/e/e/h;->E(Lg/g/a/e/e/g;Lm/f;)V

    return-void
.end method

.method public C(Lm/f;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lg/g/a/e/e/g;->TLS_CONN:Lg/g/a/e/e/g;

    invoke-direct {p0, v0, p1}, Lg/g/a/e/e/h;->F(Lg/g/a/e/e/g;Lm/f;)V

    return-void
.end method

.method public abstract D()Ljava/lang/String;
.end method

.method public abstract G(Lm/f;)Z
.end method

.method public d(Lm/f;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lg/g/a/e/e/h;->b:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public e(Lm/f;Ljava/io/IOException;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "ioe"

    invoke-static {p2, p1}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lg/g/a/e/e/h;->b:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public h(Lm/f;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lm/d0;)V
    .locals 0

    const-string p4, "call"

    invoke-static {p1, p4}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "inetSocketAddress"

    invoke-static {p2, p4}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "proxy"

    invoke-static {p3, p2}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p2, Lg/g/a/e/e/g;->TCP_CONN:Lg/g/a/e/e/g;

    invoke-direct {p0, p2, p1}, Lg/g/a/e/e/h;->E(Lg/g/a/e/e/g;Lm/f;)V

    return-void
.end method

.method public j(Lm/f;Ljava/net/InetSocketAddress;Ljava/net/Proxy;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inetSocketAddress"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "proxy"

    invoke-static {p3, p2}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p2, Lg/g/a/e/e/g;->TCP_CONN:Lg/g/a/e/e/g;

    invoke-direct {p0, p2, p1}, Lg/g/a/e/e/h;->F(Lg/g/a/e/e/g;Lm/f;)V

    return-void
.end method

.method public k(Lm/f;Lm/k;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connection"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p2, Lg/g/a/e/e/g;->HTTP_RESP:Lg/g/a/e/e/g;

    invoke-direct {p0, p2, p1}, Lg/g/a/e/e/h;->F(Lg/g/a/e/e/g;Lm/f;)V

    return-void
.end method

.method public m(Lm/f;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm/f;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Ljava/net/InetAddress;",
            ">;)V"
        }
    .end annotation

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "domainName"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "inetAddressList"

    invoke-static {p3, p2}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p2, Lg/g/a/e/e/g;->DNS_LOOKUP:Lg/g/a/e/e/g;

    invoke-direct {p0, p2, p1}, Lg/g/a/e/e/h;->E(Lg/g/a/e/e/g;Lm/f;)V

    return-void
.end method

.method public n(Lm/f;Ljava/lang/String;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "domainName"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p2, Lg/g/a/e/e/g;->DNS_LOOKUP:Lg/g/a/e/e/g;

    invoke-direct {p0, p2, p1}, Lg/g/a/e/e/h;->F(Lg/g/a/e/e/g;Lm/f;)V

    return-void
.end method

.method public v(Lm/f;J)V
    .locals 0

    const-string p2, "call"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p2, Lg/g/a/e/e/g;->HTTP_RESP:Lg/g/a/e/e/g;

    invoke-direct {p0, p2, p1}, Lg/g/a/e/e/h;->E(Lg/g/a/e/e/g;Lm/f;)V

    return-void
.end method
