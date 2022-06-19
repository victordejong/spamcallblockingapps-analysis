.class public final Le/p/a/y/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/p/a/i;",
            ">;"
        }
    .end annotation
.end field

.field public b:I

.field public c:Z

.field public d:Z


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/p/a/i;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Le/p/a/y/a;->b:I

    .line 3
    iput-object p1, p0, Le/p/a/y/a;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Ljavax/net/ssl/SSLSocket;)Le/p/a/i;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Le/p/a/y/a;->b:I

    iget-object v1, p0, Le/p/a/y/a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    const/4 v2, 0x1

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v3, p0, Le/p/a/y/a;->a:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/p/a/i;

    .line 3
    invoke-virtual {v3, p1}, Le/p/a/i;->b(Ljavax/net/ssl/SSLSocket;)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/2addr v0, v2

    .line 4
    iput v0, p0, Le/p/a/y/a;->b:I

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_9

    .line 5
    iget v0, p0, Le/p/a/y/a;->b:I

    :goto_2
    iget-object v1, p0, Le/p/a/y/a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x0

    if-ge v0, v1, :cond_3

    .line 6
    iget-object v1, p0, Le/p/a/y/a;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/p/a/i;

    invoke-virtual {v1, p1}, Le/p/a/i;->b(Ljavax/net/ssl/SSLSocket;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v0, v2

    goto :goto_3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    move v0, v4

    .line 7
    :goto_3
    iput-boolean v0, p0, Le/p/a/y/a;->c:Z

    .line 8
    sget-object v0, Le/p/a/y/b;->b:Le/p/a/y/b;

    iget-boolean v1, p0, Le/p/a/y/a;->d:Z

    check-cast v0, Le/p/a/q$a;

    .line 9
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    const-class v0, Ljava/lang/String;

    iget-object v5, v3, Le/p/a/i;->c:[Ljava/lang/String;

    if-eqz v5, :cond_4

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v5, v6}, Le/p/a/y/i;->i(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    goto :goto_4

    :cond_4
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v5

    .line 11
    :goto_4
    iget-object v6, v3, Le/p/a/i;->d:[Ljava/lang/String;

    if-eqz v6, :cond_5

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v6, v7}, Le/p/a/y/i;->i(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_5

    :cond_5
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v0

    :goto_5
    if-eqz v1, :cond_6

    .line 12
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v1

    .line 13
    sget-object v6, Le/p/a/y/i;->a:[B

    .line 14
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v6, "TLS_FALLBACK_SCSV"

    invoke-interface {v1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 15
    array-length v1, v5

    add-int/2addr v1, v2

    new-array v2, v1, [Ljava/lang/String;

    .line 16
    array-length v7, v5

    invoke-static {v5, v4, v2, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, -0x1

    .line 17
    aput-object v6, v2, v1

    move-object v5, v2

    .line 18
    :cond_6
    new-instance v1, Le/p/a/i$b;

    invoke-direct {v1, v3}, Le/p/a/i$b;-><init>(Le/p/a/i;)V

    invoke-virtual {v1, v5}, Le/p/a/i$b;->b([Ljava/lang/String;)Le/p/a/i$b;

    invoke-virtual {v1, v0}, Le/p/a/i$b;->d([Ljava/lang/String;)Le/p/a/i$b;

    invoke-virtual {v1}, Le/p/a/i$b;->a()Le/p/a/i;

    move-result-object v0

    .line 19
    iget-object v1, v0, Le/p/a/i;->d:[Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 20
    invoke-virtual {p1, v1}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 21
    :cond_7
    iget-object v0, v0, Le/p/a/i;->c:[Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 22
    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    :cond_8
    return-object v3

    .line 23
    :cond_9
    new-instance v0, Ljava/net/UnknownServiceException;

    const-string v1, "Unable to find acceptable protocols. isFallback="

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Le/p/a/y/a;->d:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", modes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Le/p/a/y/a;->a:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", supported protocols="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
