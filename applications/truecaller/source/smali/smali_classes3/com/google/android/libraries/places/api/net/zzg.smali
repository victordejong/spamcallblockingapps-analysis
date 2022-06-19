.class public final Lcom/google/android/libraries/places/api/net/zzg;
.super Lcom/google/android/libraries/places/api/net/FetchPlaceResponse;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/libraries/places/api/model/Place;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/places/api/model/Place;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/api/net/FetchPlaceResponse;-><init>()V

    const-string v0, "Null place"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/google/android/libraries/places/api/net/zzg;->zza:Lcom/google/android/libraries/places/api/model/Place;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, Lcom/google/android/libraries/places/api/net/FetchPlaceResponse;

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Lcom/google/android/libraries/places/api/net/FetchPlaceResponse;

    .line 3
    iget-object v0, p0, Lcom/google/android/libraries/places/api/net/zzg;->zza:Lcom/google/android/libraries/places/api/model/Place;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FetchPlaceResponse;->getPlace()Lcom/google/android/libraries/places/api/model/Place;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final getPlace()Lcom/google/android/libraries/places/api/model/Place;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/net/zzg;->zza:Lcom/google/android/libraries/places/api/model/Place;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/net/zzg;->zza:Lcom/google/android/libraries/places/api/model/Place;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/net/zzg;->zza:Lcom/google/android/libraries/places/api/model/Place;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1a

    const-string v2, "FetchPlaceResponse{place="

    const-string v3, "}"

    invoke-static {v1, v2, v0, v3}, Le/d/c/a/a;->R1(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
