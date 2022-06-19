.class public final Lcom/facebook/ads/redexgen/X/cv;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Ol;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/FC;->A01(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/FC;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/FC;)V
    .locals 0

    .line 72312
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/cv;->A00:Lcom/facebook/ads/redexgen/X/FC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ACe()V
    .locals 2

    .line 72313
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cv;->A00:Lcom/facebook/ads/redexgen/X/FC;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/FC;->A00:Lcom/facebook/ads/redexgen/X/FB;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/FB;->A05(Lcom/facebook/ads/redexgen/X/FB;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 72314
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cv;->A00:Lcom/facebook/ads/redexgen/X/FC;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/FC;->A00:Lcom/facebook/ads/redexgen/X/FB;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/FB;->A00(Lcom/facebook/ads/redexgen/X/FB;)Lcom/facebook/ads/redexgen/X/12;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cv;->A00:Lcom/facebook/ads/redexgen/X/FC;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/FC;->A01:Lcom/facebook/ads/redexgen/X/co;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/12;->ABx(Lcom/facebook/ads/redexgen/X/co;)V

    .line 72315
    return-void
.end method
