.class public final Lcom/google/android/gms/internal/firebase-auth-api/y4;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/gms/common/d;

.field public static final b:Lcom/google/android/gms/common/d;

.field public static final c:Lcom/google/android/gms/common/d;

.field public static final d:[Lcom/google/android/gms/common/d;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/google/android/gms/common/d;

    const-string v1, "firebase_auth"

    const-wide/16 v2, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/d;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/y4;->a:Lcom/google/android/gms/common/d;

    new-instance v1, Lcom/google/android/gms/common/d;

    const-string v2, "firebase_auth_aidl_migration"

    const-wide/16 v3, 0x1

    .line 2
    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/common/d;-><init>(Ljava/lang/String;J)V

    sput-object v1, Lcom/google/android/gms/internal/firebase-auth-api/y4;->b:Lcom/google/android/gms/common/d;

    new-instance v2, Lcom/google/android/gms/common/d;

    const-string v5, "firebase_auth_multi_factor_auth"

    .line 3
    invoke-direct {v2, v5, v3, v4}, Lcom/google/android/gms/common/d;-><init>(Ljava/lang/String;J)V

    sput-object v2, Lcom/google/android/gms/internal/firebase-auth-api/y4;->c:Lcom/google/android/gms/common/d;

    const/4 v3, 0x3

    new-array v3, v3, [Lcom/google/android/gms/common/d;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    sput-object v3, Lcom/google/android/gms/internal/firebase-auth-api/y4;->d:[Lcom/google/android/gms/common/d;

    return-void
.end method
