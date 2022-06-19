.class public final Lcom/facebook/ads/redexgen/X/4H;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/4I;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemHolderInfo"
.end annotation


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10824
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10825
    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/4e;I)Lcom/facebook/ads/redexgen/X/4H;
    .locals 2

    .line 10826
    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/4e;->A0H:Landroid/view/View;

    .line 10827
    .local p0, "view":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4H;->A01:I

    .line 10828
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4H;->A03:I

    .line 10829
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4H;->A02:I

    .line 10830
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/4H;->A00:I

    .line 10831
    return-object p0
.end method


# virtual methods
.method public final A01(Lcom/facebook/ads/redexgen/X/4e;)Lcom/facebook/ads/redexgen/X/4H;
    .locals 1

    .line 10832
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/4H;->A00(Lcom/facebook/ads/redexgen/X/4e;I)Lcom/facebook/ads/redexgen/X/4H;

    move-result-object v0

    return-object v0
.end method
