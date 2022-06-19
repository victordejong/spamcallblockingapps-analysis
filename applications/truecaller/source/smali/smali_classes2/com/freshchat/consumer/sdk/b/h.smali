.class public Lcom/freshchat/consumer/sdk/b/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freshchat/consumer/sdk/b/h$a;
    }
.end annotation


# static fields
.field private static cH:Landroid/content/SharedPreferences; = null

.field private static cI:[B = null

.field private static cJ:Z = false

.field private static fB:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const-string v0, "FRESHCHAT"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lcom/freshchat/consumer/sdk/b/h;->cH:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    sput-object p2, Lcom/freshchat/consumer/sdk/b/h;->cH:Landroid/content/SharedPreferences;

    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/freshchat/consumer/sdk/b/h;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/freshchat/consumer/sdk/b/h;->cH:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {p2, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    invoke-static {}, Lcom/freshchat/consumer/sdk/b/h;->bb()Ljava/lang/String;

    move-result-object p2

    sget-object v1, Lcom/freshchat/consumer/sdk/b/h;->cH:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/b/h;->ix()V

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/freshchat/consumer/sdk/b/h;->cH:Landroid/content/SharedPreferences;

    const-string v1, "PREF_ALG_VER"

    const/4 v2, 0x1

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    sput p1, Lcom/freshchat/consumer/sdk/b/h;->fB:I

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Shared Preference encryption version "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/freshchat/consumer/sdk/b/h;->fB:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/freshchat/consumer/sdk/j/ai;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/freshchat/consumer/sdk/b/h;->decode(Ljava/lang/String;)[B

    move-result-object p1

    sput-object p1, Lcom/freshchat/consumer/sdk/b/h;->cI:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    sget-boolean p2, Lcom/freshchat/consumer/sdk/b/h;->cJ:Z

    if-eqz p2, :cond_2

    const-string p2, "Error init:"

    invoke-static {p2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/freshchat/consumer/sdk/j/ai;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method private static M(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/freshchat/consumer/sdk/b/h;->eP()Ljavax/crypto/Cipher;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    sget v1, Lcom/freshchat/consumer/sdk/b/h;->fB:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v0

    invoke-static {v0, p0}, Lcom/freshchat/consumer/sdk/j/k;->a([B[B)[B

    move-result-object p0

    :cond_1
    invoke-static {p0}, Lcom/freshchat/consumer/sdk/b/h;->encode([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-boolean v0, Lcom/freshchat/consumer/sdk/b/h;->cJ:Z

    if-eqz v0, :cond_2

    const-string v0, "FRESHCHAT"

    const-string v1, "encrypt"

    invoke-static {v0, v1, p0}, Lcom/freshchat/consumer/sdk/j/ai;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    const/4 p0, 0x0

    :cond_3
    :goto_0
    return-object p0
.end method

.method private static N(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/freshchat/consumer/sdk/b/h;->decode(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/b/h;->a([B)Ljavax/crypto/Cipher;

    move-result-object v0

    sget v1, Lcom/freshchat/consumer/sdk/b/h;->fB:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    array-length v1, p0

    const/16 v2, 0xc

    sub-int/2addr v1, v2

    invoke-virtual {v0, p0, v2, v1}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    :goto_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    sget-boolean v0, Lcom/freshchat/consumer/sdk/b/h;->cJ:Z

    if-eqz v0, :cond_2

    const-string v0, "FRESHCHAT"

    const-string v1, "decrypt"

    invoke-static {v0, v1, p0}, Lcom/freshchat/consumer/sdk/j/ai;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    const/4 p0, 0x0

    :cond_3
    :goto_1
    return-object p0
.end method

.method public static synthetic O(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/b/h;->M(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a([B)Ljavax/crypto/Cipher;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    invoke-static {}, Lcom/freshchat/consumer/sdk/b/h;->iw()Ljavax/crypto/Cipher;

    move-result-object v0

    sget v1, Lcom/freshchat/consumer/sdk/b/h;->fB:I

    const/4 v2, 0x2

    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v3, Lcom/freshchat/consumer/sdk/b/h;->cI:[B

    invoke-static {}, Lcom/freshchat/consumer/sdk/b/h;->getTransformation()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    const/4 v4, 0x0

    const/16 v5, 0xc

    invoke-direct {v3, p0, v4, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([BII)V

    invoke-virtual {v0, v2, v1, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    goto :goto_1

    :cond_0
    if-eq v1, v2, :cond_2

    const/4 p0, 0x4

    if-ne v1, p0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v1, Lcom/freshchat/consumer/sdk/b/h;->cI:[B

    invoke-static {}, Lcom/freshchat/consumer/sdk/b/h;->getTransformation()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v2, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    goto :goto_1

    :cond_2
    :goto_0
    new-instance p0, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v1, Lcom/freshchat/consumer/sdk/b/h;->cI:[B

    invoke-static {}, Lcom/freshchat/consumer/sdk/b/h;->getTransformation()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v3

    new-array v3, v3, [B

    invoke-direct {v1, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v0, v2, p0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    :goto_1
    return-object v0
.end method

.method private static a([C[BLjava/lang/String;II)Ljavax/crypto/SecretKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    if-nez p3, :cond_0

    const/16 p3, 0x3e8

    :cond_0
    const-string v0, "BC"

    invoke-static {p2, v0}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object p2

    new-instance v0, Ljavax/crypto/spec/PBEKeySpec;

    invoke-direct {v0, p0, p1, p3, p4}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    invoke-virtual {p2, v0}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object p0

    return-object p0
.end method

.method private static bb()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    const-string v1, "AES"

    invoke-static {v1}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v1

    const/16 v2, 0x100

    :try_start_0
    invoke-virtual {v1, v2, v0}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/16 v2, 0xc0

    :try_start_1
    invoke-virtual {v1, v2, v0}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    const/16 v2, 0x80

    invoke-virtual {v1, v2, v0}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    :goto_0
    invoke-virtual {v1}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/b/h;->encode([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic cj()Landroid/content/SharedPreferences;
    .locals 1

    sget-object v0, Lcom/freshchat/consumer/sdk/b/h;->cH:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private static decode(Ljava/lang/String;)[B
    .locals 1

    const/4 v0, 0x3

    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    return-object p0
.end method

.method private static eP()Ljavax/crypto/Cipher;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    invoke-static {}, Lcom/freshchat/consumer/sdk/b/h;->iw()Ljavax/crypto/Cipher;

    move-result-object v0

    sget v1, Lcom/freshchat/consumer/sdk/b/h;->fB:I

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    invoke-static {}, Lcom/freshchat/consumer/sdk/b/h;->iv()[B

    move-result-object v1

    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v4, Lcom/freshchat/consumer/sdk/b/h;->cI:[B

    invoke-static {}, Lcom/freshchat/consumer/sdk/b/h;->getTransformation()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v4, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v0, v2, v3, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    goto :goto_1

    :cond_0
    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v3, Lcom/freshchat/consumer/sdk/b/h;->cI:[B

    invoke-static {}, Lcom/freshchat/consumer/sdk/b/h;->getTransformation()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    goto :goto_1

    :cond_2
    :goto_0
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v3, Lcom/freshchat/consumer/sdk/b/h;->cI:[B

    invoke-static {}, Lcom/freshchat/consumer/sdk/b/h;->getTransformation()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v4

    new-array v4, v4, [B

    invoke-direct {v3, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v0, v2, v1, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    :goto_1
    return-object v0
.end method

.method private static encode([B)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x3

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getTransformation()Ljava/lang/String;
    .locals 2

    sget v0, Lcom/freshchat/consumer/sdk/b/h;->fB:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const-string v0, "AES/GCM/NoPadding"

    return-object v0

    :cond_0
    const-string v0, "AES"

    return-object v0
.end method

.method private static iv()[B
    .locals 2

    const/16 v0, 0xc

    new-array v0, v0, [B

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object v0
.end method

.method private static iw()Ljavax/crypto/Cipher;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    sget v0, Lcom/freshchat/consumer/sdk/b/h;->fB:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    invoke-static {}, Lcom/freshchat/consumer/sdk/b/h;->getTransformation()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/freshchat/consumer/sdk/b/h;->getTransformation()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BC"

    invoke-static {v0, v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    return-object v0
.end method

.method private ix()V
    .locals 3

    const/4 v0, 0x4

    sput v0, Lcom/freshchat/consumer/sdk/b/h;->fB:I

    sget-object v1, Lcom/freshchat/consumer/sdk/b/h;->cH:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "PREF_ALG_VER"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private static k(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/b/h;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const/16 v1, 0x100

    const/16 v2, 0x7d0

    :try_start_0
    const-string v3, "PBKDF2WithHmacSHA1"

    invoke-static {v0, p0, v3, v2, v1}, Lcom/freshchat/consumer/sdk/b/h;->a([C[BLjava/lang/String;II)Ljavax/crypto/SecretKey;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v3, "PBEWithMD5AndDES"

    invoke-static {v0, p0, v3, v2, v1}, Lcom/freshchat/consumer/sdk/b/h;->a([C[BLjava/lang/String;II)Ljavax/crypto/SecretKey;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p0

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/b/h;->encode([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static l(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-class v1, Landroid/os/Build;

    const-string v2, "SERIAL"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :catch_0
    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "android_id"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public ci()Lcom/freshchat/consumer/sdk/b/h$a;
    .locals 2

    new-instance v0, Lcom/freshchat/consumer/sdk/b/h$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/freshchat/consumer/sdk/b/h$a;-><init>(Lcom/freshchat/consumer/sdk/b/l;)V

    return-object v0
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/freshchat/consumer/sdk/b/h;->cH:Landroid/content/SharedPreferences;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/b/h;->M(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public eO()Z
    .locals 2

    sget v0, Lcom/freshchat/consumer/sdk/b/h;->fB:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic edit()Landroid/content/SharedPreferences$Editor;
    .locals 1

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/b/h;->ci()Lcom/freshchat/consumer/sdk/b/h$a;

    move-result-object v0

    return-object v0
.end method

.method public getAll()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/freshchat/consumer/sdk/b/h;->cH:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    :try_start_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/freshchat/consumer/sdk/b/h;->N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/freshchat/consumer/sdk/b/h;->N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 2

    sget-object v0, Lcom/freshchat/consumer/sdk/b/h;->cH:Landroid/content/SharedPreferences;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/b/h;->M(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return p2

    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/freshchat/consumer/sdk/b/h;->N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/ClassCastException;

    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 2

    sget-object v0, Lcom/freshchat/consumer/sdk/b/h;->cH:Landroid/content/SharedPreferences;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/b/h;->M(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return p2

    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/freshchat/consumer/sdk/b/h;->N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/ClassCastException;

    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 2

    sget-object v0, Lcom/freshchat/consumer/sdk/b/h;->cH:Landroid/content/SharedPreferences;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/b/h;->M(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return p2

    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/freshchat/consumer/sdk/b/h;->N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/ClassCastException;

    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 2

    sget-object v0, Lcom/freshchat/consumer/sdk/b/h;->cH:Landroid/content/SharedPreferences;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/b/h;->M(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-wide p2

    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/freshchat/consumer/sdk/b/h;->N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/ClassCastException;

    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/freshchat/consumer/sdk/b/h;->cH:Landroid/content/SharedPreferences;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/b/h;->M(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/b/h;->N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    return-object p2
.end method

.method public getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/freshchat/consumer/sdk/b/h;->cH:Landroid/content/SharedPreferences;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/b/h;->M(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    new-instance p2, Ljava/util/HashSet;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/HashSet;-><init>(I)V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/b/h;->N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method public jM()Z
    .locals 2

    sget v0, Lcom/freshchat/consumer/sdk/b/h;->fB:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1

    sget-object v0, Lcom/freshchat/consumer/sdk/b/h;->cH:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1

    sget-object v0, Lcom/freshchat/consumer/sdk/b/h;->cH:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method
