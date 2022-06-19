.class public final synthetic Lcom/google/android/gms/internal/ads/zzebh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzebq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzebq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzebh;->zza:Lcom/google/android/gms/internal/ads/zzebq;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzebh;->zza:Lcom/google/android/gms/internal/ads/zzebq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzebq;->zzk()V

    return-void
.end method
