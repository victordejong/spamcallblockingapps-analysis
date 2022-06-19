.class public final Lcom/google/android/libraries/places/internal/zzbi;
.super Lcom/google/android/libraries/places/internal/zzbt;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/libraries/places/internal/zzbt<",
        "Ljava/lang/Object;",
        "Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;Ljava/util/Locale;Ljava/lang/String;ZLcom/google/android/libraries/places/internal/zzdr;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/google/android/libraries/places/internal/zzbt;-><init>(Lcom/google/android/libraries/places/internal/zzdc;Ljava/util/Locale;Ljava/lang/String;ZLcom/google/android/libraries/places/internal/zzdr;)V

    return-void
.end method


# virtual methods
.method public final zze()Ljava/util/Map;
    .locals 5
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

    check-cast v0, Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3
    invoke-virtual {v0}, Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;->getPlaceId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "placeid"

    const/4 v4, 0x0

    invoke-static {v1, v3, v2, v4}, Lcom/google/android/libraries/places/internal/zzbt;->zza(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    invoke-virtual {v0}, Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;->getSessionToken()Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;

    move-result-object v2

    const-string v3, "sessiontoken"

    .line 5
    invoke-static {v1, v3, v2, v4}, Lcom/google/android/libraries/places/internal/zzbt;->zza(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6
    invoke-virtual {v0}, Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;->getPlaceFields()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzcm;->zzb(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "fields"

    .line 7
    invoke-static {v1, v2, v0, v4}, Lcom/google/android/libraries/places/internal/zzbt;->zza(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public final zzf()Ljava/lang/String;
    .locals 1

    const-string v0, "details/json"

    return-object v0
.end method
