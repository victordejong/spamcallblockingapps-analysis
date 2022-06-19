.class public Lcom/nimbusds/jose/util/c;
.super Lcom/nimbusds/jose/util/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/nimbusds/jose/util/a;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static c(Ljava/lang/String;)Lcom/nimbusds/jose/util/c;
    .locals 1

    .line 1
    sget-object v0, Lcom/nimbusds/jose/util/d;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/nimbusds/jose/util/c;->d([B)Lcom/nimbusds/jose/util/c;

    move-result-object p0

    return-object p0
.end method

.method public static d([B)Lcom/nimbusds/jose/util/c;
    .locals 2

    .line 1
    new-instance v0, Lcom/nimbusds/jose/util/c;

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/nimbusds/jose/util/b;->e([BZ)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/nimbusds/jose/util/c;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    instance-of v0, p1, Lcom/nimbusds/jose/util/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/nimbusds/jose/util/a;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
