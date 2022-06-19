.class Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ReadFromPicasso$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/i/a/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ReadFromPicasso;->findDimensions(Lcom/zendesk/service/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ReadFromPicasso;

.field final synthetic val$callback:Lcom/zendesk/service/f;


# direct methods
.method constructor <init>(Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ReadFromPicasso;Lcom/zendesk/service/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ReadFromPicasso$1;->this$0:Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ReadFromPicasso;

    iput-object p2, p0, Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ReadFromPicasso$1;->val$callback:Lcom/zendesk/service/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBitmapFailed(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "RequestActivity"

    const-string v1, "Unable to load image."

    .line 1
    invoke-static {v0, v1, p1}, Lg/k/b/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ReadFromPicasso$1;->val$callback:Lcom/zendesk/service/f;

    new-instance v0, Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ImageDimensions;

    invoke-direct {v0}, Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ImageDimensions;-><init>()V

    invoke-virtual {p1, v0}, Lcom/zendesk/service/f;->onSuccess(Ljava/lang/Object;)V

    .line 3
    invoke-static {}, Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ReadFromPicasso;->access$1000()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onBitmapLoaded(Landroid/graphics/Bitmap;Lg/i/a/d$b;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    .line 3
    iget-object v0, p0, Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ReadFromPicasso$1;->val$callback:Lcom/zendesk/service/f;

    iget-object v1, p0, Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ReadFromPicasso$1;->this$0:Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ReadFromPicasso;

    invoke-static {v1}, Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ReadFromPicasso;->access$900(Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ReadFromPicasso;)Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ImageDimensions;

    move-result-object v1

    invoke-virtual {v1}, Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ImageDimensions;->getImageWidth()I

    move-result v1

    iget-object v2, p0, Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ReadFromPicasso$1;->this$0:Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ReadFromPicasso;

    invoke-static {v2}, Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ReadFromPicasso;->access$900(Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ReadFromPicasso;)Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ImageDimensions;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ImageDimensions;->getImageHeight()I

    move-result v2

    .line 5
    invoke-static {p2, p1, v1, v2}, Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic;->determineTargetDimensions(IIII)Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ImageDimensions;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/zendesk/service/f;->onSuccess(Ljava/lang/Object;)V

    .line 6
    invoke-static {}, Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ReadFromPicasso;->access$1000()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onPrepareLoad(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method
