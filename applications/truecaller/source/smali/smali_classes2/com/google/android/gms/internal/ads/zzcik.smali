.class public final synthetic Lcom/google/android/gms/internal/ads/zzcik;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcii;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzcii;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcik;->zza:Lcom/google/android/gms/internal/ads/zzcii;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzcii;)Ljava/lang/Runnable;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcik;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcik;-><init>(Lcom/google/android/gms/internal/ads/zzcii;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcik;->zza:Lcom/google/android/gms/internal/ads/zzcii;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcii;->zzg()V

    return-void
.end method
