.class public Lcom/google/android/gms/internal/mlkit_translate/zzkc$zzb;
.super Lcom/google/android/gms/internal/mlkit_translate/zzkc$zza;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_translate/zzlm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/mlkit_translate/zzkc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/mlkit_translate/zzkc$zze<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/mlkit_translate/zzkc$zzb<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/mlkit_translate/zzkc$zza<",
        "TMessageType;TBuilderType;>;",
        "Lcom/google/android/gms/internal/mlkit_translate/zzlm;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_translate/zzkc$zze;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzkc$zza;-><init>(Lcom/google/android/gms/internal/mlkit_translate/zzkc;)V

    return-void
.end method


# virtual methods
.method public zzc()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/internal/mlkit_translate/zzkc$zza;->zzc()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzkc$zza;->zza:Lcom/google/android/gms/internal/mlkit_translate/zzkc;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/mlkit_translate/zzkc$zze;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_translate/zzkc$zze;

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_translate/zzkc$zze;->zzc:Lcom/google/android/gms/internal/mlkit_translate/zzju;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_translate/zzju;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_translate/zzju;

    iput-object v0, v1, Lcom/google/android/gms/internal/mlkit_translate/zzkc$zze;->zzc:Lcom/google/android/gms/internal/mlkit_translate/zzju;

    return-void
.end method

.method public synthetic zze()Lcom/google/android/gms/internal/mlkit_translate/zzkc;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_translate/zzkc$zzb;->zzg()Lcom/google/android/gms/internal/mlkit_translate/zzlk;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_translate/zzkc$zze;

    return-object v0
.end method

.method public synthetic zzg()Lcom/google/android/gms/internal/mlkit_translate/zzlk;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzkc$zza;->zzb:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzkc$zza;->zza:Lcom/google/android/gms/internal/mlkit_translate/zzkc;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_translate/zzkc$zze;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzkc$zza;->zza:Lcom/google/android/gms/internal/mlkit_translate/zzkc;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_translate/zzkc$zze;

    iget-object v0, v0, Lcom/google/android/gms/internal/mlkit_translate/zzkc$zze;->zzc:Lcom/google/android/gms/internal/mlkit_translate/zzju;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_translate/zzju;->zzb()V

    .line 4
    invoke-super {p0}, Lcom/google/android/gms/internal/mlkit_translate/zzkc$zza;->zze()Lcom/google/android/gms/internal/mlkit_translate/zzkc;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_translate/zzkc$zze;

    return-object v0
.end method
