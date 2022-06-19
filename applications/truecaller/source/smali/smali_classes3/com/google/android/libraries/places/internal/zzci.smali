.class public final Lcom/google/android/libraries/places/internal/zzci;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/android/libraries/places/internal/zzgn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/places/internal/zzgn<",
            "Ljava/lang/String;",
            "Lcom/google/android/libraries/places/api/model/Place$BusinessStatus;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzb:Lcom/google/android/libraries/places/internal/zzgn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/places/internal/zzgn<",
            "Ljava/lang/String;",
            "Lcom/google/android/libraries/places/api/model/Place$Type;",
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
    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$BusinessStatus;->OPERATIONAL:Lcom/google/android/libraries/places/api/model/Place$BusinessStatus;

    const-string v2, "OPERATIONAL"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$BusinessStatus;->CLOSED_TEMPORARILY:Lcom/google/android/libraries/places/api/model/Place$BusinessStatus;

    const-string v2, "CLOSED_TEMPORARILY"

    .line 4
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$BusinessStatus;->CLOSED_PERMANENTLY:Lcom/google/android/libraries/places/api/model/Place$BusinessStatus;

    const-string v2, "CLOSED_PERMANENTLY"

    .line 5
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzgm;->zza()Lcom/google/android/libraries/places/internal/zzgn;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzci;->zza:Lcom/google/android/libraries/places/internal/zzgn;

    .line 7
    new-instance v0, Lcom/google/android/libraries/places/internal/zzgm;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzgm;-><init>()V

    .line 8
    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->ACCOUNTING:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "accounting"

    .line 9
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->ADMINISTRATIVE_AREA_LEVEL_1:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "administrative_area_level_1"

    .line 10
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->ADMINISTRATIVE_AREA_LEVEL_2:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "administrative_area_level_2"

    .line 11
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->ADMINISTRATIVE_AREA_LEVEL_3:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "administrative_area_level_3"

    .line 12
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->ADMINISTRATIVE_AREA_LEVEL_4:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "administrative_area_level_4"

    .line 13
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->ADMINISTRATIVE_AREA_LEVEL_5:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "administrative_area_level_5"

    .line 14
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->AIRPORT:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "airport"

    .line 15
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->AMUSEMENT_PARK:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "amusement_park"

    .line 16
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->AQUARIUM:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "aquarium"

    .line 17
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->ARCHIPELAGO:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "archipelago"

    .line 18
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->ART_GALLERY:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "art_gallery"

    .line 19
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->ATM:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "atm"

    .line 20
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->BAKERY:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "bakery"

    .line 21
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->BANK:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "bank"

    .line 22
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->BAR:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "bar"

    .line 23
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->BEAUTY_SALON:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "beauty_salon"

    .line 24
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->BICYCLE_STORE:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "bicycle_store"

    .line 25
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->BOOK_STORE:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "book_store"

    .line 26
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->BOWLING_ALLEY:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "bowling_alley"

    .line 27
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->BUS_STATION:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "bus_station"

    .line 28
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->CAFE:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "cafe"

    .line 29
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->CAMPGROUND:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "campground"

    .line 30
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->CAR_DEALER:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "car_dealer"

    .line 31
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->CAR_RENTAL:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "car_rental"

    .line 32
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->CAR_REPAIR:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "car_repair"

    .line 33
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->CAR_WASH:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "car_wash"

    .line 34
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->CASINO:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "casino"

    .line 35
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->CEMETERY:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "cemetery"

    .line 36
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->CHURCH:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "church"

    .line 37
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->CITY_HALL:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "city_hall"

    .line 38
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->CLOTHING_STORE:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "clothing_store"

    .line 39
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->COLLOQUIAL_AREA:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "colloquial_area"

    .line 40
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->CONTINENT:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "continent"

    .line 41
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->CONVENIENCE_STORE:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "convenience_store"

    .line 42
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->COUNTRY:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "country"

    .line 43
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->COURTHOUSE:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "courthouse"

    .line 44
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->DENTIST:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "dentist"

    .line 45
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->DEPARTMENT_STORE:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "department_store"

    .line 46
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->DOCTOR:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "doctor"

    .line 47
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->DRUGSTORE:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "drugstore"

    .line 48
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->ELECTRICIAN:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "electrician"

    .line 49
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->ELECTRONICS_STORE:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "electronics_store"

    .line 50
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->EMBASSY:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "embassy"

    .line 51
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->ESTABLISHMENT:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "establishment"

    .line 52
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->FINANCE:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "finance"

    .line 53
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->FIRE_STATION:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "fire_station"

    .line 54
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->FLOOR:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "floor"

    .line 55
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->FLORIST:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "florist"

    .line 56
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->FOOD:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "food"

    .line 57
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->FUNERAL_HOME:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "funeral_home"

    .line 58
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->FURNITURE_STORE:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "furniture_store"

    .line 59
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->GAS_STATION:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "gas_station"

    .line 60
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->GENERAL_CONTRACTOR:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "general_contractor"

    .line 61
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->GEOCODE:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "geocode"

    .line 62
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->GROCERY_OR_SUPERMARKET:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "grocery_or_supermarket"

    .line 63
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->GYM:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "gym"

    .line 64
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->HAIR_CARE:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "hair_care"

    .line 65
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->HARDWARE_STORE:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "hardware_store"

    .line 66
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->HEALTH:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "health"

    .line 67
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->HINDU_TEMPLE:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "hindu_temple"

    .line 68
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->HOME_GOODS_STORE:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "home_goods_store"

    .line 69
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->HOSPITAL:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "hospital"

    .line 70
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->INSURANCE_AGENCY:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "insurance_agency"

    .line 71
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->INTERSECTION:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "intersection"

    .line 72
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->JEWELRY_STORE:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "jewelry_store"

    .line 73
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->LAUNDRY:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "laundry"

    .line 74
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->LAWYER:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "lawyer"

    .line 75
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->LIBRARY:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "library"

    .line 76
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->LIGHT_RAIL_STATION:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "light_rail_station"

    .line 77
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->LIQUOR_STORE:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "liquor_store"

    .line 78
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->LOCAL_GOVERNMENT_OFFICE:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "local_government_office"

    .line 79
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->LOCALITY:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "locality"

    .line 80
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->LOCKSMITH:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "locksmith"

    .line 81
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->LODGING:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "lodging"

    .line 82
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->MEAL_DELIVERY:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "meal_delivery"

    .line 83
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->MEAL_TAKEAWAY:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "meal_takeaway"

    .line 84
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->MOSQUE:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "mosque"

    .line 85
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->MOVIE_RENTAL:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "movie_rental"

    .line 86
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->MOVIE_THEATER:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "movie_theater"

    .line 87
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->MOVING_COMPANY:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "moving_company"

    .line 88
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->MUSEUM:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "museum"

    .line 89
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->NATURAL_FEATURE:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "natural_feature"

    .line 90
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->NEIGHBORHOOD:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "neighborhood"

    .line 91
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->NIGHT_CLUB:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "night_club"

    .line 92
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->PAINTER:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "painter"

    .line 93
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->PARK:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "park"

    .line 94
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->PARKING:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "parking"

    .line 95
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->PET_STORE:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "pet_store"

    .line 96
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->PHARMACY:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "pharmacy"

    .line 97
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->PHYSIOTHERAPIST:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "physiotherapist"

    .line 98
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->PLACE_OF_WORSHIP:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "place_of_worship"

    .line 99
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->PLUMBER:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "plumber"

    .line 100
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->PLUS_CODE:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "plus_code"

    .line 101
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->POINT_OF_INTEREST:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "point_of_interest"

    .line 102
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->POLICE:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "police"

    .line 103
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->POLITICAL:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "political"

    .line 104
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->POST_BOX:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "post_box"

    .line 105
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->POST_OFFICE:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "post_office"

    .line 106
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->POSTAL_CODE_PREFIX:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "postal_code_prefix"

    .line 107
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->POSTAL_CODE_SUFFIX:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "postal_code_suffix"

    .line 108
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->POSTAL_CODE:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "postal_code"

    .line 109
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->POSTAL_TOWN:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "postal_town"

    .line 110
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->PREMISE:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "premise"

    .line 111
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->PRIMARY_SCHOOL:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "primary_school"

    .line 112
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->REAL_ESTATE_AGENCY:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "real_estate_agency"

    .line 113
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->RESTAURANT:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "restaurant"

    .line 114
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->ROOFING_CONTRACTOR:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "roofing_contractor"

    .line 115
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->ROOM:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "room"

    .line 116
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->ROUTE:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "route"

    .line 117
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->RV_PARK:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "rv_park"

    .line 118
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->SCHOOL:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "school"

    .line 119
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->SECONDARY_SCHOOL:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "secondary_school"

    .line 120
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->SHOE_STORE:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "shoe_store"

    .line 121
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->SHOPPING_MALL:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "shopping_mall"

    .line 122
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->SPA:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "spa"

    .line 123
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->STADIUM:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "stadium"

    .line 124
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->STORAGE:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "storage"

    .line 125
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->STORE:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "store"

    .line 126
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->STREET_ADDRESS:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "street_address"

    .line 127
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->STREET_NUMBER:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "street_number"

    .line 128
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->SUBLOCALITY_LEVEL_1:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "sublocality_level_1"

    .line 129
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->SUBLOCALITY_LEVEL_2:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "sublocality_level_2"

    .line 130
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->SUBLOCALITY_LEVEL_3:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "sublocality_level_3"

    .line 131
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->SUBLOCALITY_LEVEL_4:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "sublocality_level_4"

    .line 132
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->SUBLOCALITY_LEVEL_5:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "sublocality_level_5"

    .line 133
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->SUBLOCALITY:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "sublocality"

    .line 134
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->SUBPREMISE:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "subpremise"

    .line 135
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->SUBWAY_STATION:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "subway_station"

    .line 136
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->SUPERMARKET:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "supermarket"

    .line 137
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->SYNAGOGUE:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "synagogue"

    .line 138
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->TAXI_STAND:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "taxi_stand"

    .line 139
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->TOURIST_ATTRACTION:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "tourist_attraction"

    .line 140
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->TOWN_SQUARE:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "town_square"

    .line 141
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->TRAIN_STATION:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "train_station"

    .line 142
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->TRANSIT_STATION:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "transit_station"

    .line 143
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->TRAVEL_AGENCY:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "travel_agency"

    .line 144
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->UNIVERSITY:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "university"

    .line 145
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->VETERINARY_CARE:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "veterinary_care"

    .line 146
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/api/model/Place$Type;->ZOO:Lcom/google/android/libraries/places/api/model/Place$Type;

    const-string v2, "zoo"

    .line 147
    invoke-virtual {v0, v2, v1}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    .line 148
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzgm;->zza()Lcom/google/android/libraries/places/internal/zzgn;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/internal/zzci;->zzb:Lcom/google/android/libraries/places/internal/zzgn;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static zza(Lcom/google/android/libraries/places/internal/zzcj$zza$zzb;)Lcom/google/android/gms/maps/model/LatLng;
    .locals 5

    if-eqz p0, :cond_1

    .line 104
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzcj$zza$zzb;->zza()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzcj$zza$zzb;->zzb()Ljava/lang/Double;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 105
    :cond_0
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzcj$zza$zzb;->zza()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzcj$zza$zzb;->zzb()Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static zza(Lcom/google/android/libraries/places/internal/zzcj$zzb;)Lcom/google/android/libraries/places/api/model/AddressComponent;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/api/ApiException;
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 72
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzcj$zzb;->zza()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzcj$zzb;->zzc()Lcom/google/android/libraries/places/internal/zzgi;

    move-result-object v1

    .line 73
    invoke-static {v0, v1}, Lcom/google/android/libraries/places/api/model/AddressComponent;->builder(Ljava/lang/String;Ljava/util/List;)Lcom/google/android/libraries/places/api/model/AddressComponent$Builder;

    move-result-object v0

    .line 74
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzcj$zzb;->zzb()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/places/api/model/AddressComponent$Builder;->setShortName(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/AddressComponent$Builder;

    move-result-object p0

    .line 75
    invoke-virtual {p0}, Lcom/google/android/libraries/places/api/model/AddressComponent$Builder;->build()Lcom/google/android/libraries/places/api/model/AddressComponent;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    :goto_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 76
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "AddressComponent not properly defined (%s)."

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 77
    invoke-static {p0}, Lcom/google/android/libraries/places/internal/zzci;->zzb(Ljava/lang/String;)Lcom/google/android/gms/common/api/ApiException;

    move-result-object p0

    throw p0
.end method

.method private static zza(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/LocalTime;
    .locals 5

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string v3, "Unable to convert %s to LocalTime, must be of format \"hhmm\"."

    .line 93
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 94
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/zzft;->zza(ZLjava/lang/Object;)V

    const/4 v0, 0x2

    .line 95
    :try_start_0
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 96
    invoke-virtual {p0, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 97
    invoke-static {v2, p0}, Lcom/google/android/libraries/places/api/model/LocalTime;->newInstance(II)Lcom/google/android/libraries/places/api/model/LocalTime;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 98
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public static zza(Lcom/google/android/libraries/places/internal/zzcj;Ljava/util/List;)Lcom/google/android/libraries/places/api/model/Place;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/places/internal/zzcj;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/libraries/places/api/model/Place;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/api/ApiException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/libraries/places/api/model/Place;->builder()Lcom/google/android/libraries/places/api/model/Place$Builder;

    move-result-object v0

    move-object/from16 v1, p1

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/api/model/Place$Builder;->setAttributions(Ljava/util/List;)Lcom/google/android/libraries/places/api/model/Place$Builder;

    if-eqz p0, :cond_14

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/libraries/places/internal/zzcj;->zza()Lcom/google/android/libraries/places/internal/zzgi;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move-object v1, v3

    goto :goto_1

    .line 4
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v5

    move v6, v2

    :goto_0
    if-ge v6, v5, :cond_1

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lcom/google/android/libraries/places/internal/zzcj$zzb;

    .line 6
    invoke-static {v7}, Lcom/google/android/libraries/places/internal/zzci;->zza(Lcom/google/android/libraries/places/internal/zzcj$zzb;)Lcom/google/android/libraries/places/api/model/AddressComponent;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/google/android/libraries/places/internal/zzci;->zza(Ljava/util/Collection;Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {v4}, Lcom/google/android/libraries/places/api/model/AddressComponents;->newInstance(Ljava/util/List;)Lcom/google/android/libraries/places/api/model/AddressComponents;

    move-result-object v1

    .line 8
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/libraries/places/internal/zzcj;->zzd()Lcom/google/android/libraries/places/internal/zzcj$zza;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 9
    invoke-virtual {v4}, Lcom/google/android/libraries/places/internal/zzcj$zza;->zza()Lcom/google/android/libraries/places/internal/zzcj$zza$zzb;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/libraries/places/internal/zzci;->zza(Lcom/google/android/libraries/places/internal/zzcj$zza$zzb;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v5

    .line 10
    invoke-virtual {v4}, Lcom/google/android/libraries/places/internal/zzcj$zza;->zzb()Lcom/google/android/libraries/places/internal/zzcj$zza$zza;

    move-result-object v4

    if-nez v4, :cond_3

    :cond_2
    :goto_2
    move-object v7, v3

    goto :goto_3

    .line 11
    :cond_3
    invoke-virtual {v4}, Lcom/google/android/libraries/places/internal/zzcj$zza$zza;->zzb()Lcom/google/android/libraries/places/internal/zzcj$zza$zzb;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/libraries/places/internal/zzci;->zza(Lcom/google/android/libraries/places/internal/zzcj$zza$zzb;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v6

    .line 12
    invoke-virtual {v4}, Lcom/google/android/libraries/places/internal/zzcj$zza$zza;->zza()Lcom/google/android/libraries/places/internal/zzcj$zza$zzb;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/libraries/places/internal/zzci;->zza(Lcom/google/android/libraries/places/internal/zzcj$zza$zzb;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v4

    if-eqz v6, :cond_2

    if-nez v4, :cond_4

    goto :goto_2

    .line 13
    :cond_4
    new-instance v7, Lcom/google/android/gms/maps/model/LatLngBounds;

    invoke-direct {v7, v6, v4}, Lcom/google/android/gms/maps/model/LatLngBounds;-><init>(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)V

    goto :goto_3

    :cond_5
    move-object v5, v3

    move-object v7, v5

    .line 14
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/libraries/places/internal/zzcj;->zzp()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 15
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    goto :goto_4

    :cond_6
    move-object v4, v3

    .line 16
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/libraries/places/internal/zzcj;->zzc()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/google/android/libraries/places/api/model/Place$Builder;->setAddress(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/Place$Builder;

    move-result-object v6

    .line 17
    invoke-virtual {v6, v1}, Lcom/google/android/libraries/places/api/model/Place$Builder;->setAddressComponents(Lcom/google/android/libraries/places/api/model/AddressComponents;)Lcom/google/android/libraries/places/api/model/Place$Builder;

    move-result-object v1

    .line 18
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/libraries/places/internal/zzcj;->zzb()Ljava/lang/String;

    move-result-object v6

    .line 19
    sget-object v8, Lcom/google/android/libraries/places/internal/zzci;->zza:Lcom/google/android/libraries/places/internal/zzgn;

    invoke-virtual {v8, v6, v3}, Lcom/google/android/libraries/places/internal/zzgn;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/libraries/places/api/model/Place$BusinessStatus;

    .line 20
    invoke-virtual {v1, v6}, Lcom/google/android/libraries/places/api/model/Place$Builder;->setBusinessStatus(Lcom/google/android/libraries/places/api/model/Place$BusinessStatus;)Lcom/google/android/libraries/places/api/model/Place$Builder;

    move-result-object v1

    .line 21
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/libraries/places/internal/zzcj;->zzi()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/google/android/libraries/places/api/model/Place$Builder;->setId(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/Place$Builder;

    move-result-object v1

    .line 22
    invoke-virtual {v1, v5}, Lcom/google/android/libraries/places/api/model/Place$Builder;->setLatLng(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/libraries/places/api/model/Place$Builder;

    move-result-object v1

    .line 23
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/libraries/places/internal/zzcj;->zzf()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/google/android/libraries/places/api/model/Place$Builder;->setName(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/Place$Builder;

    move-result-object v1

    .line 24
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/libraries/places/internal/zzcj;->zze()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/google/android/libraries/places/api/model/Place$Builder;->setPhoneNumber(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/Place$Builder;

    move-result-object v1

    .line 25
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/libraries/places/internal/zzcj;->zzh()Lcom/google/android/libraries/places/internal/zzgi;

    move-result-object v5

    if-eqz v5, :cond_d

    .line 26
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 27
    invoke-virtual {v5}, Ljava/util/AbstractCollection;->size()I

    move-result v8

    move v9, v2

    :goto_5
    if-ge v9, v8, :cond_e

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v9, v9, 0x1

    check-cast v10, Lcom/google/android/libraries/places/internal/zzcj$zzd;

    if-nez v10, :cond_7

    move-object v10, v3

    goto :goto_a

    .line 28
    :cond_7
    invoke-virtual {v10}, Lcom/google/android/libraries/places/internal/zzcj$zzd;->zzc()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_c

    .line 29
    invoke-virtual {v10}, Lcom/google/android/libraries/places/internal/zzcj$zzd;->zza()Ljava/lang/Integer;

    move-result-object v11

    .line 30
    invoke-virtual {v10}, Lcom/google/android/libraries/places/internal/zzcj$zzd;->zzb()Ljava/lang/Integer;

    move-result-object v12

    .line 31
    invoke-virtual {v10}, Lcom/google/android/libraries/places/internal/zzcj$zzd;->zzc()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/google/android/libraries/places/api/model/PhotoMetadata;->builder(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/PhotoMetadata$Builder;

    move-result-object v13

    .line 32
    invoke-virtual {v10}, Lcom/google/android/libraries/places/internal/zzcj$zzd;->zzd()Lcom/google/android/libraries/places/internal/zzgi;

    move-result-object v10

    if-eqz v10, :cond_9

    .line 33
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_8

    goto :goto_6

    :cond_8
    const-string v14, ", "

    .line 34
    invoke-static {v14}, Lcom/google/android/libraries/places/internal/zzfj;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzfj;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/android/libraries/places/internal/zzfj;->zza()Lcom/google/android/libraries/places/internal/zzfj;

    move-result-object v14

    .line 35
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 36
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v15, v10}, Lcom/google/android/libraries/places/internal/zzfj;->zza(Ljava/lang/StringBuilder;Ljava/util/Iterator;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_7

    :cond_9
    :goto_6
    const-string v10, ""

    .line 37
    :goto_7
    invoke-virtual {v13, v10}, Lcom/google/android/libraries/places/api/model/PhotoMetadata$Builder;->setAttributions(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/PhotoMetadata$Builder;

    move-result-object v10

    if-nez v11, :cond_a

    move v11, v2

    goto :goto_8

    .line 38
    :cond_a
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    :goto_8
    invoke-virtual {v10, v11}, Lcom/google/android/libraries/places/api/model/PhotoMetadata$Builder;->setHeight(I)Lcom/google/android/libraries/places/api/model/PhotoMetadata$Builder;

    move-result-object v10

    if-nez v12, :cond_b

    move v11, v2

    goto :goto_9

    .line 39
    :cond_b
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v11

    :goto_9
    invoke-virtual {v10, v11}, Lcom/google/android/libraries/places/api/model/PhotoMetadata$Builder;->setWidth(I)Lcom/google/android/libraries/places/api/model/PhotoMetadata$Builder;

    move-result-object v10

    .line 40
    invoke-virtual {v10}, Lcom/google/android/libraries/places/api/model/PhotoMetadata$Builder;->build()Lcom/google/android/libraries/places/api/model/PhotoMetadata;

    move-result-object v10

    .line 41
    :goto_a
    invoke-static {v6, v10}, Lcom/google/android/libraries/places/internal/zzci;->zza(Ljava/util/Collection;Ljava/lang/Object;)Z

    goto :goto_5

    :cond_c
    const-string v0, "Photo reference not provided for a PhotoMetadata result."

    .line 42
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzci;->zzb(Ljava/lang/String;)Lcom/google/android/gms/common/api/ApiException;

    move-result-object v0

    throw v0

    :cond_d
    move-object v6, v3

    .line 43
    :cond_e
    invoke-virtual {v1, v6}, Lcom/google/android/libraries/places/api/model/Place$Builder;->setPhotoMetadatas(Ljava/util/List;)Lcom/google/android/libraries/places/api/model/Place$Builder;

    move-result-object v1

    .line 44
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/libraries/places/internal/zzcj;->zzg()Lcom/google/android/libraries/places/internal/zzcj$zzc;

    move-result-object v5

    if-eqz v5, :cond_12

    .line 45
    invoke-static {}, Lcom/google/android/libraries/places/api/model/OpeningHours;->builder()Lcom/google/android/libraries/places/api/model/OpeningHours$Builder;

    move-result-object v6

    .line 46
    invoke-virtual {v5}, Lcom/google/android/libraries/places/internal/zzcj$zzc;->zza()Lcom/google/android/libraries/places/internal/zzgi;

    move-result-object v8

    if-eqz v8, :cond_10

    .line 47
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 48
    invoke-virtual {v8}, Ljava/util/AbstractCollection;->size()I

    move-result v10

    :goto_b
    if-ge v2, v10, :cond_11

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v2, v2, 0x1

    check-cast v11, Lcom/google/android/libraries/places/internal/zzcj$zzc$zza;

    if-eqz v11, :cond_f

    .line 49
    invoke-static {}, Lcom/google/android/libraries/places/api/model/Period;->builder()Lcom/google/android/libraries/places/api/model/Period$Builder;

    move-result-object v12

    .line 50
    invoke-virtual {v11}, Lcom/google/android/libraries/places/internal/zzcj$zzc$zza;->zzb()Lcom/google/android/libraries/places/internal/zzcj$zzc$zzb;

    move-result-object v13

    invoke-static {v13}, Lcom/google/android/libraries/places/internal/zzci;->zza(Lcom/google/android/libraries/places/internal/zzcj$zzc$zzb;)Lcom/google/android/libraries/places/api/model/TimeOfWeek;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/google/android/libraries/places/api/model/Period$Builder;->setOpen(Lcom/google/android/libraries/places/api/model/TimeOfWeek;)Lcom/google/android/libraries/places/api/model/Period$Builder;

    move-result-object v12

    .line 51
    invoke-virtual {v11}, Lcom/google/android/libraries/places/internal/zzcj$zzc$zza;->zza()Lcom/google/android/libraries/places/internal/zzcj$zzc$zzb;

    move-result-object v11

    invoke-static {v11}, Lcom/google/android/libraries/places/internal/zzci;->zza(Lcom/google/android/libraries/places/internal/zzcj$zzc$zzb;)Lcom/google/android/libraries/places/api/model/TimeOfWeek;

    move-result-object v11

    invoke-virtual {v12, v11}, Lcom/google/android/libraries/places/api/model/Period$Builder;->setClose(Lcom/google/android/libraries/places/api/model/TimeOfWeek;)Lcom/google/android/libraries/places/api/model/Period$Builder;

    move-result-object v11

    .line 52
    invoke-virtual {v11}, Lcom/google/android/libraries/places/api/model/Period$Builder;->build()Lcom/google/android/libraries/places/api/model/Period;

    move-result-object v11

    goto :goto_c

    :cond_f
    move-object v11, v3

    .line 53
    :goto_c
    invoke-static {v9, v11}, Lcom/google/android/libraries/places/internal/zzci;->zza(Ljava/util/Collection;Ljava/lang/Object;)Z

    goto :goto_b

    :cond_10
    move-object v9, v3

    .line 54
    :cond_11
    invoke-static {v9}, Lcom/google/android/libraries/places/internal/zzci;->zzb(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/google/android/libraries/places/api/model/OpeningHours$Builder;->setPeriods(Ljava/util/List;)Lcom/google/android/libraries/places/api/model/OpeningHours$Builder;

    move-result-object v2

    .line 55
    invoke-virtual {v5}, Lcom/google/android/libraries/places/internal/zzcj$zzc;->zzb()Lcom/google/android/libraries/places/internal/zzgi;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/libraries/places/internal/zzci;->zzb(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/google/android/libraries/places/api/model/OpeningHours$Builder;->setWeekdayText(Ljava/util/List;)Lcom/google/android/libraries/places/api/model/OpeningHours$Builder;

    move-result-object v2

    .line 56
    invoke-virtual {v2}, Lcom/google/android/libraries/places/api/model/OpeningHours$Builder;->build()Lcom/google/android/libraries/places/api/model/OpeningHours;

    move-result-object v2

    goto :goto_d

    :cond_12
    move-object v2, v3

    .line 57
    :goto_d
    invoke-virtual {v1, v2}, Lcom/google/android/libraries/places/api/model/Place$Builder;->setOpeningHours(Lcom/google/android/libraries/places/api/model/OpeningHours;)Lcom/google/android/libraries/places/api/model/Place$Builder;

    move-result-object v1

    .line 58
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/libraries/places/internal/zzcj;->zzj()Lcom/google/android/libraries/places/internal/zzcj$zze;

    move-result-object v2

    if-nez v2, :cond_13

    goto :goto_e

    .line 59
    :cond_13
    invoke-static {}, Lcom/google/android/libraries/places/api/model/PlusCode;->builder()Lcom/google/android/libraries/places/api/model/PlusCode$Builder;

    move-result-object v3

    .line 60
    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/zzcj$zze;->zza()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/android/libraries/places/api/model/PlusCode$Builder;->setCompoundCode(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/PlusCode$Builder;

    move-result-object v3

    .line 61
    invoke-virtual {v2}, Lcom/google/android/libraries/places/internal/zzcj$zze;->zzb()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/google/android/libraries/places/api/model/PlusCode$Builder;->setGlobalCode(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/PlusCode$Builder;

    move-result-object v2

    .line 62
    invoke-virtual {v2}, Lcom/google/android/libraries/places/api/model/PlusCode$Builder;->build()Lcom/google/android/libraries/places/api/model/PlusCode;

    move-result-object v3

    .line 63
    :goto_e
    invoke-virtual {v1, v3}, Lcom/google/android/libraries/places/api/model/Place$Builder;->setPlusCode(Lcom/google/android/libraries/places/api/model/PlusCode;)Lcom/google/android/libraries/places/api/model/Place$Builder;

    move-result-object v1

    .line 64
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/libraries/places/internal/zzcj;->zzk()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/libraries/places/api/model/Place$Builder;->setPriceLevel(Ljava/lang/Integer;)Lcom/google/android/libraries/places/api/model/Place$Builder;

    move-result-object v1

    .line 65
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/libraries/places/internal/zzcj;->zzl()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/libraries/places/api/model/Place$Builder;->setRating(Ljava/lang/Double;)Lcom/google/android/libraries/places/api/model/Place$Builder;

    move-result-object v1

    .line 66
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/libraries/places/internal/zzcj;->zzm()Lcom/google/android/libraries/places/internal/zzgi;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzci;->zza(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/libraries/places/api/model/Place$Builder;->setTypes(Ljava/util/List;)Lcom/google/android/libraries/places/api/model/Place$Builder;

    move-result-object v1

    .line 67
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/libraries/places/internal/zzcj;->zzn()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/libraries/places/api/model/Place$Builder;->setUserRatingsTotal(Ljava/lang/Integer;)Lcom/google/android/libraries/places/api/model/Place$Builder;

    move-result-object v1

    .line 68
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/libraries/places/internal/zzcj;->zzo()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/libraries/places/api/model/Place$Builder;->setUtcOffsetMinutes(Ljava/lang/Integer;)Lcom/google/android/libraries/places/api/model/Place$Builder;

    move-result-object v1

    .line 69
    invoke-virtual {v1, v7}, Lcom/google/android/libraries/places/api/model/Place$Builder;->setViewport(Lcom/google/android/gms/maps/model/LatLngBounds;)Lcom/google/android/libraries/places/api/model/Place$Builder;

    move-result-object v1

    .line 70
    invoke-virtual {v1, v4}, Lcom/google/android/libraries/places/api/model/Place$Builder;->setWebsiteUri(Landroid/net/Uri;)Lcom/google/android/libraries/places/api/model/Place$Builder;

    .line 71
    :cond_14
    invoke-virtual {v0}, Lcom/google/android/libraries/places/api/model/Place$Builder;->build()Lcom/google/android/libraries/places/api/model/Place;

    move-result-object v0

    return-object v0
.end method

.method private static zza(Lcom/google/android/libraries/places/internal/zzcj$zzc$zzb;)Lcom/google/android/libraries/places/api/model/TimeOfWeek;
    .locals 4

    if-eqz p0, :cond_2

    .line 78
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzcj$zzc$zzb;->zza()Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "Unable to convert Pablo response to TimeOfWeek: The \"day\" field is missing."

    .line 79
    invoke-static {v0, v3}, Lcom/google/android/libraries/places/internal/zzft;->zza(ZLjava/lang/Object;)V

    .line 80
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzcj$zzc$zzb;->zzb()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    const-string v0, "Unable to convert Pablo response to TimeOfWeek: The \"time\" field is missing."

    .line 81
    invoke-static {v1, v0}, Lcom/google/android/libraries/places/internal/zzft;->zza(ZLjava/lang/Object;)V

    .line 82
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzcj$zzc$zzb;->zza()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 83
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "pabloDayOfWeek can only be an integer between 0 and 6"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 84
    :pswitch_0
    sget-object v0, Lcom/google/android/libraries/places/api/model/DayOfWeek;->SATURDAY:Lcom/google/android/libraries/places/api/model/DayOfWeek;

    goto :goto_2

    .line 85
    :pswitch_1
    sget-object v0, Lcom/google/android/libraries/places/api/model/DayOfWeek;->FRIDAY:Lcom/google/android/libraries/places/api/model/DayOfWeek;

    goto :goto_2

    .line 86
    :pswitch_2
    sget-object v0, Lcom/google/android/libraries/places/api/model/DayOfWeek;->THURSDAY:Lcom/google/android/libraries/places/api/model/DayOfWeek;

    goto :goto_2

    .line 87
    :pswitch_3
    sget-object v0, Lcom/google/android/libraries/places/api/model/DayOfWeek;->WEDNESDAY:Lcom/google/android/libraries/places/api/model/DayOfWeek;

    goto :goto_2

    .line 88
    :pswitch_4
    sget-object v0, Lcom/google/android/libraries/places/api/model/DayOfWeek;->TUESDAY:Lcom/google/android/libraries/places/api/model/DayOfWeek;

    goto :goto_2

    .line 89
    :pswitch_5
    sget-object v0, Lcom/google/android/libraries/places/api/model/DayOfWeek;->MONDAY:Lcom/google/android/libraries/places/api/model/DayOfWeek;

    goto :goto_2

    .line 90
    :pswitch_6
    sget-object v0, Lcom/google/android/libraries/places/api/model/DayOfWeek;->SUNDAY:Lcom/google/android/libraries/places/api/model/DayOfWeek;

    .line 91
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzcj$zzc$zzb;->zzb()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/libraries/places/internal/zzci;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/api/model/LocalTime;

    move-result-object p0

    .line 92
    invoke-static {v0, p0}, Lcom/google/android/libraries/places/api/model/TimeOfWeek;->newInstance(Lcom/google/android/libraries/places/api/model/DayOfWeek;Lcom/google/android/libraries/places/api/model/LocalTime;)Lcom/google/android/libraries/places/api/model/TimeOfWeek;

    move-result-object p0

    goto :goto_3

    :cond_2
    const/4 p0, 0x0

    :goto_3
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static zza(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/Place$Type;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 99
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 100
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 101
    sget-object v3, Lcom/google/android/libraries/places/internal/zzci;->zzb:Lcom/google/android/libraries/places/internal/zzgn;

    invoke-virtual {v3, v2}, Lcom/google/android/libraries/places/internal/zzgn;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 102
    invoke-virtual {v3, v2}, Lcom/google/android/libraries/places/internal/zzgn;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/libraries/places/api/model/Place$Type;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 103
    sget-object p0, Lcom/google/android/libraries/places/api/model/Place$Type;->OTHER:Lcom/google/android/libraries/places/api/model/Place$Type;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    return-object v0
.end method

.method private static zza(Ljava/util/Collection;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;TT;)Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 106
    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static zzb(Ljava/lang/String;)Lcom/google/android/gms/common/api/ApiException;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/common/api/ApiException;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "Unexpected server error: "

    if-eqz v2, :cond_0

    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    const/16 v2, 0x8

    invoke-direct {v1, v2, p0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method

.method public static zzb(Ljava/util/List;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    if-eqz p0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method
