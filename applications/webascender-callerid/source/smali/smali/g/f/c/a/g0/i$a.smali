.class Lg/f/c/a/g0/i$a;
.super Lg/f/c/a/i$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/f/c/a/g0/i;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg/f/c/a/i$b<",
        "Lg/f/c/a/u;",
        "Lg/f/c/a/f0/k1;",
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
    check-cast p1, Lg/f/c/a/f0/k1;

    invoke-virtual {p0, p1}, Lg/f/c/a/g0/i$a;->c(Lg/f/c/a/f0/k1;)Lg/f/c/a/u;

    move-result-object p1

    return-object p1
.end method

.method public c(Lg/f/c/a/f0/k1;)Lg/f/c/a/u;
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
    invoke-virtual {p1}, Lg/f/c/a/f0/k1;->k0()Lg/f/c/a/f0/l1;

    move-result-object v1

    invoke-virtual {v1}, Lg/f/c/a/f0/l1;->d0()Lcom/google/protobuf/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/i;->w()[B

    move-result-object v1

    const/4 v11, 0x1

    invoke-direct {v2, v11, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v3, Ljava/math/BigInteger;

    .line 4
    invoke-virtual {p1}, Lg/f/c/a/f0/k1;->k0()Lg/f/c/a/f0/l1;

    move-result-object v1

    invoke-virtual {v1}, Lg/f/c/a/f0/l1;->c0()Lcom/google/protobuf/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/i;->w()[B

    move-result-object v1

    invoke-direct {v3, v11, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v4, Ljava/math/BigInteger;

    .line 5
    invoke-virtual {p1}, Lg/f/c/a/f0/k1;->g0()Lcom/google/protobuf/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/i;->w()[B

    move-result-object v1

    invoke-direct {v4, v11, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v5, Ljava/math/BigInteger;

    .line 6
    invoke-virtual {p1}, Lg/f/c/a/f0/k1;->j0()Lcom/google/protobuf/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/i;->w()[B

    move-result-object v1

    invoke-direct {v5, v11, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v6, Ljava/math/BigInteger;

    .line 7
    invoke-virtual {p1}, Lg/f/c/a/f0/k1;->l0()Lcom/google/protobuf/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/i;->w()[B

    move-result-object v1

    invoke-direct {v6, v11, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v7, Ljava/math/BigInteger;

    .line 8
    invoke-virtual {p1}, Lg/f/c/a/f0/k1;->h0()Lcom/google/protobuf/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/i;->w()[B

    move-result-object v1

    invoke-direct {v7, v11, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v8, Ljava/math/BigInteger;

    .line 9
    invoke-virtual {p1}, Lg/f/c/a/f0/k1;->i0()Lcom/google/protobuf/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/i;->w()[B

    move-result-object v1

    invoke-direct {v8, v11, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v9, Ljava/math/BigInteger;

    .line 10
    invoke-virtual {p1}, Lg/f/c/a/f0/k1;->f0()Lcom/google/protobuf/i;

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
    invoke-virtual {p1}, Lg/f/c/a/f0/k1;->k0()Lg/f/c/a/f0/l1;

    move-result-object v2

    invoke-virtual {v2}, Lg/f/c/a/f0/l1;->e0()Lg/f/c/a/f0/j1;

    move-result-object v2

    .line 13
    new-instance v3, Lg/f/c/a/i0/n0;

    .line 14
    invoke-virtual {v2}, Lg/f/c/a/f0/j1;->a0()Lg/f/c/a/f0/o0;

    move-result-object v4

    invoke-static {v4}, Lg/f/c/a/g0/k;->c(Lg/f/c/a/f0/o0;)Lg/f/c/a/i0/c0;

    move-result-object v4

    .line 15
    invoke-virtual {v2}, Lg/f/c/a/f0/j1;->Y()Lg/f/c/a/f0/o0;

    move-result-object v5

    invoke-static {v5}, Lg/f/c/a/g0/k;->c(Lg/f/c/a/f0/o0;)Lg/f/c/a/i0/c0;

    move-result-object v5

    .line 16
    invoke-virtual {v2}, Lg/f/c/a/f0/j1;->Z()I

    move-result v6

    invoke-direct {v3, v1, v4, v5, v6}, Lg/f/c/a/i0/n0;-><init>(Ljava/security/interfaces/RSAPrivateCrtKey;Lg/f/c/a/i0/c0;Lg/f/c/a/i0/c0;I)V

    .line 17
    new-instance v1, Ljava/security/spec/RSAPublicKeySpec;

    new-instance v4, Ljava/math/BigInteger;

    .line 18
    invoke-virtual {p1}, Lg/f/c/a/f0/k1;->k0()Lg/f/c/a/f0/l1;

    move-result-object v5

    invoke-virtual {v5}, Lg/f/c/a/f0/l1;->d0()Lcom/google/protobuf/i;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/protobuf/i;->w()[B

    move-result-object v5

    invoke-direct {v4, v11, v5}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v5, Ljava/math/BigInteger;

    .line 19
    invoke-virtual {p1}, Lg/f/c/a/f0/k1;->k0()Lg/f/c/a/f0/l1;

    move-result-object p1

    invoke-virtual {p1}, Lg/f/c/a/f0/l1;->c0()Lcom/google/protobuf/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/i;->w()[B

    move-result-object p1

    invoke-direct {v5, v11, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct {v1, v4, v5}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 20
    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p1

    check-cast p1, Ljava/security/interfaces/RSAPublicKey;

    .line 21
    new-instance v0, Lg/f/c/a/i0/o0;

    .line 22
    invoke-virtual {v2}, Lg/f/c/a/f0/j1;->a0()Lg/f/c/a/f0/o0;

    move-result-object v1

    invoke-static {v1}, Lg/f/c/a/g0/k;->c(Lg/f/c/a/f0/o0;)Lg/f/c/a/i0/c0;

    move-result-object v1

    .line 23
    invoke-virtual {v2}, Lg/f/c/a/f0/j1;->Y()Lg/f/c/a/f0/o0;

    move-result-object v4

    invoke-static {v4}, Lg/f/c/a/g0/k;->c(Lg/f/c/a/f0/o0;)Lg/f/c/a/i0/c0;

    move-result-object v4

    .line 24
    invoke-virtual {v2}, Lg/f/c/a/f0/j1;->Z()I

    move-result v2

    invoke-direct {v0, p1, v1, v4, v2}, Lg/f/c/a/i0/o0;-><init>(Ljava/security/interfaces/RSAPublicKey;Lg/f/c/a/i0/c0;Lg/f/c/a/i0/c0;I)V

    .line 25
    :try_start_0
    invoke-static {}, Lg/f/c/a/g0/i;->j()[B

    move-result-object p1

    invoke-virtual {v3, p1}, Lg/f/c/a/i0/n0;->c([B)[B

    move-result-object p1

    invoke-static {}, Lg/f/c/a/g0/i;->j()[B

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lg/f/c/a/i0/o0;->b([B[B)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception p1

    .line 26
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
