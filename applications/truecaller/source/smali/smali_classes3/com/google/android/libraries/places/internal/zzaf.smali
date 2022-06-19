.class public final synthetic Lcom/google/android/libraries/places/internal/zzaf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/d/e/q$a;


# instance fields
.field private final zza:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzaf;->zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public final onErrorResponse(Le/d/e/v;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzaf;->zza:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 2
    :try_start_0
    iget-object v1, p1, Le/d/e/v;->a:Le/d/e/l;

    if-eqz v1, :cond_2

    .line 3
    iget v1, v1, Le/d/e/l;->a:I

    const/16 v2, 0x190

    if-eq v1, v2, :cond_1

    const/16 v2, 0x193

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Lcom/google/android/gms/common/api/ApiException;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0x2333

    const-string v3, "The provided API key is invalid."

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {p1, v1}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_1

    .line 5
    :cond_1
    new-instance p1, Lcom/google/android/gms/common/api/ApiException;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0x2334

    const-string v3, "The provided parameters are invalid (did you include a max width or height?)."

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {p1, v1}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_1

    .line 6
    :cond_2
    :goto_0
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzv;->zza(Le/d/e/v;)Lcom/google/android/gms/common/api/ApiException;

    move-result-object p1

    .line 7
    :goto_1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->a(Ljava/lang/Exception;)Z
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 8
    :goto_2
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzdk;->zza(Ljava/lang/Throwable;)V

    .line 9
    throw p1
.end method
