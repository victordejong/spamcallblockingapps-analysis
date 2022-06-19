.class public interface abstract Lcom/google/android/libraries/places/internal/zzek;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract zza(Lcom/google/android/libraries/places/api/model/AutocompletePrediction;)Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/places/api/model/AutocompletePrediction;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/libraries/places/api/net/FetchPlaceResponse;",
            ">;"
        }
    .end annotation
.end method

.method public abstract zza(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsResponse;",
            ">;"
        }
    .end annotation
.end method

.method public abstract zza()V
.end method
