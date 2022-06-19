.class public final Lcom/google/android/libraries/places/api/model/zzc;
.super Lcom/google/android/libraries/places/api/model/AddressComponent$Builder;
.source "SourceFile"


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:Ljava/lang/String;

.field private zzc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/api/model/AddressComponent$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final getShortName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzc;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public final setShortName(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/AddressComponent$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/api/model/zzc;->zzb:Ljava/lang/String;

    return-object p0
.end method

.method public final zza(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/AddressComponent$Builder;
    .locals 1

    const-string v0, "Null name"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/google/android/libraries/places/api/model/zzc;->zza:Ljava/lang/String;

    return-object p0
.end method

.method public final zza(Ljava/util/List;)Lcom/google/android/libraries/places/api/model/AddressComponent$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/libraries/places/api/model/AddressComponent$Builder;"
        }
    .end annotation

    const-string v0, "Null types"

    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Lcom/google/android/libraries/places/api/model/zzc;->zzc:Ljava/util/List;

    return-object p0
.end method

.method public final zza()Lcom/google/android/libraries/places/api/model/AddressComponent;
    .locals 4

    .line 5
    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzc;->zza:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_0

    const-string v0, " name"

    .line 6
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzc;->zzc:Ljava/util/List;

    if-nez v0, :cond_1

    .line 8
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " types"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 9
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Missing required properties:"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11
    :cond_3
    new-instance v0, Lcom/google/android/libraries/places/api/model/zzz;

    iget-object v1, p0, Lcom/google/android/libraries/places/api/model/zzc;->zza:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/libraries/places/api/model/zzc;->zzb:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/libraries/places/api/model/zzc;->zzc:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/libraries/places/api/model/zzz;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method
