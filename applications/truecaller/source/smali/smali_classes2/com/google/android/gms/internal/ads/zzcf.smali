.class public final synthetic Lcom/google/android/gms/internal/ads/zzcf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcy;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcf;->zza:Lcom/google/android/gms/internal/ads/zzcy;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcf;->zza:Lcom/google/android/gms/internal/ads/zzcy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcy;->zzaa()V

    return-void
.end method
