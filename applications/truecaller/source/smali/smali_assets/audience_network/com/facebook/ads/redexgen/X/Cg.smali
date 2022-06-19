.class public final Lcom/facebook/ads/redexgen/X/Cg;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/WE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MasterElement"
.end annotation


# instance fields
.field public final A00:I

.field public final A01:J


# direct methods
.method public constructor <init>(IJ)V
    .locals 0

    .line 25078
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25079
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Cg;->A00:I

    .line 25080
    iput-wide p2, p0, Lcom/facebook/ads/redexgen/X/Cg;->A01:J

    .line 25081
    return-void
.end method

.method public synthetic constructor <init>(IJLcom/facebook/ads/redexgen/X/Ce;)V
    .locals 0

    .line 25082
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Cg;-><init>(IJ)V

    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Cg;)I
    .locals 0

    .line 25083
    iget p0, p0, Lcom/facebook/ads/redexgen/X/Cg;->A00:I

    return p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Cg;)J
    .locals 1

    .line 25084
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Cg;->A01:J

    return-wide v0
.end method
