.class public final Lcom/facebook/ads/redexgen/X/BW;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Wg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlaybackParametersCheckpoint"
.end annotation


# instance fields
.field public final A00:J

.field public final A01:J

.field public final A02:Lcom/facebook/ads/redexgen/X/AU;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/AU;JJ)V
    .locals 0

    .line 23845
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23846
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/BW;->A02:Lcom/facebook/ads/redexgen/X/AU;

    .line 23847
    iput-wide p2, p0, Lcom/facebook/ads/redexgen/X/BW;->A00:J

    .line 23848
    iput-wide p4, p0, Lcom/facebook/ads/redexgen/X/BW;->A01:J

    .line 23849
    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/AU;JJLcom/facebook/ads/redexgen/X/BS;)V
    .locals 0

    .line 23850
    invoke-direct/range {p0 .. p5}, Lcom/facebook/ads/redexgen/X/BW;-><init>(Lcom/facebook/ads/redexgen/X/AU;JJ)V

    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/BW;)J
    .locals 1

    .line 23851
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/BW;->A01:J

    return-wide v0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/BW;)J
    .locals 1

    .line 23852
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/BW;->A00:J

    return-wide v0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/BW;)Lcom/facebook/ads/redexgen/X/AU;
    .locals 0

    .line 23853
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/BW;->A02:Lcom/facebook/ads/redexgen/X/AU;

    return-object p0
.end method
