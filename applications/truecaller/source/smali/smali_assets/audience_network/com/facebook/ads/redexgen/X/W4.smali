.class public final Lcom/facebook/ads/redexgen/X/W4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Cs;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Cv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Stz2SampleSizeBox"
.end annotation


# instance fields
.field public A00:I

.field public A01:I

.field public final A02:I

.field public final A03:I

.field public final A04:Lcom/facebook/ads/redexgen/X/IV;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/W6;)V
    .locals 2

    .line 61688
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61689
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/W6;->A00:Lcom/facebook/ads/redexgen/X/IV;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/W4;->A04:Lcom/facebook/ads/redexgen/X/IV;

    .line 61690
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/W4;->A04:Lcom/facebook/ads/redexgen/X/IV;

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IV;->A0Y(I)V

    .line 61691
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W4;->A04:Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IV;->A0H()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/facebook/ads/redexgen/X/W4;->A02:I

    .line 61692
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W4;->A04:Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IV;->A0H()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/W4;->A03:I

    .line 61693
    return-void
.end method


# virtual methods
.method public final A7D()I
    .locals 1

    .line 61694
    iget v0, p0, Lcom/facebook/ads/redexgen/X/W4;->A03:I

    return v0
.end method

.method public final A8M()Z
    .locals 1

    .line 61695
    const/4 v0, 0x0

    return v0
.end method

.method public final ADJ()I
    .locals 2

    .line 61696
    iget v1, p0, Lcom/facebook/ads/redexgen/X/W4;->A02:I

    const/16 v0, 0x8

    if-ne v1, v0, :cond_0

    .line 61697
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W4;->A04:Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IV;->A0E()I

    move-result v0

    return v0

    .line 61698
    :cond_0
    const/16 v0, 0x10

    if-ne v1, v0, :cond_1

    .line 61699
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W4;->A04:Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IV;->A0I()I

    move-result v0

    return v0

    .line 61700
    :cond_1
    iget v1, p0, Lcom/facebook/ads/redexgen/X/W4;->A01:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/W4;->A01:I

    rem-int/lit8 v0, v1, 0x2

    if-nez v0, :cond_2

    .line 61701
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W4;->A04:Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IV;->A0E()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/W4;->A00:I

    .line 61702
    iget v0, p0, Lcom/facebook/ads/redexgen/X/W4;->A00:I

    and-int/lit16 v0, v0, 0xf0

    shr-int/lit8 v0, v0, 0x4

    return v0

    .line 61703
    :cond_2
    iget v0, p0, Lcom/facebook/ads/redexgen/X/W4;->A00:I

    and-int/lit8 v0, v0, 0xf

    return v0
.end method
