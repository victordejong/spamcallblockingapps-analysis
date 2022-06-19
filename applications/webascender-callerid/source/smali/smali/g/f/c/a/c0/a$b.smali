.class Lg/f/c/a/c0/a$b;
.super Lg/f/c/a/i$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/f/c/a/c0/a;->e()Lg/f/c/a/i$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg/f/c/a/i$a<",
        "Lg/f/c/a/f0/e0;",
        "Lg/f/c/a/f0/g0;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lg/f/c/a/c0/a;


# direct methods
.method constructor <init>(Lg/f/c/a/c0/a;Ljava/lang/Class;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/f/c/a/c0/a$b;->b:Lg/f/c/a/c0/a;

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
    check-cast p1, Lg/f/c/a/f0/e0;

    invoke-virtual {p0, p1}, Lg/f/c/a/c0/a$b;->e(Lg/f/c/a/f0/e0;)Lg/f/c/a/f0/g0;

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
    invoke-virtual {p0, p1}, Lg/f/c/a/c0/a$b;->f(Lcom/google/protobuf/i;)Lg/f/c/a/f0/e0;

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
    check-cast p1, Lg/f/c/a/f0/e0;

    invoke-virtual {p0, p1}, Lg/f/c/a/c0/a$b;->g(Lg/f/c/a/f0/e0;)V

    return-void
.end method

.method public e(Lg/f/c/a/f0/e0;)Lg/f/c/a/f0/g0;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lg/f/c/a/f0/e0;->X()Lg/f/c/a/f0/f0;

    move-result-object v0

    invoke-virtual {v0}, Lg/f/c/a/f0/f0;->a0()Lg/f/c/a/f0/i0;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lg/f/c/a/f0/i0;->X()Lg/f/c/a/f0/m0;

    move-result-object v0

    invoke-static {v0}, Lg/f/c/a/c0/f;->a(Lg/f/c/a/f0/m0;)Lg/f/c/a/i0/y$b;

    move-result-object v0

    invoke-static {v0}, Lg/f/c/a/i0/y;->c(Lg/f/c/a/i0/y$b;)Ljava/security/KeyPair;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v1

    check-cast v1, Ljava/security/interfaces/ECPublicKey;

    .line 4
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/ECPrivateKey;

    .line 5
    invoke-interface {v1}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v1

    .line 6
    invoke-static {}, Lg/f/c/a/f0/h0;->g0()Lg/f/c/a/f0/h0$b;

    move-result-object v2

    iget-object v3, p0, Lg/f/c/a/c0/a$b;->b:Lg/f/c/a/c0/a;

    .line 7
    invoke-virtual {v3}, Lg/f/c/a/c0/a;->j()I

    move-result v3

    invoke-virtual {v2, v3}, Lg/f/c/a/f0/h0$b;->H(I)Lg/f/c/a/f0/h0$b;

    .line 8
    invoke-virtual {p1}, Lg/f/c/a/f0/e0;->X()Lg/f/c/a/f0/f0;

    move-result-object p1

    invoke-virtual {v2, p1}, Lg/f/c/a/f0/h0$b;->G(Lg/f/c/a/f0/f0;)Lg/f/c/a/f0/h0$b;

    .line 9
    invoke-virtual {v1}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/protobuf/i;->h([B)Lcom/google/protobuf/i;

    move-result-object p1

    invoke-virtual {v2, p1}, Lg/f/c/a/f0/h0$b;->I(Lcom/google/protobuf/i;)Lg/f/c/a/f0/h0$b;

    .line 10
    invoke-virtual {v1}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/protobuf/i;->h([B)Lcom/google/protobuf/i;

    move-result-object p1

    invoke-virtual {v2, p1}, Lg/f/c/a/f0/h0$b;->J(Lcom/google/protobuf/i;)Lg/f/c/a/f0/h0$b;

    .line 11
    invoke-virtual {v2}, Lcom/google/protobuf/y$a;->x()Lcom/google/protobuf/y;

    move-result-object p1

    check-cast p1, Lg/f/c/a/f0/h0;

    .line 12
    invoke-static {}, Lg/f/c/a/f0/g0;->d0()Lg/f/c/a/f0/g0$b;

    move-result-object v1

    iget-object v2, p0, Lg/f/c/a/c0/a$b;->b:Lg/f/c/a/c0/a;

    .line 13
    invoke-virtual {v2}, Lg/f/c/a/c0/a;->j()I

    move-result v2

    invoke-virtual {v1, v2}, Lg/f/c/a/f0/g0$b;->I(I)Lg/f/c/a/f0/g0$b;

    .line 14
    invoke-virtual {v1, p1}, Lg/f/c/a/f0/g0$b;->H(Lg/f/c/a/f0/h0;)Lg/f/c/a/f0/g0$b;

    .line 15
    invoke-interface {v0}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/protobuf/i;->h([B)Lcom/google/protobuf/i;

    move-result-object p1

    invoke-virtual {v1, p1}, Lg/f/c/a/f0/g0$b;->G(Lcom/google/protobuf/i;)Lg/f/c/a/f0/g0$b;

    .line 16
    invoke-virtual {v1}, Lcom/google/protobuf/y$a;->x()Lcom/google/protobuf/y;

    move-result-object p1

    check-cast p1, Lg/f/c/a/f0/g0;

    return-object p1
.end method

.method public f(Lcom/google/protobuf/i;)Lg/f/c/a/f0/e0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/protobuf/p;->b()Lcom/google/protobuf/p;

    move-result-object v0

    .line 2
    invoke-static {p1, v0}, Lg/f/c/a/f0/e0;->Y(Lcom/google/protobuf/i;Lcom/google/protobuf/p;)Lg/f/c/a/f0/e0;

    move-result-object p1

    return-object p1
.end method

.method public g(Lg/f/c/a/f0/e0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lg/f/c/a/f0/e0;->X()Lg/f/c/a/f0/f0;

    move-result-object p1

    invoke-static {p1}, Lg/f/c/a/c0/f;->d(Lg/f/c/a/f0/f0;)V

    return-void
.end method
