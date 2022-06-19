.class public final Lcom/facebook/ads/redexgen/X/Lu;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Lt;
    }
.end annotation


# instance fields
.field public A00:I

.field public A01:Landroid/view/Window;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A02:Lcom/facebook/ads/redexgen/X/Lt;

.field public final A03:Landroid/view/View;

.field public final A04:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 43652
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43653
    sget-object v0, Lcom/facebook/ads/redexgen/X/Lt;->A03:Lcom/facebook/ads/redexgen/X/Lt;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Lu;->A02:Lcom/facebook/ads/redexgen/X/Lt;

    .line 43654
    new-instance v0, Lcom/facebook/ads/redexgen/X/TK;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/TK;-><init>(Lcom/facebook/ads/redexgen/X/Lu;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Lu;->A04:Ljava/lang/Runnable;

    .line 43655
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Lu;->A03:Landroid/view/View;

    .line 43656
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Lu;->A03:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 43657
    return-void
.end method

.method private A00(IZ)V
    .locals 3

    .line 43658
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Lu;->A01:Landroid/view/Window;

    if-nez v0, :cond_0

    .line 43659
    return-void

    .line 43660
    :cond_0
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 43661
    .local p0, "windowsParams":Landroid/view/WindowManager$LayoutParams;
    if-eqz p2, :cond_1

    .line 43662
    iget v0, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v0, p1

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 43663
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Lu;->A01:Landroid/view/Window;

    invoke-virtual {v0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 43664
    return-void

    .line 43665
    :cond_1
    iget v1, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    xor-int/lit8 v0, p1, -0x1

    and-int/2addr v1, v0

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Lu;Z)V
    .locals 0

    .line 43666
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Lu;->A02(Z)V

    return-void
.end method

.method private A02(Z)V
    .locals 5

    .line 43667
    sget-object v1, Lcom/facebook/ads/redexgen/X/Lt;->A03:Lcom/facebook/ads/redexgen/X/Lt;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Lu;->A02:Lcom/facebook/ads/redexgen/X/Lt;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Lt;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43668
    return-void

    .line 43669
    :cond_0
    const/16 v4, 0xf00

    .line 43670
    .local p0, "newVisibilityFlags":I
    if-nez p1, :cond_1

    .line 43671
    or-int/lit8 v4, v4, 0x7

    .line 43672
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Lu;->A03:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v3

    .line 43673
    .local p1, "handler":Landroid/os/Handler;
    if-eqz v3, :cond_2

    if-eqz p1, :cond_2

    .line 43674
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Lu;->A04:Ljava/lang/Runnable;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 43675
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Lu;->A04:Ljava/lang/Runnable;

    const-wide/16 v0, 0x7d0

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 43676
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Lu;->A03:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 43677
    return-void
.end method


# virtual methods
.method public final A03()V
    .locals 1

    .line 43678
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Lu;->A01:Landroid/view/Window;

    .line 43679
    return-void
.end method

.method public final A04(Landroid/view/Window;)V
    .locals 0

    .line 43680
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Lu;->A01:Landroid/view/Window;

    .line 43681
    return-void
.end method

.method public final A05(Lcom/facebook/ads/redexgen/X/Lt;)V
    .locals 5

    .line 43682
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Lu;->A02:Lcom/facebook/ads/redexgen/X/Lt;

    .line 43683
    sget-object v1, Lcom/facebook/ads/redexgen/X/Ls;->A00:[I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Lu;->A02:Lcom/facebook/ads/redexgen/X/Lt;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Lt;->ordinal()I

    move-result v0

    aget v4, v1, v0

    const/high16 v3, 0x8000000

    const/high16 v2, 0x4000000

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq v4, v0, :cond_0

    .line 43684
    invoke-direct {p0, v2, v1}, Lcom/facebook/ads/redexgen/X/Lu;->A00(IZ)V

    .line 43685
    invoke-direct {p0, v3, v1}, Lcom/facebook/ads/redexgen/X/Lu;->A00(IZ)V

    .line 43686
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Lu;->A03:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 43687
    :goto_0
    return-void

    .line 43688
    :cond_0
    invoke-direct {p0, v2, v0}, Lcom/facebook/ads/redexgen/X/Lu;->A00(IZ)V

    .line 43689
    invoke-direct {p0, v3, v0}, Lcom/facebook/ads/redexgen/X/Lu;->A00(IZ)V

    .line 43690
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Lu;->A02(Z)V

    .line 43691
    goto :goto_0
.end method

.method public final onSystemUiVisibilityChange(I)V
    .locals 1

    .line 43692
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Lu;->A00:I

    xor-int/2addr v0, p1

    .line 43693
    .local p0, "diff":I
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Lu;->A00:I

    .line 43694
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_0

    .line 43695
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Lu;->A02(Z)V

    .line 43696
    :cond_0
    return-void
.end method
