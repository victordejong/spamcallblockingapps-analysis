.class final Lcom/google/android/gms/internal/firebase-auth-api/p3;
.super Lcom/google/android/gms/internal/firebase-auth-api/o2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase-auth-api/o2<",
        "Lcom/google/android/gms/internal/firebase-auth-api/c2;",
        "Lcom/google/android/gms/internal/firebase-auth-api/u6;",
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
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/u6;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/rc;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/u3;

    invoke-direct {v1}, Lcom/google/android/gms/internal/firebase-auth-api/u3;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/u6;->z()Lcom/google/android/gms/internal/firebase-auth-api/b7;

    move-result-object v2

    const-class v3, Lcom/google/android/gms/internal/firebase-auth-api/ad;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/p2;->f(Lcom/google/android/gms/internal/firebase-auth-api/f0;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/firebase-auth-api/ad;

    new-instance v2, Lcom/google/android/gms/internal/firebase-auth-api/d6;

    invoke-direct {v2}, Lcom/google/android/gms/internal/firebase-auth-api/d6;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/u6;->A()Lcom/google/android/gms/internal/firebase-auth-api/u9;

    move-result-object v3

    const-class v4, Lcom/google/android/gms/internal/firebase-auth-api/v2;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/p2;->f(Lcom/google/android/gms/internal/firebase-auth-api/f0;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/v2;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/u6;->A()Lcom/google/android/gms/internal/firebase-auth-api/u9;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/u9;->z()Lcom/google/android/gms/internal/firebase-auth-api/aa;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/aa;->z()I

    move-result p1

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/rc;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/ad;Lcom/google/android/gms/internal/firebase-auth-api/v2;I)V

    return-object v0
.end method
