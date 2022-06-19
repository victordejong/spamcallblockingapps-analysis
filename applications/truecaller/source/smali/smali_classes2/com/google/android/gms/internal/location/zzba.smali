.class public final Lcom/google/android/gms/internal/location/zzba;
.super Lcom/google/android/gms/internal/location/zzan;
.source "SourceFile"


# instance fields
.field private zzdf:Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/location/zzan;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/location/zzba;->zzdf:Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;

    return-void
.end method


# virtual methods
.method public final zza(ILandroid/app/PendingIntent;)V
    .locals 0

    const-string p1, "LocationClientImpl"

    const-string p2, "Unexpected call to onRemoveGeofencesByPendingIntentResult"

    invoke-static {p1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final zza(I[Ljava/lang/String;)V
    .locals 1

    iget-object p2, p0, Lcom/google/android/gms/internal/location/zzba;->zzdf:Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;

    if-nez p2, :cond_0

    const-string p1, "LocationClientImpl"

    const-string p2, "onAddGeofenceResult called multiple times"

    invoke-static {p1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 p2, 0x1

    if-ltz p1, :cond_1

    if-le p1, p2, :cond_3

    :cond_1
    const/16 v0, 0x3e8

    if-gt v0, p1, :cond_2

    const/16 v0, 0x3ea

    if-gt p1, v0, :cond_2

    goto :goto_0

    :cond_2
    move p1, p2

    :cond_3
    :goto_0
    if-eq p1, p2, :cond_4

    goto :goto_1

    :cond_4
    const/16 p1, 0xd

    .line 1
    :goto_1
    new-instance p2, Lcom/google/android/gms/common/api/Status;

    const/4 v0, 0x0

    .line 2
    invoke-direct {p2, p1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/location/zzba;->zzdf:Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;

    invoke-interface {p1, p2}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;->setResult(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/location/zzba;->zzdf:Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;

    return-void
.end method

.method public final zzb(I[Ljava/lang/String;)V
    .locals 0

    const-string p1, "LocationClientImpl"

    const-string p2, "Unexpected call to onRemoveGeofencesByRequestIdsResult"

    invoke-static {p1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
