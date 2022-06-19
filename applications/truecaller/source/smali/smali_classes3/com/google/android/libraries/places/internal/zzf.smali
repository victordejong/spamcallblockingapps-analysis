.class public final Lcom/google/android/libraries/places/internal/zzf;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static zza:Lcom/google/android/libraries/places/internal/zzf;


# instance fields
.field private final zzb:Lcom/google/android/libraries/places/internal/zze;


# direct methods
.method private constructor <init>(Lcom/google/android/libraries/places/internal/zze;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzf;->zzb:Lcom/google/android/libraries/places/internal/zze;

    return-void
.end method

.method public static zza()Lcom/google/android/libraries/places/internal/zzf;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/libraries/places/internal/zzf;->zza:Lcom/google/android/libraries/places/internal/zzf;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/android/libraries/places/internal/zzf;->zzb:Lcom/google/android/libraries/places/internal/zze;

    instance-of v0, v0, Lcom/google/android/libraries/places/internal/zzc;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lcom/google/android/libraries/places/internal/zzf;

    new-instance v1, Lcom/google/android/libraries/places/internal/zzc;

    invoke-direct {v1}, Lcom/google/android/libraries/places/internal/zzc;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/libraries/places/internal/zzf;-><init>(Lcom/google/android/libraries/places/internal/zze;)V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzf;->zza:Lcom/google/android/libraries/places/internal/zzf;

    .line 3
    :cond_1
    sget-object v0, Lcom/google/android/libraries/places/internal/zzf;->zza:Lcom/google/android/libraries/places/internal/zzf;

    return-object v0
.end method


# virtual methods
.method public final zza(Lcom/google/android/libraries/places/internal/zzg;Lcom/google/android/libraries/places/internal/zzh;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzf;->zzb:Lcom/google/android/libraries/places/internal/zze;

    invoke-interface {v0, p1, p2}, Lcom/google/android/libraries/places/internal/zze;->zza(Lcom/google/android/libraries/places/internal/zzg;Lcom/google/android/libraries/places/internal/zzh;)V

    return-void
.end method

.method public final zza(Lcom/google/android/libraries/places/internal/zzh;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzf;->zzb:Lcom/google/android/libraries/places/internal/zze;

    invoke-interface {v0, p1}, Lcom/google/android/libraries/places/internal/zze;->zza(Lcom/google/android/libraries/places/internal/zzh;)V

    return-void
.end method

.method public final zzb()Lcom/google/android/libraries/places/internal/zzg;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzf;->zzb:Lcom/google/android/libraries/places/internal/zze;

    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zze;->zza()Lcom/google/android/libraries/places/internal/zzg;

    move-result-object v0

    return-object v0
.end method

.method public final zzb(Lcom/google/android/libraries/places/internal/zzh;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzf;->zzb:Lcom/google/android/libraries/places/internal/zze;

    invoke-interface {v0, p1}, Lcom/google/android/libraries/places/internal/zze;->zzb(Lcom/google/android/libraries/places/internal/zzh;)V

    return-void
.end method
