.class public final Lcom/facebook/ads/redexgen/X/YE;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/YD;->A0H()Lcom/facebook/ads/redexgen/X/6k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/YD;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/YD;)V
    .locals 0

    .line 66733
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/YE;->A00:Lcom/facebook/ads/redexgen/X/YD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A5G()Lcom/facebook/ads/redexgen/X/6z;
    .locals 5

    .line 66734
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/YE;->A00:Lcom/facebook/ads/redexgen/X/YD;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    long-to-float v1, v2

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr v1, v0

    invoke-virtual {v4, v1}, Lcom/facebook/ads/redexgen/X/6b;->A03(F)Lcom/facebook/ads/redexgen/X/6z;

    move-result-object v0

    return-object v0
.end method
