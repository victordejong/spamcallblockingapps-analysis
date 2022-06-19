.class public final Lcom/facebook/ads/redexgen/X/AH;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/DT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlaybackInfoUpdate"
.end annotation


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Lcom/facebook/ads/redexgen/X/AT;

.field public A03:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21680
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/AE;)V
    .locals 0

    .line 21681
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/AH;-><init>()V

    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/AH;)I
    .locals 0

    .line 21682
    iget p0, p0, Lcom/facebook/ads/redexgen/X/AH;->A01:I

    return p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/AH;)I
    .locals 0

    .line 21683
    iget p0, p0, Lcom/facebook/ads/redexgen/X/AH;->A00:I

    return p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/AH;)Z
    .locals 0

    .line 21684
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/AH;->A03:Z

    return p0
.end method


# virtual methods
.method public final A03(I)V
    .locals 1

    .line 21685
    iget v0, p0, Lcom/facebook/ads/redexgen/X/AH;->A01:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/AH;->A01:I

    .line 21686
    return-void
.end method

.method public final A04(I)V
    .locals 3

    .line 21687
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/AH;->A03:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/facebook/ads/redexgen/X/AH;->A00:I

    const/4 v0, 0x4

    if-eq v1, v0, :cond_1

    .line 21688
    if-ne p1, v0, :cond_0

    :goto_0
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/I6;->A03(Z)V

    .line 21689
    return-void

    .line 21690
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 21691
    :cond_1
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/AH;->A03:Z

    .line 21692
    iput p1, p0, Lcom/facebook/ads/redexgen/X/AH;->A00:I

    .line 21693
    return-void
.end method

.method public final A05(Lcom/facebook/ads/redexgen/X/AT;)V
    .locals 1

    .line 21694
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/AH;->A02:Lcom/facebook/ads/redexgen/X/AT;

    .line 21695
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/AH;->A01:I

    .line 21696
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/AH;->A03:Z

    .line 21697
    return-void
.end method

.method public final A06(Lcom/facebook/ads/redexgen/X/AT;)Z
    .locals 1

    .line 21698
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/AH;->A02:Lcom/facebook/ads/redexgen/X/AT;

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/AH;->A01:I

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/AH;->A03:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
