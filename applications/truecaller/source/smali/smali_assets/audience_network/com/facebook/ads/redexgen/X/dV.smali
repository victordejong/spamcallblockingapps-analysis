.class public final Lcom/facebook/ads/redexgen/X/dV;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/3Z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewProperties"
.end annotation


# instance fields
.field public A00:J

.field public A01:Lcom/facebook/ads/redexgen/X/dZ;

.field public final A02:Landroid/graphics/Rect;

.field public final A03:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 73893
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73894
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/dV;->A03:Ljava/util/List;

    .line 73895
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/dV;->A02:Landroid/graphics/Rect;

    .line 73896
    sget-object v0, Lcom/facebook/ads/redexgen/X/dZ;->A02:Lcom/facebook/ads/redexgen/X/dZ;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/dV;->A01:Lcom/facebook/ads/redexgen/X/dZ;

    .line 73897
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/dV;->A00:J

    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/dV;)Landroid/graphics/Rect;
    .locals 0

    .line 73898
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/dV;->A02:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/dV;)Lcom/facebook/ads/redexgen/X/dZ;
    .locals 0

    .line 73899
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/dV;->A01:Lcom/facebook/ads/redexgen/X/dZ;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/dV;Lcom/facebook/ads/redexgen/X/dZ;)Lcom/facebook/ads/redexgen/X/dZ;
    .locals 0

    .line 73900
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/dV;->A01:Lcom/facebook/ads/redexgen/X/dZ;

    return-object p1
.end method

.method public static A03(J)Lcom/facebook/ads/redexgen/X/dV;
    .locals 1

    .line 73901
    new-instance v0, Lcom/facebook/ads/redexgen/X/dV;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/dV;-><init>()V

    .line 73902
    .local p0, "viewProperties":Lcom/facebook/ads/redexgen/X/dV;
    iput-wide p0, v0, Lcom/facebook/ads/redexgen/X/dV;->A00:J

    .line 73903
    return-object v0
.end method

.method public static synthetic A04(J)Lcom/facebook/ads/redexgen/X/dV;
    .locals 0

    .line 73904
    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/dV;->A03(J)Lcom/facebook/ads/redexgen/X/dV;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/dV;)Ljava/util/List;
    .locals 0

    .line 73905
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/dV;->A03:Ljava/util/List;

    return-object p0
.end method
