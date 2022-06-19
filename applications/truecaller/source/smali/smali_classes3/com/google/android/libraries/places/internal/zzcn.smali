.class public final Lcom/google/android/libraries/places/internal/zzcn;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/android/libraries/places/internal/zzgn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/places/internal/zzgn<",
            "Lcom/google/android/libraries/places/internal/zzp;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/libraries/places/internal/zzgm;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzgm;-><init>()V

    .line 2
    sget-object v1, Lcom/google/android/libraries/places/internal/zzp;->zza:Lcom/google/android/libraries/places/internal/zzp;

    const-string v2, "NONE"

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/internal/zzp;->zzb:Lcom/google/android/libraries/places/internal/zzp;

    const-string v2, "WPA_PSK"

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/internal/zzp;->zzc:Lcom/google/android/libraries/places/internal/zzp;

    const-string v2, "WPA_EAP"

    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/internal/zzp;->zzd:Lcom/google/android/libraries/places/internal/zzp;

    const-string v2, "SECURED_NONE"

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzgm;->zza()Lcom/google/android/libraries/places/internal/zzgn;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzcn;->zza:Lcom/google/android/libraries/places/internal/zzgn;

    return-void
.end method

.method public static zza(Landroid/location/Location;)Ljava/lang/Integer;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 20
    :cond_0
    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    .line 21
    invoke-virtual {p0}, Landroid/location/Location;->hasAccuracy()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    cmpl-float p0, v1, p0

    if-lez p0, :cond_1

    const/high16 p0, 0x42c80000    # 100.0f

    mul-float/2addr v1, p0

    .line 22
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method private static zza(DD)Ljava/lang/String;
    .locals 2

    .line 24
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const/4 p1, 0x0

    aput-object p0, v1, p1

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v1, p1

    const-string p0, "%.15f,%.15f"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static zza(Lcom/google/android/gms/maps/model/LatLng;)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 23
    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/maps/model/LatLng;->a:D

    iget-wide v2, p0, Lcom/google/android/gms/maps/model/LatLng;->b:D

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/libraries/places/internal/zzcn;->zza(DD)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static zza(Lcom/google/android/libraries/places/api/model/LocationBias;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 33
    :cond_0
    instance-of v0, p0, Lcom/google/android/libraries/places/api/model/RectangularBounds;

    if-eqz v0, :cond_1

    .line 34
    check-cast p0, Lcom/google/android/libraries/places/api/model/RectangularBounds;

    invoke-static {p0}, Lcom/google/android/libraries/places/internal/zzcn;->zza(Lcom/google/android/libraries/places/api/model/RectangularBounds;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 35
    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    const-string v0, "Unknown LocationBias type."

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method public static zza(Lcom/google/android/libraries/places/api/model/LocationRestriction;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 36
    :cond_0
    instance-of v0, p0, Lcom/google/android/libraries/places/api/model/RectangularBounds;

    if-eqz v0, :cond_1

    .line 37
    check-cast p0, Lcom/google/android/libraries/places/api/model/RectangularBounds;

    invoke-static {p0}, Lcom/google/android/libraries/places/internal/zzcn;->zza(Lcom/google/android/libraries/places/api/model/RectangularBounds;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 38
    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    const-string v0, "Unknown LocationRestriction type."

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method private static zza(Lcom/google/android/libraries/places/api/model/RectangularBounds;)Ljava/lang/String;
    .locals 9

    .line 39
    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/model/RectangularBounds;->getSouthwest()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    .line 40
    iget-wide v1, v0, Lcom/google/android/gms/maps/model/LatLng;->a:D

    .line 41
    iget-wide v3, v0, Lcom/google/android/gms/maps/model/LatLng;->b:D

    .line 42
    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/model/RectangularBounds;->getNortheast()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p0

    .line 43
    iget-wide v5, p0, Lcom/google/android/gms/maps/model/LatLng;->a:D

    .line 44
    iget-wide v7, p0, Lcom/google/android/gms/maps/model/LatLng;->b:D

    .line 45
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "rectangle:%.15f,%.15f|%.15f,%.15f"

    invoke-static {p0, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static zza(Lcom/google/android/libraries/places/internal/zzgi;I)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/places/internal/zzgi<",
            "Lcom/google/android/libraries/places/internal/zzq;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 p1, 0x1

    const-string v0, "maxLength must not be negative"

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/zzft;->zza(ZLjava/lang/Object;)V

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/google/android/libraries/places/internal/zzq;

    .line 4
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    const-string v3, "|"

    goto :goto_1

    :cond_0
    const-string v3, ""

    .line 5
    :goto_1
    new-instance v4, Lcom/google/android/libraries/places/internal/zzgm;

    invoke-direct {v4}, Lcom/google/android/libraries/places/internal/zzgm;-><init>()V

    .line 6
    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/zzq;->zza()Ljava/lang/String;

    move-result-object v5

    const-string v6, "mac"

    invoke-virtual {v4, v6, v5}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v4

    .line 7
    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/zzq;->zzb()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "strength_dbm"

    invoke-virtual {v4, v6, v5}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v4

    sget-object v5, Lcom/google/android/libraries/places/internal/zzcn;->zza:Lcom/google/android/libraries/places/internal/zzgn;

    .line 8
    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/zzq;->zzc()Lcom/google/android/libraries/places/internal/zzp;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/libraries/places/internal/zzgn;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "wifi_auth_type"

    invoke-virtual {v4, v6, v5}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v4

    .line 9
    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/zzq;->zzd()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v6, "is_connected"

    invoke-virtual {v4, v6, v5}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v4

    .line 10
    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/zzq;->zze()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v5, "frequency_mhz"

    invoke-virtual {v4, v5, v2}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v2

    .line 11
    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/zzgm;->zza()Lcom/google/android/libraries/places/internal/zzgn;

    move-result-object v2

    const-string v4, ","

    .line 12
    invoke-static {v4}, Lcom/google/android/libraries/places/internal/zzfj;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzfj;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Lcom/google/android/libraries/places/internal/zzfj;->zzb(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzfo;

    move-result-object v4

    .line 13
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 14
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 15
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5, v2}, Lcom/google/android/libraries/places/internal/zzfo;->zza(Ljava/lang/StringBuilder;Ljava/util/Iterator;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 16
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2
    const/16 v3, 0xfa0

    .line 17
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v4

    if-lt v3, v5, :cond_2

    .line 18
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 19
    :cond_2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static zza(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 27
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const-string v2, "country:"

    .line 28
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v2, v1

    :goto_1
    if-eqz v2, :cond_0

    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x7c

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 31
    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 32
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-nez p0, :cond_5

    return-object v2

    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static zzb(Landroid/location/Location;)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/libraries/places/internal/zzcn;->zza(DD)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
