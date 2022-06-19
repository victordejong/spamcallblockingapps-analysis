.class public final Lcom/google/android/gms/internal/firebase-auth-api/q2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/gms/internal/firebase-auth-api/ta;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/ta;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/q2;->a:Lcom/google/android/gms/internal/firebase-auth-api/ta;

    return-void
.end method

.method static final a(Lcom/google/android/gms/internal/firebase-auth-api/ta;)Lcom/google/android/gms/internal/firebase-auth-api/q2;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/q2;->g(Lcom/google/android/gms/internal/firebase-auth-api/ta;)V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/q2;

    .line 2
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/q2;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/ta;)V

    return-object v0
.end method

.method public static g(Lcom/google/android/gms/internal/firebase-auth-api/ta;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/ta;->A()I

    move-result p0

    if-lez p0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "empty keyset"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final i(Lcom/google/android/gms/internal/firebase-auth-api/v5;Lcom/google/android/gms/internal/firebase-auth-api/c2;)Lcom/google/android/gms/internal/firebase-auth-api/q2;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/v5;->b()Lcom/google/android/gms/internal/firebase-auth-api/p9;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/p9;->y()Lcom/google/android/gms/internal/firebase-auth-api/mp;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/mp;->g()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/q2;

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/p9;->y()Lcom/google/android/gms/internal/firebase-auth-api/mp;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/mp;->v()[B

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [B

    .line 5
    invoke-interface {p1, p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/c2;->b([B[B)[B

    move-result-object p0

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/aq;->a()Lcom/google/android/gms/internal/firebase-auth-api/aq;

    move-result-object p1

    .line 7
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/ta;->C([BLcom/google/android/gms/internal/firebase-auth-api/aq;)Lcom/google/android/gms/internal/firebase-auth-api/ta;

    move-result-object p0

    .line 8
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/q2;->g(Lcom/google/android/gms/internal/firebase-auth-api/ta;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/firebase-auth-api/zzaal; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/q2;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/ta;)V

    return-object v0

    .line 10
    :catch_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "invalid keyset, corrupted key material"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 11
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "empty keyset"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method final b()Lcom/google/android/gms/internal/firebase-auth-api/ta;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/q2;->a:Lcom/google/android/gms/internal/firebase-auth-api/ta;

    return-object v0
.end method

.method public final c()Lcom/google/android/gms/internal/firebase-auth-api/ya;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/q2;->a:Lcom/google/android/gms/internal/firebase-auth-api/ta;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/j3;->a(Lcom/google/android/gms/internal/firebase-auth-api/ta;)Lcom/google/android/gms/internal/firebase-auth-api/ya;

    move-result-object v0

    return-object v0
.end method

.method public final d(Lcom/google/android/gms/internal/firebase-auth-api/s2;Lcom/google/android/gms/internal/firebase-auth-api/c2;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/q2;->a:Lcom/google/android/gms/internal/firebase-auth-api/ta;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/uo;->a()[B

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [B

    invoke-interface {p2, v1, v3}, Lcom/google/android/gms/internal/firebase-auth-api/c2;->a([B[B)[B

    move-result-object v1

    :try_start_0
    new-array v2, v2, [B

    .line 2
    invoke-interface {p2, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/c2;->b([B[B)[B

    move-result-object p2

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/aq;->a()Lcom/google/android/gms/internal/firebase-auth-api/aq;

    move-result-object v2

    .line 4
    invoke-static {p2, v2}, Lcom/google/android/gms/internal/firebase-auth-api/ta;->C([BLcom/google/android/gms/internal/firebase-auth-api/aq;)Lcom/google/android/gms/internal/firebase-auth-api/ta;

    move-result-object p2

    .line 5
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/e;->equals(Ljava/lang/Object;)Z

    move-result p2
    :try_end_0
    .catch Lcom/google/android/gms/internal/firebase-auth-api/zzaal; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p2, :cond_0

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/p9;->A()Lcom/google/android/gms/internal/firebase-auth-api/o9;

    move-result-object p2

    .line 7
    invoke-static {v1}, Lcom/google/android/gms/internal/firebase-auth-api/mp;->s([B)Lcom/google/android/gms/internal/firebase-auth-api/mp;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/o9;->k(Lcom/google/android/gms/internal/firebase-auth-api/mp;)Lcom/google/android/gms/internal/firebase-auth-api/o9;

    .line 8
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/j3;->a(Lcom/google/android/gms/internal/firebase-auth-api/ta;)Lcom/google/android/gms/internal/firebase-auth-api/ya;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/o9;->l(Lcom/google/android/gms/internal/firebase-auth-api/ya;)Lcom/google/android/gms/internal/firebase-auth-api/o9;

    .line 9
    invoke-virtual {p2}, Lcom/google/android/gms/internal/firebase-auth-api/jq;->h()Lcom/google/android/gms/internal/firebase-auth-api/e;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/firebase-auth-api/p9;

    .line 10
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/s2;->a(Lcom/google/android/gms/internal/firebase-auth-api/p9;)V

    return-void

    .line 11
    :cond_0
    :try_start_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "cannot encrypt keyset"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Lcom/google/android/gms/internal/firebase-auth-api/zzaal; {:try_start_1 .. :try_end_1} :catch_0

    .line 12
    :catch_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "invalid keyset, corrupted key material"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final e(Lcom/google/android/gms/internal/firebase-auth-api/s2;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/q2;->a:Lcom/google/android/gms/internal/firebase-auth-api/ta;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/ta;->z()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/sa;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/sa;->z()Lcom/google/android/gms/internal/firebase-auth-api/ga;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/ga;->A()Lcom/google/android/gms/internal/firebase-auth-api/fa;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/fa;->zza:Lcom/google/android/gms/internal/firebase-auth-api/fa;

    if-eq v2, v3, :cond_0

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/sa;->z()Lcom/google/android/gms/internal/firebase-auth-api/ga;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/ga;->A()Lcom/google/android/gms/internal/firebase-auth-api/fa;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/fa;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/fa;

    if-eq v2, v3, :cond_0

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/sa;->z()Lcom/google/android/gms/internal/firebase-auth-api/ga;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/ga;->A()Lcom/google/android/gms/internal/firebase-auth-api/fa;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/fa;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/fa;

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/sa;->z()Lcom/google/android/gms/internal/firebase-auth-api/ga;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/firebase-auth-api/ga;->A()Lcom/google/android/gms/internal/firebase-auth-api/fa;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/sa;->z()Lcom/google/android/gms/internal/firebase-auth-api/ga;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/ga;->y()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "keyset contains key material of type %s for type url %s"

    .line 7
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/q2;->a:Lcom/google/android/gms/internal/firebase-auth-api/ta;

    .line 8
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/s2;->b(Lcom/google/android/gms/internal/firebase-auth-api/ta;)V

    return-void
.end method

.method public final f()Lcom/google/android/gms/internal/firebase-auth-api/q2;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/q2;->a:Lcom/google/android/gms/internal/firebase-auth-api/ta;

    if-eqz v0, :cond_2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/ta;->D()Lcom/google/android/gms/internal/firebase-auth-api/qa;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/q2;->a:Lcom/google/android/gms/internal/firebase-auth-api/ta;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/ta;->z()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/sa;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/sa;->z()Lcom/google/android/gms/internal/firebase-auth-api/ga;

    move-result-object v3

    .line 4
    invoke-virtual {v3}, Lcom/google/android/gms/internal/firebase-auth-api/ga;->A()Lcom/google/android/gms/internal/firebase-auth-api/fa;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/internal/firebase-auth-api/fa;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/fa;

    if-ne v4, v5, :cond_0

    .line 5
    invoke-virtual {v3}, Lcom/google/android/gms/internal/firebase-auth-api/ga;->y()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/android/gms/internal/firebase-auth-api/ga;->z()Lcom/google/android/gms/internal/firebase-auth-api/mp;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/firebase-auth-api/i3;->g(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/mp;)Lcom/google/android/gms/internal/firebase-auth-api/ga;

    move-result-object v3

    .line 6
    invoke-static {v3}, Lcom/google/android/gms/internal/firebase-auth-api/i3;->j(Lcom/google/android/gms/internal/firebase-auth-api/ga;)Ljava/lang/Object;

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/sa;->D()Lcom/google/android/gms/internal/firebase-auth-api/ra;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/firebase-auth-api/jq;->i(Lcom/google/android/gms/internal/firebase-auth-api/e;)Lcom/google/android/gms/internal/firebase-auth-api/jq;

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/firebase-auth-api/ra;->k(Lcom/google/android/gms/internal/firebase-auth-api/ga;)Lcom/google/android/gms/internal/firebase-auth-api/ra;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/firebase-auth-api/jq;->h()Lcom/google/android/gms/internal/firebase-auth-api/e;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/sa;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/qa;->p(Lcom/google/android/gms/internal/firebase-auth-api/sa;)Lcom/google/android/gms/internal/firebase-auth-api/qa;

    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "The keyset contains a non-private key"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/q2;->a:Lcom/google/android/gms/internal/firebase-auth-api/ta;

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/ta;->y()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/qa;->k(I)Lcom/google/android/gms/internal/firebase-auth-api/qa;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/q2;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/jq;->h()Lcom/google/android/gms/internal/firebase-auth-api/e;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/ta;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/q2;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/ta;)V

    return-object v1

    .line 12
    :cond_2
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "cleartext keyset is not available"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final h(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TP;>;)TP;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/i3;->m(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "No wrapper found for "

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/String;

    .line 5
    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {v0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/q2;->a:Lcom/google/android/gms/internal/firebase-auth-api/ta;

    .line 6
    invoke-static {v1}, Lcom/google/android/gms/internal/firebase-auth-api/j3;->b(Lcom/google/android/gms/internal/firebase-auth-api/ta;)V

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/a3;->b(Ljava/lang/Class;)Lcom/google/android/gms/internal/firebase-auth-api/a3;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/q2;->a:Lcom/google/android/gms/internal/firebase-auth-api/ta;

    .line 8
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/ta;->z()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/firebase-auth-api/sa;

    .line 9
    invoke-virtual {v3}, Lcom/google/android/gms/internal/firebase-auth-api/sa;->A()Lcom/google/android/gms/internal/firebase-auth-api/ia;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/internal/firebase-auth-api/ia;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/ia;

    if-ne v4, v5, :cond_2

    .line 10
    invoke-virtual {v3}, Lcom/google/android/gms/internal/firebase-auth-api/sa;->z()Lcom/google/android/gms/internal/firebase-auth-api/ga;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/google/android/gms/internal/firebase-auth-api/i3;->k(Lcom/google/android/gms/internal/firebase-auth-api/ga;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    .line 11
    invoke-virtual {v1, v4, v3}, Lcom/google/android/gms/internal/firebase-auth-api/a3;->d(Ljava/lang/Object;Lcom/google/android/gms/internal/firebase-auth-api/sa;)Lcom/google/android/gms/internal/firebase-auth-api/y2;

    move-result-object v4

    .line 12
    invoke-virtual {v3}, Lcom/google/android/gms/internal/firebase-auth-api/sa;->B()I

    move-result v3

    iget-object v5, p0, Lcom/google/android/gms/internal/firebase-auth-api/q2;->a:Lcom/google/android/gms/internal/firebase-auth-api/ta;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/firebase-auth-api/ta;->y()I

    move-result v5

    if-ne v3, v5, :cond_2

    .line 13
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/firebase-auth-api/a3;->c(Lcom/google/android/gms/internal/firebase-auth-api/y2;)V

    goto :goto_1

    .line 14
    :cond_3
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/i3;->l(Lcom/google/android/gms/internal/firebase-auth-api/a3;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/q2;->a:Lcom/google/android/gms/internal/firebase-auth-api/ta;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/j3;->a(Lcom/google/android/gms/internal/firebase-auth-api/ta;)Lcom/google/android/gms/internal/firebase-auth-api/ya;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/e;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
