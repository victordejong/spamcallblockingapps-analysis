.class public final Lcom/facebook/ads/redexgen/X/UA;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/JI;


# static fields
.field public static A02:[Ljava/lang/String;


# instance fields
.field public final A00:Landroid/graphics/Rect;

.field public final A01:Landroid/graphics/Rect;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "AMQNzlG2eGPOJo74lPpddO6twtMEce"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "8uZuLGh3CZSzV4eSaK74M9a8aAW81o1g"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "CYs8BZmCr6kO5jRRUq4laItl384RlovT"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "PO4hUmmCpilEicL1R3sLdD9hI0Kiey5Z"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "WmgRsP13YsLJamj9MMjVCco3tjnpIVCq"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "0ErvOAeoLZJf3MJzf6jF5Cw5BrHPqp"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "S0kgbIpbc64QMPj8XCJtTK8zDrzNpUnW"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "MO6xPizLQkqntlkNHRrNVg7dZ2stU5UP"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/UA;->A02:[Ljava/lang/String;

    .line 55934
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 55935
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55936
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/UA;->A00:Landroid/graphics/Rect;

    .line 55937
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/UA;->A01:Landroid/graphics/Rect;

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/dj;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/dj<",
            "Lcom/facebook/ads/redexgen/X/JJ;",
            "Lcom/facebook/ads/redexgen/X/JO;",
            ">;)Z"
        }
    .end annotation

    .line 55938
    .local v0, "viewpointData":Lcom/facebook/ads/redexgen/X/dj;, "Lcom/instagram/common/viewpoint/core/ViewpointData<Lcom/facebook/ads/internal/impressionsecondchannel/model/Impression;Lcom/facebook/ads/internal/impressionsecondchannel/state/ImpressionState;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dj;->A01:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/JJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/JJ;->A05()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55939
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dj;->A02:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/JO;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/JO;->A07()Z

    move-result v0

    return v0

    .line 55940
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dj;->A01:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/JJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/JJ;->A06()Z

    move-result v0

    if-nez v0, :cond_1

    .line 55941
    const/4 v0, 0x1

    return v0

    .line 55942
    :cond_1
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/dj;->A02:Ljava/lang/Object;

    check-cast p0, Lcom/facebook/ads/redexgen/X/JO;

    sget-object v2, Lcom/facebook/ads/redexgen/X/UA;->A02:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/UA;->A02:[Ljava/lang/String;

    const-string v1, "8O0EOVeCMdEJdeSbYPFIeNjJXhTUSITs"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "Km62DwbCV8Ma1ecjtuIU72b1y8KakI9d"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/JO;->A06()Z

    move-result v0

    return v0
.end method

.method private A01(Lcom/facebook/ads/redexgen/X/dj;Lcom/facebook/ads/redexgen/X/dY;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/dj<",
            "Lcom/facebook/ads/redexgen/X/JJ;",
            "Lcom/facebook/ads/redexgen/X/JO;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/dY;",
            ")Z"
        }
    .end annotation

    .line 55943
    .local v2, "viewpointData":Lcom/facebook/ads/redexgen/X/dj;, "Lcom/instagram/common/viewpoint/core/ViewpointData<Lcom/facebook/ads/internal/impressionsecondchannel/model/Impression;Lcom/facebook/ads/internal/impressionsecondchannel/state/ImpressionState;>;"
    const/high16 v1, -0x40800000    # -1.0f

    .line 55944
    .local p0, "viewVisiblePerecentage":F
    :try_start_0
    invoke-interface {p2, p1}, Lcom/facebook/ads/redexgen/X/dY;->A7i(Lcom/facebook/ads/redexgen/X/dj;)F

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55945
    :catch_0
    const/4 v0, 0x0

    const/4 v2, 0x1

    cmpl-float v0, v1, v0

    if-lez v0, :cond_0

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/UA;->A00(Lcom/facebook/ads/redexgen/X/dj;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55946
    return v2

    .line 55947
    :cond_0
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/dj;->A01:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/JJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/JJ;->A00()Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UA;->A01:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UA;->A01:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UA;->A01:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v0

    if-lez v1, :cond_1

    .line 55948
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/UA;->A00(Lcom/facebook/ads/redexgen/X/dj;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55949
    return v2

    .line 55950
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UA;->A00:Landroid/graphics/Rect;

    invoke-interface {p2, v0}, Lcom/facebook/ads/redexgen/X/dY;->A7h(Landroid/graphics/Rect;)V

    .line 55951
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UA;->A01:Landroid/graphics/Rect;

    invoke-interface {p2, p1, v0}, Lcom/facebook/ads/redexgen/X/dY;->A6f(Lcom/facebook/ads/redexgen/X/dj;Landroid/graphics/Rect;)V

    .line 55952
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UA;->A00:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UA;->A00:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v0

    if-lez v1, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UA;->A01:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UA;->A00:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v0

    if-lez v1, :cond_3

    const/4 v0, 0x1

    .line 55953
    .local p1, "visible":Z
    :goto_0
    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/UA;->A00(Lcom/facebook/ads/redexgen/X/dj;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_1
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 55954
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A02(Lcom/facebook/ads/redexgen/X/dj;Lcom/facebook/ads/redexgen/X/dY;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/dj<",
            "Lcom/facebook/ads/redexgen/X/JJ;",
            "Lcom/facebook/ads/redexgen/X/JO;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/dY;",
            ")V"
        }
    .end annotation

    .line 55955
    .local v0, "viewpointData":Lcom/facebook/ads/redexgen/X/dj;, "Lcom/instagram/common/viewpoint/core/ViewpointData<Lcom/facebook/ads/internal/impressionsecondchannel/model/Impression;Lcom/facebook/ads/internal/impressionsecondchannel/state/ImpressionState;>;"
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/dj;->A02:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/JO;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/JO;->A04()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55956
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/UA;->A01(Lcom/facebook/ads/redexgen/X/dj;Lcom/facebook/ads/redexgen/X/dY;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55957
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/dj;->A02:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/JO;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/JO;->A01()V

    .line 55958
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/dj;->A01:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/JJ;

    .line 55959
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/JJ;->A02()Lcom/facebook/ads/redexgen/X/JT;

    move-result-object v2

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/dj;->A01:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/JJ;

    .line 55960
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/JJ;->A03()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/dj;->A01:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/JJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/JJ;->A04()Ljava/util/Map;

    move-result-object v0

    .line 55961
    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JT;->A97(Ljava/lang/String;Ljava/util/Map;)V

    .line 55962
    :cond_0
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/dj;->A02:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/JO;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/JO;->A05()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/dj;->A01:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/JJ;

    .line 55963
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/JJ;->A01()Lcom/facebook/ads/redexgen/X/XS;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JD;->A13(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55964
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/dj;->A02:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/JO;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/JO;->A02()V

    .line 55965
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/dj;->A01:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/JJ;

    .line 55966
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/JJ;->A02()Lcom/facebook/ads/redexgen/X/JT;

    move-result-object v2

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/dj;->A01:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/JJ;

    .line 55967
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/JJ;->A03()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/dj;->A01:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/JJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/JJ;->A04()Ljava/util/Map;

    move-result-object v0

    .line 55968
    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JT;->A8x(Ljava/lang/String;Ljava/util/Map;)V

    .line 55969
    :cond_1
    return-void
.end method
