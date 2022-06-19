.class Lzendesk/support/request/CellAttachmentLoadingUtil$ImageLoadingLogic$DisplayImageFromLocalSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzendesk/support/request/CellAttachmentLoadingUtil$ImageLoadingLogic$LoadingStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/support/request/CellAttachmentLoadingUtil$ImageLoadingLogic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DisplayImageFromLocalSource"
.end annotation


# instance fields
.field private final requestCreator:Lg/i/a/g;


# direct methods
.method private constructor <init>(Lg/i/a/g;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lzendesk/support/request/CellAttachmentLoadingUtil$ImageLoadingLogic$DisplayImageFromLocalSource;->requestCreator:Lg/i/a/g;

    return-void
.end method

.method synthetic constructor <init>(Lg/i/a/g;Lzendesk/support/request/CellAttachmentLoadingUtil$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lzendesk/support/request/CellAttachmentLoadingUtil$ImageLoadingLogic$DisplayImageFromLocalSource;-><init>(Lg/i/a/g;)V

    return-void
.end method


# virtual methods
.method public load(Landroid/widget/ImageView;Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ImageDimensions;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lzendesk/support/request/CellAttachmentLoadingUtil$ImageLoadingLogic$DisplayImageFromLocalSource;->requestCreator:Lg/i/a/g;

    invoke-interface {v0}, Lg/i/a/g;->f()Lg/i/a/g;

    move-result-object v0

    invoke-interface {v0}, Lg/i/a/g;->b()Lg/i/a/g;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    invoke-static {p1, v0, p2, v1}, Lzendesk/support/request/CellAttachmentLoadingUtil$ImageLoadingLogic;->access$500(Landroid/widget/ImageView;Lg/i/a/g;Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ImageDimensions;Lg/i/a/a;)V

    return-void
.end method
