.class public final Lcom/google/android/gms/internal/ads/zzaub;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final zza:Landroid/net/Uri;

.field public final zzb:J

.field public final zzc:J

.field public final zzd:J


# direct methods
.method public constructor <init>(Landroid/net/Uri;[BJJJLjava/lang/String;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 p9, 0x0

    cmp-long p2, p3, p9

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p2, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzaup;->zza(Z)V

    cmp-long p2, p5, p9

    if-ltz p2, :cond_1

    move p2, v1

    goto :goto_1

    :cond_1
    move p2, v0

    .line 2
    :goto_1
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzaup;->zza(Z)V

    cmp-long p2, p7, p9

    if-gtz p2, :cond_2

    const-wide/16 p9, -0x1

    cmp-long p2, p7, p9

    if-nez p2, :cond_3

    :cond_2
    move v0, v1

    .line 3
    :cond_3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaup;->zza(Z)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaub;->zza:Landroid/net/Uri;

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzaub;->zzb:J

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/zzaub;->zzc:J

    iput-wide p7, p0, Lcom/google/android/gms/internal/ads/zzaub;->zzd:J

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaub;->zza:Landroid/net/Uri;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzaub;->zzb:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzaub;->zzc:J

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zzaub;->zzd:J

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    new-instance v10, Ljava/lang/StringBuilder;

    const/16 v11, 0x5d

    const/4 v12, 0x4

    invoke-static {v8, v11, v9, v12}, Le/d/c/a/a;->b(IIII)I

    move-result v8

    invoke-direct {v10, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "DataSpec["

    const-string v9, ", "

    invoke-static {v10, v8, v0, v9, v1}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v10, v9, v2, v3, v9}, Le/d/c/a/a;->Q0(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", null, 0]"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
