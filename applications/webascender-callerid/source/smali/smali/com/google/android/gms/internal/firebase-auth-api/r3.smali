.class public final Lcom/google/android/gms/internal/firebase-auth-api/r3;
.super Lcom/google/android/gms/internal/firebase-auth-api/p2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase-auth-api/p2<",
        "Lcom/google/android/gms/internal/firebase-auth-api/u6;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/gms/internal/firebase-auth-api/o2;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/p3;

    const-class v2, Lcom/google/android/gms/internal/firebase-auth-api/c2;

    .line 1
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/p3;-><init>(Ljava/lang/Class;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/u6;

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/p2;-><init>(Ljava/lang/Class;[Lcom/google/android/gms/internal/firebase-auth-api/o2;)V

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1

    const-string v0, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey"

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

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/u6;->B(Lcom/google/android/gms/internal/firebase-auth-api/mp;Lcom/google/android/gms/internal/firebase-auth-api/aq;)Lcom/google/android/gms/internal/firebase-auth-api/u6;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic e(Lcom/google/android/gms/internal/firebase-auth-api/f0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/u6;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/u6;->y()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/kd;->b(II)V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/u3;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/u3;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/u6;->z()Lcom/google/android/gms/internal/firebase-auth-api/b7;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/u3;->k(Lcom/google/android/gms/internal/firebase-auth-api/b7;)V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/d6;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/d6;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/u6;->A()Lcom/google/android/gms/internal/firebase-auth-api/u9;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/d6;->k(Lcom/google/android/gms/internal/firebase-auth-api/u9;)V

    return-void
.end method

.method public final i()Lcom/google/android/gms/internal/firebase-auth-api/n2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/firebase-auth-api/n2<",
            "Lcom/google/android/gms/internal/firebase-auth-api/x6;",
            "Lcom/google/android/gms/internal/firebase-auth-api/u6;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/q3;

    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/x6;

    .line 1
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/q3;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/r3;Ljava/lang/Class;)V

    return-object v0
.end method
