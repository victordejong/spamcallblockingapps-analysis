.class public final Lcom/facebook/ads/redexgen/X/cX;
.super Lcom/facebook/ads/redexgen/X/Kv;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/1k;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/1k;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/1k;)V
    .locals 0

    .line 71960
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/cX;->A00:Lcom/facebook/ads/redexgen/X/1k;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kv;-><init>()V

    return-void
.end method


# virtual methods
.method public final A06()V
    .locals 1

    .line 71961
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cX;->A00:Lcom/facebook/ads/redexgen/X/1k;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/1k;->A00:Z

    if-nez v0, :cond_0

    .line 71962
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cX;->A00:Lcom/facebook/ads/redexgen/X/1k;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/1k;->A03(Lcom/facebook/ads/redexgen/X/1k;)V

    .line 71963
    :cond_0
    return-void
.end method
