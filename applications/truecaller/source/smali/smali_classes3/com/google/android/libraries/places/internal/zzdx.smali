.class public final Lcom/google/android/libraries/places/internal/zzdx;
.super Lcom/google/android/libraries/places/internal/zzef;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/libraries/places/internal/zzeh;

.field private final zzb:Ljava/lang/String;

.field private final zzc:Lcom/google/android/libraries/places/internal/zzgi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/places/internal/zzgi<",
            "Lcom/google/android/libraries/places/api/model/AutocompletePrediction;",
            ">;"
        }
    .end annotation
.end field

.field private final zzd:Lcom/google/android/libraries/places/api/model/Place;

.field private final zze:Lcom/google/android/libraries/places/api/model/AutocompletePrediction;

.field private final zzf:Lcom/google/android/gms/common/api/Status;


# direct methods
.method private constructor <init>(Lcom/google/android/libraries/places/internal/zzeh;Ljava/lang/String;Lcom/google/android/libraries/places/internal/zzgi;Lcom/google/android/libraries/places/api/model/Place;Lcom/google/android/libraries/places/api/model/AutocompletePrediction;Lcom/google/android/gms/common/api/Status;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/places/internal/zzeh;",
            "Ljava/lang/String;",
            "Lcom/google/android/libraries/places/internal/zzgi<",
            "Lcom/google/android/libraries/places/api/model/AutocompletePrediction;",
            ">;",
            "Lcom/google/android/libraries/places/api/model/Place;",
            "Lcom/google/android/libraries/places/api/model/AutocompletePrediction;",
            "Lcom/google/android/gms/common/api/Status;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzef;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzdx;->zza:Lcom/google/android/libraries/places/internal/zzeh;

    .line 3
    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzdx;->zzb:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzdx;->zzc:Lcom/google/android/libraries/places/internal/zzgi;

    .line 5
    iput-object p4, p0, Lcom/google/android/libraries/places/internal/zzdx;->zzd:Lcom/google/android/libraries/places/api/model/Place;

    .line 6
    iput-object p5, p0, Lcom/google/android/libraries/places/internal/zzdx;->zze:Lcom/google/android/libraries/places/api/model/AutocompletePrediction;

    .line 7
    iput-object p6, p0, Lcom/google/android/libraries/places/internal/zzdx;->zzf:Lcom/google/android/gms/common/api/Status;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/libraries/places/internal/zzeh;Ljava/lang/String;Lcom/google/android/libraries/places/internal/zzgi;Lcom/google/android/libraries/places/api/model/Place;Lcom/google/android/libraries/places/api/model/AutocompletePrediction;Lcom/google/android/gms/common/api/Status;Lcom/google/android/libraries/places/internal/zzea;)V
    .locals 0

    .line 8
    invoke-direct/range {p0 .. p6}, Lcom/google/android/libraries/places/internal/zzdx;-><init>(Lcom/google/android/libraries/places/internal/zzeh;Ljava/lang/String;Lcom/google/android/libraries/places/internal/zzgi;Lcom/google/android/libraries/places/api/model/Place;Lcom/google/android/libraries/places/api/model/AutocompletePrediction;Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/android/libraries/places/internal/zzef;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 2
    check-cast p1, Lcom/google/android/libraries/places/internal/zzef;

    .line 3
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzdx;->zza:Lcom/google/android/libraries/places/internal/zzeh;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzef;->zza()Lcom/google/android/libraries/places/internal/zzeh;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzdx;->zzb:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzef;->zzb()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzef;->zzb()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_0
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzdx;->zzc:Lcom/google/android/libraries/places/internal/zzgi;

    if-nez v1, :cond_2

    .line 5
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzef;->zzc()Lcom/google/android/libraries/places/internal/zzgi;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzef;->zzc()Lcom/google/android/libraries/places/internal/zzgi;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/libraries/places/internal/zzgi;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_1
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzdx;->zzd:Lcom/google/android/libraries/places/api/model/Place;

    if-nez v1, :cond_3

    .line 6
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzef;->zzd()Lcom/google/android/libraries/places/api/model/Place;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzef;->zzd()Lcom/google/android/libraries/places/api/model/Place;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_2
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzdx;->zze:Lcom/google/android/libraries/places/api/model/AutocompletePrediction;

    if-nez v1, :cond_4

    .line 7
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzef;->zze()Lcom/google/android/libraries/places/api/model/AutocompletePrediction;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzef;->zze()Lcom/google/android/libraries/places/api/model/AutocompletePrediction;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_3
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzdx;->zzf:Lcom/google/android/gms/common/api/Status;

    if-nez v1, :cond_5

    .line 8
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzef;->zzf()Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_4

    :cond_5
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzef;->zzf()Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/common/api/Status;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    :goto_4
    return v0

    :cond_6
    return v2
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzdx;->zza:Lcom/google/android/libraries/places/internal/zzeh;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 2
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzdx;->zzb:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 3
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzdx;->zzc:Lcom/google/android/libraries/places/internal/zzgi;

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/zzgi;->hashCode()I

    move-result v2

    :goto_1
    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 4
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzdx;->zzd:Lcom/google/android/libraries/places/api/model/Place;

    if-nez v2, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 5
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzdx;->zze:Lcom/google/android/libraries/places/api/model/AutocompletePrediction;

    if-nez v2, :cond_3

    move v2, v3

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_3
    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 6
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzdx;->zzf:Lcom/google/android/gms/common/api/Status;

    if-nez v1, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->hashCode()I

    move-result v3

    :goto_4
    xor-int/2addr v0, v3

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzdx;->zza:Lcom/google/android/libraries/places/internal/zzeh;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzdx;->zzb:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzdx;->zzc:Lcom/google/android/libraries/places/internal/zzgi;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzdx;->zzd:Lcom/google/android/libraries/places/api/model/Place;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/libraries/places/internal/zzdx;->zze:Lcom/google/android/libraries/places/api/model/AutocompletePrediction;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/libraries/places/internal/zzdx;->zzf:Lcom/google/android/gms/common/api/Status;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x4c

    invoke-static {v1, v6}, Le/d/c/a/a;->f2(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v7

    const-string v7, "AutocompleteState{type="

    const-string v8, ", query="

    invoke-static {v6, v7, v0, v8, v1}, Le/d/c/a/a;->A(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", predictions="

    const-string v6, ", place="

    invoke-static {v0, v1, v2, v6, v3}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", prediction="

    const-string v2, ", status="

    invoke-static {v0, v1, v4, v2, v5}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()Lcom/google/android/libraries/places/internal/zzeh;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzdx;->zza:Lcom/google/android/libraries/places/internal/zzeh;

    return-object v0
.end method

.method public final zzb()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzdx;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public final zzc()Lcom/google/android/libraries/places/internal/zzgi;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/libraries/places/internal/zzgi<",
            "Lcom/google/android/libraries/places/api/model/AutocompletePrediction;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzdx;->zzc:Lcom/google/android/libraries/places/internal/zzgi;

    return-object v0
.end method

.method public final zzd()Lcom/google/android/libraries/places/api/model/Place;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzdx;->zzd:Lcom/google/android/libraries/places/api/model/Place;

    return-object v0
.end method

.method public final zze()Lcom/google/android/libraries/places/api/model/AutocompletePrediction;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzdx;->zze:Lcom/google/android/libraries/places/api/model/AutocompletePrediction;

    return-object v0
.end method

.method public final zzf()Lcom/google/android/gms/common/api/Status;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzdx;->zzf:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
