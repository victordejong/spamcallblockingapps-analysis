.class public final Lcom/google/android/libraries/places/internal/zzaq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/libraries/places/api/net/PlacesClient;


# instance fields
.field private final zza:Lcom/google/android/libraries/places/internal/zzy;

.field private final zzb:Lcom/google/android/libraries/places/internal/zzk;

.field private final zzc:Lcom/google/android/libraries/places/internal/zzs;

.field private final zzd:Lcom/google/android/libraries/places/internal/zzcy;

.field private final zze:Lcom/google/android/libraries/places/internal/zzb;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/places/internal/zzy;Lcom/google/android/libraries/places/internal/zzk;Lcom/google/android/libraries/places/internal/zzs;Lcom/google/android/libraries/places/internal/zzcy;Lcom/google/android/libraries/places/internal/zzb;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzaq;->zza:Lcom/google/android/libraries/places/internal/zzy;

    .line 3
    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzaq;->zzb:Lcom/google/android/libraries/places/internal/zzk;

    .line 4
    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzaq;->zzc:Lcom/google/android/libraries/places/internal/zzs;

    .line 5
    iput-object p4, p0, Lcom/google/android/libraries/places/internal/zzaq;->zzd:Lcom/google/android/libraries/places/internal/zzcy;

    .line 6
    iput-object p5, p0, Lcom/google/android/libraries/places/internal/zzaq;->zze:Lcom/google/android/libraries/places/internal/zzb;

    return-void
.end method

.method public static final synthetic zza(Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;
    .locals 3

    .line 24
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->n()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 25
    instance-of p0, v0, Lcom/google/android/gms/common/api/ApiException;

    if-eqz p0, :cond_0

    .line 26
    check-cast v0, Lcom/google/android/gms/common/api/ApiException;

    goto :goto_0

    .line 27
    :cond_0
    new-instance p0, Lcom/google/android/gms/common/api/ApiException;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0xd

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    move-object v0, p0

    .line 28
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->e(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method private static zza(Lcom/google/android/libraries/places/internal/zzh;Lcom/google/android/libraries/places/internal/zzg;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "Duration"

    .line 1
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzh;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzh;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/libraries/places/internal/zzh;->zza(Lcom/google/android/libraries/places/internal/zzh;Lcom/google/android/libraries/places/internal/zzh;)Lcom/google/android/libraries/places/internal/zzh;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzf;->zza()Lcom/google/android/libraries/places/internal/zzf;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/android/libraries/places/internal/zzf;->zza(Lcom/google/android/libraries/places/internal/zzg;Lcom/google/android/libraries/places/internal/zzh;)V

    .line 3
    :cond_0
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzf;->zza()Lcom/google/android/libraries/places/internal/zzf;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/libraries/places/internal/zzf;->zza(Lcom/google/android/libraries/places/internal/zzh;)V

    const-string p1, "Battery"

    .line 4
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzh;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzh;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/android/libraries/places/internal/zzh;->zza(Lcom/google/android/libraries/places/internal/zzh;Lcom/google/android/libraries/places/internal/zzh;)Lcom/google/android/libraries/places/internal/zzh;

    move-result-object p0

    .line 5
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzf;->zza()Lcom/google/android/libraries/places/internal/zzf;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/libraries/places/internal/zzf;->zzb(Lcom/google/android/libraries/places/internal/zzh;)V

    return-void
.end method


# virtual methods
.method public final fetchPhoto(Lcom/google/android/libraries/places/api/net/FetchPhotoRequest;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/places/api/net/FetchPhotoRequest;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/libraries/places/api/net/FetchPhotoResponse;",
            ">;"
        }
    .end annotation

    :try_start_0
    const-string v0, "Request must not be null."

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/zzft;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzf;->zza()Lcom/google/android/libraries/places/internal/zzf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzf;->zzb()Lcom/google/android/libraries/places/internal/zzg;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzaq;->zza:Lcom/google/android/libraries/places/internal/zzy;

    .line 4
    invoke-interface {v1, p1}, Lcom/google/android/libraries/places/internal/zzy;->zza(Lcom/google/android/libraries/places/api/net/FetchPhotoRequest;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    new-instance v2, Lcom/google/android/libraries/places/internal/zzar;

    invoke-direct {v2, p0, p1, v0}, Lcom/google/android/libraries/places/internal/zzar;-><init>(Lcom/google/android/libraries/places/internal/zzaq;Lcom/google/android/libraries/places/api/net/FetchPhotoRequest;Lcom/google/android/libraries/places/internal/zzg;)V

    .line 5
    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->j(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzau;->zza:Lcom/google/android/gms/tasks/Continuation;

    .line 6
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->l(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 7
    :goto_0
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzdk;->zza(Ljava/lang/Throwable;)V

    .line 8
    throw p1
.end method

.method public final fetchPlace(Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/libraries/places/api/net/FetchPlaceResponse;",
            ">;"
        }
    .end annotation

    :try_start_0
    const-string v0, "Request must not be null."

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/zzft;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzf;->zza()Lcom/google/android/libraries/places/internal/zzf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzf;->zzb()Lcom/google/android/libraries/places/internal/zzg;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzaq;->zza:Lcom/google/android/libraries/places/internal/zzy;

    .line 4
    invoke-interface {v1, p1}, Lcom/google/android/libraries/places/internal/zzy;->zza(Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    new-instance v2, Lcom/google/android/libraries/places/internal/zzat;

    invoke-direct {v2, p0, p1, v0}, Lcom/google/android/libraries/places/internal/zzat;-><init>(Lcom/google/android/libraries/places/internal/zzaq;Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;Lcom/google/android/libraries/places/internal/zzg;)V

    .line 5
    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->j(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzaw;->zza:Lcom/google/android/gms/tasks/Continuation;

    .line 6
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->l(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 7
    :goto_0
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzdk;->zza(Ljava/lang/Throwable;)V

    .line 8
    throw p1
.end method

.method public final findAutocompletePredictions(Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsResponse;",
            ">;"
        }
    .end annotation

    :try_start_0
    const-string v0, "Request must not be null."

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/zzft;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzf;->zza()Lcom/google/android/libraries/places/internal/zzf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzf;->zzb()Lcom/google/android/libraries/places/internal/zzg;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzaq;->zza:Lcom/google/android/libraries/places/internal/zzy;

    .line 4
    invoke-interface {v1, p1}, Lcom/google/android/libraries/places/internal/zzy;->zza(Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    new-instance v2, Lcom/google/android/libraries/places/internal/zzap;

    invoke-direct {v2, p0, p1, v0}, Lcom/google/android/libraries/places/internal/zzap;-><init>(Lcom/google/android/libraries/places/internal/zzaq;Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;Lcom/google/android/libraries/places/internal/zzg;)V

    .line 5
    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->j(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzas;->zza:Lcom/google/android/gms/tasks/Continuation;

    .line 6
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->l(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 7
    :goto_0
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzdk;->zza(Ljava/lang/Throwable;)V

    .line 8
    throw p1
.end method

.method public final findCurrentPlace(Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;)Lcom/google/android/gms/tasks/Task;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/libraries/places/api/net/FindCurrentPlaceResponse;",
            ">;"
        }
    .end annotation

    :try_start_0
    const-string v0, "Request must not be null."

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/zzft;->zza(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzaq;->zze:Lcom/google/android/libraries/places/internal/zzb;

    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzb;->zza()J

    move-result-wide v4

    .line 3
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzf;->zza()Lcom/google/android/libraries/places/internal/zzf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzf;->zzb()Lcom/google/android/libraries/places/internal/zzg;

    move-result-object v6

    .line 4
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzaq;->zzb:Lcom/google/android/libraries/places/internal/zzk;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;->getCancellationToken()Lcom/google/android/gms/tasks/CancellationToken;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzk;->zza(Lcom/google/android/gms/tasks/CancellationToken;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/google/android/libraries/places/internal/zzav;

    invoke-direct {v1, p0, p1}, Lcom/google/android/libraries/places/internal/zzav;-><init>(Lcom/google/android/libraries/places/internal/zzaq;Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;)V

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->t(Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v7, Lcom/google/android/libraries/places/internal/zzay;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/libraries/places/internal/zzay;-><init>(Lcom/google/android/libraries/places/internal/zzaq;Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;JLcom/google/android/libraries/places/internal/zzg;)V

    .line 7
    invoke-virtual {v0, v7}, Lcom/google/android/gms/tasks/Task;->j(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzax;->zza:Lcom/google/android/gms/tasks/Continuation;

    .line 8
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->l(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 9
    :goto_0
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzdk;->zza(Ljava/lang/Throwable;)V

    .line 10
    throw p1
.end method

.method public final synthetic zza(Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;Landroid/location/Location;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzaq;->zza:Lcom/google/android/libraries/places/internal/zzy;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzaq;->zzc:Lcom/google/android/libraries/places/internal/zzs;

    .line 12
    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzs;->zza()Lcom/google/android/libraries/places/internal/zzgi;

    move-result-object v1

    .line 13
    invoke-interface {v0, p1, p2, v1}, Lcom/google/android/libraries/places/internal/zzy;->zza(Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;Landroid/location/Location;Lcom/google/android/libraries/places/internal/zzgi;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic zza(Lcom/google/android/libraries/places/api/net/FetchPhotoRequest;Lcom/google/android/libraries/places/internal/zzg;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/libraries/places/api/net/FetchPhotoResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzaq;->zzd:Lcom/google/android/libraries/places/internal/zzcy;

    invoke-interface {v0, p1}, Lcom/google/android/libraries/places/internal/zzcy;->zza(Lcom/google/android/libraries/places/api/net/FetchPhotoRequest;)V

    const-string p1, "FetchPhoto"

    .line 18
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzh;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzh;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/google/android/libraries/places/internal/zzaq;->zza(Lcom/google/android/libraries/places/internal/zzh;Lcom/google/android/libraries/places/internal/zzg;)V

    .line 19
    invoke-virtual {p3}, Lcom/google/android/gms/tasks/Task;->o()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/api/net/FetchPhotoResponse;

    return-object p1
.end method

.method public final synthetic zza(Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;Lcom/google/android/libraries/places/internal/zzg;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/libraries/places/api/net/FetchPlaceResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzaq;->zzd:Lcom/google/android/libraries/places/internal/zzcy;

    invoke-interface {v0, p1}, Lcom/google/android/libraries/places/internal/zzcy;->zza(Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;)V

    const-string p1, "FetchPlace"

    .line 15
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzh;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzh;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/google/android/libraries/places/internal/zzaq;->zza(Lcom/google/android/libraries/places/internal/zzh;Lcom/google/android/libraries/places/internal/zzg;)V

    .line 16
    invoke-virtual {p3}, Lcom/google/android/gms/tasks/Task;->o()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/api/net/FetchPlaceResponse;

    return-object p1
.end method

.method public final synthetic zza(Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;Lcom/google/android/libraries/places/internal/zzg;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzaq;->zzd:Lcom/google/android/libraries/places/internal/zzcy;

    invoke-interface {v0, p1}, Lcom/google/android/libraries/places/internal/zzcy;->zza(Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;)V

    const-string p1, "FindAutocompletePredictions"

    .line 21
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzh;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzh;

    move-result-object p1

    .line 22
    invoke-static {p1, p2}, Lcom/google/android/libraries/places/internal/zzaq;->zza(Lcom/google/android/libraries/places/internal/zzh;Lcom/google/android/libraries/places/internal/zzg;)V

    .line 23
    invoke-virtual {p3}, Lcom/google/android/gms/tasks/Task;->o()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsResponse;

    return-object p1
.end method

.method public final synthetic zza(Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;JLcom/google/android/libraries/places/internal/zzg;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/libraries/places/api/net/FindCurrentPlaceResponse;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzaq;->zze:Lcom/google/android/libraries/places/internal/zzb;

    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzb;->zza()J

    move-result-wide v6

    .line 7
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzaq;->zzd:Lcom/google/android/libraries/places/internal/zzcy;

    move-object v2, p1

    move-object v3, p5

    move-wide v4, p2

    invoke-interface/range {v1 .. v7}, Lcom/google/android/libraries/places/internal/zzcy;->zza(Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;Lcom/google/android/gms/tasks/Task;JJ)V

    const-string p1, "FindCurrentPlace"

    .line 8
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzh;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzh;

    move-result-object p1

    .line 9
    invoke-static {p1, p4}, Lcom/google/android/libraries/places/internal/zzaq;->zza(Lcom/google/android/libraries/places/internal/zzh;Lcom/google/android/libraries/places/internal/zzg;)V

    .line 10
    invoke-virtual {p5}, Lcom/google/android/gms/tasks/Task;->o()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/api/net/FindCurrentPlaceResponse;

    return-object p1
.end method
