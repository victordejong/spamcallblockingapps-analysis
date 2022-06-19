.class public final Lcom/facebook/ads/redexgen/X/82;
.super Lcom/facebook/ads/redexgen/X/Sg;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/PP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/PP;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/PP;)V
    .locals 0

    .line 17516
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/82;->A00:Lcom/facebook/ads/redexgen/X/PP;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Sg;-><init>()V

    return-void
.end method


# virtual methods
.method public final A9r()V
    .locals 0

    .line 17517
    return-void
.end method

.method public final AAa(ILjava/lang/String;)V
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 17518
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/82;->A00:Lcom/facebook/ads/redexgen/X/PP;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/PP;->A07(Lcom/facebook/ads/redexgen/X/PP;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 17519
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/82;->A00:Lcom/facebook/ads/redexgen/X/PP;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/PP;->A05(Lcom/facebook/ads/redexgen/X/PP;)Lcom/facebook/ads/redexgen/X/PN;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/PN;->AB5()V

    .line 17520
    return-void
.end method

.method public final AAk()V
    .locals 3

    .line 17521
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/82;->A00:Lcom/facebook/ads/redexgen/X/PP;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/PP;->A07(Lcom/facebook/ads/redexgen/X/PP;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/82;->A00:Lcom/facebook/ads/redexgen/X/PP;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/PP;->A08(Lcom/facebook/ads/redexgen/X/PP;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17522
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/82;->A00:Lcom/facebook/ads/redexgen/X/PP;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/PP;->A05(Lcom/facebook/ads/redexgen/X/PP;)Lcom/facebook/ads/redexgen/X/PN;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/PN;->AAk()V

    .line 17523
    :cond_0
    return-void
.end method

.method public final ACd()V
    .locals 1

    .line 17524
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/82;->A00:Lcom/facebook/ads/redexgen/X/PP;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/PP;->A05(Lcom/facebook/ads/redexgen/X/PP;)Lcom/facebook/ads/redexgen/X/PN;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/PN;->ACd()V

    .line 17525
    return-void
.end method
