.class public abstract Lcom/google/android/libraries/places/api/model/zzx;
.super Lcom/google/android/libraries/places/api/model/TimeOfWeek;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/libraries/places/api/model/DayOfWeek;

.field private final zzb:Lcom/google/android/libraries/places/api/model/LocalTime;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/places/api/model/DayOfWeek;Lcom/google/android/libraries/places/api/model/LocalTime;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/api/model/TimeOfWeek;-><init>()V

    const-string v0, "Null day"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/google/android/libraries/places/api/model/zzx;->zza:Lcom/google/android/libraries/places/api/model/DayOfWeek;

    const-string p1, "Null time"

    .line 4
    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    iput-object p2, p0, Lcom/google/android/libraries/places/api/model/zzx;->zzb:Lcom/google/android/libraries/places/api/model/LocalTime;

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
    instance-of v1, p1, Lcom/google/android/libraries/places/api/model/TimeOfWeek;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 2
    check-cast p1, Lcom/google/android/libraries/places/api/model/TimeOfWeek;

    .line 3
    iget-object v1, p0, Lcom/google/android/libraries/places/api/model/zzx;->zza:Lcom/google/android/libraries/places/api/model/DayOfWeek;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/TimeOfWeek;->getDay()Lcom/google/android/libraries/places/api/model/DayOfWeek;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/libraries/places/api/model/zzx;->zzb:Lcom/google/android/libraries/places/api/model/LocalTime;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/TimeOfWeek;->getTime()Lcom/google/android/libraries/places/api/model/LocalTime;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public getDay()Lcom/google/android/libraries/places/api/model/DayOfWeek;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzx;->zza:Lcom/google/android/libraries/places/api/model/DayOfWeek;

    return-object v0
.end method

.method public getTime()Lcom/google/android/libraries/places/api/model/LocalTime;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzx;->zzb:Lcom/google/android/libraries/places/api/model/LocalTime;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzx;->zza:Lcom/google/android/libraries/places/api/model/DayOfWeek;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 2
    iget-object v1, p0, Lcom/google/android/libraries/places/api/model/zzx;->zzb:Lcom/google/android/libraries/places/api/model/LocalTime;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzx;->zza:Lcom/google/android/libraries/places/api/model/DayOfWeek;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/places/api/model/zzx;->zzb:Lcom/google/android/libraries/places/api/model/LocalTime;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x17

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    const-string v2, "TimeOfWeek{day="

    const-string v4, ", time="

    invoke-static {v3, v2, v0, v4, v1}, Le/d/c/a/a;->A(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
