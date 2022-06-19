.class final Lcom/google/android/gms/internal/firebase-auth-api/e5;
.super Lcom/google/android/gms/internal/firebase-auth-api/o2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase-auth-api/o2<",
        "Lcom/google/android/gms/internal/firebase-auth-api/i2;",
        "Lcom/google/android/gms/internal/firebase-auth-api/h9;",
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
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/h9;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/h9;->z()Lcom/google/android/gms/internal/firebase-auth-api/a9;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/a9;->y()Lcom/google/android/gms/internal/firebase-auth-api/k9;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/k9;->y()Lcom/google/android/gms/internal/firebase-auth-api/m9;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/firebase-auth-api/m5;->c(Lcom/google/android/gms/internal/firebase-auth-api/m9;)I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/h9;->A()Lcom/google/android/gms/internal/firebase-auth-api/mp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/firebase-auth-api/mp;->v()[B

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/h9;->B()Lcom/google/android/gms/internal/firebase-auth-api/mp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/mp;->v()[B

    move-result-object p1

    invoke-static {v2, v3, p1}, Lcom/google/android/gms/internal/firebase-auth-api/qc;->f(I[B[B)Ljava/security/interfaces/ECPublicKey;

    move-result-object v5

    new-instance v9, Lcom/google/android/gms/internal/firebase-auth-api/n5;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/a9;->z()Lcom/google/android/gms/internal/firebase-auth-api/u8;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/u8;->y()Lcom/google/android/gms/internal/firebase-auth-api/la;

    move-result-object p1

    invoke-direct {v9, p1}, Lcom/google/android/gms/internal/firebase-auth-api/n5;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/la;)V

    new-instance p1, Lcom/google/android/gms/internal/firebase-auth-api/oc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/k9;->A()Lcom/google/android/gms/internal/firebase-auth-api/mp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/mp;->v()[B

    move-result-object v6

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/k9;->z()Lcom/google/android/gms/internal/firebase-auth-api/r9;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/firebase-auth-api/m5;->b(Lcom/google/android/gms/internal/firebase-auth-api/r9;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/a9;->A()Lcom/google/android/gms/internal/firebase-auth-api/r8;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/m5;->d(Lcom/google/android/gms/internal/firebase-auth-api/r8;)I

    move-result v8

    move-object v4, p1

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/internal/firebase-auth-api/oc;-><init>(Ljava/security/interfaces/ECPublicKey;[BLjava/lang/String;ILcom/google/android/gms/internal/firebase-auth-api/mc;)V

    return-object p1
.end method
