.class public final Lcom/google/android/gms/internal/ads/zzdv;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field public final zza:Z

.field public final zzb:Lcom/google/android/gms/internal/ads/zzafv;


# direct methods
.method public constructor <init>(ILcom/google/android/gms/internal/ads/zzafv;Z)V
    .locals 2

    const/16 v0, 0x24

    const-string v1, "AudioTrack write failed: "

    .line 1
    invoke-static {v0, v1, p1}, Le/d/c/a/a;->L1(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzdv;->zza:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdv;->zzb:Lcom/google/android/gms/internal/ads/zzafv;

    return-void
.end method
