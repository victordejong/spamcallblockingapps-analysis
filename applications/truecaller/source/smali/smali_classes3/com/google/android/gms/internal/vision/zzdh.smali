.class public final Lcom/google/android/gms/internal/vision/zzdh;
.super Lcom/google/android/gms/internal/vision/zzdf;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/vision/zzdf<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final transient length:I

.field private final transient offset:I

.field private final synthetic zzls:Lcom/google/android/gms/internal/vision/zzdf;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/vision/zzdf;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/vision/zzdh;->zzls:Lcom/google/android/gms/internal/vision/zzdf;

    invoke-direct {p0}, Lcom/google/android/gms/internal/vision/zzdf;-><init>()V

    .line 2
    iput p2, p0, Lcom/google/android/gms/internal/vision/zzdh;->offset:I

    .line 3
    iput p3, p0, Lcom/google/android/gms/internal/vision/zzdh;->length:I

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
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzdh;->length:I

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/vision/zzct;->zzc(II)I

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzdh;->zzls:Lcom/google/android/gms/internal/vision/zzdf;

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzdh;->offset:I

    add-int/2addr p1, v1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzdh;->length:I

    return v0
.end method

.method public final synthetic subList(II)Ljava/util/List;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/vision/zzdh;->zze(II)Lcom/google/android/gms/internal/vision/zzdf;

    move-result-object p1

    return-object p1
.end method

.method public final zzbz()[Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzdh;->zzls:Lcom/google/android/gms/internal/vision/zzdf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzdc;->zzbz()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final zzca()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzdh;->zzls:Lcom/google/android/gms/internal/vision/zzdf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzdc;->zzca()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzdh;->offset:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final zzcb()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzdh;->zzls:Lcom/google/android/gms/internal/vision/zzdf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzdc;->zzca()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzdh;->offset:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzdh;->length:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final zze(II)Lcom/google/android/gms/internal/vision/zzdf;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/android/gms/internal/vision/zzdf<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzdh;->length:I

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/vision/zzct;->zza(III)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzdh;->zzls:Lcom/google/android/gms/internal/vision/zzdf;

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzdh;->offset:I

    add-int/2addr p1, v1

    add-int/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/vision/zzdf;->subList(II)Ljava/util/List;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/vision/zzdf;

    return-object p1
.end method
