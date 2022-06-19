.class final Lcom/google/android/gms/internal/firebase-auth-api/s3;
.super Lcom/google/android/gms/internal/firebase-auth-api/o2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase-auth-api/o2<",
        "Lcom/google/android/gms/internal/firebase-auth-api/ad;",
        "Lcom/google/android/gms/internal/firebase-auth-api/b7;",
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
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/b7;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/yb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/b7;->A()Lcom/google/android/gms/internal/firebase-auth-api/mp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/mp;->v()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/b7;->z()Lcom/google/android/gms/internal/firebase-auth-api/h7;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/h7;->y()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/yb;-><init>([BI)V

    return-object v0
.end method
