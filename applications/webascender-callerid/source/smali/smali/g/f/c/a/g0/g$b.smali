.class Lg/f/c/a/g0/g$b;
.super Lg/f/c/a/i$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/f/c/a/g0/g;->e()Lg/f/c/a/i$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg/f/c/a/i$a<",
        "Lg/f/c/a/f0/e1;",
        "Lg/f/c/a/f0/g1;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lg/f/c/a/g0/g;


# direct methods
.method constructor <init>(Lg/f/c/a/g0/g;Ljava/lang/Class;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/f/c/a/g0/g$b;->b:Lg/f/c/a/g0/g;

    invoke-direct {p0, p2}, Lg/f/c/a/i$a;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/google/protobuf/r0;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    check-cast p1, Lg/f/c/a/f0/e1;

    invoke-virtual {p0, p1}, Lg/f/c/a/g0/g$b;->e(Lg/f/c/a/f0/e1;)Lg/f/c/a/f0/g1;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic c(Lcom/google/protobuf/i;)Lcom/google/protobuf/r0;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lg/f/c/a/g0/g$b;->f(Lcom/google/protobuf/i;)Lg/f/c/a/f0/e1;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic d(Lcom/google/protobuf/r0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    check-cast p1, Lg/f/c/a/f0/e1;

    invoke-virtual {p0, p1}, Lg/f/c/a/g0/g$b;->g(Lg/f/c/a/f0/e1;)V

    return-void
.end method

.method public e(Lg/f/c/a/f0/e1;)Lg/f/c/a/f0/g1;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lg/f/c/a/f0/e1;->Y()Lg/f/c/a/f0/f1;

    move-result-object v0

    .line 2
    sget-object v1, Lg/f/c/a/i0/a0;->j:Lg/f/c/a/i0/a0;

    const-string v2, "RSA"

    invoke-virtual {v1, v2}, Lg/f/c/a/i0/a0;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/KeyPairGenerator;

    .line 3
    new-instance v2, Ljava/security/spec/RSAKeyGenParameterSpec;

    .line 4
    invoke-virtual {p1}, Lg/f/c/a/f0/e1;->X()I

    move-result v3

    new-instance v4, Ljava/math/BigInteger;

    .line 5
    invoke-virtual {p1}, Lg/f/c/a/f0/e1;->Z()Lcom/google/protobuf/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/i;->w()[B

    move-result-object p1

    const/4 v5, 0x1

    invoke-direct {v4, v5, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct {v2, v3, v4}, Ljava/security/spec/RSAKeyGenParameterSpec;-><init>(ILjava/math/BigInteger;)V

    .line 6
    invoke-virtual {v1, v2}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 7
    invoke-virtual {v1}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v1

    check-cast v1, Ljava/security/interfaces/RSAPublicKey;

    .line 9
    invoke-virtual {p1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object p1

    check-cast p1, Ljava/security/interfaces/RSAPrivateCrtKey;

    .line 10
    invoke-static {}, Lg/f/c/a/f0/h1;->g0()Lg/f/c/a/f0/h1$b;

    move-result-object v2

    iget-object v3, p0, Lg/f/c/a/g0/g$b;->b:Lg/f/c/a/g0/g;

    .line 11
    invoke-virtual {v3}, Lg/f/c/a/g0/g;->k()I

    move-result v3

    invoke-virtual {v2, v3}, Lg/f/c/a/f0/h1$b;->J(I)Lg/f/c/a/f0/h1$b;

    .line 12
    invoke-virtual {v2, v0}, Lg/f/c/a/f0/h1$b;->I(Lg/f/c/a/f0/f1;)Lg/f/c/a/f0/h1$b;

    .line 13
    invoke-interface {v1}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/i;->h([B)Lcom/google/protobuf/i;

    move-result-object v0

    invoke-virtual {v2, v0}, Lg/f/c/a/f0/h1$b;->G(Lcom/google/protobuf/i;)Lg/f/c/a/f0/h1$b;

    .line 14
    invoke-interface {v1}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/i;->h([B)Lcom/google/protobuf/i;

    move-result-object v0

    invoke-virtual {v2, v0}, Lg/f/c/a/f0/h1$b;->H(Lcom/google/protobuf/i;)Lg/f/c/a/f0/h1$b;

    .line 15
    invoke-virtual {v2}, Lcom/google/protobuf/y$a;->x()Lcom/google/protobuf/y;

    move-result-object v0

    check-cast v0, Lg/f/c/a/f0/h1;

    .line 16
    invoke-static {}, Lg/f/c/a/f0/g1;->n0()Lg/f/c/a/f0/g1$b;

    move-result-object v1

    iget-object v2, p0, Lg/f/c/a/g0/g$b;->b:Lg/f/c/a/g0/g;

    .line 17
    invoke-virtual {v2}, Lg/f/c/a/g0/g;->k()I

    move-result v2

    invoke-virtual {v1, v2}, Lg/f/c/a/f0/g1$b;->P(I)Lg/f/c/a/f0/g1$b;

    .line 18
    invoke-virtual {v1, v0}, Lg/f/c/a/f0/g1$b;->N(Lg/f/c/a/f0/h1;)Lg/f/c/a/f0/g1$b;

    .line 19
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/i;->h([B)Lcom/google/protobuf/i;

    move-result-object v0

    invoke-virtual {v1, v0}, Lg/f/c/a/f0/g1$b;->H(Lcom/google/protobuf/i;)Lg/f/c/a/f0/g1$b;

    .line 20
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/i;->h([B)Lcom/google/protobuf/i;

    move-result-object v0

    invoke-virtual {v1, v0}, Lg/f/c/a/f0/g1$b;->L(Lcom/google/protobuf/i;)Lg/f/c/a/f0/g1$b;

    .line 21
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeQ()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/i;->h([B)Lcom/google/protobuf/i;

    move-result-object v0

    invoke-virtual {v1, v0}, Lg/f/c/a/f0/g1$b;->O(Lcom/google/protobuf/i;)Lg/f/c/a/f0/g1$b;

    .line 22
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/i;->h([B)Lcom/google/protobuf/i;

    move-result-object v0

    invoke-virtual {v1, v0}, Lg/f/c/a/f0/g1$b;->I(Lcom/google/protobuf/i;)Lg/f/c/a/f0/g1$b;

    .line 23
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentQ()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/i;->h([B)Lcom/google/protobuf/i;

    move-result-object v0

    invoke-virtual {v1, v0}, Lg/f/c/a/f0/g1$b;->J(Lcom/google/protobuf/i;)Lg/f/c/a/f0/g1$b;

    .line 24
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getCrtCoefficient()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/protobuf/i;->h([B)Lcom/google/protobuf/i;

    move-result-object p1

    invoke-virtual {v1, p1}, Lg/f/c/a/f0/g1$b;->G(Lcom/google/protobuf/i;)Lg/f/c/a/f0/g1$b;

    .line 25
    invoke-virtual {v1}, Lcom/google/protobuf/y$a;->x()Lcom/google/protobuf/y;

    move-result-object p1

    check-cast p1, Lg/f/c/a/f0/g1;

    return-object p1
.end method

.method public f(Lcom/google/protobuf/i;)Lg/f/c/a/f0/e1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/protobuf/p;->b()Lcom/google/protobuf/p;

    move-result-object v0

    invoke-static {p1, v0}, Lg/f/c/a/f0/e1;->a0(Lcom/google/protobuf/i;Lcom/google/protobuf/p;)Lg/f/c/a/f0/e1;

    move-result-object p1

    return-object p1
.end method

.method public g(Lg/f/c/a/f0/e1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lg/f/c/a/f0/e1;->Y()Lg/f/c/a/f0/f1;

    move-result-object v0

    invoke-static {v0}, Lg/f/c/a/g0/k;->e(Lg/f/c/a/f0/f1;)V

    .line 2
    invoke-virtual {p1}, Lg/f/c/a/f0/e1;->X()I

    move-result p1

    invoke-static {p1}, Lg/f/c/a/i0/q0;->c(I)V

    return-void
.end method
