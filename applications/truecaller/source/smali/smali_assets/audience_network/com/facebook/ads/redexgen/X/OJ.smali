.class public abstract Lcom/facebook/ads/redexgen/X/OJ;
.super Landroid/widget/RelativeLayout;
.source ""


# static fields
.field public static final A08:I

.field public static final A09:I


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/1I;

.field public A01:Z

.field public A02:Z

.field public final A03:Lcom/facebook/ads/redexgen/X/XT;

.field public final A04:Lcom/facebook/ads/redexgen/X/JT;

.field public final A05:Lcom/facebook/ads/redexgen/X/SZ;

.field public final A06:Lcom/facebook/ads/redexgen/X/OG;

.field public final A07:Lcom/facebook/ads/redexgen/X/ON;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 47017
    sget v1, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    const/high16 v0, 0x41800000    # 16.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/OJ;->A08:I

    .line 47018
    sget v1, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    const/high16 v0, 0x41e00000    # 28.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/OJ;->A09:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/ON;Z)V
    .locals 10

    .line 47019
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ON;->A05()Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 47020
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/OJ;->A01:Z

    .line 47021
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/OJ;->A07:Lcom/facebook/ads/redexgen/X/ON;

    .line 47022
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ON;->A05()Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/OJ;->A03:Lcom/facebook/ads/redexgen/X/XT;

    .line 47023
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ON;->A06()Lcom/facebook/ads/redexgen/X/JT;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/OJ;->A04:Lcom/facebook/ads/redexgen/X/JT;

    .line 47024
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ON;->A00()I

    move-result v1

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    .line 47025
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ON;->A04()Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0J()Lcom/facebook/ads/redexgen/X/17;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/17;->A01()Lcom/facebook/ads/redexgen/X/1I;

    move-result-object v0

    .line 47026
    :goto_0
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/OJ;->A00:Lcom/facebook/ads/redexgen/X/1I;

    .line 47027
    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/OJ;->A02:Z

    .line 47028
    new-instance v1, Lcom/facebook/ads/redexgen/X/SZ;

    .line 47029
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ON;->A05()Lcom/facebook/ads/redexgen/X/XT;

    move-result-object v2

    .line 47030
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ON;->A04()Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0P()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/OJ;->A00:Lcom/facebook/ads/redexgen/X/1I;

    .line 47031
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ON;->A04()Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0K()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0F()Lcom/facebook/ads/redexgen/X/1J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1J;->A06()Z

    move-result v5

    .line 47032
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ON;->A06()Lcom/facebook/ads/redexgen/X/JT;

    move-result-object v6

    .line 47033
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ON;->A09()Lcom/facebook/ads/redexgen/X/MU;

    move-result-object v7

    .line 47034
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ON;->A0B()Lcom/facebook/ads/redexgen/X/QZ;

    move-result-object v8

    .line 47035
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ON;->A07()Lcom/facebook/ads/redexgen/X/Lz;

    move-result-object v9

    invoke-direct/range {v1 .. v9}, Lcom/facebook/ads/redexgen/X/SZ;-><init>(Lcom/facebook/ads/redexgen/X/XT;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/1I;ZLcom/facebook/ads/redexgen/X/JT;Lcom/facebook/ads/redexgen/X/MU;Lcom/facebook/ads/redexgen/X/QZ;Lcom/facebook/ads/redexgen/X/Lz;)V

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/OJ;->A05:Lcom/facebook/ads/redexgen/X/SZ;

    .line 47036
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/OJ;->A05:Lcom/facebook/ads/redexgen/X/SZ;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/OJ;->A00()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/O4;->setRoundedCornersEnabled(Z)V

    .line 47037
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/OJ;->A05:Lcom/facebook/ads/redexgen/X/SZ;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/OJ;->A0B()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/O4;->setViewShowsOverMedia(Z)V

    .line 47038
    const/16 v1, 0x3e9

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OJ;->A05:Lcom/facebook/ads/redexgen/X/SZ;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/M5;->A0G(ILandroid/view/View;)V

    .line 47039
    new-instance v0, Lcom/facebook/ads/redexgen/X/OG;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/OJ;->A03:Lcom/facebook/ads/redexgen/X/XT;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/OJ;->A00:Lcom/facebook/ads/redexgen/X/1I;

    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/OJ;->A02:Z

    .line 47040
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/OJ;->A01()Z

    move-result v4

    .line 47041
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/OJ;->A02()Z

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/OG;-><init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/1I;ZZZ)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/OJ;->A06:Lcom/facebook/ads/redexgen/X/OG;

    .line 47042
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OJ;->A06:Lcom/facebook/ads/redexgen/X/OG;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M5;->A0K(Landroid/view/View;)V

    .line 47043
    return-void

    .line 47044
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/ON;->A04()Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0J()Lcom/facebook/ads/redexgen/X/17;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/17;->A00()Lcom/facebook/ads/redexgen/X/1I;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public A00()Z
    .locals 1

    .line 47045
    const/4 v0, 0x1

    return v0
.end method

.method public A01()Z
    .locals 1

    .line 47046
    const/4 v0, 0x1

    return v0
.end method

.method public A02()Z
    .locals 1

    .line 47047
    const/4 v0, 0x1

    return v0
.end method

.method public A09(Lcom/facebook/ads/redexgen/X/7v;)V
    .locals 1

    .line 47048
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/OJ;->A01:Z

    .line 47049
    return-void
.end method

.method public A0A(Lcom/facebook/ads/redexgen/X/7t;)V
    .locals 0

    .line 47050
    return-void
.end method

.method public A0B()Z
    .locals 1

    .line 47051
    const/4 v0, 0x1

    return v0
.end method

.method public A0W()V
    .locals 0

    .line 47052
    return-void
.end method

.method public A0X()V
    .locals 0

    .line 47053
    return-void
.end method

.method public A0Y()V
    .locals 0

    .line 47054
    return-void
.end method

.method public A0Z()V
    .locals 0

    .line 47055
    return-void
.end method

.method public A0a()V
    .locals 0

    .line 47056
    return-void
.end method

.method public A0b(Lcom/facebook/ads/redexgen/X/19;Ljava/lang/String;DLandroid/os/Bundle;)V
    .locals 9
    .param p5    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 47057
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/OJ;->A06:Lcom/facebook/ads/redexgen/X/OG;

    .line 47058
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/19;->A0E()Lcom/facebook/ads/redexgen/X/1G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1G;->A05()Ljava/lang/String;

    move-result-object v4

    .line 47059
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/19;->A0E()Lcom/facebook/ads/redexgen/X/1G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1G;->A01()Ljava/lang/String;

    move-result-object v5

    .line 47060
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/OJ;->A0c()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v1, 0x0

    cmpl-double v0, p3, v1

    if-lez v0, :cond_0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, p3, v1

    if-gez v0, :cond_0

    const/4 v8, 0x1

    .line 47061
    :goto_0
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/OG;->A01(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 47062
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/OJ;->A05:Lcom/facebook/ads/redexgen/X/SZ;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/19;->A0F()Lcom/facebook/ads/redexgen/X/1J;

    move-result-object v1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v2, v1, p2, v0}, Lcom/facebook/ads/redexgen/X/SZ;->setCta(Lcom/facebook/ads/redexgen/X/1J;Ljava/lang/String;Ljava/util/Map;)V

    .line 47063
    return-void

    .line 47064
    :cond_0
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public abstract A0c()Z
.end method

.method public A0d(Z)Z
    .locals 1

    .line 47065
    const/4 v0, 0x0

    return v0
.end method

.method public getAdContextWrapper()Lcom/facebook/ads/redexgen/X/XT;
    .locals 1

    .line 47066
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OJ;->A03:Lcom/facebook/ads/redexgen/X/XT;

    return-object v0
.end method

.method public getAdEventManager()Lcom/facebook/ads/redexgen/X/JT;
    .locals 1

    .line 47067
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OJ;->A04:Lcom/facebook/ads/redexgen/X/JT;

    return-object v0
.end method

.method public getCloseButtonStyle()I
    .locals 1
    .annotation build Lcom/facebook/ads/internal/view/ToolbarActionView$ToolbarActionMode;
    .end annotation

    .line 47068
    const/4 v0, 0x0

    return v0
.end method

.method public getColors()Lcom/facebook/ads/redexgen/X/1I;
    .locals 1

    .line 47069
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OJ;->A00:Lcom/facebook/ads/redexgen/X/1I;

    return-object v0
.end method

.method public getCtaButton()Lcom/facebook/ads/redexgen/X/SZ;
    .locals 1

    .line 47070
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OJ;->A05:Lcom/facebook/ads/redexgen/X/SZ;

    return-object v0
.end method

.method public getTitleDescContainer()Lcom/facebook/ads/redexgen/X/OG;
    .locals 1

    .line 47071
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OJ;->A06:Lcom/facebook/ads/redexgen/X/OG;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 47072
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 47073
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    .line 47074
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OJ;->A07:Lcom/facebook/ads/redexgen/X/ON;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ON;->A04()Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0J()Lcom/facebook/ads/redexgen/X/17;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/17;->A01()Lcom/facebook/ads/redexgen/X/1I;

    move-result-object v0

    .line 47075
    :goto_0
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/OJ;->A00:Lcom/facebook/ads/redexgen/X/1I;

    .line 47076
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/OJ;->A05:Lcom/facebook/ads/redexgen/X/SZ;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/OJ;->A0B()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/O4;->setViewShowsOverMedia(Z)V

    .line 47077
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/OJ;->A05:Lcom/facebook/ads/redexgen/X/SZ;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OJ;->A00:Lcom/facebook/ads/redexgen/X/1I;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/O4;->setUpButtonColors(Lcom/facebook/ads/redexgen/X/1I;)V

    .line 47078
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/OJ;->A06:Lcom/facebook/ads/redexgen/X/OG;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/OJ;->A00:Lcom/facebook/ads/redexgen/X/1I;

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/OJ;->A02:Z

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OG;->A00(Lcom/facebook/ads/redexgen/X/1I;Z)V

    .line 47079
    return-void

    .line 47080
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OJ;->A07:Lcom/facebook/ads/redexgen/X/ON;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ON;->A04()Lcom/facebook/ads/redexgen/X/16;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0J()Lcom/facebook/ads/redexgen/X/17;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/17;->A00()Lcom/facebook/ads/redexgen/X/1I;

    move-result-object v0

    goto :goto_0
.end method
