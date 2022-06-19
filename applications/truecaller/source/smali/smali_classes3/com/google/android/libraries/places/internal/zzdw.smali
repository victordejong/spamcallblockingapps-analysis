.class public final Lcom/google/android/libraries/places/internal/zzdw;
.super Lcom/google/android/libraries/places/internal/zzed$zza;
.source "SourceFile"


# instance fields
.field private zza:Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;

.field private zzb:Lcom/google/android/libraries/places/internal/zzgi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/places/internal/zzgi<",
            "Lcom/google/android/libraries/places/api/model/Place$Field;",
            ">;"
        }
    .end annotation
.end field

.field private zzc:Lcom/google/android/libraries/places/internal/zzec;

.field private zzd:Ljava/lang/String;

.field private zze:Ljava/lang/String;

.field private zzf:Lcom/google/android/libraries/places/api/model/LocationBias;

.field private zzg:Lcom/google/android/libraries/places/api/model/LocationRestriction;

.field private zzh:Lcom/google/android/libraries/places/internal/zzgi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/places/internal/zzgi<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzi:Lcom/google/android/libraries/places/api/model/TypeFilter;

.field private zzj:Ljava/lang/Integer;

.field private zzk:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzed$zza;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/libraries/places/internal/zzed;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzed$zza;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzed;->zza()Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzdw;->zza:Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzed;->zzb()Lcom/google/android/libraries/places/internal/zzgi;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzdw;->zzb:Lcom/google/android/libraries/places/internal/zzgi;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzed;->zzc()Lcom/google/android/libraries/places/internal/zzec;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzdw;->zzc:Lcom/google/android/libraries/places/internal/zzec;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzed;->zzd()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzdw;->zzd:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzed;->zze()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzdw;->zze:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzed;->zzf()Lcom/google/android/libraries/places/api/model/LocationBias;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzdw;->zzf:Lcom/google/android/libraries/places/api/model/LocationBias;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzed;->zzg()Lcom/google/android/libraries/places/api/model/LocationRestriction;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzdw;->zzg:Lcom/google/android/libraries/places/api/model/LocationRestriction;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzed;->zzh()Lcom/google/android/libraries/places/internal/zzgi;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzdw;->zzh:Lcom/google/android/libraries/places/internal/zzgi;

    .line 11
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzed;->zzi()Lcom/google/android/libraries/places/api/model/TypeFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzdw;->zzi:Lcom/google/android/libraries/places/api/model/TypeFilter;

    .line 12
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzed;->zzj()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzdw;->zzj:Ljava/lang/Integer;

    .line 13
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzed;->zzk()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzdw;->zzk:Ljava/lang/Integer;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/libraries/places/internal/zzed;Lcom/google/android/libraries/places/internal/zzdt;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzdw;-><init>(Lcom/google/android/libraries/places/internal/zzed;)V

    return-void
.end method


# virtual methods
.method public final zza(I)Lcom/google/android/libraries/places/internal/zzed$zza;
    .locals 0

    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzdw;->zzj:Ljava/lang/Integer;

    return-object p0
.end method

.method public final zza(Lcom/google/android/libraries/places/api/model/LocationBias;)Lcom/google/android/libraries/places/internal/zzed$zza;
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzdw;->zzf:Lcom/google/android/libraries/places/api/model/LocationBias;

    return-object p0
.end method

.method public final zza(Lcom/google/android/libraries/places/api/model/LocationRestriction;)Lcom/google/android/libraries/places/internal/zzed$zza;
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzdw;->zzg:Lcom/google/android/libraries/places/api/model/LocationRestriction;

    return-object p0
.end method

.method public final zza(Lcom/google/android/libraries/places/api/model/TypeFilter;)Lcom/google/android/libraries/places/internal/zzed$zza;
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzdw;->zzi:Lcom/google/android/libraries/places/api/model/TypeFilter;

    return-object p0
.end method

.method public final zza(Lcom/google/android/libraries/places/internal/zzec;)Lcom/google/android/libraries/places/internal/zzed$zza;
    .locals 1

    const-string v0, "Null origin"

    .line 4
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzdw;->zzc:Lcom/google/android/libraries/places/internal/zzec;

    return-object p0
.end method

.method public final zza(Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;)Lcom/google/android/libraries/places/internal/zzed$zza;
    .locals 1

    const-string v0, "Null mode"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzdw;->zza:Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;

    return-object p0
.end method

.method public final zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzed$zza;
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzdw;->zzd:Ljava/lang/String;

    return-object p0
.end method

.method public final zza(Ljava/util/List;)Lcom/google/android/libraries/places/internal/zzed$zza;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/libraries/places/api/model/Place$Field;",
            ">;)",
            "Lcom/google/android/libraries/places/internal/zzed$zza;"
        }
    .end annotation

    .line 3
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzgi;->zza(Ljava/util/Collection;)Lcom/google/android/libraries/places/internal/zzgi;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzdw;->zzb:Lcom/google/android/libraries/places/internal/zzgi;

    return-object p0
.end method

.method public final zza()Lcom/google/android/libraries/places/internal/zzed;
    .locals 14

    .line 11
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzdw;->zza:Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;

    const-string v1, ""

    if-nez v0, :cond_0

    const-string v0, " mode"

    .line 12
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzdw;->zzb:Lcom/google/android/libraries/places/internal/zzgi;

    if-nez v0, :cond_1

    .line 14
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " placeFields"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzdw;->zzc:Lcom/google/android/libraries/places/internal/zzec;

    if-nez v0, :cond_2

    .line 16
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " origin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 17
    :cond_2
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzdw;->zzh:Lcom/google/android/libraries/places/internal/zzgi;

    if-nez v0, :cond_3

    .line 18
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " countries"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 19
    :cond_3
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzdw;->zzj:Ljava/lang/Integer;

    if-nez v0, :cond_4

    .line 20
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " primaryColor"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 21
    :cond_4
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzdw;->zzk:Ljava/lang/Integer;

    if-nez v0, :cond_5

    .line 22
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " primaryColorDark"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 23
    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 24
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Missing required properties:"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_6
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_7
    new-instance v0, Lcom/google/android/libraries/places/internal/zzdv;

    iget-object v3, p0, Lcom/google/android/libraries/places/internal/zzdw;->zza:Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;

    iget-object v4, p0, Lcom/google/android/libraries/places/internal/zzdw;->zzb:Lcom/google/android/libraries/places/internal/zzgi;

    iget-object v5, p0, Lcom/google/android/libraries/places/internal/zzdw;->zzc:Lcom/google/android/libraries/places/internal/zzec;

    iget-object v6, p0, Lcom/google/android/libraries/places/internal/zzdw;->zzd:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/libraries/places/internal/zzdw;->zze:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/android/libraries/places/internal/zzdw;->zzf:Lcom/google/android/libraries/places/api/model/LocationBias;

    iget-object v9, p0, Lcom/google/android/libraries/places/internal/zzdw;->zzg:Lcom/google/android/libraries/places/api/model/LocationRestriction;

    iget-object v10, p0, Lcom/google/android/libraries/places/internal/zzdw;->zzh:Lcom/google/android/libraries/places/internal/zzgi;

    iget-object v11, p0, Lcom/google/android/libraries/places/internal/zzdw;->zzi:Lcom/google/android/libraries/places/api/model/TypeFilter;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzdw;->zzj:Ljava/lang/Integer;

    .line 26
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzdw;->zzk:Ljava/lang/Integer;

    .line 27
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move-object v2, v0

    invoke-direct/range {v2 .. v13}, Lcom/google/android/libraries/places/internal/zzdv;-><init>(Lcom/google/android/libraries/places/widget/model/AutocompleteActivityMode;Lcom/google/android/libraries/places/internal/zzgi;Lcom/google/android/libraries/places/internal/zzec;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/libraries/places/api/model/LocationBias;Lcom/google/android/libraries/places/api/model/LocationRestriction;Lcom/google/android/libraries/places/internal/zzgi;Lcom/google/android/libraries/places/api/model/TypeFilter;II)V

    return-object v0
.end method

.method public final zzb(I)Lcom/google/android/libraries/places/internal/zzed$zza;
    .locals 0

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzdw;->zzk:Ljava/lang/Integer;

    return-object p0
.end method

.method public final zzb(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzed$zza;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzdw;->zze:Ljava/lang/String;

    return-object p0
.end method

.method public final zzb(Ljava/util/List;)Lcom/google/android/libraries/places/internal/zzed$zza;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/libraries/places/internal/zzed$zza;"
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzgi;->zza(Ljava/util/Collection;)Lcom/google/android/libraries/places/internal/zzgi;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzdw;->zzh:Lcom/google/android/libraries/places/internal/zzgi;

    return-object p0
.end method
