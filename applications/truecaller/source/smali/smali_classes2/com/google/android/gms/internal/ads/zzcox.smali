.class public final Lcom/google/android/gms/internal/ads/zzcox;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgla;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzgla<",
        "Lcom/google/android/gms/internal/ads/zzcgz;",
        ">;"
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcom;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcom;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcox;->zza:Lcom/google/android/gms/internal/ads/zzcom;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzcgz;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcox;->zza:Lcom/google/android/gms/internal/ads/zzcom;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcom;->zzc()Lcom/google/android/gms/internal/ads/zzcgz;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgli;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcox;->zza:Lcom/google/android/gms/internal/ads/zzcom;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcom;->zzc()Lcom/google/android/gms/internal/ads/zzcgz;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgli;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
