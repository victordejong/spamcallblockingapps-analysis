.class public final Lcom/google/android/gms/internal/mlkit_translate/zzv;
.super Lcom/google/android/gms/internal/mlkit_translate/zzo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/mlkit_translate/zzo<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private zzd:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_translate/zzo;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/mlkit_translate/zzn;
    .locals 0

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_translate/zzi;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzo;->zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/mlkit_translate/zzn;

    return-object p0
.end method

.method public final synthetic zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_translate/zzn;
    .locals 1

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_translate/zzi;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzv;->zzd:[Ljava/lang/Object;

    .line 12
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzo;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_translate/zzo;

    return-object p0
.end method

.method public final zza()Lcom/google/android/gms/internal/mlkit_translate/zzw;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/mlkit_translate/zzw<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzo;->zzb:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_translate/zzo;->zza:[Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/mlkit_translate/zzw;->zza(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_translate/zzw;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    iput v2, p0, Lcom/google/android/gms/internal/mlkit_translate/zzo;->zzb:I

    .line 4
    iput-boolean v1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzo;->zzc:Z

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzv;->zzd:[Ljava/lang/Object;

    return-object v0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzo;->zza:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_translate/zzw;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_translate/zzw;

    move-result-object v0

    return-object v0

    .line 7
    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/mlkit_translate/zzag;->zza:Lcom/google/android/gms/internal/mlkit_translate/zzag;

    return-object v0
.end method

.method public final synthetic zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_translate/zzo;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzv;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_translate/zzn;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/mlkit_translate/zzv;

    return-object p1
.end method
