.class public abstract Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest$Builder;->zza()Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;->getPlaceFields()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzgi;->zza(Ljava/util/Collection;)Lcom/google/android/libraries/places/internal/zzgi;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest$Builder;->zza(Ljava/util/List;)Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest$Builder;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest$Builder;->zza()Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;

    move-result-object v0

    return-object v0
.end method

.method public abstract getCancellationToken()Lcom/google/android/gms/tasks/CancellationToken;
.end method

.method public abstract setCancellationToken(Lcom/google/android/gms/tasks/CancellationToken;)Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest$Builder;
.end method

.method public abstract zza(Ljava/util/List;)Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/Place$Field;",
            ">;)",
            "Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest$Builder;"
        }
    .end annotation
.end method

.method public abstract zza()Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;
.end method
