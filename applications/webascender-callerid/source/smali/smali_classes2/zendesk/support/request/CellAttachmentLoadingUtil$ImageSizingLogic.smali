.class Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/support/request/CellAttachmentLoadingUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ImageSizingLogic"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ImageDimensions;,
        Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$DimensionStrategy;,
        Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$DefaultStrategy;,
        Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ExistingDimensions;,
        Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ReadFromBitmap;,
        Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ReadFromPicasso;
    }
.end annotation


# instance fields
.field private final cachedDimensions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ImageDimensions;",
            ">;"
        }
    .end annotation
.end field

.field private final maxSize:Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ImageDimensions;

.field private final picasso:Lg/i/a/d;


# direct methods
.method constructor <init>(Lg/i/a/d;Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic;->cachedDimensions:Ljava/util/Map;

    .line 3
    iput-object p1, p0, Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic;->picasso:Lg/i/a/d;

    .line 4
    invoke-direct {p0, p2}, Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic;->getMaxSize(Landroid/content/Context;)Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ImageDimensions;

    move-result-object p1

    iput-object p1, p0, Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic;->maxSize:Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ImageDimensions;

    return-void
.end method

.method static synthetic access$600(Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic;->cachedDimensions:Ljava/util/Map;

    return-object p0
.end method

.method private calculateMaxWidth(Landroid/content/Context;)I
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 3
    sget v1, Lg/k/c/d;->l:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 4
    sget v2, Lg/k/c/d;->s:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sub-int/2addr v0, v1

    sub-int/2addr v0, p1

    return v0
.end method

.method static determineTargetDimensions(IIII)Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ImageDimensions;
    .locals 5

    .line 1
    new-instance v0, Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ImageDimensions;

    invoke-direct {v0}, Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ImageDimensions;-><init>()V

    int-to-double v1, p0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    mul-double v1, v1, v3

    int-to-double v3, p1

    div-double/2addr v1, v3

    int-to-double v3, p2

    div-double/2addr v3, v1

    double-to-int v1, v3

    if-le p0, p1, :cond_0

    if-le p0, p2, :cond_1

    move p0, p2

    goto :goto_0

    :cond_0
    if-le p1, v1, :cond_1

    .line 2
    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    :goto_0
    move p1, v1

    .line 3
    :cond_1
    invoke-static {p3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {v0, p0, p1}, Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ImageDimensions;->setDimensions(II)V

    return-object v0
.end method

.method private getDimensionStrategy(Lzendesk/support/request/StateRequestAttachment;Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ImageDimensions;)Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$DimensionStrategy;
    .locals 5

    .line 1
    invoke-virtual {p1}, Lzendesk/support/request/StateRequestAttachment;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lzendesk/support/request/StateRequestAttachment;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    new-instance v0, Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ExistingDimensions;

    invoke-virtual {p1}, Lzendesk/support/request/StateRequestAttachment;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lzendesk/support/request/StateRequestAttachment;->getHeight()I

    move-result p1

    invoke-direct {v0, v1, p1, p2}, Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ExistingDimensions;-><init>(IILzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ImageDimensions;)V

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lzendesk/support/request/StateRequestAttachment;->getLocalUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lg/k/d/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic;->cachedDimensions:Ljava/util/Map;

    .line 4
    invoke-virtual {p1}, Lzendesk/support/request/StateRequestAttachment;->getLocalUri()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic;->cachedDimensions:Ljava/util/Map;

    invoke-virtual {p1}, Lzendesk/support/request/StateRequestAttachment;->getLocalUri()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ImageDimensions;

    .line 6
    new-instance v0, Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ExistingDimensions;

    invoke-virtual {p1}, Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ImageDimensions;->getImageWidth()I

    move-result v1

    invoke-virtual {p1}, Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ImageDimensions;->getImageHeight()I

    move-result p1

    invoke-direct {v0, v1, p1, p2}, Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ExistingDimensions;-><init>(IILzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ImageDimensions;)V

    return-object v0

    .line 7
    :cond_1
    invoke-virtual {p1}, Lzendesk/support/request/StateRequestAttachment;->getLocalFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lzendesk/support/request/StateRequestAttachment;->getLocalFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {p1}, Lzendesk/support/request/StateRequestAttachment;->getLocalFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    .line 9
    new-instance v0, Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ReadFromBitmap;

    invoke-virtual {p1}, Lzendesk/support/request/StateRequestAttachment;->getLocalFile()Ljava/io/File;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ReadFromBitmap;-><init>(Ljava/io/File;Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ImageDimensions;)V

    return-object v0

    .line 10
    :cond_2
    invoke-virtual {p1}, Lzendesk/support/request/StateRequestAttachment;->getLocalUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lg/k/d/f;->b(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 11
    invoke-virtual {p1}, Lzendesk/support/request/StateRequestAttachment;->getLocalUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 12
    invoke-virtual {p1}, Lzendesk/support/request/StateRequestAttachment;->getLocalUri()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 13
    new-instance v0, Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ReadFromPicasso;

    iget-object v2, p0, Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic;->picasso:Lg/i/a/d;

    invoke-interface {v2, p1}, Lg/i/a/d;->a(Landroid/net/Uri;)Lg/i/a/g;

    move-result-object p1

    invoke-direct {v0, p1, p2, v1}, Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ReadFromPicasso;-><init>(Lg/i/a/g;Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ImageDimensions;Lzendesk/support/request/CellAttachmentLoadingUtil$1;)V

    return-object v0

    .line 14
    :cond_3
    invoke-virtual {p1}, Lzendesk/support/request/StateRequestAttachment;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lg/k/d/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 15
    new-instance v0, Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ReadFromPicasso;

    iget-object v2, p0, Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic;->picasso:Lg/i/a/d;

    invoke-virtual {p1}, Lzendesk/support/request/StateRequestAttachment;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Lg/i/a/d;->e(Ljava/lang/String;)Lg/i/a/g;

    move-result-object p1

    invoke-direct {v0, p1, p2, v1}, Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ReadFromPicasso;-><init>(Lg/i/a/g;Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ImageDimensions;Lzendesk/support/request/CellAttachmentLoadingUtil$1;)V

    return-object v0

    :cond_4
    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 16
    invoke-virtual {p1}, Lzendesk/support/request/StateRequestAttachment;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "RequestActivity"

    const-string v0, "Can\'t load dimensions. Id: %s"

    invoke-static {p1, v0, p2}, Lg/k/b/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    new-instance p1, Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$DefaultStrategy;

    invoke-direct {p1, v1}, Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$DefaultStrategy;-><init>(Lzendesk/support/request/CellAttachmentLoadingUtil$1;)V

    return-object p1
.end method

.method private getMaxSize(Landroid/content/Context;)Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ImageDimensions;
    .locals 4

    .line 2
    invoke-direct {p0, p1}, Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic;->calculateMaxWidth(Landroid/content/Context;)I

    move-result p1

    int-to-double v0, p1

    const-wide v2, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    div-double/2addr v0, v2

    double-to-int v0, v0

    .line 3
    new-instance v1, Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ImageDimensions;

    invoke-direct {v1, p1, v0}, Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ImageDimensions;-><init>(II)V

    return-object v1
.end method


# virtual methods
.method getMaxSize()Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ImageDimensions;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic;->maxSize:Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ImageDimensions;

    return-object v0
.end method

.method loadDimensionsForAttachment(Lzendesk/support/request/StateRequestAttachment;Lcom/zendesk/service/f;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzendesk/support/request/StateRequestAttachment;",
            "Lcom/zendesk/service/f<",
            "Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ImageDimensions;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic;->maxSize:Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ImageDimensions;

    invoke-direct {p0, p1, v0}, Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic;->getDimensionStrategy(Lzendesk/support/request/StateRequestAttachment;Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$ImageDimensions;)Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$DimensionStrategy;

    move-result-object v0

    .line 2
    new-instance v1, Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$1;

    invoke-direct {v1, p0, p1, p2}, Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$1;-><init>(Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic;Lzendesk/support/request/StateRequestAttachment;Lcom/zendesk/service/f;)V

    invoke-interface {v0, v1}, Lzendesk/support/request/CellAttachmentLoadingUtil$ImageSizingLogic$DimensionStrategy;->findDimensions(Lcom/zendesk/service/f;)V

    return-void
.end method
