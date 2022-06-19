.class public final Lcom/facebook/ads/redexgen/X/Ro;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/50;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/87;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/87;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/87;)V
    .locals 0

    .line 51142
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ro;->A00:Lcom/facebook/ads/redexgen/X/87;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A8E()Z
    .locals 1

    .line 51143
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ro;->A00:Lcom/facebook/ads/redexgen/X/87;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/87;->A0I(Lcom/facebook/ads/redexgen/X/87;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ro;->A00:Lcom/facebook/ads/redexgen/X/87;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/87;->A0T()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
