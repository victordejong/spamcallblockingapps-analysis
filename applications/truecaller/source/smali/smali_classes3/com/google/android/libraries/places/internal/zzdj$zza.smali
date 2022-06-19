.class public abstract Lcom/google/android/libraries/places/internal/zzdj$zza;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/places/internal/zzdj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zza"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract zza(I)Lcom/google/android/libraries/places/internal/zzdj$zza;
.end method

.method public abstract zza(Lcom/google/android/libraries/places/internal/zzdj$zzb;)Lcom/google/android/libraries/places/internal/zzdj$zza;
.end method

.method public abstract zza(Ljava/lang/String;)Lcom/google/android/libraries/places/internal/zzdj$zza;
.end method

.method public abstract zza()Lcom/google/android/libraries/places/internal/zzdj;
.end method

.method public final zzb()Lcom/google/android/libraries/places/internal/zzdj;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/libraries/places/internal/zzdj$zza;->zza()Lcom/google/android/libraries/places/internal/zzdj;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzdj;->zza()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "Package name must not be empty."

    .line 3
    invoke-static {v1, v2}, Lcom/google/android/libraries/places/internal/zzft;->zzb(ZLjava/lang/Object;)V

    return-object v0
.end method
