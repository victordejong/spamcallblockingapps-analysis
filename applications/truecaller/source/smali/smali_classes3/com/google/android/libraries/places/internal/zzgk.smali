.class public final Lcom/google/android/libraries/places/internal/zzgk;
.super Lcom/google/android/libraries/places/internal/zzgi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/libraries/places/internal/zzgi<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final transient zza:I

.field private final transient zzb:I

.field private final synthetic zzc:Lcom/google/android/libraries/places/internal/zzgi;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/places/internal/zzgi;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/libraries/places/internal/zzgk;->zzc:Lcom/google/android/libraries/places/internal/zzgi;

    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/zzgi;-><init>()V

    .line 2
    iput p2, p0, Lcom/google/android/libraries/places/internal/zzgk;->zza:I

    .line 3
    iput p3, p0, Lcom/google/android/libraries/places/internal/zzgk;->zzb:I

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/libraries/places/internal/zzgk;->zzb:I

    invoke-static {p1, v0}, Lcom/google/android/libraries/places/internal/zzft;->zza(II)I

    .line 2
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzgk;->zzc:Lcom/google/android/libraries/places/internal/zzgi;

    iget v1, p0, Lcom/google/android/libraries/places/internal/zzgk;->zza:I

    add-int/2addr p1, v1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/libraries/places/internal/zzgk;->zzb:I

    return v0
.end method

.method public final synthetic subList(II)Ljava/util/List;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/libraries/places/internal/zzgk;->zza(II)Lcom/google/android/libraries/places/internal/zzgi;

    move-result-object p1

    return-object p1
.end method

.method public final zza(II)Lcom/google/android/libraries/places/internal/zzgi;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/android/libraries/places/internal/zzgi<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/libraries/places/internal/zzgk;->zzb:I

    invoke-static {p1, p2, v0}, Lcom/google/android/libraries/places/internal/zzft;->zza(III)V

    .line 2
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzgk;->zzc:Lcom/google/android/libraries/places/internal/zzgi;

    iget v1, p0, Lcom/google/android/libraries/places/internal/zzgk;->zza:I

    add-int/2addr p1, v1

    add-int/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Lcom/google/android/libraries/places/internal/zzgi;->subList(II)Ljava/util/List;

    move-result-object p1

    check-cast p1, Lcom/google/android/libraries/places/internal/zzgi;

    return-object p1
.end method

.method public final zzd()[Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzgk;->zzc:Lcom/google/android/libraries/places/internal/zzgi;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzgj;->zzd()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final zze()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzgk;->zzc:Lcom/google/android/libraries/places/internal/zzgi;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzgj;->zze()I

    move-result v0

    iget v1, p0, Lcom/google/android/libraries/places/internal/zzgk;->zza:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final zzf()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/libraries/places/internal/zzgk;->zzc:Lcom/google/android/libraries/places/internal/zzgi;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzgj;->zze()I

    move-result v0

    iget v1, p0, Lcom/google/android/libraries/places/internal/zzgk;->zza:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/libraries/places/internal/zzgk;->zzb:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final zzg()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
