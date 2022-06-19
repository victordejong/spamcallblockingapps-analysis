.class public final Lcom/facebook/ads/redexgen/X/SM;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Ne;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/SK;->A0O(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/SK;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/SK;)V
    .locals 0

    .line 51787
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/SM;->A00:Lcom/facebook/ads/redexgen/X/SK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ABR(Ljava/lang/String;)V
    .locals 2

    .line 51788
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SM;->A00:Lcom/facebook/ads/redexgen/X/SK;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/SK;->A0V(Lcom/facebook/ads/redexgen/X/SK;Z)Z

    .line 51789
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SM;->A00:Lcom/facebook/ads/redexgen/X/SK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/SK;->A06(Lcom/facebook/ads/redexgen/X/SK;)Lcom/facebook/ads/redexgen/X/NX;

    move-result-object v1

    const/16 v0, 0x64

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NX;->setProgress(I)V

    .line 51790
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SM;->A00:Lcom/facebook/ads/redexgen/X/SK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/SK;->A06(Lcom/facebook/ads/redexgen/X/SK;)Lcom/facebook/ads/redexgen/X/NX;

    move-result-object v1

    const/16 v0, 0x8

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/M5;->A0N(Landroid/view/View;I)V

    .line 51791
    return-void
.end method

.method public final ABT(Ljava/lang/String;)V
    .locals 2

    .line 51792
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SM;->A00:Lcom/facebook/ads/redexgen/X/SK;

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/SK;->A0V(Lcom/facebook/ads/redexgen/X/SK;Z)Z

    .line 51793
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SM;->A00:Lcom/facebook/ads/redexgen/X/SK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/SK;->A06(Lcom/facebook/ads/redexgen/X/SK;)Lcom/facebook/ads/redexgen/X/NX;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/M5;->A0N(Landroid/view/View;I)V

    .line 51794
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SM;->A00:Lcom/facebook/ads/redexgen/X/SK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/SK;->A05(Lcom/facebook/ads/redexgen/X/SK;)Lcom/facebook/ads/redexgen/X/NW;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/NW;->setUrl(Ljava/lang/String;)V

    .line 51795
    return-void
.end method

.method public final ABk(I)V
    .locals 1

    .line 51796
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SM;->A00:Lcom/facebook/ads/redexgen/X/SK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/SK;->A0T(Lcom/facebook/ads/redexgen/X/SK;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51797
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SM;->A00:Lcom/facebook/ads/redexgen/X/SK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/SK;->A06(Lcom/facebook/ads/redexgen/X/SK;)Lcom/facebook/ads/redexgen/X/NX;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/NX;->setProgress(I)V

    .line 51798
    :cond_0
    return-void
.end method

.method public final ABp(Ljava/lang/String;)V
    .locals 1

    .line 51799
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SM;->A00:Lcom/facebook/ads/redexgen/X/SK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/SK;->A05(Lcom/facebook/ads/redexgen/X/SK;)Lcom/facebook/ads/redexgen/X/NW;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/NW;->setTitle(Ljava/lang/String;)V

    .line 51800
    return-void
.end method

.method public final ABr()V
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    .line 51801
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SM;->A00:Lcom/facebook/ads/redexgen/X/SK;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/SK;->A08(Lcom/facebook/ads/redexgen/X/SK;)Lcom/facebook/ads/redexgen/X/ON;

    move-result-object v0

    .line 51802
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ON;->A09()Lcom/facebook/ads/redexgen/X/MU;

    move-result-object v1

    .line 51803
    const/16 v0, 0xe

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/MU;->AA3(I)V

    .line 51804
    return-void
.end method
