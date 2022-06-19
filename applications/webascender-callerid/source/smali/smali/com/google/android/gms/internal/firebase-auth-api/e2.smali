.class public final Lcom/google/android/gms/internal/firebase-auth-api/e2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/google/android/gms/internal/firebase-auth-api/q2;Lcom/google/android/gms/internal/firebase-auth-api/s2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/q2;->b()Lcom/google/android/gms/internal/firebase-auth-api/ta;

    move-result-object p0

    .line 1
    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/s2;->b(Lcom/google/android/gms/internal/firebase-auth-api/ta;)V

    return-void
.end method

.method public static b(Lcom/google/android/gms/internal/firebase-auth-api/v5;)Lcom/google/android/gms/internal/firebase-auth-api/q2;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/v5;->a()Lcom/google/android/gms/internal/firebase-auth-api/ta;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/q2;->a(Lcom/google/android/gms/internal/firebase-auth-api/ta;)Lcom/google/android/gms/internal/firebase-auth-api/q2;

    move-result-object p0

    return-object p0
.end method
