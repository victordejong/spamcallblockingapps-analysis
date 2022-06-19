.class public final Lcom/google/android/libraries/places/api/model/zzs;
.super Lcom/google/android/libraries/places/api/model/Place$Builder;
.source "SourceFile"


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:Lcom/google/android/libraries/places/api/model/AddressComponents;

.field private zzc:Lcom/google/android/libraries/places/api/model/Place$BusinessStatus;

.field private zzd:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zze:Ljava/lang/String;

.field private zzf:Lcom/google/android/gms/maps/model/LatLng;

.field private zzg:Ljava/lang/String;

.field private zzh:Lcom/google/android/libraries/places/api/model/OpeningHours;

.field private zzi:Ljava/lang/String;

.field private zzj:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/PhotoMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private zzk:Lcom/google/android/libraries/places/api/model/PlusCode;

.field private zzl:Ljava/lang/Integer;

.field private zzm:Ljava/lang/Double;

.field private zzn:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/Place$Type;",
            ">;"
        }
    .end annotation
.end field

.field private zzo:Ljava/lang/Integer;

.field private zzp:Ljava/lang/Integer;

.field private zzq:Lcom/google/android/gms/maps/model/LatLngBounds;

.field private zzr:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/api/model/Place$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAddress()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzs;->zza:Ljava/lang/String;

    return-object v0
.end method

.method public final getAddressComponents()Lcom/google/android/libraries/places/api/model/AddressComponents;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzs;->zzb:Lcom/google/android/libraries/places/api/model/AddressComponents;

    return-object v0
.end method

.method public final getAttributions()Ljava/util/List;
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
    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzs;->zzd:Ljava/util/List;

    return-object v0
.end method

.method public final getBusinessStatus()Lcom/google/android/libraries/places/api/model/Place$BusinessStatus;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzs;->zzc:Lcom/google/android/libraries/places/api/model/Place$BusinessStatus;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzs;->zze:Ljava/lang/String;

    return-object v0
.end method

.method public final getLatLng()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzs;->zzf:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzs;->zzg:Ljava/lang/String;

    return-object v0
.end method

.method public final getOpeningHours()Lcom/google/android/libraries/places/api/model/OpeningHours;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzs;->zzh:Lcom/google/android/libraries/places/api/model/OpeningHours;

    return-object v0
.end method

.method public final getPhoneNumber()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzs;->zzi:Ljava/lang/String;

    return-object v0
.end method

.method public final getPhotoMetadatas()Ljava/util/List;
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
    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzs;->zzj:Ljava/util/List;

    return-object v0
.end method

.method public final getPlusCode()Lcom/google/android/libraries/places/api/model/PlusCode;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzs;->zzk:Lcom/google/android/libraries/places/api/model/PlusCode;

    return-object v0
.end method

.method public final getPriceLevel()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzs;->zzl:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getRating()Ljava/lang/Double;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzs;->zzm:Ljava/lang/Double;

    return-object v0
.end method

.method public final getTypes()Ljava/util/List;
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
    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzs;->zzn:Ljava/util/List;

    return-object v0
.end method

.method public final getUserRatingsTotal()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzs;->zzo:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getUtcOffsetMinutes()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzs;->zzp:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getViewport()Lcom/google/android/gms/maps/model/LatLngBounds;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzs;->zzq:Lcom/google/android/gms/maps/model/LatLngBounds;

    return-object v0
.end method

.method public final getWebsiteUri()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/api/model/zzs;->zzr:Landroid/net/Uri;

    return-object v0
.end method

.method public final setAddress(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/Place$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/api/model/zzs;->zza:Ljava/lang/String;

    return-object p0
.end method

.method public final setAddressComponents(Lcom/google/android/libraries/places/api/model/AddressComponents;)Lcom/google/android/libraries/places/api/model/Place$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/api/model/zzs;->zzb:Lcom/google/android/libraries/places/api/model/AddressComponents;

    return-object p0
.end method

.method public final setAttributions(Ljava/util/List;)Lcom/google/android/libraries/places/api/model/Place$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/libraries/places/api/model/Place$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/api/model/zzs;->zzd:Ljava/util/List;

    return-object p0
.end method

.method public final setBusinessStatus(Lcom/google/android/libraries/places/api/model/Place$BusinessStatus;)Lcom/google/android/libraries/places/api/model/Place$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/api/model/zzs;->zzc:Lcom/google/android/libraries/places/api/model/Place$BusinessStatus;

    return-object p0
.end method

.method public final setId(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/Place$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/api/model/zzs;->zze:Ljava/lang/String;

    return-object p0
.end method

.method public final setLatLng(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/libraries/places/api/model/Place$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/api/model/zzs;->zzf:Lcom/google/android/gms/maps/model/LatLng;

    return-object p0
.end method

.method public final setName(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/Place$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/api/model/zzs;->zzg:Ljava/lang/String;

    return-object p0
.end method

.method public final setOpeningHours(Lcom/google/android/libraries/places/api/model/OpeningHours;)Lcom/google/android/libraries/places/api/model/Place$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/api/model/zzs;->zzh:Lcom/google/android/libraries/places/api/model/OpeningHours;

    return-object p0
.end method

.method public final setPhoneNumber(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/Place$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/api/model/zzs;->zzi:Ljava/lang/String;

    return-object p0
.end method

.method public final setPhotoMetadatas(Ljava/util/List;)Lcom/google/android/libraries/places/api/model/Place$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/PhotoMetadata;",
            ">;)",
            "Lcom/google/android/libraries/places/api/model/Place$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/api/model/zzs;->zzj:Ljava/util/List;

    return-object p0
.end method

.method public final setPlusCode(Lcom/google/android/libraries/places/api/model/PlusCode;)Lcom/google/android/libraries/places/api/model/Place$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/api/model/zzs;->zzk:Lcom/google/android/libraries/places/api/model/PlusCode;

    return-object p0
.end method

.method public final setPriceLevel(Ljava/lang/Integer;)Lcom/google/android/libraries/places/api/model/Place$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/api/model/zzs;->zzl:Ljava/lang/Integer;

    return-object p0
.end method

.method public final setRating(Ljava/lang/Double;)Lcom/google/android/libraries/places/api/model/Place$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/api/model/zzs;->zzm:Ljava/lang/Double;

    return-object p0
.end method

.method public final setTypes(Ljava/util/List;)Lcom/google/android/libraries/places/api/model/Place$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/Place$Type;",
            ">;)",
            "Lcom/google/android/libraries/places/api/model/Place$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/api/model/zzs;->zzn:Ljava/util/List;

    return-object p0
.end method

.method public final setUserRatingsTotal(Ljava/lang/Integer;)Lcom/google/android/libraries/places/api/model/Place$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/api/model/zzs;->zzo:Ljava/lang/Integer;

    return-object p0
.end method

.method public final setUtcOffsetMinutes(Ljava/lang/Integer;)Lcom/google/android/libraries/places/api/model/Place$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/api/model/zzs;->zzp:Ljava/lang/Integer;

    return-object p0
.end method

.method public final setViewport(Lcom/google/android/gms/maps/model/LatLngBounds;)Lcom/google/android/libraries/places/api/model/Place$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/api/model/zzs;->zzq:Lcom/google/android/gms/maps/model/LatLngBounds;

    return-object p0
.end method

.method public final setWebsiteUri(Landroid/net/Uri;)Lcom/google/android/libraries/places/api/model/Place$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/api/model/zzs;->zzr:Landroid/net/Uri;

    return-object p0
.end method

.method public final zza()Lcom/google/android/libraries/places/api/model/Place;
    .locals 22

    move-object/from16 v0, p0

    .line 1
    new-instance v20, Lcom/google/android/libraries/places/api/model/zzar;

    move-object/from16 v1, v20

    iget-object v2, v0, Lcom/google/android/libraries/places/api/model/zzs;->zza:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/libraries/places/api/model/zzs;->zzb:Lcom/google/android/libraries/places/api/model/AddressComponents;

    iget-object v4, v0, Lcom/google/android/libraries/places/api/model/zzs;->zzc:Lcom/google/android/libraries/places/api/model/Place$BusinessStatus;

    iget-object v5, v0, Lcom/google/android/libraries/places/api/model/zzs;->zzd:Ljava/util/List;

    iget-object v6, v0, Lcom/google/android/libraries/places/api/model/zzs;->zze:Ljava/lang/String;

    iget-object v7, v0, Lcom/google/android/libraries/places/api/model/zzs;->zzf:Lcom/google/android/gms/maps/model/LatLng;

    iget-object v8, v0, Lcom/google/android/libraries/places/api/model/zzs;->zzg:Ljava/lang/String;

    iget-object v9, v0, Lcom/google/android/libraries/places/api/model/zzs;->zzh:Lcom/google/android/libraries/places/api/model/OpeningHours;

    iget-object v10, v0, Lcom/google/android/libraries/places/api/model/zzs;->zzi:Ljava/lang/String;

    iget-object v11, v0, Lcom/google/android/libraries/places/api/model/zzs;->zzj:Ljava/util/List;

    iget-object v12, v0, Lcom/google/android/libraries/places/api/model/zzs;->zzk:Lcom/google/android/libraries/places/api/model/PlusCode;

    iget-object v13, v0, Lcom/google/android/libraries/places/api/model/zzs;->zzl:Ljava/lang/Integer;

    iget-object v14, v0, Lcom/google/android/libraries/places/api/model/zzs;->zzm:Ljava/lang/Double;

    iget-object v15, v0, Lcom/google/android/libraries/places/api/model/zzs;->zzn:Ljava/util/List;

    move-object/from16 v21, v1

    iget-object v1, v0, Lcom/google/android/libraries/places/api/model/zzs;->zzo:Ljava/lang/Integer;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/google/android/libraries/places/api/model/zzs;->zzp:Ljava/lang/Integer;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/google/android/libraries/places/api/model/zzs;->zzq:Lcom/google/android/gms/maps/model/LatLngBounds;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/google/android/libraries/places/api/model/zzs;->zzr:Landroid/net/Uri;

    move-object/from16 v19, v1

    move-object/from16 v1, v21

    invoke-direct/range {v1 .. v19}, Lcom/google/android/libraries/places/api/model/zzar;-><init>(Ljava/lang/String;Lcom/google/android/libraries/places/api/model/AddressComponents;Lcom/google/android/libraries/places/api/model/Place$BusinessStatus;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLng;Ljava/lang/String;Lcom/google/android/libraries/places/api/model/OpeningHours;Ljava/lang/String;Ljava/util/List;Lcom/google/android/libraries/places/api/model/PlusCode;Ljava/lang/Integer;Ljava/lang/Double;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/google/android/gms/maps/model/LatLngBounds;Landroid/net/Uri;)V

    return-object v20
.end method
