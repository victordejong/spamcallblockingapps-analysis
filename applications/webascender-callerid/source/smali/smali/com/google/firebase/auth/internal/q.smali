.class public final Lcom/google/firebase/auth/internal/q;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/google/android/gms/common/l/a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/common/l/a;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "GetTokenResultFactory"

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/l/a;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/google/firebase/auth/internal/q;->a:Lcom/google/android/gms/common/l/a;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/google/firebase/auth/i;
    .locals 4

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/google/firebase/auth/internal/r;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/firebase-auth-api/zzlq; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    sget-object v1, Lcom/google/firebase/auth/internal/q;->a:Lcom/google/android/gms/common/l/a;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Error parsing token claims"

    .line 3
    invoke-virtual {v1, v3, v0, v2}, Lcom/google/android/gms/common/l/a;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    new-instance v0, Ljava/util/HashMap;

    .line 4
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 5
    :goto_0
    new-instance v1, Lcom/google/firebase/auth/i;

    invoke-direct {v1, p0, v0}, Lcom/google/firebase/auth/i;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    return-object v1
.end method
