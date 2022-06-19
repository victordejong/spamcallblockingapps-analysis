.class public final Lcom/google/android/gms/vision/text/TextRecognizer;
.super Lcom/google/android/gms/vision/Detector;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/vision/text/TextRecognizer$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/vision/Detector<",
        "Lcom/google/android/gms/vision/text/TextBlock;",
        ">;"
    }
.end annotation


# instance fields
.field public final c:Lcom/google/android/gms/internal/vision/zzai;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/vision/Detector;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Default constructor called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/vision/zzai;Le/m/a/f/r/c/a;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/vision/Detector;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/vision/text/TextRecognizer;->c:Lcom/google/android/gms/internal/vision/zzai;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/vision/Frame;)Landroid/util/SparseArray;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/vision/Frame;",
            ")",
            "Landroid/util/SparseArray<",
            "Lcom/google/android/gms/vision/text/TextBlock;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/vision/zzae;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/vision/zzae;-><init>(Landroid/graphics/Rect;)V

    if-eqz p1, :cond_8

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/vision/zzp;->zzc(Lcom/google/android/gms/vision/Frame;)Lcom/google/android/gms/internal/vision/zzp;

    move-result-object v1

    .line 3
    iget-object v2, p1, Lcom/google/android/gms/vision/Frame;->a:Lcom/google/android/gms/vision/Frame$Metadata;

    .line 4
    iget-object v3, p1, Lcom/google/android/gms/vision/Frame;->b:Ljava/nio/ByteBuffer;

    .line 5
    iget v6, v2, Lcom/google/android/gms/vision/Frame$Metadata;->f:I

    .line 6
    iget v2, v1, Lcom/google/android/gms/internal/vision/zzp;->width:I

    iget v10, v1, Lcom/google/android/gms/internal/vision/zzp;->height:I

    .line 7
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    if-nez v4, :cond_0

    .line 8
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    move-object v5, v3

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    new-array v4, v4, [B

    .line 10
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move-object v5, v4

    .line 11
    :goto_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 12
    new-instance v11, Landroid/graphics/YuvImage;

    const/4 v9, 0x0

    move-object v4, v11

    move v7, v2

    move v8, v10

    invoke-direct/range {v4 .. v9}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 13
    new-instance v4, Landroid/graphics/Rect;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v5, v2, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v2, 0x64

    invoke-virtual {v11, v4, v2, v3}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 14
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 15
    array-length v3, v2

    invoke-static {v2, v5, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 16
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/vision/zzq;->zzb(Landroid/graphics/Bitmap;Lcom/google/android/gms/internal/vision/zzp;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 17
    iget-object v3, v0, Lcom/google/android/gms/internal/vision/zzae;->zzeq:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 18
    iget-object v3, v0, Lcom/google/android/gms/internal/vision/zzae;->zzeq:Landroid/graphics/Rect;

    .line 19
    iget-object p1, p1, Lcom/google/android/gms/vision/Frame;->a:Lcom/google/android/gms/vision/Frame$Metadata;

    .line 20
    iget v4, p1, Lcom/google/android/gms/vision/Frame$Metadata;->a:I

    .line 21
    iget p1, p1, Lcom/google/android/gms/vision/Frame$Metadata;->b:I

    .line 22
    iget v6, v1, Lcom/google/android/gms/internal/vision/zzp;->rotation:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_3

    const/4 v7, 0x2

    if-eq v6, v7, :cond_2

    const/4 p1, 0x3

    if-eq v6, p1, :cond_1

    goto :goto_1

    .line 23
    :cond_1
    new-instance p1, Landroid/graphics/Rect;

    iget v6, v3, Landroid/graphics/Rect;->top:I

    iget v7, v3, Landroid/graphics/Rect;->right:I

    sub-int v7, v4, v7

    iget v8, v3, Landroid/graphics/Rect;->bottom:I

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v3

    invoke-direct {p1, v6, v7, v8, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v3, p1

    goto :goto_1

    .line 24
    :cond_2
    new-instance v6, Landroid/graphics/Rect;

    iget v7, v3, Landroid/graphics/Rect;->right:I

    sub-int v7, v4, v7

    iget v8, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v8, p1, v8

    iget v9, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v9

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, v3

    invoke-direct {v6, v7, v8, v4, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v3, v6

    goto :goto_1

    .line 25
    :cond_3
    new-instance v4, Landroid/graphics/Rect;

    iget v6, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v6, p1, v6

    iget v7, v3, Landroid/graphics/Rect;->left:I

    iget v8, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, v8

    iget v3, v3, Landroid/graphics/Rect;->right:I

    invoke-direct {v4, v6, v7, p1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v3, v4

    .line 26
    :goto_1
    iget-object p1, v0, Lcom/google/android/gms/internal/vision/zzae;->zzeq:Landroid/graphics/Rect;

    invoke-virtual {p1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 27
    :cond_4
    iput v5, v1, Lcom/google/android/gms/internal/vision/zzp;->rotation:I

    .line 28
    iget-object p1, p0, Lcom/google/android/gms/vision/text/TextRecognizer;->c:Lcom/google/android/gms/internal/vision/zzai;

    invoke-virtual {p1, v2, v1, v0}, Lcom/google/android/gms/internal/vision/zzai;->zza(Landroid/graphics/Bitmap;Lcom/google/android/gms/internal/vision/zzp;Lcom/google/android/gms/internal/vision/zzae;)[Lcom/google/android/gms/internal/vision/zzac;

    move-result-object p1

    .line 29
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 30
    array-length v1, p1

    move v2, v5

    :goto_2
    if-ge v2, v1, :cond_6

    aget-object v3, p1, v2

    .line 31
    iget v4, v3, Lcom/google/android/gms/internal/vision/zzac;->zzeo:I

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    if-nez v4, :cond_5

    .line 32
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 33
    iget v6, v3, Lcom/google/android/gms/internal/vision/zzac;->zzeo:I

    invoke-virtual {v0, v6, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 34
    :cond_5
    iget v6, v3, Lcom/google/android/gms/internal/vision/zzac;->zzep:I

    invoke-virtual {v4, v6, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 35
    :cond_6
    new-instance p1, Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-direct {p1, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 36
    :goto_3
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v5, v1, :cond_7

    .line 37
    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    new-instance v2, Lcom/google/android/gms/vision/text/TextBlock;

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    invoke-direct {v2, v3}, Lcom/google/android/gms/vision/text/TextBlock;-><init>(Landroid/util/SparseArray;)V

    invoke-virtual {p1, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_7
    return-object p1

    .line 38
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No frame supplied."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/vision/text/TextRecognizer;->c:Lcom/google/android/gms/internal/vision/zzai;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzn;->isOperational()Z

    move-result v0

    return v0
.end method

.method public final d()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/vision/Detector;->d()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/vision/text/TextRecognizer;->c:Lcom/google/android/gms/internal/vision/zzai;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzn;->zzo()V

    return-void
.end method
