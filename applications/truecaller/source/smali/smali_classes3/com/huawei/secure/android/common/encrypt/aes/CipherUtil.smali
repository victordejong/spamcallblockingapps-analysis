.class public Lcom/huawei/secure/android/common/encrypt/aes/CipherUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "CipherUtil"

.field private static final b:Ljava/lang/String; = "AES/GCM/NoPadding"

.field private static final c:Ljava/lang/String; = "AES/CBC/PKCS5Padding"

.field private static final d:Ljava/lang/String; = "AES"

.field private static final e:Ljava/lang/String; = ""

.field private static final f:I = 0x10

.field private static final g:I = 0xc

.field private static final h:I = 0x10


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljavax/crypto/Cipher;[B)I
    .locals 0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 12
    array-length p1, p1

    invoke-virtual {p0, p1}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method private static a([B[BI)Ljavax/crypto/Cipher;
    .locals 1

    const-string v0, "AES/CBC/PKCS5Padding"

    .line 1
    invoke-static {p0, p1, p2, v0}, Lcom/huawei/secure/android/common/encrypt/aes/CipherUtil;->a([B[BILjava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p0

    return-object p0
.end method

.method private static a([B[BILjava/lang/String;)Ljavax/crypto/Cipher;
    .locals 4

    const/4 v0, 0x0

    const-string v1, "CipherUtil"

    if-eqz p0, :cond_2

    .line 2
    array-length v2, p0

    const/16 v3, 0x10

    if-lt v2, v3, :cond_2

    if-eqz p1, :cond_2

    array-length v2, p1

    const/16 v3, 0xc

    if-lt v2, v3, :cond_2

    .line 3
    invoke-static {}, Lcom/huawei/secure/android/common/encrypt/aes/AesGcm;->isBuildVersionHigherThan19()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    :try_start_0
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v2, p0, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 5
    invoke-static {p3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p0

    const-string v3, "AES/GCM/NoPadding"

    .line 6
    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 7
    invoke-static {p1}, Lcom/huawei/secure/android/common/encrypt/aes/AesGcm;->getGcmAlgorithmParams([B)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object p1

    goto :goto_0

    .line 8
    :cond_1
    new-instance p3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {p3, p1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    move-object p1, p3

    .line 9
    :goto_0
    invoke-virtual {p0, p2, v2, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "GCM encrypt data error"

    .line 10
    invoke-static {p1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/huawei/secure/android/common/encrypt/utils/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_2
    :goto_1
    const-string p0, "gcm encrypt param is not right"

    .line 11
    invoke-static {v1, p0}, Lcom/huawei/secure/android/common/encrypt/utils/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static b([B[BI)Ljavax/crypto/Cipher;
    .locals 1

    const-string v0, "AES/GCM/NoPadding"

    .line 1
    invoke-static {p0, p1, p2, v0}, Lcom/huawei/secure/android/common/encrypt/aes/CipherUtil;->a([B[BILjava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p0

    return-object p0
.end method

.method public static getAesCbcDecryptCipher([BLjavax/crypto/Cipher;)Ljavax/crypto/Cipher;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object p1

    .line 2
    invoke-static {p0, p1}, Lcom/huawei/secure/android/common/encrypt/aes/CipherUtil;->getAesCbcDecryptCipher([B[B)Ljavax/crypto/Cipher;

    move-result-object p0

    return-object p0
.end method

.method public static getAesCbcDecryptCipher([B[B)Ljavax/crypto/Cipher;
    .locals 1

    const/4 v0, 0x2

    .line 3
    invoke-static {p0, p1, v0}, Lcom/huawei/secure/android/common/encrypt/aes/CipherUtil;->a([B[BI)Ljavax/crypto/Cipher;

    move-result-object p0

    return-object p0
.end method

.method public static getAesCbcEncryptCipher([B)Ljavax/crypto/Cipher;
    .locals 1

    const/16 v0, 0x10

    .line 1
    invoke-static {v0}, Lcom/huawei/secure/android/common/encrypt/utils/EncryptUtil;->generateSecureRandom(I)[B

    move-result-object v0

    .line 2
    invoke-static {p0, v0}, Lcom/huawei/secure/android/common/encrypt/aes/CipherUtil;->getAesCbcEncryptCipher([B[B)Ljavax/crypto/Cipher;

    move-result-object p0

    return-object p0
.end method

.method public static getAesCbcEncryptCipher([B[B)Ljavax/crypto/Cipher;
    .locals 1

    const/4 v0, 0x1

    .line 3
    invoke-static {p0, p1, v0}, Lcom/huawei/secure/android/common/encrypt/aes/CipherUtil;->a([B[BI)Ljavax/crypto/Cipher;

    move-result-object p0

    return-object p0
.end method

.method public static getAesCbcEncryptContentLen([B[B)I
    .locals 1

    const/16 v0, 0x10

    .line 1
    invoke-static {v0}, Lcom/huawei/secure/android/common/encrypt/utils/EncryptUtil;->generateSecureRandom(I)[B

    move-result-object v0

    .line 2
    invoke-static {p0, p1, v0}, Lcom/huawei/secure/android/common/encrypt/aes/CipherUtil;->getAesCbcEncryptContentLen([B[B[B)I

    move-result p0

    return p0
.end method

.method public static getAesCbcEncryptContentLen([B[B[B)I
    .locals 0

    .line 3
    invoke-static {p1, p2}, Lcom/huawei/secure/android/common/encrypt/aes/CipherUtil;->getAesCbcEncryptCipher([B[B)Ljavax/crypto/Cipher;

    move-result-object p1

    .line 4
    invoke-static {p1, p0}, Lcom/huawei/secure/android/common/encrypt/aes/CipherUtil;->a(Ljavax/crypto/Cipher;[B)I

    move-result p0

    return p0
.end method

.method public static getAesGcmDecryptCipher([BLjavax/crypto/Cipher;)Ljavax/crypto/Cipher;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object p1

    .line 2
    invoke-static {p0, p1}, Lcom/huawei/secure/android/common/encrypt/aes/CipherUtil;->getAesGcmDecryptCipher([B[B)Ljavax/crypto/Cipher;

    move-result-object p0

    return-object p0
.end method

.method public static getAesGcmDecryptCipher([B[B)Ljavax/crypto/Cipher;
    .locals 1

    const/4 v0, 0x2

    .line 3
    invoke-static {p0, p1, v0}, Lcom/huawei/secure/android/common/encrypt/aes/CipherUtil;->b([B[BI)Ljavax/crypto/Cipher;

    move-result-object p0

    return-object p0
.end method

.method public static getAesGcmEncryptCipher([B)Ljavax/crypto/Cipher;
    .locals 3

    const/16 v0, 0xc

    .line 1
    invoke-static {v0}, Lcom/huawei/secure/android/common/encrypt/utils/EncryptUtil;->generateSecureRandom(I)[B

    move-result-object v0

    const-string v1, "getEncryptCipher: iv is : "

    .line 2
    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/huawei/secure/android/common/encrypt/utils/HexUtil;->byteArray2HexStr([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CipherUtil"

    invoke-static {v2, v1}, Lcom/huawei/secure/android/common/encrypt/utils/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {p0, v0}, Lcom/huawei/secure/android/common/encrypt/aes/CipherUtil;->getAesGcmEncryptCipher([B[B)Ljavax/crypto/Cipher;

    move-result-object p0

    return-object p0
.end method

.method public static getAesGcmEncryptCipher([B[B)Ljavax/crypto/Cipher;
    .locals 1

    const/4 v0, 0x1

    .line 4
    invoke-static {p0, p1, v0}, Lcom/huawei/secure/android/common/encrypt/aes/CipherUtil;->b([B[BI)Ljavax/crypto/Cipher;

    move-result-object p0

    return-object p0
.end method

.method public static getAesGcmEncryptContentLen([B[B)I
    .locals 1

    const/16 v0, 0xc

    .line 1
    invoke-static {v0}, Lcom/huawei/secure/android/common/encrypt/utils/EncryptUtil;->generateSecureRandom(I)[B

    move-result-object v0

    .line 2
    invoke-static {p0, p1, v0}, Lcom/huawei/secure/android/common/encrypt/aes/CipherUtil;->getAesGcmEncryptContentLen([B[B[B)I

    move-result p0

    return p0
.end method

.method public static getAesGcmEncryptContentLen([B[B[B)I
    .locals 0

    .line 3
    invoke-static {p1, p2}, Lcom/huawei/secure/android/common/encrypt/aes/CipherUtil;->getAesGcmEncryptCipher([B[B)Ljavax/crypto/Cipher;

    move-result-object p1

    .line 4
    invoke-static {p1, p0}, Lcom/huawei/secure/android/common/encrypt/aes/CipherUtil;->a(Ljavax/crypto/Cipher;[B)I

    move-result p0

    return p0
.end method

.method public static getContent(Ljavax/crypto/Cipher;[BII[BI)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual/range {p0 .. p5}, Ljavax/crypto/Cipher;->doFinal([BII[BI)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const-string p0, "CipherUtil"

    const-string p1, "getEncryptCOntent: cipher is null or content is null"

    .line 7
    invoke-static {p0, p1}, Lcom/huawei/secure/android/common/encrypt/utils/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method public static getContent(Ljavax/crypto/Cipher;[B[B)I
    .locals 4

    const/4 v0, -0x1

    const-string v1, "CipherUtil"

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    .line 1
    :try_start_0
    array-length v3, p1

    invoke-virtual {p0, p1, v2, v3, p2}, Ljavax/crypto/Cipher;->doFinal([BII[B)I

    move-result p0
    :try_end_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/ShortBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const-string p0, "getContent: ShortBufferException"

    .line 2
    invoke-static {v1, p0}, Lcom/huawei/secure/android/common/encrypt/utils/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    const-string p0, "getContent: IllegalBlockSizeException"

    .line 3
    invoke-static {v1, p0}, Lcom/huawei/secure/android/common/encrypt/utils/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    const-string p0, "getContent: BadPaddingException"

    .line 4
    invoke-static {v1, p0}, Lcom/huawei/secure/android/common/encrypt/utils/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_1
    :goto_1
    const-string p0, "getEncryptCOntent: cipher is null or content is null"

    .line 5
    invoke-static {v1, p0}, Lcom/huawei/secure/android/common/encrypt/utils/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static getContent(Ljavax/crypto/Cipher;[B)[B
    .locals 3

    const/4 v0, 0x0

    const-string v1, "CipherUtil"

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_1

    .line 8
    :cond_0
    :try_start_0
    array-length v2, p1

    invoke-virtual {p0, p1, v0, v2}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object p0
    :try_end_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, "getContent: IllegalBlockSizeException"

    .line 9
    invoke-static {v1, p0}, Lcom/huawei/secure/android/common/encrypt/utils/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    const-string p0, "getContent: BadPaddingException"

    .line 10
    invoke-static {v1, p0}, Lcom/huawei/secure/android/common/encrypt/utils/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    new-array p0, v0, [B

    return-object p0

    :cond_1
    :goto_1
    const-string p0, "getEncryptCOntent: cipher is null or content is null"

    .line 11
    invoke-static {v1, p0}, Lcom/huawei/secure/android/common/encrypt/utils/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-array p0, v0, [B

    return-object p0
.end method
