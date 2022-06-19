.class public final Lcom/facebook/ads/redexgen/X/Wi;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/BU;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Wg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultAudioProcessorChain"
.end annotation


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/Wc;

.field public final A01:Lcom/facebook/ads/redexgen/X/Wb;

.field public final A02:[Lcom/facebook/ads/redexgen/X/B8;


# direct methods
.method public varargs constructor <init>([Lcom/facebook/ads/redexgen/X/B8;)V
    .locals 3

    .line 64573
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64574
    array-length v0, p1

    add-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/redexgen/X/B8;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wi;->A02:[Lcom/facebook/ads/redexgen/X/B8;

    .line 64575
    new-instance v0, Lcom/facebook/ads/redexgen/X/Wc;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Wc;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wi;->A00:Lcom/facebook/ads/redexgen/X/Wc;

    .line 64576
    new-instance v0, Lcom/facebook/ads/redexgen/X/Wb;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Wb;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Wi;->A01:Lcom/facebook/ads/redexgen/X/Wb;

    .line 64577
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Wi;->A02:[Lcom/facebook/ads/redexgen/X/B8;

    array-length v1, p1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wi;->A00:Lcom/facebook/ads/redexgen/X/Wc;

    aput-object v0, v2, v1

    .line 64578
    array-length v0, p1

    add-int/lit8 v1, v0, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wi;->A01:Lcom/facebook/ads/redexgen/X/Wb;

    aput-object v0, v2, v1

    .line 64579
    return-void
.end method


# virtual methods
.method public final A3O(Lcom/facebook/ads/redexgen/X/AU;)Lcom/facebook/ads/redexgen/X/AU;
    .locals 4

    .line 64580
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Wi;->A00:Lcom/facebook/ads/redexgen/X/Wc;

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/AU;->A02:Z

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Wc;->A0B(Z)V

    .line 64581
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Wi;->A01:Lcom/facebook/ads/redexgen/X/Wb;

    iget v0, p1, Lcom/facebook/ads/redexgen/X/AU;->A01:F

    .line 64582
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Wb;->A01(F)F

    move-result v3

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Wi;->A01:Lcom/facebook/ads/redexgen/X/Wb;

    iget v0, p1, Lcom/facebook/ads/redexgen/X/AU;->A00:F

    .line 64583
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Wb;->A00(F)F

    move-result v2

    iget-boolean v1, p1, Lcom/facebook/ads/redexgen/X/AU;->A02:Z

    new-instance v0, Lcom/facebook/ads/redexgen/X/AU;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/AU;-><init>(FFZ)V

    .line 64584
    return-object v0
.end method

.method public final A5i()[Lcom/facebook/ads/redexgen/X/B8;
    .locals 1

    .line 64585
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wi;->A02:[Lcom/facebook/ads/redexgen/X/B8;

    return-object v0
.end method

.method public final A6t(J)J
    .locals 2

    .line 64586
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wi;->A01:Lcom/facebook/ads/redexgen/X/Wb;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Wb;->A02(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final A7P()J
    .locals 2

    .line 64587
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Wi;->A00:Lcom/facebook/ads/redexgen/X/Wc;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wc;->A0A()J

    move-result-wide v0

    return-wide v0
.end method
