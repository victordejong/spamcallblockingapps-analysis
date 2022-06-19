.class public final Lcom/facebook/ads/redexgen/X/TQ;
.super Lcom/facebook/ads/redexgen/X/Kv;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/LS;->A07()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/LS;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/LS;)V
    .locals 0

    .line 54094
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/TQ;->A00:Lcom/facebook/ads/redexgen/X/LS;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kv;-><init>()V

    return-void
.end method


# virtual methods
.method public final A06()V
    .locals 3

    .line 54095
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TQ;->A00:Lcom/facebook/ads/redexgen/X/LS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LS;->A05()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54096
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TQ;->A00:Lcom/facebook/ads/redexgen/X/LS;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LS;->A02(Lcom/facebook/ads/redexgen/X/LS;)V

    .line 54097
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TQ;->A00:Lcom/facebook/ads/redexgen/X/LS;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LS;->A00(Lcom/facebook/ads/redexgen/X/LS;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v0, 0xfa

    invoke-virtual {v2, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 54098
    :cond_0
    return-void
.end method
