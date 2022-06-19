.class public final Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzam$zza;
.super Lcom/google/android/gms/internal/mlkit_translate/zzkc$zza;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_translate/zzlm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/mlkit_translate/zzkc$zza<",
        "Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzam;",
        "Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzam$zza;",
        ">;",
        "Lcom/google/android/gms/internal/mlkit_translate/zzlm;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzam;->zzb()Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzam;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_translate/zzkc$zza;-><init>(Lcom/google/android/gms/internal/mlkit_translate/zzkc;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_translate/zzbi;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzam$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzal$zza;)Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzam$zza;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzkc$zza;->zzb:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_translate/zzkc$zza;->zzc()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzkc$zza;->zzb:Z

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzkc$zza;->zza:Lcom/google/android/gms/internal/mlkit_translate/zzkc;

    check-cast v0, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzam;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_translate/zzkc$zza;->zzh()Lcom/google/android/gms/internal/mlkit_translate/zzlk;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/mlkit_translate/zzkc;

    check-cast p1, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzal;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzam;->zza(Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzam;Lcom/google/android/gms/internal/mlkit_translate/zzbj$zzal;)V

    return-object p0
.end method
