.class final Lcom/google/android/gms/internal/firebase-auth-api/x5;
.super Lcom/google/android/gms/internal/firebase-auth-api/o2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase-auth-api/o2<",
        "Lcom/google/android/gms/internal/firebase-auth-api/v2;",
        "Lcom/google/android/gms/internal/firebase-auth-api/l6;",
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
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/l6;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/gd;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/cd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/l6;->z()Lcom/google/android/gms/internal/firebase-auth-api/mp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/mp;->v()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/cd;-><init>([B)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/l6;->A()Lcom/google/android/gms/internal/firebase-auth-api/r6;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/r6;->y()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/gd;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/i6;I)V

    return-object v0
.end method
