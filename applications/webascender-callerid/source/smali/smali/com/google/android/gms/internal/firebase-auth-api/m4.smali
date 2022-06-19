.class final Lcom/google/android/gms/internal/firebase-auth-api/m4;
.super Lcom/google/android/gms/internal/firebase-auth-api/o2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase-auth-api/o2<",
        "Lcom/google/android/gms/internal/firebase-auth-api/c2;",
        "Lcom/google/android/gms/internal/firebase-auth-api/ib;",
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

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/ib;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/ib;->z()Lcom/google/android/gms/internal/firebase-auth-api/lb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/lb;->y()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/u2;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/t2;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/t2;->h(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/c2;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/l4;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/ib;->z()Lcom/google/android/gms/internal/firebase-auth-api/lb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/lb;->z()Lcom/google/android/gms/internal/firebase-auth-api/la;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/l4;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/la;Lcom/google/android/gms/internal/firebase-auth-api/c2;)V

    return-object v1
.end method
