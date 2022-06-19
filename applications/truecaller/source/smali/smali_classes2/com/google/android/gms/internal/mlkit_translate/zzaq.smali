.class public final Lcom/google/android/gms/internal/mlkit_translate/zzaq;
.super Lcom/google/android/gms/internal/mlkit_translate/zzas;
.source "SourceFile"


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/mlkit_translate/zzao;Ljava/lang/Character;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/mlkit_translate/zzas;-><init>(Lcom/google/android/gms/internal/mlkit_translate/zzao;Ljava/lang/Character;)V

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_translate/zzao;->zza(Lcom/google/android/gms/internal/mlkit_translate/zzao;)[C

    move-result-object p1

    array-length p1, p1

    const/16 p2, 0x40

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_translate/zzi;->zza(Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_translate/zzao;

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/mlkit_translate/zzao;-><init>(Ljava/lang/String;[C)V

    invoke-direct {p0, v0, p3}, Lcom/google/android/gms/internal/mlkit_translate/zzaq;-><init>(Lcom/google/android/gms/internal/mlkit_translate/zzao;Ljava/lang/Character;)V

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
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/mlkit_translate/zzas;->zzb(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzas;->zza:Lcom/google/android/gms/internal/mlkit_translate/zzao;

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_translate/zzao;->zzb(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    move v1, v0

    .line 4
    :goto_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_translate/zzas;->zza:Lcom/google/android/gms/internal/mlkit_translate/zzao;

    add-int/lit8 v3, v0, 0x1

    invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/mlkit_translate/zzao;->zza(C)I

    move-result v0

    shl-int/lit8 v0, v0, 0x12

    .line 6
    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_translate/zzas;->zza:Lcom/google/android/gms/internal/mlkit_translate/zzao;

    add-int/lit8 v4, v3, 0x1

    invoke-interface {p2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/mlkit_translate/zzao;->zza(C)I

    move-result v2

    shl-int/lit8 v2, v2, 0xc

    or-int/2addr v0, v2

    add-int/lit8 v2, v1, 0x1

    ushr-int/lit8 v3, v0, 0x10

    int-to-byte v3, v3

    .line 7
    aput-byte v3, p1, v1

    .line 8
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v4, v1, :cond_1

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzas;->zza:Lcom/google/android/gms/internal/mlkit_translate/zzao;

    add-int/lit8 v3, v4, 0x1

    invoke-interface {p2, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/mlkit_translate/zzao;->zza(C)I

    move-result v1

    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v0, v1

    add-int/lit8 v1, v2, 0x1

    ushr-int/lit8 v4, v0, 0x8

    int-to-byte v4, v4

    .line 10
    aput-byte v4, p1, v2

    .line 11
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v3, v2, :cond_0

    .line 12
    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_translate/zzas;->zza:Lcom/google/android/gms/internal/mlkit_translate/zzao;

    add-int/lit8 v4, v3, 0x1

    invoke-interface {p2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/mlkit_translate/zzao;->zza(C)I

    move-result v2

    or-int/2addr v0, v2

    add-int/lit8 v2, v1, 0x1

    int-to-byte v0, v0

    .line 13
    aput-byte v0, p1, v1

    goto :goto_1

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    :goto_1
    move v1, v2

    move v0, v4

    goto :goto_0

    :cond_2
    return v1

    .line 14
    :cond_3
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
