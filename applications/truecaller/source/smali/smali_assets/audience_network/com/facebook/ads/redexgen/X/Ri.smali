.class public final Lcom/facebook/ads/redexgen/X/Ri;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/OY;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Rh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Rh;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Rh;)V
    .locals 0

    .line 51112
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ri;->A00:Lcom/facebook/ads/redexgen/X/Rh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ACV(Landroid/view/View;)V
    .locals 2

    .line 51113
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ri;->A00:Lcom/facebook/ads/redexgen/X/Rh;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/Rh;->A09:Z

    if-eqz v0, :cond_0

    .line 51114
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ri;->A00:Lcom/facebook/ads/redexgen/X/Rh;

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/Rh;->A07:Z

    .line 51115
    :cond_0
    return-void
.end method

.method public final ACX(Landroid/view/View;)V
    .locals 2

    .line 51116
    check-cast p1, Lcom/facebook/ads/redexgen/X/SJ;

    .line 51117
    .local p0, "cardLayout":Lcom/facebook/ads/redexgen/X/SJ;
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/SJ;->A0g()V

    .line 51118
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ri;->A00:Lcom/facebook/ads/redexgen/X/Rh;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/Rh;->A09:Z

    if-eqz v0, :cond_0

    .line 51119
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ri;->A00:Lcom/facebook/ads/redexgen/X/Rh;

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/Rh;->A07:Z

    .line 51120
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ri;->A00:Lcom/facebook/ads/redexgen/X/Rh;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Rh;->A04:Lcom/facebook/ads/redexgen/X/QZ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QZ;->A0Z()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, -0x5f000010

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/SJ;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    .line 51121
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ri;->A00:Lcom/facebook/ads/redexgen/X/Rh;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Rh;->A04:Lcom/facebook/ads/redexgen/X/QZ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QZ;->A0U()V

    .line 51122
    :cond_1
    return-void
.end method
