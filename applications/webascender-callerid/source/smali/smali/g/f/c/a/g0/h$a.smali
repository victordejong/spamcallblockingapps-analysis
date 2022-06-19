.class Lg/f/c/a/g0/h$a;
.super Lg/f/c/a/i$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/f/c/a/g0/h;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg/f/c/a/i$b<",
        "Lg/f/c/a/v;",
        "Lg/f/c/a/f0/h1;",
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
    check-cast p1, Lg/f/c/a/f0/h1;

    invoke-virtual {p0, p1}, Lg/f/c/a/g0/h$a;->c(Lg/f/c/a/f0/h1;)Lg/f/c/a/v;

    move-result-object p1

    return-object p1
.end method

.method public c(Lg/f/c/a/f0/h1;)Lg/f/c/a/v;
    .locals 5
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
    new-instance v1, Ljava/math/BigInteger;

    invoke-virtual {p1}, Lg/f/c/a/f0/h1;->d0()Lcom/google/protobuf/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/i;->w()[B

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 3
    new-instance v2, Ljava/math/BigInteger;

    invoke-virtual {p1}, Lg/f/c/a/f0/h1;->c0()Lcom/google/protobuf/i;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protobuf/i;->w()[B

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 4
    new-instance v3, Ljava/security/spec/RSAPublicKeySpec;

    invoke-direct {v3, v1, v2}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 5
    invoke-virtual {v0, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/RSAPublicKey;

    .line 6
    new-instance v1, Lg/f/c/a/i0/m0;

    .line 7
    invoke-virtual {p1}, Lg/f/c/a/f0/h1;->e0()Lg/f/c/a/f0/f1;

    move-result-object p1

    invoke-virtual {p1}, Lg/f/c/a/f0/f1;->Y()Lg/f/c/a/f0/o0;

    move-result-object p1

    invoke-static {p1}, Lg/f/c/a/g0/k;->c(Lg/f/c/a/f0/o0;)Lg/f/c/a/i0/c0;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lg/f/c/a/i0/m0;-><init>(Ljava/security/interfaces/RSAPublicKey;Lg/f/c/a/i0/c0;)V

    return-object v1
.end method
