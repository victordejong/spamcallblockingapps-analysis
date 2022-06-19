.class public final synthetic Lcom/google/android/gms/internal/ads/zzcjp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcjs;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcjs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjp;->zza:Lcom/google/android/gms/internal/ads/zzcjs;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjp;->zza:Lcom/google/android/gms/internal/ads/zzcjs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcjs;->zzJ()V

    return-void
.end method
