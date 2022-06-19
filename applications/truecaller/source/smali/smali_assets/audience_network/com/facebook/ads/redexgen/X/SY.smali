.class public final Lcom/facebook/ads/redexgen/X/SY;
.super Lcom/facebook/ads/redexgen/X/Kv;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/O4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/O4;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/O4;)V
    .locals 0

    .line 52177
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/SY;->A00:Lcom/facebook/ads/redexgen/X/O4;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kv;-><init>()V

    return-void
.end method


# virtual methods
.method public final A06()V
    .locals 4
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x10
    .end annotation

    .line 52178
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SY;->A00:Lcom/facebook/ads/redexgen/X/O4;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/O4;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52179
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/SY;->A00:Lcom/facebook/ads/redexgen/X/O4;

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/O4;->A00(Lcom/facebook/ads/redexgen/X/O4;)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v2, p0, v0, v1}, Lcom/facebook/ads/redexgen/X/O4;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 52180
    return-void

    .line 52181
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SY;->A00:Lcom/facebook/ads/redexgen/X/O4;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/O4;->setPressed(Z)V

    .line 52182
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/SY;->A00:Lcom/facebook/ads/redexgen/X/O4;

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/O4;->A01(Lcom/facebook/ads/redexgen/X/O4;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v0, 0xfa

    invoke-virtual {v3, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/O4;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 52183
    return-void
.end method
