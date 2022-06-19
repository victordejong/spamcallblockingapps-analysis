.class public final Lcom/facebook/ads/redexgen/X/Z5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Z3;->A0K()Lcom/facebook/ads/redexgen/X/6k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Z3;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Z3;)V
    .locals 0

    .line 67397
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Z5;->A00:Lcom/facebook/ads/redexgen/X/Z3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A5G()Lcom/facebook/ads/redexgen/X/6z;
    .locals 2

    .line 67398
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Z5;->A00:Lcom/facebook/ads/redexgen/X/Z3;

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Z3;->A01:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6b;->A03(F)Lcom/facebook/ads/redexgen/X/6z;

    move-result-object v0

    return-object v0
.end method
