.class public final synthetic Lcom/google/android/gms/internal/ads/zzfey;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfez;

.field private final zzb:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfez;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfey;->zza:Lcom/google/android/gms/internal/ads/zzfez;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfey;->zzb:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfey;->zza:Lcom/google/android/gms/internal/ads/zzfez;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfey;->zzb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfez;->zzb(Ljava/lang/String;)V

    return-void
.end method
