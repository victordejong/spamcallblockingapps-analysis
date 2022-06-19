.class public final Lcom/facebook/ads/redexgen/X/Dl;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Dm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ChunkHeader"
.end annotation


# instance fields
.field public final A00:I

.field public final A01:J


# direct methods
.method public constructor <init>(IJ)V
    .locals 0

    .line 29200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29201
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Dl;->A00:I

    .line 29202
    iput-wide p2, p0, Lcom/facebook/ads/redexgen/X/Dl;->A01:J

    .line 29203
    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/CQ;Lcom/facebook/ads/redexgen/X/IV;)Lcom/facebook/ads/redexgen/X/Dl;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 29204
    iget-object v2, p1, Lcom/facebook/ads/redexgen/X/IV;->A00:[B

    const/4 v1, 0x0

    const/16 v0, 0x8

    invoke-interface {p0, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/CQ;->ACp([BII)V

    .line 29205
    invoke-virtual {p1, v1}, Lcom/facebook/ads/redexgen/X/IV;->A0Y(I)V

    .line 29206
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IV;->A08()I

    move-result p0

    .line 29207
    .local p0, "id":I
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IV;->A0K()J

    move-result-wide v1

    .line 29208
    .local p1, "size":J
    new-instance v0, Lcom/facebook/ads/redexgen/X/Dl;

    invoke-direct {v0, p0, v1, v2}, Lcom/facebook/ads/redexgen/X/Dl;-><init>(IJ)V

    return-object v0
.end method
