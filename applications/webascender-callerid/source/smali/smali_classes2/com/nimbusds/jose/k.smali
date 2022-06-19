.class public final Lcom/nimbusds/jose/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nimbusds/jose/k$a;
    }
.end annotation


# instance fields
.field private final f:Ll/a/a/c;

.field private final g:Ljava/lang/String;

.field private final h:[B

.field private final i:Lcom/nimbusds/jose/util/c;

.field private final j:Lcom/nimbusds/jose/h;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/nimbusds/jose/k;->f:Ll/a/a/c;

    .line 3
    iput-object p1, p0, Lcom/nimbusds/jose/k;->g:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/nimbusds/jose/k;->h:[B

    .line 5
    iput-object v0, p0, Lcom/nimbusds/jose/k;->i:Lcom/nimbusds/jose/util/c;

    .line 6
    iput-object v0, p0, Lcom/nimbusds/jose/k;->j:Lcom/nimbusds/jose/h;

    .line 7
    sget-object p1, Lcom/nimbusds/jose/k$a;->STRING:Lcom/nimbusds/jose/k$a;

    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The string must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static a([B)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    .line 1
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/nimbusds/jose/util/d;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private static b(Ljava/lang/String;)[B
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    sget-object v0, Lcom/nimbusds/jose/util/d;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public c()Lcom/nimbusds/jose/util/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nimbusds/jose/k;->i:Lcom/nimbusds/jose/util/c;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/nimbusds/jose/k;->d()[B

    move-result-object v0

    invoke-static {v0}, Lcom/nimbusds/jose/util/c;->d([B)Lcom/nimbusds/jose/util/c;

    move-result-object v0

    return-object v0
.end method

.method public d()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nimbusds/jose/k;->h:[B

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/nimbusds/jose/k;->i:Lcom/nimbusds/jose/util/c;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/nimbusds/jose/util/a;->a()[B

    move-result-object v0

    return-object v0

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/nimbusds/jose/k;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nimbusds/jose/k;->b(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/nimbusds/jose/k;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/nimbusds/jose/k;->j:Lcom/nimbusds/jose/h;

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {v0}, Lcom/nimbusds/jose/d;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/nimbusds/jose/k;->j:Lcom/nimbusds/jose/h;

    invoke-virtual {v0}, Lcom/nimbusds/jose/d;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/nimbusds/jose/k;->j:Lcom/nimbusds/jose/h;

    invoke-virtual {v0}, Lcom/nimbusds/jose/h;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/nimbusds/jose/k;->f:Ll/a/a/c;

    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {v0}, Ll/a/a/c;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 8
    :cond_3
    iget-object v0, p0, Lcom/nimbusds/jose/k;->h:[B

    if-eqz v0, :cond_4

    .line 9
    invoke-static {v0}, Lcom/nimbusds/jose/k;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 10
    :cond_4
    iget-object v0, p0, Lcom/nimbusds/jose/k;->i:Lcom/nimbusds/jose/util/c;

    if-eqz v0, :cond_5

    .line 11
    invoke-virtual {v0}, Lcom/nimbusds/jose/util/a;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method
