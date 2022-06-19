.class public final Lcom/facebook/ads/redexgen/X/DN;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Vq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VorbisSetup"
.end annotation


# instance fields
.field public final A00:I

.field public final A01:Lcom/facebook/ads/redexgen/X/DP;

.field public final A02:Lcom/facebook/ads/redexgen/X/DR;

.field public final A03:[B

.field public final A04:[Lcom/facebook/ads/redexgen/X/DQ;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/DR;Lcom/facebook/ads/redexgen/X/DP;[B[Lcom/facebook/ads/redexgen/X/DQ;I)V
    .locals 0

    .line 27391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27392
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/DN;->A02:Lcom/facebook/ads/redexgen/X/DR;

    .line 27393
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/DN;->A01:Lcom/facebook/ads/redexgen/X/DP;

    .line 27394
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/DN;->A03:[B

    .line 27395
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/DN;->A04:[Lcom/facebook/ads/redexgen/X/DQ;

    .line 27396
    iput p5, p0, Lcom/facebook/ads/redexgen/X/DN;->A00:I

    .line 27397
    return-void
.end method
