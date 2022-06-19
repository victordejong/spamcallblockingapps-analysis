.class public final Lcom/facebook/ads/redexgen/X/DR;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/DS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VorbisIdHeader"
.end annotation


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:I

.field public final A03:I

.field public final A04:I

.field public final A05:I

.field public final A06:J

.field public final A07:J

.field public final A08:Z

.field public final A09:[B


# direct methods
.method public constructor <init>(JIJIIIIIZ[B)V
    .locals 0

    .line 27416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27417
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/DR;->A07:J

    .line 27418
    iput p3, p0, Lcom/facebook/ads/redexgen/X/DR;->A05:I

    .line 27419
    iput-wide p4, p0, Lcom/facebook/ads/redexgen/X/DR;->A06:J

    .line 27420
    iput p6, p0, Lcom/facebook/ads/redexgen/X/DR;->A00:I

    .line 27421
    iput p7, p0, Lcom/facebook/ads/redexgen/X/DR;->A02:I

    .line 27422
    iput p8, p0, Lcom/facebook/ads/redexgen/X/DR;->A01:I

    .line 27423
    iput p9, p0, Lcom/facebook/ads/redexgen/X/DR;->A03:I

    .line 27424
    iput p10, p0, Lcom/facebook/ads/redexgen/X/DR;->A04:I

    .line 27425
    iput-boolean p11, p0, Lcom/facebook/ads/redexgen/X/DR;->A08:Z

    .line 27426
    iput-object p12, p0, Lcom/facebook/ads/redexgen/X/DR;->A09:[B

    .line 27427
    return-void
.end method
