.class Lg/f/c/a/g0/h;
.super Lg/f/c/a/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg/f/c/a/i<",
        "Lg/f/c/a/f0/h1;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    const-class v0, Lg/f/c/a/f0/h1;

    const/4 v1, 0x1

    new-array v1, v1, [Lg/f/c/a/i$b;

    new-instance v2, Lg/f/c/a/g0/h$a;

    const-class v3, Lg/f/c/a/v;

    invoke-direct {v2, v3}, Lg/f/c/a/g0/h$a;-><init>(Ljava/lang/Class;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {p0, v0, v1}, Lg/f/c/a/i;-><init>(Ljava/lang/Class;[Lg/f/c/a/i$b;)V

    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "type.googleapis.com/google.crypto.tink.RsaSsaPkcs1PublicKey"

    return-object v0
.end method

.method public f()Lg/f/c/a/f0/s0$c;
    .locals 1

    .line 1
    sget-object v0, Lg/f/c/a/f0/s0$c;->ASYMMETRIC_PUBLIC:Lg/f/c/a/f0/s0$c;

    return-object v0
.end method

.method public bridge synthetic g(Lcom/google/protobuf/i;)Lcom/google/protobuf/r0;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lg/f/c/a/g0/h;->k(Lcom/google/protobuf/i;)Lg/f/c/a/f0/h1;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic i(Lcom/google/protobuf/r0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    check-cast p1, Lg/f/c/a/f0/h1;

    invoke-virtual {p0, p1}, Lg/f/c/a/g0/h;->l(Lg/f/c/a/f0/h1;)V

    return-void
.end method

.method public j()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public k(Lcom/google/protobuf/i;)Lg/f/c/a/f0/h1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/protobuf/p;->b()Lcom/google/protobuf/p;

    move-result-object v0

    invoke-static {p1, v0}, Lg/f/c/a/f0/h1;->h0(Lcom/google/protobuf/i;Lcom/google/protobuf/p;)Lg/f/c/a/f0/h1;

    move-result-object p1

    return-object p1
.end method

.method public l(Lg/f/c/a/f0/h1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lg/f/c/a/f0/h1;->f0()I

    move-result v0

    invoke-virtual {p0}, Lg/f/c/a/g0/h;->j()I

    move-result v1

    invoke-static {v0, v1}, Lg/f/c/a/i0/q0;->e(II)V

    .line 2
    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {p1}, Lg/f/c/a/f0/h1;->d0()Lcom/google/protobuf/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/i;->w()[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    invoke-static {v0}, Lg/f/c/a/i0/q0;->c(I)V

    .line 3
    invoke-virtual {p1}, Lg/f/c/a/f0/h1;->e0()Lg/f/c/a/f0/f1;

    move-result-object p1

    invoke-static {p1}, Lg/f/c/a/g0/k;->e(Lg/f/c/a/f0/f1;)V

    return-void
.end method
