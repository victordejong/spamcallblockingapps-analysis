.class public final Lcom/google/android/gms/internal/mlkit_translate/zzan;
.super Lcom/google/android/gms/internal/mlkit_translate/zzas;
.source "SourceFile"


# instance fields
.field private final zzb:[C


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/mlkit_translate/zzao;)V
    .locals 4

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/mlkit_translate/zzas;-><init>(Lcom/google/android/gms/internal/mlkit_translate/zzao;Ljava/lang/Character;)V

    const/16 v0, 0x200

    new-array v0, v0, [C

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzan;->zzb:[C

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_translate/zzao;->zza(Lcom/google/android/gms/internal/mlkit_translate/zzao;)[C

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_translate/zzi;->zza(Z)V

    :goto_1
    const/16 v0, 0x100

    if-ge v1, v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzan;->zzb:[C

    ushr-int/lit8 v2, v1, 0x4

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/mlkit_translate/zzao;->zza(I)C

    move-result v2

    aput-char v2, v0, v1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzan;->zzb:[C

    or-int/lit16 v2, v1, 0x100

    and-int/lit8 v3, v1, 0xf

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/mlkit_translate/zzao;->zza(I)C

    move-result v3

    aput-char v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_translate/zzao;

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/mlkit_translate/zzao;-><init>(Ljava/lang/String;[C)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_translate/zzan;-><init>(Lcom/google/android/gms/internal/mlkit_translate/zzao;)V

    return-void
.end method


# virtual methods
.method public final zza([BLjava/lang/CharSequence;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/mlkit_translate/zzap;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_translate/zzi;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x0

    move v1, v0

    .line 3
    :goto_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 4
    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_translate/zzas;->zza:Lcom/google/android/gms/internal/mlkit_translate/zzao;

    invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/mlkit_translate/zzao;->zza(C)I

    move-result v2

    shl-int/lit8 v2, v2, 0x4

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_translate/zzas;->zza:Lcom/google/android/gms/internal/mlkit_translate/zzao;

    add-int/lit8 v4, v0, 0x1

    invoke-interface {p2, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/mlkit_translate/zzao;->zza(C)I

    move-result v3

    or-int/2addr v2, v3

    add-int/lit8 v3, v1, 0x1

    int-to-byte v2, v2

    .line 5
    aput-byte v2, p1, v1

    add-int/lit8 v0, v0, 0x2

    move v1, v3

    goto :goto_0

    :cond_0
    return v1

    .line 6
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/mlkit_translate/zzap;

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    const/16 v0, 0x20

    const-string v1, "Invalid input length "

    invoke-static {v0, v1, p2}, Le/d/c/a/a;->L1(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/mlkit_translate/zzap;-><init>(Ljava/lang/String;)V

    throw p1
.end method
