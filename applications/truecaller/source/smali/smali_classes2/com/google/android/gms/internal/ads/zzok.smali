.class public final Lcom/google/android/gms/internal/ads/zzok;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final zza:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field public final zzb:I

.field public final zzc:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/util/List;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzok;->zza:Ljava/util/List;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzok;->zzb:I

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzok;->zzc:Ljava/lang/String;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzamf;)Lcom/google/android/gms/internal/ads/zzok;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzaha;
        }
    .end annotation

    move-object/from16 v0, p0

    const/16 v1, 0x15

    .line 1
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result v1

    and-int/lit8 v1, v1, 0x3

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzg()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_0
    const/4 v7, 0x1

    if-ge v5, v2, :cond_1

    .line 4
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzo()I

    move-result v7

    move v8, v4

    :goto_1
    if-ge v8, v7, :cond_0

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzo()I

    move-result v9

    add-int/lit8 v10, v9, 0x4

    add-int/2addr v6, v10

    .line 7
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzamf;->zzh(I)V

    .line 9
    new-array v3, v6, [B

    move v8, v4

    move v10, v8

    const/4 v9, 0x0

    :goto_2
    if-ge v8, v2, :cond_4

    .line 10
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzn()I

    move-result v11

    and-int/lit8 v11, v11, 0x7f

    .line 11
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzo()I

    move-result v12

    move v13, v4

    :goto_3
    if-ge v13, v12, :cond_3

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzo()I

    move-result v14

    .line 13
    sget-object v15, Lcom/google/android/gms/internal/ads/zzalw;->zza:[B

    const/4 v5, 0x4

    invoke-static {v15, v4, v3, v10, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v10, v10, 0x4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzi()[B

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzamf;->zzg()I

    move-result v15

    .line 14
    invoke-static {v5, v15, v3, v10, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v5, 0x21

    if-ne v11, v5, :cond_2

    if-nez v13, :cond_2

    new-instance v5, Lcom/google/android/gms/internal/ads/zzamg;

    add-int v9, v10, v14

    .line 15
    invoke-direct {v5, v3, v10, v9}, Lcom/google/android/gms/internal/ads/zzamg;-><init>([BII)V

    .line 16
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzakv;->zzb(Lcom/google/android/gms/internal/ads/zzamg;)Ljava/lang/String;

    move-result-object v5

    move v13, v4

    move-object v9, v5

    :cond_2
    add-int/2addr v10, v14

    .line 17
    invoke-virtual {v0, v14}, Lcom/google/android/gms/internal/ads/zzamf;->zzk(I)V

    add-int/2addr v13, v7

    goto :goto_3

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_4
    if-nez v6, :cond_5

    const/4 v5, 0x0

    goto :goto_4

    .line 18
    :cond_5
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 19
    :goto_4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzok;

    add-int/2addr v1, v7

    .line 20
    invoke-direct {v0, v5, v1, v9}, Lcom/google/android/gms/internal/ads/zzok;-><init>(Ljava/util/List;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Error parsing HEVC config"

    .line 21
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaha;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzaha;

    move-result-object v0

    throw v0
.end method
