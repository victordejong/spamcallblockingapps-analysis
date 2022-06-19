.class public final Lcom/google/android/libraries/places/internal/zzrv;
.super Lcom/google/android/libraries/places/internal/zzrw;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/libraries/places/internal/zzrw<",
        "Lcom/google/android/libraries/places/internal/zzsf$zze;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzrw;-><init>()V

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

    check-cast p1, Lcom/google/android/libraries/places/internal/zzsf$zze;

    .line 4
    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1
.end method

.method public final zza(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzrx;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/libraries/places/internal/zzrx<",
            "Lcom/google/android/libraries/places/internal/zzsf$zze;",
            ">;"
        }
    .end annotation

    .line 2
    check-cast p1, Lcom/google/android/libraries/places/internal/zzsf$zzb;

    iget-object p1, p1, Lcom/google/android/libraries/places/internal/zzsf$zzb;->zzc:Lcom/google/android/libraries/places/internal/zzrx;

    return-object p1
.end method

.method public final zza(Lcom/google/android/libraries/places/internal/zzvq;Ljava/util/Map$Entry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/libraries/places/internal/zzvq;",
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

    check-cast p1, Lcom/google/android/libraries/places/internal/zzsf$zze;

    .line 6
    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1
.end method

.method public final zza(Lcom/google/android/libraries/places/internal/zzto;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Lcom/google/android/libraries/places/internal/zzsf$zzb;

    return p1
.end method

.method public final zzb(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzrx;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/libraries/places/internal/zzrx<",
            "Lcom/google/android/libraries/places/internal/zzsf$zze;",
            ">;"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/libraries/places/internal/zzsf$zzb;

    .line 2
    iget-object v0, p1, Lcom/google/android/libraries/places/internal/zzsf$zzb;->zzc:Lcom/google/android/libraries/places/internal/zzrx;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzrx;->zzc()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p1, Lcom/google/android/libraries/places/internal/zzsf$zzb;->zzc:Lcom/google/android/libraries/places/internal/zzrx;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzrx;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/zzrx;

    iput-object v0, p1, Lcom/google/android/libraries/places/internal/zzsf$zzb;->zzc:Lcom/google/android/libraries/places/internal/zzrx;

    .line 4
    :cond_0
    iget-object p1, p1, Lcom/google/android/libraries/places/internal/zzsf$zzb;->zzc:Lcom/google/android/libraries/places/internal/zzrx;

    return-object p1
.end method

.method public final zzc(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/places/internal/zzrv;->zza(Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzrx;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzrx;->zzb()V

    return-void
.end method
