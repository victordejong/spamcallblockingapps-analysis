.class public final synthetic Lcom/google/android/gms/internal/ads/zzdaa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdac;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdac;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdaa;->zza:Lcom/google/android/gms/internal/ads/zzdac;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdaa;->zza:Lcom/google/android/gms/internal/ads/zzdac;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdac;->zzf()V

    return-void
.end method
