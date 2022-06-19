.class public final Lu3/p0/g/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Z

.field public c:Z

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lu3/n;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lu3/n;",
            ">;)V"
        }
    .end annotation

    const-string v0, "connectionSpecs"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu3/p0/g/b;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Ljavax/net/ssl/SSLSocket;)Lu3/n;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "sslSocket"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v1, p0, Lu3/p0/g/b;->a:I

    iget-object v2, p0, Lu3/p0/g/b;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge v1, v2, :cond_1

    .line 2
    iget-object v5, p0, Lu3/p0/g/b;->d:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lu3/n;

    .line 3
    invoke-virtual {v5, p1}, Lu3/n;->b(Ljavax/net/ssl/SSLSocket;)Z

    move-result v6

    if-eqz v6, :cond_0

    add-int/2addr v1, v4

    .line 4
    iput v1, p0, Lu3/p0/g/b;->a:I

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move-object v5, v3

    :goto_1
    if-nez v5, :cond_3

    const-string v0, "Unable to find acceptable protocols. isFallback="

    .line 5
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lu3/p0/g/b;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, " modes="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    iget-object v2, p0, Lu3/p0/g/b;->d:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, " supported protocols="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {}, Ls1/z/c/l;->k()V

    throw v3

    :cond_2
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "java.util.Arrays.toString(this)"

    invoke-static {p1, v1}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 8
    new-instance v0, Ljava/net/UnknownServiceException;

    invoke-direct {v0, p1}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_3
    iget v1, p0, Lu3/p0/g/b;->a:I

    iget-object v2, p0, Lu3/p0/g/b;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_2
    if-ge v1, v2, :cond_5

    .line 10
    iget-object v3, p0, Lu3/p0/g/b;->d:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lu3/n;

    invoke-virtual {v3, p1}, Lu3/n;->b(Ljavax/net/ssl/SSLSocket;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v1, v4

    goto :goto_3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    .line 11
    :goto_3
    iput-boolean v1, p0, Lu3/p0/g/b;->b:Z

    .line 12
    iget-boolean v1, p0, Lu3/p0/g/b;->c:Z

    .line 13
    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget-object v0, v5, Lu3/n;->c:[Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 15
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    const-string v2, "sslSocket.enabledCipherSuites"

    invoke-static {v0, v2}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v5, Lu3/n;->c:[Ljava/lang/String;

    sget-object v3, Lu3/k;->t:Lu3/k$b;

    .line 16
    sget-object v3, Lu3/k;->b:Ljava/util/Comparator;

    sget-object v3, Lu3/k;->b:Ljava/util/Comparator;

    .line 17
    invoke-static {v0, v2, v3}, Lu3/p0/c;->p([Ljava/lang/String;[Ljava/lang/String;Ljava/util/Comparator;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 18
    :cond_6
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    .line 19
    :goto_4
    iget-object v2, v5, Lu3/n;->d:[Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 20
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "sslSocket.enabledProtocols"

    invoke-static {v2, v3}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v5, Lu3/n;->d:[Ljava/lang/String;

    sget-object v6, Ls1/v/a;->a:Ls1/v/a;

    invoke-static {v2, v3, v6}, Lu3/p0/c;->p([Ljava/lang/String;[Ljava/lang/String;Ljava/util/Comparator;)[Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    .line 21
    :cond_7
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v2

    .line 22
    :goto_5
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v3

    const-string v6, "supportedCipherSuites"

    .line 23
    invoke-static {v3, v6}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "TLS_FALLBACK_SCSV"

    .line 24
    sget-object v7, Lu3/k;->t:Lu3/k$b;

    .line 25
    sget-object v7, Lu3/k;->b:Ljava/util/Comparator;

    sget-object v7, Lu3/k;->b:Ljava/util/Comparator;

    .line 26
    sget-object v8, Lu3/p0/c;->a:[B

    const-string v8, "$this$indexOf"

    invoke-static {v3, v8}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "value"

    invoke-static {v6, v8}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "comparator"

    invoke-static {v7, v9}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    array-length v9, v3

    const/4 v10, 0x0

    :goto_6
    const/4 v11, -0x1

    if-ge v10, v9, :cond_a

    .line 28
    aget-object v12, v3, v10

    .line 29
    move-object v13, v7

    check-cast v13, Lu3/k$a;

    invoke-virtual {v13, v12, v6}, Lu3/k$a;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v12

    if-nez v12, :cond_8

    move v12, v4

    goto :goto_7

    :cond_8
    const/4 v12, 0x0

    :goto_7
    if-eqz v12, :cond_9

    goto :goto_8

    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_a
    move v10, v11

    :goto_8
    const-string v6, "cipherSuitesIntersection"

    if-eqz v1, :cond_b

    if-eq v10, v11, :cond_b

    .line 30
    invoke-static {v0, v6}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    aget-object v1, v3, v10

    const-string v3, "supportedCipherSuites[indexOfFallbackScsv]"

    invoke-static {v1, v3}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "$this$concat"

    .line 32
    invoke-static {v0, v3}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v8}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    array-length v3, v0

    add-int/2addr v3, v4

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v3, "java.util.Arrays.copyOf(this, newSize)"

    invoke-static {v0, v3}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, [Ljava/lang/String;

    .line 34
    invoke-static {v0}, Le/q/f/a/d/a;->V0([Ljava/lang/Object;)I

    move-result v3

    aput-object v1, v0, v3

    .line 35
    :cond_b
    new-instance v1, Lu3/n$a;

    invoke-direct {v1, v5}, Lu3/n$a;-><init>(Lu3/n;)V

    .line 36
    invoke-static {v0, v6}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v3, v0

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Lu3/n$a;->b([Ljava/lang/String;)Lu3/n$a;

    const-string v0, "tlsVersionsIntersection"

    .line 37
    invoke-static {v2, v0}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, v2

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Lu3/n$a;->e([Ljava/lang/String;)Lu3/n$a;

    .line 38
    invoke-virtual {v1}, Lu3/n$a;->a()Lu3/n;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lu3/n;->c()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 40
    iget-object v1, v0, Lu3/n;->d:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 41
    :cond_c
    invoke-virtual {v0}, Lu3/n;->a()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 42
    iget-object v0, v0, Lu3/n;->c:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    :cond_d
    return-object v5
.end method
