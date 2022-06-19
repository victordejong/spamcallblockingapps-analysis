.class public final Lcom/facebook/ads/redexgen/X/W5;
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
    name = "StszSampleSizeBox"
.end annotation


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:Lcom/facebook/ads/redexgen/X/IV;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/W6;)V
    .locals 2

    .line 61704
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61705
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/W6;->A00:Lcom/facebook/ads/redexgen/X/IV;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/W5;->A02:Lcom/facebook/ads/redexgen/X/IV;

    .line 61706
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/W5;->A02:Lcom/facebook/ads/redexgen/X/IV;

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IV;->A0Y(I)V

    .line 61707
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W5;->A02:Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IV;->A0H()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/W5;->A00:I

    .line 61708
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W5;->A02:Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IV;->A0H()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/W5;->A01:I

    .line 61709
    return-void
.end method


# virtual methods
.method public final A7D()I
    .locals 1

    .line 61710
    iget v0, p0, Lcom/facebook/ads/redexgen/X/W5;->A01:I

    return v0
.end method

.method public final A8M()Z
    .locals 1

    .line 61711
    iget v0, p0, Lcom/facebook/ads/redexgen/X/W5;->A00:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final ADJ()I
    .locals 1

    .line 61712
    iget v0, p0, Lcom/facebook/ads/redexgen/X/W5;->A00:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W5;->A02:Lcom/facebook/ads/redexgen/X/IV;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IV;->A0H()I

    move-result v0

    :cond_0
    return v0
.end method
