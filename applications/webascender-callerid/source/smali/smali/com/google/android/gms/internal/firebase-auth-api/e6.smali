.class public final Lcom/google/android/gms/internal/firebase-auth-api/e6;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/gms/internal/firebase-auth-api/qb;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/d6;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/d6;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/qb;->y()Lcom/google/android/gms/internal/firebase-auth-api/qb;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/e6;->a:Lcom/google/android/gms/internal/firebase-auth-api/qb;

    .line 3
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/e6;->a()V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 4
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    .line 5
    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static a()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/d6;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/d6;-><init>()V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/i3;->a(Lcom/google/android/gms/internal/firebase-auth-api/p2;Z)V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/a6;

    .line 2
    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/a6;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/i3;->a(Lcom/google/android/gms/internal/firebase-auth-api/p2;Z)V

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/h6;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/h6;-><init>()V

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/i3;->c(Lcom/google/android/gms/internal/firebase-auth-api/b3;)V

    return-void
.end method
