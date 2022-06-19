.class public final synthetic Lcom/google/android/libraries/places/internal/zzce;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# instance fields
.field private final zza:Lcom/google/android/libraries/places/internal/zzbv;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/places/internal/zzbv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzce;->zza:Lcom/google/android/libraries/places/internal/zzbv;

    return-void
.end method


# virtual methods
.method public final then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 8

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->o()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/internal/zzbp;

    .line 2
    iget-object v0, p1, Lcom/google/android/libraries/places/internal/zzbp;->status:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzcl;->zza(Ljava/lang/String;)I

    move-result v0

    .line 3
    invoke-static {v0}, Lcom/google/android/libraries/places/api/net/PlacesStatusCodes;->isError(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    iget-object v1, p1, Lcom/google/android/libraries/places/internal/zzbp;->predictions:[Lcom/google/android/libraries/places/internal/zzck;

    if-eqz v1, :cond_3

    .line 6
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 7
    invoke-virtual {v4}, Lcom/google/android/libraries/places/internal/zzck;->zzb()Lcom/google/android/libraries/places/internal/zzcj;

    move-result-object v5

    const/16 v6, 0x8

    if-eqz v5, :cond_2

    .line 8
    invoke-virtual {v4}, Lcom/google/android/libraries/places/internal/zzck;->zza()Ljava/lang/Double;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 9
    invoke-virtual {v4}, Lcom/google/android/libraries/places/internal/zzck;->zzb()Lcom/google/android/libraries/places/internal/zzcj;

    move-result-object v5

    .line 10
    iget-object v6, p1, Lcom/google/android/libraries/places/internal/zzbp;->htmlAttributions:[Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 11
    invoke-static {v6}, Lcom/google/android/libraries/places/internal/zzgi;->zza([Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgi;

    move-result-object v6

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    .line 12
    :goto_1
    invoke-static {v5, v6}, Lcom/google/android/libraries/places/internal/zzci;->zza(Lcom/google/android/libraries/places/internal/zzcj;Ljava/util/List;)Lcom/google/android/libraries/places/api/model/Place;

    move-result-object v5

    .line 13
    invoke-virtual {v4}, Lcom/google/android/libraries/places/internal/zzck;->zza()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/google/android/libraries/places/api/model/PlaceLikelihood;->newInstance(Lcom/google/android/libraries/places/api/model/Place;D)Lcom/google/android/libraries/places/api/model/PlaceLikelihood;

    move-result-object v4

    .line 14
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 15
    :cond_1
    new-instance p1, Lcom/google/android/gms/common/api/ApiException;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string v1, "Unexpected server error: PlaceLikelihood returned without a likelihood value"

    invoke-direct {v0, v6, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    throw p1

    .line 16
    :cond_2
    new-instance p1, Lcom/google/android/gms/common/api/ApiException;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string v1, "Unexpected server error: PlaceLikelihood returned without a Place value"

    invoke-direct {v0, v6, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    throw p1

    .line 17
    :cond_3
    invoke-static {v0}, Lcom/google/android/libraries/places/api/net/FindCurrentPlaceResponse;->newInstance(Ljava/util/List;)Lcom/google/android/libraries/places/api/net/FindCurrentPlaceResponse;

    move-result-object p1

    return-object p1

    .line 18
    :cond_4
    new-instance v1, Lcom/google/android/gms/common/api/ApiException;

    new-instance v2, Lcom/google/android/gms/common/api/Status;

    iget-object v3, p1, Lcom/google/android/libraries/places/internal/zzbp;->status:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/libraries/places/internal/zzbp;->errorMessage:Ljava/lang/String;

    .line 19
    invoke-static {v3, p1}, Lcom/google/android/libraries/places/internal/zzcl;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v0, p1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    throw v1
.end method
