.class final Lg/f/c/a/g0/k;
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
    sget-object v0, Lg/f/c/a/g0/k$a;->b:[I

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

.method public static b(Lg/f/c/a/f0/c0;)Lg/f/c/a/i0/y$c;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    sget-object v0, Lg/f/c/a/g0/k$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    sget-object p0, Lg/f/c/a/i0/y$c;->IEEE_P1363:Lg/f/c/a/i0/y$c;

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown ECDSA encoding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_1
    sget-object p0, Lg/f/c/a/i0/y$c;->DER:Lg/f/c/a/i0/y$c;

    return-object p0
.end method

.method public static c(Lg/f/c/a/f0/o0;)Lg/f/c/a/i0/c0;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    sget-object v0, Lg/f/c/a/g0/k$a;->c:[I

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
    sget-object p0, Lg/f/c/a/i0/c0;->SHA512:Lg/f/c/a/i0/c0;

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsupported hash type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_1
    sget-object p0, Lg/f/c/a/i0/c0;->SHA384:Lg/f/c/a/i0/c0;

    return-object p0

    .line 5
    :cond_2
    sget-object p0, Lg/f/c/a/i0/c0;->SHA256:Lg/f/c/a/i0/c0;

    return-object p0
.end method

.method public static d(Lg/f/c/a/f0/z;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lg/f/c/a/f0/z;->Z()Lg/f/c/a/f0/c0;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lg/f/c/a/f0/z;->a0()Lg/f/c/a/f0/o0;

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Lg/f/c/a/f0/z;->X()Lg/f/c/a/f0/m0;

    move-result-object p0

    .line 4
    sget-object v2, Lg/f/c/a/g0/k$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "unsupported signature encoding"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lg/f/c/a/g0/k$a;->b:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const-string v0, "Invalid ECDSA parameters"

    if-eq p0, v3, :cond_6

    if-eq p0, v2, :cond_4

    const/4 v2, 0x3

    if-ne p0, v2, :cond_3

    .line 7
    sget-object p0, Lg/f/c/a/f0/o0;->SHA512:Lg/f/c/a/f0/o0;

    if-ne v1, p0, :cond_2

    goto :goto_1

    .line 8
    :cond_2
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 9
    :cond_3
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_4
    sget-object p0, Lg/f/c/a/f0/o0;->SHA384:Lg/f/c/a/f0/o0;

    if-eq v1, p0, :cond_7

    sget-object p0, Lg/f/c/a/f0/o0;->SHA512:Lg/f/c/a/f0/o0;

    if-ne v1, p0, :cond_5

    goto :goto_1

    .line 11
    :cond_5
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 12
    :cond_6
    sget-object p0, Lg/f/c/a/f0/o0;->SHA256:Lg/f/c/a/f0/o0;

    if-ne v1, p0, :cond_8

    :cond_7
    :goto_1
    return-void

    .line 13
    :cond_8
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static e(Lg/f/c/a/f0/f1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lg/f/c/a/f0/f1;->Y()Lg/f/c/a/f0/o0;

    move-result-object p0

    invoke-static {p0}, Lg/f/c/a/g0/k;->c(Lg/f/c/a/f0/o0;)Lg/f/c/a/i0/c0;

    return-void
.end method

.method public static f(Lg/f/c/a/f0/j1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lg/f/c/a/f0/j1;->a0()Lg/f/c/a/f0/o0;

    move-result-object v0

    invoke-static {v0}, Lg/f/c/a/g0/k;->c(Lg/f/c/a/f0/o0;)Lg/f/c/a/i0/c0;

    .line 2
    invoke-virtual {p0}, Lg/f/c/a/f0/j1;->a0()Lg/f/c/a/f0/o0;

    move-result-object v0

    invoke-virtual {p0}, Lg/f/c/a/f0/j1;->Y()Lg/f/c/a/f0/o0;

    move-result-object p0

    if-ne v0, p0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "MGF1 hash is different from signature hash"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
