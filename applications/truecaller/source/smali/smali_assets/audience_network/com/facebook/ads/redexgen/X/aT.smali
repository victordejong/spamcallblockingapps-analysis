.class public final Lcom/facebook/ads/redexgen/X/aT;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/aO;->A0K()Lcom/facebook/ads/redexgen/X/6k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/aO;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/aO;)V
    .locals 0

    .line 68078
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/aT;->A00:Lcom/facebook/ads/redexgen/X/aO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A5G()Lcom/facebook/ads/redexgen/X/6z;
    .locals 2

    .line 68079
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aT;->A00:Lcom/facebook/ads/redexgen/X/aO;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/aO;->A03(Lcom/facebook/ads/redexgen/X/aO;)Landroid/content/pm/ConfigurationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68080
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aT;->A00:Lcom/facebook/ads/redexgen/X/aO;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/aO;->A03(Lcom/facebook/ads/redexgen/X/aO;)Landroid/content/pm/ConfigurationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ConfigurationInfo;->reqNavigation:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6b;->A04(I)Lcom/facebook/ads/redexgen/X/6z;

    move-result-object v0

    .line 68081
    :goto_0
    return-object v0

    .line 68082
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/aT;->A00:Lcom/facebook/ads/redexgen/X/aO;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6v;->A07:Lcom/facebook/ads/redexgen/X/6v;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6b;->A07(Lcom/facebook/ads/redexgen/X/6v;)Lcom/facebook/ads/redexgen/X/6z;

    move-result-object v0

    goto :goto_0
.end method
