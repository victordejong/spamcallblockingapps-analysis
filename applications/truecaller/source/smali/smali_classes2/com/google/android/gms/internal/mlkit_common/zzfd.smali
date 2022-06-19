.class public final Lcom/google/android/gms/internal/mlkit_common/zzfd;
.super Lcom/google/android/gms/internal/mlkit_common/zzfb;
.source "SourceFile"


# instance fields
.field private final zza:[B

.field private final zzb:Z

.field private zzc:I

.field private zzd:I

.field private zze:I

.field private zzf:I

.field private zzg:I


# direct methods
.method private constructor <init>([BIIZ)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_common/zzfb;-><init>(Lcom/google/android/gms/internal/mlkit_common/zzfa;)V

    const v0, 0x7fffffff

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzfd;->zzg:I

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzfd;->zza:[B

    add-int/2addr p3, p2

    .line 4
    iput p3, p0, Lcom/google/android/gms/internal/mlkit_common/zzfd;->zzc:I

    .line 5
    iput p2, p0, Lcom/google/android/gms/internal/mlkit_common/zzfd;->zze:I

    .line 6
    iput p2, p0, Lcom/google/android/gms/internal/mlkit_common/zzfd;->zzf:I

    .line 7
    iput-boolean p4, p0, Lcom/google/android/gms/internal/mlkit_common/zzfd;->zzb:Z

    return-void
.end method

.method public synthetic constructor <init>([BIIZLcom/google/android/gms/internal/mlkit_common/zzfa;)V
    .locals 0

    const/4 p2, 0x0

    .line 8
    invoke-direct {p0, p1, p2, p3, p2}, Lcom/google/android/gms/internal/mlkit_common/zzfd;-><init>([BIIZ)V

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 2

    .line 13
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzfd;->zze:I

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzfd;->zzf:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final zza(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/mlkit_common/zzgb;
        }
    .end annotation

    if-ltz p1, :cond_2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_common/zzfd;->zza()I

    move-result v0

    add-int/2addr v0, p1

    .line 2
    iget p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzfd;->zzg:I

    if-gt v0, p1, :cond_1

    .line 3
    iput v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzfd;->zzg:I

    .line 4
    iget v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzfd;->zzc:I

    iget v2, p0, Lcom/google/android/gms/internal/mlkit_common/zzfd;->zzd:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzfd;->zzc:I

    .line 5
    iget v2, p0, Lcom/google/android/gms/internal/mlkit_common/zzfd;->zzf:I

    sub-int v2, v1, v2

    if-le v2, v0, :cond_0

    sub-int/2addr v2, v0

    .line 6
    iput v2, p0, Lcom/google/android/gms/internal/mlkit_common/zzfd;->zzd:I

    sub-int/2addr v1, v2

    .line 7
    iput v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzfd;->zzc:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzfd;->zzd:I

    :goto_0
    return p1

    .line 9
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/mlkit_common/zzgb;

    const-string v0, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/mlkit_common/zzgb;-><init>(Ljava/lang/String;)V

    .line 10
    throw p1

    .line 11
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/mlkit_common/zzgb;

    const-string v0, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/mlkit_common/zzgb;-><init>(Ljava/lang/String;)V

    .line 12
    throw p1
.end method
