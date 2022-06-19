.class public final Lcom/facebook/ads/redexgen/X/YY;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/YQ;->A0M()Lcom/facebook/ads/redexgen/X/6k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/YQ;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/YQ;)V
    .locals 0

    .line 67042
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/YY;->A00:Lcom/facebook/ads/redexgen/X/YQ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A5G()Lcom/facebook/ads/redexgen/X/6z;
    .locals 3

    .line 67043
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YY;->A00:Lcom/facebook/ads/redexgen/X/YQ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YQ;->A03(Lcom/facebook/ads/redexgen/X/YQ;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67044
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/YY;->A00:Lcom/facebook/ads/redexgen/X/YQ;

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/YQ;->A03(Lcom/facebook/ads/redexgen/X/YQ;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-wide v0, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/6b;->A06(J)Lcom/facebook/ads/redexgen/X/6z;

    move-result-object v0

    .line 67045
    :goto_0
    return-object v0

    .line 67046
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/YY;->A00:Lcom/facebook/ads/redexgen/X/YQ;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6v;->A07:Lcom/facebook/ads/redexgen/X/6v;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6b;->A07(Lcom/facebook/ads/redexgen/X/6v;)Lcom/facebook/ads/redexgen/X/6z;

    move-result-object v0

    goto :goto_0
.end method
