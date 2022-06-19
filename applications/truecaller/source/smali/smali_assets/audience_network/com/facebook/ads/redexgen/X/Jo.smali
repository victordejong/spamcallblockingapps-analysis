.class public final Lcom/facebook/ads/redexgen/X/Jo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Tl;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Tl;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Tl;)V
    .locals 0

    .line 40916
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Jo;->A00:Lcom/facebook/ads/redexgen/X/Tl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 40917
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jo;->A00:Lcom/facebook/ads/redexgen/X/Tl;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Tl;->A01:Lcom/facebook/ads/redexgen/X/Tj;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Tj;->A0a:Lcom/facebook/ads/redexgen/X/cy;

    if-eqz v0, :cond_0

    .line 40918
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jo;->A00:Lcom/facebook/ads/redexgen/X/Tl;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Tl;->A01:Lcom/facebook/ads/redexgen/X/Tj;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Tj;->A0a:Lcom/facebook/ads/redexgen/X/cy;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jo;->A00:Lcom/facebook/ads/redexgen/X/Tl;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tl;->A02(Lcom/facebook/ads/redexgen/X/Tl;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/cy;->A0d(Ljava/util/Map;)V

    .line 40919
    :cond_0
    return-void
.end method
