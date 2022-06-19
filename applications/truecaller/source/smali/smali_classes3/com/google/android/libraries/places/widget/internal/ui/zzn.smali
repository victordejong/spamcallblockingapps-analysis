.class public final Lcom/google/android/libraries/places/widget/internal/ui/zzn;
.super Ln3/b0/a/h$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln3/b0/a/h$e<",
        "Lcom/google/android/libraries/places/api/model/AutocompletePrediction;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ln3/b0/a/h$e;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/libraries/places/widget/internal/ui/zzk;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/android/libraries/places/widget/internal/ui/zzn;-><init>()V

    return-void
.end method

.method private static zza(Lcom/google/android/libraries/places/api/model/AutocompletePrediction;Lcom/google/android/libraries/places/api/model/AutocompletePrediction;)Z
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/model/AutocompletePrediction;->getPlaceId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/AutocompletePrediction;->getPlaceId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    .line 2
    :goto_0
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/zzdk;->zza(Ljava/lang/Throwable;)V

    .line 3
    throw p0
.end method


# virtual methods
.method public final synthetic areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/libraries/places/api/model/AutocompletePrediction;

    check-cast p2, Lcom/google/android/libraries/places/api/model/AutocompletePrediction;

    .line 2
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final synthetic areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/libraries/places/api/model/AutocompletePrediction;

    check-cast p2, Lcom/google/android/libraries/places/api/model/AutocompletePrediction;

    invoke-static {p1, p2}, Lcom/google/android/libraries/places/widget/internal/ui/zzn;->zza(Lcom/google/android/libraries/places/api/model/AutocompletePrediction;Lcom/google/android/libraries/places/api/model/AutocompletePrediction;)Z

    move-result p1

    return p1
.end method
