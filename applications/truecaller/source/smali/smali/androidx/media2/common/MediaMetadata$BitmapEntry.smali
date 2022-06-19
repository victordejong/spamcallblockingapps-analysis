.class public final Landroidx/media2/common/MediaMetadata$BitmapEntry;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/i0/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/common/MediaMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BitmapEntry"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 6

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Landroidx/media2/common/MediaMetadata$BitmapEntry;->a:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Landroidx/media2/common/MediaMetadata$BitmapEntry;->b:Landroid/graphics/Bitmap;

    .line 5
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result p1

    const/high16 v0, 0x40000

    if-le p1, v0, :cond_0

    .line 6
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 7
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const-wide/high16 v2, 0x4110000000000000L    # 262144.0

    int-to-double v4, p1

    div-double/2addr v2, v4

    .line 8
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    int-to-double v4, v0

    mul-double/2addr v4, v2

    double-to-int p1, v4

    int-to-double v0, v1

    mul-double/2addr v0, v2

    double-to-int v0, v0

    const/4 v1, 0x1

    .line 9
    invoke-static {p2, p1, v0, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/common/MediaMetadata$BitmapEntry;->b:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method
