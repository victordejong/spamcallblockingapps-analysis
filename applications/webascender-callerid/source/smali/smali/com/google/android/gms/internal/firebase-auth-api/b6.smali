.class final Lcom/google/android/gms/internal/firebase-auth-api/b6;
.super Lcom/google/android/gms/internal/firebase-auth-api/o2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase-auth-api/o2<",
        "Lcom/google/android/gms/internal/firebase-auth-api/v2;",
        "Lcom/google/android/gms/internal/firebase-auth-api/u9;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/o2;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/u9;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/u9;->z()Lcom/google/android/gms/internal/firebase-auth-api/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/aa;->y()Lcom/google/android/gms/internal/firebase-auth-api/r9;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/u9;->A()Lcom/google/android/gms/internal/firebase-auth-api/mp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/mp;->v()[B

    move-result-object v1

    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "HMAC"

    invoke-direct {v2, v1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/u9;->z()Lcom/google/android/gms/internal/firebase-auth-api/aa;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/aa;->z()I

    move-result p1

    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/r9;->zza:Lcom/google/android/gms/internal/firebase-auth-api/r9;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/gd;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/fd;

    const-string v3, "HMACSHA512"

    invoke-direct {v1, v3, v2}, Lcom/google/android/gms/internal/firebase-auth-api/fd;-><init>(Ljava/lang/String;Ljava/security/Key;)V

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/gd;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/i6;I)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "unknown hash"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/gd;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/fd;

    const-string v3, "HMACSHA256"

    invoke-direct {v1, v3, v2}, Lcom/google/android/gms/internal/firebase-auth-api/fd;-><init>(Ljava/lang/String;Ljava/security/Key;)V

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/gd;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/i6;I)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/gd;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/fd;

    const-string v3, "HMACSHA1"

    invoke-direct {v1, v3, v2}, Lcom/google/android/gms/internal/firebase-auth-api/fd;-><init>(Ljava/lang/String;Ljava/security/Key;)V

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/gd;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/i6;I)V

    :goto_0
    return-object v0
.end method
