.class public final synthetic Lcom/google/android/gms/internal/ads/zzenv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzenw;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzenw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzenv;->zza:Lcom/google/android/gms/internal/ads/zzenw;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzenv;->zza:Lcom/google/android/gms/internal/ads/zzenw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzenw;->zzb()Lcom/google/android/gms/internal/ads/zzenx;

    move-result-object v0

    return-object v0
.end method
