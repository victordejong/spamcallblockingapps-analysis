.class public abstract Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/util/List;)Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/AutocompletePrediction;",
            ">;)",
            "Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsResponse;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/libraries/places/api/net/zzk;

    .line 2
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/zzgi;->zza(Ljava/util/Collection;)Lcom/google/android/libraries/places/internal/zzgi;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/libraries/places/api/net/zzk;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public abstract getAutocompletePredictions()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/AutocompletePrediction;",
            ">;"
        }
    .end annotation
.end method
