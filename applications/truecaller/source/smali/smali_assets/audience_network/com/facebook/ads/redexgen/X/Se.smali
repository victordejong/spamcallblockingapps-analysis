.class public final Lcom/facebook/ads/redexgen/X/Se;
.super Lcom/facebook/ads/redexgen/X/Kv;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Np;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Np;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Np;)V
    .locals 0

    .line 52439
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Se;->A00:Lcom/facebook/ads/redexgen/X/Np;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kv;-><init>()V

    return-void
.end method


# virtual methods
.method public final A06()V
    .locals 3

    .line 52440
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Se;->A00:Lcom/facebook/ads/redexgen/X/Np;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Np;->A09(Lcom/facebook/ads/redexgen/X/Np;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 52441
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Se;->A00:Lcom/facebook/ads/redexgen/X/Np;

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Np;->A06(Lcom/facebook/ads/redexgen/X/Np;ILjava/lang/String;)V

    .line 52442
    :cond_0
    return-void
.end method
