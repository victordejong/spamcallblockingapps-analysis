.class public Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zzd;
.super Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zzb;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_language_id/zzgb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/mlkit_language_id/zzeo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zzd"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zzc<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zzd<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zzb<",
        "TMessageType;TBuilderType;>;",
        "Lcom/google/android/gms/internal/mlkit_language_id/zzgb;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zzc;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zzb;-><init>(Lcom/google/android/gms/internal/mlkit_language_id/zzeo;)V

    return-void
.end method


# virtual methods
.method public zzc()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zzb;->zzc()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zzb;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzeo;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zzc;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zzc;

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zzc;->zzc:Lcom/google/android/gms/internal/mlkit_language_id/zzej;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_language_id/zzej;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_language_id/zzej;

    iput-object v0, v1, Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zzc;->zzc:Lcom/google/android/gms/internal/mlkit_language_id/zzej;

    return-void
.end method

.method public synthetic zzd()Lcom/google/android/gms/internal/mlkit_language_id/zzeo;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zzd;->zzf()Lcom/google/android/gms/internal/mlkit_language_id/zzfz;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zzc;

    return-object v0
.end method

.method public synthetic zzf()Lcom/google/android/gms/internal/mlkit_language_id/zzfz;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zzb;->zzb:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zzb;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzeo;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zzc;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zzb;->zza:Lcom/google/android/gms/internal/mlkit_language_id/zzeo;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zzc;

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zzc;->zzc:Lcom/google/android/gms/internal/mlkit_language_id/zzej;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_language_id/zzej;->zzb()V

    .line 4
    invoke-super {p0}, Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zzb;->zzd()Lcom/google/android/gms/internal/mlkit_language_id/zzeo;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_language_id/zzeo$zzc;

    return-object v0
.end method
