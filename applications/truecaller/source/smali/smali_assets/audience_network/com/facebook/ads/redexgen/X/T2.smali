.class public final Lcom/facebook/ads/redexgen/X/T2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/O7;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Sw;-><init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/JT;Lcom/facebook/ads/redexgen/X/MU;Lcom/facebook/ads/redexgen/X/16;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Mw;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Sw;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Sw;)V
    .locals 0

    .line 53530
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/T2;->A00:Lcom/facebook/ads/redexgen/X/Sw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A9l()V
    .locals 2

    .line 53531
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T2;->A00:Lcom/facebook/ads/redexgen/X/Sw;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sw;->A0g(Lcom/facebook/ads/redexgen/X/Sw;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53532
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T2;->A00:Lcom/facebook/ads/redexgen/X/Sw;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sw;->A0T(Lcom/facebook/ads/redexgen/X/Sw;)V

    .line 53533
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T2;->A00:Lcom/facebook/ads/redexgen/X/Sw;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Sw;->A0V:Lcom/facebook/ads/redexgen/X/MT;

    const-string v0, ""

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/MT;->setToolbarActionMessage(Ljava/lang/String;)V

    .line 53534
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T2;->A00:Lcom/facebook/ads/redexgen/X/Sw;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Sw;->A0V:Lcom/facebook/ads/redexgen/X/MT;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/MT;->setToolbarActionMode(I)V

    .line 53535
    :cond_0
    return-void
.end method

.method public final ABA()V
    .locals 2

    .line 53536
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/T2;->A00:Lcom/facebook/ads/redexgen/X/Sw;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Sw;->A0j(Lcom/facebook/ads/redexgen/X/Sw;Z)Z

    .line 53537
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T2;->A00:Lcom/facebook/ads/redexgen/X/Sw;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sw;->A05(Lcom/facebook/ads/redexgen/X/Sw;)Lcom/facebook/ads/redexgen/X/LS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LS;->A07()Z

    .line 53538
    return-void
.end method

.method public final ABB()V
    .locals 2

    .line 53539
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/T2;->A00:Lcom/facebook/ads/redexgen/X/Sw;

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Sw;->A0j(Lcom/facebook/ads/redexgen/X/Sw;Z)Z

    .line 53540
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T2;->A00:Lcom/facebook/ads/redexgen/X/Sw;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sw;->A05(Lcom/facebook/ads/redexgen/X/Sw;)Lcom/facebook/ads/redexgen/X/LS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LS;->A06()Z

    .line 53541
    return-void
.end method
