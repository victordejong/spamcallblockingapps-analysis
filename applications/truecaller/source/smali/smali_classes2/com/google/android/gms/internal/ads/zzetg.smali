.class public final Lcom/google/android/gms/internal/ads/zzetg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzery;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzery<",
        "Lcom/google/android/gms/internal/ads/zzeth;",
        ">;"
    }
.end annotation


# instance fields
.field public final zza:Lcom/google/android/gms/internal/ads/zzfsn;

.field public final zzb:Landroid/content/Context;

.field public final zzc:Lcom/google/android/gms/internal/ads/zzayq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzayq;Lcom/google/android/gms/internal/ads/zzfsn;Landroid/content/Context;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzetg;->zzc:Lcom/google/android/gms/internal/ads/zzayq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzetg;->zza:Lcom/google/android/gms/internal/ads/zzfsn;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzetg;->zzb:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzfsm;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzfsm<",
            "Lcom/google/android/gms/internal/ads/zzeth;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzetg;->zza:Lcom/google/android/gms/internal/ads/zzfsn;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzetf;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzetf;-><init>(Lcom/google/android/gms/internal/ads/zzetg;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzfsn;->zzb(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzfsm;

    move-result-object v0

    return-object v0
.end method
