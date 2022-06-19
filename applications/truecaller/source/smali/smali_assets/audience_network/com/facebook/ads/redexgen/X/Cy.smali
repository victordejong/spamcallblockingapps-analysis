.class public final Lcom/facebook/ads/redexgen/X/Cy;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Cz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Results"
.end annotation


# instance fields
.field public final A00:I

.field public final A01:J

.field public final A02:[I

.field public final A03:[I

.field public final A04:[J

.field public final A05:[J


# direct methods
.method public constructor <init>([J[II[J[IJ)V
    .locals 0

    .line 26307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26308
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Cy;->A04:[J

    .line 26309
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Cy;->A03:[I

    .line 26310
    iput p3, p0, Lcom/facebook/ads/redexgen/X/Cy;->A00:I

    .line 26311
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/Cy;->A05:[J

    .line 26312
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/Cy;->A02:[I

    .line 26313
    iput-wide p6, p0, Lcom/facebook/ads/redexgen/X/Cy;->A01:J

    .line 26314
    return-void
.end method

.method public synthetic constructor <init>([J[II[J[IJLcom/facebook/ads/redexgen/X/Cx;)V
    .locals 0

    .line 26315
    invoke-direct/range {p0 .. p7}, Lcom/facebook/ads/redexgen/X/Cy;-><init>([J[II[J[IJ)V

    return-void
.end method
