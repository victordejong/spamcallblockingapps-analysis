.class public final Lcom/google/android/libraries/places/internal/zzbm;
.super Lcom/google/android/libraries/places/internal/zzbt;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/libraries/places/internal/zzbt<",
        "Ljava/lang/Object;",
        "Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;Ljava/util/Locale;Ljava/lang/String;ZLcom/google/android/libraries/places/internal/zzdr;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/google/android/libraries/places/internal/zzbt;-><init>(Lcom/google/android/libraries/places/internal/zzdc;Ljava/util/Locale;Ljava/lang/String;ZLcom/google/android/libraries/places/internal/zzdr;)V

    return-void
.end method


# virtual methods
.method public final zze()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzaj;->zza()Lcom/google/android/libraries/places/internal/zzdc;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3
    invoke-virtual {v0}, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;->getQuery()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    const-string v4, "^\\s+"

    const-string v5, ""

    .line 4
    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "\\s+$"

    const-string v5, " "

    .line 5
    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    const-string v4, "input"

    .line 6
    invoke-static {v1, v4, v2, v3}, Lcom/google/android/libraries/places/internal/zzbt;->zza(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7
    invoke-virtual {v0}, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;->getTypeFilter()Lcom/google/android/libraries/places/api/model/TypeFilter;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzcp;->zza(Lcom/google/android/libraries/places/api/model/TypeFilter;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "types"

    .line 8
    invoke-static {v1, v4, v2, v3}, Lcom/google/android/libraries/places/internal/zzbt;->zza(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 9
    invoke-virtual {v0}, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;->getSessionToken()Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;

    move-result-object v2

    const-string v4, "sessiontoken"

    .line 10
    invoke-static {v1, v4, v2, v3}, Lcom/google/android/libraries/places/internal/zzbt;->zza(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 11
    invoke-virtual {v0}, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;->getOrigin()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzcn;->zza(Lcom/google/android/gms/maps/model/LatLng;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "origin"

    .line 12
    invoke-static {v1, v4, v2, v3}, Lcom/google/android/libraries/places/internal/zzbt;->zza(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 13
    invoke-virtual {v0}, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;->getLocationBias()Lcom/google/android/libraries/places/api/model/LocationBias;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzcn;->zza(Lcom/google/android/libraries/places/api/model/LocationBias;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "locationbias"

    .line 14
    invoke-static {v1, v4, v2, v3}, Lcom/google/android/libraries/places/internal/zzbt;->zza(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 15
    invoke-virtual {v0}, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;->getLocationRestriction()Lcom/google/android/libraries/places/api/model/LocationRestriction;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzcn;->zza(Lcom/google/android/libraries/places/api/model/LocationRestriction;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "locationrestriction"

    .line 16
    invoke-static {v1, v4, v2, v3}, Lcom/google/android/libraries/places/internal/zzbt;->zza(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 17
    invoke-virtual {v0}, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;->getCountries()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzcn;->zza(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "components"

    .line 18
    invoke-static {v1, v2, v0, v3}, Lcom/google/android/libraries/places/internal/zzbt;->zza(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public final zzf()Ljava/lang/String;
    .locals 1

    const-string v0, "autocomplete/json"

    return-object v0
.end method
