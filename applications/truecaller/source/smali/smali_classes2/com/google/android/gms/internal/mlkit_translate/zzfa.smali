.class public final Lcom/google/android/gms/internal/mlkit_translate/zzfa;
.super Lcom/google/android/gms/internal/mlkit_translate/zzea;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/mlkit_translate/zzea<",
        "Ljava/util/BitSet;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_translate/zzea;-><init>()V

    return-void
.end method

.method private static zzb(Lcom/google/android/gms/internal/mlkit_translate/zzfy;)Ljava/util/BitSet;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzb()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzg()Lcom/google/android/gms/internal/mlkit_translate/zzga;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    .line 4
    :goto_0
    sget-object v4, Lcom/google/android/gms/internal/mlkit_translate/zzga;->zzb:Lcom/google/android/gms/internal/mlkit_translate/zzga;

    if-eq v1, v4, :cond_5

    .line 5
    sget-object v4, Lcom/google/android/gms/internal/mlkit_translate/zzft;->zza:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    const/4 v6, 0x2

    if-eq v4, v6, :cond_2

    const/4 v6, 0x3

    if-ne v4, v6, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzi()Ljava/lang/String;

    move-result-object v1

    .line 7
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    move v5, v2

    goto :goto_1

    .line 8
    :catch_0
    new-instance p0, Lcom/google/android/gms/internal/mlkit_translate/zzeb;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Error: Expecting: bitset number value (1, 0), Found: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_translate/zzeb;-><init>(Ljava/lang/String;)V

    throw p0

    .line 9
    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/mlkit_translate/zzeb;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Invalid bitset value type: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_translate/zzeb;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzj()Z

    move-result v5

    goto :goto_1

    .line 11
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzn()I

    move-result v1

    if-eqz v1, :cond_0

    :goto_1
    if-eqz v5, :cond_4

    .line 12
    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzg()Lcom/google/android/gms/internal/mlkit_translate/zzga;

    move-result-object v1

    goto :goto_0

    .line 14
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_translate/zzfy;->zzc()V

    return-object v0
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/mlkit_translate/zzfy;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_translate/zzfa;->zzb(Lcom/google/android/gms/internal/mlkit_translate/zzfy;)Ljava/util/BitSet;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/mlkit_translate/zzgd;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    check-cast p2, Ljava/util/BitSet;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_translate/zzgd;->zza()Lcom/google/android/gms/internal/mlkit_translate/zzgd;

    .line 4
    invoke-virtual {p2}, Ljava/util/BitSet;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 5
    invoke-virtual {p2, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    int-to-long v2, v2

    .line 6
    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/mlkit_translate/zzgd;->zza(J)Lcom/google/android/gms/internal/mlkit_translate/zzgd;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_translate/zzgd;->zzb()Lcom/google/android/gms/internal/mlkit_translate/zzgd;

    return-void
.end method
