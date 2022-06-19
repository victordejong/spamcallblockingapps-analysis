.class public final Lcom/google/android/gms/internal/ads/zzba;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final zza:Ljava/lang/String;

.field public final zzb:Lcom/google/android/gms/internal/ads/zzafv;

.field public final zzc:Lcom/google/android/gms/internal/ads/zzafv;

.field public final zzd:I

.field public final zze:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzafv;Lcom/google/android/gms/internal/ads/zzafv;II)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p4, :cond_0

    if-nez p5, :cond_1

    move p5, v0

    :cond_0
    move v0, v1

    :cond_1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakt;->zza(Z)V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzakt;->zzf(Ljava/lang/String;)Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzba;->zza:Ljava/lang/String;

    .line 3
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzba;->zzb:Lcom/google/android/gms/internal/ads/zzafv;

    .line 5
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzba;->zzc:Lcom/google/android/gms/internal/ads/zzafv;

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzba;->zzd:I

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzba;->zze:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 1
    const-class v2, Lcom/google/android/gms/internal/ads/zzba;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzba;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzba;->zzd:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzba;->zzd:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzba;->zze:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zzba;->zze:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzba;->zza:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzba;->zza:Ljava/lang/String;

    .line 2
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzba;->zzb:Lcom/google/android/gms/internal/ads/zzafv;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzba;->zzb:Lcom/google/android/gms/internal/ads/zzafv;

    .line 3
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzafv;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzba;->zzc:Lcom/google/android/gms/internal/ads/zzafv;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzba;->zzc:Lcom/google/android/gms/internal/ads/zzafv;

    .line 4
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzafv;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzba;->zzd:I

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzba;->zze:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzba;->zza:Ljava/lang/String;

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Le/d/c/a/a;->q2(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzba;->zzb:Lcom/google/android/gms/internal/ads/zzafv;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzafv;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzba;->zzc:Lcom/google/android/gms/internal/ads/zzafv;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzafv;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method
