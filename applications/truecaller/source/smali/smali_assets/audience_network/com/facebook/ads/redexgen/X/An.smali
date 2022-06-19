.class public final Lcom/facebook/ads/redexgen/X/An;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Ao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Window"
.end annotation


# instance fields
.field public A00:I

.field public A01:I

.field public A02:J

.field public A03:J

.field public A04:J

.field public A05:J

.field public A06:J

.field public A07:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A08:Z

.field public A09:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A00()J
    .locals 2

    .line 22371
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/An;->A02:J

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/A3;->A01(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final A01()J
    .locals 2

    .line 22372
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/An;->A02:J

    return-wide v0
.end method

.method public final A02()J
    .locals 2

    .line 22373
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/An;->A03:J

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/A3;->A01(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final A03()J
    .locals 2

    .line 22374
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/An;->A04:J

    return-wide v0
.end method

.method public final A04(Ljava/lang/Object;JJZZJJIIJ)Lcom/facebook/ads/redexgen/X/An;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 22375
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/An;->A07:Ljava/lang/Object;

    .line 22376
    iput-wide p2, p0, Lcom/facebook/ads/redexgen/X/An;->A05:J

    .line 22377
    iput-wide p4, p0, Lcom/facebook/ads/redexgen/X/An;->A06:J

    .line 22378
    iput-boolean p6, p0, Lcom/facebook/ads/redexgen/X/An;->A09:Z

    .line 22379
    iput-boolean p7, p0, Lcom/facebook/ads/redexgen/X/An;->A08:Z

    .line 22380
    iput-wide p8, p0, Lcom/facebook/ads/redexgen/X/An;->A02:J

    .line 22381
    iput-wide p10, p0, Lcom/facebook/ads/redexgen/X/An;->A03:J

    .line 22382
    iput p12, p0, Lcom/facebook/ads/redexgen/X/An;->A00:I

    .line 22383
    iput p13, p0, Lcom/facebook/ads/redexgen/X/An;->A01:I

    .line 22384
    iput-wide p14, p0, Lcom/facebook/ads/redexgen/X/An;->A04:J

    .line 22385
    return-object p0
.end method
