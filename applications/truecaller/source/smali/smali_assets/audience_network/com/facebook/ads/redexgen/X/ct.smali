.class public final Lcom/facebook/ads/redexgen/X/ct;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/1j;


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

    .line 72300
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ct;->A00:Lcom/facebook/ads/redexgen/X/FB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ABX(Lcom/facebook/ads/AdError;)V
    .locals 2

    .line 72301
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ct;->A00:Lcom/facebook/ads/redexgen/X/FB;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/FB;->A00(Lcom/facebook/ads/redexgen/X/FB;)Lcom/facebook/ads/redexgen/X/12;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ct;->A00:Lcom/facebook/ads/redexgen/X/FB;

    invoke-interface {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/12;->AC0(Lcom/facebook/ads/redexgen/X/co;Lcom/facebook/ads/AdError;)V

    .line 72302
    return-void
.end method

.method public final ABY()V
    .locals 2

    .line 72303
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ct;->A00:Lcom/facebook/ads/redexgen/X/FB;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/FB;->A05(Lcom/facebook/ads/redexgen/X/FB;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 72304
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ct;->A00:Lcom/facebook/ads/redexgen/X/FB;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/FB;->A00(Lcom/facebook/ads/redexgen/X/FB;)Lcom/facebook/ads/redexgen/X/12;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ct;->A00:Lcom/facebook/ads/redexgen/X/FB;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/12;->ABx(Lcom/facebook/ads/redexgen/X/co;)V

    .line 72305
    return-void
.end method
