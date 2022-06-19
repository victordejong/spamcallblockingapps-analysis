.class public final Lcom/facebook/ads/redexgen/X/Sh;
.super Lcom/facebook/ads/redexgen/X/QY;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Sd;-><init>(Lcom/facebook/ads/redexgen/X/XT;Ljava/lang/ref/WeakReference;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Sd;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Sd;)V
    .locals 0

    .line 52458
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Sh;->A00:Lcom/facebook/ads/redexgen/X/Sd;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/QY;-><init>()V

    return-void
.end method


# virtual methods
.method public final A03()V
    .locals 1

    .line 52459
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sh;->A00:Lcom/facebook/ads/redexgen/X/Sd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sd;->A08(Lcom/facebook/ads/redexgen/X/Sd;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sh;->A00:Lcom/facebook/ads/redexgen/X/Sd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sd;->A01(Lcom/facebook/ads/redexgen/X/Sd;)Lcom/facebook/ads/redexgen/X/Lz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Lz;->A07()Z

    move-result v0

    if-nez v0, :cond_1

    .line 52460
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sh;->A00:Lcom/facebook/ads/redexgen/X/Sd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sd;->A01(Lcom/facebook/ads/redexgen/X/Sd;)Lcom/facebook/ads/redexgen/X/Lz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Lz;->A05()V

    .line 52461
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sh;->A00:Lcom/facebook/ads/redexgen/X/Sd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sd;->A05(Lcom/facebook/ads/redexgen/X/Sd;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 52462
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sh;->A00:Lcom/facebook/ads/redexgen/X/Sd;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sd;->A05(Lcom/facebook/ads/redexgen/X/Sd;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Nn;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Nn;->AAk()V

    .line 52463
    :cond_2
    return-void
.end method
