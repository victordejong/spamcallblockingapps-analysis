.class public final Lcom/google/android/gms/internal/ads/zzane;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzanf;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzanf;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzane;->zza:Lcom/google/android/gms/internal/ads/zzanf;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzane;->zza:Lcom/google/android/gms/internal/ads/zzanf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzanf;->zzs(Landroid/os/Message;)V

    return-void
.end method
