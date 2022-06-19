.class public final Lcom/google/android/gms/internal/mlkit_translate/zzfy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final zza:[C


# instance fields
.field private final zzb:Ljava/io/Reader;

.field private zzc:Z

.field private final zzd:[C

.field private zze:I

.field private zzf:I

.field private zzg:I

.field private zzh:I

.field private zzi:I

.field private zzj:J

.field private zzk:I

.field private zzl:Ljava/lang/String;

.field private zzm:[I

.field private zzn:I

.field private zzo:[Ljava/lang/String;

.field private zzp:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, ")]}\'\n"

    .line 1
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zza:[C

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/mlkit_translate/zzgb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_translate/zzgb;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_translate/zzef;->zza:Lcom/google/android/gms/internal/mlkit_translate/zzef;

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzc:Z

    const/16 v1, 0x400

    new-array v1, v1, [C

    .line 3
    iput-object v1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzd:[C

    .line 4
    iput v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zze:I

    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzf:I

    .line 6
    iput v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzg:I

    .line 7
    iput v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzh:I

    .line 8
    iput v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzi:I

    const/16 v1, 0x20

    new-array v2, v1, [I

    .line 9
    iput-object v2, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzm:[I

    .line 10
    iput v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzn:I

    add-int/lit8 v3, v0, 0x1

    .line 11
    iput v3, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzn:I

    const/4 v3, 0x6

    aput v3, v2, v0

    new-array v0, v1, [Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzo:[Ljava/lang/String;

    new-array v0, v1, [I

    .line 13
    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzp:[I

    const-string v0, "in == null"

    .line 14
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzb:Ljava/io/Reader;

    return-void
.end method

.method private final zza(Ljava/lang/String;)Ljava/io/IOException;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15
    new-instance v0, Lcom/google/android/gms/internal/mlkit_translate/zzgc;

    invoke-static {p1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzs()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzgc;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final zza(I)V
    .locals 6

    .line 4
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzn:I

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzm:[I

    array-length v2, v1

    if-ne v0, v2, :cond_0

    shl-int/lit8 v2, v0, 0x1

    .line 5
    new-array v2, v2, [I

    shl-int/lit8 v3, v0, 0x1

    .line 6
    new-array v3, v3, [I

    shl-int/lit8 v4, v0, 0x1

    .line 7
    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 8
    invoke-static {v1, v5, v2, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzp:[I

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzn:I

    invoke-static {v0, v5, v3, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzo:[Ljava/lang/String;

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzn:I

    invoke-static {v0, v5, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    iput-object v2, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzm:[I

    .line 12
    iput-object v3, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzp:[I

    .line 13
    iput-object v4, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzo:[Ljava/lang/String;

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzm:[I

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzn:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzn:I

    aput p1, v0, v1

    return-void
.end method

.method private final zza(C)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc

    if-eq p1, v0, :cond_1

    const/16 v0, 0xd

    if-eq p1, v0, :cond_1

    const/16 v0, 0x20

    if-eq p1, v0, :cond_1

    const/16 v0, 0x23

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2c

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2f

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3d

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7b

    if-eq p1, v0, :cond_1

    const/16 v0, 0x7d

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3a

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3b

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x1

    return p1

    .line 3
    :cond_0
    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzq()V

    :cond_1
    :pswitch_1
    const/4 p1, 0x0

    return p1

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private final zzb(Z)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzd:[C

    .line 51
    iget v1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zze:I

    .line 52
    iget v2, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzf:I

    :goto_0
    const/4 v3, 0x1

    if-ne v1, v2, :cond_2

    .line 53
    iput v1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zze:I

    .line 54
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzb(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    iget v1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zze:I

    .line 56
    iget v2, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzf:I

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, -0x1

    return p1

    .line 57
    :cond_1
    new-instance p1, Ljava/io/EOFException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "End of input"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzs()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    add-int/lit8 v4, v1, 0x1

    .line 58
    aget-char v1, v0, v1

    const/16 v5, 0xa

    if-ne v1, v5, :cond_3

    .line 59
    iget v1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzg:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzg:I

    .line 60
    iput v4, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzh:I

    goto/16 :goto_7

    :cond_3
    const/16 v6, 0x20

    if-eq v1, v6, :cond_f

    const/16 v6, 0xd

    if-eq v1, v6, :cond_f

    const/16 v6, 0x9

    if-eq v1, v6, :cond_f

    const/16 v6, 0x2f

    if-ne v1, v6, :cond_d

    .line 61
    iput v4, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zze:I

    const/4 v7, 0x2

    if-ne v4, v2, :cond_4

    add-int/lit8 v4, v4, -0x1

    .line 62
    iput v4, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zze:I

    .line 63
    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzb(I)Z

    move-result v2

    .line 64
    iget v4, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zze:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zze:I

    if-nez v2, :cond_4

    return v1

    .line 65
    :cond_4
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzq()V

    .line 66
    iget v2, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zze:I

    aget-char v4, v0, v2

    const/16 v8, 0x2a

    if-eq v4, v8, :cond_6

    if-eq v4, v6, :cond_5

    return v1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 67
    iput v2, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zze:I

    .line 68
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzr()V

    .line 69
    iget v1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zze:I

    .line 70
    iget v2, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzf:I

    goto :goto_0

    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 71
    iput v2, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zze:I

    .line 72
    :goto_2
    iget v1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zze:I

    add-int/2addr v1, v7

    iget v2, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzf:I

    const/4 v4, 0x0

    if-le v1, v2, :cond_8

    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzb(I)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_3

    :cond_7
    move v3, v4

    goto :goto_6

    .line 73
    :cond_8
    :goto_3
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzd:[C

    iget v2, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zze:I

    aget-char v1, v1, v2

    if-ne v1, v5, :cond_9

    .line 74
    iget v1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzg:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzg:I

    add-int/lit8 v2, v2, 0x1

    .line 75
    iput v2, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzh:I

    goto :goto_5

    :cond_9
    :goto_4
    if-ge v4, v7, :cond_b

    .line 76
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzd:[C

    iget v2, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zze:I

    add-int/2addr v2, v4

    aget-char v1, v1, v2

    const-string v2, "*/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v1, v2, :cond_a

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 77
    :cond_a
    :goto_5
    iget v1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zze:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zze:I

    goto :goto_2

    :cond_b
    :goto_6
    if-eqz v3, :cond_c

    .line 78
    iget v1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zze:I

    add-int/2addr v1, v7

    .line 79
    iget v2, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzf:I

    goto/16 :goto_0

    :cond_c
    const-string p1, "Unterminated comment"

    .line 80
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zza(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_d
    const/16 v2, 0x23

    if-ne v1, v2, :cond_e

    .line 81
    iput v4, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zze:I

    .line 82
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzq()V

    .line 83
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzr()V

    .line 84
    iget v1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zze:I

    .line 85
    iget v2, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzf:I

    goto/16 :goto_0

    .line 86
    :cond_e
    iput v4, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zze:I

    return v1

    :cond_f
    :goto_7
    move v1, v4

    goto/16 :goto_0
.end method

.method private final zzb(C)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzd:[C

    const/4 v1, 0x0

    .line 8
    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zze:I

    .line 9
    iget v3, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzf:I

    move v4, v2

    :goto_1
    const/16 v5, 0x10

    const/4 v6, 0x1

    if-ge v4, v3, :cond_15

    add-int/lit8 v7, v4, 0x1

    .line 10
    aget-char v4, v0, v4

    if-ne v4, p1, :cond_1

    .line 11
    iput v7, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zze:I

    sub-int/2addr v7, v2

    sub-int/2addr v7, v6

    if-nez v1, :cond_0

    .line 12
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0, v2, v7}, Ljava/lang/String;-><init>([CII)V

    return-object p1

    .line 13
    :cond_0
    invoke-virtual {v1, v0, v2, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/16 v8, 0x5c

    const/16 v9, 0xa

    if-ne v4, v8, :cond_13

    .line 15
    iput v7, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zze:I

    sub-int/2addr v7, v2

    sub-int/2addr v7, v6

    if-nez v1, :cond_2

    add-int/lit8 v1, v7, 0x1

    shl-int/2addr v1, v6

    .line 16
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v3

    .line 17
    :cond_2
    invoke-virtual {v1, v0, v2, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 18
    iget v2, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zze:I

    iget v3, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzf:I

    const-string v4, "Unterminated escape sequence"

    if-ne v2, v3, :cond_4

    invoke-direct {p0, v6}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzb(I)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    .line 19
    :cond_3
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zza(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 20
    :cond_4
    :goto_2
    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzd:[C

    iget v3, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zze:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zze:I

    aget-char v2, v2, v3

    if-eq v2, v9, :cond_10

    const/16 v3, 0x22

    if-eq v2, v3, :cond_11

    const/16 v3, 0x27

    if-eq v2, v3, :cond_11

    const/16 v3, 0x2f

    if-eq v2, v3, :cond_11

    if-eq v2, v8, :cond_11

    const/16 v3, 0x62

    if-eq v2, v3, :cond_f

    const/16 v3, 0x66

    if-eq v2, v3, :cond_e

    const/16 v6, 0x6e

    if-eq v2, v6, :cond_12

    const/16 v6, 0x72

    if-eq v2, v6, :cond_d

    const/16 v6, 0x74

    if-eq v2, v6, :cond_c

    const/16 v6, 0x75

    if-ne v2, v6, :cond_b

    add-int/lit8 v5, v5, 0x4

    .line 21
    iget v2, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzf:I

    const/4 v6, 0x4

    if-le v5, v2, :cond_6

    invoke-direct {p0, v6}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzb(I)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_3

    .line 22
    :cond_5
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zza(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_6
    :goto_3
    const/4 v2, 0x0

    .line 23
    iget v4, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zze:I

    add-int/lit8 v5, v4, 0x4

    :goto_4
    if-ge v4, v5, :cond_a

    .line 24
    iget-object v7, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzd:[C

    aget-char v7, v7, v4

    shl-int/lit8 v2, v2, 0x4

    int-to-char v2, v2

    const/16 v8, 0x30

    if-lt v7, v8, :cond_7

    const/16 v8, 0x39

    if-gt v7, v8, :cond_7

    add-int/lit8 v7, v7, -0x30

    :goto_5
    add-int/2addr v7, v2

    int-to-char v2, v7

    goto :goto_7

    :cond_7
    const/16 v8, 0x61

    if-lt v7, v8, :cond_8

    if-gt v7, v3, :cond_8

    add-int/lit8 v7, v7, -0x61

    :goto_6
    add-int/2addr v7, v9

    goto :goto_5

    :cond_8
    const/16 v8, 0x41

    if-lt v7, v8, :cond_9

    const/16 v8, 0x46

    if-gt v7, v8, :cond_9

    add-int/lit8 v7, v7, -0x41

    goto :goto_6

    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 25
    :cond_9
    new-instance p1, Ljava/lang/NumberFormatException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\\u"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzd:[C

    iget v3, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zze:I

    invoke-direct {v1, v2, v3, v6}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 26
    :cond_a
    iget v3, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zze:I

    add-int/2addr v3, v6

    iput v3, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zze:I

    goto :goto_8

    :cond_b
    const-string p1, "Invalid escape sequence"

    .line 27
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zza(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_c
    const/16 v9, 0x9

    goto :goto_9

    :cond_d
    const/16 v9, 0xd

    goto :goto_9

    :cond_e
    const/16 v9, 0xc

    goto :goto_9

    :cond_f
    const/16 v9, 0x8

    goto :goto_9

    .line 28
    :cond_10
    iget v3, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzg:I

    add-int/2addr v3, v6

    iput v3, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzg:I

    .line 29
    iput v5, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzh:I

    :cond_11
    :goto_8
    move v9, v2

    .line 30
    :cond_12
    :goto_9
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_13
    if-ne v4, v9, :cond_14

    .line 31
    iget v4, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzg:I

    add-int/2addr v4, v6

    iput v4, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzg:I

    .line 32
    iput v7, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzh:I

    :cond_14
    move v4, v7

    goto/16 :goto_1

    :cond_15
    if-nez v1, :cond_16

    sub-int v1, v4, v2

    shl-int/2addr v1, v6

    .line 33
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v3

    :cond_16
    sub-int v3, v4, v2

    .line 34
    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 35
    iput v4, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zze:I

    .line 36
    invoke-direct {p0, v6}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzb(I)Z

    move-result v2

    if-eqz v2, :cond_17

    goto/16 :goto_0

    :cond_17
    const-string p1, "Unterminated string"

    .line 37
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zza(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private final zzb(I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzd:[C

    .line 39
    iget v1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzh:I

    iget v2, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zze:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzh:I

    .line 40
    iget v1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzf:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    sub-int/2addr v1, v2

    .line 41
    iput v1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzf:I

    .line 42
    invoke-static {v0, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 43
    :cond_0
    iput v3, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzf:I

    .line 44
    :goto_0
    iput v3, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zze:I

    .line 45
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzb:Ljava/io/Reader;

    iget v2, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzf:I

    array-length v4, v0

    sub-int/2addr v4, v2

    invoke-virtual {v1, v0, v2, v4}, Ljava/io/Reader;->read([CII)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 46
    iget v2, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzf:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzf:I

    .line 47
    iget v1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzg:I

    const/4 v4, 0x1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzh:I

    if-nez v1, :cond_2

    if-lez v2, :cond_2

    aget-char v5, v0, v3

    const v6, 0xfeff

    if-ne v5, v6, :cond_2

    .line 48
    iget v5, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zze:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zze:I

    add-int/lit8 v1, v1, 0x1

    .line 49
    iput v1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzh:I

    add-int/lit8 p1, p1, 0x1

    :cond_2
    if-lt v2, p1, :cond_1

    return v4

    :cond_3
    return v3
.end method

.method private final zzo()I
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzm:[I

    iget v2, v0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzn:I

    add-int/lit8 v3, v2, -0x1

    aget v3, v1, v3

    const/16 v4, 0x8

    const/16 v7, 0x5d

    const/16 v8, 0x3b

    const/16 v9, 0x2c

    const/4 v10, 0x3

    const/4 v11, 0x6

    const/4 v12, 0x7

    const/4 v13, 0x4

    const/4 v14, 0x5

    const/4 v15, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v3, v6, :cond_0

    sub-int/2addr v2, v6

    .line 2
    aput v15, v1, v2

    goto/16 :goto_1

    :cond_0
    if-ne v3, v15, :cond_3

    .line 3
    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzb(Z)I

    move-result v1

    if-eq v1, v9, :cond_e

    if-eq v1, v8, :cond_2

    if-ne v1, v7, :cond_1

    .line 4
    iput v13, v0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzi:I

    return v13

    :cond_1
    const-string v1, "Unterminated array"

    .line 5
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zza(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 6
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzq()V

    goto/16 :goto_1

    :cond_3
    if-eq v3, v10, :cond_3f

    if-ne v3, v14, :cond_4

    goto/16 :goto_14

    :cond_4
    if-ne v3, v13, :cond_7

    sub-int/2addr v2, v6

    .line 7
    aput v14, v1, v2

    .line 8
    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzb(Z)I

    move-result v1

    const/16 v2, 0x3a

    if-eq v1, v2, :cond_e

    const/16 v2, 0x3d

    if-ne v1, v2, :cond_6

    .line 9
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzq()V

    .line 10
    iget v1, v0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zze:I

    iget v2, v0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzf:I

    if-lt v1, v2, :cond_5

    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzb(I)Z

    move-result v1

    if-eqz v1, :cond_e

    :cond_5
    iget-object v1, v0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzd:[C

    iget v2, v0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zze:I

    aget-char v1, v1, v2

    const/16 v13, 0x3e

    if-ne v1, v13, :cond_e

    add-int/2addr v2, v6

    .line 11
    iput v2, v0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zze:I

    goto :goto_1

    :cond_6
    const-string v1, "Expected \':\'"

    .line 12
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zza(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    :cond_7
    if-ne v3, v11, :cond_b

    .line 13
    iget-boolean v1, v0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzc:Z

    if-eqz v1, :cond_a

    .line 14
    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzb(Z)I

    .line 15
    iget v1, v0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zze:I

    sub-int/2addr v1, v6

    iput v1, v0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zze:I

    .line 16
    sget-object v2, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zza:[C

    array-length v13, v2

    add-int/2addr v1, v13

    iget v13, v0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzf:I

    if-le v1, v13, :cond_8

    array-length v1, v2

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzb(I)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_8
    move v1, v5

    .line 17
    :goto_0
    sget-object v2, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zza:[C

    array-length v13, v2

    if-ge v1, v13, :cond_9

    .line 18
    iget-object v13, v0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzd:[C

    iget v11, v0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zze:I

    add-int/2addr v11, v1

    aget-char v11, v13, v11

    aget-char v2, v2, v1

    if-ne v11, v2, :cond_a

    add-int/lit8 v1, v1, 0x1

    const/4 v11, 0x6

    goto :goto_0

    .line 19
    :cond_9
    iget v1, v0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zze:I

    array-length v2, v2

    add-int/2addr v1, v2

    iput v1, v0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zze:I

    .line 20
    :cond_a
    iget-object v1, v0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzm:[I

    iget v2, v0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzn:I

    sub-int/2addr v2, v6

    aput v12, v1, v2

    goto :goto_1

    :cond_b
    if-ne v3, v12, :cond_d

    .line 21
    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzb(Z)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_c

    const/16 v1, 0x11

    .line 22
    iput v1, v0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzi:I

    return v1

    .line 23
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzq()V

    .line 24
    iget v1, v0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zze:I

    sub-int/2addr v1, v6

    iput v1, v0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zze:I

    goto :goto_1

    :cond_d
    if-eq v3, v4, :cond_3e

    .line 25
    :cond_e
    :goto_1
    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzb(Z)I

    move-result v1

    const/16 v2, 0x22

    if-eq v1, v2, :cond_3d

    const/16 v2, 0x27

    if-eq v1, v2, :cond_3c

    if-eq v1, v9, :cond_38

    if-eq v1, v8, :cond_38

    const/16 v2, 0x5b

    if-eq v1, v2, :cond_37

    if-eq v1, v7, :cond_36

    const/16 v2, 0x7b

    if-eq v1, v2, :cond_35

    .line 26
    iget v1, v0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zze:I

    sub-int/2addr v1, v6

    iput v1, v0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zze:I

    .line 27
    iget-object v2, v0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzd:[C

    aget-char v1, v2, v1

    const/16 v2, 0x74

    if-eq v1, v2, :cond_13

    const/16 v2, 0x54

    if-ne v1, v2, :cond_f

    goto :goto_3

    :cond_f
    const/16 v2, 0x66

    if-eq v1, v2, :cond_12

    const/16 v2, 0x46

    if-ne v1, v2, :cond_10

    goto :goto_2

    :cond_10
    const/16 v2, 0x6e

    if-eq v1, v2, :cond_11

    const/16 v2, 0x4e

    if-ne v1, v2, :cond_18

    :cond_11
    const-string v1, "null"

    const-string v2, "NULL"

    move v3, v12

    goto :goto_4

    :cond_12
    :goto_2
    const-string v1, "false"

    const-string v2, "FALSE"

    const/4 v3, 0x6

    goto :goto_4

    :cond_13
    :goto_3
    const-string v1, "true"

    const-string v2, "TRUE"

    move v3, v14

    .line 28
    :goto_4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    move v7, v6

    :goto_5
    if-ge v7, v4, :cond_16

    .line 29
    iget v8, v0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zze:I

    add-int/2addr v8, v7

    iget v9, v0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzf:I

    if-lt v8, v9, :cond_14

    add-int/lit8 v8, v7, 0x1

    invoke-direct {v0, v8}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzb(I)Z

    move-result v8

    if-nez v8, :cond_14

    goto :goto_6

    .line 30
    :cond_14
    iget-object v8, v0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzd:[C

    iget v9, v0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zze:I

    add-int/2addr v9, v7

    aget-char v8, v8, v9

    .line 31
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-eq v8, v9, :cond_15

    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-eq v8, v9, :cond_15

    goto :goto_6

    :cond_15
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 32
    :cond_16
    iget v1, v0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zze:I

    add-int/2addr v1, v4

    iget v2, v0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzf:I

    if-lt v1, v2, :cond_17

    add-int/lit8 v1, v4, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzb(I)Z

    move-result v1

    if-eqz v1, :cond_19

    :cond_17
    iget-object v1, v0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzd:[C

    iget v2, v0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zze:I

    add-int/2addr v2, v4

    aget-char v1, v1, v2

    .line 33
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zza(C)Z

    move-result v1

    if-eqz v1, :cond_19

    :cond_18
    :goto_6
    move v3, v5

    goto :goto_7

    .line 34
    :cond_19
    iget v1, v0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zze:I

    add-int/2addr v1, v4

    iput v1, v0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zze:I

    .line 35
    iput v3, v0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzi:I

    :goto_7
    if-eqz v3, :cond_1a

    return v3

    .line 36
    :cond_1a
    iget-object v1, v0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzd:[C

    .line 37
    iget v2, v0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zze:I

    .line 38
    iget v3, v0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzf:I

    const-wide/16 v7, 0x0

    move v4, v5

    move v9, v4

    move/from16 v16, v9

    move v11, v6

    move-wide v12, v7

    :goto_8
    add-int v5, v2, v9

    if-ne v5, v3, :cond_1b

    .line 39
    array-length v2, v1

    if-eq v9, v2, :cond_2b

    add-int/lit8 v2, v9, 0x1

    .line 40
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzb(I)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 41
    iget v2, v0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zze:I

    .line 42
    iget v3, v0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzf:I

    :cond_1b
    add-int v5, v2, v9

    .line 43
    aget-char v5, v1, v5

    const/16 v14, 0x2b

    if-eq v5, v14, :cond_32

    const/16 v14, 0x45

    if-eq v5, v14, :cond_30

    const/16 v14, 0x65

    if-eq v5, v14, :cond_30

    const/16 v14, 0x2d

    if-eq v5, v14, :cond_2e

    const/16 v14, 0x2e

    if-eq v5, v14, :cond_2d

    const/16 v14, 0x30

    if-lt v5, v14, :cond_25

    const/16 v14, 0x39

    if-le v5, v14, :cond_1c

    goto :goto_d

    :cond_1c
    if-eq v4, v6, :cond_23

    if-nez v4, :cond_1d

    goto :goto_b

    :cond_1d
    if-ne v4, v15, :cond_20

    cmp-long v14, v12, v7

    if-eqz v14, :cond_2b

    const-wide/16 v17, 0xa

    mul-long v17, v17, v12

    add-int/lit8 v5, v5, -0x30

    int-to-long v6, v5

    sub-long v17, v17, v6

    const-wide v5, -0xcccccccccccccccL

    cmp-long v5, v12, v5

    if-gtz v5, :cond_1f

    if-nez v5, :cond_1e

    cmp-long v5, v17, v12

    if-gez v5, :cond_1e

    goto :goto_9

    :cond_1e
    const/4 v5, 0x0

    goto :goto_a

    :cond_1f
    :goto_9
    const/4 v5, 0x1

    :goto_a
    and-int/2addr v11, v5

    move-wide/from16 v12, v17

    goto :goto_c

    :cond_20
    if-ne v4, v10, :cond_21

    const/4 v4, 0x4

    goto :goto_c

    :cond_21
    const/4 v5, 0x5

    const/4 v6, 0x6

    if-eq v4, v5, :cond_22

    if-ne v4, v6, :cond_24

    :cond_22
    const/4 v4, 0x7

    goto :goto_c

    :cond_23
    :goto_b
    const/4 v6, 0x6

    add-int/lit8 v5, v5, -0x30

    neg-int v4, v5

    int-to-long v12, v4

    move v4, v15

    :cond_24
    :goto_c
    const-wide/16 v7, 0x0

    goto/16 :goto_11

    .line 44
    :cond_25
    :goto_d
    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zza(C)Z

    move-result v1

    if-eqz v1, :cond_26

    goto :goto_f

    :cond_26
    if-ne v4, v15, :cond_2a

    if-eqz v11, :cond_2a

    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v1, v12, v1

    if-nez v1, :cond_27

    if-eqz v16, :cond_2a

    :cond_27
    const-wide/16 v7, 0x0

    cmp-long v1, v12, v7

    if-nez v1, :cond_28

    if-nez v16, :cond_2a

    :cond_28
    if-eqz v16, :cond_29

    goto :goto_e

    :cond_29
    neg-long v12, v12

    .line 45
    :goto_e
    iput-wide v12, v0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzj:J

    .line 46
    iget v1, v0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zze:I

    add-int/2addr v1, v9

    iput v1, v0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zze:I

    const/16 v5, 0xf

    .line 47
    iput v5, v0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzi:I

    goto :goto_12

    :cond_2a
    if-eq v4, v15, :cond_2c

    const/4 v1, 0x4

    if-eq v4, v1, :cond_2c

    const/4 v1, 0x7

    if-ne v4, v1, :cond_2b

    goto :goto_10

    :cond_2b
    :goto_f
    const/4 v5, 0x0

    goto :goto_12

    .line 48
    :cond_2c
    :goto_10
    iput v9, v0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzk:I

    const/16 v5, 0x10

    .line 49
    iput v5, v0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzi:I

    goto :goto_12

    :cond_2d
    const/4 v6, 0x6

    if-ne v4, v15, :cond_2b

    move v4, v10

    goto :goto_11

    :cond_2e
    const/4 v6, 0x6

    if-nez v4, :cond_2f

    const/4 v4, 0x1

    const/16 v16, 0x1

    goto :goto_11

    :cond_2f
    const/4 v5, 0x5

    if-ne v4, v5, :cond_2b

    move v4, v6

    goto :goto_11

    :cond_30
    const/4 v5, 0x5

    const/4 v6, 0x6

    if-eq v4, v15, :cond_31

    const/4 v6, 0x4

    if-ne v4, v6, :cond_2b

    :cond_31
    move v4, v5

    goto :goto_11

    :cond_32
    const/4 v5, 0x5

    if-ne v4, v5, :cond_2b

    const/4 v4, 0x6

    :goto_11
    add-int/lit8 v9, v9, 0x1

    const/4 v6, 0x1

    const/4 v14, 0x5

    goto/16 :goto_8

    :goto_12
    if-eqz v5, :cond_33

    return v5

    .line 50
    :cond_33
    iget-object v1, v0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzd:[C

    iget v2, v0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zze:I

    aget-char v1, v1, v2

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zza(C)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 51
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzq()V

    const/16 v1, 0xa

    .line 52
    iput v1, v0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzi:I

    return v1

    :cond_34
    const-string v1, "Expected value"

    .line 53
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zza(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    :cond_35
    move v1, v6

    .line 54
    iput v1, v0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzi:I

    return v1

    :cond_36
    move v1, v6

    if-ne v3, v1, :cond_39

    const/4 v2, 0x4

    .line 55
    iput v2, v0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzi:I

    return v2

    .line 56
    :cond_37
    iput v10, v0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzi:I

    return v10

    :cond_38
    move v1, v6

    :cond_39
    if-eq v3, v1, :cond_3b

    if-ne v3, v15, :cond_3a

    goto :goto_13

    :cond_3a
    const-string v1, "Unexpected value"

    .line 57
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zza(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 58
    :cond_3b
    :goto_13
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzq()V

    .line 59
    iget v2, v0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zze:I

    sub-int/2addr v2, v1

    iput v2, v0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zze:I

    const/4 v1, 0x7

    .line 60
    iput v1, v0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzi:I

    return v1

    .line 61
    :cond_3c
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzq()V

    .line 62
    iput v4, v0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzi:I

    return v4

    :cond_3d
    const/16 v1, 0x9

    .line 63
    iput v1, v0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzi:I

    return v1

    .line 64
    :cond_3e
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "JsonReader is closed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3f
    :goto_14
    move v4, v6

    sub-int/2addr v2, v4

    const/4 v5, 0x4

    .line 65
    aput v5, v1, v2

    const/16 v1, 0x7d

    const/4 v2, 0x5

    if-ne v3, v2, :cond_43

    .line 66
    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzb(Z)I

    move-result v2

    if-eq v2, v9, :cond_42

    if-eq v2, v8, :cond_41

    if-ne v2, v1, :cond_40

    .line 67
    iput v15, v0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzi:I

    return v15

    :cond_40
    const-string v1, "Unterminated object"

    .line 68
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zza(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 69
    :cond_41
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzq()V

    :cond_42
    const/4 v2, 0x1

    goto :goto_15

    :cond_43
    move v2, v4

    .line 70
    :goto_15
    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzb(Z)I

    move-result v4

    const/16 v5, 0x22

    if-eq v4, v5, :cond_48

    const/16 v5, 0x27

    if-eq v4, v5, :cond_47

    const-string v5, "Expected name"

    if-eq v4, v1, :cond_45

    .line 71
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzq()V

    .line 72
    iget v1, v0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zze:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zze:I

    int-to-char v1, v4

    .line 73
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zza(C)Z

    move-result v1

    if-eqz v1, :cond_44

    const/16 v1, 0xe

    .line 74
    iput v1, v0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzi:I

    return v1

    .line 75
    :cond_44
    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zza(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    :cond_45
    const/4 v1, 0x5

    if-eq v3, v1, :cond_46

    .line 76
    iput v15, v0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzi:I

    return v15

    .line 77
    :cond_46
    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zza(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 78
    :cond_47
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzq()V

    const/16 v1, 0xc

    .line 79
    iput v1, v0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzi:I

    return v1

    :cond_48
    const/16 v1, 0xd

    .line 80
    iput v1, v0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzi:I

    return v1
.end method

.method private final zzp()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_0
    move v2, v0

    .line 1
    :goto_0
    iget v3, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zze:I

    add-int v4, v3, v2

    iget v5, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzf:I

    if-ge v4, v5, :cond_2

    .line 2
    iget-object v4, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzd:[C

    add-int/2addr v3, v2

    aget-char v3, v4, v3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_3

    const/16 v4, 0xc

    if-eq v3, v4, :cond_3

    const/16 v4, 0xd

    if-eq v3, v4, :cond_3

    const/16 v4, 0x20

    if-eq v3, v4, :cond_3

    const/16 v4, 0x23

    if-eq v3, v4, :cond_1

    const/16 v4, 0x2c

    if-eq v3, v4, :cond_3

    const/16 v4, 0x2f

    if-eq v3, v4, :cond_1

    const/16 v4, 0x3d

    if-eq v3, v4, :cond_1

    const/16 v4, 0x7b

    if-eq v3, v4, :cond_3

    const/16 v4, 0x7d

    if-eq v3, v4, :cond_3

    const/16 v4, 0x3a

    if-eq v3, v4, :cond_3

    const/16 v4, 0x3b

    if-eq v3, v4, :cond_1

    packed-switch v3, :pswitch_data_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3
    :cond_1
    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzq()V

    goto :goto_1

    .line 4
    :cond_2
    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzd:[C

    array-length v3, v3

    if-ge v2, v3, :cond_4

    add-int/lit8 v3, v2, 0x1

    .line 5
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzb(I)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    :pswitch_1
    move v0, v2

    goto :goto_2

    :cond_4
    if-nez v1, :cond_5

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 7
    :cond_5
    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzd:[C

    iget v4, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zze:I

    invoke-virtual {v1, v3, v4, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 8
    iget v3, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zze:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zze:I

    const/4 v2, 0x1

    .line 9
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzb(I)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_2
    if-nez v1, :cond_6

    .line 10
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzd:[C

    iget v3, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zze:I

    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>([CII)V

    goto :goto_3

    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzd:[C

    iget v3, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zze:I

    invoke-virtual {v1, v2, v3, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 11
    :goto_3
    iget v2, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zze:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zze:I

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private final zzq()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzc:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "Use JsonReader.setLenient(true) to accept malformed JSON"

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zza(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private final zzr()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zze:I

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzf:I

    const/4 v2, 0x1

    if-lt v0, v1, :cond_1

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzb(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzd:[C

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zze:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zze:I

    aget-char v0, v0, v1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    .line 3
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzg:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzg:I

    .line 4
    iput v3, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzh:I

    return-void

    :cond_2
    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    :cond_3
    return-void
.end method

.method private final zzs()Ljava/lang/String;
    .locals 7

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzg:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 2
    iget v2, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zze:I

    iget v3, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzh:I

    sub-int/2addr v2, v3

    add-int/2addr v2, v1

    .line 3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " at line "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " column "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " path "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "$"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5
    iget v2, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzn:I

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_3

    .line 6
    iget-object v5, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzm:[I

    aget v5, v5, v4

    if-eq v5, v1, :cond_1

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    const/4 v6, 0x3

    if-eq v5, v6, :cond_0

    const/4 v6, 0x4

    if-eq v5, v6, :cond_0

    const/4 v6, 0x5

    if-eq v5, v6, :cond_0

    goto :goto_1

    :cond_0
    const/16 v5, 0x2e

    .line 7
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 8
    iget-object v5, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzo:[Ljava/lang/String;

    aget-object v6, v5, v4

    if-eqz v6, :cond_2

    .line 9
    aget-object v5, v5, v4

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const/16 v5, 0x5b

    .line 10
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzp:[I

    aget v5, v5, v4

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v5, 0x5d

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 11
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzi:I

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzm:[I

    const/16 v2, 0x8

    aput v2, v1, v0

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzn:I

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzb:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/google/android/gms/internal/mlkit_translate/zzfy;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzs()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzc:Z

    return-void
.end method

.method public final zza()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzc:Z

    return v0
.end method

.method public final zzb()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzi:I

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzo()I

    move-result v0

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zza(I)V

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzp:[I

    iget v2, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzn:I

    sub-int/2addr v2, v0

    const/4 v0, 0x0

    aput v0, v1, v2

    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzi:I

    return-void

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected BEGIN_ARRAY but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzg()Lcom/google/android/gms/internal/mlkit_translate/zzga;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzs()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzc()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzi:I

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzo()I

    move-result v0

    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 3
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzn:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzn:I

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzp:[I

    add-int/lit8 v0, v0, -0x1

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzi:I

    return-void

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected END_ARRAY but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzg()Lcom/google/android/gms/internal/mlkit_translate/zzga;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzs()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzd()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzi:I

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzo()I

    move-result v0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x3

    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zza(I)V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzi:I

    return-void

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected BEGIN_OBJECT but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzg()Lcom/google/android/gms/internal/mlkit_translate/zzga;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzs()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zze()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzi:I

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzo()I

    move-result v0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 3
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzn:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzn:I

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzo:[Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzp:[I

    add-int/lit8 v0, v0, -0x1

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzi:I

    return-void

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected END_OBJECT but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzg()Lcom/google/android/gms/internal/mlkit_translate/zzga;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzs()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzf()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzi:I

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzo()I

    move-result v0

    :cond_0
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final zzg()Lcom/google/android/gms/internal/mlkit_translate/zzga;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzi:I

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzo()I

    move-result v0

    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 4
    :pswitch_0
    sget-object v0, Lcom/google/android/gms/internal/mlkit_translate/zzga;->zzj:Lcom/google/android/gms/internal/mlkit_translate/zzga;

    return-object v0

    .line 5
    :pswitch_1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_translate/zzga;->zzg:Lcom/google/android/gms/internal/mlkit_translate/zzga;

    return-object v0

    .line 6
    :pswitch_2
    sget-object v0, Lcom/google/android/gms/internal/mlkit_translate/zzga;->zze:Lcom/google/android/gms/internal/mlkit_translate/zzga;

    return-object v0

    .line 7
    :pswitch_3
    sget-object v0, Lcom/google/android/gms/internal/mlkit_translate/zzga;->zzf:Lcom/google/android/gms/internal/mlkit_translate/zzga;

    return-object v0

    .line 8
    :pswitch_4
    sget-object v0, Lcom/google/android/gms/internal/mlkit_translate/zzga;->zzi:Lcom/google/android/gms/internal/mlkit_translate/zzga;

    return-object v0

    .line 9
    :pswitch_5
    sget-object v0, Lcom/google/android/gms/internal/mlkit_translate/zzga;->zzh:Lcom/google/android/gms/internal/mlkit_translate/zzga;

    return-object v0

    .line 10
    :pswitch_6
    sget-object v0, Lcom/google/android/gms/internal/mlkit_translate/zzga;->zzb:Lcom/google/android/gms/internal/mlkit_translate/zzga;

    return-object v0

    .line 11
    :pswitch_7
    sget-object v0, Lcom/google/android/gms/internal/mlkit_translate/zzga;->zza:Lcom/google/android/gms/internal/mlkit_translate/zzga;

    return-object v0

    .line 12
    :pswitch_8
    sget-object v0, Lcom/google/android/gms/internal/mlkit_translate/zzga;->zzd:Lcom/google/android/gms/internal/mlkit_translate/zzga;

    return-object v0

    .line 13
    :pswitch_9
    sget-object v0, Lcom/google/android/gms/internal/mlkit_translate/zzga;->zzc:Lcom/google/android/gms/internal/mlkit_translate/zzga;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzh()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzi:I

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzo()I

    move-result v0

    :cond_0
    const/16 v1, 0xe

    if-ne v0, v1, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzp()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    const/16 v0, 0x27

    .line 4
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzb(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/16 v1, 0xd

    if-ne v0, v1, :cond_3

    const/16 v0, 0x22

    .line 5
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzb(C)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    .line 6
    iput v1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzi:I

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzo:[Ljava/lang/String;

    iget v2, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzn:I

    add-int/lit8 v2, v2, -0x1

    aput-object v0, v1, v2

    return-object v0

    .line 8
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a name but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzg()Lcom/google/android/gms/internal/mlkit_translate/zzga;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzs()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzi()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzi:I

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzo()I

    move-result v0

    :cond_0
    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzp()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    const/16 v0, 0x27

    .line 4
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzb(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/16 v1, 0x9

    if-ne v0, v1, :cond_3

    const/16 v0, 0x22

    .line 5
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzb(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/16 v1, 0xb

    if-ne v0, v1, :cond_4

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzl:Ljava/lang/String;

    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzl:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const/16 v1, 0xf

    if-ne v0, v1, :cond_5

    .line 8
    iget-wide v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzj:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    const/16 v1, 0x10

    if-ne v0, v1, :cond_6

    .line 9
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzd:[C

    iget v2, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zze:I

    iget v3, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzk:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 10
    iget v1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zze:I

    iget v2, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzk:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zze:I

    :goto_0
    const/4 v1, 0x0

    .line 11
    iput v1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzi:I

    .line 12
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzp:[I

    iget v2, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzn:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    return-object v0

    .line 13
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a string but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzg()Lcom/google/android/gms/internal/mlkit_translate/zzga;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzs()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzj()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzi:I

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzo()I

    move-result v0

    :cond_0
    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    .line 3
    iput v2, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzi:I

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzp:[I

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzn:I

    sub-int/2addr v1, v3

    aget v2, v0, v1

    add-int/2addr v2, v3

    aput v2, v0, v1

    return v3

    :cond_1
    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    .line 5
    iput v2, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzi:I

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzp:[I

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzn:I

    sub-int/2addr v1, v3

    aget v4, v0, v1

    add-int/2addr v4, v3

    aput v4, v0, v1

    return v2

    .line 7
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a boolean but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzg()Lcom/google/android/gms/internal/mlkit_translate/zzga;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzs()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzk()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzi:I

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzo()I

    move-result v0

    :cond_0
    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzi:I

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzp:[I

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzn:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    return-void

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected null but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzg()Lcom/google/android/gms/internal/mlkit_translate/zzga;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzs()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzl()D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzi:I

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzo()I

    move-result v0

    :cond_0
    const/16 v1, 0xf

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 3
    iput v2, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzi:I

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzp:[I

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzn:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 5
    iget-wide v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzj:J

    long-to-double v0, v0

    return-wide v0

    :cond_1
    const/16 v1, 0x10

    const/16 v3, 0xb

    if-ne v0, v1, :cond_2

    .line 6
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzd:[C

    iget v4, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zze:I

    iget v5, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzk:I

    invoke-direct {v0, v1, v4, v5}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzl:Ljava/lang/String;

    .line 7
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zze:I

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzk:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zze:I

    goto :goto_2

    :cond_2
    const/16 v1, 0x8

    if-eq v0, v1, :cond_6

    const/16 v4, 0x9

    if-ne v0, v4, :cond_3

    goto :goto_0

    :cond_3
    const/16 v1, 0xa

    if-ne v0, v1, :cond_4

    .line 8
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzp()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzl:Ljava/lang/String;

    goto :goto_2

    :cond_4
    if-ne v0, v3, :cond_5

    goto :goto_2

    .line 9
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a double but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzg()Lcom/google/android/gms/internal/mlkit_translate/zzga;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzs()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_0
    if-ne v0, v1, :cond_7

    const/16 v0, 0x27

    goto :goto_1

    :cond_7
    const/16 v0, 0x22

    .line 10
    :goto_1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzb(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzl:Ljava/lang/String;

    .line 11
    :goto_2
    iput v3, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzi:I

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzl:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 13
    iget-boolean v3, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzc:Z

    if-nez v3, :cond_9

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_3

    .line 14
    :cond_8
    new-instance v2, Lcom/google/android/gms/internal/mlkit_translate/zzgc;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "JSON forbids NaN and infinities: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 15
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzs()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/mlkit_translate/zzgc;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_9
    :goto_3
    const/4 v3, 0x0

    .line 16
    iput-object v3, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzl:Ljava/lang/String;

    .line 17
    iput v2, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzi:I

    .line 18
    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzp:[I

    iget v3, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzn:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    return-wide v0
.end method

.method public final zzm()J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzi:I

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzo()I

    move-result v0

    :cond_0
    const/16 v1, 0xf

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 3
    iput v2, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzi:I

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzp:[I

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzn:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 5
    iget-wide v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzj:J

    return-wide v0

    :cond_1
    const/16 v1, 0x10

    const-string v3, "Expected a long but was "

    if-ne v0, v1, :cond_2

    .line 6
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzd:[C

    iget v4, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zze:I

    iget v5, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzk:I

    invoke-direct {v0, v1, v4, v5}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzl:Ljava/lang/String;

    .line 7
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zze:I

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzk:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zze:I

    goto :goto_3

    :cond_2
    const/16 v1, 0xa

    const/16 v4, 0x8

    if-eq v0, v4, :cond_4

    const/16 v5, 0x9

    if-eq v0, v5, :cond_4

    if-ne v0, v1, :cond_3

    goto :goto_0

    .line 8
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzg()Lcom/google/android/gms/internal/mlkit_translate/zzga;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzs()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_0
    if-ne v0, v1, :cond_5

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzp()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzl:Ljava/lang/String;

    goto :goto_2

    :cond_5
    if-ne v0, v4, :cond_6

    const/16 v0, 0x27

    goto :goto_1

    :cond_6
    const/16 v0, 0x22

    .line 10
    :goto_1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzb(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzl:Ljava/lang/String;

    .line 11
    :goto_2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzl:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 12
    iput v2, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzi:I

    .line 13
    iget-object v4, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzp:[I

    iget v5, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzn:I

    add-int/lit8 v5, v5, -0x1

    aget v6, v4, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v4, v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    :goto_3
    const/16 v0, 0xb

    .line 14
    iput v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzi:I

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzl:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-long v4, v0

    long-to-double v6, v4

    cmpl-double v0, v6, v0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzl:Ljava/lang/String;

    .line 17
    iput v2, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzi:I

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzp:[I

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzn:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    return-wide v4

    .line 19
    :cond_7
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzs()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzn()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzi:I

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzo()I

    move-result v0

    :cond_0
    const/16 v1, 0xf

    const-string v2, "Expected an int but was "

    const/4 v3, 0x0

    if-ne v0, v1, :cond_2

    .line 3
    iget-wide v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzj:J

    long-to-int v4, v0

    int-to-long v5, v4

    cmp-long v0, v0, v5

    if-nez v0, :cond_1

    .line 4
    iput v3, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzi:I

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzp:[I

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzn:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    return v4

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzj:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzs()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/16 v1, 0x10

    if-ne v0, v1, :cond_3

    .line 7
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzd:[C

    iget v4, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zze:I

    iget v5, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzk:I

    invoke-direct {v0, v1, v4, v5}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzl:Ljava/lang/String;

    .line 8
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zze:I

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzk:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zze:I

    goto :goto_3

    :cond_3
    const/16 v1, 0xa

    const/16 v4, 0x8

    if-eq v0, v4, :cond_5

    const/16 v5, 0x9

    if-eq v0, v5, :cond_5

    if-ne v0, v1, :cond_4

    goto :goto_0

    .line 9
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzg()Lcom/google/android/gms/internal/mlkit_translate/zzga;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzs()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_0
    if-ne v0, v1, :cond_6

    .line 10
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzp()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzl:Ljava/lang/String;

    goto :goto_2

    :cond_6
    if-ne v0, v4, :cond_7

    const/16 v0, 0x27

    goto :goto_1

    :cond_7
    const/16 v0, 0x22

    .line 11
    :goto_1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzb(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzl:Ljava/lang/String;

    .line 12
    :goto_2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzl:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 13
    iput v3, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzi:I

    .line 14
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzp:[I

    iget v4, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzn:I

    add-int/lit8 v4, v4, -0x1

    aget v5, v1, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, v1, v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    :goto_3
    const/16 v0, 0xb

    .line 15
    iput v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzi:I

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzl:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-int v4, v0

    int-to-double v5, v4

    cmpl-double v0, v5, v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzl:Ljava/lang/String;

    .line 18
    iput v3, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzi:I

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzp:[I

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzn:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    return v4

    .line 20
    :cond_8
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzs()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
