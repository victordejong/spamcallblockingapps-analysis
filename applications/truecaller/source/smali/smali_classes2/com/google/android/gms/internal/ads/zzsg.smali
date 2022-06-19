.class public final Lcom/google/android/gms/internal/ads/zzsg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public zza:I

.field public zzb:J

.field public zzc:I

.field public zzd:I

.field public zze:I

.field public final zzf:[I

.field private final zzg:Lcom/google/android/gms/internal/ads/zzamf;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xff

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzsg;->zzf:[I

    new-instance v1, Lcom/google/android/gms/internal/ads/zzamf;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzamf;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzsg;->zzg:Lcom/google/android/gms/internal/ads/zzamf;

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzsg;->zza:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzsg;->zzb:J

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzsg;->zzc:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzsg;->zzd:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzsg;->zze:I

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zznv;J)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zznv;->zzn()J

    move-result-wide v0

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zznv;->zzm()J

    move-result-wide v2

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakt;->zza(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsg;->zzg:Lcom/google/android/gms/internal/ads/zzamf;

    const/4 v3, 0x4

    .line 2
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzamf;->zza(I)V

    :goto_1
    const-wide/16 v4, -0x1

    cmp-long v0, p2, v4

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zznv;->zzn()J

    move-result-wide v4

    const-wide/16 v6, 0x4

    add-long/2addr v4, v6

    cmp-long v4, v4, p2

    if-ltz v4, :cond_1

    goto :goto_2

    .line 3
    :cond_1
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzsg;->zzg:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v4

    .line 4
    invoke-static {p1, v4, v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzny;->zze(Lcom/google/android/gms/internal/ads/zznv;[BIIZ)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsg;->zzg:Lcom/google/android/gms/internal/ads/zzamf;

    .line 5
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsg;->zzg:Lcom/google/android/gms/internal/ads/zzamf;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzt()J

    move-result-wide v4

    const-wide/32 v6, 0x4f676753

    cmp-long v0, v4, v6

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zznp;

    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zznp;->zzd(IZ)Z

    goto :goto_1

    .line 8
    :cond_2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zznv;->zzl()V

    return v1

    :cond_3
    :goto_2
    if-eqz v0, :cond_4

    .line 9
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zznv;->zzn()J

    move-result-wide v3

    cmp-long v3, v3, p2

    if-gez v3, :cond_5

    .line 10
    :cond_4
    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/zznv;->zzc(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    :cond_5
    return v2
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zznv;Z)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzsg;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsg;->zzg:Lcom/google/android/gms/internal/ads/zzamf;

    const/16 v1, 0x1b

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzamf;->zza(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsg;->zzg:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v0

    const/4 v2, 0x0

    .line 3
    invoke-static {p1, v0, v2, v1, p2}, Lcom/google/android/gms/internal/ads/zzny;->zze(Lcom/google/android/gms/internal/ads/zznv;[BIIZ)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsg;->zzg:Lcom/google/android/gms/internal/ads/zzamf;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzt()J

    move-result-wide v0

    const-wide/32 v3, 0x4f676753

    cmp-long v0, v0, v3

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsg;->zzg:Lcom/google/android/gms/internal/ads/zzamf;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    return v2

    :cond_1
    const-string p1, "unsupported bit stream revision"

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaha;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaha;

    move-result-object p1

    throw p1

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsg;->zzg:Lcom/google/android/gms/internal/ads/zzamf;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzsg;->zza:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsg;->zzg:Lcom/google/android/gms/internal/ads/zzamf;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzy()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzsg;->zzb:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsg;->zzg:Lcom/google/android/gms/internal/ads/zzamf;

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzu()J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsg;->zzg:Lcom/google/android/gms/internal/ads/zzamf;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzu()J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsg;->zzg:Lcom/google/android/gms/internal/ads/zzamf;

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzu()J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsg;->zzg:Lcom/google/android/gms/internal/ads/zzamf;

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzsg;->zzc:I

    add-int/lit8 v1, v0, 0x1b

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzsg;->zzd:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzsg;->zzg:Lcom/google/android/gms/internal/ads/zzamf;

    .line 14
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzamf;->zza(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsg;->zzg:Lcom/google/android/gms/internal/ads/zzamf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzsg;->zzc:I

    .line 15
    invoke-static {p1, v0, v2, v1, p2}, Lcom/google/android/gms/internal/ads/zzny;->zze(Lcom/google/android/gms/internal/ads/zznv;[BIIZ)Z

    move-result p1

    if-eqz p1, :cond_4

    :goto_0
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzsg;->zzc:I

    if-ge v2, p1, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzsg;->zzf:[I

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzsg;->zzg:Lcom/google/android/gms/internal/ads/zzamf;

    .line 16
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result p2

    aput p2, p1, v2

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzsg;->zze:I

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzsg;->zzf:[I

    .line 17
    aget p2, p2, v2

    add-int/2addr p1, p2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzsg;->zze:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_1
    return v2
.end method
