.class public final synthetic Lcom/google/android/libraries/places/internal/zzcc;
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

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzcc;->zza:Lcom/google/android/libraries/places/internal/zzbv;

    return-void
.end method


# virtual methods
.method public final then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->o()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/internal/zzbh;

    .line 2
    iget-object v0, p1, Lcom/google/android/libraries/places/internal/zzbh;->status:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzcl;->zza(Ljava/lang/String;)I

    move-result v0

    .line 3
    invoke-static {v0}, Lcom/google/android/libraries/places/api/net/PlacesStatusCodes;->isError(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    iget-object v0, p1, Lcom/google/android/libraries/places/internal/zzbh;->result:Lcom/google/android/libraries/places/internal/zzcj;

    .line 5
    iget-object p1, p1, Lcom/google/android/libraries/places/internal/zzbh;->htmlAttributions:[Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 6
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzgi;->zza([Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgi;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 7
    :goto_0
    invoke-static {v0, p1}, Lcom/google/android/libraries/places/internal/zzci;->zza(Lcom/google/android/libraries/places/internal/zzcj;Ljava/util/List;)Lcom/google/android/libraries/places/api/model/Place;

    move-result-object p1

    .line 8
    invoke-static {p1}, Lcom/google/android/libraries/places/api/net/FetchPlaceResponse;->newInstance(Lcom/google/android/libraries/places/api/model/Place;)Lcom/google/android/libraries/places/api/net/FetchPlaceResponse;

    move-result-object p1

    return-object p1

    .line 9
    :cond_1
    new-instance v1, Lcom/google/android/gms/common/api/ApiException;

    new-instance v2, Lcom/google/android/gms/common/api/Status;

    iget-object v3, p1, Lcom/google/android/libraries/places/internal/zzbh;->status:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/libraries/places/internal/zzbh;->errorMessage:Ljava/lang/String;

    .line 10
    invoke-static {v3, p1}, Lcom/google/android/libraries/places/internal/zzcl;->zza(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v0, p1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    throw v1
.end method
