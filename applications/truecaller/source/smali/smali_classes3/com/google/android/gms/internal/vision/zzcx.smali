.class public final Lcom/google/android/gms/internal/vision/zzcx;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static zza(Lcom/google/android/gms/internal/vision/zzcu;)Lcom/google/android/gms/internal/vision/zzcu;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/vision/zzcu<",
            "TT;>;)",
            "Lcom/google/android/gms/internal/vision/zzcu<",
            "TT;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lcom/google/android/gms/internal/vision/zzcz;

    if-nez v0, :cond_2

    instance-of v0, p0, Lcom/google/android/gms/internal/vision/zzcw;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    instance-of v0, p0, Ljava/io/Serializable;

    if-eqz v0, :cond_1

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/vision/zzcw;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/vision/zzcw;-><init>(Lcom/google/android/gms/internal/vision/zzcu;)V

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/vision/zzcz;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/vision/zzcz;-><init>(Lcom/google/android/gms/internal/vision/zzcu;)V

    return-object v0

    :cond_2
    :goto_0
    return-object p0
.end method

.method public static zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/vision/zzcu;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/google/android/gms/internal/vision/zzcu<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/vision/zzcy;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/vision/zzcy;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
