.class Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ExistingDimensions;
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
    name = "ExistingDimensions"
.end annotation


# instance fields
.field private final height:I

.field private final maxSize:Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ImageDimensions;

.field private final width:I


# direct methods
.method constructor <init>(IILzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ImageDimensions;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ExistingDimensions;->width:I

    .line 3
    iput p2, p0, Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ExistingDimensions;->height:I

    .line 4
    iput-object p3, p0, Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ExistingDimensions;->maxSize:Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ImageDimensions;

    return-void
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
    iget v0, p0, Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ExistingDimensions;->width:I

    iget v1, p0, Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ExistingDimensions;->height:I

    iget-object v2, p0, Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ExistingDimensions;->maxSize:Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ImageDimensions;

    invoke-virtual {v2}, Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ImageDimensions;->getImageWidth()I

    move-result v2

    iget-object v3, p0, Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ExistingDimensions;->maxSize:Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ImageDimensions;

    .line 2
    invoke-virtual {v3}, Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ImageDimensions;->getImageHeight()I

    move-result v3

    .line 3
    invoke-static {v0, v1, v2, v3}, Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic;->determineTargetDimensions(IIII)Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ImageDimensions;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/zendesk/service/f;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
