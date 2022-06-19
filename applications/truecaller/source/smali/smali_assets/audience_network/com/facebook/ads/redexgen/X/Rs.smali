.class public final Lcom/facebook/ads/redexgen/X/Rs;
.super Lcom/facebook/ads/redexgen/X/Kv;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/8p;->A0Q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/8p;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/8p;)V
    .locals 0

    .line 51160
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Rs;->A00:Lcom/facebook/ads/redexgen/X/8p;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kv;-><init>()V

    return-void
.end method


# virtual methods
.method public final A06()V
    .locals 2

    .line 51161
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rs;->A00:Lcom/facebook/ads/redexgen/X/8p;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8p;->A02(Lcom/facebook/ads/redexgen/X/8p;)Lcom/facebook/ads/redexgen/X/OJ;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 51162
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rs;->A00:Lcom/facebook/ads/redexgen/X/8p;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8p;->A02(Lcom/facebook/ads/redexgen/X/8p;)Lcom/facebook/ads/redexgen/X/OJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/OJ;->A0Z()V

    .line 51163
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rs;->A00:Lcom/facebook/ads/redexgen/X/8p;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Rv;->A07:Lcom/facebook/ads/redexgen/X/MT;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rs;->A00:Lcom/facebook/ads/redexgen/X/8p;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8p;->A00(Lcom/facebook/ads/redexgen/X/8p;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/MT;->setToolbarActionMode(I)V

    .line 51164
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rs;->A00:Lcom/facebook/ads/redexgen/X/8p;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8p;->A03(Lcom/facebook/ads/redexgen/X/8p;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 51165
    return-void
.end method
