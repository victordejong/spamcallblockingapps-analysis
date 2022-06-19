.class public final Lcom/google/android/gms/internal/mlkit_common/zzh;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/mlkit_common/zzh;

.field private static final zzb:Lcom/google/android/gms/internal/mlkit_common/zzh;


# instance fields
.field private final zzc:Z

.field private final zzd:Z

.field private final zze:Lcom/google/android/gms/internal/mlkit_common/zzad;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/mlkit_common/zzad<",
            "Lcom/google/android/gms/internal/mlkit_common/zzo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_common/zzh;->zza()Lcom/google/android/gms/internal/mlkit_common/zzg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_common/zzg;->zzb()Lcom/google/android/gms/internal/mlkit_common/zzg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_common/zzg;->zzc()Lcom/google/android/gms/internal/mlkit_common/zzh;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzh;->zza:Lcom/google/android/gms/internal/mlkit_common/zzh;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_common/zzh;->zza()Lcom/google/android/gms/internal/mlkit_common/zzg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_common/zzg;->zza()Lcom/google/android/gms/internal/mlkit_common/zzg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_common/zzg;->zzc()Lcom/google/android/gms/internal/mlkit_common/zzh;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzh;->zzb:Lcom/google/android/gms/internal/mlkit_common/zzh;

    return-void
.end method

.method private constructor <init>(ZZLcom/google/android/gms/internal/mlkit_common/zzad;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lcom/google/android/gms/internal/mlkit_common/zzad<",
            "Lcom/google/android/gms/internal/mlkit_common/zzo;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzh;->zzc:Z

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzh;->zzd:Z

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_common/zzh;->zze:Lcom/google/android/gms/internal/mlkit_common/zzad;

    return-void
.end method

.method public synthetic constructor <init>(ZZLcom/google/android/gms/internal/mlkit_common/zzad;Lcom/google/android/gms/internal/mlkit_common/zze;)V
    .locals 0

    const/4 p2, 0x0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/mlkit_common/zzh;-><init>(ZZLcom/google/android/gms/internal/mlkit_common/zzad;)V

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/mlkit_common/zzh;Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_common/zzr;)I
    .locals 6

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzh;->zze:Lcom/google/android/gms/internal/mlkit_common/zzad;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/google/android/gms/internal/mlkit_common/zzo;

    .line 4
    sget-object v4, Lcom/google/android/gms/internal/mlkit_common/zze;->zza:[I

    iget-boolean v5, p0, Lcom/google/android/gms/internal/mlkit_common/zzh;->zzc:Z

    invoke-virtual {v3, p1, p2, v5}, Lcom/google/android/gms/internal/mlkit_common/zzo;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_common/zzr;Z)I

    move-result v3

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    aget v3, v4, v3

    if-eq v3, v5, :cond_1

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    sget p0, Lcom/google/android/gms/internal/mlkit_common/zzq;->zzb:I

    return p0

    .line 6
    :cond_1
    sget p0, Lcom/google/android/gms/internal/mlkit_common/zzq;->zza:I

    return p0

    .line 7
    :cond_2
    sget p0, Lcom/google/android/gms/internal/mlkit_common/zzq;->zzc:I

    return p0
.end method

.method private static zza()Lcom/google/android/gms/internal/mlkit_common/zzg;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzg;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_common/zzg;-><init>(Lcom/google/android/gms/internal/mlkit_common/zze;)V

    return-object v0
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/mlkit_common/zzh;)Z
    .locals 0

    .line 2
    iget-boolean p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzh;->zzc:Z

    return p0
.end method

.method public static synthetic zzb(Lcom/google/android/gms/internal/mlkit_common/zzh;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/google/android/gms/internal/mlkit_common/zzh;->zzd:Z

    return p0
.end method
