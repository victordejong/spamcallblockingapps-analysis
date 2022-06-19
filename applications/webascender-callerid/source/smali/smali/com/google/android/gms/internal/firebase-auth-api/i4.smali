.class final Lcom/google/android/gms/internal/firebase-auth-api/i4;
.super Lcom/google/android/gms/internal/firebase-auth-api/o2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase-auth-api/o2<",
        "Lcom/google/android/gms/internal/firebase-auth-api/c2;",
        "Lcom/google/android/gms/internal/firebase-auth-api/bb;",
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
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/bb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/bb;->z()Lcom/google/android/gms/internal/firebase-auth-api/fb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/fb;->y()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/u2;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/t2;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/t2;->h(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/c2;

    move-result-object p1

    return-object p1
.end method
