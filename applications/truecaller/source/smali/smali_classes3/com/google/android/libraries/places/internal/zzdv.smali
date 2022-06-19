.class public final Lcom/google/android/libraries/places/internal/zzdv;
.super Lcom/google/android/libraries/places/internal/zzdu;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/libraries/places/internal/zzdv;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/libraries/places/internal/zzdy;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzdy;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzdv;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;Lcom/google/android/libraries/places/internal/zzgi;Lcom/google/android/libraries/places/internal/zzec;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/libraries/places/api/model/LocationBias;Lcom/google/android/libraries/places/api/model/LocationRestriction;Lcom/google/android/libraries/places/internal/zzgi;Lcom/google/android/libraries/places/api/model/TypeFilter;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;",
            "Lcom/google/android/libraries/places/internal/zzgi<",
            "Lcom/google/android/libraries/places/api/model/Place$Field;",
            ">;",
            "Lcom/google/android/libraries/places/internal/zzec;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/libraries/places/api/model/LocationBias;",
            "Lcom/google/android/libraries/places/api/model/LocationRestriction;",
            "Lcom/google/android/libraries/places/internal/zzgi<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/libraries/places/api/model/TypeFilter;",
            "II)V"
        }
    .end annotation

    .line 1
    invoke-direct/range {p0 .. p11}, Lcom/google/android/libraries/places/internal/zzdu;-><init>(Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;Lcom/google/android/libraries/places/internal/zzgi;Lcom/google/android/libraries/places/internal/zzec;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/libraries/places/api/model/LocationBias;Lcom/google/android/libraries/places/api/model/LocationRestriction;Lcom/google/android/libraries/places/internal/zzgi;Lcom/google/android/libraries/places/api/model/TypeFilter;II)V

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzdu;->zza()Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzdu;->zzb()Lcom/google/android/libraries/places/internal/zzgi;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzdu;->zzc()Lcom/google/android/libraries/places/internal/zzec;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzdu;->zzd()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzdu;->zzd()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzdu;->zze()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 9
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzdu;->zze()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzdu;->zzf()Lcom/google/android/libraries/places/api/model/LocationBias;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 13
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzdu;->zzg()Lcom/google/android/libraries/places/api/model/LocationRestriction;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 14
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzdu;->zzh()Lcom/google/android/libraries/places/internal/zzgi;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 15
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzdu;->zzi()Lcom/google/android/libraries/places/api/model/TypeFilter;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 16
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzdu;->zzj()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 17
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzdu;->zzk()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
