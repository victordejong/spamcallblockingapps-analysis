.class public final Lcom/google/android/gms/internal/ads/zzql;
.super Lcom/google/android/gms/internal/ads/zzno;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzqs;


# direct methods
.method public constructor <init>(JJLcom/google/android/gms/internal/ads/zzon;Z)V
    .locals 8

    .line 1
    iget v5, p5, Lcom/google/android/gms/internal/ads/zzon;->zzf:I

    iget v6, p5, Lcom/google/android/gms/internal/ads/zzon;->zzc:I

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzno;-><init>(JJIIZ)V

    return-void
.end method


# virtual methods
.method public final zzb(J)J
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzno;->zza(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public final zzc()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method
