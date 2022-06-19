.class public final Lcom/google/android/gms/internal/firebase-auth-api/g5;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/f5;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/f5;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/d5;

    .line 2
    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/d5;-><init>()V

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/qb;->y()Lcom/google/android/gms/internal/firebase-auth-api/qb;

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/qb;->y()Lcom/google/android/gms/internal/firebase-auth-api/qb;

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/qb;->y()Lcom/google/android/gms/internal/firebase-auth-api/qb;

    .line 4
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/g5;->a()V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 5
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    .line 6
    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/k3;->a()V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/d5;

    .line 2
    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/d5;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/f5;

    invoke-direct {v1}, Lcom/google/android/gms/internal/firebase-auth-api/f5;-><init>()V

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/i3;->b(Lcom/google/android/gms/internal/firebase-auth-api/d3;Lcom/google/android/gms/internal/firebase-auth-api/p2;Z)V

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/i5;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/i5;-><init>()V

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/i3;->c(Lcom/google/android/gms/internal/firebase-auth-api/b3;)V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/k5;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/k5;-><init>()V

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/i3;->c(Lcom/google/android/gms/internal/firebase-auth-api/b3;)V

    return-void
.end method
