.class public final synthetic Lcom/google/android/gms/internal/ads/zzesi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzesj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzesj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzesi;->zza:Lcom/google/android/gms/internal/ads/zzesj;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzesi;->zza:Lcom/google/android/gms/internal/ads/zzesj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzesj;->zzb()Lcom/google/android/gms/internal/ads/zzesh;

    move-result-object v0

    return-object v0
.end method
