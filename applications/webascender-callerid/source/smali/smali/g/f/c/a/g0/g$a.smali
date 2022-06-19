.class Lg/f/c/a/g0/g$a;
.super Lg/f/c/a/i$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/f/c/a/g0/g;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg/f/c/a/i$b<",
        "Lg/f/c/a/u;",
        "Lg/f/c/a/f0/g1;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lg/f/c/a/i$b;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    check-cast p1, Lg/f/c/a/f0/g1;

    invoke-virtual {p0, p1}, Lg/f/c/a/g0/g$a;->c(Lg/f/c/a/f0/g1;)Lg/f/c/a/u;

    move-result-object p1

    return-object p1
.end method

.method public c(Lg/f/c/a/f0/g1;)Lg/f/c/a/u;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    sget-object v0, Lg/f/c/a/i0/a0;->k:Lg/f/c/a/i0/a0;

    const-string v1, "RSA"

    invoke-virtual {v0, v1}, Lg/f/c/a/i0/a0;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/KeyFactory;

    .line 2
    new-instance v10, Ljava/security/spec/RSAPrivateCrtKeySpec;

    new-instance v2, Ljava/math/BigInteger;

    .line 3
    invoke-virtual {p1}, Lg/f/c/a/f0/g1;->k0()Lg/f/c/a/f0/h1;

    move-result-object v1

    invoke-virtual {v1}, Lg/f/c/a/f0/h1;->d0()Lcom/google/protobuf/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/i;->w()[B

    move-result-object v1

    const/4 v11, 0x1

    invoke-direct {v2, v11, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v3, Ljava/math/BigInteger;

    .line 4
    invoke-virtual {p1}, Lg/f/c/a/f0/g1;->k0()Lg/f/c/a/f0/h1;

    move-result-object v1

    invoke-virtual {v1}, Lg/f/c/a/f0/h1;->c0()Lcom/google/protobuf/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/i;->w()[B

    move-result-object v1

    invoke-direct {v3, v11, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v4, Ljava/math/BigInteger;

    .line 5
    invoke-virtual {p1}, Lg/f/c/a/f0/g1;->g0()Lcom/google/protobuf/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/i;->w()[B

    move-result-object v1

    invoke-direct {v4, v11, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v5, Ljava/math/BigInteger;

    .line 6
    invoke-virtual {p1}, Lg/f/c/a/f0/g1;->j0()Lcom/google/protobuf/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/i;->w()[B

    move-result-object v1

    invoke-direct {v5, v11, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v6, Ljava/math/BigInteger;

    .line 7
    invoke-virtual {p1}, Lg/f/c/a/f0/g1;->l0()Lcom/google/protobuf/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/i;->w()[B

    move-result-object v1

    invoke-direct {v6, v11, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v7, Ljava/math/BigInteger;

    .line 8
    invoke-virtual {p1}, Lg/f/c/a/f0/g1;->h0()Lcom/google/protobuf/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/i;->w()[B

    move-result-object v1

    invoke-direct {v7, v11, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v8, Ljava/math/BigInteger;

    .line 9
    invoke-virtual {p1}, Lg/f/c/a/f0/g1;->i0()Lcom/google/protobuf/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/i;->w()[B

    move-result-object v1

    invoke-direct {v8, v11, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v9, Ljava/math/BigInteger;

    .line 10
    invoke-virtual {p1}, Lg/f/c/a/f0/g1;->f0()Lcom/google/protobuf/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/i;->w()[B

    move-result-object v1

    invoke-direct {v9, v11, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Ljava/security/spec/RSAPrivateCrtKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 11
    invoke-virtual {v0, v10}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v1

    check-cast v1, Ljava/security/interfaces/RSAPrivateCrtKey;

    .line 12
    new-instance v2, Lg/f/c/a/i0/l0;

    .line 13
    invoke-virtual {p1}, Lg/f/c/a/f0/g1;->k0()Lg/f/c/a/f0/h1;

    move-result-object v3

    invoke-virtual {v3}, Lg/f/c/a/f0/h1;->e0()Lg/f/c/a/f0/f1;

    move-result-object v3

    invoke-virtual {v3}, Lg/f/c/a/f0/f1;->Y()Lg/f/c/a/f0/o0;

    move-result-object v3

    invoke-static {v3}, Lg/f/c/a/g0/k;->c(Lg/f/c/a/f0/o0;)Lg/f/c/a/i0/c0;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lg/f/c/a/i0/l0;-><init>(Ljava/security/interfaces/RSAPrivateCrtKey;Lg/f/c/a/i0/c0;)V

    .line 14
    new-instance v1, Ljava/security/spec/RSAPublicKeySpec;

    new-instance v3, Ljava/math/BigInteger;

    .line 15
    invoke-virtual {p1}, Lg/f/c/a/f0/g1;->k0()Lg/f/c/a/f0/h1;

    move-result-object v4

    invoke-virtual {v4}, Lg/f/c/a/f0/h1;->d0()Lcom/google/protobuf/i;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protobuf/i;->w()[B

    move-result-object v4

    invoke-direct {v3, v11, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v4, Ljava/math/BigInteger;

    .line 16
    invoke-virtual {p1}, Lg/f/c/a/f0/g1;->k0()Lg/f/c/a/f0/h1;

    move-result-object v5

    invoke-virtual {v5}, Lg/f/c/a/f0/h1;->c0()Lcom/google/protobuf/i;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/protobuf/i;->w()[B

    move-result-object v5

    invoke-direct {v4, v11, v5}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct {v1, v3, v4}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 17
    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/RSAPublicKey;

    .line 18
    new-instance v1, Lg/f/c/a/i0/m0;

    .line 19
    invoke-virtual {p1}, Lg/f/c/a/f0/g1;->k0()Lg/f/c/a/f0/h1;

    move-result-object p1

    invoke-virtual {p1}, Lg/f/c/a/f0/h1;->e0()Lg/f/c/a/f0/f1;

    move-result-object p1

    invoke-virtual {p1}, Lg/f/c/a/f0/f1;->Y()Lg/f/c/a/f0/o0;

    move-result-object p1

    invoke-static {p1}, Lg/f/c/a/g0/k;->c(Lg/f/c/a/f0/o0;)Lg/f/c/a/i0/c0;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lg/f/c/a/i0/m0;-><init>(Ljava/security/interfaces/RSAPublicKey;Lg/f/c/a/i0/c0;)V

    .line 20
    :try_start_0
    invoke-static {}, Lg/f/c/a/g0/g;->j()[B

    move-result-object p1

    invoke-virtual {v2, p1}, Lg/f/c/a/i0/l0;->a([B)[B

    move-result-object p1

    invoke-static {}, Lg/f/c/a/g0/g;->j()[B

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lg/f/c/a/i0/m0;->c([B[B)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p1

    .line 21
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Security bug: signing with private key followed by verifying with public key failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
