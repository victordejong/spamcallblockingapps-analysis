.class public abstract Lcom/google/android/libraries/places/api/model/zzl;
.super Lcom/google/android/libraries/places/api/model/Period;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/libraries/places/api/model/TimeOfWeek;

.field private final zzb:Lcom/google/android/libraries/places/api/model/TimeOfWeek;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/places/api/model/TimeOfWeek;Lcom/google/android/libraries/places/api/model/TimeOfWeek;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/api/model/Period;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/libraries/places/api/model/zzl;->zza:Lcom/google/android/libraries/places/api/model/TimeOfWeek;

    .line 3
    iput-object p2, p0, Lcom/google/android/libraries/places/api/model/zzl;->zzb:Lcom/google/android/libraries/places/api/model/TimeOfWeek;

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
    instance-of v1, p1, Lcom/google/android/libraries/places/api/model/Period;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 2
    check-cast p1, Lcom/google/android/libraries/places/api/model/Period;

    .line 3
    iget-object v1, p0, Lcom/google/android/libraries/places/api/model/zzl;->zza:Lcom/google/android/libraries/places/api/model/TimeOfWeek;

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/Period;->getOpen()Lcom/google/android/libraries/places/api/model/TimeOfWeek;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/Period;->getOpen()Lcom/google/android/libraries/places/api/model/TimeOfWeek;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_0
    iget-object v1, p0, Lcom/google/android/libraries/places/api/model/zzl;->zzb:Lcom/google/android/libraries/places/api/model/TimeOfWeek;

    if-nez v1, :cond_2

    .line 4
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/Period;->getClose()Lcom/google/android/libraries/places/api/model/TimeOfWeek;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/Period;->getClose()Lcom/google/android/libraries/places/api/model/TimeOfWeek;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :goto_1
    return v0

    :cond_3
    return v2
.end method

.method public getClose()Lcom/google/android/libraries/places/api/model/TimeOfWeek;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzl;->zzb:Lcom/google/android/libraries/places/api/model/TimeOfWeek;

    return-object v0
.end method

.method public getOpen()Lcom/google/android/libraries/places/api/model/TimeOfWeek;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzl;->zza:Lcom/google/android/libraries/places/api/model/TimeOfWeek;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzl;->zza:Lcom/google/android/libraries/places/api/model/TimeOfWeek;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const v2, 0xf4243

    xor-int/2addr v0, v2

    mul-int/2addr v0, v2

    .line 2
    iget-object v2, p0, Lcom/google/android/libraries/places/api/model/zzl;->zzb:Lcom/google/android/libraries/places/api/model/TimeOfWeek;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzl;->zza:Lcom/google/android/libraries/places/api/model/TimeOfWeek;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/places/api/model/zzl;->zzb:Lcom/google/android/libraries/places/api/model/TimeOfWeek;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x15

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    const-string v2, "Period{open="

    const-string v4, ", close="

    invoke-static {v3, v2, v0, v4, v1}, Le/d/c/a/a;->A(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
