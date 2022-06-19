.class public final Lcom/facebook/ads/redexgen/X/cu;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/5U;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/FB;->A0B(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/FB;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/FB;)V
    .locals 0

    .line 72306
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/cu;->A00:Lcom/facebook/ads/redexgen/X/FB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A9p()V
    .locals 2

    .line 72307
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cu;->A00:Lcom/facebook/ads/redexgen/X/FB;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/FB;->A05(Lcom/facebook/ads/redexgen/X/FB;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 72308
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cu;->A00:Lcom/facebook/ads/redexgen/X/FB;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/FB;->A00(Lcom/facebook/ads/redexgen/X/FB;)Lcom/facebook/ads/redexgen/X/12;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cu;->A00:Lcom/facebook/ads/redexgen/X/FB;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/12;->ABx(Lcom/facebook/ads/redexgen/X/co;)V

    .line 72309
    return-void
.end method

.method public final A9q()V
    .locals 3

    .line 72310
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cu;->A00:Lcom/facebook/ads/redexgen/X/FB;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/FB;->A00(Lcom/facebook/ads/redexgen/X/FB;)Lcom/facebook/ads/redexgen/X/12;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/cu;->A00:Lcom/facebook/ads/redexgen/X/FB;

    sget-object v0, Lcom/facebook/ads/AdError;->CACHE_ERROR:Lcom/facebook/ads/AdError;

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/12;->AC0(Lcom/facebook/ads/redexgen/X/co;Lcom/facebook/ads/AdError;)V

    .line 72311
    return-void
.end method
