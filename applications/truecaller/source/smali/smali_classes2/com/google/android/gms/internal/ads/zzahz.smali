.class public final Lcom/google/android/gms/internal/ads/zzahz;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzahz;

.field public static final zzb:Lcom/google/android/gms/internal/ads/zzahz;

.field public static final zzc:Lcom/google/android/gms/internal/ads/zzahz;

.field public static final zzd:Lcom/google/android/gms/internal/ads/zzahz;

.field public static final zze:Lcom/google/android/gms/internal/ads/zzahz;


# instance fields
.field public final zzf:J

.field public final zzg:J


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzahz;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Lcom/google/android/gms/internal/ads/zzahz;-><init>(JJ)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzahz;->zza:Lcom/google/android/gms/internal/ads/zzahz;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzahz;

    const-wide v4, 0x7fffffffffffffffL

    .line 2
    invoke-direct {v3, v4, v5, v4, v5}, Lcom/google/android/gms/internal/ads/zzahz;-><init>(JJ)V

    sput-object v3, Lcom/google/android/gms/internal/ads/zzahz;->zzb:Lcom/google/android/gms/internal/ads/zzahz;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzahz;

    .line 3
    invoke-direct {v3, v4, v5, v1, v2}, Lcom/google/android/gms/internal/ads/zzahz;-><init>(JJ)V

    sput-object v3, Lcom/google/android/gms/internal/ads/zzahz;->zzc:Lcom/google/android/gms/internal/ads/zzahz;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzahz;

    .line 4
    invoke-direct {v3, v1, v2, v4, v5}, Lcom/google/android/gms/internal/ads/zzahz;-><init>(JJ)V

    sput-object v3, Lcom/google/android/gms/internal/ads/zzahz;->zzd:Lcom/google/android/gms/internal/ads/zzahz;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzahz;->zze:Lcom/google/android/gms/internal/ads/zzahz;

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ltz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzakt;->zza(Z)V

    cmp-long v0, p3, v0

    if-ltz v0, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    .line 2
    :goto_1
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzakt;->zza(Z)V

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzahz;->zzf:J

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzahz;->zzg:J

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 1
    const-class v2, Lcom/google/android/gms/internal/ads/zzahz;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzahz;

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzahz;->zzf:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/zzahz;->zzf:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzahz;->zzg:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/zzahz;->zzg:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzahz;->zzf:J

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzahz;->zzg:J

    long-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method
