.class public abstract Lcom/facebook/ads/redexgen/X/9m;
.super Lcom/facebook/ads/redexgen/X/SJ;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/SI;
    }
.end annotation


# static fields
.field public static final A0I:I

.field public static final A0J:I

.field public static final A0K:I


# instance fields
.field public A00:Landroid/widget/RelativeLayout;

.field public A01:Lcom/facebook/ads/redexgen/X/Mm;

.field public A02:Lcom/facebook/ads/redexgen/X/OW;

.field public A03:Lcom/facebook/ads/redexgen/X/Rh;

.field public A04:Lcom/facebook/ads/redexgen/X/PG;

.field public A05:Z

.field public A06:Z

.field public A07:Z

.field public final A08:Landroid/graphics/Paint;

.field public final A09:Landroid/graphics/Path;

.field public final A0A:Landroid/graphics/RectF;

.field public final A0B:Lcom/facebook/ads/redexgen/X/XT;

.field public final A0C:Lcom/facebook/ads/redexgen/X/Mi;

.field public final A0D:Lcom/facebook/ads/redexgen/X/L3;

.field public final A0E:Lcom/facebook/ads/redexgen/X/Kq;

.field public final A0F:Lcom/facebook/ads/redexgen/X/Kk;

.field public final A0G:Lcom/facebook/ads/redexgen/X/KM;

.field public final A0H:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 20921
    sget v1, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/9m;->A0J:I

    .line 20922
    sget v1, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    const/high16 v0, 0x40800000    # 4.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/9m;->A0K:I

    .line 20923
    sget v1, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    const/high16 v0, 0x40c00000    # 6.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/9m;->A0I:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/ON;ZLjava/lang/String;Lcom/facebook/ads/redexgen/X/Rh;)V
    .locals 3

    .line 20924
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/SJ;-><init>(Lcom/facebook/ads/redexgen/X/ON;Z)V

    .line 20925
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A09:Landroid/graphics/Path;

    .line 20926
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A0A:Landroid/graphics/RectF;

    .line 20927
    new-instance v0, Lcom/facebook/ads/redexgen/X/9s;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/9s;-><init>(Lcom/facebook/ads/redexgen/X/9m;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A0G:Lcom/facebook/ads/redexgen/X/KM;

    .line 20928
    new-instance v0, Lcom/facebook/ads/redexgen/X/9r;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/9r;-><init>(Lcom/facebook/ads/redexgen/X/9m;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A0C:Lcom/facebook/ads/redexgen/X/Mi;

    .line 20929
    new-instance v0, Lcom/facebook/ads/redexgen/X/9q;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/9q;-><init>(Lcom/facebook/ads/redexgen/X/9m;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A0E:Lcom/facebook/ads/redexgen/X/Kq;

    .line 20930
    new-instance v0, Lcom/facebook/ads/redexgen/X/9p;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/9p;-><init>(Lcom/facebook/ads/redexgen/X/9m;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A0D:Lcom/facebook/ads/redexgen/X/L3;

    .line 20931
    new-instance v0, Lcom/facebook/ads/redexgen/X/9o;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/9o;-><init>(Lcom/facebook/ads/redexgen/X/9m;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A0F:Lcom/facebook/ads/redexgen/X/Kk;

    .line 20932
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/9m;->A03:Lcom/facebook/ads/redexgen/X/Rh;

    .line 20933
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/9m;->A0H:Ljava/lang/String;

    .line 20934
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ON;->A05()Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A0B:Lcom/facebook/ads/redexgen/X/XT;

    .line 20935
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/9m;->setGravity(I)V

    .line 20936
    sget v1, Lcom/facebook/ads/redexgen/X/9m;->A0J:I

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0, v1, v1}, Lcom/facebook/ads/redexgen/X/9m;->setPadding(IIII)V

    .line 20937
    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/M5;->A0M(Landroid/view/View;I)V

    .line 20938
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A0B:Lcom/facebook/ads/redexgen/X/XT;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/9m;->setUpView(Lcom/facebook/ads/redexgen/X/XT;)V

    .line 20939
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A08:Landroid/graphics/Paint;

    .line 20940
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9m;->A08:Landroid/graphics/Paint;

    const/high16 v0, -0x1000000

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 20941
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9m;->A08:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 20942
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9m;->A08:Landroid/graphics/Paint;

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 20943
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A08:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 20944
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x12

    if-ge v1, v0, :cond_0

    .line 20945
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Lcom/facebook/ads/redexgen/X/9m;->setLayerType(ILandroid/graphics/Paint;)V

    .line 20946
    :cond_0
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/9m;)Lcom/facebook/ads/redexgen/X/Rh;
    .locals 0

    .line 20947
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/9m;->A03:Lcom/facebook/ads/redexgen/X/Rh;

    return-object p0
.end method

.method private A01()V
    .locals 1

    .line 20948
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A02:Lcom/facebook/ads/redexgen/X/OW;

    if-nez v0, :cond_0

    .line 20949
    return-void

    .line 20950
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9m;->A0i()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A07:Z

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9m;->A0i()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A06:Z

    if-eqz v0, :cond_3

    .line 20951
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A02:Lcom/facebook/ads/redexgen/X/OW;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/OW;->A9r()V

    .line 20952
    :cond_3
    return-void
.end method

.method private A02(Landroid/view/View;)V
    .locals 3

    .line 20953
    const/4 v2, -0x1

    const/4 v1, -0x2

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 20954
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/M5;->A0K(Landroid/view/View;)V

    .line 20955
    return-void
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/9m;)V
    .locals 0

    .line 20956
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9m;->A01()V

    return-void
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/9m;Z)Z
    .locals 0

    .line 20957
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/9m;->A07:Z

    return p1
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/9m;Z)Z
    .locals 0

    .line 20958
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/9m;->A06:Z

    return p1
.end method

.method private setUpView(Lcom/facebook/ads/redexgen/X/XT;)V
    .locals 2

    .line 21015
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/9m;->setUpImageView(Lcom/facebook/ads/redexgen/X/XT;)V

    .line 21016
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/9m;->setUpVideoView(Lcom/facebook/ads/redexgen/X/XT;)V

    .line 21017
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/9m;->setUpMediaContainer(Lcom/facebook/ads/redexgen/X/XT;)V

    .line 21018
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9m;->A00:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A01:Lcom/facebook/ads/redexgen/X/Mm;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 21019
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9m;->A00:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A04:Lcom/facebook/ads/redexgen/X/PG;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 21020
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/9m;->A0j(Lcom/facebook/ads/redexgen/X/XT;)V

    .line 21021
    return-void
.end method


# virtual methods
.method public A0B()Z
    .locals 1

    .line 20959
    const/4 v0, 0x0

    return v0
.end method

.method public final A0c()Z
    .locals 1

    .line 20960
    const/4 v0, 0x0

    return v0
.end method

.method public final A0e()V
    .locals 1

    .line 20961
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9m;->A0i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20962
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A04:Lcom/facebook/ads/redexgen/X/PG;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PG;->A01()V

    .line 20963
    :cond_0
    return-void
.end method

.method public final A0f()V
    .locals 2

    .line 20964
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9m;->A0i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20965
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9m;->A0g()V

    .line 20966
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9m;->A04:Lcom/facebook/ads/redexgen/X/PG;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Pj;->A03:Lcom/facebook/ads/redexgen/X/Pj;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/PG;->A05(Lcom/facebook/ads/redexgen/X/Pj;)V

    .line 20967
    :cond_0
    return-void
.end method

.method public final A0g()V
    .locals 2

    .line 20968
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A03:Lcom/facebook/ads/redexgen/X/Rh;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Rh;->A0P()Lcom/facebook/ads/redexgen/X/OZ;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/OZ;->getVolume()F

    move-result v1

    .line 20969
    .local p0, "newVolume":F
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9m;->A0i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A04:Lcom/facebook/ads/redexgen/X/PG;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PG;->getVolume()F

    move-result v0

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_0

    .line 20970
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A04:Lcom/facebook/ads/redexgen/X/PG;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/PG;->setVolume(F)V

    .line 20971
    :cond_0
    return-void
.end method

.method public final A0h()Z
    .locals 1

    .line 20972
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9m;->A0i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A04:Lcom/facebook/ads/redexgen/X/PG;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PG;->A06()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0i()Z
    .locals 1

    .line 20973
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A05:Z

    return v0
.end method

.method public abstract A0j(Lcom/facebook/ads/redexgen/X/XT;)V
.end method

.method public final A0k(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 20974
    .local v2, "extraParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A04:Lcom/facebook/ads/redexgen/X/PG;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PG;->A02()V

    .line 20975
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9m;->A0i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20976
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/9m;->A04:Lcom/facebook/ads/redexgen/X/PG;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/OJ;->getAdEventManager()Lcom/facebook/ads/redexgen/X/JT;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A0H:Ljava/lang/String;

    invoke-virtual {v2, v1, v0, p1}, Lcom/facebook/ads/redexgen/X/PG;->A04(Lcom/facebook/ads/redexgen/X/JT;Ljava/lang/String;Ljava/util/Map;)V

    .line 20977
    :cond_0
    return-void
.end method

.method public final getMediaContainer()Landroid/widget/RelativeLayout;
    .locals 1

    .line 20978
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A00:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public final getVideoView()Lcom/facebook/ads/redexgen/X/PG;
    .locals 1

    .line 20979
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A04:Lcom/facebook/ads/redexgen/X/PG;

    return-object v0
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 20980
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A09:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 20981
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/9m;->A0A:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9m;->getWidth()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9m;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v5, v1, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 20982
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/9m;->A09:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/9m;->A0A:Landroid/graphics/RectF;

    sget v0, Lcom/facebook/ads/redexgen/X/9m;->A0I:I

    int-to-float v2, v0

    int-to-float v1, v0

    sget-object v0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 20983
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9m;->A09:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A08:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 20984
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/9m;->A0A:Landroid/graphics/RectF;

    sget v0, Lcom/facebook/ads/redexgen/X/9m;->A0J:I

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9m;->getWidth()I

    move-result v1

    sget v0, Lcom/facebook/ads/redexgen/X/9m;->A0J:I

    sub-int/2addr v1, v0

    int-to-float v2, v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9m;->getHeight()I

    move-result v1

    sget v0, Lcom/facebook/ads/redexgen/X/9m;->A0J:I

    sub-int/2addr v1, v0

    int-to-float v0, v1

    invoke-virtual {v4, v3, v5, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 20985
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/9m;->A09:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/9m;->A0A:Landroid/graphics/RectF;

    sget v0, Lcom/facebook/ads/redexgen/X/9m;->A0K:I

    int-to-float v2, v0

    int-to-float v1, v0

    sget-object v0, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 20986
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A09:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 20987
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/SJ;->onDraw(Landroid/graphics/Canvas;)V

    .line 20988
    return-void
.end method

.method public setAdTitleAndDescription(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 20989
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/OJ;->getTitleDescContainer()Lcom/facebook/ads/redexgen/X/OG;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/OG;->A01(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 20990
    return-void
.end method

.method public setCTAInfo(Lcom/facebook/ads/redexgen/X/1J;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/1J;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 20991
    .local v0, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/OJ;->getCtaButton()Lcom/facebook/ads/redexgen/X/SZ;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A0H:Ljava/lang/String;

    invoke-virtual {v1, p1, v0, p2}, Lcom/facebook/ads/redexgen/X/SZ;->setCta(Lcom/facebook/ads/redexgen/X/1J;Ljava/lang/String;Ljava/util/Map;)V

    .line 20992
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 3

    .line 20993
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9m;->A01:Lcom/facebook/ads/redexgen/X/Mm;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Mm;->setVisibility(I)V

    .line 20994
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9m;->A04:Lcom/facebook/ads/redexgen/X/PG;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/PG;->setVisibility(I)V

    .line 20995
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/9m;->A01:Lcom/facebook/ads/redexgen/X/Mm;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9m;->A0B:Lcom/facebook/ads/redexgen/X/XT;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Sb;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Sb;-><init>(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/XT;)V

    .line 20996
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Sb;->A04()Lcom/facebook/ads/redexgen/X/Sb;

    move-result-object v2

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/SI;

    invoke-direct {v0, p0, v1}, Lcom/facebook/ads/redexgen/X/SI;-><init>(Lcom/facebook/ads/redexgen/X/9m;Lcom/facebook/ads/redexgen/X/9s;)V

    .line 20997
    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Sb;->A06(Lcom/facebook/ads/redexgen/X/Nt;)Lcom/facebook/ads/redexgen/X/Sb;

    move-result-object v0

    .line 20998
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Sb;->A07(Ljava/lang/String;)V

    .line 20999
    return-void
.end method

.method public setIsVideo(Z)V
    .locals 0

    .line 21000
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/9m;->A05:Z

    .line 21001
    return-void
.end method

.method public setOnAssetsLoadedListener(Lcom/facebook/ads/redexgen/X/OW;)V
    .locals 0

    .line 21002
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/9m;->A02:Lcom/facebook/ads/redexgen/X/OW;

    .line 21003
    return-void
.end method

.method public setUpImageView(Lcom/facebook/ads/redexgen/X/XT;)V
    .locals 1

    .line 21004
    new-instance v0, Lcom/facebook/ads/redexgen/X/Mm;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/Mm;-><init>(Lcom/facebook/ads/redexgen/X/XT;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A01:Lcom/facebook/ads/redexgen/X/Mm;

    .line 21005
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A01:Lcom/facebook/ads/redexgen/X/Mm;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/9m;->A02(Landroid/view/View;)V

    .line 21006
    return-void
.end method

.method public setUpMediaContainer(Lcom/facebook/ads/redexgen/X/XT;)V
    .locals 1

    .line 21007
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A00:Landroid/widget/RelativeLayout;

    .line 21008
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A00:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/9m;->A02(Landroid/view/View;)V

    .line 21009
    return-void
.end method

.method public setUpVideoView(Lcom/facebook/ads/redexgen/X/XT;)V
    .locals 3

    .line 21010
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/9m;->A0H:Ljava/lang/String;

    .line 21011
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/OJ;->getAdEventManager()Lcom/facebook/ads/redexgen/X/JT;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/Jb;

    invoke-direct {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/Jb;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JT;)V

    .line 21012
    .local p0, "funnelLoggingHandler":Lcom/facebook/ads/redexgen/X/Jb;
    new-instance v0, Lcom/facebook/ads/redexgen/X/PG;

    invoke-direct {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/PG;-><init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/Jb;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A04:Lcom/facebook/ads/redexgen/X/PG;

    .line 21013
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A04:Lcom/facebook/ads/redexgen/X/PG;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/9m;->A02(Landroid/view/View;)V

    .line 21014
    return-void
.end method

.method public setVideoPlaceholderUrl(Ljava/lang/String;)V
    .locals 1

    .line 21022
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A04:Lcom/facebook/ads/redexgen/X/PG;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/PG;->setPlaceholderUrl(Ljava/lang/String;)V

    .line 21023
    return-void
.end method

.method public setVideoUrl(Ljava/lang/String;)V
    .locals 2

    .line 21024
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9m;->A01:Lcom/facebook/ads/redexgen/X/Mm;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Mm;->setVisibility(I)V

    .line 21025
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9m;->A04:Lcom/facebook/ads/redexgen/X/PG;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/PG;->setVisibility(I)V

    .line 21026
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A04:Lcom/facebook/ads/redexgen/X/PG;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/PG;->setVideoURI(Ljava/lang/String;)V

    .line 21027
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9m;->A04:Lcom/facebook/ads/redexgen/X/PG;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A0G:Lcom/facebook/ads/redexgen/X/KM;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/PG;->A03(Lcom/facebook/ads/redexgen/X/9P;)V

    .line 21028
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9m;->A04:Lcom/facebook/ads/redexgen/X/PG;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A0C:Lcom/facebook/ads/redexgen/X/Mi;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/PG;->A03(Lcom/facebook/ads/redexgen/X/9P;)V

    .line 21029
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9m;->A04:Lcom/facebook/ads/redexgen/X/PG;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A0E:Lcom/facebook/ads/redexgen/X/Kq;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/PG;->A03(Lcom/facebook/ads/redexgen/X/9P;)V

    .line 21030
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9m;->A04:Lcom/facebook/ads/redexgen/X/PG;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A0D:Lcom/facebook/ads/redexgen/X/L3;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/PG;->A03(Lcom/facebook/ads/redexgen/X/9P;)V

    .line 21031
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9m;->A04:Lcom/facebook/ads/redexgen/X/PG;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9m;->A0F:Lcom/facebook/ads/redexgen/X/Kk;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/PG;->A03(Lcom/facebook/ads/redexgen/X/9P;)V

    .line 21032
    return-void
.end method
