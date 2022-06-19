.class Lg/f/c/a/g0/i;
.super Lg/f/c/a/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg/f/c/a/t<",
        "Lg/f/c/a/f0/k1;",
        "Lg/f/c/a/f0/l1;",
        ">;"
    }
.end annotation


# static fields
.field private static final d:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "UTF-8"

    .line 1
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    const-string v1, "Tink and Wycheproof."

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lg/f/c/a/g0/i;->d:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    const-class v0, Lg/f/c/a/f0/k1;

    const-class v1, Lg/f/c/a/f0/l1;

    const/4 v2, 0x1

    new-array v2, v2, [Lg/f/c/a/i$b;

    new-instance v3, Lg/f/c/a/g0/i$a;

    const-class v4, Lg/f/c/a/u;

    invoke-direct {v3, v4}, Lg/f/c/a/g0/i$a;-><init>(Ljava/lang/Class;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-direct {p0, v0, v1, v2}, Lg/f/c/a/t;-><init>(Ljava/lang/Class;Ljava/lang/Class;[Lg/f/c/a/i$b;)V

    return-void
.end method

.method static synthetic j()[B
    .locals 1

    .line 1
    sget-object v0, Lg/f/c/a/g0/i;->d:[B

    return-object v0
.end method

.method public static m(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    new-instance v0, Lg/f/c/a/g0/i;

    invoke-direct {v0}, Lg/f/c/a/g0/i;-><init>()V

    new-instance v1, Lg/f/c/a/g0/j;

    invoke-direct {v1}, Lg/f/c/a/g0/j;-><init>()V

    invoke-static {v0, v1, p0}, Lg/f/c/a/w;->q(Lg/f/c/a/t;Lg/f/c/a/i;Z)V

    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "type.googleapis.com/google.crypto.tink.RsaSsaPssPrivateKey"

    return-object v0
.end method

.method public e()Lg/f/c/a/i$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lg/f/c/a/i$a<",
            "Lg/f/c/a/f0/i1;",
            "Lg/f/c/a/f0/k1;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lg/f/c/a/g0/i$b;

    const-class v1, Lg/f/c/a/f0/i1;

    invoke-direct {v0, p0, v1}, Lg/f/c/a/g0/i$b;-><init>(Lg/f/c/a/g0/i;Ljava/lang/Class;)V

    return-object v0
.end method

.method public f()Lg/f/c/a/f0/s0$c;
    .locals 1

    .line 1
    sget-object v0, Lg/f/c/a/f0/s0$c;->ASYMMETRIC_PRIVATE:Lg/f/c/a/f0/s0$c;

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
    invoke-virtual {p0, p1}, Lg/f/c/a/g0/i;->l(Lcom/google/protobuf/i;)Lg/f/c/a/f0/k1;

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
    check-cast p1, Lg/f/c/a/f0/k1;

    invoke-virtual {p0, p1}, Lg/f/c/a/g0/i;->n(Lg/f/c/a/f0/k1;)V

    return-void
.end method

.method public k()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public l(Lcom/google/protobuf/i;)Lg/f/c/a/f0/k1;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/protobuf/p;->b()Lcom/google/protobuf/p;

    move-result-object v0

    invoke-static {p1, v0}, Lg/f/c/a/f0/k1;->o0(Lcom/google/protobuf/i;Lcom/google/protobuf/p;)Lg/f/c/a/f0/k1;

    move-result-object p1

    return-object p1
.end method

.method public n(Lg/f/c/a/f0/k1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lg/f/c/a/f0/k1;->m0()I

    move-result v0

    invoke-virtual {p0}, Lg/f/c/a/g0/i;->k()I

    move-result v1

    invoke-static {v0, v1}, Lg/f/c/a/i0/q0;->e(II)V

    .line 2
    new-instance v0, Ljava/math/BigInteger;

    .line 3
    invoke-virtual {p1}, Lg/f/c/a/f0/k1;->k0()Lg/f/c/a/f0/l1;

    move-result-object v1

    invoke-virtual {v1}, Lg/f/c/a/f0/l1;->d0()Lcom/google/protobuf/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/i;->w()[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    .line 4
    invoke-static {v0}, Lg/f/c/a/i0/q0;->c(I)V

    .line 5
    invoke-virtual {p1}, Lg/f/c/a/f0/k1;->k0()Lg/f/c/a/f0/l1;

    move-result-object p1

    invoke-virtual {p1}, Lg/f/c/a/f0/l1;->e0()Lg/f/c/a/f0/j1;

    move-result-object p1

    invoke-static {p1}, Lg/f/c/a/g0/k;->f(Lg/f/c/a/f0/j1;)V

    return-void
.end method
