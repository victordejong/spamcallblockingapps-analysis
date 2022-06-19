.class public abstract Lcom/google/android/libraries/places/api/model/zzg;
.super Lcom/google/android/libraries/places/api/model/AutocompletePrediction$zza;
.source "SourceFile"


# instance fields
.field private final zza:I

.field private final zzb:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/api/model/AutocompletePrediction$zza;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/libraries/places/api/model/zzg;->zza:I

    .line 3
    iput p2, p0, Lcom/google/android/libraries/places/api/model/zzg;->zzb:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/android/libraries/places/api/model/AutocompletePrediction$zza;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 2
    check-cast p1, Lcom/google/android/libraries/places/api/model/AutocompletePrediction$zza;

    .line 3
    iget v1, p0, Lcom/google/android/libraries/places/api/model/zzg;->zza:I

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/AutocompletePrediction$zza;->zza()I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Lcom/google/android/libraries/places/api/model/zzg;->zzb:I

    .line 4
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/AutocompletePrediction$zza;->zzb()I

    move-result p1

    if-ne v1, p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/libraries/places/api/model/zzg;->zza:I

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 2
    iget v1, p0, Lcom/google/android/libraries/places/api/model/zzg;->zzb:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/android/libraries/places/api/model/zzg;->zza:I

    iget v1, p0, Lcom/google/android/libraries/places/api/model/zzg;->zzb:I

    const/16 v2, 0x36

    const-string v3, "SubstringMatch{offset="

    const-string v4, ", length="

    invoke-static {v2, v3, v0, v4, v1}, Le/d/c/a/a;->z(ILjava/lang/String;ILjava/lang/String;I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/libraries/places/api/model/zzg;->zza:I

    return v0
.end method

.method public final zzb()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/libraries/places/api/model/zzg;->zzb:I

    return v0
.end method
