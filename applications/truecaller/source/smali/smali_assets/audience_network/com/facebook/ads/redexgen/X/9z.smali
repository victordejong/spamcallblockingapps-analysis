.class public final Lcom/facebook/ads/redexgen/X/9z;
.super Lcom/facebook/ads/redexgen/X/Mi;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/9v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/9v;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/9v;)V
    .locals 0

    .line 21389
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/9z;->A00:Lcom/facebook/ads/redexgen/X/9v;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Mi;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/7v;)V
    .locals 3

    .line 21390
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9z;->A00:Lcom/facebook/ads/redexgen/X/9v;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9v;->A05(Lcom/facebook/ads/redexgen/X/9v;)V

    .line 21391
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9z;->A00:Lcom/facebook/ads/redexgen/X/9v;

    const v0, -0x5f000010

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9v;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    .line 21392
    .local p0, "tag":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 21393
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9z;->A00:Lcom/facebook/ads/redexgen/X/9v;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9v;->A07:Lcom/facebook/ads/redexgen/X/Rh;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Rh;->A0N()Lcom/facebook/ads/redexgen/X/OX;

    move-result-object v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/OX;->ACO(I)V

    .line 21394
    :cond_0
    return-void
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/9N;)V
    .locals 0

    .line 21395
    check-cast p1, Lcom/facebook/ads/redexgen/X/7v;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/9z;->A00(Lcom/facebook/ads/redexgen/X/7v;)V

    return-void
.end method
