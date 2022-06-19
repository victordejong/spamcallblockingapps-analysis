.class public final Lcom/google/android/gms/internal/mlkit_translate/zzjs;
.super Lcom/google/android/gms/internal/mlkit_translate/zzjt;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/mlkit_translate/zzjt<",
        "Lcom/google/android/gms/internal/mlkit_translate/zzkc$zzd;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_translate/zzjt;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/util/Map$Entry;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "**>;)I"
        }
    .end annotation

    .line 3
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/mlkit_translate/zzkc$zzd;

    .line 4
    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1
.end method

.method public final zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_translate/zzju;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/internal/mlkit_translate/zzju<",
            "Lcom/google/android/gms/internal/mlkit_translate/zzkc$zzd;",
            ">;"
        }
    .end annotation

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/mlkit_translate/zzkc$zze;

    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_translate/zzkc$zze;->zzc:Lcom/google/android/gms/internal/mlkit_translate/zzju;

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/mlkit_translate/zznm;Ljava/util/Map$Entry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/mlkit_translate/zznm;",
            "Ljava/util/Map$Entry<",
            "**>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/mlkit_translate/zzkc$zzd;

    .line 6
    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/mlkit_translate/zzlk;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Lcom/google/android/gms/internal/mlkit_translate/zzkc$zze;

    return p1
.end method

.method public final zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_translate/zzju;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/internal/mlkit_translate/zzju<",
            "Lcom/google/android/gms/internal/mlkit_translate/zzkc$zzd;",
            ">;"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/mlkit_translate/zzkc$zze;

    .line 2
    iget-object v0, p1, Lcom/google/android/gms/internal/mlkit_translate/zzkc$zze;->zzc:Lcom/google/android/gms/internal/mlkit_translate/zzju;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_translate/zzju;->zzc()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p1, Lcom/google/android/gms/internal/mlkit_translate/zzkc$zze;->zzc:Lcom/google/android/gms/internal/mlkit_translate/zzju;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_translate/zzju;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_translate/zzju;

    iput-object v0, p1, Lcom/google/android/gms/internal/mlkit_translate/zzkc$zze;->zzc:Lcom/google/android/gms/internal/mlkit_translate/zzju;

    .line 4
    :cond_0
    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_translate/zzkc$zze;->zzc:Lcom/google/android/gms/internal/mlkit_translate/zzju;

    return-object p1
.end method

.method public final zzc(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzjs;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_translate/zzju;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_translate/zzju;->zzb()V

    return-void
.end method
