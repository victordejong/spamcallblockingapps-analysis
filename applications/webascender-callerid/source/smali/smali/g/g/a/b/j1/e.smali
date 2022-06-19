.class public Lg/g/a/b/j1/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final e:Ljava/util/Date;

.field private static final f:Ljava/util/Date;


# instance fields
.field private final a:Lg/g/a/b/j1/m;

.field private final b:Lg/g/a/b/j1/i;

.field private final c:Lg/g/a/b/j1/g;

.field private final d:Lg/g/a/e/e/m;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/Date;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    sput-object v0, Lg/g/a/b/j1/e;->e:Ljava/util/Date;

    .line 2
    new-instance v0, Ljava/util/Date;

    const-wide v1, 0x23d19d43c00L

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    sput-object v0, Lg/g/a/b/j1/e;->f:Ljava/util/Date;

    return-void
.end method

.method public constructor <init>(Lg/g/a/b/j1/m;Lg/g/a/b/j1/i;Lg/g/a/b/j1/g;Lg/g/a/e/e/m;)V
    .locals 1

    const-string v0, "userInfoProvider"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "productInfoProvider"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "idProvider"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "measurable"

    invoke-static {p4, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/g/a/b/j1/e;->a:Lg/g/a/b/j1/m;

    iput-object p2, p0, Lg/g/a/b/j1/e;->b:Lg/g/a/b/j1/i;

    iput-object p3, p0, Lg/g/a/b/j1/e;->c:Lg/g/a/b/j1/g;

    iput-object p4, p0, Lg/g/a/b/j1/e;->d:Lg/g/a/e/e/m;

    return-void
.end method

.method public static final synthetic a(Lg/g/a/b/j1/e;Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lg/g/a/b/j1/e;->d(Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(Lg/g/a/b/j1/e;Lg/g/a/e/e/n;)Lkotlin/l;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lg/g/a/b/j1/e;->e(Lg/g/a/e/e/n;)Lkotlin/l;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c(Lg/g/a/b/j1/e;)Lg/g/a/e/e/m;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/g/a/b/j1/e;->d:Lg/g/a/e/e/m;

    return-object p0
.end method

.method private final d(Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;)Ljava/lang/String;
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lcom/nimbusds/jose/m/e;

    invoke-direct {v0, p1}, Lcom/nimbusds/jose/m/e;-><init>(Ljava/security/PrivateKey;)V

    .line 2
    new-instance p1, Lcom/nimbusds/jose/h;

    .line 3
    new-instance v1, Lcom/nimbusds/jose/g$a;

    sget-object v2, Lcom/nimbusds/jose/f;->j:Lcom/nimbusds/jose/f;

    invoke-direct {v1, v2}, Lcom/nimbusds/jose/g$a;-><init>(Lcom/nimbusds/jose/f;)V

    .line 4
    invoke-direct {p0, p2}, Lg/g/a/b/j1/e;->h([Ljava/security/cert/Certificate;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/nimbusds/jose/g$a;->b(Ljava/util/List;)Lcom/nimbusds/jose/g$a;

    .line 5
    invoke-virtual {v1}, Lcom/nimbusds/jose/g$a;->a()Lcom/nimbusds/jose/g;

    move-result-object p2

    .line 6
    new-instance v1, Lcom/nimbusds/jose/k;

    invoke-direct {p0}, Lg/g/a/b/j1/e;->f()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/nimbusds/jose/k;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-direct {p1, p2, v1}, Lcom/nimbusds/jose/h;-><init>(Lcom/nimbusds/jose/g;Lcom/nimbusds/jose/k;)V

    .line 8
    invoke-virtual {p1, v0}, Lcom/nimbusds/jose/h;->j(Lcom/nimbusds/jose/j;)V

    .line 9
    invoke-virtual {p1}, Lcom/nimbusds/jose/h;->i()Ljava/lang/String;

    move-result-object p1

    const-string p2, "jwsObject.serialize()"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 10
    invoke-static {}, Lg/g/a/b/j1/f;->a()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "Failed to generate jws"

    invoke-static {p2, p1, v0}, Lcom/hiya/client/support/logging/d;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p1, ""

    return-object p1
.end method

.method private final e(Lg/g/a/e/e/n;)Lkotlin/l;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/g/a/e/e/n;",
            ")",
            "Lkotlin/l<",
            "Ljava/security/PrivateKey;",
            "[",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    const-string v0, "HiyaAlias"

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1
    :try_start_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_0

    const-string v3, "RSA"

    const-string v4, "AndroidKeyStore"

    .line 2
    invoke-static {v3, v4}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v3

    .line 3
    new-instance v4, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const/16 v5, 0xf

    invoke-direct {v4, v0, v5}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    const-string v5, "SHA-512"

    .line 4
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v4

    const-string v5, ""

    .line 5
    sget-object v6, Lkotlin/c0/d;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    const-string v6, "(this as java.lang.String).getBytes(charset)"

    invoke-static {v5, v6}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setAttestationChallenge([B)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v4

    const/16 v5, 0x400

    .line 6
    invoke-virtual {v4, v5}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeySize(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v4

    .line 7
    sget-object v5, Lg/g/a/b/j1/e;->f:Ljava/util/Date;

    invoke-virtual {v4, v5}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setCertificateNotAfter(Ljava/util/Date;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v4

    .line 8
    sget-object v5, Lg/g/a/b/j1/e;->e:Ljava/util/Date;

    invoke-virtual {v4, v5}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setCertificateNotBefore(Ljava/util/Date;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v4

    const-string v5, "PKCS1"

    .line 9
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setSignaturePaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v4

    .line 10
    invoke-virtual {v4, v1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setUserAuthenticationRequired(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v4

    .line 11
    invoke-virtual {v4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v4

    .line 12
    invoke-virtual {v3, v4}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 13
    invoke-virtual {v3}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v3

    .line 14
    invoke-direct {p0, v0}, Lg/g/a/b/j1/e;->g(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v0

    const-string v4, "generateKeyPair"

    .line 15
    invoke-interface {p1, v4}, Lg/g/a/e/e/n;->c(Ljava/lang/String;)V

    .line 16
    array-length v4, v0

    if-le v4, v2, :cond_0

    .line 17
    new-instance v4, Lkotlin/l;

    const-string v5, "keyPair"

    invoke-static {v3, v5}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v3

    invoke-direct {v4, v3, v0}, Lkotlin/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    move-exception v0

    .line 18
    invoke-static {}, Lg/g/a/b/j1/f;->a()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    const-string v0, "Failed to generate keypair.  Falling back to Hiya keys."

    invoke-static {v3, v0, v2}, Lcom/hiya/client/support/logging/d;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    :cond_0
    invoke-direct {p0}, Lg/g/a/b/j1/e;->i()Lkotlin/l;

    move-result-object v0

    const-string v1, "generateHiyaKeyPair"

    .line 20
    invoke-interface {p1, v1}, Lg/g/a/e/e/n;->c(Ljava/lang/String;)V

    return-object v0
.end method

.method private final f()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Lcom/google/gson/n;

    invoke-direct {v0}, Lcom/google/gson/n;-><init>()V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lg/g/a/e/b;->b(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "createdAt"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/n;->p(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lg/g/a/b/j1/e;->b:Lg/g/a/b/j1/i;

    invoke-interface {v1}, Lg/g/a/b/j1/i;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "productInfoProvider.productName"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 4
    iget-object v1, p0, Lg/g/a/b/j1/e;->b:Lg/g/a/b/j1/i;

    invoke-interface {v1}, Lg/g/a/b/j1/i;->d()Ljava/lang/String;

    move-result-object v1

    const-string v4, "productName"

    invoke-virtual {v0, v4, v1}, Lcom/google/gson/n;->p(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_1
    iget-object v1, p0, Lg/g/a/b/j1/e;->c:Lg/g/a/b/j1/g;

    invoke-interface {v1}, Lg/g/a/b/j1/g;->d()Ljava/lang/String;

    move-result-object v1

    const-string v4, "idProvider.installationId"

    invoke-static {v1, v4}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_3

    .line 6
    iget-object v1, p0, Lg/g/a/b/j1/e;->c:Lg/g/a/b/j1/g;

    invoke-interface {v1}, Lg/g/a/b/j1/g;->d()Ljava/lang/String;

    move-result-object v1

    const-string v4, "installationId"

    invoke-virtual {v0, v4, v1}, Lcom/google/gson/n;->p(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_3
    iget-object v1, p0, Lg/g/a/b/j1/e;->c:Lg/g/a/b/j1/g;

    invoke-interface {v1}, Lg/g/a/b/j1/g;->c()Ljava/lang/String;

    move-result-object v1

    const-string v4, ""

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    move-object v1, v4

    :goto_2
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_5

    const/4 v1, 0x1

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_6

    .line 8
    iget-object v1, p0, Lg/g/a/b/j1/e;->c:Lg/g/a/b/j1/g;

    invoke-interface {v1}, Lg/g/a/b/j1/g;->c()Ljava/lang/String;

    move-result-object v1

    const-string v5, "deviceId"

    invoke-virtual {v0, v5, v1}, Lcom/google/gson/n;->p(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_6
    iget-object v1, p0, Lg/g/a/b/j1/e;->c:Lg/g/a/b/j1/g;

    invoke-interface {v1}, Lg/g/a/b/j1/g;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    goto :goto_4

    :cond_7
    move-object v1, v4

    :goto_4
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_8

    const/4 v1, 0x1

    goto :goto_5

    :cond_8
    const/4 v1, 0x0

    :goto_5
    if-eqz v1, :cond_9

    .line 10
    iget-object v1, p0, Lg/g/a/b/j1/e;->c:Lg/g/a/b/j1/g;

    invoke-interface {v1}, Lg/g/a/b/j1/g;->a()Ljava/lang/String;

    move-result-object v1

    const-string v5, "accountUserId"

    invoke-virtual {v0, v5, v1}, Lcom/google/gson/n;->p(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :cond_9
    iget-object v1, p0, Lg/g/a/b/j1/e;->a:Lg/g/a/b/j1/m;

    invoke-interface {v1}, Lg/g/a/b/j1/m;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    move-object v4, v1

    :cond_a
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_b

    goto :goto_6

    :cond_b
    const/4 v2, 0x0

    :goto_6
    if-eqz v2, :cond_c

    .line 12
    iget-object v1, p0, Lg/g/a/b/j1/e;->a:Lg/g/a/b/j1/m;

    invoke-interface {v1}, Lg/g/a/b/j1/m;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "userPhoneNumber"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/n;->p(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :cond_c
    invoke-virtual {v0}, Lcom/google/gson/l;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "json.toString()"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final g(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .locals 2

    const-string v0, "AndroidKeyStore"

    .line 1
    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 3
    invoke-virtual {v0, p1}, Ljava/security/KeyStore;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/security/cert/Certificate;

    :goto_0
    return-object p1
.end method

.method private final h([Ljava/security/cert/Certificate;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/Certificate;",
            ")",
            "Ljava/util/List<",
            "Lcom/nimbusds/jose/util/a;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p1, v3

    .line 3
    new-instance v5, Lcom/nimbusds/jose/util/a;

    .line 4
    invoke-virtual {v4}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v4

    invoke-static {v4, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-direct {v5, v4}, Lcom/nimbusds/jose/util/a;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-interface {v0, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private final i()Lkotlin/l;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/l<",
            "Ljava/security/PrivateKey;",
            "[",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "RSA"

    .line 1
    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 2
    new-instance v2, Ljava/security/spec/PKCS8EncodedKeySpec;

    const-string v3, "2TWbbs11a1225VSTc5WbLMA25sxxf5Oe7RCvUcvXaWy74d+49N3eyCzRJDgfq5AtB7oV0yGyWHdf\nF57zf+mD3KK2/h5mlrzoEh/75p0I4oIabDz2/Xvr0pHYJ/LgSWeIJo6N5peE4+fW0ScXH9bgzvm/\n885Fu904jRJREZ6uFfAEwUreejqYv/GhkSskPFNvPKCer7Jl0NVjilxKVO0cQOdUqQq3fPo1TZgn\nE9+ubWBxusKlmPiXvSMoPKsVRY5ab9+tjD1DONLG4rhCbR7Bv3vLrghlzYgzzK853s4hp4M1f37Q\nzVEhEo9ZK3K02FUkrNkA7DCHaHsVFspR/PXLMisjZHO4ej+QM/FRh0JV6h4acyaJ13W0zj0tkbfX\nKm3Jc4rYfEMzaW6641y7d9wdseNHqE4eZegKosiAfLk26gLkX3JkCWGwjPozBaXwbNgbX667BOn6\nnAcG/wb/McsEUS8qK8905sMyxubkNMom8LeN3fQKuKz6X2zJyj4C1j8a+o6KtOJae/pxdmsYw3iY\nXLCIOwsfWcIgSJh8Xhz4i3+eMbgst4IfwZCFGweYvzct1B8/eYbbbtFC9Zl2om+pOdQv+7DQxKnI\n8fF9y+Q/Fs5niSUMX09+rIQc3Nupd1LdWSbBKlw4zCDnQ9v7i+Wh8eDTnJoLt9D9ff2lIS1PX/FD\nhefCz7m6QxZtAsT/ylIsqlULN383+rByGi698rq5BaKVcs78N5oAk6QEmb/W6m86Yl1TAuj0S/+U\nSYL6c87OO5XaytIXPDrTRI5P/39rRda29hpVL/MmZ3Cv4JTBwjn/KK+cQaH0CkEyNEbInCMYeRwz\nh/SsoMxlTyeFpRyOXSwVkxzDaAcPz62jBZdmjaI9HtrANkdWzxRv+EQ+gDWZJ7z6AoVhJypIRZc7\nJyCuY7ZsLs/1/pfIYzzsXys8bO56tQmxBOZKbgZiVgafGNEkTgfP4KHpZDktoDBh2w0rXWZQMwIm\nRJoCsDWAk9yuij3FT0rPQ/40ppRBA87H1XXhxJgLTuA8poyZ57dFML3h7h6RoF3qfqoLkaykOVm3\nOn9+0AzBTK8TuhvL2Y4Fqtwt05dKiL375G86Yz/w16MDAqLdm53NcnbU+S5dBmFCN75fs0IEgskO\n6M8rbZurYHrqLjjj3423S29kx4DVJZa7ui8h7rKfmHRkEQFQnr4AJ94VZWaJQXWKvtRtV5uoQfU4\n2a7hZHO0ML9eXd5zQVzyc3/t6fNjc1nLJhcmSvbfF5gzUizaCRrzHrYG5Uz0VLE1isiN1p79Vk+5\ncN+UBt6JiolDrQRL2MHHCivCoEwqVLrtQ8xBhLR2YzadqJMb0cm3dKkT+pHquoUXxZEgqQDrO3AY\nIPhxRaQb02w9oRMVVjJv2ktMw0PPPecgpsHZLPxxOkiw5ZKeUc12ZyBgby790baCZFzGoKmKPG54\nONB26uy7YHvTdNRoi9GphtcLMemUsW0vMMDo2N1QPBxX7erSZuz1NMtLPNeCeVTm6qDcMF6vtgBT\nmTksDzrxQozobxEA7TesoM34SQAdKP8iUNvlO+ZuaCHL8A7sEBXmQIPf9JzfMGGgNhPQgh05AB8X\nzP1eeu8KGZiRiiKN1LQGj0P6OYI=\n"

    invoke-direct {p0, v3}, Lg/g/a/b/j1/e;->k(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 3
    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v2, 0x1

    :try_start_1
    new-array v3, v2, [Ljava/security/cert/Certificate;

    const-string v4, "X509"

    .line 4
    invoke-static {v4}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v4

    .line 5
    sget-object v5, Lkotlin/w/c/t;->a:Lkotlin/w/c/t;

    const-string v5, "-----BEGIN CERTIFICATE-----\n%s-----END CERTIFICATE-----"

    new-array v6, v2, [Ljava/lang/Object;

    const-string v7, "2TWbef/2af8b4F+4998fy80H6st9VRFUb0CS0s5/bm2LvWyrxc0b2Jgz7cF9N/5liJu/mqEXWk+L\n    w1u6oNkW19R0i6QREeM8otLm844AHwjIlzzNnLJz+4521ulEXZEfvLOc39Q3BwTejSmZvrhk+4xD\n    k6gHC/ZogNjx84w1S1yLw0q0xOUt4/wB1f1ARqIts6+Q4f5FU12D0mqLxekk7vxt16VFbacM77TK\n    18V4YiXSmjyV1ZRzuPwV1+1yfMIY4ruGkKMdDgPPwxbcjP1cr7lSlLkVC/5zh5fckv5aW0G94Ai9\n    9tE4mKFegqMAX9x5kJfep7sRGBnalzTWm/1UtblSlaARG/59ndK/4v/2ak+L7luw31tVXTo65sx1\n    epcfa7aQ0//2ame5YVy49R4OOiv0EqageKby5D2fPQlHcYlPIBczwUMatEwuNN+dVGPnQdOqgbP9\n    hMw0ghKxUysUhyL32FlCjwPT0KWqiz/84QCJmfNT/iAI70Uj5PywNbN4THldghUK9tKZ9Do2Elh5\n    51tBAZ03u+TJ/rbjrt7P07XS4q4YxdyG8a55IA53Er64xg9fwxVyZqfifEHU0Fd7NdLsgaxOZtGa\n    gYXAIfgn1BC6BqYhNgF5bTF+ItzGYLg58RGS0pq4heMnwDSBeeHUmaP7WA3Tva9ZhyigLDx3fcNO\n    dLWw3Qv0Pdm0WQFx1xvGr3nLXu71GMwrmG2bXXQIK9dBnW4hhUKG1PAwX4h2aGy74v7fxbktxss0\n    stB6e4EY/e314jsr1ZpNVrMuovSw8KMFkHEGT4ga6uKC8MtsW3s799U/7Yjf9CxdJIpdOWSR5QYC\n    7d3qW3+94Aik5twcJMk/18t1fmge6Lev3cl3PnC04lxG8dke2cyx18Bydr2aoTFo3s51YGi74N+7\n    9N0v0NJVMYH3Q6xdToyCPLQfLKqL/1kuzzRAJ8T+Fvg9sJS3KxjNZMzIJ26+h5miIS6CdYKrlnpB\n    XAf2DrYs/RXpQD9dLbuxxiZSd9G+okYBQ7kH0xmrZJh39kdKmUUqZEYThn5qqCBDXaTcLL3TB3nQ\n    IUPes7z4MaAnVv+AUoSfbb9m8SV6oQswOkihlbwEd4XksP0sE/5KXP8bWqJYojdoypSJHzXou4Xa\n    4drNqbq0t2f3T3iwJsrwLVYZh3GIVOXugmFrc1gGOEYWMtY/m1Mfk7L9XFVxzOQRaw8SAjC58zYq\n    GawnSckgTBqhUugR0bS09E7HKTbRfIIwdEYHUmHGtusedFcfrzDh4WZzDRIKz1pOCpk3azlESwU5\n    Zz01x7COWl1pzngQ/fAp633Ee2MS0Jn6Io5Rco6Wq+s0+l7hMr4fCt5eNKbMKm1vegrDIyoNbO/S\n    pHBrQ6G8cnf/y78fJVttAvaDkwwMLUW6p4SKxrka63/V55mVXftYr5tMTIy4EDUedxxyT8uWVLyH\n    u7rAf34cfoSZ768IyViBdFQYw5k+XNQEn0Qc8TMqn6Ndb9AxG3sZopiNYgrjF/C5PsqL9LE+dmhM\n    LyPkmEJRP0F2BgTmqlQyNfgI3LCgvqUCT7VPHm7VkY5ac0+PnI0yr23OJuXpm3XrXPXH6eE6+8zy\n    6g=="

    .line 6
    invoke-direct {p0, v7}, Lg/g/a/b/j1/e;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    .line 7
    invoke-static {v6, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "java.lang.String.format(format, *args)"

    invoke-static {v2, v5}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v6, "StandardCharsets.UTF_8"

    invoke-static {v5, v6}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v2, :cond_1

    invoke-virtual {v2, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    const-string v5, "(this as java.lang.String).getBytes(charset)"

    invoke-static {v2, v5}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 10
    invoke-virtual {v4, v5}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v2

    if-eqz v2, :cond_0

    check-cast v2, Ljava/security/cert/X509Certificate;

    aput-object v2, v3, v0

    goto :goto_0

    :cond_0
    new-instance v2, Lkotlin/TypeCastException;

    const-string v3, "null cannot be cast to non-null type java.security.cert.X509Certificate"

    invoke-direct {v2, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 11
    :cond_1
    new-instance v2, Lkotlin/TypeCastException;

    const-string v3, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v2, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v2

    .line 12
    invoke-static {}, Lg/g/a/b/j1/f;->a()Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    const-string v5, "Failed to load Hiya public key."

    invoke-static {v3, v2, v5, v4}, Lcom/hiya/client/support/logging/d;->k(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v3, v0, [Ljava/security/cert/Certificate;

    .line 13
    :goto_0
    new-instance v0, Lkotlin/l;

    invoke-direct {v0, v1, v3}, Lkotlin/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :catch_1
    move-exception v1

    .line 14
    invoke-static {}, Lg/g/a/b/j1/f;->a()Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "Failed to generate private key based on the Hiya key."

    invoke-static {v2, v1, v3, v0}, Lcom/hiya/client/support/logging/d;->k(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    throw v1
.end method

.method private final k(Ljava/lang/String;)[B
    .locals 2

    const-string v0, "6bef0890a22741259d0d28035810f5cc"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 2
    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    const-string v1, "hidden"

    .line 3
    invoke-static {p1, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "xorKey"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lg/g/a/b/j1/e;->m([B[B)V

    return-object p1
.end method

.method private final l(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lg/g/a/b/j1/e;->k(Ljava/lang/String;)[B

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Base64.encodeToString(unbox(box), 0)"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final m([B[B)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 2
    array-length v1, p2

    rem-int v1, v0, v1

    .line 3
    aget-byte v2, p1, v0

    aget-byte v1, p2, v1

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public j()Li/c/b0/b/e0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/b/e0<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lg/g/a/b/j1/e$a;

    invoke-direct {v0, p0}, Lg/g/a/b/j1/e$a;-><init>(Lg/g/a/b/j1/e;)V

    invoke-static {v0}, Li/c/b0/b/e0;->p(Ljava/util/concurrent/Callable;)Li/c/b0/b/e0;

    move-result-object v0

    const-string v1, "Single.fromCallable {\n\n \u2026          }\n            }"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
