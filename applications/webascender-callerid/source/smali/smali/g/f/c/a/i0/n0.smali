.class public final Lg/f/c/a/i0/n0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/f/c/a/u;


# instance fields
.field private final a:Ljava/security/interfaces/RSAPrivateCrtKey;

.field private final b:Ljava/security/interfaces/RSAPublicKey;

.field private final c:Lg/f/c/a/i0/c0;

.field private final d:Lg/f/c/a/i0/c0;

.field private final e:I


# direct methods
.method public constructor <init>(Ljava/security/interfaces/RSAPrivateCrtKey;Lg/f/c/a/i0/c0;Lg/f/c/a/i0/c0;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p2}, Lg/f/c/a/i0/q0;->d(Lg/f/c/a/i0/c0;)V

    .line 3
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    invoke-static {v0}, Lg/f/c/a/i0/q0;->c(I)V

    .line 4
    iput-object p1, p0, Lg/f/c/a/i0/n0;->a:Ljava/security/interfaces/RSAPrivateCrtKey;

    .line 5
    sget-object v0, Lg/f/c/a/i0/a0;->k:Lg/f/c/a/i0/a0;

    const-string v1, "RSA"

    invoke-virtual {v0, v1}, Lg/f/c/a/i0/a0;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/KeyFactory;

    .line 6
    new-instance v1, Ljava/security/spec/RSAPublicKeySpec;

    .line 7
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p1

    check-cast p1, Ljava/security/interfaces/RSAPublicKey;

    iput-object p1, p0, Lg/f/c/a/i0/n0;->b:Ljava/security/interfaces/RSAPublicKey;

    .line 8
    iput-object p2, p0, Lg/f/c/a/i0/n0;->c:Lg/f/c/a/i0/c0;

    .line 9
    iput-object p3, p0, Lg/f/c/a/i0/n0;->d:Lg/f/c/a/i0/c0;

    .line 10
    iput p4, p0, Lg/f/c/a/i0/n0;->e:I

    return-void
.end method

.method private a([BI)[B
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 1
    iget-object v2, v0, Lg/f/c/a/i0/n0;->c:Lg/f/c/a/i0/c0;

    invoke-static {v2}, Lg/f/c/a/i0/q0;->d(Lg/f/c/a/i0/c0;)V

    .line 2
    sget-object v2, Lg/f/c/a/i0/a0;->i:Lg/f/c/a/i0/a0;

    iget-object v3, v0, Lg/f/c/a/i0/n0;->c:Lg/f/c/a/i0/c0;

    .line 3
    invoke-static {v3}, Lg/f/c/a/i0/p0;->e(Lg/f/c/a/i0/c0;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lg/f/c/a/i0/a0;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/MessageDigest;

    move-object/from16 v3, p1

    .line 4
    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    .line 5
    invoke-virtual {v2}, Ljava/security/MessageDigest;->getDigestLength()I

    move-result v4

    add-int/lit8 v5, v1, -0x1

    const/16 v6, 0x8

    .line 6
    div-int/2addr v5, v6

    const/4 v7, 0x1

    add-int/2addr v5, v7

    .line 7
    iget v8, v0, Lg/f/c/a/i0/n0;->e:I

    add-int v9, v4, v8

    add-int/lit8 v9, v9, 0x2

    if-lt v5, v9, :cond_2

    .line 8
    invoke-static {v8}, Lg/f/c/a/i0/k0;->c(I)[B

    move-result-object v8

    add-int/lit8 v9, v4, 0x8

    .line 9
    iget v10, v0, Lg/f/c/a/i0/n0;->e:I

    add-int/2addr v10, v9

    new-array v10, v10, [B

    const/4 v11, 0x0

    .line 10
    invoke-static {v3, v11, v10, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    array-length v3, v8

    invoke-static {v8, v11, v10, v9, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    invoke-virtual {v2, v10}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    sub-int v3, v5, v4

    sub-int/2addr v3, v7

    .line 13
    new-array v6, v3, [B

    .line 14
    iget v9, v0, Lg/f/c/a/i0/n0;->e:I

    sub-int v10, v5, v9

    sub-int/2addr v10, v4

    add-int/lit8 v10, v10, -0x2

    aput-byte v7, v6, v10

    sub-int v9, v5, v9

    sub-int/2addr v9, v4

    sub-int/2addr v9, v7

    .line 15
    array-length v10, v8

    invoke-static {v8, v11, v6, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 16
    iget-object v8, v0, Lg/f/c/a/i0/n0;->d:Lg/f/c/a/i0/c0;

    invoke-static {v2, v3, v8}, Lg/f/c/a/i0/p0;->d([BILg/f/c/a/i0/c0;)[B

    move-result-object v8

    .line 17
    new-array v9, v3, [B

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v3, :cond_0

    .line 18
    aget-byte v12, v6, v10

    aget-byte v13, v8, v10

    xor-int/2addr v12, v13

    int-to-byte v12, v12

    aput-byte v12, v9, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_1
    int-to-long v12, v6

    int-to-long v14, v5

    const-wide/16 v16, 0x8

    mul-long v14, v14, v16

    int-to-long v7, v1

    sub-long/2addr v14, v7

    cmp-long v7, v12, v14

    if-gez v7, :cond_1

    .line 19
    div-int/lit8 v7, v6, 0x8

    .line 20
    rem-int/lit8 v8, v6, 0x8

    rsub-int/lit8 v8, v8, 0x7

    .line 21
    aget-byte v10, v9, v7

    const/4 v12, 0x1

    shl-int v8, v12, v8

    not-int v8, v8

    and-int/2addr v8, v10

    int-to-byte v8, v8

    aput-byte v8, v9, v7

    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    add-int/2addr v4, v3

    add-int/lit8 v1, v4, 0x1

    .line 22
    new-array v1, v1, [B

    .line 23
    invoke-static {v9, v11, v1, v11, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24
    array-length v5, v2

    invoke-static {v2, v11, v1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v2, -0x44

    .line 25
    aput-byte v2, v1, v4

    return-object v1

    .line 26
    :cond_2
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "encoding error"

    invoke-direct {v1, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private b([B)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    sget-object v0, Lg/f/c/a/i0/a0;->f:Lg/f/c/a/i0/a0;

    const-string v1, "RSA/ECB/NOPADDING"

    invoke-virtual {v0, v1}, Lg/f/c/a/i0/a0;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/crypto/Cipher;

    .line 2
    iget-object v3, p0, Lg/f/c/a/i0/n0;->a:Ljava/security/interfaces/RSAPrivateCrtKey;

    const/4 v4, 0x2

    invoke-virtual {v2, v4, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 3
    invoke-virtual {v2, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    .line 4
    invoke-virtual {v0, v1}, Lg/f/c/a/i0/a0;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Cipher;

    .line 5
    iget-object v1, p0, Lg/f/c/a/i0/n0;->b:Ljava/security/interfaces/RSAPublicKey;

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 6
    invoke-virtual {v0, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 7
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v3, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance p1, Ljava/math/BigInteger;

    invoke-direct {p1, v3, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object v2

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Security bug: RSA signature computation error"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public c([B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg/f/c/a/i0/n0;->b:Ljava/security/interfaces/RSAPublicKey;

    invoke-interface {v0}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 2
    invoke-direct {p0, p1, v0}, Lg/f/c/a/i0/n0;->a([BI)[B

    move-result-object p1

    .line 3
    invoke-direct {p0, p1}, Lg/f/c/a/i0/n0;->b([B)[B

    move-result-object p1

    return-object p1
.end method
