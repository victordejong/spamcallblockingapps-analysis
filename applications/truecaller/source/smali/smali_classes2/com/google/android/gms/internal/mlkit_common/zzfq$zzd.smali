.class public Lcom/google/android/gms/internal/mlkit_common/zzfq$zzd;
.super Lcom/google/android/gms/internal/mlkit_common/zzfq$zzb;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_common/zzhd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/mlkit_common/zzfq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zzd"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/mlkit_common/zzfq$zzc<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/mlkit_common/zzfq$zzd<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/mlkit_common/zzfq$zzb<",
        "TMessageType;TBuilderType;>;",
        "Lcom/google/android/gms/internal/mlkit_common/zzhd;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_common/zzfq$zzc;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_common/zzfq$zzb;-><init>(Lcom/google/android/gms/internal/mlkit_common/zzfq;)V

    return-void
.end method


# virtual methods
.method public zzc()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/internal/mlkit_common/zzfq$zzb;->zzc()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzfq$zzb;->zza:Lcom/google/android/gms/internal/mlkit_common/zzfq;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/mlkit_common/zzfq$zzc;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_common/zzfq$zzc;

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_common/zzfq$zzc;->zzc:Lcom/google/android/gms/internal/mlkit_common/zzfl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_common/zzfl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_common/zzfl;

    iput-object v0, v1, Lcom/google/android/gms/internal/mlkit_common/zzfq$zzc;->zzc:Lcom/google/android/gms/internal/mlkit_common/zzfl;

    return-void
.end method

.method public synthetic zzd()Lcom/google/android/gms/internal/mlkit_common/zzfq;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_common/zzfq$zzd;->zzf()Lcom/google/android/gms/internal/mlkit_common/zzhb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_common/zzfq$zzc;

    return-object v0
.end method

.method public synthetic zzf()Lcom/google/android/gms/internal/mlkit_common/zzhb;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzfq$zzb;->zzb:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzfq$zzb;->zza:Lcom/google/android/gms/internal/mlkit_common/zzfq;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_common/zzfq$zzc;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzfq$zzb;->zza:Lcom/google/android/gms/internal/mlkit_common/zzfq;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_common/zzfq$zzc;

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_common/zzfq$zzc;->zzc:Lcom/google/android/gms/internal/mlkit_common/zzfl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_common/zzfl;->zzb()V

    .line 4
    invoke-super {p0}, Lcom/google/android/gms/internal/mlkit_common/zzfq$zzb;->zzd()Lcom/google/android/gms/internal/mlkit_common/zzfq;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_common/zzfq$zzc;

    return-object v0
.end method
