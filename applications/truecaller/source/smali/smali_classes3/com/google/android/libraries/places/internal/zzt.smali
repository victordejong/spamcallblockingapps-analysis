.class public final Lcom/google/android/libraries/places/internal/zzt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/libraries/places/internal/zzcy;


# instance fields
.field private final zza:Lcom/google/android/libraries/places/internal/zzdn;

.field private final zzb:Lcom/google/android/libraries/places/internal/zzdj;

.field private final zzc:Lcom/google/android/libraries/places/internal/zzds;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/places/internal/zzdn;Lcom/google/android/libraries/places/internal/zzdj;Lcom/google/android/libraries/places/internal/zzds;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzt;->zza:Lcom/google/android/libraries/places/internal/zzdn;

    .line 3
    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzt;->zzb:Lcom/google/android/libraries/places/internal/zzdj;

    .line 4
    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzt;->zzc:Lcom/google/android/libraries/places/internal/zzds;

    return-void
.end method

.method private final zza()Lcom/google/android/libraries/places/internal/zzmq$zzah$zzb;
    .locals 4

    .line 77
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzt;->zzc:Lcom/google/android/libraries/places/internal/zzds;

    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzds;->zzb()Ljava/util/Locale;

    move-result-object v0

    .line 78
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 79
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzmq$zzah;->zza()Lcom/google/android/libraries/places/internal/zzmq$zzah$zzb;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/libraries/places/internal/zzmq$zzah$zzb;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzmq$zzah$zzb;

    move-result-object v2

    .line 80
    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/libraries/places/internal/zzmq$zzah$zzb;->zzb(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzmq$zzah$zzb;

    :cond_0
    return-object v2
.end method

.method private static zza(Lcom/google/android/gms/tasks/Task;)Lcom/google/android/libraries/places/internal/zzmq$zzi$zzf;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResponseT::",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/tasks/Task<",
            "TResponseT;>;)",
            "Lcom/google/android/libraries/places/internal/zzmq$zzi$zzf;"
        }
    .end annotation

    .line 90
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    sget-object p0, Lcom/google/android/libraries/places/internal/zzmq$zzi$zzf;->zzb:Lcom/google/android/libraries/places/internal/zzmq$zzi$zzf;

    return-object p0

    .line 92
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->n()Ljava/lang/Exception;

    move-result-object p0

    .line 93
    instance-of v0, p0, Lcom/google/android/gms/common/api/ApiException;

    if-eqz v0, :cond_1

    .line 94
    check-cast p0, Lcom/google/android/gms/common/api/ApiException;

    goto :goto_0

    .line 95
    :cond_1
    new-instance v0, Lcom/google/android/gms/common/api/ApiException;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    const/16 v2, 0xd

    .line 96
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    move-object p0, v0

    .line 97
    :goto_0
    iget-object p0, p0, Lcom/google/android/gms/common/api/ApiException;->a:Lcom/google/android/gms/common/api/Status;

    .line 98
    iget p0, p0, Lcom/google/android/gms/common/api/Status;->b:I

    const/4 v0, 0x7

    if-eq p0, v0, :cond_3

    const/16 v0, 0xf

    if-eq p0, v0, :cond_2

    .line 99
    sget-object p0, Lcom/google/android/libraries/places/internal/zzmq$zzi$zzf;->zza:Lcom/google/android/libraries/places/internal/zzmq$zzi$zzf;

    return-object p0

    .line 100
    :cond_2
    sget-object p0, Lcom/google/android/libraries/places/internal/zzmq$zzi$zzf;->zzc:Lcom/google/android/libraries/places/internal/zzmq$zzi$zzf;

    return-object p0

    .line 101
    :cond_3
    sget-object p0, Lcom/google/android/libraries/places/internal/zzmq$zzi$zzf;->zzd:Lcom/google/android/libraries/places/internal/zzmq$zzi$zzf;

    return-object p0
.end method

.method private final zza(Lcom/google/android/libraries/places/internal/zzmq$zzi;)V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzt;->zzb:Lcom/google/android/libraries/places/internal/zzdj;

    .line 83
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzdq;->zza(Lcom/google/android/libraries/places/internal/zzdj;)Lcom/google/android/libraries/places/internal/zzmq$zzs$zza;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/internal/zzmq$zzs$zzc;->zze:Lcom/google/android/libraries/places/internal/zzmq$zzs$zzc;

    .line 84
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzmq$zzs$zza;->zza(Lcom/google/android/libraries/places/internal/zzmq$zzs$zzc;)Lcom/google/android/libraries/places/internal/zzmq$zzs$zza;

    move-result-object v0

    .line 85
    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzmq$zzs$zza;->zza(Lcom/google/android/libraries/places/internal/zzmq$zzi;)Lcom/google/android/libraries/places/internal/zzmq$zzs$zza;

    move-result-object p1

    .line 86
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzsf$zza;->zzg()Lcom/google/android/libraries/places/internal/zzto;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/internal/zzsf;

    check-cast p1, Lcom/google/android/libraries/places/internal/zzmq$zzs;

    .line 87
    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzt;->zza(Lcom/google/android/libraries/places/internal/zzmq$zzs;)V

    return-void
.end method

.method private final zza(Lcom/google/android/libraries/places/internal/zzmq$zzs;)V
    .locals 1

    .line 88
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzdq;->zza(Lcom/google/android/libraries/places/internal/zzmq$zzs;)Lcom/google/android/libraries/places/internal/zzhh$zza;

    move-result-object p1

    .line 89
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzt;->zza:Lcom/google/android/libraries/places/internal/zzdn;

    invoke-interface {v0, p1}, Lcom/google/android/libraries/places/internal/zzdn;->zza(Lcom/google/android/libraries/places/internal/zzhh$zza;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/tasks/Task;JJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsResponse;",
            ">;JJ)V"
        }
    .end annotation

    .line 21
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->o()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsResponse;

    .line 23
    invoke-virtual {v0}, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsResponse;->getAutocompletePredictions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 24
    :goto_0
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzmq$zzd;->zza()Lcom/google/android/libraries/places/internal/zzmq$zzd$zza;

    move-result-object v1

    .line 25
    invoke-virtual {v1, v0}, Lcom/google/android/libraries/places/internal/zzmq$zzd$zza;->zza(I)Lcom/google/android/libraries/places/internal/zzmq$zzd$zza;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzsf$zza;->zzg()Lcom/google/android/libraries/places/internal/zzto;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzsf;

    check-cast v0, Lcom/google/android/libraries/places/internal/zzmq$zzd;

    .line 27
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzmq$zzi;->zza()Lcom/google/android/libraries/places/internal/zzmq$zzi$zzc;

    move-result-object v1

    sget-object v2, Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;->zzb:Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;

    .line 28
    invoke-virtual {v1, v2}, Lcom/google/android/libraries/places/internal/zzmq$zzi$zzc;->zza(Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;)Lcom/google/android/libraries/places/internal/zzmq$zzi$zzc;

    move-result-object v1

    .line 29
    invoke-virtual {v1, v0}, Lcom/google/android/libraries/places/internal/zzmq$zzi$zzc;->zza(Lcom/google/android/libraries/places/internal/zzmq$zzd;)Lcom/google/android/libraries/places/internal/zzmq$zzi$zzc;

    move-result-object v0

    .line 30
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzt;->zza(Lcom/google/android/gms/tasks/Task;)Lcom/google/android/libraries/places/internal/zzmq$zzi$zzf;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzmq$zzi$zzc;->zza(Lcom/google/android/libraries/places/internal/zzmq$zzi$zzf;)Lcom/google/android/libraries/places/internal/zzmq$zzi$zzc;

    move-result-object p1

    sub-long/2addr p4, p2

    long-to-int p2, p4

    .line 31
    invoke-virtual {p1, p2}, Lcom/google/android/libraries/places/internal/zzmq$zzi$zzc;->zza(I)Lcom/google/android/libraries/places/internal/zzmq$zzi$zzc;

    move-result-object p1

    .line 32
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzsf$zza;->zzg()Lcom/google/android/libraries/places/internal/zzto;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/internal/zzsf;

    check-cast p1, Lcom/google/android/libraries/places/internal/zzmq$zzi;

    .line 33
    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzt;->zza(Lcom/google/android/libraries/places/internal/zzmq$zzi;)V

    return-void
.end method

.method public final zza(Lcom/google/android/libraries/places/api/net/FetchPhotoRequest;)V
    .locals 2

    .line 70
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzmq$zzae;->zza()Lcom/google/android/libraries/places/internal/zzmq$zzae$zzb;

    move-result-object p1

    sget-object v0, Lcom/google/android/libraries/places/internal/zzmq$zzae$zza;->zza:Lcom/google/android/libraries/places/internal/zzmq$zzae$zza;

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/places/internal/zzmq$zzae$zzb;->zza(Lcom/google/android/libraries/places/internal/zzmq$zzae$zza;)Lcom/google/android/libraries/places/internal/zzmq$zzae$zzb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzsf$zza;->zzg()Lcom/google/android/libraries/places/internal/zzto;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/internal/zzsf;

    check-cast p1, Lcom/google/android/libraries/places/internal/zzmq$zzae;

    .line 71
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzt;->zzb:Lcom/google/android/libraries/places/internal/zzdj;

    .line 72
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzdq;->zza(Lcom/google/android/libraries/places/internal/zzdj;)Lcom/google/android/libraries/places/internal/zzmq$zzs$zza;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/internal/zzmq$zzs$zzc;->zzb:Lcom/google/android/libraries/places/internal/zzmq$zzs$zzc;

    .line 73
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzmq$zzs$zza;->zza(Lcom/google/android/libraries/places/internal/zzmq$zzs$zzc;)Lcom/google/android/libraries/places/internal/zzmq$zzs$zza;

    move-result-object v0

    .line 74
    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzmq$zzs$zza;->zza(Lcom/google/android/libraries/places/internal/zzmq$zzae;)Lcom/google/android/libraries/places/internal/zzmq$zzs$zza;

    move-result-object p1

    .line 75
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzsf$zza;->zzg()Lcom/google/android/libraries/places/internal/zzto;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/internal/zzsf;

    check-cast p1, Lcom/google/android/libraries/places/internal/zzmq$zzs;

    .line 76
    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzt;->zza(Lcom/google/android/libraries/places/internal/zzmq$zzs;)V

    return-void
.end method

.method public final zza(Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;)V
    .locals 3

    .line 34
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzmq$zzv;->zza()Lcom/google/android/libraries/places/internal/zzmq$zzv$zza;

    move-result-object v0

    const/4 v1, 0x1

    .line 35
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzmq$zzv$zza;->zza(I)Lcom/google/android/libraries/places/internal/zzmq$zzv$zza;

    move-result-object v0

    .line 36
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzmq$zzaf;->zza()Lcom/google/android/libraries/places/internal/zzmq$zzaf$zza;

    move-result-object v1

    .line 37
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;->getPlaceFields()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/libraries/places/internal/zzcm;->zza(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/libraries/places/internal/zzmq$zzaf$zza;->zza(Ljava/lang/Iterable;)Lcom/google/android/libraries/places/internal/zzmq$zzaf$zza;

    move-result-object v1

    .line 38
    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzsf$zza;->zzg()Lcom/google/android/libraries/places/internal/zzto;

    move-result-object v1

    check-cast v1, Lcom/google/android/libraries/places/internal/zzsf;

    check-cast v1, Lcom/google/android/libraries/places/internal/zzmq$zzaf;

    .line 39
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzmq$zzv$zza;->zza(Lcom/google/android/libraries/places/internal/zzmq$zzaf;)Lcom/google/android/libraries/places/internal/zzmq$zzv$zza;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzsf$zza;->zzg()Lcom/google/android/libraries/places/internal/zzto;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzsf;

    check-cast v0, Lcom/google/android/libraries/places/internal/zzmq$zzv;

    .line 41
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzt;->zza()Lcom/google/android/libraries/places/internal/zzmq$zzah$zzb;

    move-result-object v1

    sget-object v2, Lcom/google/android/libraries/places/internal/zzmq$zzah$zza;->zza:Lcom/google/android/libraries/places/internal/zzmq$zzah$zza;

    .line 42
    invoke-virtual {v1, v2}, Lcom/google/android/libraries/places/internal/zzmq$zzah$zzb;->zza(Lcom/google/android/libraries/places/internal/zzmq$zzah$zza;)Lcom/google/android/libraries/places/internal/zzmq$zzah$zzb;

    move-result-object v1

    .line 43
    invoke-virtual {v1, v0}, Lcom/google/android/libraries/places/internal/zzmq$zzah$zzb;->zza(Lcom/google/android/libraries/places/internal/zzmq$zzv;)Lcom/google/android/libraries/places/internal/zzmq$zzah$zzb;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzsf$zza;->zzg()Lcom/google/android/libraries/places/internal/zzto;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzsf;

    check-cast v0, Lcom/google/android/libraries/places/internal/zzmq$zzah;

    .line 45
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzt;->zzb:Lcom/google/android/libraries/places/internal/zzdj;

    .line 46
    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzdq;->zza(Lcom/google/android/libraries/places/internal/zzdj;)Lcom/google/android/libraries/places/internal/zzmq$zzs$zza;

    move-result-object v1

    sget-object v2, Lcom/google/android/libraries/places/internal/zzmq$zzs$zzc;->zza:Lcom/google/android/libraries/places/internal/zzmq$zzs$zzc;

    .line 47
    invoke-virtual {v1, v2}, Lcom/google/android/libraries/places/internal/zzmq$zzs$zza;->zza(Lcom/google/android/libraries/places/internal/zzmq$zzs$zzc;)Lcom/google/android/libraries/places/internal/zzmq$zzs$zza;

    move-result-object v1

    .line 48
    invoke-virtual {v1, v0}, Lcom/google/android/libraries/places/internal/zzmq$zzs$zza;->zza(Lcom/google/android/libraries/places/internal/zzmq$zzah;)Lcom/google/android/libraries/places/internal/zzmq$zzs$zza;

    move-result-object v0

    .line 49
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;->getSessionToken()Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 50
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FetchPlaceRequest;->getSessionToken()Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzmq$zzs$zza;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzmq$zzs$zza;

    .line 51
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzsf$zza;->zzg()Lcom/google/android/libraries/places/internal/zzto;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/internal/zzsf;

    check-cast p1, Lcom/google/android/libraries/places/internal/zzmq$zzs;

    .line 52
    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzt;->zza(Lcom/google/android/libraries/places/internal/zzmq$zzs;)V

    return-void
.end method

.method public final zza(Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzmq$zzk;->zza()Lcom/google/android/libraries/places/internal/zzmq$zzk$zza;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;->getTypeFilter()Lcom/google/android/libraries/places/api/model/TypeFilter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;->getTypeFilter()Lcom/google/android/libraries/places/api/model/TypeFilter;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzcp;->zza(Lcom/google/android/libraries/places/api/model/TypeFilter;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzmq$zzk$zza;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzmq$zzk$zza;

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzsf$zza;->zzg()Lcom/google/android/libraries/places/internal/zzto;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzsf;

    check-cast v0, Lcom/google/android/libraries/places/internal/zzmq$zzk;

    .line 6
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzmq$zzo;->zza()Lcom/google/android/libraries/places/internal/zzmq$zzo$zza;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v1, v0}, Lcom/google/android/libraries/places/internal/zzmq$zzo$zza;->zza(Lcom/google/android/libraries/places/internal/zzmq$zzk;)Lcom/google/android/libraries/places/internal/zzmq$zzo$zza;

    .line 8
    :cond_1
    invoke-virtual {v1}, Lcom/google/android/libraries/places/internal/zzsf$zza;->zzg()Lcom/google/android/libraries/places/internal/zzto;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzsf;

    check-cast v0, Lcom/google/android/libraries/places/internal/zzmq$zzo;

    .line 9
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzt;->zza()Lcom/google/android/libraries/places/internal/zzmq$zzah$zzb;

    move-result-object v1

    sget-object v2, Lcom/google/android/libraries/places/internal/zzmq$zzah$zza;->zzb:Lcom/google/android/libraries/places/internal/zzmq$zzah$zza;

    .line 10
    invoke-virtual {v1, v2}, Lcom/google/android/libraries/places/internal/zzmq$zzah$zzb;->zza(Lcom/google/android/libraries/places/internal/zzmq$zzah$zza;)Lcom/google/android/libraries/places/internal/zzmq$zzah$zzb;

    move-result-object v1

    .line 11
    invoke-virtual {v1, v0}, Lcom/google/android/libraries/places/internal/zzmq$zzah$zzb;->zza(Lcom/google/android/libraries/places/internal/zzmq$zzo;)Lcom/google/android/libraries/places/internal/zzmq$zzah$zzb;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzsf$zza;->zzg()Lcom/google/android/libraries/places/internal/zzto;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzsf;

    check-cast v0, Lcom/google/android/libraries/places/internal/zzmq$zzah;

    .line 13
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzt;->zzb:Lcom/google/android/libraries/places/internal/zzdj;

    .line 14
    invoke-static {v1}, Lcom/google/android/libraries/places/internal/zzdq;->zza(Lcom/google/android/libraries/places/internal/zzdj;)Lcom/google/android/libraries/places/internal/zzmq$zzs$zza;

    move-result-object v1

    sget-object v2, Lcom/google/android/libraries/places/internal/zzmq$zzs$zzc;->zza:Lcom/google/android/libraries/places/internal/zzmq$zzs$zzc;

    .line 15
    invoke-virtual {v1, v2}, Lcom/google/android/libraries/places/internal/zzmq$zzs$zza;->zza(Lcom/google/android/libraries/places/internal/zzmq$zzs$zzc;)Lcom/google/android/libraries/places/internal/zzmq$zzs$zza;

    move-result-object v1

    .line 16
    invoke-virtual {v1, v0}, Lcom/google/android/libraries/places/internal/zzmq$zzs$zza;->zza(Lcom/google/android/libraries/places/internal/zzmq$zzah;)Lcom/google/android/libraries/places/internal/zzmq$zzs$zza;

    move-result-object v0

    .line 17
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;->getSessionToken()Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 18
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsRequest;->getSessionToken()Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/model/AutocompleteSessionToken;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzmq$zzs$zza;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzmq$zzs$zza;

    .line 19
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzsf$zza;->zzg()Lcom/google/android/libraries/places/internal/zzto;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/internal/zzsf;

    check-cast p1, Lcom/google/android/libraries/places/internal/zzmq$zzs;

    .line 20
    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzt;->zza(Lcom/google/android/libraries/places/internal/zzmq$zzs;)V

    return-void
.end method

.method public final zza(Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;Lcom/google/android/gms/tasks/Task;JJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/libraries/places/api/net/FindCurrentPlaceResponse;",
            ">;JJ)V"
        }
    .end annotation

    .line 53
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->s()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 54
    sget-object p2, Lcom/google/android/libraries/places/internal/zzmq$zzy$zza;->zzb:Lcom/google/android/libraries/places/internal/zzmq$zzy$zza;

    goto :goto_0

    .line 55
    :cond_0
    sget-object p2, Lcom/google/android/libraries/places/internal/zzmq$zzy$zza;->zza:Lcom/google/android/libraries/places/internal/zzmq$zzy$zza;

    .line 56
    :goto_0
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzmq$zzy;->zza()Lcom/google/android/libraries/places/internal/zzmq$zzy$zzb;

    move-result-object v0

    .line 57
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzmq$zzaf;->zza()Lcom/google/android/libraries/places/internal/zzmq$zzaf$zza;

    move-result-object v1

    .line 58
    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FindCurrentPlaceRequest;->getPlaceFields()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzcm;->zza(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/libraries/places/internal/zzmq$zzaf$zza;->zza(Ljava/lang/Iterable;)Lcom/google/android/libraries/places/internal/zzmq$zzaf$zza;

    move-result-object p1

    .line 59
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzsf$zza;->zzg()Lcom/google/android/libraries/places/internal/zzto;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/internal/zzsf;

    check-cast p1, Lcom/google/android/libraries/places/internal/zzmq$zzaf;

    .line 60
    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzmq$zzy$zzb;->zza(Lcom/google/android/libraries/places/internal/zzmq$zzaf;)Lcom/google/android/libraries/places/internal/zzmq$zzy$zzb;

    move-result-object p1

    sub-long/2addr p5, p3

    long-to-int p3, p5

    .line 61
    invoke-virtual {p1, p3}, Lcom/google/android/libraries/places/internal/zzmq$zzy$zzb;->zza(I)Lcom/google/android/libraries/places/internal/zzmq$zzy$zzb;

    move-result-object p1

    .line 62
    invoke-virtual {p1, p2}, Lcom/google/android/libraries/places/internal/zzmq$zzy$zzb;->zza(Lcom/google/android/libraries/places/internal/zzmq$zzy$zza;)Lcom/google/android/libraries/places/internal/zzmq$zzy$zzb;

    move-result-object p1

    .line 63
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzsf$zza;->zzg()Lcom/google/android/libraries/places/internal/zzto;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/internal/zzsf;

    check-cast p1, Lcom/google/android/libraries/places/internal/zzmq$zzy;

    .line 64
    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzt;->zzb:Lcom/google/android/libraries/places/internal/zzdj;

    .line 65
    invoke-static {p2}, Lcom/google/android/libraries/places/internal/zzdq;->zza(Lcom/google/android/libraries/places/internal/zzdj;)Lcom/google/android/libraries/places/internal/zzmq$zzs$zza;

    move-result-object p2

    sget-object p3, Lcom/google/android/libraries/places/internal/zzmq$zzs$zzc;->zzc:Lcom/google/android/libraries/places/internal/zzmq$zzs$zzc;

    .line 66
    invoke-virtual {p2, p3}, Lcom/google/android/libraries/places/internal/zzmq$zzs$zza;->zza(Lcom/google/android/libraries/places/internal/zzmq$zzs$zzc;)Lcom/google/android/libraries/places/internal/zzmq$zzs$zza;

    move-result-object p2

    .line 67
    invoke-virtual {p2, p1}, Lcom/google/android/libraries/places/internal/zzmq$zzs$zza;->zza(Lcom/google/android/libraries/places/internal/zzmq$zzy;)Lcom/google/android/libraries/places/internal/zzmq$zzs$zza;

    move-result-object p1

    .line 68
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzsf$zza;->zzg()Lcom/google/android/libraries/places/internal/zzto;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/internal/zzsf;

    check-cast p1, Lcom/google/android/libraries/places/internal/zzmq$zzs;

    .line 69
    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzt;->zza(Lcom/google/android/libraries/places/internal/zzmq$zzs;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/tasks/Task;JJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/libraries/places/api/net/FetchPlaceResponse;",
            ">;JJ)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->s()Z

    move-result v0

    .line 2
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzmq$zzf;->zza()Lcom/google/android/libraries/places/internal/zzmq$zzf$zza;

    move-result-object v1

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v1, v2}, Lcom/google/android/libraries/places/internal/zzmq$zzf$zza;->zza(I)Lcom/google/android/libraries/places/internal/zzmq$zzf$zza;

    move-result-object v1

    .line 4
    invoke-virtual {v1, v0}, Lcom/google/android/libraries/places/internal/zzmq$zzf$zza;->zzb(I)Lcom/google/android/libraries/places/internal/zzmq$zzf$zza;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzsf$zza;->zzg()Lcom/google/android/libraries/places/internal/zzto;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzsf;

    check-cast v0, Lcom/google/android/libraries/places/internal/zzmq$zzf;

    .line 6
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzmq$zzi;->zza()Lcom/google/android/libraries/places/internal/zzmq$zzi$zzc;

    move-result-object v1

    sget-object v2, Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;->zzc:Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;

    .line 7
    invoke-virtual {v1, v2}, Lcom/google/android/libraries/places/internal/zzmq$zzi$zzc;->zza(Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;)Lcom/google/android/libraries/places/internal/zzmq$zzi$zzc;

    move-result-object v1

    .line 8
    invoke-virtual {v1, v0}, Lcom/google/android/libraries/places/internal/zzmq$zzi$zzc;->zza(Lcom/google/android/libraries/places/internal/zzmq$zzf;)Lcom/google/android/libraries/places/internal/zzmq$zzi$zzc;

    move-result-object v0

    .line 9
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzt;->zza(Lcom/google/android/gms/tasks/Task;)Lcom/google/android/libraries/places/internal/zzmq$zzi$zzf;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzmq$zzi$zzc;->zza(Lcom/google/android/libraries/places/internal/zzmq$zzi$zzf;)Lcom/google/android/libraries/places/internal/zzmq$zzi$zzc;

    move-result-object p1

    sub-long/2addr p4, p2

    long-to-int p2, p4

    .line 10
    invoke-virtual {p1, p2}, Lcom/google/android/libraries/places/internal/zzmq$zzi$zzc;->zza(I)Lcom/google/android/libraries/places/internal/zzmq$zzi$zzc;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzsf$zza;->zzg()Lcom/google/android/libraries/places/internal/zzto;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/internal/zzsf;

    check-cast p1, Lcom/google/android/libraries/places/internal/zzmq$zzi;

    .line 12
    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzt;->zza(Lcom/google/android/libraries/places/internal/zzmq$zzi;)V

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/tasks/Task;JJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/libraries/places/api/net/FindCurrentPlaceResponse;",
            ">;JJ)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->o()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/api/net/FindCurrentPlaceResponse;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/libraries/places/api/net/FindCurrentPlaceResponse;->getPlaceLikelihoods()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzmq$zzb;->zza()Lcom/google/android/libraries/places/internal/zzmq$zzb$zza;

    move-result-object v1

    .line 5
    invoke-virtual {v1, v0}, Lcom/google/android/libraries/places/internal/zzmq$zzb$zza;->zza(I)Lcom/google/android/libraries/places/internal/zzmq$zzb$zza;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzsf$zza;->zzg()Lcom/google/android/libraries/places/internal/zzto;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzsf;

    check-cast v0, Lcom/google/android/libraries/places/internal/zzmq$zzb;

    .line 7
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzmq$zzi;->zza()Lcom/google/android/libraries/places/internal/zzmq$zzi$zzc;

    move-result-object v1

    sget-object v2, Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;->zza:Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;

    .line 8
    invoke-virtual {v1, v2}, Lcom/google/android/libraries/places/internal/zzmq$zzi$zzc;->zza(Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;)Lcom/google/android/libraries/places/internal/zzmq$zzi$zzc;

    move-result-object v1

    .line 9
    invoke-virtual {v1, v0}, Lcom/google/android/libraries/places/internal/zzmq$zzi$zzc;->zza(Lcom/google/android/libraries/places/internal/zzmq$zzb;)Lcom/google/android/libraries/places/internal/zzmq$zzi$zzc;

    move-result-object v0

    .line 10
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzt;->zza(Lcom/google/android/gms/tasks/Task;)Lcom/google/android/libraries/places/internal/zzmq$zzi$zzf;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzmq$zzi$zzc;->zza(Lcom/google/android/libraries/places/internal/zzmq$zzi$zzf;)Lcom/google/android/libraries/places/internal/zzmq$zzi$zzc;

    move-result-object p1

    sub-long/2addr p4, p2

    long-to-int p2, p4

    .line 11
    invoke-virtual {p1, p2}, Lcom/google/android/libraries/places/internal/zzmq$zzi$zzc;->zza(I)Lcom/google/android/libraries/places/internal/zzmq$zzi$zzc;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzsf$zza;->zzg()Lcom/google/android/libraries/places/internal/zzto;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/internal/zzsf;

    check-cast p1, Lcom/google/android/libraries/places/internal/zzmq$zzi;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzt;->zza(Lcom/google/android/libraries/places/internal/zzmq$zzi;)V

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/tasks/Task;JJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/libraries/places/api/net/FetchPhotoResponse;",
            ">;JJ)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzmq$zzi;->zza()Lcom/google/android/libraries/places/internal/zzmq$zzi$zzc;

    move-result-object v0

    sget-object v1, Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;->zzd:Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/libraries/places/internal/zzmq$zzi$zzc;->zza(Lcom/google/android/libraries/places/internal/zzmq$zzi$zzd;)Lcom/google/android/libraries/places/internal/zzmq$zzi$zzc;

    move-result-object v0

    .line 3
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzt;->zza(Lcom/google/android/gms/tasks/Task;)Lcom/google/android/libraries/places/internal/zzmq$zzi$zzf;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzmq$zzi$zzc;->zza(Lcom/google/android/libraries/places/internal/zzmq$zzi$zzf;)Lcom/google/android/libraries/places/internal/zzmq$zzi$zzc;

    move-result-object p1

    sub-long/2addr p4, p2

    long-to-int p2, p4

    .line 4
    invoke-virtual {p1, p2}, Lcom/google/android/libraries/places/internal/zzmq$zzi$zzc;->zza(I)Lcom/google/android/libraries/places/internal/zzmq$zzi$zzc;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzsf$zza;->zzg()Lcom/google/android/libraries/places/internal/zzto;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/internal/zzsf;

    check-cast p1, Lcom/google/android/libraries/places/internal/zzmq$zzi;

    .line 6
    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzt;->zza(Lcom/google/android/libraries/places/internal/zzmq$zzi;)V

    return-void
.end method
