.class public final Lcom/google/android/libraries/places/internal/zzk;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:J

.field private static final zzb:J

.field private static final zzc:J


# instance fields
.field private final zzd:Lcom/google/android/libraries/places/internal/zzb;

.field private final zze:Lcom/google/android/gms/location/FusedLocationProviderClient;

.field private final zzf:Lcom/google/android/libraries/places/internal/zzcr;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    sput-wide v1, Lcom/google/android/libraries/places/internal/zzk;->zza:J

    const-wide/16 v1, 0x18

    .line 2
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v1

    sput-wide v1, Lcom/google/android/libraries/places/internal/zzk;->zzb:J

    const-wide/16 v1, 0x3b

    .line 3
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/libraries/places/internal/zzk;->zzc:J

    return-void
.end method

.method public constructor <init>(Lcom/google/android/libraries/places/internal/zzb;Lcom/google/android/gms/location/FusedLocationProviderClient;Lcom/google/android/libraries/places/internal/zzcr;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzk;->zzd:Lcom/google/android/libraries/places/internal/zzb;

    .line 3
    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzk;->zze:Lcom/google/android/gms/location/FusedLocationProviderClient;

    .line 4
    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzk;->zzf:Lcom/google/android/libraries/places/internal/zzcr;

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    new-instance v0, Lcom/google/android/gms/common/api/ApiException;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0x10

    const-string v3, "Location request was cancelled. Please try again."

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->a(Ljava/lang/Exception;)Z

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->s()Z

    move-result v0

    if-nez v0, :cond_1

    .line 11
    new-instance v0, Lcom/google/android/gms/common/api/ApiException;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0x8

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->n()Ljava/lang/Exception;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 13
    invoke-virtual {p0, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->a(Ljava/lang/Exception;)Z

    :cond_1
    :goto_0
    return-object p1
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/tasks/CancellationToken;)Lcom/google/android/gms/tasks/Task;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/CancellationToken;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzk;->zzf:Lcom/google/android/libraries/places/internal/zzcr;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzk;->zze:Lcom/google/android/gms/location/FusedLocationProviderClient;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/location/FusedLocationProviderClient;->b()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    sget-wide v3, Lcom/google/android/libraries/places/internal/zzk;->zza:J

    const-string v5, "Location timeout."

    move-object v2, p1

    .line 3
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/zzcr;->zza(Lcom/google/android/gms/tasks/Task;Lcom/google/android/gms/tasks/CancellationToken;JLjava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/google/android/libraries/places/internal/zzj;

    invoke-direct {v1, p0, p1}, Lcom/google/android/libraries/places/internal/zzj;-><init>(Lcom/google/android/libraries/places/internal/zzk;Lcom/google/android/gms/tasks/CancellationToken;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->l(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/tasks/CancellationToken;Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 14
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->s()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzk;->zzd:Lcom/google/android/libraries/places/internal/zzb;

    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->o()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Location;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzb;->zzb()J

    move-result-wide v4

    invoke-virtual {v2}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 16
    sget-wide v6, Lcom/google/android/libraries/places/internal/zzk;->zzb:J

    cmp-long v0, v4, v6

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    if-eqz v3, :cond_2

    return-object p2

    :cond_2
    if-eqz p1, :cond_3

    .line 17
    new-instance p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {p2, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>(Lcom/google/android/gms/tasks/CancellationToken;)V

    goto :goto_1

    .line 18
    :cond_3
    new-instance p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {p2}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 19
    :goto_1
    new-instance p1, Lcom/google/android/gms/location/LocationRequest;

    invoke-direct {p1}, Lcom/google/android/gms/location/LocationRequest;-><init>()V

    const/16 v0, 0x64

    .line 20
    invoke-virtual {p1, v0}, Lcom/google/android/gms/location/LocationRequest;->q2(I)Lcom/google/android/gms/location/LocationRequest;

    sget-wide v2, Lcom/google/android/libraries/places/internal/zzk;->zza:J

    .line 21
    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/location/LocationRequest;->o2(J)Lcom/google/android/gms/location/LocationRequest;

    sget-wide v4, Lcom/google/android/libraries/places/internal/zzk;->zzc:J

    .line 22
    invoke-static {v4, v5}, Lcom/google/android/gms/location/LocationRequest;->r2(J)V

    iput-wide v4, p1, Lcom/google/android/gms/location/LocationRequest;->b:J

    iget-boolean v0, p1, Lcom/google/android/gms/location/LocationRequest;->d:Z

    if-nez v0, :cond_4

    long-to-double v4, v4

    const-wide/high16 v6, 0x4018000000000000L    # 6.0

    div-double/2addr v4, v6

    double-to-long v4, v4

    iput-wide v4, p1, Lcom/google/android/gms/location/LocationRequest;->c:J

    :cond_4
    const-wide/16 v4, 0xa

    .line 23
    invoke-static {v4, v5}, Lcom/google/android/gms/location/LocationRequest;->r2(J)V

    iput-boolean v1, p1, Lcom/google/android/gms/location/LocationRequest;->d:Z

    iput-wide v4, p1, Lcom/google/android/gms/location/LocationRequest;->c:J

    .line 24
    invoke-virtual {p1, v1}, Lcom/google/android/gms/location/LocationRequest;->p2(I)Lcom/google/android/gms/location/LocationRequest;

    .line 25
    new-instance v0, Lcom/google/android/libraries/places/internal/zzo;

    invoke-direct {v0, p0, p2}, Lcom/google/android/libraries/places/internal/zzo;-><init>(Lcom/google/android/libraries/places/internal/zzk;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 26
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    .line 27
    iget-object v4, p0, Lcom/google/android/libraries/places/internal/zzk;->zze:Lcom/google/android/gms/location/FusedLocationProviderClient;

    .line 28
    invoke-virtual {v4, p1, v0, v1}, Lcom/google/android/gms/location/FusedLocationProviderClient;->d(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationCallback;Landroid/os/Looper;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v1, Lcom/google/android/libraries/places/internal/zzm;

    invoke-direct {v1, p0, p2}, Lcom/google/android/libraries/places/internal/zzm;-><init>(Lcom/google/android/libraries/places/internal/zzk;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 29
    invoke-virtual {p1, v1}, Lcom/google/android/gms/tasks/Task;->l(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    .line 30
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzk;->zzf:Lcom/google/android/libraries/places/internal/zzcr;

    const-string v1, "Location timeout."

    invoke-virtual {p1, p2, v2, v3, v1}, Lcom/google/android/libraries/places/internal/zzcr;->zza(Lcom/google/android/gms/tasks/TaskCompletionSource;JLjava/lang/String;)Z

    .line 31
    iget-object p1, p2, Lcom/google/android/gms/tasks/TaskCompletionSource;->a:Le/m/a/f/q/b0;

    .line 32
    new-instance v1, Lcom/google/android/libraries/places/internal/zzl;

    invoke-direct {v1, p0, v0, p2}, Lcom/google/android/libraries/places/internal/zzl;-><init>(Lcom/google/android/libraries/places/internal/zzk;Lcom/google/android/gms/location/LocationCallback;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 33
    invoke-virtual {p1, v1}, Le/m/a/f/q/b0;->c(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 34
    iget-object p1, p2, Lcom/google/android/gms/tasks/TaskCompletionSource;->a:Le/m/a/f/q/b0;

    return-object p1
.end method

.method public final synthetic zza(Lcom/google/android/gms/location/LocationCallback;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    .line 5
    iget-object p3, p0, Lcom/google/android/libraries/places/internal/zzk;->zze:Lcom/google/android/gms/location/FusedLocationProviderClient;

    invoke-virtual {p3, p1}, Lcom/google/android/gms/location/FusedLocationProviderClient;->c(Lcom/google/android/gms/location/LocationCallback;)Lcom/google/android/gms/tasks/Task;

    .line 6
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzk;->zzf:Lcom/google/android/libraries/places/internal/zzcr;

    invoke-virtual {p1, p2}, Lcom/google/android/libraries/places/internal/zzcr;->zza(Lcom/google/android/gms/tasks/TaskCompletionSource;)Z

    return-void
.end method
