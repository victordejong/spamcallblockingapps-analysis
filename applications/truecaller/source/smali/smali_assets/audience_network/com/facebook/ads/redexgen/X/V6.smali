.class public final Lcom/facebook/ads/redexgen/X/V6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Fi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Bk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SampleStreamImpl"
.end annotation


# instance fields
.field public final A00:I

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/Bk;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Bk;I)V
    .locals 0

    .line 57824
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/V6;->A01:Lcom/facebook/ads/redexgen/X/Bk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57825
    iput p2, p0, Lcom/facebook/ads/redexgen/X/V6;->A00:I

    .line 57826
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/V6;)I
    .locals 0

    .line 57827
    iget p0, p0, Lcom/facebook/ads/redexgen/X/V6;->A00:I

    return p0
.end method


# virtual methods
.method public final A8U()Z
    .locals 2

    .line 57828
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/V6;->A01:Lcom/facebook/ads/redexgen/X/Bk;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/V6;->A00:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Bk;->A0S(I)Z

    move-result v0

    return v0
.end method

.method public final A9N()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57829
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/V6;->A01:Lcom/facebook/ads/redexgen/X/Bk;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Bk;->A0Q()V

    .line 57830
    return-void
.end method

.method public final ADG(Lcom/facebook/ads/redexgen/X/AM;Lcom/facebook/ads/redexgen/X/WZ;Z)I
    .locals 2

    .line 57831
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/V6;->A01:Lcom/facebook/ads/redexgen/X/Bk;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/V6;->A00:I

    invoke-virtual {v1, v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Bk;->A0P(ILcom/facebook/ads/redexgen/X/AM;Lcom/facebook/ads/redexgen/X/WZ;Z)I

    move-result v0

    return v0
.end method

.method public final AEg(J)I
    .locals 2

    .line 57832
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/V6;->A01:Lcom/facebook/ads/redexgen/X/Bk;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/V6;->A00:I

    invoke-virtual {v1, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Bk;->A0O(IJ)I

    move-result v0

    return v0
.end method
