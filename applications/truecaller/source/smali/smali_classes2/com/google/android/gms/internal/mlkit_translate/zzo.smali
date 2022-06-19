.class public Lcom/google/android/gms/internal/mlkit_translate/zzo;
.super Lcom/google/android/gms/internal/mlkit_translate/zzn;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/mlkit_translate/zzn<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public zza:[Ljava/lang/Object;

.field public zzb:I

.field public zzc:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_translate/zzn;-><init>()V

    const/4 p1, 0x4

    const-string v0, "initialCapacity"

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/mlkit_translate/zzj;->zza(ILjava/lang/String;)I

    new-array p1, p1, [Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzo;->zza:[Ljava/lang/Object;

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzo;->zzb:I

    return-void
.end method

.method private final zza(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzo;->zza:[Ljava/lang/Object;

    array-length v1, v0

    const/4 v2, 0x0

    if-ge v1, p1, :cond_0

    .line 2
    array-length v1, v0

    .line 3
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzn;->zza(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzo;->zza:[Ljava/lang/Object;

    .line 4
    iput-boolean v2, p0, Lcom/google/android/gms/internal/mlkit_translate/zzo;->zzc:Z

    return-void

    .line 5
    :cond_0
    iget-boolean p1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzo;->zzc:Z

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzo;->zza:[Ljava/lang/Object;

    .line 7
    iput-boolean v2, p0, Lcom/google/android/gms/internal/mlkit_translate/zzo;->zzc:Z

    :cond_1
    return-void
.end method


# virtual methods
.method public zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/mlkit_translate/zzn;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Lcom/google/android/gms/internal/mlkit_translate/zzn<",
            "TE;>;"
        }
    .end annotation

    .line 8
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 9
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    .line 10
    iget v1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzo;->zzb:I

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    add-int/2addr v2, v1

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/mlkit_translate/zzo;->zza(I)V

    .line 11
    instance-of v1, v0, Lcom/google/android/gms/internal/mlkit_translate/zzl;

    if-eqz v1, :cond_0

    .line 12
    check-cast v0, Lcom/google/android/gms/internal/mlkit_translate/zzl;

    .line 13
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzo;->zza:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzo;->zzb:I

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/mlkit_translate/zzl;->zza([Ljava/lang/Object;I)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzo;->zzb:I

    return-object p0

    .line 14
    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzn;->zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/mlkit_translate/zzn;

    return-object p0
.end method

.method public synthetic zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_translate/zzn;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzo;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_translate/zzo;

    move-result-object p1

    return-object p1
.end method

.method public zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_translate/zzo;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/google/android/gms/internal/mlkit_translate/zzo<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_translate/zzi;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzo;->zzb:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_translate/zzo;->zza(I)V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzo;->zza:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzo;->zzb:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/mlkit_translate/zzo;->zzb:I

    aput-object p1, v0, v1

    return-object p0
.end method
