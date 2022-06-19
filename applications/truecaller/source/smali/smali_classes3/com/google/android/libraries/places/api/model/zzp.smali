.class public abstract Lcom/google/android/libraries/places/api/model/zzp;
.super Lcom/google/android/libraries/places/api/model/Place;
.source "SourceFile"


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Lcom/google/android/libraries/places/api/model/AddressComponents;

.field private final zzc:Lcom/google/android/libraries/places/api/model/Place$BusinessStatus;

.field private final zzd:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zze:Ljava/lang/String;

.field private final zzf:Lcom/google/android/gms/maps/model/LatLng;

.field private final zzg:Ljava/lang/String;

.field private final zzh:Lcom/google/android/libraries/places/api/model/OpeningHours;

.field private final zzi:Ljava/lang/String;

.field private final zzj:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/PhotoMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private final zzk:Lcom/google/android/libraries/places/api/model/PlusCode;

.field private final zzl:Ljava/lang/Integer;

.field private final zzm:Ljava/lang/Double;

.field private final zzn:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/Place$Type;",
            ">;"
        }
    .end annotation
.end field

.field private final zzo:Ljava/lang/Integer;

.field private final zzp:Ljava/lang/Integer;

.field private final zzq:Lcom/google/android/gms/maps/model/LatLngBounds;

.field private final zzr:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/libraries/places/api/model/AddressComponents;Lcom/google/android/libraries/places/api/model/Place$BusinessStatus;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLng;Ljava/lang/String;Lcom/google/android/libraries/places/api/model/OpeningHours;Ljava/lang/String;Ljava/util/List;Lcom/google/android/libraries/places/api/model/PlusCode;Ljava/lang/Integer;Ljava/lang/Double;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/google/android/gms/maps/model/LatLngBounds;Landroid/net/Uri;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/libraries/places/api/model/AddressComponents;",
            "Lcom/google/android/libraries/places/api/model/Place$BusinessStatus;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/maps/model/LatLng;",
            "Ljava/lang/String;",
            "Lcom/google/android/libraries/places/api/model/OpeningHours;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/PhotoMetadata;",
            ">;",
            "Lcom/google/android/libraries/places/api/model/PlusCode;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Double;",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/Place$Type;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lcom/google/android/gms/maps/model/LatLngBounds;",
            "Landroid/net/Uri;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/api/model/Place;-><init>()V

    move-object v1, p1

    .line 2
    iput-object v1, v0, Lcom/google/android/libraries/places/api/model/zzp;->zza:Ljava/lang/String;

    move-object v1, p2

    .line 3
    iput-object v1, v0, Lcom/google/android/libraries/places/api/model/zzp;->zzb:Lcom/google/android/libraries/places/api/model/AddressComponents;

    move-object v1, p3

    .line 4
    iput-object v1, v0, Lcom/google/android/libraries/places/api/model/zzp;->zzc:Lcom/google/android/libraries/places/api/model/Place$BusinessStatus;

    move-object v1, p4

    .line 5
    iput-object v1, v0, Lcom/google/android/libraries/places/api/model/zzp;->zzd:Ljava/util/List;

    move-object v1, p5

    .line 6
    iput-object v1, v0, Lcom/google/android/libraries/places/api/model/zzp;->zze:Ljava/lang/String;

    move-object v1, p6

    .line 7
    iput-object v1, v0, Lcom/google/android/libraries/places/api/model/zzp;->zzf:Lcom/google/android/gms/maps/model/LatLng;

    move-object v1, p7

    .line 8
    iput-object v1, v0, Lcom/google/android/libraries/places/api/model/zzp;->zzg:Ljava/lang/String;

    move-object v1, p8

    .line 9
    iput-object v1, v0, Lcom/google/android/libraries/places/api/model/zzp;->zzh:Lcom/google/android/libraries/places/api/model/OpeningHours;

    move-object v1, p9

    .line 10
    iput-object v1, v0, Lcom/google/android/libraries/places/api/model/zzp;->zzi:Ljava/lang/String;

    move-object v1, p10

    .line 11
    iput-object v1, v0, Lcom/google/android/libraries/places/api/model/zzp;->zzj:Ljava/util/List;

    move-object v1, p11

    .line 12
    iput-object v1, v0, Lcom/google/android/libraries/places/api/model/zzp;->zzk:Lcom/google/android/libraries/places/api/model/PlusCode;

    move-object v1, p12

    .line 13
    iput-object v1, v0, Lcom/google/android/libraries/places/api/model/zzp;->zzl:Ljava/lang/Integer;

    move-object v1, p13

    .line 14
    iput-object v1, v0, Lcom/google/android/libraries/places/api/model/zzp;->zzm:Ljava/lang/Double;

    move-object/from16 v1, p14

    .line 15
    iput-object v1, v0, Lcom/google/android/libraries/places/api/model/zzp;->zzn:Ljava/util/List;

    move-object/from16 v1, p15

    .line 16
    iput-object v1, v0, Lcom/google/android/libraries/places/api/model/zzp;->zzo:Ljava/lang/Integer;

    move-object/from16 v1, p16

    .line 17
    iput-object v1, v0, Lcom/google/android/libraries/places/api/model/zzp;->zzp:Ljava/lang/Integer;

    move-object/from16 v1, p17

    .line 18
    iput-object v1, v0, Lcom/google/android/libraries/places/api/model/zzp;->zzq:Lcom/google/android/gms/maps/model/LatLngBounds;

    move-object/from16 v1, p18

    .line 19
    iput-object v1, v0, Lcom/google/android/libraries/places/api/model/zzp;->zzr:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/android/libraries/places/api/model/Place;

    const/4 v2, 0x0

    if-eqz v1, :cond_13

    .line 2
    check-cast p1, Lcom/google/android/libraries/places/api/model/Place;

    .line 3
    iget-object v1, p0, Lcom/google/android/libraries/places/api/model/zzp;->zza:Ljava/lang/String;

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/Place;->getAddress()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_13

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/Place;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    :goto_0
    iget-object v1, p0, Lcom/google/android/libraries/places/api/model/zzp;->zzb:Lcom/google/android/libraries/places/api/model/AddressComponents;

    if-nez v1, :cond_2

    .line 4
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/Place;->getAddressComponents()Lcom/google/android/libraries/places/api/model/AddressComponents;

    move-result-object v1

    if-nez v1, :cond_13

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/Place;->getAddressComponents()Lcom/google/android/libraries/places/api/model/AddressComponents;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    :goto_1
    iget-object v1, p0, Lcom/google/android/libraries/places/api/model/zzp;->zzc:Lcom/google/android/libraries/places/api/model/Place$BusinessStatus;

    if-nez v1, :cond_3

    .line 5
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/Place;->getBusinessStatus()Lcom/google/android/libraries/places/api/model/Place$BusinessStatus;

    move-result-object v1

    if-nez v1, :cond_13

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/Place;->getBusinessStatus()Lcom/google/android/libraries/places/api/model/Place$BusinessStatus;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    :goto_2
    iget-object v1, p0, Lcom/google/android/libraries/places/api/model/zzp;->zzd:Ljava/util/List;

    if-nez v1, :cond_4

    .line 6
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/Place;->getAttributions()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_13

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/Place;->getAttributions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    :goto_3
    iget-object v1, p0, Lcom/google/android/libraries/places/api/model/zzp;->zze:Ljava/lang/String;

    if-nez v1, :cond_5

    .line 7
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/Place;->getId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_13

    goto :goto_4

    :cond_5
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/Place;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    :goto_4
    iget-object v1, p0, Lcom/google/android/libraries/places/api/model/zzp;->zzf:Lcom/google/android/gms/maps/model/LatLng;

    if-nez v1, :cond_6

    .line 8
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/Place;->getLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    if-nez v1, :cond_13

    goto :goto_5

    :cond_6
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/Place;->getLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/maps/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    :goto_5
    iget-object v1, p0, Lcom/google/android/libraries/places/api/model/zzp;->zzg:Ljava/lang/String;

    if-nez v1, :cond_7

    .line 9
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/Place;->getName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_13

    goto :goto_6

    :cond_7
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/Place;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    :goto_6
    iget-object v1, p0, Lcom/google/android/libraries/places/api/model/zzp;->zzh:Lcom/google/android/libraries/places/api/model/OpeningHours;

    if-nez v1, :cond_8

    .line 10
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/Place;->getOpeningHours()Lcom/google/android/libraries/places/api/model/OpeningHours;

    move-result-object v1

    if-nez v1, :cond_13

    goto :goto_7

    :cond_8
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/Place;->getOpeningHours()Lcom/google/android/libraries/places/api/model/OpeningHours;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    :goto_7
    iget-object v1, p0, Lcom/google/android/libraries/places/api/model/zzp;->zzi:Ljava/lang/String;

    if-nez v1, :cond_9

    .line 11
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/Place;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_13

    goto :goto_8

    :cond_9
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/Place;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    :goto_8
    iget-object v1, p0, Lcom/google/android/libraries/places/api/model/zzp;->zzj:Ljava/util/List;

    if-nez v1, :cond_a

    .line 12
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/Place;->getPhotoMetadatas()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_13

    goto :goto_9

    :cond_a
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/Place;->getPhotoMetadatas()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    :goto_9
    iget-object v1, p0, Lcom/google/android/libraries/places/api/model/zzp;->zzk:Lcom/google/android/libraries/places/api/model/PlusCode;

    if-nez v1, :cond_b

    .line 13
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/Place;->getPlusCode()Lcom/google/android/libraries/places/api/model/PlusCode;

    move-result-object v1

    if-nez v1, :cond_13

    goto :goto_a

    :cond_b
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/Place;->getPlusCode()Lcom/google/android/libraries/places/api/model/PlusCode;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    :goto_a
    iget-object v1, p0, Lcom/google/android/libraries/places/api/model/zzp;->zzl:Ljava/lang/Integer;

    if-nez v1, :cond_c

    .line 14
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/Place;->getPriceLevel()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_13

    goto :goto_b

    :cond_c
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/Place;->getPriceLevel()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    :goto_b
    iget-object v1, p0, Lcom/google/android/libraries/places/api/model/zzp;->zzm:Ljava/lang/Double;

    if-nez v1, :cond_d

    .line 15
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/Place;->getRating()Ljava/lang/Double;

    move-result-object v1

    if-nez v1, :cond_13

    goto :goto_c

    :cond_d
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/Place;->getRating()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Double;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    :goto_c
    iget-object v1, p0, Lcom/google/android/libraries/places/api/model/zzp;->zzn:Ljava/util/List;

    if-nez v1, :cond_e

    .line 16
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/Place;->getTypes()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_13

    goto :goto_d

    :cond_e
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/Place;->getTypes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    :goto_d
    iget-object v1, p0, Lcom/google/android/libraries/places/api/model/zzp;->zzo:Ljava/lang/Integer;

    if-nez v1, :cond_f

    .line 17
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/Place;->getUserRatingsTotal()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_13

    goto :goto_e

    :cond_f
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/Place;->getUserRatingsTotal()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    :goto_e
    iget-object v1, p0, Lcom/google/android/libraries/places/api/model/zzp;->zzp:Ljava/lang/Integer;

    if-nez v1, :cond_10

    .line 18
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/Place;->getUtcOffsetMinutes()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_13

    goto :goto_f

    :cond_10
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/Place;->getUtcOffsetMinutes()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    :goto_f
    iget-object v1, p0, Lcom/google/android/libraries/places/api/model/zzp;->zzq:Lcom/google/android/gms/maps/model/LatLngBounds;

    if-nez v1, :cond_11

    .line 19
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/Place;->getViewport()Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v1

    if-nez v1, :cond_13

    goto :goto_10

    :cond_11
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/Place;->getViewport()Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/maps/model/LatLngBounds;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    :goto_10
    iget-object v1, p0, Lcom/google/android/libraries/places/api/model/zzp;->zzr:Landroid/net/Uri;

    if-nez v1, :cond_12

    .line 20
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/Place;->getWebsiteUri()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_13

    goto :goto_11

    :cond_12
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/Place;->getWebsiteUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    :goto_11
    return v0

    :cond_13
    return v2
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzp;->zza:Ljava/lang/String;

    return-object v0
.end method

.method public getAddressComponents()Lcom/google/android/libraries/places/api/model/AddressComponents;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzp;->zzb:Lcom/google/android/libraries/places/api/model/AddressComponents;

    return-object v0
.end method

.method public getAttributions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzp;->zzd:Ljava/util/List;

    return-object v0
.end method

.method public getBusinessStatus()Lcom/google/android/libraries/places/api/model/Place$BusinessStatus;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzp;->zzc:Lcom/google/android/libraries/places/api/model/Place$BusinessStatus;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzp;->zze:Ljava/lang/String;

    return-object v0
.end method

.method public getLatLng()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzp;->zzf:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzp;->zzg:Ljava/lang/String;

    return-object v0
.end method

.method public getOpeningHours()Lcom/google/android/libraries/places/api/model/OpeningHours;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzp;->zzh:Lcom/google/android/libraries/places/api/model/OpeningHours;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzp;->zzi:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoMetadatas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/PhotoMetadata;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzp;->zzj:Ljava/util/List;

    return-object v0
.end method

.method public getPlusCode()Lcom/google/android/libraries/places/api/model/PlusCode;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzp;->zzk:Lcom/google/android/libraries/places/api/model/PlusCode;

    return-object v0
.end method

.method public getPriceLevel()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzp;->zzl:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRating()Ljava/lang/Double;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzp;->zzm:Ljava/lang/Double;

    return-object v0
.end method

.method public getTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/Place$Type;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzp;->zzn:Ljava/util/List;

    return-object v0
.end method

.method public getUserRatingsTotal()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzp;->zzo:Ljava/lang/Integer;

    return-object v0
.end method

.method public getUtcOffsetMinutes()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzp;->zzp:Ljava/lang/Integer;

    return-object v0
.end method

.method public getViewport()Lcom/google/android/gms/maps/model/LatLngBounds;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzp;->zzq:Lcom/google/android/gms/maps/model/LatLngBounds;

    return-object v0
.end method

.method public getWebsiteUri()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzp;->zzr:Landroid/net/Uri;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzp;->zza:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const v2, 0xf4243

    xor-int/2addr v0, v2

    mul-int/2addr v0, v2

    .line 2
    iget-object v3, p0, Lcom/google/android/libraries/places/api/model/zzp;->zzb:Lcom/google/android/libraries/places/api/model/AddressComponents;

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    xor-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 3
    iget-object v3, p0, Lcom/google/android/libraries/places/api/model/zzp;->zzc:Lcom/google/android/libraries/places/api/model/Place$BusinessStatus;

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Enum;->hashCode()I

    move-result v3

    :goto_2
    xor-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 4
    iget-object v3, p0, Lcom/google/android/libraries/places/api/model/zzp;->zzd:Ljava/util/List;

    if-nez v3, :cond_3

    move v3, v1

    goto :goto_3

    :cond_3
    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    :goto_3
    xor-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 5
    iget-object v3, p0, Lcom/google/android/libraries/places/api/model/zzp;->zze:Ljava/lang/String;

    if-nez v3, :cond_4

    move v3, v1

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_4
    xor-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 6
    iget-object v3, p0, Lcom/google/android/libraries/places/api/model/zzp;->zzf:Lcom/google/android/gms/maps/model/LatLng;

    if-nez v3, :cond_5

    move v3, v1

    goto :goto_5

    :cond_5
    invoke-virtual {v3}, Lcom/google/android/gms/maps/model/LatLng;->hashCode()I

    move-result v3

    :goto_5
    xor-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 7
    iget-object v3, p0, Lcom/google/android/libraries/places/api/model/zzp;->zzg:Ljava/lang/String;

    if-nez v3, :cond_6

    move v3, v1

    goto :goto_6

    :cond_6
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_6
    xor-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 8
    iget-object v3, p0, Lcom/google/android/libraries/places/api/model/zzp;->zzh:Lcom/google/android/libraries/places/api/model/OpeningHours;

    if-nez v3, :cond_7

    move v3, v1

    goto :goto_7

    :cond_7
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_7
    xor-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 9
    iget-object v3, p0, Lcom/google/android/libraries/places/api/model/zzp;->zzi:Ljava/lang/String;

    if-nez v3, :cond_8

    move v3, v1

    goto :goto_8

    :cond_8
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_8
    xor-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 10
    iget-object v3, p0, Lcom/google/android/libraries/places/api/model/zzp;->zzj:Ljava/util/List;

    if-nez v3, :cond_9

    move v3, v1

    goto :goto_9

    :cond_9
    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    :goto_9
    xor-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 11
    iget-object v3, p0, Lcom/google/android/libraries/places/api/model/zzp;->zzk:Lcom/google/android/libraries/places/api/model/PlusCode;

    if-nez v3, :cond_a

    move v3, v1

    goto :goto_a

    :cond_a
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_a
    xor-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 12
    iget-object v3, p0, Lcom/google/android/libraries/places/api/model/zzp;->zzl:Ljava/lang/Integer;

    if-nez v3, :cond_b

    move v3, v1

    goto :goto_b

    :cond_b
    invoke-virtual {v3}, Ljava/lang/Integer;->hashCode()I

    move-result v3

    :goto_b
    xor-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 13
    iget-object v3, p0, Lcom/google/android/libraries/places/api/model/zzp;->zzm:Ljava/lang/Double;

    if-nez v3, :cond_c

    move v3, v1

    goto :goto_c

    :cond_c
    invoke-virtual {v3}, Ljava/lang/Double;->hashCode()I

    move-result v3

    :goto_c
    xor-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 14
    iget-object v3, p0, Lcom/google/android/libraries/places/api/model/zzp;->zzn:Ljava/util/List;

    if-nez v3, :cond_d

    move v3, v1

    goto :goto_d

    :cond_d
    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    :goto_d
    xor-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 15
    iget-object v3, p0, Lcom/google/android/libraries/places/api/model/zzp;->zzo:Ljava/lang/Integer;

    if-nez v3, :cond_e

    move v3, v1

    goto :goto_e

    :cond_e
    invoke-virtual {v3}, Ljava/lang/Integer;->hashCode()I

    move-result v3

    :goto_e
    xor-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 16
    iget-object v3, p0, Lcom/google/android/libraries/places/api/model/zzp;->zzp:Ljava/lang/Integer;

    if-nez v3, :cond_f

    move v3, v1

    goto :goto_f

    :cond_f
    invoke-virtual {v3}, Ljava/lang/Integer;->hashCode()I

    move-result v3

    :goto_f
    xor-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 17
    iget-object v3, p0, Lcom/google/android/libraries/places/api/model/zzp;->zzq:Lcom/google/android/gms/maps/model/LatLngBounds;

    if-nez v3, :cond_10

    move v3, v1

    goto :goto_10

    :cond_10
    invoke-virtual {v3}, Lcom/google/android/gms/maps/model/LatLngBounds;->hashCode()I

    move-result v3

    :goto_10
    xor-int/2addr v0, v3

    mul-int/2addr v0, v2

    .line 18
    iget-object v2, p0, Lcom/google/android/libraries/places/api/model/zzp;->zzr:Landroid/net/Uri;

    if-nez v2, :cond_11

    goto :goto_11

    :cond_11
    invoke-virtual {v2}, Landroid/net/Uri;->hashCode()I

    move-result v1

    :goto_11
    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 21

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/libraries/places/api/model/zzp;->zza:Ljava/lang/String;

    iget-object v2, v0, Lcom/google/android/libraries/places/api/model/zzp;->zzb:Lcom/google/android/libraries/places/api/model/AddressComponents;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/libraries/places/api/model/zzp;->zzc:Lcom/google/android/libraries/places/api/model/Place$BusinessStatus;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/google/android/libraries/places/api/model/zzp;->zzd:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/libraries/places/api/model/zzp;->zze:Ljava/lang/String;

    iget-object v6, v0, Lcom/google/android/libraries/places/api/model/zzp;->zzf:Lcom/google/android/gms/maps/model/LatLng;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/google/android/libraries/places/api/model/zzp;->zzg:Ljava/lang/String;

    iget-object v8, v0, Lcom/google/android/libraries/places/api/model/zzp;->zzh:Lcom/google/android/libraries/places/api/model/OpeningHours;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, v0, Lcom/google/android/libraries/places/api/model/zzp;->zzi:Ljava/lang/String;

    iget-object v10, v0, Lcom/google/android/libraries/places/api/model/zzp;->zzj:Ljava/util/List;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, v0, Lcom/google/android/libraries/places/api/model/zzp;->zzk:Lcom/google/android/libraries/places/api/model/PlusCode;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    iget-object v12, v0, Lcom/google/android/libraries/places/api/model/zzp;->zzl:Ljava/lang/Integer;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    iget-object v13, v0, Lcom/google/android/libraries/places/api/model/zzp;->zzm:Ljava/lang/Double;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    iget-object v14, v0, Lcom/google/android/libraries/places/api/model/zzp;->zzn:Ljava/util/List;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    iget-object v15, v0, Lcom/google/android/libraries/places/api/model/zzp;->zzo:Ljava/lang/Integer;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v15

    iget-object v15, v0, Lcom/google/android/libraries/places/api/model/zzp;->zzp:Ljava/lang/Integer;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v17, v15

    iget-object v15, v0, Lcom/google/android/libraries/places/api/model/zzp;->zzq:Lcom/google/android/gms/maps/model/LatLngBounds;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v18, v15

    iget-object v15, v0, Lcom/google/android/libraries/places/api/model/zzp;->zzr:Landroid/net/Uri;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    const/16 v0, 0xed

    invoke-static {v1, v0}, Le/d/c/a/a;->f2(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v19

    add-int v19, v19, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    add-int v0, v0, v19

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v19

    add-int v0, v19, v0

    invoke-static {v5, v0}, Le/d/c/a/a;->f2(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v19

    add-int v0, v19, v0

    invoke-static {v7, v0}, Le/d/c/a/a;->f2(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v19

    add-int v0, v19, v0

    invoke-static {v9, v0}, Le/d/c/a/a;->f2(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v19

    add-int v19, v19, v0

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v0

    add-int v0, v0, v19

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v19

    add-int v19, v19, v0

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v0

    add-int v0, v0, v19

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v19

    add-int v19, v19, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v0

    add-int v0, v0, v19

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v19

    add-int v19, v19, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v0

    add-int v0, v0, v19

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v19

    add-int v0, v19, v0

    move-object/from16 v19, v15

    const-string v15, "Place{address="

    move-object/from16 v20, v13

    const-string v13, ", addressComponents="

    invoke-static {v0, v15, v1, v13, v2}, Le/d/c/a/a;->A(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", businessStatus="

    const-string v2, ", attributions="

    invoke-static {v0, v1, v3, v2, v4}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", id="

    const-string v2, ", latLng="

    invoke-static {v0, v1, v5, v2, v6}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", name="

    const-string v2, ", openingHours="

    invoke-static {v0, v1, v7, v2, v8}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", phoneNumber="

    const-string v2, ", photoMetadatas="

    invoke-static {v0, v1, v9, v2, v10}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", plusCode="

    const-string v2, ", priceLevel="

    invoke-static {v0, v1, v11, v2, v12}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", rating="

    const-string v2, ", types="

    move-object/from16 v3, v20

    invoke-static {v0, v1, v3, v2, v14}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", userRatingsTotal="

    const-string v2, ", utcOffsetMinutes="

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    invoke-static {v0, v1, v3, v2, v4}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", viewport="

    const-string v2, ", websiteUri="

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    invoke-static {v0, v1, v3, v2, v4}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
