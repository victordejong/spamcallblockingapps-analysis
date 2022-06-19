.class final Lcom/google/android/gms/internal/firebase-auth-api/n5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/mc;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private c:Lcom/google/android/gms/internal/firebase-auth-api/t7;

.field private d:Lcom/google/android/gms/internal/firebase-auth-api/u6;

.field private e:I

.field private f:Lcom/google/android/gms/internal/firebase-auth-api/g8;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/la;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/la;->y()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/n5;->a:Ljava/lang/String;

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/k3;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/la;->z()Lcom/google/android/gms/internal/firebase-auth-api/mp;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/aq;->a()Lcom/google/android/gms/internal/firebase-auth-api/aq;

    move-result-object v1

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/w7;->z(Lcom/google/android/gms/internal/firebase-auth-api/mp;Lcom/google/android/gms/internal/firebase-auth-api/aq;)Lcom/google/android/gms/internal/firebase-auth-api/w7;

    move-result-object v0

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/i3;->f(Lcom/google/android/gms/internal/firebase-auth-api/la;)Lcom/google/android/gms/internal/firebase-auth-api/f0;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/t7;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/n5;->c:Lcom/google/android/gms/internal/firebase-auth-api/t7;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/w7;->y()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/n5;->b:I
    :try_end_0
    .catch Lcom/google/android/gms/internal/firebase-auth-api/zzaal; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 7
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "invalid KeyFormat protobuf, expected AesGcmKeyFormat"

    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 8
    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/k3;->a:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "invalid KeyFormat protobuf, expected AesCtrHmacAeadKeyFormat"

    if-eqz v1, :cond_1

    .line 10
    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/la;->z()Lcom/google/android/gms/internal/firebase-auth-api/mp;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/aq;->a()Lcom/google/android/gms/internal/firebase-auth-api/aq;

    move-result-object v1

    .line 11
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/x6;->A(Lcom/google/android/gms/internal/firebase-auth-api/mp;Lcom/google/android/gms/internal/firebase-auth-api/aq;)Lcom/google/android/gms/internal/firebase-auth-api/x6;

    move-result-object v0

    .line 12
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/i3;->f(Lcom/google/android/gms/internal/firebase-auth-api/la;)Lcom/google/android/gms/internal/firebase-auth-api/f0;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/u6;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/n5;->d:Lcom/google/android/gms/internal/firebase-auth-api/u6;

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/x6;->y()Lcom/google/android/gms/internal/firebase-auth-api/e7;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/e7;->z()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/n5;->e:I

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/x6;->z()Lcom/google/android/gms/internal/firebase-auth-api/x9;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/x9;->z()I

    move-result p1

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/n5;->e:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/n5;->b:I
    :try_end_1
    .catch Lcom/google/android/gms/internal/firebase-auth-api/zzaal; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    .line 15
    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-direct {v0, v2, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 16
    :cond_1
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/x4;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 17
    :try_start_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/la;->z()Lcom/google/android/gms/internal/firebase-auth-api/mp;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/aq;->a()Lcom/google/android/gms/internal/firebase-auth-api/aq;

    move-result-object v1

    .line 18
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/j8;->z(Lcom/google/android/gms/internal/firebase-auth-api/mp;Lcom/google/android/gms/internal/firebase-auth-api/aq;)Lcom/google/android/gms/internal/firebase-auth-api/j8;

    move-result-object v0

    .line 19
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/i3;->f(Lcom/google/android/gms/internal/firebase-auth-api/la;)Lcom/google/android/gms/internal/firebase-auth-api/f0;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/g8;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/n5;->f:Lcom/google/android/gms/internal/firebase-auth-api/g8;

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/j8;->y()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/n5;->b:I
    :try_end_2
    .catch Lcom/google/android/gms/internal/firebase-auth-api/zzaal; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_2
    move-exception p1

    .line 21
    new-instance v0, Ljava/security/GeneralSecurityException;

    invoke-direct {v0, v2, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 22
    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "unsupported AEAD DEM key type: "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 23
    :cond_3
    new-instance v0, Ljava/lang/String;

    .line 24
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a([B)Lcom/google/android/gms/internal/firebase-auth-api/o5;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const-class v0, Lcom/google/android/gms/internal/firebase-auth-api/c2;

    array-length v1, p1

    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/n5;->b:I

    if-ne v1, v2, :cond_3

    .line 1
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/n5;->a:Ljava/lang/String;

    .line 2
    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/k3;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/t7;->B()Lcom/google/android/gms/internal/firebase-auth-api/s7;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/n5;->c:Lcom/google/android/gms/internal/firebase-auth-api/t7;

    .line 4
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/firebase-auth-api/jq;->i(Lcom/google/android/gms/internal/firebase-auth-api/e;)Lcom/google/android/gms/internal/firebase-auth-api/jq;

    iget v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/n5;->b:I

    .line 5
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/mp;->q([BII)Lcom/google/android/gms/internal/firebase-auth-api/mp;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/s7;->l(Lcom/google/android/gms/internal/firebase-auth-api/mp;)Lcom/google/android/gms/internal/firebase-auth-api/s7;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/jq;->h()Lcom/google/android/gms/internal/firebase-auth-api/e;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/t7;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/o5;

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/n5;->a:Ljava/lang/String;

    .line 7
    invoke-static {v2, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/i3;->h(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/f0;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/c2;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/o5;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/c2;)V

    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/n5;->a:Ljava/lang/String;

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/k3;->a:Ljava/lang/String;

    .line 8
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/n5;->e:I

    .line 9
    invoke-static {p1, v2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/n5;->e:I

    iget v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/n5;->b:I

    .line 10
    invoke-static {p1, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/b7;->C()Lcom/google/android/gms/internal/firebase-auth-api/z6;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/n5;->d:Lcom/google/android/gms/internal/firebase-auth-api/u6;

    .line 12
    invoke-virtual {v3}, Lcom/google/android/gms/internal/firebase-auth-api/u6;->z()Lcom/google/android/gms/internal/firebase-auth-api/b7;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/jq;->i(Lcom/google/android/gms/internal/firebase-auth-api/e;)Lcom/google/android/gms/internal/firebase-auth-api/jq;

    .line 13
    invoke-static {v1}, Lcom/google/android/gms/internal/firebase-auth-api/mp;->s([B)Lcom/google/android/gms/internal/firebase-auth-api/mp;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/z6;->m(Lcom/google/android/gms/internal/firebase-auth-api/mp;)Lcom/google/android/gms/internal/firebase-auth-api/z6;

    .line 14
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/jq;->h()Lcom/google/android/gms/internal/firebase-auth-api/e;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/b7;

    .line 15
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/u9;->C()Lcom/google/android/gms/internal/firebase-auth-api/t9;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/n5;->d:Lcom/google/android/gms/internal/firebase-auth-api/u6;

    .line 16
    invoke-virtual {v3}, Lcom/google/android/gms/internal/firebase-auth-api/u6;->A()Lcom/google/android/gms/internal/firebase-auth-api/u9;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/jq;->i(Lcom/google/android/gms/internal/firebase-auth-api/e;)Lcom/google/android/gms/internal/firebase-auth-api/jq;

    .line 17
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/mp;->s([B)Lcom/google/android/gms/internal/firebase-auth-api/mp;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/t9;->m(Lcom/google/android/gms/internal/firebase-auth-api/mp;)Lcom/google/android/gms/internal/firebase-auth-api/t9;

    .line 18
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/jq;->h()Lcom/google/android/gms/internal/firebase-auth-api/e;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/u9;

    .line 19
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/u6;->C()Lcom/google/android/gms/internal/firebase-auth-api/t6;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/n5;->d:Lcom/google/android/gms/internal/firebase-auth-api/u6;

    .line 20
    invoke-virtual {v3}, Lcom/google/android/gms/internal/firebase-auth-api/u6;->y()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/t6;->k(I)Lcom/google/android/gms/internal/firebase-auth-api/t6;

    .line 21
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/t6;->l(Lcom/google/android/gms/internal/firebase-auth-api/b7;)Lcom/google/android/gms/internal/firebase-auth-api/t6;

    .line 22
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/t6;->m(Lcom/google/android/gms/internal/firebase-auth-api/u9;)Lcom/google/android/gms/internal/firebase-auth-api/t6;

    .line 23
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/jq;->h()Lcom/google/android/gms/internal/firebase-auth-api/e;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/u6;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/o5;

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/n5;->a:Ljava/lang/String;

    .line 24
    invoke-static {v2, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/i3;->h(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/f0;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/c2;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/o5;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/c2;)V

    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/n5;->a:Ljava/lang/String;

    .line 25
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/x4;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 26
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/g8;->B()Lcom/google/android/gms/internal/firebase-auth-api/f8;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/n5;->f:Lcom/google/android/gms/internal/firebase-auth-api/g8;

    .line 27
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/jq;->i(Lcom/google/android/gms/internal/firebase-auth-api/e;)Lcom/google/android/gms/internal/firebase-auth-api/jq;

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/n5;->b:I

    .line 28
    invoke-static {p1, v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/mp;->q([BII)Lcom/google/android/gms/internal/firebase-auth-api/mp;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/f8;->l(Lcom/google/android/gms/internal/firebase-auth-api/mp;)Lcom/google/android/gms/internal/firebase-auth-api/f8;

    .line 29
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/jq;->h()Lcom/google/android/gms/internal/firebase-auth-api/e;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/g8;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/o5;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/n5;->a:Ljava/lang/String;

    const-class v2, Lcom/google/android/gms/internal/firebase-auth-api/g2;

    .line 30
    invoke-static {v1, p1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/i3;->h(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/f0;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/g2;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/o5;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/g2;)V

    return-object v0

    .line 31
    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "unknown DEM key type"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 32
    :cond_3
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "Symmetric key has incorrect length"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/n5;->b:I

    return v0
.end method
