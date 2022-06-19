.class public final Lcom/google/android/gms/internal/mlkit_translate/zzhl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private zza:J

.field private zzb:J

.field private final zzc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;",
            ">;"
        }
    .end annotation
.end field

.field private final zzd:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;",
            ">;"
        }
    .end annotation
.end field

.field private final zze:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;",
            ">;"
        }
    .end annotation
.end field

.field private zzf:I

.field private zzg:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhl;->zzc:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhl;->zzd:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhl;->zze:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhl;->zza:J

    return-void
.end method

.method public final zza(I)V
    .locals 0

    .line 5
    iput p1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhl;->zzf:I

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;)V
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhl;->zzg:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhl;->zzd:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhl;->zzc:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzb()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhl;->zzb:J

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhl;->zzd:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzc()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhl;->zzg:Z

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zza;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhl;->zze:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzd()Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zzb;
    .locals 7

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhl;->zza:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_translate/zzi;->zzb(Z)V

    .line 2
    iget-wide v5, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhl;->zzb:J

    cmp-long v0, v5, v2

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v4

    :goto_1
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_translate/zzi;->zzb(Z)V

    .line 3
    iget-wide v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhl;->zzb:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhl;->zza:J

    sub-long/2addr v0, v2

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg;->zza()Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zzb;

    move-result-object v2

    .line 5
    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zzb;->zza(J)Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zzb;

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhl;->zzc:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zzb;->zzc(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zzb;

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhl;->zzd:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 9
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zzb;->zzb(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zzb;

    .line 10
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhl;->zze:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 11
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zzb;->zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zzb;

    .line 12
    :cond_4
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzhl;->zzf:I

    if-eqz v0, :cond_5

    .line 13
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zzb;->zza(I)Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzbg$zzb;

    :cond_5
    return-object v2
.end method
