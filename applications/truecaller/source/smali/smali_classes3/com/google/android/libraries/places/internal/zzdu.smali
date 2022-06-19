.class public abstract Lcom/google/android/libraries/places/internal/zzdu;
.super Lcom/google/android/libraries/places/internal/zzed;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;

.field private final zzb:Lcom/google/android/libraries/places/internal/zzgi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/places/internal/zzgi<",
            "Lcom/google/android/libraries/places/api/model/Place$Field;",
            ">;"
        }
    .end annotation
.end field

.field private final zzc:Lcom/google/android/libraries/places/internal/zzec;

.field private final zzd:Ljava/lang/String;

.field private final zze:Ljava/lang/String;

.field private final zzf:Lcom/google/android/libraries/places/api/model/LocationBias;

.field private final zzg:Lcom/google/android/libraries/places/api/model/LocationRestriction;

.field private final zzh:Lcom/google/android/libraries/places/internal/zzgi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/places/internal/zzgi<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzi:Lcom/google/android/libraries/places/api/model/TypeFilter;

.field private final zzj:I

.field private final zzk:I


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;Lcom/google/android/libraries/places/internal/zzgi;Lcom/google/android/libraries/places/internal/zzec;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/libraries/places/api/model/LocationBias;Lcom/google/android/libraries/places/api/model/LocationRestriction;Lcom/google/android/libraries/places/internal/zzgi;Lcom/google/android/libraries/places/api/model/TypeFilter;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;",
            "Lcom/google/android/libraries/places/internal/zzgi<",
            "Lcom/google/android/libraries/places/api/model/Place$Field;",
            ">;",
            "Lcom/google/android/libraries/places/internal/zzec;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/libraries/places/api/model/LocationBias;",
            "Lcom/google/android/libraries/places/api/model/LocationRestriction;",
            "Lcom/google/android/libraries/places/internal/zzgi<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/libraries/places/api/model/TypeFilter;",
            "II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzed;-><init>()V

    const-string v0, "Null mode"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzdu;->zza:Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;

    const-string p1, "Null placeFields"

    .line 4
    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzdu;->zzb:Lcom/google/android/libraries/places/internal/zzgi;

    const-string p1, "Null origin"

    .line 6
    invoke-static {p3, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzdu;->zzc:Lcom/google/android/libraries/places/internal/zzec;

    .line 8
    iput-object p4, p0, Lcom/google/android/libraries/places/internal/zzdu;->zzd:Ljava/lang/String;

    .line 9
    iput-object p5, p0, Lcom/google/android/libraries/places/internal/zzdu;->zze:Ljava/lang/String;

    .line 10
    iput-object p6, p0, Lcom/google/android/libraries/places/internal/zzdu;->zzf:Lcom/google/android/libraries/places/api/model/LocationBias;

    .line 11
    iput-object p7, p0, Lcom/google/android/libraries/places/internal/zzdu;->zzg:Lcom/google/android/libraries/places/api/model/LocationRestriction;

    const-string p1, "Null countries"

    .line 12
    invoke-static {p8, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    iput-object p8, p0, Lcom/google/android/libraries/places/internal/zzdu;->zzh:Lcom/google/android/libraries/places/internal/zzgi;

    .line 14
    iput-object p9, p0, Lcom/google/android/libraries/places/internal/zzdu;->zzi:Lcom/google/android/libraries/places/api/model/TypeFilter;

    .line 15
    iput p10, p0, Lcom/google/android/libraries/places/internal/zzdu;->zzj:I

    .line 16
    iput p11, p0, Lcom/google/android/libraries/places/internal/zzdu;->zzk:I

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
    instance-of v1, p1, Lcom/google/android/libraries/places/internal/zzed;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 2
    check-cast p1, Lcom/google/android/libraries/places/internal/zzed;

    .line 3
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzdu;->zza:Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzed;->zza()Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzdu;->zzb:Lcom/google/android/libraries/places/internal/zzgi;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzed;->zzb()Lcom/google/android/libraries/places/internal/zzgi;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/libraries/places/internal/zzgi;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzdu;->zzc:Lcom/google/android/libraries/places/internal/zzec;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzed;->zzc()Lcom/google/android/libraries/places/internal/zzec;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzdu;->zzd:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzed;->zzd()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzed;->zzd()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_0
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzdu;->zze:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 7
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzed;->zze()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzed;->zze()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_1
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzdu;->zzf:Lcom/google/android/libraries/places/api/model/LocationBias;

    if-nez v1, :cond_3

    .line 8
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzed;->zzf()Lcom/google/android/libraries/places/api/model/LocationBias;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzed;->zzf()Lcom/google/android/libraries/places/api/model/LocationBias;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_2
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzdu;->zzg:Lcom/google/android/libraries/places/api/model/LocationRestriction;

    if-nez v1, :cond_4

    .line 9
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzed;->zzg()Lcom/google/android/libraries/places/api/model/LocationRestriction;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzed;->zzg()Lcom/google/android/libraries/places/api/model/LocationRestriction;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_3
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzdu;->zzh:Lcom/google/android/libraries/places/internal/zzgi;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzed;->zzh()Lcom/google/android/libraries/places/internal/zzgi;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/libraries/places/internal/zzgi;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzdu;->zzi:Lcom/google/android/libraries/places/api/model/TypeFilter;

    if-nez v1, :cond_5

    .line 11
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzed;->zzi()Lcom/google/android/libraries/places/api/model/TypeFilter;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_4

    :cond_5
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzed;->zzi()Lcom/google/android/libraries/places/api/model/TypeFilter;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_4
    iget v1, p0, Lcom/google/android/libraries/places/internal/zzdu;->zzj:I

    .line 12
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzed;->zzj()I

    move-result v3

    if-ne v1, v3, :cond_6

    iget v1, p0, Lcom/google/android/libraries/places/internal/zzdu;->zzk:I

    .line 13
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzed;->zzk()I

    move-result p1

    if-ne v1, p1, :cond_6

    return v0

    :cond_6
    return v2
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzdu;->zza:Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 2
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzdu;->zzb:Lcom/google/android/libraries/places/internal/zzgi;

    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/zzgi;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 3
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzdu;->zzc:Lcom/google/android/libraries/places/internal/zzec;

    invoke-virtual {v2}, Ljava/lang/Enum;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 4
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzdu;->zzd:Ljava/lang/String;

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

    .line 5
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzdu;->zze:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 6
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzdu;->zzf:Lcom/google/android/libraries/places/api/model/LocationBias;

    if-nez v2, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 7
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzdu;->zzg:Lcom/google/android/libraries/places/api/model/LocationRestriction;

    if-nez v2, :cond_3

    move v2, v3

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_3
    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 8
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzdu;->zzh:Lcom/google/android/libraries/places/internal/zzgi;

    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/zzgi;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 9
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzdu;->zzi:Lcom/google/android/libraries/places/api/model/TypeFilter;

    if-nez v2, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Enum;->hashCode()I

    move-result v3

    :goto_4
    xor-int/2addr v0, v3

    mul-int/2addr v0, v1

    .line 10
    iget v2, p0, Lcom/google/android/libraries/places/internal/zzdu;->zzj:I

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 11
    iget v1, p0, Lcom/google/android/libraries/places/internal/zzdu;->zzk:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzdu;->zza:Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzdu;->zzb:Lcom/google/android/libraries/places/internal/zzgi;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzdu;->zzc:Lcom/google/android/libraries/places/internal/zzec;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzdu;->zzd:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/libraries/places/internal/zzdu;->zze:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/libraries/places/internal/zzdu;->zzf:Lcom/google/android/libraries/places/api/model/LocationBias;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/libraries/places/internal/zzdu;->zzg:Lcom/google/android/libraries/places/api/model/LocationRestriction;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/libraries/places/internal/zzdu;->zzh:Lcom/google/android/libraries/places/internal/zzgi;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/libraries/places/internal/zzdu;->zzi:Lcom/google/android/libraries/places/api/model/TypeFilter;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iget v9, p0, Lcom/google/android/libraries/places/internal/zzdu;->zzj:I

    iget v10, p0, Lcom/google/android/libraries/places/internal/zzdu;->zzk:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit16 v11, v11, 0xbd

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v12, v11

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v11, v12

    invoke-static {v3, v11}, Le/d/c/a/a;->f2(Ljava/lang/String;I)I

    move-result v11

    invoke-static {v4, v11}, Le/d/c/a/a;->f2(Ljava/lang/String;I)I

    move-result v11

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v12, v11

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v11, v12

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v12, v11

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v11, v12

    const-string v12, "AutocompleteOptions{mode="

    const-string v13, ", placeFields="

    invoke-static {v11, v12, v0, v13, v1}, Le/d/c/a/a;->A(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", origin="

    const-string v11, ", initialQuery="

    invoke-static {v0, v1, v2, v11, v3}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", hint="

    const-string v2, ", locationBias="

    invoke-static {v0, v1, v4, v2, v5}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", locationRestriction="

    const-string v2, ", countries="

    invoke-static {v0, v1, v6, v2, v7}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", typeFilter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", primaryColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", primaryColorDark="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzdu;->zza:Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;

    return-object v0
.end method

.method public final zzb()Lcom/google/android/libraries/places/internal/zzgi;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/libraries/places/internal/zzgi<",
            "Lcom/google/android/libraries/places/api/model/Place$Field;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzdu;->zzb:Lcom/google/android/libraries/places/internal/zzgi;

    return-object v0
.end method

.method public final zzc()Lcom/google/android/libraries/places/internal/zzec;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzdu;->zzc:Lcom/google/android/libraries/places/internal/zzec;

    return-object v0
.end method

.method public final zzd()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzdu;->zzd:Ljava/lang/String;

    return-object v0
.end method

.method public final zze()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzdu;->zze:Ljava/lang/String;

    return-object v0
.end method

.method public final zzf()Lcom/google/android/libraries/places/api/model/LocationBias;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzdu;->zzf:Lcom/google/android/libraries/places/api/model/LocationBias;

    return-object v0
.end method

.method public final zzg()Lcom/google/android/libraries/places/api/model/LocationRestriction;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzdu;->zzg:Lcom/google/android/libraries/places/api/model/LocationRestriction;

    return-object v0
.end method

.method public final zzh()Lcom/google/android/libraries/places/internal/zzgi;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/libraries/places/internal/zzgi<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzdu;->zzh:Lcom/google/android/libraries/places/internal/zzgi;

    return-object v0
.end method

.method public final zzi()Lcom/google/android/libraries/places/api/model/TypeFilter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzdu;->zzi:Lcom/google/android/libraries/places/api/model/TypeFilter;

    return-object v0
.end method

.method public final zzj()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/libraries/places/internal/zzdu;->zzj:I

    return v0
.end method

.method public final zzk()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/libraries/places/internal/zzdu;->zzk:I

    return v0
.end method

.method public final zzl()Lcom/google/android/libraries/places/internal/zzed$zza;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/libraries/places/internal/zzdw;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/libraries/places/internal/zzdw;-><init>(Lcom/google/android/libraries/places/internal/zzed;Lcom/google/android/libraries/places/internal/zzdt;)V

    return-object v0
.end method
