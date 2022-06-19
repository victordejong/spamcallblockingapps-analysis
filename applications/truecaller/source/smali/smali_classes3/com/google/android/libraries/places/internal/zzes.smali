.class public final Lcom/google/android/libraries/places/internal/zzes;
.super Ln3/v/y0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/places/internal/zzes$zza;
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/libraries/places/internal/zzek;

.field private final zzb:Lcom/google/android/libraries/places/internal/zzey;

.field private final zzc:Lcom/google/android/libraries/places/internal/zzfa;

.field private final zzd:Ln3/v/k0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/v/k0<",
            "Lcom/google/android/libraries/places/internal/zzef;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/libraries/places/internal/zzek;Lcom/google/android/libraries/places/internal/zzey;Lcom/google/android/libraries/places/internal/zzfa;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ln3/v/y0;-><init>()V

    .line 2
    new-instance v0, Ln3/v/k0;

    invoke-direct {v0}, Ln3/v/k0;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/places/internal/zzes;->zzd:Ln3/v/k0;

    .line 3
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzes;->zza:Lcom/google/android/libraries/places/internal/zzek;

    .line 4
    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzes;->zzb:Lcom/google/android/libraries/places/internal/zzey;

    .line 5
    iput-object p3, p0, Lcom/google/android/libraries/places/internal/zzes;->zzc:Lcom/google/android/libraries/places/internal/zzfa;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/libraries/places/internal/zzek;Lcom/google/android/libraries/places/internal/zzey;Lcom/google/android/libraries/places/internal/zzfa;Lcom/google/android/libraries/places/internal/zzew;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/libraries/places/internal/zzes;-><init>(Lcom/google/android/libraries/places/internal/zzek;Lcom/google/android/libraries/places/internal/zzey;Lcom/google/android/libraries/places/internal/zzfa;)V

    return-void
.end method

.method private static zza(Ljava/lang/Exception;)Lcom/google/android/gms/common/api/Status;
    .locals 2

    .line 19
    instance-of v0, p0, Lcom/google/android/gms/common/api/ApiException;

    if-eqz v0, :cond_0

    .line 20
    check-cast p0, Lcom/google/android/gms/common/api/ApiException;

    .line 21
    iget-object p0, p0, Lcom/google/android/gms/common/api/ApiException;->a:Lcom/google/android/gms/common/api/Status;

    goto :goto_0

    .line 22
    :cond_0
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0xd

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method private final zza(Lcom/google/android/libraries/places/internal/zzef;)V
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzes;->zzd:Ln3/v/k0;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->d()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 18
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzes;->zzd:Ln3/v/k0;

    invoke-virtual {v0, p1}, Ln3/v/k0;->l(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static zza(Lcom/google/android/gms/common/api/Status;)Z
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/Status;->p2()Z

    move-result v0

    if-nez v0, :cond_1

    .line 24
    iget p0, p0, Lcom/google/android/gms/common/api/Status;->b:I

    const/16 v0, 0x2334

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2333

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final onCleared()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzes;->zza:Lcom/google/android/libraries/places/internal/zzek;

    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzek;->zza()V

    .line 2
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzes;->zzb:Lcom/google/android/libraries/places/internal/zzey;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzey;->zzq()V

    .line 3
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzes;->zzc:Lcom/google/android/libraries/places/internal/zzfa;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzes;->zzb:Lcom/google/android/libraries/places/internal/zzey;

    invoke-interface {v0, v1}, Lcom/google/android/libraries/places/internal/zzfa;->zza(Lcom/google/android/libraries/places/internal/zzey;)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 4
    :goto_0
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzdk;->zza(Ljava/lang/Throwable;)V

    .line 5
    throw v0
.end method

.method public final zza()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/google/android/libraries/places/internal/zzef;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzes;->zzd:Ln3/v/k0;

    return-object v0
.end method

.method public final zza(Landroid/os/Bundle;)V
    .locals 1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzes;->zzd:Ln3/v/k0;

    invoke-static {}, Lcom/google/android/libraries/places/internal/zzef;->zzg()Lcom/google/android/libraries/places/internal/zzef;

    move-result-object v0

    invoke-virtual {p1, v0}, Ln3/v/k0;->l(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final zza(Lcom/google/android/libraries/places/api/model/AutocompletePrediction;I)V
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzes;->zzb:Lcom/google/android/libraries/places/internal/zzey;

    invoke-virtual {v0, p2}, Lcom/google/android/libraries/places/internal/zzey;->zza(I)V

    .line 13
    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzes;->zza:Lcom/google/android/libraries/places/internal/zzek;

    invoke-interface {p2, p1}, Lcom/google/android/libraries/places/internal/zzek;->zza(Lcom/google/android/libraries/places/api/model/AutocompletePrediction;)Lcom/google/android/gms/tasks/Task;

    move-result-object p2

    .line 14
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->r()Z

    move-result v0

    if-nez v0, :cond_0

    .line 15
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzef;->zzi()Lcom/google/android/libraries/places/internal/zzef;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/libraries/places/internal/zzes;->zza(Lcom/google/android/libraries/places/internal/zzef;)V

    .line 16
    :cond_0
    new-instance v0, Lcom/google/android/libraries/places/internal/zzeu;

    invoke-direct {v0, p0, p1}, Lcom/google/android/libraries/places/internal/zzeu;-><init>(Lcom/google/android/libraries/places/internal/zzes;Lcom/google/android/libraries/places/api/model/AutocompletePrediction;)V

    invoke-virtual {p2, v0}, Lcom/google/android/gms/tasks/Task;->c(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public final synthetic zza(Lcom/google/android/libraries/places/api/model/AutocompletePrediction;Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    .line 25
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 26
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->n()Ljava/lang/Exception;

    move-result-object v0

    if-nez v0, :cond_1

    .line 27
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzes;->zzb:Lcom/google/android/libraries/places/internal/zzey;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzey;->zzt()V

    .line 28
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->o()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/api/net/FetchPlaceResponse;

    invoke-virtual {p1}, Lcom/google/android/libraries/places/api/net/FetchPlaceResponse;->getPlace()Lcom/google/android/libraries/places/api/model/Place;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzef;->zza(Lcom/google/android/libraries/places/api/model/Place;)Lcom/google/android/libraries/places/internal/zzef;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzes;->zza(Lcom/google/android/libraries/places/internal/zzef;)V

    return-void

    .line 29
    :cond_1
    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzes;->zzb:Lcom/google/android/libraries/places/internal/zzey;

    invoke-virtual {p2}, Lcom/google/android/libraries/places/internal/zzey;->zzu()V

    .line 30
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzes;->zza(Ljava/lang/Exception;)Lcom/google/android/gms/common/api/Status;

    move-result-object p2

    .line 31
    invoke-static {p2}, Lcom/google/android/libraries/places/internal/zzes;->zza(Lcom/google/android/gms/common/api/Status;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 32
    invoke-static {p2}, Lcom/google/android/libraries/places/internal/zzef;->zza(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/libraries/places/internal/zzef;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzes;->zza(Lcom/google/android/libraries/places/internal/zzef;)V

    return-void

    .line 33
    :cond_2
    invoke-static {p1, p2}, Lcom/google/android/libraries/places/internal/zzef;->zza(Lcom/google/android/libraries/places/api/model/AutocompletePrediction;Lcom/google/android/gms/common/api/Status;)Lcom/google/android/libraries/places/internal/zzef;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzes;->zza(Lcom/google/android/libraries/places/internal/zzef;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzes;->zzb:Lcom/google/android/libraries/places/internal/zzey;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/places/internal/zzey;->zza(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object p1, p0, Lcom/google/android/libraries/places/internal/zzes;->zza:Lcom/google/android/libraries/places/internal/zzek;

    invoke-interface {p1}, Lcom/google/android/libraries/places/internal/zzek;->zza()V

    .line 6
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzef;->zzh()Lcom/google/android/libraries/places/internal/zzef;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzes;->zza(Lcom/google/android/libraries/places/internal/zzef;)V

    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzes;->zza:Lcom/google/android/libraries/places/internal/zzek;

    .line 8
    invoke-interface {v0, p1}, Lcom/google/android/libraries/places/internal/zzek;->zza(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/Task;->r()Z

    move-result v1

    if-nez v1, :cond_1

    .line 10
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzef;->zzi()Lcom/google/android/libraries/places/internal/zzef;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/libraries/places/internal/zzes;->zza(Lcom/google/android/libraries/places/internal/zzef;)V

    .line 11
    :cond_1
    new-instance v1, Lcom/google/android/libraries/places/internal/zzev;

    invoke-direct {v1, p0, p1}, Lcom/google/android/libraries/places/internal/zzev;-><init>(Lcom/google/android/libraries/places/internal/zzes;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->c(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public final synthetic zza(Ljava/lang/String;Lcom/google/android/gms/tasks/Task;)V
    .locals 1

    .line 34
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 35
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->n()Ljava/lang/Exception;

    move-result-object v0

    if-nez v0, :cond_2

    .line 36
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzes;->zzb:Lcom/google/android/libraries/places/internal/zzey;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzey;->zzr()V

    .line 37
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->o()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsResponse;

    invoke-virtual {p2}, Lcom/google/android/libraries/places/api/net/FindAutocompletePredictionsResponse;->getAutocompletePredictions()Ljava/util/List;

    move-result-object p2

    .line 38
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    invoke-static {p1}, Lcom/google/android/libraries/places/internal/zzef;->zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzef;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzes;->zza(Lcom/google/android/libraries/places/internal/zzef;)V

    return-void

    .line 40
    :cond_1
    invoke-static {p2}, Lcom/google/android/libraries/places/internal/zzef;->zza(Ljava/util/List;)Lcom/google/android/libraries/places/internal/zzef;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzes;->zza(Lcom/google/android/libraries/places/internal/zzef;)V

    return-void

    .line 41
    :cond_2
    iget-object p2, p0, Lcom/google/android/libraries/places/internal/zzes;->zzb:Lcom/google/android/libraries/places/internal/zzey;

    invoke-virtual {p2}, Lcom/google/android/libraries/places/internal/zzey;->zzs()V

    .line 42
    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzes;->zza(Ljava/lang/Exception;)Lcom/google/android/gms/common/api/Status;

    move-result-object p2

    .line 43
    invoke-static {p2}, Lcom/google/android/libraries/places/internal/zzes;->zza(Lcom/google/android/gms/common/api/Status;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 44
    invoke-static {p2}, Lcom/google/android/libraries/places/internal/zzef;->zza(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/libraries/places/internal/zzef;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzes;->zza(Lcom/google/android/libraries/places/internal/zzef;)V

    return-void

    .line 45
    :cond_3
    invoke-static {p1, p2}, Lcom/google/android/libraries/places/internal/zzef;->zza(Ljava/lang/String;Lcom/google/android/gms/common/api/Status;)Lcom/google/android/libraries/places/internal/zzef;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzes;->zza(Lcom/google/android/libraries/places/internal/zzef;)V

    return-void
.end method

.method public final zzb()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzes;->zzb:Lcom/google/android/libraries/places/internal/zzey;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzey;->zzw()V

    return-void
.end method

.method public final zzb(Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzes;->zza:Lcom/google/android/libraries/places/internal/zzek;

    invoke-interface {v0}, Lcom/google/android/libraries/places/internal/zzek;->zza()V

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/zzes;->zza(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzef;->zzj()Lcom/google/android/libraries/places/internal/zzef;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/libraries/places/internal/zzes;->zza(Lcom/google/android/libraries/places/internal/zzef;)V

    return-void
.end method

.method public final zzc()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzes;->zzb:Lcom/google/android/libraries/places/internal/zzey;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzey;->zzv()V

    const-string v0, ""

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/places/internal/zzes;->zza(Ljava/lang/String;)V

    return-void
.end method

.method public final zzd()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzes;->zzb:Lcom/google/android/libraries/places/internal/zzey;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzey;->zzx()V

    return-void
.end method

.method public final zze()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzes;->zzb:Lcom/google/android/libraries/places/internal/zzey;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzey;->zzy()V

    return-void
.end method

.method public final zzf()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzes;->zzb:Lcom/google/android/libraries/places/internal/zzey;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzey;->zzp()V

    .line 2
    invoke-static {}, Lcom/google/android/libraries/places/internal/zzef;->zzk()Lcom/google/android/libraries/places/internal/zzef;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/libraries/places/internal/zzes;->zza(Lcom/google/android/libraries/places/internal/zzef;)V

    return-void
.end method
