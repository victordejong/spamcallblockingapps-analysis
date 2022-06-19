.class public final Lcom/facebook/ads/redexgen/X/UM;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/HQ;


# instance fields
.field public final A00:I

.field public final A01:Lcom/facebook/ads/redexgen/X/HO;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A02:Lcom/facebook/ads/redexgen/X/HQ;

.field public final A03:Lcom/facebook/ads/redexgen/X/HQ;

.field public final A04:Lcom/facebook/ads/redexgen/X/Hq;

.field public final A05:Lcom/facebook/ads/redexgen/X/Hs;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Hq;Lcom/facebook/ads/redexgen/X/HQ;Lcom/facebook/ads/redexgen/X/HQ;Lcom/facebook/ads/redexgen/X/HO;ILcom/facebook/ads/redexgen/X/Hs;)V
    .locals 0

    .line 56402
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56403
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/UM;->A04:Lcom/facebook/ads/redexgen/X/Hq;

    .line 56404
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/UM;->A03:Lcom/facebook/ads/redexgen/X/HQ;

    .line 56405
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/UM;->A02:Lcom/facebook/ads/redexgen/X/HQ;

    .line 56406
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/UM;->A01:Lcom/facebook/ads/redexgen/X/HO;

    .line 56407
    iput p5, p0, Lcom/facebook/ads/redexgen/X/UM;->A00:I

    .line 56408
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/UM;->A05:Lcom/facebook/ads/redexgen/X/Hs;

    .line 56409
    return-void
.end method

.method private final A00()Lcom/facebook/ads/redexgen/X/UN;
    .locals 8

    .line 56410
    new-instance v1, Lcom/facebook/ads/redexgen/X/UN;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/UM;->A04:Lcom/facebook/ads/redexgen/X/Hq;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UM;->A03:Lcom/facebook/ads/redexgen/X/HQ;

    .line 56411
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/HQ;->A4C()Lcom/facebook/ads/redexgen/X/HR;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UM;->A02:Lcom/facebook/ads/redexgen/X/HQ;

    .line 56412
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/HQ;->A4C()Lcom/facebook/ads/redexgen/X/HR;

    move-result-object v4

    .line 56413
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UM;->A01:Lcom/facebook/ads/redexgen/X/HO;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/HO;->createDataSink()Lcom/facebook/ads/redexgen/X/HP;

    move-result-object v5

    :goto_0
    iget v6, p0, Lcom/facebook/ads/redexgen/X/UM;->A00:I

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/UM;->A05:Lcom/facebook/ads/redexgen/X/Hs;

    invoke-direct/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/UN;-><init>(Lcom/facebook/ads/redexgen/X/Hq;Lcom/facebook/ads/redexgen/X/HR;Lcom/facebook/ads/redexgen/X/HR;Lcom/facebook/ads/redexgen/X/HP;ILcom/facebook/ads/redexgen/X/Hs;)V

    .line 56414
    return-object v1

    .line 56415
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic A4C()Lcom/facebook/ads/redexgen/X/HR;
    .locals 1

    .line 56416
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/UM;->A00()Lcom/facebook/ads/redexgen/X/UN;

    move-result-object v0

    return-object v0
.end method
