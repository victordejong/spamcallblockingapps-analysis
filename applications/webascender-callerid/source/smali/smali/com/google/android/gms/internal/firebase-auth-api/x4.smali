.class public final Lcom/google/android/gms/internal/firebase-auth-api/x4;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/w4;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/w4;-><init>()V

    const-string v0, "type.googleapis.com/google.crypto.tink.AesSivKey"

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/x4;->a:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/qb;->y()Lcom/google/android/gms/internal/firebase-auth-api/qb;

    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/qb;->y()Lcom/google/android/gms/internal/firebase-auth-api/qb;

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/w4;

    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/w4;-><init>()V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/i3;->a(Lcom/google/android/gms/internal/firebase-auth-api/p2;Z)V

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/a5;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/a5;-><init>()V

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/i3;->c(Lcom/google/android/gms/internal/firebase-auth-api/b3;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 6
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    .line 7
    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
