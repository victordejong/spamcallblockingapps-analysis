.class public final Lp3/a/z;
.super Lp3/a/b1;
.source "SourceFile"


# static fields
.field public static final synthetic e:I


# instance fields
.field public final a:Ljava/net/SocketAddress;

.field public final b:Ljava/net/InetSocketAddress;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/net/SocketAddress;Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/lang/String;Lp3/a/z$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lp3/a/b1;-><init>()V

    const-string p5, "proxyAddress"

    .line 2
    invoke-static {p1, p5}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p5, "targetAddress"

    .line 3
    invoke-static {p2, p5}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    instance-of p5, p1, Ljava/net/InetSocketAddress;

    if-eqz p5, :cond_0

    .line 5
    move-object p5, p1

    check-cast p5, Ljava/net/InetSocketAddress;

    invoke-virtual {p5}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result p5

    xor-int/lit8 p5, p5, 0x1

    const-string v0, "The proxy address %s is not resolved"

    invoke-static {p5, v0, p1}, Ln3/g0/y;->checkState(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 6
    :cond_0
    iput-object p1, p0, Lp3/a/z;->a:Ljava/net/SocketAddress;

    .line 7
    iput-object p2, p0, Lp3/a/z;->b:Ljava/net/InetSocketAddress;

    .line 8
    iput-object p3, p0, Lp3/a/z;->c:Ljava/lang/String;

    .line 9
    iput-object p4, p0, Lp3/a/z;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lp3/a/z;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Lp3/a/z;

    .line 3
    iget-object v0, p0, Lp3/a/z;->a:Ljava/net/SocketAddress;

    iget-object v2, p1, Lp3/a/z;->a:Ljava/net/SocketAddress;

    invoke-static {v0, v2}, Ln3/g0/y;->equal1(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lp3/a/z;->b:Ljava/net/InetSocketAddress;

    iget-object v2, p1, Lp3/a/z;->b:Ljava/net/InetSocketAddress;

    .line 4
    invoke-static {v0, v2}, Ln3/g0/y;->equal1(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lp3/a/z;->c:Ljava/lang/String;

    iget-object v2, p1, Lp3/a/z;->c:Ljava/lang/String;

    .line 5
    invoke-static {v0, v2}, Ln3/g0/y;->equal1(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lp3/a/z;->d:Ljava/lang/String;

    iget-object p1, p1, Lp3/a/z;->d:Ljava/lang/String;

    .line 6
    invoke-static {v0, p1}, Ln3/g0/y;->equal1(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lp3/a/z;->a:Ljava/net/SocketAddress;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lp3/a/z;->b:Ljava/net/InetSocketAddress;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lp3/a/z;->c:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lp3/a/z;->d:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 2
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Ln3/g0/y;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lp3/a/z;->a:Ljava/net/SocketAddress;

    const-string v2, "proxyAddr"

    .line 2
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 3
    iget-object v1, p0, Lp3/a/z;->b:Ljava/net/InetSocketAddress;

    const-string v2, "targetAddr"

    .line 4
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 5
    iget-object v1, p0, Lp3/a/z;->c:Ljava/lang/String;

    const-string v2, "username"

    .line 6
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 7
    iget-object v1, p0, Lp3/a/z;->d:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "hasPassword"

    .line 8
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 9
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
