.class Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ReadFromBitmap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$DimensionStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReadFromBitmap"
.end annotation


# instance fields
.field final file:Ljava/io/File;

.field private final maxSize:Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ImageDimensions;


# direct methods
.method constructor <init>(Ljava/io/File;Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ImageDimensions;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ReadFromBitmap;->maxSize:Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ImageDimensions;

    .line 3
    iput-object p1, p0, Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ReadFromBitmap;->file:Ljava/io/File;

    return-void
.end method

.method private loadImageDimensions(Ljava/io/File;)Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ImageDimensions;
    .locals 3

    .line 1
    new-instance v0, Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ImageDimensions;

    invoke-direct {v0}, Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ImageDimensions;-><init>()V

    .line 2
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    .line 3
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 4
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 5
    iget p1, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v0, p1, v1}, Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ImageDimensions;->setDimensions(II)V

    return-object v0
.end method


# virtual methods
.method public findDimensions(Lcom/zendesk/service/f;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zendesk/service/f<",
            "Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ImageDimensions;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ReadFromBitmap;->file:Ljava/io/File;

    invoke-direct {p0, v0}, Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ReadFromBitmap;->loadImageDimensions(Ljava/io/File;)Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ImageDimensions;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ImageDimensions;->getImageWidth()I

    move-result v1

    .line 3
    invoke-virtual {v0}, Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ImageDimensions;->getImageHeight()I

    move-result v0

    iget-object v2, p0, Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ReadFromBitmap;->maxSize:Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ImageDimensions;

    invoke-virtual {v2}, Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ImageDimensions;->getImageWidth()I

    move-result v2

    iget-object v3, p0, Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ReadFromBitmap;->maxSize:Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ImageDimensions;

    invoke-virtual {v3}, Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ImageDimensions;->getImageHeight()I

    move-result v3

    .line 4
    invoke-static {v1, v0, v2, v3}, Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic;->determineTargetDimensions(IIII)Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ImageDimensions;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/zendesk/service/f;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
