.class public Lp/a/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp/a/a/b$a;
    }
.end annotation


# instance fields
.field private final a:Lp/a/a/b$a;


# direct methods
.method private constructor <init>(Lp/a/a/b$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lp/a/a/b;->a:Lp/a/a/b$a;

    return-void
.end method

.method synthetic constructor <init>(Lp/a/a/b$a;Lp/a/a/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lp/a/a/b;-><init>(Lp/a/a/b$a;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;[B)Lp/a/a/b;
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0, p1, p2}, Lp/a/a/b$a;->q(Ljava/lang/String;Ljava/lang/String;[B)Lp/a/a/b$a;

    move-result-object p0

    invoke-virtual {p0}, Lp/a/a/b$a;->m()Lp/a/a/b;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private f([C)Ljavax/crypto/SecretKey;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/UnsupportedEncodingException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lp/a/a/b;->a:Lp/a/a/b$a;

    invoke-static {v0}, Lp/a/a/b$a;->i(Lp/a/a/b$a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v0

    .line 2
    new-instance v1, Ljavax/crypto/spec/PBEKeySpec;

    iget-object v2, p0, Lp/a/a/b;->a:Lp/a/a/b$a;

    invoke-static {v2}, Lp/a/a/b$a;->j(Lp/a/a/b$a;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lp/a/a/b;->a:Lp/a/a/b$a;

    invoke-static {v3}, Lp/a/a/b$a;->b(Lp/a/a/b$a;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    iget-object v3, p0, Lp/a/a/b;->a:Lp/a/a/b$a;

    invoke-static {v3}, Lp/a/a/b$a;->k(Lp/a/a/b$a;)I

    move-result v3

    iget-object v4, p0, Lp/a/a/b;->a:Lp/a/a/b$a;

    invoke-static {v4}, Lp/a/a/b$a;->l(Lp/a/a/b$a;)I

    move-result v4

    invoke-direct {v1, p1, v2, v3, v4}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 3
    invoke-virtual {v0, v1}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object p1

    .line 4
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p1

    iget-object v1, p0, Lp/a/a/b;->a:Lp/a/a/b$a;

    invoke-static {v1}, Lp/a/a/b$a;->c(Lp/a/a/b$a;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method private g(Ljava/lang/String;)[C
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lp/a/a/b;->a:Lp/a/a/b$a;

    invoke-static {v0}, Lp/a/a/b$a;->d(Lp/a/a/b$a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lp/a/a/b;->a:Lp/a/a/b$a;

    invoke-static {v1}, Lp/a/a/b$a;->b(Lp/a/a/b$a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 3
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lq/a/a/a/a;->f([BI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    iget-object v0, p0, Lp/a/a/b;->a:Lp/a/a/b$a;

    invoke-static {v0}, Lp/a/a/b$a;->h(Lp/a/a/b$a;)I

    move-result v0

    invoke-static {p1, v0}, Lq/a/a/a/a;->a(Ljava/lang/String;I)[B

    move-result-object p1

    .line 2
    iget-object v0, p0, Lp/a/a/b;->a:Lp/a/a/b$a;

    invoke-static {v0}, Lp/a/a/b$a;->a(Lp/a/a/b$a;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lp/a/a/b;->g(Ljava/lang/String;)[C

    move-result-object v0

    invoke-direct {p0, v0}, Lp/a/a/b;->f([C)Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lp/a/a/b;->a:Lp/a/a/b$a;

    invoke-static {v1}, Lp/a/a/b$a;->e(Lp/a/a/b$a;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v2, 0x2

    .line 4
    iget-object v3, p0, Lp/a/a/b;->a:Lp/a/a/b$a;

    invoke-static {v3}, Lp/a/a/b$a;->f(Lp/a/a/b$a;)Ljavax/crypto/spec/IvParameterSpec;

    move-result-object v3

    iget-object v4, p0, Lp/a/a/b;->a:Lp/a/a/b$a;

    invoke-static {v4}, Lp/a/a/b$a;->g(Lp/a/a/b$a;)Ljava/security/SecureRandom;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 5
    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    .line 6
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lp/a/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    iget-object v0, p0, Lp/a/a/b;->a:Lp/a/a/b$a;

    invoke-static {v0}, Lp/a/a/b$a;->a(Lp/a/a/b$a;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lp/a/a/b;->g(Ljava/lang/String;)[C

    move-result-object v0

    invoke-direct {p0, v0}, Lp/a/a/b;->f([C)Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lp/a/a/b;->a:Lp/a/a/b$a;

    invoke-static {v1}, Lp/a/a/b$a;->b(Lp/a/a/b$a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 3
    iget-object v1, p0, Lp/a/a/b;->a:Lp/a/a/b$a;

    invoke-static {v1}, Lp/a/a/b$a;->e(Lp/a/a/b$a;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v2, 0x1

    .line 4
    iget-object v3, p0, Lp/a/a/b;->a:Lp/a/a/b$a;

    invoke-static {v3}, Lp/a/a/b$a;->f(Lp/a/a/b$a;)Ljavax/crypto/spec/IvParameterSpec;

    move-result-object v3

    iget-object v4, p0, Lp/a/a/b;->a:Lp/a/a/b$a;

    invoke-static {v4}, Lp/a/a/b$a;->g(Lp/a/a/b$a;)Ljava/security/SecureRandom;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 5
    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    iget-object v0, p0, Lp/a/a/b;->a:Lp/a/a/b$a;

    invoke-static {v0}, Lp/a/a/b$a;->h(Lp/a/a/b$a;)I

    move-result v0

    invoke-static {p1, v0}, Lq/a/a/a/a;->f([BI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lp/a/a/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method
