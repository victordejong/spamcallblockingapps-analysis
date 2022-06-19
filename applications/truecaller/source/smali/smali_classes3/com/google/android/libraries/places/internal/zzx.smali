.class public final Lcom/google/android/libraries/places/internal/zzx;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Le/d/e/p;

.field private final zzb:Lcom/google/android/libraries/places/internal/zzal;


# direct methods
.method public constructor <init>(Le/d/e/p;Lcom/google/android/libraries/places/internal/zzal;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzx;->zza:Le/d/e/p;

    .line 3
    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzx;->zzb:Lcom/google/android/libraries/places/internal/zzal;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/libraries/places/internal/zzaj;Ljava/lang/Class;)Lcom/google/android/gms/tasks/Task;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<HttpJsonResponseT:",
            "Lcom/google/android/libraries/places/internal/zzam<",
            "Ljava/lang/Object;",
            "+",
            "Ljava/lang/Object;",
            ">;>(",
            "Lcom/google/android/libraries/places/internal/zzaj<",
            "Ljava/lang/Object;",
            "+",
            "Lcom/google/android/libraries/places/internal/zzdc;",
            ">;",
            "Ljava/lang/Class<",
            "THttpJsonResponseT;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "THttpJsonResponseT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzaj;->zzd()Ljava/lang/String;

    move-result-object v3

    .line 2
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzaj;->zzc()Ljava/util/Map;

    move-result-object v7

    .line 3
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzaj;->zzb()Lcom/google/android/gms/tasks/CancellationToken;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>(Lcom/google/android/gms/tasks/CancellationToken;)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    :goto_0
    move-object v8, v0

    .line 6
    new-instance v9, Lcom/google/android/libraries/places/internal/zzab;

    const/4 v2, 0x0

    const/4 v4, 0x0

    new-instance v5, Lcom/google/android/libraries/places/internal/zzaa;

    invoke-direct {v5, p0, p2, v8}, Lcom/google/android/libraries/places/internal/zzaa;-><init>(Lcom/google/android/libraries/places/internal/zzx;Ljava/lang/Class;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    new-instance v6, Lcom/google/android/libraries/places/internal/zzz;

    invoke-direct {v6, v8}, Lcom/google/android/libraries/places/internal/zzz;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    move-object v0, v9

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/libraries/places/internal/zzab;-><init>(Lcom/google/android/libraries/places/internal/zzx;ILjava/lang/String;Lorg/json/JSONObject;Le/d/e/q$b;Le/d/e/q$a;Ljava/util/Map;)V

    if-eqz p1, :cond_1

    .line 7
    invoke-static {v9}, Lcom/google/android/libraries/places/internal/zzac;->zza(Le/d/e/x/h;)Lcom/google/android/gms/tasks/OnTokenCanceledListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/CancellationToken;->b(Lcom/google/android/gms/tasks/OnTokenCanceledListener;)Lcom/google/android/gms/tasks/CancellationToken;

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzx;->zza:Le/d/e/p;

    invoke-virtual {p1, v9}, Le/d/e/p;->a(Le/d/e/o;)Le/d/e/o;

    .line 9
    iget-object p1, v8, Lcom/google/android/gms/tasks/TaskCompletionSource;->a:Le/m/a/f/q/b0;

    return-object p1
.end method

.method public final synthetic zza(Ljava/lang/Class;Lcom/google/android/gms/tasks/TaskCompletionSource;Lorg/json/JSONObject;)V
    .locals 2

    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzx;->zzb:Lcom/google/android/libraries/places/internal/zzal;

    .line 11
    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {v0, p3, p1}, Lcom/google/android/libraries/places/internal/zzal;->zza(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/internal/zzam;

    .line 12
    invoke-virtual {p2, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->b(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/google/android/libraries/places/internal/zzao; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    .line 13
    :try_start_1
    new-instance p3, Lcom/google/android/gms/common/api/ApiException;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x8

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {p3, v0}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 14
    invoke-virtual {p2, p3}, Lcom/google/android/gms/tasks/TaskCompletionSource;->a(Ljava/lang/Exception;)Z
    :try_end_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    .line 15
    :goto_0
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzdk;->zza(Ljava/lang/Throwable;)V

    .line 16
    throw p1
.end method
