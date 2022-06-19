.class public final Lcom/facebook/ads/redexgen/X/ZW;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/ZC;->A0U()Lcom/facebook/ads/redexgen/X/6k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/ZC;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/ZC;)V
    .locals 0

    .line 67592
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ZW;->A00:Lcom/facebook/ads/redexgen/X/ZC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A5G()Lcom/facebook/ads/redexgen/X/6z;
    .locals 2

    .line 67593
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-ge v1, v0, :cond_0

    .line 67594
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZW;->A00:Lcom/facebook/ads/redexgen/X/ZC;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6v;->A05:Lcom/facebook/ads/redexgen/X/6v;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6b;->A07(Lcom/facebook/ads/redexgen/X/6v;)Lcom/facebook/ads/redexgen/X/6z;

    move-result-object v0

    return-object v0

    .line 67595
    :cond_0
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 67596
    .local p0, "supportedAbis":[Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 67597
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZW;->A00:Lcom/facebook/ads/redexgen/X/ZC;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6b;->A0E(Ljava/util/List;)Lcom/facebook/ads/redexgen/X/6z;

    move-result-object v0

    .line 67598
    :goto_0
    return-object v0

    .line 67599
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZW;->A00:Lcom/facebook/ads/redexgen/X/ZC;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6v;->A07:Lcom/facebook/ads/redexgen/X/6v;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6b;->A07(Lcom/facebook/ads/redexgen/X/6v;)Lcom/facebook/ads/redexgen/X/6z;

    move-result-object v0

    goto :goto_0
.end method
