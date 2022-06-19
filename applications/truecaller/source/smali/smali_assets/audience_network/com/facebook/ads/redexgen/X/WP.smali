.class public final Lcom/facebook/ads/redexgen/X/WP;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Cb;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 62982
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A5S(Lcom/facebook/ads/internal/exoplayer2/Format;)V
    .locals 0

    .line 62983
    return-void
.end method

.method public final AE3(Lcom/facebook/ads/redexgen/X/CQ;IZ)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 62984
    invoke-interface {p1, p2}, Lcom/facebook/ads/redexgen/X/CQ;->AEe(I)I

    move-result v1

    .line 62985
    .local p0, "bytesSkipped":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_1

    .line 62986
    if-eqz p3, :cond_0

    .line 62987
    return v0

    .line 62988
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 62989
    :cond_1
    return v1
.end method

.method public final AE4(Lcom/facebook/ads/redexgen/X/IV;I)V
    .locals 0

    .line 62990
    invoke-virtual {p1, p2}, Lcom/facebook/ads/redexgen/X/IV;->A0Z(I)V

    .line 62991
    return-void
.end method

.method public final AE5(JIIILcom/facebook/ads/redexgen/X/Ca;)V
    .locals 0

    .line 62992
    return-void
.end method
