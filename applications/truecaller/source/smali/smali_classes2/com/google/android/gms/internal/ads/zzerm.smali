.class public final synthetic Lcom/google/android/gms/internal/ads/zzerm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzern;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzern;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzerm;->zza:Lcom/google/android/gms/internal/ads/zzern;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzerm;->zza:Lcom/google/android/gms/internal/ads/zzern;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzern;->zzb()Lcom/google/android/gms/internal/ads/zzero;

    move-result-object v0

    return-object v0
.end method
