.class public final Lcom/facebook/ads/redexgen/X/TD;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Ne;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/TB;-><init>(Lcom/facebook/ads/redexgen/X/52;Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/JT;Lcom/facebook/ads/redexgen/X/MU;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/MU;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/TB;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/TB;Lcom/facebook/ads/redexgen/X/MU;)V
    .locals 0

    .line 53774
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/TD;->A01:Lcom/facebook/ads/redexgen/X/TB;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/TD;->A00:Lcom/facebook/ads/redexgen/X/MU;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ABR(Ljava/lang/String;)V
    .locals 2

    .line 53775
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TD;->A01:Lcom/facebook/ads/redexgen/X/TB;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/TB;->A01(Lcom/facebook/ads/redexgen/X/TB;)Lcom/facebook/ads/redexgen/X/NX;

    move-result-object v1

    const/16 v0, 0x64

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NX;->setProgress(I)V

    .line 53776
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TD;->A01:Lcom/facebook/ads/redexgen/X/TB;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/TB;->A06(Lcom/facebook/ads/redexgen/X/TB;Z)Z

    .line 53777
    return-void
.end method

.method public final ABT(Ljava/lang/String;)V
    .locals 2

    .line 53778
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TD;->A01:Lcom/facebook/ads/redexgen/X/TB;

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/TB;->A06(Lcom/facebook/ads/redexgen/X/TB;Z)Z

    .line 53779
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TD;->A01:Lcom/facebook/ads/redexgen/X/TB;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/TB;->A00(Lcom/facebook/ads/redexgen/X/TB;)Lcom/facebook/ads/redexgen/X/NW;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/NW;->setUrl(Ljava/lang/String;)V

    .line 53780
    return-void
.end method

.method public final ABk(I)V
    .locals 1

    .line 53781
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TD;->A01:Lcom/facebook/ads/redexgen/X/TB;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/TB;->A05(Lcom/facebook/ads/redexgen/X/TB;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53782
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TD;->A01:Lcom/facebook/ads/redexgen/X/TB;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/TB;->A01(Lcom/facebook/ads/redexgen/X/TB;)Lcom/facebook/ads/redexgen/X/NX;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/NX;->setProgress(I)V

    .line 53783
    :cond_0
    return-void
.end method

.method public final ABp(Ljava/lang/String;)V
    .locals 1

    .line 53784
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TD;->A01:Lcom/facebook/ads/redexgen/X/TB;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/TB;->A00(Lcom/facebook/ads/redexgen/X/TB;)Lcom/facebook/ads/redexgen/X/NW;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/NW;->setTitle(Ljava/lang/String;)V

    .line 53785
    return-void
.end method

.method public final ABr()V
    .locals 2

    .line 53786
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TD;->A00:Lcom/facebook/ads/redexgen/X/MU;

    const/16 v0, 0xe

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/MU;->AA3(I)V

    .line 53787
    return-void
.end method
