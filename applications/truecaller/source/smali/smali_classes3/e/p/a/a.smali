.class public final Le/p/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/p/a/n;

.field public final b:Le/p/a/k;

.field public final c:Ljavax/net/SocketFactory;

.field public final d:Le/p/a/b;

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/p/a/r;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/p/a/i;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/net/ProxySelector;

.field public final h:Ljava/net/Proxy;

.field public final i:Ljavax/net/ssl/SSLSocketFactory;

.field public final j:Ljavax/net/ssl/HostnameVerifier;

.field public final k:Le/p/a/e;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILe/p/a/k;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Le/p/a/e;Le/p/a/b;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Le/p/a/k;",
            "Ljavax/net/SocketFactory;",
            "Ljavax/net/ssl/SSLSocketFactory;",
            "Ljavax/net/ssl/HostnameVerifier;",
            "Le/p/a/e;",
            "Le/p/a/b;",
            "Ljava/net/Proxy;",
            "Ljava/util/List<",
            "Le/p/a/r;",
            ">;",
            "Ljava/util/List<",
            "Le/p/a/i;",
            ">;",
            "Ljava/net/ProxySelector;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Le/p/a/n$b;

    invoke-direct {v0}, Le/p/a/n$b;-><init>()V

    if-eqz p5, :cond_0

    const-string v1, "https"

    goto :goto_0

    :cond_0
    const-string v1, "http"

    :goto_0
    invoke-virtual {v0, v1}, Le/p/a/n$b;->h(Ljava/lang/String;)Le/p/a/n$b;

    invoke-virtual {v0, p1}, Le/p/a/n$b;->d(Ljava/lang/String;)Le/p/a/n$b;

    invoke-virtual {v0, p2}, Le/p/a/n$b;->f(I)Le/p/a/n$b;

    invoke-virtual {v0}, Le/p/a/n$b;->a()Le/p/a/n;

    move-result-object p1

    iput-object p1, p0, Le/p/a/a;->a:Le/p/a/n;

    if-eqz p3, :cond_6

    .line 3
    iput-object p3, p0, Le/p/a/a;->b:Le/p/a/k;

    if-eqz p4, :cond_5

    .line 4
    iput-object p4, p0, Le/p/a/a;->c:Ljavax/net/SocketFactory;

    if-eqz p8, :cond_4

    .line 5
    iput-object p8, p0, Le/p/a/a;->d:Le/p/a/b;

    if-eqz p10, :cond_3

    .line 6
    sget-object p1, Le/p/a/y/i;->a:[B

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 8
    iput-object p1, p0, Le/p/a/a;->e:Ljava/util/List;

    if-eqz p11, :cond_2

    .line 9
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 10
    iput-object p1, p0, Le/p/a/a;->f:Ljava/util/List;

    if-eqz p12, :cond_1

    .line 11
    iput-object p12, p0, Le/p/a/a;->g:Ljava/net/ProxySelector;

    .line 12
    iput-object p9, p0, Le/p/a/a;->h:Ljava/net/Proxy;

    .line 13
    iput-object p5, p0, Le/p/a/a;->i:Ljavax/net/ssl/SSLSocketFactory;

    .line 14
    iput-object p6, p0, Le/p/a/a;->j:Ljavax/net/ssl/HostnameVerifier;

    .line 15
    iput-object p7, p0, Le/p/a/a;->k:Le/p/a/e;

    return-void

    .line 16
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "proxySelector == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "connectionSpecs == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "protocols == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "authenticator == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "socketFactory == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "dns == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Le/p/a/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Le/p/a/a;

    .line 3
    iget-object v0, p0, Le/p/a/a;->a:Le/p/a/n;

    iget-object v2, p1, Le/p/a/a;->a:Le/p/a/n;

    invoke-virtual {v0, v2}, Le/p/a/n;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/p/a/a;->b:Le/p/a/k;

    iget-object v2, p1, Le/p/a/a;->b:Le/p/a/k;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/p/a/a;->d:Le/p/a/b;

    iget-object v2, p1, Le/p/a/a;->d:Le/p/a/b;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/p/a/a;->e:Ljava/util/List;

    iget-object v2, p1, Le/p/a/a;->e:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/p/a/a;->f:Ljava/util/List;

    iget-object v2, p1, Le/p/a/a;->f:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/p/a/a;->g:Ljava/net/ProxySelector;

    iget-object v2, p1, Le/p/a/a;->g:Ljava/net/ProxySelector;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/p/a/a;->h:Ljava/net/Proxy;

    iget-object v2, p1, Le/p/a/a;->h:Ljava/net/Proxy;

    invoke-static {v0, v2}, Le/p/a/y/i;->f(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/p/a/a;->i:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v2, p1, Le/p/a/a;->i:Ljavax/net/ssl/SSLSocketFactory;

    invoke-static {v0, v2}, Le/p/a/y/i;->f(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/p/a/a;->j:Ljavax/net/ssl/HostnameVerifier;

    iget-object v2, p1, Le/p/a/a;->j:Ljavax/net/ssl/HostnameVerifier;

    invoke-static {v0, v2}, Le/p/a/y/i;->f(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/p/a/a;->k:Le/p/a/e;

    iget-object p1, p1, Le/p/a/a;->k:Le/p/a/e;

    invoke-static {v0, p1}, Le/p/a/y/i;->f(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Le/p/a/a;->a:Le/p/a/n;

    invoke-virtual {v0}, Le/p/a/n;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Le/p/a/a;->b:Le/p/a/k;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 3
    iget-object v0, p0, Le/p/a/a;->d:Le/p/a/b;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-object v1, p0, Le/p/a/a;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 5
    iget-object v0, p0, Le/p/a/a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 6
    iget-object v1, p0, Le/p/a/a;->g:Ljava/net/ProxySelector;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 7
    iget-object v0, p0, Le/p/a/a;->h:Ljava/net/Proxy;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/Proxy;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 8
    iget-object v0, p0, Le/p/a/a;->i:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 9
    iget-object v0, p0, Le/p/a/a;->j:Ljavax/net/ssl/HostnameVerifier;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 10
    iget-object v0, p0, Le/p/a/a;->k:Le/p/a/e;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_3
    add-int/2addr v1, v2

    return v1
.end method
