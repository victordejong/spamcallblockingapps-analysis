.class public final Lcom/facebook/ads/redexgen/X/K0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/K1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewabilityRecord"
.end annotation


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 41100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41101
    iput p1, p0, Lcom/facebook/ads/redexgen/X/K0;->A02:I

    .line 41102
    iput p2, p0, Lcom/facebook/ads/redexgen/X/K0;->A00:I

    .line 41103
    iput p3, p0, Lcom/facebook/ads/redexgen/X/K0;->A01:I

    .line 41104
    return-void
.end method

.method public synthetic constructor <init>(IIILcom/facebook/ads/redexgen/X/Jy;)V
    .locals 0

    .line 41105
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/K0;-><init>(III)V

    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/K0;)I
    .locals 0

    .line 41106
    iget p0, p0, Lcom/facebook/ads/redexgen/X/K0;->A00:I

    return p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/K0;)I
    .locals 0

    .line 41107
    iget p0, p0, Lcom/facebook/ads/redexgen/X/K0;->A02:I

    return p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/K0;)I
    .locals 0

    .line 41108
    iget p0, p0, Lcom/facebook/ads/redexgen/X/K0;->A01:I

    return p0
.end method
