.class public final Lcom/google/android/libraries/places/internal/zzbq;
.super Lcom/google/android/libraries/places/internal/zzbt;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/libraries/places/internal/zzbt<",
        "Ljava/lang/Object;",
        "Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;",
        ">;"
    }
.end annotation


# instance fields
.field private final zza:Landroid/location/Location;

.field private final zzb:Lcom/google/android/libraries/places/internal/zzgi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/places/internal/zzgi<",
            "Lcom/google/android/libraries/places/internal/zzq;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;Landroid/location/Location;Lcom/google/android/libraries/places/internal/zzgi;Ljava/util/Locale;Ljava/lang/String;ZLcom/google/android/libraries/places/internal/zzdr;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;",
            "Landroid/location/Location;",
            "Lcom/google/android/libraries/places/internal/zzgi<",
            "Lcom/google/android/libraries/places/internal/zzq;",
            ">;",
            "Ljava/util/Locale;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/google/android/libraries/places/internal/zzdr;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move-object v3, p5

    move v4, p6

    move-object v5, p7

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/places/internal/zzbt;-><init>(Lcom/google/android/libraries/places/internal/zzdc;Ljava/util/Locale;Ljava/lang/String;ZLcom/google/android/libraries/places/internal/zzdr;)V

    .line 2
    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzbq;->zza:Landroid/location/Location;

    .line 3
    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzbq;->zzb:Lcom/google/android/libraries/places/internal/zzgi;

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

    check-cast v0, Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbq;->zza:Landroid/location/Location;

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzcn;->zzb(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "location"

    const/4 v4, 0x0

    .line 4
    invoke-static {v1, v3, v2, v4}, Lcom/google/android/libraries/places/internal/zzbt;->zza(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbq;->zzb:Lcom/google/android/libraries/places/internal/zzgi;

    const/16 v3, 0xfa0

    .line 6
    invoke-static {v2, v3}, Lcom/google/android/libraries/places/internal/zzcn;->zza(Lcom/google/android/libraries/places/internal/zzgi;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "wifiaccesspoints"

    .line 7
    invoke-static {v1, v3, v2, v4}, Lcom/google/android/libraries/places/internal/zzbt;->zza(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbq;->zza:Landroid/location/Location;

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzcn;->zza(Landroid/location/Location;)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "precision"

    .line 9
    invoke-static {v1, v3, v2, v4}, Lcom/google/android/libraries/places/internal/zzbt;->zza(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 10
    iget-object v2, p0, Lcom/google/android/libraries/places/internal/zzbq;->zza:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "timestamp"

    invoke-static {v1, v3, v2, v4}, Lcom/google/android/libraries/places/internal/zzbt;->zza(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 11
    invoke-virtual {v0}, Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;->getPlaceFields()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzcm;->zzb(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "fields"

    .line 12
    invoke-static {v1, v2, v0, v4}, Lcom/google/android/libraries/places/internal/zzbt;->zza(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public final zzf()Ljava/lang/String;
    .locals 1

    const-string v0, "findplacefromuserlocation/json"

    return-object v0
.end method
