.class public final Lcom/facebook/ads/redexgen/X/Sq;
.super Lcom/facebook/ads/redexgen/X/N1;
.source ""


# static fields
.field public static final A02:I


# instance fields
.field public final A00:Landroid/widget/RelativeLayout;

.field public final A01:Lcom/facebook/ads/redexgen/X/XT;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 52808
    sget v1, Lcom/facebook/ads/redexgen/X/LY;->A00:F

    const/high16 v0, 0x41000000    # 8.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Sq;->A02:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/JT;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/1S;Lcom/facebook/ads/redexgen/X/MV;Lcom/facebook/ads/redexgen/X/MU;)V
    .locals 3

    .line 52809
    invoke-direct/range {p0 .. p6}, Lcom/facebook/ads/redexgen/X/N1;-><init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/JT;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/1S;Lcom/facebook/ads/redexgen/X/MV;Lcom/facebook/ads/redexgen/X/MU;)V

    .line 52810
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Sq;->A01:Lcom/facebook/ads/redexgen/X/XT;

    .line 52811
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Sq;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Sq;->A00:Landroid/widget/RelativeLayout;

    .line 52812
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Sq;->A00:Landroid/widget/RelativeLayout;

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v0}, Lcom/facebook/ads/redexgen/X/Sq;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52813
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sq;->A00:Landroid/widget/RelativeLayout;

    const/high16 v0, -0x67000000

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/M5;->A0M(Landroid/view/View;I)V

    .line 52814
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sq;->A00:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/facebook/ads/redexgen/X/N6;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/N6;-><init>(Lcom/facebook/ads/redexgen/X/Sq;)V

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52815
    return-void
.end method

.method public static A0A(Z)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 3

    .line 52816
    const/4 v2, -0x1

    if-eqz p0, :cond_0

    const/4 v0, -0x1

    :goto_0
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 52817
    .local p0, "viewParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 52818
    return-object v1

    .line 52819
    :cond_0
    const/4 v0, -0x2

    goto :goto_0
.end method

.method private A0B()V
    .locals 3

    .line 52820
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt v1, v0, :cond_0

    .line 52821
    new-instance v2, Landroid/transition/TransitionSet;

    invoke-direct {v2}, Landroid/transition/TransitionSet;-><init>()V

    .line 52822
    .local p0, "transition":Landroid/transition/TransitionSet;
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    .line 52823
    new-instance v0, Landroid/transition/ChangeBounds;

    invoke-direct {v0}, Landroid/transition/ChangeBounds;-><init>()V

    invoke-virtual {v2, v0}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object v1

    new-instance v0, Landroid/transition/Explode;

    invoke-direct {v0}, Landroid/transition/Explode;-><init>()V

    invoke-virtual {v1, v0}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 52824
    invoke-static {p0, v2}, Lcom/facebook/ads/redexgen/X/M5;->A0V(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 52825
    .end local p0    # "transition":Landroid/transition/TransitionSet;
    :goto_0
    return-void

    .line 52826
    :cond_0
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/M5;->A0T(Landroid/view/ViewGroup;)V

    goto :goto_0
.end method


# virtual methods
.method public final A0K()V
    .locals 11

    .line 52827
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sq;->A01:Lcom/facebook/ads/redexgen/X/XT;

    .line 52828
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A00()Lcom/facebook/ads/redexgen/X/XS;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2A;->A03(Lcom/facebook/ads/redexgen/X/XS;)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v10

    .line 52829
    .local p0, "hidingReason":Lcom/facebook/ads/redexgen/X/2D;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sq;->A01:Lcom/facebook/ads/redexgen/X/XT;

    new-instance v8, Lcom/facebook/ads/redexgen/X/NG;

    invoke-direct {v8, v0}, Lcom/facebook/ads/redexgen/X/NG;-><init>(Lcom/facebook/ads/redexgen/X/XT;)V

    .line 52830
    .local v0, "hideAdView":Lcom/facebook/ads/redexgen/X/NG;
    sget-object v2, Lcom/facebook/ads/redexgen/X/MD;->A0K:Lcom/facebook/ads/redexgen/X/MD;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sq;->A01:Lcom/facebook/ads/redexgen/X/XT;

    .line 52831
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A00()Lcom/facebook/ads/redexgen/X/XS;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2A;->A0B(Lcom/facebook/ads/redexgen/X/XS;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sq;->A01:Lcom/facebook/ads/redexgen/X/XT;

    .line 52832
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A00()Lcom/facebook/ads/redexgen/X/XS;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2A;->A0A(Lcom/facebook/ads/redexgen/X/XS;)Ljava/lang/String;

    move-result-object v0

    .line 52833
    invoke-virtual {v8, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NG;->setInfo(Lcom/facebook/ads/redexgen/X/MD;Ljava/lang/String;Ljava/lang/String;)V

    .line 52834
    new-instance v0, Lcom/facebook/ads/redexgen/X/N7;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/N7;-><init>(Lcom/facebook/ads/redexgen/X/Sq;)V

    invoke-virtual {v8, v0}, Lcom/facebook/ads/redexgen/X/NG;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52835
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sq;->A01:Lcom/facebook/ads/redexgen/X/XT;

    .line 52836
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A00()Lcom/facebook/ads/redexgen/X/XS;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2A;->A04(Lcom/facebook/ads/redexgen/X/XS;)Lcom/facebook/ads/redexgen/X/2D;

    move-result-object v9

    .line 52837
    .local v0, "reportingReason":Lcom/facebook/ads/redexgen/X/2D;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sq;->A01:Lcom/facebook/ads/redexgen/X/XT;

    new-instance v7, Lcom/facebook/ads/redexgen/X/NG;

    invoke-direct {v7, v0}, Lcom/facebook/ads/redexgen/X/NG;-><init>(Lcom/facebook/ads/redexgen/X/XT;)V

    .line 52838
    .local v10, "reportAdView":Lcom/facebook/ads/redexgen/X/NG;
    sget-object v2, Lcom/facebook/ads/redexgen/X/MD;->A0Q:Lcom/facebook/ads/redexgen/X/MD;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sq;->A01:Lcom/facebook/ads/redexgen/X/XT;

    .line 52839
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A00()Lcom/facebook/ads/redexgen/X/XS;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2A;->A0F(Lcom/facebook/ads/redexgen/X/XS;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sq;->A01:Lcom/facebook/ads/redexgen/X/XT;

    .line 52840
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A00()Lcom/facebook/ads/redexgen/X/XS;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2A;->A0E(Lcom/facebook/ads/redexgen/X/XS;)Ljava/lang/String;

    move-result-object v0

    .line 52841
    invoke-virtual {v7, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NG;->setInfo(Lcom/facebook/ads/redexgen/X/MD;Ljava/lang/String;Ljava/lang/String;)V

    .line 52842
    new-instance v0, Lcom/facebook/ads/redexgen/X/N8;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/N8;-><init>(Lcom/facebook/ads/redexgen/X/Sq;)V

    invoke-virtual {v7, v0}, Lcom/facebook/ads/redexgen/X/NG;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52843
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sq;->A01:Lcom/facebook/ads/redexgen/X/XT;

    new-instance v6, Lcom/facebook/ads/redexgen/X/NG;

    invoke-direct {v6, v0}, Lcom/facebook/ads/redexgen/X/NG;-><init>(Lcom/facebook/ads/redexgen/X/XT;)V

    .line 52844
    .local v0, "adChoicesView":Lcom/facebook/ads/redexgen/X/NG;
    sget-object v2, Lcom/facebook/ads/redexgen/X/MD;->A07:Lcom/facebook/ads/redexgen/X/MD;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sq;->A01:Lcom/facebook/ads/redexgen/X/XT;

    .line 52845
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A00()Lcom/facebook/ads/redexgen/X/XS;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2A;->A0G(Lcom/facebook/ads/redexgen/X/XS;)Ljava/lang/String;

    move-result-object v1

    .line 52846
    const-string v0, ""

    invoke-virtual {v6, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NG;->setInfo(Lcom/facebook/ads/redexgen/X/MD;Ljava/lang/String;Ljava/lang/String;)V

    .line 52847
    new-instance v0, Lcom/facebook/ads/redexgen/X/N9;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/N9;-><init>(Lcom/facebook/ads/redexgen/X/Sq;)V

    invoke-virtual {v6, v0}, Lcom/facebook/ads/redexgen/X/NG;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52848
    const/4 v5, -0x1

    const/4 v0, -0x2

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v5, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 52849
    .local v8, "itemParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Sq;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 52850
    .local v0, "optionsView":Landroid/widget/LinearLayout;
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 52851
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 52852
    sget v2, Lcom/facebook/ads/redexgen/X/Sq;->A02:I

    mul-int/lit8 v1, v2, 0x2

    mul-int/lit8 v0, v2, 0x2

    invoke-virtual {v3, v1, v2, v0, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 52853
    invoke-static {v3, v5}, Lcom/facebook/ads/redexgen/X/M5;->A0M(Landroid/view/View;I)V

    .line 52854
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/2D;->A05()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 52855
    invoke-virtual {v3, v8, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52856
    :cond_0
    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/2D;->A05()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 52857
    invoke-virtual {v3, v7, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52858
    :cond_1
    invoke-virtual {v3, v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52859
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Sq;->A0B()V

    .line 52860
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sq;->A00:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 52861
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sq;->A00:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Sq;->A0A(Z)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52862
    return-void
.end method

.method public final A0L()V
    .locals 1

    .line 52863
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/M5;->A0I(Landroid/view/View;)V

    .line 52864
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sq;->A00:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 52865
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/M5;->A0J(Landroid/view/View;)V

    .line 52866
    return-void
.end method

.method public final A0M(Lcom/facebook/ads/redexgen/X/2D;Lcom/facebook/ads/redexgen/X/2B;)V
    .locals 5

    .line 52867
    sget-object v0, Lcom/facebook/ads/redexgen/X/2B;->A04:Lcom/facebook/ads/redexgen/X/2B;

    if-ne p2, v0, :cond_0

    .line 52868
    return-void

    .line 52869
    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/2B;->A05:Lcom/facebook/ads/redexgen/X/2B;

    const/4 v4, 0x1

    if-ne p2, v0, :cond_5

    const/4 v3, 0x1

    .line 52870
    .local p0, "isReportFlow":Z
    :goto_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Sq;->A01:Lcom/facebook/ads/redexgen/X/XT;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/N1;->A0A:Lcom/facebook/ads/redexgen/X/N3;

    new-instance v1, Lcom/facebook/ads/redexgen/X/Mz;

    invoke-direct {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/Mz;-><init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/N3;)V

    .line 52871
    if-eqz v3, :cond_4

    .line 52872
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sq;->A01:Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A00()Lcom/facebook/ads/redexgen/X/XS;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2A;->A09(Lcom/facebook/ads/redexgen/X/XS;)Ljava/lang/String;

    move-result-object v0

    .line 52873
    :goto_1
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Mz;->A0I(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Mz;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sq;->A01:Lcom/facebook/ads/redexgen/X/XT;

    .line 52874
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A00()Lcom/facebook/ads/redexgen/X/XS;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2A;->A07(Lcom/facebook/ads/redexgen/X/XS;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Mz;->A0H(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Mz;

    move-result-object v1

    .line 52875
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/2D;->A04()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Mz;->A0F(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Mz;

    move-result-object v1

    .line 52876
    if-eqz v3, :cond_3

    sget-object v0, Lcom/facebook/ads/redexgen/X/MD;->A0Q:Lcom/facebook/ads/redexgen/X/MD;

    :goto_2
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Mz;->A0E(Lcom/facebook/ads/redexgen/X/MD;)Lcom/facebook/ads/redexgen/X/Mz;

    move-result-object v1

    .line 52877
    if-eqz v3, :cond_2

    .line 52878
    const v0, -0x86dc5

    .line 52879
    :goto_3
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Mz;->A0D(I)Lcom/facebook/ads/redexgen/X/Mz;

    move-result-object v1

    .line 52880
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/N1;->A09:Lcom/facebook/ads/redexgen/X/1S;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/N1;->A09:Lcom/facebook/ads/redexgen/X/1S;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1S;->A01()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Mz;->A0G(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Mz;

    move-result-object v0

    .line 52881
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mz;->A0M()Lcom/facebook/ads/redexgen/X/N0;

    move-result-object v2

    .line 52882
    .local p2, "adHiddenView":Lcom/facebook/ads/redexgen/X/N0;
    const/4 v0, -0x1

    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/M5;->A0M(Landroid/view/View;I)V

    .line 52883
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/M5;->A0T(Landroid/view/ViewGroup;)V

    .line 52884
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sq;->A00:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 52885
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sq;->A00:Landroid/widget/RelativeLayout;

    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/Sq;->A0A(Z)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52886
    return-void

    .line 52887
    :cond_1
    const-string v0, ""

    goto :goto_4

    .line 52888
    :cond_2
    const v0, -0xca871b

    goto :goto_3

    .line 52889
    :cond_3
    sget-object v0, Lcom/facebook/ads/redexgen/X/MD;->A0K:Lcom/facebook/ads/redexgen/X/MD;

    goto :goto_2

    .line 52890
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sq;->A01:Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A00()Lcom/facebook/ads/redexgen/X/XS;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2A;->A08(Lcom/facebook/ads/redexgen/X/XS;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 52891
    :cond_5
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public final A0N(Lcom/facebook/ads/redexgen/X/2D;Lcom/facebook/ads/redexgen/X/2B;)V
    .locals 10

    .line 52892
    sget-object v0, Lcom/facebook/ads/redexgen/X/2B;->A05:Lcom/facebook/ads/redexgen/X/2B;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p2, v0, :cond_2

    const/4 v1, 0x1

    .line 52893
    .local p0, "isReportFlow":Z
    :goto_0
    new-instance v4, Lcom/facebook/ads/redexgen/X/NJ;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Sq;->A01:Lcom/facebook/ads/redexgen/X/XT;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/N1;->A0A:Lcom/facebook/ads/redexgen/X/N3;

    .line 52894
    if-eqz v1, :cond_1

    .line 52895
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sq;->A01:Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A00()Lcom/facebook/ads/redexgen/X/XS;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2A;->A0F(Lcom/facebook/ads/redexgen/X/XS;)Ljava/lang/String;

    move-result-object v8

    .line 52896
    :goto_1
    if-eqz v1, :cond_0

    sget-object v9, Lcom/facebook/ads/redexgen/X/MD;->A0Q:Lcom/facebook/ads/redexgen/X/MD;

    :goto_2
    move-object v6, p1

    invoke-direct/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/NJ;-><init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/2D;Lcom/facebook/ads/redexgen/X/N3;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/MD;)V

    .line 52897
    .local v0, "reasonPickerView":Lcom/facebook/ads/redexgen/X/NJ;
    invoke-virtual {v4, v2}, Lcom/facebook/ads/redexgen/X/NJ;->setClickable(Z)V

    .line 52898
    const/4 v0, -0x1

    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/M5;->A0M(Landroid/view/View;I)V

    .line 52899
    sget v2, Lcom/facebook/ads/redexgen/X/Sq;->A02:I

    mul-int/lit8 v1, v2, 0x2

    mul-int/lit8 v0, v2, 0x2

    invoke-virtual {v4, v1, v2, v0, v2}, Lcom/facebook/ads/redexgen/X/NJ;->setPadding(IIII)V

    .line 52900
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Sq;->A0B()V

    .line 52901
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sq;->A00:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 52902
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sq;->A00:Landroid/widget/RelativeLayout;

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Sq;->A0A(Z)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52903
    return-void

    .line 52904
    :cond_0
    sget-object v9, Lcom/facebook/ads/redexgen/X/MD;->A0K:Lcom/facebook/ads/redexgen/X/MD;

    goto :goto_2

    .line 52905
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sq;->A01:Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A00()Lcom/facebook/ads/redexgen/X/XS;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2A;->A0B(Lcom/facebook/ads/redexgen/X/XS;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 52906
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final A0O()Z
    .locals 1

    .line 52907
    const/4 v0, 0x0

    return v0
.end method
