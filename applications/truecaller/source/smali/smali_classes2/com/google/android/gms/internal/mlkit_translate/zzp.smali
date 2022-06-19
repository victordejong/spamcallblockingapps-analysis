.class public final Lcom/google/android/gms/internal/mlkit_translate/zzp;
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


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/mlkit_translate/zzp;-><init>(I)V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    const/4 p1, 0x4

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzo;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/mlkit_translate/zzn;
    .locals 0

    .line 3
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzo;->zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/mlkit_translate/zzn;

    return-object p0
.end method

.method public final synthetic zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_translate/zzn;
    .locals 0

    .line 4
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzo;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_translate/zzo;

    return-object p0
.end method

.method public final zza()Lcom/google/android/gms/internal/mlkit_translate/zzq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/mlkit_translate/zzq<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzo;->zzc:Z

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_translate/zzo;->zza:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/mlkit_translate/zzo;->zzb:I

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_translate/zzq;->zzb([Ljava/lang/Object;I)Lcom/google/android/gms/internal/mlkit_translate/zzq;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_translate/zzo;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/mlkit_translate/zzp;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/mlkit_translate/zzn;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/mlkit_translate/zzp;

    return-object p1
.end method
