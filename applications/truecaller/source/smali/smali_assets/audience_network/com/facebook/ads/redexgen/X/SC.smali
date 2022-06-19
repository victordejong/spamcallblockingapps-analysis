.class public final Lcom/facebook/ads/redexgen/X/SC;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/P4;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/9f;->A0B()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/9f;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/9f;)V
    .locals 0

    .line 51420
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/SC;->A00:Lcom/facebook/ads/redexgen/X/9f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AAv()V
    .locals 3

    .line 51421
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SC;->A00:Lcom/facebook/ads/redexgen/X/9f;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9f;->A04(Lcom/facebook/ads/redexgen/X/9f;)Lcom/facebook/ads/redexgen/X/Jb;

    move-result-object v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ja;->A0M:Lcom/facebook/ads/redexgen/X/Ja;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jb;->A02(Lcom/facebook/ads/redexgen/X/Ja;Ljava/util/Map;)V

    .line 51422
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SC;->A00:Lcom/facebook/ads/redexgen/X/9f;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9f;->A02(Lcom/facebook/ads/redexgen/X/9f;)Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A4w()V

    .line 51423
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SC;->A00:Lcom/facebook/ads/redexgen/X/9f;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9f;->A09(Lcom/facebook/ads/redexgen/X/9f;)Lcom/facebook/ads/redexgen/X/On;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/On;->A0U()V

    .line 51424
    return-void
.end method
