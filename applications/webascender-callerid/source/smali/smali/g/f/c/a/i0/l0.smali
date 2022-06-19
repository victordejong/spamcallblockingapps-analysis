.class public final Lg/f/c/a/i0/l0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/f/c/a/u;


# instance fields
.field private final a:Ljava/security/interfaces/RSAPrivateCrtKey;

.field private final b:Ljava/security/interfaces/RSAPublicKey;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/security/interfaces/RSAPrivateCrtKey;Lg/f/c/a/i0/c0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p2}, Lg/f/c/a/i0/q0;->d(Lg/f/c/a/i0/c0;)V

    .line 3
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    invoke-static {v0}, Lg/f/c/a/i0/q0;->c(I)V

    .line 4
    iput-object p1, p0, Lg/f/c/a/i0/l0;->a:Ljava/security/interfaces/RSAPrivateCrtKey;

    .line 5
    invoke-static {p2}, Lg/f/c/a/i0/p0;->g(Lg/f/c/a/i0/c0;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lg/f/c/a/i0/l0;->c:Ljava/lang/String;

    .line 6
    sget-object p2, Lg/f/c/a/i0/a0;->k:Lg/f/c/a/i0/a0;

    const-string v0, "RSA"

    invoke-virtual {p2, v0}, Lg/f/c/a/i0/a0;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/security/KeyFactory;

    .line 7
    new-instance v0, Ljava/security/spec/RSAPublicKeySpec;

    .line 8
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {p2, v0}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p1

    check-cast p1, Ljava/security/interfaces/RSAPublicKey;

    iput-object p1, p0, Lg/f/c/a/i0/l0;->b:Ljava/security/interfaces/RSAPublicKey;

    return-void
.end method


# virtual methods
.method public a([B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    sget-object v0, Lg/f/c/a/i0/a0;->h:Lg/f/c/a/i0/a0;

    iget-object v1, p0, Lg/f/c/a/i0/l0;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lg/f/c/a/i0/a0;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/Signature;

    .line 2
    iget-object v2, p0, Lg/f/c/a/i0/l0;->a:Ljava/security/interfaces/RSAPrivateCrtKey;

    invoke-virtual {v1, v2}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 3
    invoke-virtual {v1, p1}, Ljava/security/Signature;->update([B)V

    .line 4
    invoke-virtual {v1}, Ljava/security/Signature;->sign()[B

    move-result-object v1

    .line 5
    iget-object v2, p0, Lg/f/c/a/i0/l0;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lg/f/c/a/i0/a0;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Signature;

    .line 6
    iget-object v2, p0, Lg/f/c/a/i0/l0;->b:Ljava/security/interfaces/RSAPublicKey;

    invoke-virtual {v0, v2}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 7
    invoke-virtual {v0, p1}, Ljava/security/Signature;->update([B)V

    .line 8
    invoke-virtual {v0, v1}, Ljava/security/Signature;->verify([B)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object v1

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Security bug: RSA signature computation error"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
