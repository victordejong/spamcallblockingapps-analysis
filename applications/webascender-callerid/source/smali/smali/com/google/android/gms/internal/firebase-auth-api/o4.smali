.class public final Lcom/google/android/gms/internal/firebase-auth-api/o4;
.super Lcom/google/android/gms/internal/firebase-auth-api/p2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase-auth-api/p2<",
        "Lcom/google/android/gms/internal/firebase-auth-api/ib;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/gms/internal/firebase-auth-api/o2;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/m4;

    const-class v2, Lcom/google/android/gms/internal/firebase-auth-api/c2;

    .line 1
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/m4;-><init>(Ljava/lang/Class;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/ib;

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/p2;-><init>(Ljava/lang/Class;[Lcom/google/android/gms/internal/firebase-auth-api/o2;)V

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1

    const-string v0, "type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey"

    return-object v0
.end method

.method public final c()Lcom/google/android/gms/internal/firebase-auth-api/fa;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/fa;->zze:Lcom/google/android/gms/internal/firebase-auth-api/fa;

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

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/ib;->A(Lcom/google/android/gms/internal/firebase-auth-api/mp;Lcom/google/android/gms/internal/firebase-auth-api/aq;)Lcom/google/android/gms/internal/firebase-auth-api/ib;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic e(Lcom/google/android/gms/internal/firebase-auth-api/f0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/ib;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/ib;->y()I

    move-result p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/kd;->b(II)V

    return-void
.end method

.method public final i()Lcom/google/android/gms/internal/firebase-auth-api/n2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/firebase-auth-api/n2<",
            "Lcom/google/android/gms/internal/firebase-auth-api/lb;",
            "Lcom/google/android/gms/internal/firebase-auth-api/ib;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/n4;

    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/lb;

    .line 1
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/n4;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/o4;Ljava/lang/Class;)V

    return-object v0
.end method
