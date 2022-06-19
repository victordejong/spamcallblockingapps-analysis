.class public final Lcom/google/android/gms/internal/firebase-auth-api/u3;
.super Lcom/google/android/gms/internal/firebase-auth-api/p2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase-auth-api/p2<",
        "Lcom/google/android/gms/internal/firebase-auth-api/b7;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/gms/internal/firebase-auth-api/o2;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/s3;

    const-class v2, Lcom/google/android/gms/internal/firebase-auth-api/ad;

    .line 1
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/s3;-><init>(Ljava/lang/Class;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/b7;

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/p2;-><init>(Ljava/lang/Class;[Lcom/google/android/gms/internal/firebase-auth-api/o2;)V

    return-void
.end method

.method static synthetic j(Lcom/google/android/gms/internal/firebase-auth-api/u3;Lcom/google/android/gms/internal/firebase-auth-api/h7;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/u3;->l(Lcom/google/android/gms/internal/firebase-auth-api/h7;)V

    return-void
.end method

.method public static final k(Lcom/google/android/gms/internal/firebase-auth-api/b7;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/b7;->y()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/kd;->b(II)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/b7;->A()Lcom/google/android/gms/internal/firebase-auth-api/mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/mp;->g()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/kd;->a(I)V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/b7;->z()Lcom/google/android/gms/internal/firebase-auth-api/h7;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/u3;->l(Lcom/google/android/gms/internal/firebase-auth-api/h7;)V

    return-void
.end method

.method private static final l(Lcom/google/android/gms/internal/firebase-auth-api/h7;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/h7;->y()I

    move-result v0

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/h7;->y()I

    move-result p0

    const/16 v0, 0x10

    if-gt p0, v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "invalid IV size"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1

    const-string v0, "type.googleapis.com/google.crypto.tink.AesCtrKey"

    return-object v0
.end method

.method public final c()Lcom/google/android/gms/internal/firebase-auth-api/fa;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/fa;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/fa;

    return-object v0
.end method

.method public final bridge synthetic d(Lcom/google/android/gms/internal/firebase-auth-api/mp;)Lcom/google/android/gms/internal/firebase-auth-api/f0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/firebase-auth-api/zzaal;
        }
    .end annotation

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/aq;->a()Lcom/google/android/gms/internal/firebase-auth-api/aq;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/b7;->B(Lcom/google/android/gms/internal/firebase-auth-api/mp;Lcom/google/android/gms/internal/firebase-auth-api/aq;)Lcom/google/android/gms/internal/firebase-auth-api/b7;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic e(Lcom/google/android/gms/internal/firebase-auth-api/f0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/b7;

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/u3;->k(Lcom/google/android/gms/internal/firebase-auth-api/b7;)V

    return-void
.end method

.method public final i()Lcom/google/android/gms/internal/firebase-auth-api/n2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/firebase-auth-api/n2<",
            "Lcom/google/android/gms/internal/firebase-auth-api/e7;",
            "Lcom/google/android/gms/internal/firebase-auth-api/b7;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/t3;

    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/e7;

    .line 1
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/t3;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/u3;Ljava/lang/Class;)V

    return-object v0
.end method
