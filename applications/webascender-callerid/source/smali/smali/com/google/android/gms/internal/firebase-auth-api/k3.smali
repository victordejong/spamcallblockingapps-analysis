.class public final Lcom/google/android/gms/internal/firebase-auth-api/k3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Lcom/google/android/gms/internal/firebase-auth-api/qb;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/r3;

    .line 1
    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/r3;-><init>()V

    const-string v0, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey"

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/k3;->a:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/b4;

    .line 2
    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/b4;-><init>()V

    const-string v0, "type.googleapis.com/google.crypto.tink.AesGcmKey"

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/k3;->b:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/e4;

    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/e4;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/y3;

    .line 4
    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/y3;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/k4;

    .line 5
    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/k4;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/o4;

    .line 6
    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/o4;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/h4;

    .line 7
    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/h4;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/r4;

    .line 8
    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/r4;-><init>()V

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/qb;->y()Lcom/google/android/gms/internal/firebase-auth-api/qb;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/k3;->c:Lcom/google/android/gms/internal/firebase-auth-api/qb;

    .line 10
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/k3;->a()V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 11
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    .line 12
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

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/e6;->a()V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/r3;

    .line 2
    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/r3;-><init>()V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/i3;->a(Lcom/google/android/gms/internal/firebase-auth-api/p2;Z)V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/y3;

    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/y3;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/i3;->a(Lcom/google/android/gms/internal/firebase-auth-api/p2;Z)V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/b4;

    .line 4
    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/b4;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/i3;->a(Lcom/google/android/gms/internal/firebase-auth-api/p2;Z)V

    .line 5
    invoke-static {v1}, Lcom/google/android/gms/internal/firebase-auth-api/e4;->j(Z)V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/h4;

    .line 6
    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/h4;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/i3;->a(Lcom/google/android/gms/internal/firebase-auth-api/p2;Z)V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/k4;

    .line 7
    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/k4;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/i3;->a(Lcom/google/android/gms/internal/firebase-auth-api/p2;Z)V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/o4;

    .line 8
    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/o4;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/i3;->a(Lcom/google/android/gms/internal/firebase-auth-api/p2;Z)V

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/r4;

    .line 9
    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/r4;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/i3;->a(Lcom/google/android/gms/internal/firebase-auth-api/p2;Z)V

    .line 10
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/o3;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/o3;-><init>()V

    .line 11
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/i3;->c(Lcom/google/android/gms/internal/firebase-auth-api/b3;)V

    return-void
.end method
