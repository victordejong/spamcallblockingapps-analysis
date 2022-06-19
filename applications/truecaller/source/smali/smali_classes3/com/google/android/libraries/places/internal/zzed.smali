.class public abstract Lcom/google/android/libraries/places/internal/zzed;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/places/internal/zzed$zza;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza(Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;Ljava/util/List;Lcom/google/android/libraries/places/internal/zzec;)Lcom/google/android/libraries/places/internal/zzed$zza;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/Place$Field;",
            ">;",
            "Lcom/google/android/libraries/places/internal/zzec;",
            ")",
            "Lcom/google/android/libraries/places/internal/zzed$zza;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/libraries/places/internal/zzdw;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzdw;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzdw;->zzb(Ljava/util/List;)Lcom/google/android/libraries/places/internal/zzed$zza;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p0}, Lcom/google/android/libraries/places/internal/zzed$zza;->zza(Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;)Lcom/google/android/libraries/places/internal/zzed$zza;

    move-result-object p0

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/zzed$zza;->zza(Ljava/util/List;)Lcom/google/android/libraries/places/internal/zzed$zza;

    move-result-object p0

    .line 5
    invoke-virtual {p0, p2}, Lcom/google/android/libraries/places/internal/zzed$zza;->zza(Lcom/google/android/libraries/places/internal/zzec;)Lcom/google/android/libraries/places/internal/zzed$zza;

    move-result-object p0

    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/zzed$zza;->zza(I)Lcom/google/android/libraries/places/internal/zzed$zza;

    move-result-object p0

    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/zzed$zza;->zzb(I)Lcom/google/android/libraries/places/internal/zzed$zza;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract zza()Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;
.end method

.method public abstract zzb()Lcom/google/android/libraries/places/internal/zzgi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/libraries/places/internal/zzgi<",
            "Lcom/google/android/libraries/places/api/model/Place$Field;",
            ">;"
        }
    .end annotation
.end method

.method public abstract zzc()Lcom/google/android/libraries/places/internal/zzec;
.end method

.method public abstract zzd()Ljava/lang/String;
.end method

.method public abstract zze()Ljava/lang/String;
.end method

.method public abstract zzf()Lcom/google/android/libraries/places/api/model/LocationBias;
.end method

.method public abstract zzg()Lcom/google/android/libraries/places/api/model/LocationRestriction;
.end method

.method public abstract zzh()Lcom/google/android/libraries/places/internal/zzgi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/libraries/places/internal/zzgi<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract zzi()Lcom/google/android/libraries/places/api/model/TypeFilter;
.end method

.method public abstract zzj()I
.end method

.method public abstract zzk()I
.end method

.method public abstract zzl()Lcom/google/android/libraries/places/internal/zzed$zza;
.end method
