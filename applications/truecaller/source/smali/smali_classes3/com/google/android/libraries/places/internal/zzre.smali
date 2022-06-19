.class public final Lcom/google/android/libraries/places/internal/zzre;
.super Lcom/google/android/libraries/places/internal/zzrg;
.source "SourceFile"


# instance fields
.field private zza:I

.field private final zzb:I

.field private final synthetic zzc:Lcom/google/android/libraries/places/internal/zzrb;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/places/internal/zzrb;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzre;->zzc:Lcom/google/android/libraries/places/internal/zzrb;

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzrg;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/libraries/places/internal/zzre;->zza:I

    .line 3
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/zzrb;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/libraries/places/internal/zzre;->zzb:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/libraries/places/internal/zzre;->zza:I

    iget v1, p0, Lcom/google/android/libraries/places/internal/zzre;->zzb:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zza()B
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/libraries/places/internal/zzre;->zza:I

    .line 2
    iget v1, p0, Lcom/google/android/libraries/places/internal/zzre;->zzb:I

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    .line 3
    iput v1, p0, Lcom/google/android/libraries/places/internal/zzre;->zza:I

    .line 4
    iget-object v1, p0, Lcom/google/android/libraries/places/internal/zzre;->zzc:Lcom/google/android/libraries/places/internal/zzrb;

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/places/internal/zzrb;->zzb(I)B

    move-result v0

    return v0

    .line 5
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
