.class public final Lcom/facebook/ads/redexgen/X/bF;
.super Lcom/facebook/ads/redexgen/X/0o;
.source ""


# static fields
.field public static A03:[B


# instance fields
.field public A00:Landroid/view/View;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A01:Lcom/facebook/ads/redexgen/X/4x;

.field public final A02:Lcom/facebook/ads/redexgen/X/Dr;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/bF;->A03()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/4x;)V
    .locals 1

    .line 68948
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/0o;-><init>()V

    .line 68949
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/4x;->A09()Lcom/facebook/ads/redexgen/X/Dr;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A02:Lcom/facebook/ads/redexgen/X/Dr;

    .line 68950
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/bF;->A01:Lcom/facebook/ads/redexgen/X/4x;

    .line 68951
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/bF;)Landroid/view/View;
    .locals 0

    .line 68952
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/bF;->A00:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/bF;)Lcom/facebook/ads/redexgen/X/4x;
    .locals 0

    .line 68953
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/bF;->A01:Lcom/facebook/ads/redexgen/X/4x;

    return-object p0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/bF;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x35

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A03()V
    .locals 1

    const/16 v0, 0x1a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/bF;->A03:[B

    return-void

    :array_0
    .array-data 1
        -0x17t
        0x7t
        0x14t
        0x14t
        0x15t
        0x1at
        -0x3at
        0x16t
        0x18t
        0xbt
        0x19t
        0xbt
        0x14t
        0x1at
        -0x3at
        0x14t
        0x1bt
        0x12t
        0x12t
        -0x3at
        0x7t
        0xat
        -0x4t
        0xft
        0xbt
        0x1dt
    .end array-data
.end method


# virtual methods
.method public final A0C()V
    .locals 1

    .line 68954
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A02:Lcom/facebook/ads/redexgen/X/Dr;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Dr;->A0I()Lcom/facebook/ads/redexgen/X/dF;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/dF;->A3b()V

    .line 68955
    new-instance v0, Lcom/facebook/ads/redexgen/X/bH;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/bH;-><init>(Lcom/facebook/ads/redexgen/X/bF;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Km;->A00(Lcom/facebook/ads/redexgen/X/Ki;)V

    .line 68956
    return-void
.end method

.method public final A0D()V
    .locals 1

    .line 68957
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A02:Lcom/facebook/ads/redexgen/X/Dr;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Dr;->A0I()Lcom/facebook/ads/redexgen/X/dF;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/dF;->A3e()V

    .line 68958
    new-instance v0, Lcom/facebook/ads/redexgen/X/bG;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/bG;-><init>(Lcom/facebook/ads/redexgen/X/bF;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Km;->A00(Lcom/facebook/ads/redexgen/X/Ki;)V

    .line 68959
    return-void
.end method

.method public final A0E(Landroid/view/View;)V
    .locals 3

    .line 68960
    if-eqz p1, :cond_5

    .line 68961
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A02:Lcom/facebook/ads/redexgen/X/Dr;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Dr;->A0I()Lcom/facebook/ads/redexgen/X/dF;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/dF;->A3d()V

    .line 68962
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/bF;->A00:Landroid/view/View;

    .line 68963
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A01:Lcom/facebook/ads/redexgen/X/4x;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4x;->A07()Lcom/facebook/ads/AdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/AdView;->removeAllViews()V

    .line 68964
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A01:Lcom/facebook/ads/redexgen/X/4x;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4x;->A07()Lcom/facebook/ads/AdView;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A00:Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/AdView;->addView(Landroid/view/View;)V

    .line 68965
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A00:Landroid/view/View;

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/Sd;

    if-eqz v0, :cond_0

    .line 68966
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A01:Lcom/facebook/ads/redexgen/X/4x;

    .line 68967
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4x;->A05()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bF;->A00:Landroid/view/View;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A01:Lcom/facebook/ads/redexgen/X/4x;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4x;->A0A()Lcom/facebook/ads/redexgen/X/K8;

    move-result-object v0

    .line 68968
    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/KB;->A01(Landroid/util/DisplayMetrics;Landroid/view/View;Lcom/facebook/ads/redexgen/X/K8;)V

    .line 68969
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A01:Lcom/facebook/ads/redexgen/X/4x;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4x;->A08()Lcom/facebook/ads/redexgen/X/F8;

    move-result-object v0

    .line 68970
    .local p0, "controller":Lcom/facebook/ads/redexgen/X/F8;
    if-eqz v0, :cond_1

    .line 68971
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/cS;->A0F()V

    .line 68972
    :cond_1
    new-instance v0, Lcom/facebook/ads/redexgen/X/bI;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/bI;-><init>(Lcom/facebook/ads/redexgen/X/bF;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Km;->A00(Lcom/facebook/ads/redexgen/X/Ki;)V

    .line 68973
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/bF;->A01:Lcom/facebook/ads/redexgen/X/4x;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/4x;->A07()Lcom/facebook/ads/AdView;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A00:Landroid/view/View;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4x;->A0B(Landroid/widget/RelativeLayout;Landroid/view/View;)V

    .line 68974
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x12

    if-lt v1, v0, :cond_4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A01:Lcom/facebook/ads/redexgen/X/4x;

    .line 68975
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4x;->A07()Lcom/facebook/ads/AdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/AdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JD;->A0u(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 68976
    new-instance v2, Lcom/facebook/ads/redexgen/X/Ns;

    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/Ns;-><init>()V

    .line 68977
    .local p1, "debugOverlayDrawable":Lcom/facebook/ads/redexgen/X/Ns;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A01:Lcom/facebook/ads/redexgen/X/4x;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/4x;->A0D(Lcom/facebook/ads/redexgen/X/Ns;)V

    .line 68978
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A01:Lcom/facebook/ads/redexgen/X/4x;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4x;->getPlacementId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Ns;->A0C(Ljava/lang/String;)V

    .line 68979
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A01:Lcom/facebook/ads/redexgen/X/4x;

    .line 68980
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4x;->A07()Lcom/facebook/ads/AdView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/AdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 68981
    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Ns;->A0B(Ljava/lang/String;)V

    .line 68982
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A01:Lcom/facebook/ads/redexgen/X/4x;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4x;->A08()Lcom/facebook/ads/redexgen/X/F8;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A01:Lcom/facebook/ads/redexgen/X/4x;

    .line 68983
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4x;->A08()Lcom/facebook/ads/redexgen/X/F8;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/cS;->A0D()Lcom/facebook/ads/redexgen/X/95;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 68984
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A01:Lcom/facebook/ads/redexgen/X/4x;

    .line 68985
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4x;->A08()Lcom/facebook/ads/redexgen/X/F8;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/cS;->A0D()Lcom/facebook/ads/redexgen/X/95;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/95;->A0C()J

    move-result-wide v0

    .line 68986
    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Ns;->A09(J)V

    .line 68987
    :cond_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bF;->A00:Landroid/view/View;

    instance-of v0, v1, Lcom/facebook/ads/redexgen/X/Sd;

    if-eqz v0, :cond_3

    .line 68988
    check-cast v1, Lcom/facebook/ads/redexgen/X/Sd;

    .line 68989
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Sd;->getViewabilityChecker()Lcom/facebook/ads/redexgen/X/QZ;

    move-result-object v0

    .line 68990
    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Ns;->A0A(Lcom/facebook/ads/redexgen/X/QZ;)V

    .line 68991
    :cond_3
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bF;->A00:Landroid/view/View;

    new-instance v0, Lcom/facebook/ads/redexgen/X/56;

    invoke-direct {v0, p0, v2}, Lcom/facebook/ads/redexgen/X/56;-><init>(Lcom/facebook/ads/redexgen/X/bF;Lcom/facebook/ads/redexgen/X/Ns;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 68992
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A00:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    .line 68993
    .end local p1    # "debugOverlayDrawable":Lcom/facebook/ads/redexgen/X/Ns;
    :cond_4
    return-void

    .line 68994
    .end local p0    # "controller":Lcom/facebook/ads/redexgen/X/F8;
    :cond_5
    const/4 v2, 0x0

    const/16 v1, 0x1a

    const/16 v0, 0x71

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bF;->A02(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final A0F(Lcom/facebook/ads/redexgen/X/0n;)V
    .locals 2

    .line 68995
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A02:Lcom/facebook/ads/redexgen/X/Dr;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Dr;->A0I()Lcom/facebook/ads/redexgen/X/dF;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A01:Lcom/facebook/ads/redexgen/X/4x;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4x;->A08()Lcom/facebook/ads/redexgen/X/F8;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/dF;->A3c(Z)V

    .line 68996
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A01:Lcom/facebook/ads/redexgen/X/4x;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4x;->A08()Lcom/facebook/ads/redexgen/X/F8;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68997
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A01:Lcom/facebook/ads/redexgen/X/4x;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4x;->A08()Lcom/facebook/ads/redexgen/X/F8;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/cS;->A0G()V

    .line 68998
    :cond_0
    return-void

    .line 68999
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0G(Lcom/facebook/ads/redexgen/X/K3;)V
    .locals 5

    .line 69000
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A02:Lcom/facebook/ads/redexgen/X/Dr;

    .line 69001
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Dr;->A0I()Lcom/facebook/ads/redexgen/X/dF;

    move-result-object v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A01:Lcom/facebook/ads/redexgen/X/4x;

    .line 69002
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4x;->A04()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Ly;->A01(J)J

    move-result-wide v2

    .line 69003
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/K3;->A03()Lcom/facebook/ads/internal/protocol/AdErrorType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v1

    .line 69004
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/K3;->A04()Ljava/lang/String;

    move-result-object v0

    .line 69005
    invoke-interface {v4, v2, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->A2a(JILjava/lang/String;)V

    .line 69006
    new-instance v0, Lcom/facebook/ads/redexgen/X/bJ;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/bJ;-><init>(Lcom/facebook/ads/redexgen/X/bF;Lcom/facebook/ads/redexgen/X/K3;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Km;->A00(Lcom/facebook/ads/redexgen/X/Ki;)V

    .line 69007
    return-void
.end method
