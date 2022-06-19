.class public final Lcom/facebook/ads/redexgen/X/6M;
.super Landroid/view/OrientationEventListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/6N;->A02(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:J

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/6N;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/6x;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/6N;Landroid/content/Context;IJLcom/facebook/ads/redexgen/X/6x;)V
    .locals 0

    .line 15006
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/6M;->A01:Lcom/facebook/ads/redexgen/X/6N;

    iput-wide p4, p0, Lcom/facebook/ads/redexgen/X/6M;->A00:J

    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/6M;->A02:Lcom/facebook/ads/redexgen/X/6x;

    invoke-direct {p0, p2, p3}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public final onOrientationChanged(I)V
    .locals 5

    .line 15007
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/6M;->A00:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6M;->A02:Lcom/facebook/ads/redexgen/X/6x;

    new-instance v2, Lcom/facebook/ads/redexgen/X/Xf;

    invoke-direct {v2, v3, v4, v0, p1}, Lcom/facebook/ads/redexgen/X/Xf;-><init>(JLcom/facebook/ads/redexgen/X/6x;I)V

    .line 15008
    .local p0, "intSignalValueType":Lcom/facebook/ads/redexgen/X/Xf;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6M;->A01:Lcom/facebook/ads/redexgen/X/6N;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/6N;->A00(Lcom/facebook/ads/redexgen/X/6N;)Lcom/facebook/ads/redexgen/X/6L;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/6K;->A0A:Lcom/facebook/ads/redexgen/X/6K;

    invoke-virtual {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/6L;->A02(Lcom/facebook/ads/redexgen/X/6z;Lcom/facebook/ads/redexgen/X/6K;)V

    .line 15009
    return-void
.end method
