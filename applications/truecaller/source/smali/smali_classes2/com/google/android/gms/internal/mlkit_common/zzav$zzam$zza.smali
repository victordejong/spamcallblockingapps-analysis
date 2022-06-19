.class public final Lcom/google/android/gms/internal/mlkit_common/zzav$zzam$zza;
.super Lcom/google/android/gms/internal/mlkit_common/zzfq$zzb;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_common/zzhd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/mlkit_common/zzav$zzam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/mlkit_common/zzfq$zzb<",
        "Lcom/google/android/gms/internal/mlkit_common/zzav$zzam;",
        "Lcom/google/android/gms/internal/mlkit_common/zzav$zzam$zza;",
        ">;",
        "Lcom/google/android/gms/internal/mlkit_common/zzhd;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_common/zzav$zzam;->zzb()Lcom/google/android/gms/internal/mlkit_common/zzav$zzam;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_common/zzfq$zzb;-><init>(Lcom/google/android/gms/internal/mlkit_common/zzfq;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_common/zzau;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_common/zzav$zzam$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/mlkit_common/zzav$zzal$zza;)Lcom/google/android/gms/internal/mlkit_common/zzav$zzam$zza;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzfq$zzb;->zzb:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_common/zzfq$zzb;->zzc()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzfq$zzb;->zzb:Z

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzfq$zzb;->zza:Lcom/google/android/gms/internal/mlkit_common/zzfq;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_common/zzav$zzam;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_common/zzfq$zzb;->zzg()Lcom/google/android/gms/internal/mlkit_common/zzhb;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/mlkit_common/zzfq;

    check-cast p1, Lcom/google/android/gms/internal/mlkit_common/zzav$zzal;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/mlkit_common/zzav$zzam;->zza(Lcom/google/android/gms/internal/mlkit_common/zzav$zzam;Lcom/google/android/gms/internal/mlkit_common/zzav$zzal;)V

    return-object p0
.end method
