.class public final Lcom/facebook/ads/redexgen/X/SX;
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

    .line 52173
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/SX;->A00:Lcom/facebook/ads/redexgen/X/O4;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kv;-><init>()V

    return-void
.end method


# virtual methods
.method public final A06()V
    .locals 4
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x10
    .end annotation

    .line 52174
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SX;->A00:Lcom/facebook/ads/redexgen/X/O4;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/O4;->setPressed(Z)V

    .line 52175
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/SX;->A00:Lcom/facebook/ads/redexgen/X/O4;

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/O4;->A02(Lcom/facebook/ads/redexgen/X/O4;)Ljava/lang/Runnable;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SX;->A00:Lcom/facebook/ads/redexgen/X/O4;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/O4;->A00(Lcom/facebook/ads/redexgen/X/O4;)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v3, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/O4;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 52176
    return-void
.end method
