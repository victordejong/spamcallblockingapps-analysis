.class public final synthetic Lcom/google/android/gms/internal/ads/zzbhm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzbhs;

.field private final zzb:Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbhs;Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhm;->zza:Lcom/google/android/gms/internal/ads/zzbhs;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbhm;->zzb:Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbhm;->zza:Lcom/google/android/gms/internal/ads/zzbhs;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbhm;->zzb:Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbhs;->zzu(Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;)V

    return-void
.end method
