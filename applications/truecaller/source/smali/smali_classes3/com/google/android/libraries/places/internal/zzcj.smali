.class public final Lcom/google/android/libraries/places/internal/zzcj;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/places/internal/zzcj$zze;,
        Lcom/google/android/libraries/places/internal/zzcj$zzd;,
        Lcom/google/android/libraries/places/internal/zzcj$zzc;,
        Lcom/google/android/libraries/places/internal/zzcj$zza;,
        Lcom/google/android/libraries/places/internal/zzcj$zzb;
    }
.end annotation


# instance fields
.field private addressComponents:[Lcom/google/android/libraries/places/internal/zzcj$zzb;

.field private businessStatus:Ljava/lang/String;

.field private formattedAddress:Ljava/lang/String;

.field private geometry:Lcom/google/android/libraries/places/internal/zzcj$zza;

.field private icon:Ljava/lang/String;

.field private internationalPhoneNumber:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private openingHours:Lcom/google/android/libraries/places/internal/zzcj$zzc;

.field private photos:[Lcom/google/android/libraries/places/internal/zzcj$zzd;

.field private placeId:Ljava/lang/String;

.field private plusCode:Lcom/google/android/libraries/places/internal/zzcj$zze;

.field private priceLevel:Ljava/lang/Integer;

.field private rating:Ljava/lang/Double;

.field private types:[Ljava/lang/String;

.field private userRatingsTotal:Ljava/lang/Integer;

.field private utcOffset:Ljava/lang/Integer;

.field private website:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/libraries/places/internal/zzgi;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/libraries/places/internal/zzgi<",
            "Lcom/google/android/libraries/places/internal/zzcj$zzb;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzcj;->addressComponents:[Lcom/google/android/libraries/places/internal/zzcj$zzb;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzgi;->zza([Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgi;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzb()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzcj;->businessStatus:Ljava/lang/String;

    return-object v0
.end method

.method public final zzc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzcj;->formattedAddress:Ljava/lang/String;

    return-object v0
.end method

.method public final zzd()Lcom/google/android/libraries/places/internal/zzcj$zza;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzcj;->geometry:Lcom/google/android/libraries/places/internal/zzcj$zza;

    return-object v0
.end method

.method public final zze()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzcj;->internationalPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public final zzf()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzcj;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final zzg()Lcom/google/android/libraries/places/internal/zzcj$zzc;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzcj;->openingHours:Lcom/google/android/libraries/places/internal/zzcj$zzc;

    return-object v0
.end method

.method public final zzh()Lcom/google/android/libraries/places/internal/zzgi;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/libraries/places/internal/zzgi<",
            "Lcom/google/android/libraries/places/internal/zzcj$zzd;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzcj;->photos:[Lcom/google/android/libraries/places/internal/zzcj$zzd;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzgi;->zza([Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgi;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzi()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzcj;->placeId:Ljava/lang/String;

    return-object v0
.end method

.method public final zzj()Lcom/google/android/libraries/places/internal/zzcj$zze;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzcj;->plusCode:Lcom/google/android/libraries/places/internal/zzcj$zze;

    return-object v0
.end method

.method public final zzk()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzcj;->priceLevel:Ljava/lang/Integer;

    return-object v0
.end method

.method public final zzl()Ljava/lang/Double;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzcj;->rating:Ljava/lang/Double;

    return-object v0
.end method

.method public final zzm()Lcom/google/android/libraries/places/internal/zzgi;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/libraries/places/internal/zzgi<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzcj;->types:[Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzgi;->zza([Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgi;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzn()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzcj;->userRatingsTotal:Ljava/lang/Integer;

    return-object v0
.end method

.method public final zzo()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzcj;->utcOffset:Ljava/lang/Integer;

    return-object v0
.end method

.method public final zzp()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzcj;->website:Ljava/lang/String;

    return-object v0
.end method
