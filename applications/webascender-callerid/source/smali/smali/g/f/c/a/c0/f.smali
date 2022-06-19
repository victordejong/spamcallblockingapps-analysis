.class Lg/f/c/a/c0/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lg/f/c/a/f0/m0;)Lg/f/c/a/i0/y$b;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    sget-object v0, Lg/f/c/a/c0/f$a;->b:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    sget-object p0, Lg/f/c/a/i0/y$b;->NIST_P521:Lg/f/c/a/i0/y$b;

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown curve type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_1
    sget-object p0, Lg/f/c/a/i0/y$b;->NIST_P384:Lg/f/c/a/i0/y$b;

    return-object p0

    .line 5
    :cond_2
    sget-object p0, Lg/f/c/a/i0/y$b;->NIST_P256:Lg/f/c/a/i0/y$b;

    return-object p0
.end method

.method public static b(Lg/f/c/a/f0/o0;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 1
    sget-object v0, Lg/f/c/a/c0/f$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const-string p0, "HmacSha512"

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hash unsupported for HMAC: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p0, "HmacSha256"

    return-object p0

    :cond_2
    const-string p0, "HmacSha1"

    return-object p0
.end method

.method public static c(Lg/f/c/a/f0/x;)Lg/f/c/a/i0/y$d;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    sget-object v0, Lg/f/c/a/c0/f$a;->c:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    sget-object p0, Lg/f/c/a/i0/y$d;->COMPRESSED:Lg/f/c/a/i0/y$d;

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown point format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_1
    sget-object p0, Lg/f/c/a/i0/y$d;->DO_NOT_USE_CRUNCHY_UNCOMPRESSED:Lg/f/c/a/i0/y$d;

    return-object p0

    .line 5
    :cond_2
    sget-object p0, Lg/f/c/a/i0/y$d;->UNCOMPRESSED:Lg/f/c/a/i0/y$d;

    return-object p0
.end method

.method public static d(Lg/f/c/a/f0/f0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lg/f/c/a/f0/f0;->a0()Lg/f/c/a/f0/i0;

    move-result-object v0

    invoke-virtual {v0}, Lg/f/c/a/f0/i0;->X()Lg/f/c/a/f0/m0;

    move-result-object v0

    invoke-static {v0}, Lg/f/c/a/c0/f;->a(Lg/f/c/a/f0/m0;)Lg/f/c/a/i0/y$b;

    move-result-object v0

    invoke-static {v0}, Lg/f/c/a/i0/y;->e(Lg/f/c/a/i0/y$b;)Ljava/security/spec/ECParameterSpec;

    .line 2
    invoke-virtual {p0}, Lg/f/c/a/f0/f0;->a0()Lg/f/c/a/f0/i0;

    move-result-object v0

    invoke-virtual {v0}, Lg/f/c/a/f0/i0;->Z()Lg/f/c/a/f0/o0;

    move-result-object v0

    invoke-static {v0}, Lg/f/c/a/c0/f;->b(Lg/f/c/a/f0/o0;)Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Lg/f/c/a/f0/f0;->Z()Lg/f/c/a/f0/x;

    move-result-object v0

    sget-object v1, Lg/f/c/a/f0/x;->UNKNOWN_FORMAT:Lg/f/c/a/f0/x;

    if-eq v0, v1, :cond_0

    .line 4
    invoke-virtual {p0}, Lg/f/c/a/f0/f0;->Y()Lg/f/c/a/f0/d0;

    move-result-object p0

    invoke-virtual {p0}, Lg/f/c/a/f0/d0;->X()Lg/f/c/a/f0/u0;

    move-result-object p0

    invoke-static {p0}, Lg/f/c/a/w;->p(Lg/f/c/a/f0/u0;)Lg/f/c/a/f0/s0;

    return-void

    .line 5
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "unknown EC point format"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
