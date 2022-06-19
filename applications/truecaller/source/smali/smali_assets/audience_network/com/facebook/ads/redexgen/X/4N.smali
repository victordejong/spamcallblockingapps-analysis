.class public Lcom/facebook/ads/redexgen/X/4N;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Eq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/4e;

.field public A01:Z

.field public A02:Z

.field public final A03:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 11450
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 11451
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4N;->A03:Landroid/graphics/Rect;

    .line 11452
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4N;->A01:Z

    .line 11453
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4N;->A02:Z

    .line 11454
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 11455
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 11456
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4N;->A03:Landroid/graphics/Rect;

    .line 11457
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4N;->A01:Z

    .line 11458
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4N;->A02:Z

    .line 11459
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 11460
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 11461
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4N;->A03:Landroid/graphics/Rect;

    .line 11462
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4N;->A01:Z

    .line 11463
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4N;->A02:Z

    .line 11464
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1

    .line 11465
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 11466
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4N;->A03:Landroid/graphics/Rect;

    .line 11467
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4N;->A01:Z

    .line 11468
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4N;->A02:Z

    .line 11469
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/4N;)V
    .locals 1

    .line 11470
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 11471
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/4N;->A03:Landroid/graphics/Rect;

    .line 11472
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4N;->A01:Z

    .line 11473
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/4N;->A02:Z

    .line 11474
    return-void
.end method


# virtual methods
.method public final A00()I
    .locals 1

    .line 11475
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4N;->A00:Lcom/facebook/ads/redexgen/X/4e;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4e;->A0I()I

    move-result v0

    return v0
.end method

.method public final A01()Z
    .locals 1

    .line 11476
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4N;->A00:Lcom/facebook/ads/redexgen/X/4e;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4e;->A0f()Z

    move-result v0

    return v0
.end method

.method public final A02()Z
    .locals 1

    .line 11477
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4N;->A00:Lcom/facebook/ads/redexgen/X/4e;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4e;->A0c()Z

    move-result v0

    return v0
.end method

.method public final A03()Z
    .locals 1

    .line 11478
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4N;->A00:Lcom/facebook/ads/redexgen/X/4e;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4e;->A0b()Z

    move-result v0

    return v0
.end method
