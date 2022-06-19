.class Lg/f/c/a/y;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    .line 1
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    return-void
.end method

.method public static a(Lg/f/c/a/f0/w0$c;)Lg/f/c/a/f0/x0$c;
    .locals 2

    .line 1
    invoke-static {}, Lg/f/c/a/f0/x0$c;->b0()Lg/f/c/a/f0/x0$c$a;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lg/f/c/a/f0/w0$c;->b0()Lg/f/c/a/f0/s0;

    move-result-object v1

    invoke-virtual {v1}, Lg/f/c/a/f0/s0;->c0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg/f/c/a/f0/x0$c$a;->J(Ljava/lang/String;)Lg/f/c/a/f0/x0$c$a;

    .line 3
    invoke-virtual {p0}, Lg/f/c/a/f0/w0$c;->e0()Lg/f/c/a/f0/t0;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg/f/c/a/f0/x0$c$a;->I(Lg/f/c/a/f0/t0;)Lg/f/c/a/f0/x0$c$a;

    .line 4
    invoke-virtual {p0}, Lg/f/c/a/f0/w0$c;->d0()Lg/f/c/a/f0/c1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg/f/c/a/f0/x0$c$a;->H(Lg/f/c/a/f0/c1;)Lg/f/c/a/f0/x0$c$a;

    .line 5
    invoke-virtual {p0}, Lg/f/c/a/f0/w0$c;->c0()I

    move-result p0

    invoke-virtual {v0, p0}, Lg/f/c/a/f0/x0$c$a;->G(I)Lg/f/c/a/f0/x0$c$a;

    .line 6
    invoke-virtual {v0}, Lcom/google/protobuf/y$a;->x()Lcom/google/protobuf/y;

    move-result-object p0

    check-cast p0, Lg/f/c/a/f0/x0$c;

    return-object p0
.end method

.method public static b(Lg/f/c/a/f0/w0;)Lg/f/c/a/f0/x0;
    .locals 2

    .line 1
    invoke-static {}, Lg/f/c/a/f0/x0;->b0()Lg/f/c/a/f0/x0$b;

    move-result-object v0

    invoke-virtual {p0}, Lg/f/c/a/f0/w0;->d0()I

    move-result v1

    invoke-virtual {v0, v1}, Lg/f/c/a/f0/x0$b;->H(I)Lg/f/c/a/f0/x0$b;

    .line 2
    invoke-virtual {p0}, Lg/f/c/a/f0/w0;->c0()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/f/c/a/f0/w0$c;

    .line 3
    invoke-static {v1}, Lg/f/c/a/y;->a(Lg/f/c/a/f0/w0$c;)Lg/f/c/a/f0/x0$c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg/f/c/a/f0/x0$b;->G(Lg/f/c/a/f0/x0$c;)Lg/f/c/a/f0/x0$b;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/y$a;->x()Lcom/google/protobuf/y;

    move-result-object p0

    check-cast p0, Lg/f/c/a/f0/x0;

    return-object p0
.end method

.method public static c(Lg/f/c/a/f0/w0$c;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lg/f/c/a/f0/w0$c;->f0()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p0}, Lg/f/c/a/f0/w0$c;->d0()Lg/f/c/a/f0/c1;

    move-result-object v0

    sget-object v3, Lg/f/c/a/f0/c1;->UNKNOWN_PREFIX:Lg/f/c/a/f0/c1;

    if-eq v0, v3, :cond_1

    .line 3
    invoke-virtual {p0}, Lg/f/c/a/f0/w0$c;->e0()Lg/f/c/a/f0/t0;

    move-result-object v0

    sget-object v3, Lg/f/c/a/f0/t0;->UNKNOWN_STATUS:Lg/f/c/a/f0/t0;

    if-eq v0, v3, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    new-array v2, v2, [Ljava/lang/Object;

    .line 5
    invoke-virtual {p0}, Lg/f/c/a/f0/w0$c;->c0()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v1

    const-string p0, "key %d has unknown status"

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_1
    new-instance v0, Ljava/security/GeneralSecurityException;

    new-array v2, v2, [Ljava/lang/Object;

    .line 7
    invoke-virtual {p0}, Lg/f/c/a/f0/w0$c;->c0()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v1

    const-string p0, "key %d has unknown prefix"

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8
    :cond_2
    new-instance v0, Ljava/security/GeneralSecurityException;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lg/f/c/a/f0/w0$c;->c0()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v1

    const-string p0, "key %d has no key data"

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static d(Lg/f/c/a/f0/w0;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lg/f/c/a/f0/w0;->d0()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lg/f/c/a/f0/w0;->c0()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/f/c/a/f0/w0$c;

    .line 3
    invoke-virtual {v6}, Lg/f/c/a/f0/w0$c;->e0()Lg/f/c/a/f0/t0;

    move-result-object v7

    sget-object v8, Lg/f/c/a/f0/t0;->ENABLED:Lg/f/c/a/f0/t0;

    if-eq v7, v8, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {v6}, Lg/f/c/a/y;->c(Lg/f/c/a/f0/w0$c;)V

    .line 5
    invoke-virtual {v6}, Lg/f/c/a/f0/w0$c;->c0()I

    move-result v7

    if-ne v7, v0, :cond_2

    if-nez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    .line 6
    :cond_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "keyset contains multiple primary keys"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :cond_2
    :goto_1
    invoke-virtual {v6}, Lg/f/c/a/f0/w0$c;->b0()Lg/f/c/a/f0/s0;

    move-result-object v6

    invoke-virtual {v6}, Lg/f/c/a/f0/s0;->b0()Lg/f/c/a/f0/s0$c;

    move-result-object v6

    sget-object v7, Lg/f/c/a/f0/s0$c;->ASYMMETRIC_PUBLIC:Lg/f/c/a/f0/s0$c;

    if-eq v6, v7, :cond_3

    const/4 v5, 0x0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    if-eqz v3, :cond_7

    if-nez v4, :cond_6

    if-eqz v5, :cond_5

    goto :goto_2

    .line 8
    :cond_5
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "keyset doesn\'t contain a valid primary key"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_2
    return-void

    .line 9
    :cond_7
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "keyset must contain at least one ENABLED key"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
