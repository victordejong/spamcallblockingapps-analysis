.class public Lcom/google/android/gms/internal/mlkit_translate/zzas;
.super Lcom/google/android/gms/internal/mlkit_translate/zzal;
.source "SourceFile"


# instance fields
.field public final zza:Lcom/google/android/gms/internal/mlkit_translate/zzao;

.field private final zzb:Ljava/lang/Character;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_translate/zzao;Ljava/lang/Character;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_translate/zzal;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_translate/zzi;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/mlkit_translate/zzao;

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzas;->zza:Lcom/google/android/gms/internal/mlkit_translate/zzao;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    .line 4
    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result v2

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/mlkit_translate/zzao;->zzb(C)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v1

    :goto_1
    if-eqz p1, :cond_2

    .line 5
    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_translate/zzas;->zzb:Ljava/lang/Character;

    return-void

    .line 6
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v0

    const-string p2, "Padding character %s was already in alphabet"

    invoke-static {p2, v1}, Lcom/google/android/gms/internal/mlkit_translate/zzh;->zza(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_translate/zzao;

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/mlkit_translate/zzao;-><init>(Ljava/lang/String;[C)V

    invoke-direct {p0, v0, p3}, Lcom/google/android/gms/internal/mlkit_translate/zzas;-><init>(Lcom/google/android/gms/internal/mlkit_translate/zzao;Ljava/lang/Character;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/mlkit_translate/zzas;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/mlkit_translate/zzas;

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzas;->zza:Lcom/google/android/gms/internal/mlkit_translate/zzao;

    iget-object v2, p1, Lcom/google/android/gms/internal/mlkit_translate/zzas;->zza:Lcom/google/android/gms/internal/mlkit_translate/zzao;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/mlkit_translate/zzao;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzas;->zzb:Ljava/lang/Character;

    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_translate/zzas;->zzb:Ljava/lang/Character;

    .line 4
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzc;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzas;->zza:Lcom/google/android/gms/internal/mlkit_translate/zzao;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_translate/zzao;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_translate/zzas;->zzb:Ljava/lang/Character;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 2
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BaseEncoding."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzas;->zza:Lcom/google/android/gms/internal/mlkit_translate/zzao;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_translate/zzao;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzas;->zza:Lcom/google/android/gms/internal/mlkit_translate/zzao;

    iget v1, v1, Lcom/google/android/gms/internal/mlkit_translate/zzao;->zza:I

    const/16 v2, 0x8

    rem-int/2addr v2, v1

    if-eqz v2, :cond_1

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzas;->zzb:Ljava/lang/Character;

    if-nez v1, :cond_0

    const-string v1, ".omitPadding()"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, ".withPadChar(\'"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzas;->zzb:Ljava/lang/Character;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza(I)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzas;->zza:Lcom/google/android/gms/internal/mlkit_translate/zzao;

    iget v0, v0, Lcom/google/android/gms/internal/mlkit_translate/zzao;->zza:I

    int-to-long v0, v0

    int-to-long v2, p1

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x7

    add-long/2addr v0, v2

    const-wide/16 v2, 0x8

    div-long/2addr v0, v2

    long-to-int p1, v0

    return p1
.end method

.method public zza([BLjava/lang/CharSequence;)I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/mlkit_translate/zzap;
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_translate/zzi;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/mlkit_translate/zzas;->zzb(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzas;->zza:Lcom/google/android/gms/internal/mlkit_translate/zzao;

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/mlkit_translate/zzao;->zzb(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 5
    :goto_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v1, v3, :cond_3

    const-wide/16 v3, 0x0

    move v5, v0

    move v6, v5

    .line 6
    :goto_1
    iget-object v7, p0, Lcom/google/android/gms/internal/mlkit_translate/zzas;->zza:Lcom/google/android/gms/internal/mlkit_translate/zzao;

    iget v8, v7, Lcom/google/android/gms/internal/mlkit_translate/zzao;->zzb:I

    if-ge v5, v8, :cond_1

    .line 7
    iget v7, v7, Lcom/google/android/gms/internal/mlkit_translate/zzao;->zza:I

    shl-long/2addr v3, v7

    add-int v7, v1, v5

    .line 8
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-ge v7, v8, :cond_0

    .line 9
    iget-object v7, p0, Lcom/google/android/gms/internal/mlkit_translate/zzas;->zza:Lcom/google/android/gms/internal/mlkit_translate/zzao;

    add-int/lit8 v8, v6, 0x1

    add-int/2addr v6, v1

    invoke-interface {p2, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/mlkit_translate/zzao;->zza(C)I

    move-result v6

    int-to-long v6, v6

    or-long/2addr v3, v6

    move v6, v8

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 10
    :cond_1
    iget v5, v7, Lcom/google/android/gms/internal/mlkit_translate/zzao;->zzc:I

    shl-int/lit8 v8, v5, 0x3

    iget v7, v7, Lcom/google/android/gms/internal/mlkit_translate/zzao;->zza:I

    mul-int/2addr v6, v7

    sub-int/2addr v8, v6

    add-int/lit8 v5, v5, -0x1

    shl-int/lit8 v5, v5, 0x3

    :goto_2
    if-lt v5, v8, :cond_2

    add-int/lit8 v6, v2, 0x1

    ushr-long v9, v3, v5

    const-wide/16 v11, 0xff

    and-long/2addr v9, v11

    long-to-int v7, v9

    int-to-byte v7, v7

    .line 11
    aput-byte v7, p1, v2

    add-int/lit8 v5, v5, -0x8

    move v2, v6

    goto :goto_2

    .line 12
    :cond_2
    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_translate/zzas;->zza:Lcom/google/android/gms/internal/mlkit_translate/zzao;

    iget v3, v3, Lcom/google/android/gms/internal/mlkit_translate/zzao;->zzb:I

    add-int/2addr v1, v3

    goto :goto_0

    :cond_3
    return v2

    .line 13
    :cond_4
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

.method public final zzb(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_translate/zzi;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzas;->zzb:Ljava/lang/Character;

    if-nez v0, :cond_0

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    .line 4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 5
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v0, :cond_1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    add-int/lit8 v1, v1, 0x1

    .line 6
    invoke-interface {p1, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method
