.class public final Lcom/google/android/gms/internal/ads/zzgk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhx;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzoa;

.field private zzb:Lcom/google/android/gms/internal/ads/zznu;

.field private zzc:Lcom/google/android/gms/internal/ads/zznv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzoa;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgk;->zza:Lcom/google/android/gms/internal/ads/zzoa;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzah;Landroid/net/Uri;Ljava/util/Map;JJLcom/google/android/gms/internal/ads/zznx;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzah;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;JJ",
            "Lcom/google/android/gms/internal/ads/zznx;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/google/android/gms/internal/ads/zznp;

    move-object v0, v6

    move-object v1, p1

    move-wide v2, p4

    move-wide v4, p6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zznp;-><init>(Lcom/google/android/gms/internal/ads/zzah;JJ)V

    iput-object v6, p0, Lcom/google/android/gms/internal/ads/zzgk;->zzc:Lcom/google/android/gms/internal/ads/zznv;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgk;->zzb:Lcom/google/android/gms/internal/ads/zznu;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgk;->zza:Lcom/google/android/gms/internal/ads/zzoa;

    .line 2
    invoke-interface {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzoa;->zza(Landroid/net/Uri;Ljava/util/Map;)[Lcom/google/android/gms/internal/ads/zznu;

    move-result-object p1

    .line 3
    array-length p3, p1

    const/4 p6, 0x0

    const/4 p7, 0x1

    if-ne p3, p7, :cond_1

    .line 4
    aget-object p1, p1, p6

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgk;->zzb:Lcom/google/android/gms/internal/ads/zznu;

    goto :goto_4

    :cond_1
    move v0, p6

    :goto_0
    if-ge v0, p3, :cond_7

    .line 5
    aget-object v1, p1, v0

    .line 6
    :try_start_0
    invoke-interface {v1, v6}, Lcom/google/android/gms/internal/ads/zznu;->zza(Lcom/google/android/gms/internal/ads/zznv;)Z

    move-result v2

    if-eqz v2, :cond_2

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzgk;->zzb:Lcom/google/android/gms/internal/ads/zznu;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-static {p7}, Lcom/google/android/gms/internal/ads/zzakt;->zzd(Z)V

    .line 8
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zznv;->zzl()V

    goto :goto_3

    .line 9
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgk;->zzb:Lcom/google/android/gms/internal/ads/zznu;

    if-nez v1, :cond_6

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zznv;->zzn()J

    move-result-wide v1

    cmp-long v1, v1, p4

    if-nez v1, :cond_5

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 10
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzgk;->zzb:Lcom/google/android/gms/internal/ads/zznu;

    if-nez p2, :cond_3

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zznv;->zzn()J

    move-result-wide p2

    cmp-long p2, p2, p4

    if-nez p2, :cond_4

    :cond_3
    move p6, p7

    .line 11
    :cond_4
    invoke-static {p6}, Lcom/google/android/gms/internal/ads/zzakt;->zzd(Z)V

    .line 12
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zznv;->zzl()V

    .line 13
    throw p1

    .line 14
    :catch_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgk;->zzb:Lcom/google/android/gms/internal/ads/zznu;

    if-nez v1, :cond_6

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zznv;->zzn()J

    move-result-wide v1

    cmp-long v1, v1, p4

    if-nez v1, :cond_5

    goto :goto_1

    :cond_5
    move v1, p6

    goto :goto_2

    :cond_6
    :goto_1
    move v1, p7

    .line 15
    :goto_2
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzakt;->zzd(Z)V

    .line 16
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zznv;->zzl()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    :goto_3
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzgk;->zzb:Lcom/google/android/gms/internal/ads/zznu;

    if-eqz p3, :cond_8

    .line 17
    :goto_4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgk;->zzb:Lcom/google/android/gms/internal/ads/zznu;

    .line 18
    invoke-interface {p1, p8}, Lcom/google/android/gms/internal/ads/zznu;->zzb(Lcom/google/android/gms/internal/ads/zznx;)V

    return-void

    .line 19
    :cond_8
    new-instance p3, Lcom/google/android/gms/internal/ads/zzjb;

    .line 20
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzamq;->zzM([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p5

    add-int/lit8 p5, p5, 0x3a

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p5, "None of the available extractors ("

    const-string p6, ") could read the stream."

    invoke-static {p4, p5, p1, p6}, Le/d/c/a/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 21
    invoke-direct {p3, p1, p2}, Lcom/google/android/gms/internal/ads/zzjb;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    throw p3
.end method

.method public final zzb()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgk;->zzb:Lcom/google/android/gms/internal/ads/zznu;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzgk;->zzb:Lcom/google/android/gms/internal/ads/zznu;

    :cond_0
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzgk;->zzc:Lcom/google/android/gms/internal/ads/zznv;

    return-void
.end method

.method public final zzc()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgk;->zzb:Lcom/google/android/gms/internal/ads/zznu;

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzqq;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/zzqq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqq;->zze()V

    :cond_0
    return-void
.end method

.method public final zzd()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgk;->zzc:Lcom/google/android/gms/internal/ads/zznv;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zznv;->zzn()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final zze(JJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgk;->zzb:Lcom/google/android/gms/internal/ads/zznu;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zznu;->zzd(JJ)V

    return-void
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzoq;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgk;->zzb:Lcom/google/android/gms/internal/ads/zznu;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgk;->zzc:Lcom/google/android/gms/internal/ads/zznv;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zznu;->zzc(Lcom/google/android/gms/internal/ads/zznv;Lcom/google/android/gms/internal/ads/zzoq;)I

    move-result p1

    return p1
.end method
