.class public abstract Lcom/google/android/gms/internal/mlkit_translate/zzw;
.super Lcom/google/android/gms/internal/mlkit_translate/zzl;
.source "SourceFile"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/mlkit_translate/zzl<",
        "TE;>;",
        "Ljava/util/Set<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private transient zza:Lcom/google/android/gms/internal/mlkit_translate/zzq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/mlkit_translate/zzq<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_translate/zzl;-><init>()V

    return-void
.end method

.method public static zza(I)I
    .locals 5

    const/4 v0, 0x2

    .line 2
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/4 v0, 0x1

    const v1, 0x2ccccccc

    if-ge p0, v1, :cond_1

    add-int/lit8 v1, p0, -0x1

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v1

    shl-int/lit8 v0, v1, 0x1

    :goto_0
    int-to-double v1, v0

    const-wide v3, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v1, v3

    int-to-double v3, p0

    cmpg-double v1, v1, v3

    if-gez v1, :cond_0

    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    const/high16 v1, 0x40000000    # 2.0f

    if-ge p0, v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    const-string p0, "collection too large"

    .line 4
    invoke-static {v0, p0}, Lcom/google/android/gms/internal/mlkit_translate/zzi;->zza(ZLjava/lang/Object;)V

    return v1
.end method

.method public static synthetic zza(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_translate/zzw;
    .locals 0

    .line 5
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzw;->zzb(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_translate/zzw;

    move-result-object p0

    return-object p0
.end method

.method public static zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_translate/zzw;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "Lcom/google/android/gms/internal/mlkit_translate/zzw<",
            "TE;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_translate/zzai;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mlkit_translate/zzai;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method private static varargs zzb(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_translate/zzw;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/internal/mlkit_translate/zzw<",
            "TE;>;"
        }
    .end annotation

    :goto_0
    if-eqz p0, :cond_7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_6

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_translate/zzw;->zza(I)I

    move-result v2

    .line 2
    new-array v6, v2, [Ljava/lang/Object;

    add-int/lit8 v7, v2, -0x1

    move v3, v0

    move v5, v3

    move v8, v5

    :goto_1
    if-ge v3, p0, :cond_2

    .line 3
    aget-object v4, p1, v3

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/mlkit_translate/zzx;->zza(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    .line 4
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v9

    .line 5
    invoke-static {v9}, Lcom/google/android/gms/internal/mlkit_translate/zzm;->zza(I)I

    move-result v10

    :goto_2
    and-int v11, v10, v7

    .line 6
    aget-object v12, v6, v11

    if-nez v12, :cond_0

    add-int/lit8 v10, v8, 0x1

    .line 7
    aput-object v4, p1, v8

    .line 8
    aput-object v4, v6, v11

    add-int/2addr v5, v9

    move v8, v10

    goto :goto_3

    .line 9
    :cond_0
    invoke-virtual {v12, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_1
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 10
    invoke-static {p1, v8, p0, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    if-ne v8, v1, :cond_3

    .line 11
    aget-object p0, p1, v0

    .line 12
    new-instance p1, Lcom/google/android/gms/internal/mlkit_translate/zzai;

    invoke-direct {p1, p0, v5}, Lcom/google/android/gms/internal/mlkit_translate/zzai;-><init>(Ljava/lang/Object;I)V

    return-object p1

    .line 13
    :cond_3
    invoke-static {v8}, Lcom/google/android/gms/internal/mlkit_translate/zzw;->zza(I)I

    move-result p0

    div-int/lit8 v2, v2, 0x2

    if-ge p0, v2, :cond_4

    move p0, v8

    goto :goto_0

    .line 14
    :cond_4
    array-length p0, p1

    shr-int/lit8 v0, p0, 0x1

    shr-int/lit8 p0, p0, 0x2

    add-int/2addr v0, p0

    if-ge v8, v0, :cond_5

    .line 15
    invoke-static {p1, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    :cond_5
    move-object v4, p1

    .line 16
    new-instance p0, Lcom/google/android/gms/internal/mlkit_translate/zzag;

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/mlkit_translate/zzag;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    return-object p0

    .line 17
    :cond_6
    aget-object p0, p1, v0

    .line 18
    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_translate/zzw;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_translate/zzw;

    move-result-object p0

    return-object p0

    .line 19
    :cond_7
    sget-object p0, Lcom/google/android/gms/internal/mlkit_translate/zzag;->zza:Lcom/google/android/gms/internal/mlkit_translate/zzag;

    return-object p0
.end method

.method public static zzf()Lcom/google/android/gms/internal/mlkit_translate/zzw;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/android/gms/internal/mlkit_translate/zzw<",
            "TE;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_translate/zzag;->zza:Lcom/google/android/gms/internal/mlkit_translate/zzag;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/mlkit_translate/zzw;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_translate/zzw;->zzg()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/mlkit_translate/zzw;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_translate/zzw;->zzg()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_translate/zzw;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-eq v0, v1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 5
    :cond_1
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzaf;->zza(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/mlkit_translate/zzaf;->zza(Ljava/util/Set;)I

    move-result v0

    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_translate/zzl;->zza()Lcom/google/android/gms/internal/mlkit_translate/zzak;

    move-result-object v0

    return-object v0
.end method

.method public zze()Lcom/google/android/gms/internal/mlkit_translate/zzq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/mlkit_translate/zzq<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzw;->zza:Lcom/google/android/gms/internal/mlkit_translate/zzq;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_translate/zzw;->zzh()Lcom/google/android/gms/internal/mlkit_translate/zzq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzw;->zza:Lcom/google/android/gms/internal/mlkit_translate/zzq;

    :cond_0
    return-object v0
.end method

.method public zzg()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public zzh()Lcom/google/android/gms/internal/mlkit_translate/zzq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/mlkit_translate/zzq<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_translate/zzl;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_translate/zzq;->zzb([Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_translate/zzq;

    move-result-object v0

    return-object v0
.end method
