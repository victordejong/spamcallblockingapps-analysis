.class public abstract Lcom/facebook/ads/redexgen/X/Nx;
.super Landroid/widget/LinearLayout;
.source ""


# static fields
.field public static final A05:Landroid/widget/LinearLayout$LayoutParams;


# instance fields
.field public final A00:I

.field public final A01:Landroid/widget/RelativeLayout;

.field public final A02:Lcom/facebook/ads/redexgen/X/XT;

.field public final A03:Lcom/facebook/ads/redexgen/X/SZ;

.field public final A04:Lcom/facebook/ads/redexgen/X/OA;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 46503
    const/4 v1, -0x2

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Nx;->A05:Landroid/widget/LinearLayout$LayoutParams;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XT;ILcom/facebook/ads/redexgen/X/1I;ZLjava/lang/String;Lcom/facebook/ads/redexgen/X/JT;Lcom/facebook/ads/redexgen/X/MU;Lcom/facebook/ads/redexgen/X/QZ;Lcom/facebook/ads/redexgen/X/Lz;)V
    .locals 12

    .line 46504
    move-object v2, p0

    move-object v4, p1

    invoke-direct {p0, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 46505
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/M5;->A0K(Landroid/view/View;)V

    .line 46506
    iput-object v4, v2, Lcom/facebook/ads/redexgen/X/Nx;->A02:Lcom/facebook/ads/redexgen/X/XT;

    .line 46507
    iput p2, v2, Lcom/facebook/ads/redexgen/X/Nx;->A00:I

    .line 46508
    new-instance v0, Lcom/facebook/ads/redexgen/X/OA;

    invoke-direct {v0, v4}, Lcom/facebook/ads/redexgen/X/OA;-><init>(Lcom/facebook/ads/redexgen/X/XT;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Nx;->A04:Lcom/facebook/ads/redexgen/X/OA;

    .line 46509
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/Nx;->A04:Lcom/facebook/ads/redexgen/X/OA;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/M5;->A0M(Landroid/view/View;I)V

    .line 46510
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Nx;->A04:Lcom/facebook/ads/redexgen/X/OA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M5;->A0K(Landroid/view/View;)V

    .line 46511
    new-instance v3, Lcom/facebook/ads/redexgen/X/SZ;

    move-object/from16 v5, p5

    move/from16 v7, p4

    move-object/from16 v8, p6

    move-object/from16 v10, p8

    move-object v6, p3

    move-object/from16 v11, p9

    move-object/from16 v9, p7

    invoke-direct/range {v3 .. v11}, Lcom/facebook/ads/redexgen/X/SZ;-><init>(Lcom/facebook/ads/redexgen/X/XT;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/1I;ZLcom/facebook/ads/redexgen/X/JT;Lcom/facebook/ads/redexgen/X/MU;Lcom/facebook/ads/redexgen/X/QZ;Lcom/facebook/ads/redexgen/X/Lz;)V

    iput-object v3, v2, Lcom/facebook/ads/redexgen/X/Nx;->A03:Lcom/facebook/ads/redexgen/X/SZ;

    .line 46512
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/Nx;->A03:Lcom/facebook/ads/redexgen/X/SZ;

    const/16 v0, 0x3e9

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/M5;->A0G(ILandroid/view/View;)V

    .line 46513
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, v4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Nx;->A01:Landroid/widget/RelativeLayout;

    .line 46514
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/Nx;->A01:Landroid/widget/RelativeLayout;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Nx;->A05:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 46515
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Nx;->A01:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M5;->A0K(Landroid/view/View;)V

    .line 46516
    return-void
.end method


# virtual methods
.method public A08()V
    .locals 0

    .line 46517
    return-void
.end method

.method public A09()V
    .locals 0

    .line 46518
    return-void
.end method

.method public abstract A0A(I)V
.end method

.method public final getCTAButton()Lcom/facebook/ads/redexgen/X/SZ;
    .locals 1

    .line 46519
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nx;->A03:Lcom/facebook/ads/redexgen/X/SZ;

    return-object v0
.end method

.method public getExpandableLayout()Landroid/view/View;
    .locals 1

    .line 46520
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getIconView()Landroid/widget/ImageView;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 46521
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nx;->A04:Lcom/facebook/ads/redexgen/X/OA;

    return-object v0
.end method

.method public setInfo(Lcom/facebook/ads/redexgen/X/1G;Lcom/facebook/ads/redexgen/X/1J;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/O0;)V
    .locals 3
    .param p5    # Lcom/facebook/ads/redexgen/X/O0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 46522
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Nx;->A03:Lcom/facebook/ads/redexgen/X/SZ;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, p2, p3, v0, p5}, Lcom/facebook/ads/redexgen/X/SZ;->setCta(Lcom/facebook/ads/redexgen/X/1J;Ljava/lang/String;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/O0;)V

    .line 46523
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Nx;->A04:Lcom/facebook/ads/redexgen/X/OA;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Nx;->A02:Lcom/facebook/ads/redexgen/X/XT;

    new-instance v1, Lcom/facebook/ads/redexgen/X/Sb;

    invoke-direct {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/Sb;-><init>(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/XT;)V

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Nx;->A00:I

    .line 46524
    invoke-virtual {v1, v0, v0}, Lcom/facebook/ads/redexgen/X/Sb;->A05(II)Lcom/facebook/ads/redexgen/X/Sb;

    move-result-object v0

    .line 46525
    invoke-virtual {v0, p4}, Lcom/facebook/ads/redexgen/X/Sb;->A07(Ljava/lang/String;)V

    .line 46526
    return-void
.end method

.method public setTitleMaxLines(I)V
    .locals 0

    .line 46527
    return-void
.end method
