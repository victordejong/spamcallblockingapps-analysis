.class public final Lcom/facebook/ads/redexgen/X/d2;
.super Lcom/facebook/ads/redexgen/X/0q;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/d1;->A09(Lcom/facebook/ads/redexgen/X/95;Lcom/facebook/ads/redexgen/X/1p;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/d1;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/d1;)V
    .locals 0

    .line 72754
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/d2;->A00:Lcom/facebook/ads/redexgen/X/d1;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/0q;-><init>()V

    return-void
.end method


# virtual methods
.method public final A00()V
    .locals 2

    .line 72755
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/d2;->A00:Lcom/facebook/ads/redexgen/X/d1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/d1;->A02(Lcom/facebook/ads/redexgen/X/d1;)Lcom/facebook/ads/redexgen/X/Dr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Dr;->A0I()Lcom/facebook/ads/redexgen/X/dF;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/d2;->A00:Lcom/facebook/ads/redexgen/X/d1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/d1;->A00(Lcom/facebook/ads/redexgen/X/d1;)Lcom/facebook/ads/redexgen/X/0v;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/dF;->A3Y(Z)V

    .line 72756
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/d2;->A00:Lcom/facebook/ads/redexgen/X/d1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/d1;->A00(Lcom/facebook/ads/redexgen/X/d1;)Lcom/facebook/ads/redexgen/X/0v;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 72757
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/d2;->A00:Lcom/facebook/ads/redexgen/X/d1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/d1;->A00(Lcom/facebook/ads/redexgen/X/d1;)Lcom/facebook/ads/redexgen/X/0v;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/d2;->A00:Lcom/facebook/ads/redexgen/X/d1;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0v;->AA2(Lcom/facebook/ads/redexgen/X/d1;)V

    .line 72758
    :cond_0
    return-void

    .line 72759
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
