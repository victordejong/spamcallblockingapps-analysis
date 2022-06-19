.class public final Lcom/google/android/libraries/places/internal/zzgs;
.super Lcom/google/android/libraries/places/internal/zzgn;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/libraries/places/internal/zzgn<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final zza:Lcom/google/android/libraries/places/internal/zzgn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/places/internal/zzgn<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final transient zzb:Ljava/lang/Object;

.field private final transient zzc:[Ljava/lang/Object;

.field private final transient zzd:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/libraries/places/internal/zzgs;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v2, v1}, Lcom/google/android/libraries/places/internal/zzgs;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    sput-object v0, Lcom/google/android/libraries/places/internal/zzgs;->zza:Lcom/google/android/libraries/places/internal/zzgn;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;[Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzgn;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzgs;->zzb:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Lcom/google/android/libraries/places/internal/zzgs;->zzc:[Ljava/lang/Object;

    .line 4
    iput p3, p0, Lcom/google/android/libraries/places/internal/zzgs;->zzd:I

    return-void
.end method

.method public static zza(I[Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgs;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/libraries/places/internal/zzgs<",
            "TK;TV;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Lcom/google/android/libraries/places/internal/zzgs;->zza:Lcom/google/android/libraries/places/internal/zzgn;

    check-cast p0, Lcom/google/android/libraries/places/internal/zzgs;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p0, v2, :cond_1

    .line 2
    aget-object p0, p1, v1

    aget-object v1, p1, v2

    invoke-static {p0, v1}, Lcom/google/android/libraries/places/internal/zzgb;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3
    new-instance p0, Lcom/google/android/libraries/places/internal/zzgs;

    invoke-direct {p0, v0, p1, v2}, Lcom/google/android/libraries/places/internal/zzgs;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    return-object p0

    .line 4
    :cond_1
    array-length v3, p1

    shr-int/2addr v3, v2

    invoke-static {p0, v3}, Lcom/google/android/libraries/places/internal/zzft;->zzb(II)I

    const/4 v3, 0x2

    .line 5
    invoke-static {p0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    const v4, 0x2ccccccc

    const/high16 v5, 0x40000000    # 2.0f

    if-ge v3, v4, :cond_2

    add-int/lit8 v4, v3, -0x1

    .line 6
    invoke-static {v4}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v4

    shl-int/2addr v4, v2

    move v5, v4

    :goto_0
    int-to-double v6, v5

    const-wide v8, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v6, v8

    int-to-double v8, v3

    cmpg-double v4, v6, v8

    if-gez v4, :cond_4

    shl-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    if-ge v3, v5, :cond_3

    move v3, v2

    goto :goto_1

    :cond_3
    move v3, v1

    :goto_1
    const-string v4, "collection too large"

    .line 7
    invoke-static {v3, v4}, Lcom/google/android/libraries/places/internal/zzft;->zza(ZLjava/lang/Object;)V

    :cond_4
    if-ne p0, v2, :cond_5

    .line 8
    aget-object v1, p1, v1

    aget-object v2, p1, v2

    invoke-static {v1, v2}, Lcom/google/android/libraries/places/internal/zzgb;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_5
    add-int/lit8 v0, v5, -0x1

    const/16 v2, 0x80

    const/4 v3, -0x1

    if-gt v5, v2, :cond_9

    .line 9
    new-array v2, v5, [B

    .line 10
    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([BB)V

    :goto_2
    if-ge v1, p0, :cond_8

    mul-int/lit8 v3, v1, 0x2

    .line 11
    aget-object v4, p1, v3

    xor-int/lit8 v5, v3, 0x1

    .line 12
    aget-object v5, p1, v5

    .line 13
    invoke-static {v4, v5}, Lcom/google/android/libraries/places/internal/zzgb;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 14
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-static {v6}, Lcom/google/android/libraries/places/internal/zzgg;->zza(I)I

    move-result v6

    :goto_3
    and-int/2addr v6, v0

    .line 15
    aget-byte v7, v2, v6

    const/16 v8, 0xff

    and-int/2addr v7, v8

    if-ne v7, v8, :cond_6

    int-to-byte v3, v3

    .line 16
    aput-byte v3, v2, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 17
    :cond_6
    aget-object v8, p1, v7

    invoke-virtual {v8, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 18
    :cond_7
    invoke-static {v4, v5, p1, v7}, Lcom/google/android/libraries/places/internal/zzgs;->zza(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;I)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    :cond_8
    move-object v0, v2

    goto/16 :goto_8

    :cond_9
    const v2, 0x8000

    if-gt v5, v2, :cond_c

    .line 19
    new-array v2, v5, [S

    .line 20
    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([SS)V

    :goto_4
    if-ge v1, p0, :cond_8

    mul-int/lit8 v3, v1, 0x2

    .line 21
    aget-object v4, p1, v3

    xor-int/lit8 v5, v3, 0x1

    .line 22
    aget-object v5, p1, v5

    .line 23
    invoke-static {v4, v5}, Lcom/google/android/libraries/places/internal/zzgb;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 24
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-static {v6}, Lcom/google/android/libraries/places/internal/zzgg;->zza(I)I

    move-result v6

    :goto_5
    and-int/2addr v6, v0

    .line 25
    aget-short v7, v2, v6

    const v8, 0xffff

    and-int/2addr v7, v8

    if-ne v7, v8, :cond_a

    int-to-short v3, v3

    .line 26
    aput-short v3, v2, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 27
    :cond_a
    aget-object v8, p1, v7

    invoke-virtual {v8, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 28
    :cond_b
    invoke-static {v4, v5, p1, v7}, Lcom/google/android/libraries/places/internal/zzgs;->zza(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;I)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    .line 29
    :cond_c
    new-array v2, v5, [I

    .line 30
    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([II)V

    :goto_6
    if-ge v1, p0, :cond_8

    mul-int/lit8 v4, v1, 0x2

    .line 31
    aget-object v5, p1, v4

    xor-int/lit8 v6, v4, 0x1

    .line 32
    aget-object v6, p1, v6

    .line 33
    invoke-static {v5, v6}, Lcom/google/android/libraries/places/internal/zzgb;->zza(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 34
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-static {v7}, Lcom/google/android/libraries/places/internal/zzgg;->zza(I)I

    move-result v7

    :goto_7
    and-int/2addr v7, v0

    .line 35
    aget v8, v2, v7

    if-ne v8, v3, :cond_d

    .line 36
    aput v4, v2, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 37
    :cond_d
    aget-object v9, p1, v8

    invoke-virtual {v9, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_e

    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 38
    :cond_e
    invoke-static {v5, v6, p1, v8}, Lcom/google/android/libraries/places/internal/zzgs;->zza(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;I)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    .line 39
    :goto_8
    new-instance v1, Lcom/google/android/libraries/places/internal/zzgs;

    invoke-direct {v1, v0, p1, p0}, Lcom/google/android/libraries/places/internal/zzgs;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    return-object v1
.end method

.method private static zza(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;I)Ljava/lang/IllegalArgumentException;
    .locals 4

    .line 40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aget-object v1, p2, p3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    xor-int/lit8 p3, p3, 0x1

    aget-object p2, p2, p3

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0x27

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p3

    add-int/2addr p3, v2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, p3

    const-string p3, "Multiple entries with same key: "

    const-string v3, "="

    invoke-static {v2, p3, p0, v3, p1}, Le/d/c/a/a;->A(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " and "

    invoke-static {p0, p1, v1, v3, p2}, Le/d/c/a/a;->k(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzgs;->zzb:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzgs;->zzc:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/android/libraries/places/internal/zzgs;->zzd:I

    const/4 v3, 0x0

    if-nez p1, :cond_0

    return-object v3

    :cond_0
    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    const/4 v0, 0x0

    .line 2
    aget-object v0, v1, v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    aget-object p1, v1, v4

    return-object p1

    :cond_1
    return-object v3

    :cond_2
    if-nez v0, :cond_3

    return-object v3

    .line 4
    :cond_3
    instance-of v2, v0, [B

    if-eqz v2, :cond_6

    .line 5
    move-object v2, v0

    check-cast v2, [B

    .line 6
    array-length v0, v2

    add-int/lit8 v5, v0, -0x1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzgg;->zza(I)I

    move-result v0

    :goto_0
    and-int/2addr v0, v5

    .line 8
    aget-byte v6, v2, v0

    const/16 v7, 0xff

    and-int/2addr v6, v7

    if-ne v6, v7, :cond_4

    return-object v3

    .line 9
    :cond_4
    aget-object v7, v1, v6

    invoke-virtual {v7, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    xor-int/lit8 p1, v6, 0x1

    .line 10
    aget-object p1, v1, p1

    return-object p1

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 11
    :cond_6
    instance-of v2, v0, [S

    if-eqz v2, :cond_9

    .line 12
    move-object v2, v0

    check-cast v2, [S

    .line 13
    array-length v0, v2

    add-int/lit8 v5, v0, -0x1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/zzgg;->zza(I)I

    move-result v0

    :goto_1
    and-int/2addr v0, v5

    .line 15
    aget-short v6, v2, v0

    const v7, 0xffff

    and-int/2addr v6, v7

    if-ne v6, v7, :cond_7

    return-object v3

    .line 16
    :cond_7
    aget-object v7, v1, v6

    invoke-virtual {v7, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    xor-int/lit8 p1, v6, 0x1

    .line 17
    aget-object p1, v1, p1

    return-object p1

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 18
    :cond_9
    check-cast v0, [I

    .line 19
    array-length v2, v0

    sub-int/2addr v2, v4

    .line 20
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Lcom/google/android/libraries/places/internal/zzgg;->zza(I)I

    move-result v5

    :goto_2
    and-int/2addr v5, v2

    .line 21
    aget v6, v0, v5

    const/4 v7, -0x1

    if-ne v6, v7, :cond_a

    return-object v3

    .line 22
    :cond_a
    aget-object v7, v1, v6

    invoke-virtual {v7, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    xor-int/lit8 p1, v6, 0x1

    .line 23
    aget-object p1, v1, p1

    return-object p1

    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_2
.end method

.method public final size()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/libraries/places/internal/zzgs;->zzd:I

    return v0
.end method

.method public final zza()Lcom/google/android/libraries/places/internal/zzgp;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/libraries/places/internal/zzgp<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 41
    new-instance v0, Lcom/google/android/libraries/places/internal/zzgv;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzgs;->zzc:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/android/libraries/places/internal/zzgs;->zzd:I

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v3, v2}, Lcom/google/android/libraries/places/internal/zzgv;-><init>(Lcom/google/android/libraries/places/internal/zzgn;[Ljava/lang/Object;II)V

    return-object v0
.end method

.method public final zzb()Lcom/google/android/libraries/places/internal/zzgp;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/libraries/places/internal/zzgp<",
            "TK;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/libraries/places/internal/zzgw;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzgs;->zzc:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/android/libraries/places/internal/zzgs;->zzd:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/libraries/places/internal/zzgw;-><init>([Ljava/lang/Object;II)V

    .line 2
    new-instance v1, Lcom/google/android/libraries/places/internal/zzgx;

    invoke-direct {v1, p0, v0}, Lcom/google/android/libraries/places/internal/zzgx;-><init>(Lcom/google/android/libraries/places/internal/zzgn;Lcom/google/android/libraries/places/internal/zzgi;)V

    return-object v1
.end method

.method public final zzc()Lcom/google/android/libraries/places/internal/zzgj;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/libraries/places/internal/zzgj<",
            "TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/libraries/places/internal/zzgw;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzgs;->zzc:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/android/libraries/places/internal/zzgs;->zzd:I

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/libraries/places/internal/zzgw;-><init>([Ljava/lang/Object;II)V

    return-object v0
.end method
