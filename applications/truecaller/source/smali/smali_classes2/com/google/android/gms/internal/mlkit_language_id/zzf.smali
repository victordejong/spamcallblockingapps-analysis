.class public final Lcom/google/android/gms/internal/mlkit_language_id/zzf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Lcom/google/android/gms/internal/mlkit_language_id/zze;

.field private zzc:Lcom/google/android/gms/internal/mlkit_language_id/zze;

.field private zzd:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/mlkit_language_id/zze;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zze;-><init>(Lcom/google/android/gms/internal/mlkit_language_id/zzc;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzf;->zzb:Lcom/google/android/gms/internal/mlkit_language_id/zze;

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzf;->zzc:Lcom/google/android/gms/internal/mlkit_language_id/zze;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzf;->zzd:Z

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_language_id/zzg;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzf;->zza:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/mlkit_language_id/zzc;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_language_id/zzf;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private final zzb(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_language_id/zzf;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_language_id/zze;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_language_id/zze;-><init>(Lcom/google/android/gms/internal/mlkit_language_id/zzc;)V

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzf;->zzc:Lcom/google/android/gms/internal/mlkit_language_id/zze;

    iput-object v0, v1, Lcom/google/android/gms/internal/mlkit_language_id/zze;->zzc:Lcom/google/android/gms/internal/mlkit_language_id/zze;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzf;->zzc:Lcom/google/android/gms/internal/mlkit_language_id/zze;

    .line 3
    iput-object p2, v0, Lcom/google/android/gms/internal/mlkit_language_id/zze;->zzb:Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_language_id/zzg;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, v0, Lcom/google/android/gms/internal/mlkit_language_id/zze;->zza:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzf;->zza:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzf;->zzb:Lcom/google/android/gms/internal/mlkit_language_id/zze;

    iget-object v1, v1, Lcom/google/android/gms/internal/mlkit_language_id/zze;->zzc:Lcom/google/android/gms/internal/mlkit_language_id/zze;

    const-string v2, ""

    :goto_0
    if-eqz v1, :cond_2

    .line 3
    iget-object v3, v1, Lcom/google/android/gms/internal/mlkit_language_id/zze;->zzb:Ljava/lang/Object;

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-object v2, v1, Lcom/google/android/gms/internal/mlkit_language_id/zze;->zza:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    if-eqz v3, :cond_1

    .line 7
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    .line 8
    invoke-static {v4}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {v0, v3, v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    :goto_1
    iget-object v1, v1, Lcom/google/android/gms/internal/mlkit_language_id/zze;->zzc:Lcom/google/android/gms/internal/mlkit_language_id/zze;

    const-string v2, ", "

    goto :goto_0

    :cond_2
    const/16 v1, 0x7d

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Ljava/lang/String;F)Lcom/google/android/gms/internal/mlkit_language_id/zzf;
    .locals 0

    .line 2
    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_language_id/zzf;->zzb(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_language_id/zzf;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_language_id/zzf;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_language_id/zzf;->zzb(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_language_id/zzf;

    move-result-object p1

    return-object p1
.end method
