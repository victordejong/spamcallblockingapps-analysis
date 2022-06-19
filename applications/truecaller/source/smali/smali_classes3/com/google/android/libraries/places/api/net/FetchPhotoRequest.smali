.class public abstract Lcom/google/android/libraries/places/api/net/FetchPhotoRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzdc;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/places/api/net/FetchPhotoRequest$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder(Lcom/google/android/libraries/places/api/model/PhotoMetadata;)Lcom/google/android/libraries/places/api/net/FetchPhotoRequest$Builder;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/libraries/places/api/net/zzd;

    invoke-direct {v0}, Lcom/google/android/libraries/places/api/net/zzd;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/places/api/net/zzd;->zza(Lcom/google/android/libraries/places/api/model/PhotoMetadata;)Lcom/google/android/libraries/places/api/net/FetchPhotoRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static newInstance(Lcom/google/android/libraries/places/api/model/PhotoMetadata;)Lcom/google/android/libraries/places/api/net/FetchPhotoRequest;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/libraries/places/api/net/FetchPhotoRequest;->builder(Lcom/google/android/libraries/places/api/model/PhotoMetadata;)Lcom/google/android/libraries/places/api/net/FetchPhotoRequest$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/net/FetchPhotoRequest$Builder;->build()Lcom/google/android/libraries/places/api/net/FetchPhotoRequest;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract getCancellationToken()Lcom/google/android/gms/tasks/CancellationToken;
.end method

.method public abstract getMaxHeight()Ljava/lang/Integer;
.end method

.method public abstract getMaxWidth()Ljava/lang/Integer;
.end method

.method public abstract getPhotoMetadata()Lcom/google/android/libraries/places/api/model/PhotoMetadata;
.end method
