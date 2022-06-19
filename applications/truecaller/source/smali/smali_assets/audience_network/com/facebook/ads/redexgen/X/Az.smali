.class public final Lcom/facebook/ads/redexgen/X/Az;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/B0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22766
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22767
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Az;->A00:I

    .line 22768
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Az;->A01:I

    .line 22769
    const/4 v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Az;->A02:I

    .line 22770
    return-void
.end method


# virtual methods
.method public final A00()Lcom/facebook/ads/redexgen/X/B0;
    .locals 5

    .line 22771
    iget v4, p0, Lcom/facebook/ads/redexgen/X/Az;->A00:I

    iget v3, p0, Lcom/facebook/ads/redexgen/X/Az;->A01:I

    iget v2, p0, Lcom/facebook/ads/redexgen/X/Az;->A02:I

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/B0;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/B0;-><init>(IIILcom/facebook/ads/redexgen/X/Ay;)V

    return-object v0
.end method
