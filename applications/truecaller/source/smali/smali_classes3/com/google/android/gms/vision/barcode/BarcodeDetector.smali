.class public final Lcom/google/android/gms/vision/barcode/BarcodeDetector;
.super Lcom/google/android/gms/vision/Detector;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/vision/barcode/BarcodeDetector$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/vision/Detector<",
        "Lcom/google/android/gms/vision/barcode/Barcode;",
        ">;"
    }
.end annotation


# instance fields
.field public final c:Lcom/google/android/gms/internal/vision/zzh;


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

.method public constructor <init>(Lcom/google/android/gms/internal/vision/zzh;Le/m/a/f/r/a/a;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/vision/Detector;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/vision/barcode/BarcodeDetector;->c:Lcom/google/android/gms/internal/vision/zzh;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/vision/Frame;)Landroid/util/SparseArray;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/vision/Frame;",
            ")",
            "Landroid/util/SparseArray<",
            "Lcom/google/android/gms/vision/barcode/Barcode;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/vision/zzp;->zzc(Lcom/google/android/gms/vision/Frame;)Lcom/google/android/gms/internal/vision/zzp;

    move-result-object v0

    .line 2
    iget-object p1, p1, Lcom/google/android/gms/vision/Frame;->b:Ljava/nio/ByteBuffer;

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/vision/barcode/BarcodeDetector;->c:Lcom/google/android/gms/internal/vision/zzh;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/vision/zzh;->zza(Ljava/nio/ByteBuffer;Lcom/google/android/gms/internal/vision/zzp;)[Lcom/google/android/gms/vision/barcode/Barcode;

    move-result-object p1

    .line 4
    new-instance v0, Landroid/util/SparseArray;

    array-length v1, p1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 5
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 6
    iget-object v4, v3, Lcom/google/android/gms/vision/barcode/Barcode;->b:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-virtual {v0, v4, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No frame supplied."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/vision/barcode/BarcodeDetector;->c:Lcom/google/android/gms/internal/vision/zzh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzn;->isOperational()Z

    move-result v0

    return v0
.end method

.method public final d()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/vision/Detector;->d()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/vision/barcode/BarcodeDetector;->c:Lcom/google/android/gms/internal/vision/zzh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzn;->zzo()V

    return-void
.end method
