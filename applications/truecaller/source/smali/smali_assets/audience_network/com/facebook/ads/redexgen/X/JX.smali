.class public final Lcom/facebook/ads/redexgen/X/JX;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Pk;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xc
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Pw;
    }
.end annotation


# static fields
.field public static A0B:[Ljava/lang/String;


# instance fields
.field public A00:Landroid/view/View;

.field public A01:Lcom/facebook/ads/redexgen/X/Po;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A02:Lcom/facebook/ads/redexgen/X/Pw;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A03:Z

.field public final A04:Landroid/os/Handler;

.field public final A05:Lcom/facebook/ads/redexgen/X/Mi;

.field public final A06:Lcom/facebook/ads/redexgen/X/L3;

.field public final A07:Lcom/facebook/ads/redexgen/X/Kq;

.field public final A08:Lcom/facebook/ads/redexgen/X/KO;

.field public final A09:Z

.field public final A0A:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "82Zz8oCZg8zkkbzw8opl2Yz4CtrF2SDp"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "9Qv"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "sj5N5SmrmBRQmWue5o8rJw6ys3alFtJa"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "lBA7odrZYL425"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "CSSBUKaIJSWMhqfJuWGnuyX4cipoTk5I"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "IDQP5gLMbSSnC18VVbdsGZXvkzghwpNg"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Yf1MSxzKxHs57zUlY7hI2xykX4pHUq1P"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "T3bn0lMwtbok5v0PvXD6574OGDOrX6LS"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/JX;->A0B:[Ljava/lang/String;

    .line 40611
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/facebook/ads/redexgen/X/Pw;Z)V
    .locals 1

    .line 40612
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/facebook/ads/redexgen/X/JX;-><init>(Landroid/view/View;Lcom/facebook/ads/redexgen/X/Pw;ZZ)V

    .line 40613
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/facebook/ads/redexgen/X/Pw;ZZ)V
    .locals 1
    .param p2    # Lcom/facebook/ads/redexgen/X/Pw;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 40614
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40615
    new-instance v0, Lcom/facebook/ads/redexgen/X/7g;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/7g;-><init>(Lcom/facebook/ads/redexgen/X/JX;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JX;->A06:Lcom/facebook/ads/redexgen/X/L3;

    .line 40616
    new-instance v0, Lcom/facebook/ads/redexgen/X/7f;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/7f;-><init>(Lcom/facebook/ads/redexgen/X/JX;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JX;->A07:Lcom/facebook/ads/redexgen/X/Kq;

    .line 40617
    new-instance v0, Lcom/facebook/ads/redexgen/X/7e;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/7e;-><init>(Lcom/facebook/ads/redexgen/X/JX;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JX;->A05:Lcom/facebook/ads/redexgen/X/Mi;

    .line 40618
    new-instance v0, Lcom/facebook/ads/redexgen/X/7d;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/7d;-><init>(Lcom/facebook/ads/redexgen/X/JX;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JX;->A08:Lcom/facebook/ads/redexgen/X/KO;

    .line 40619
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/JX;->A03:Z

    .line 40620
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JX;->A04:Landroid/os/Handler;

    .line 40621
    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/JX;->A09:Z

    .line 40622
    iput-boolean p4, p0, Lcom/facebook/ads/redexgen/X/JX;->A0A:Z

    .line 40623
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/JX;->A08(Landroid/view/View;Lcom/facebook/ads/redexgen/X/Pw;)V

    .line 40624
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/JX;)Landroid/os/Handler;
    .locals 0

    .line 40625
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/JX;->A04:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/JX;)Landroid/view/View;
    .locals 0

    .line 40626
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/JX;->A00:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/JX;)Lcom/facebook/ads/redexgen/X/Po;
    .locals 0

    .line 40627
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/JX;->A01:Lcom/facebook/ads/redexgen/X/Po;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/JX;)Lcom/facebook/ads/redexgen/X/Pw;
    .locals 0

    .line 40628
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/JX;->A02:Lcom/facebook/ads/redexgen/X/Pw;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/JX;Lcom/facebook/ads/redexgen/X/Pw;)Lcom/facebook/ads/redexgen/X/Pw;
    .locals 0

    .line 40629
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/JX;->A02:Lcom/facebook/ads/redexgen/X/Pw;

    return-object p1
.end method

.method private A05()V
    .locals 3

    .line 40630
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JX;->A00:Landroid/view/View;

    .line 40631
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 40632
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 40633
    const-wide/16 v0, 0x1f4

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Pv;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Pv;-><init>(Lcom/facebook/ads/redexgen/X/JX;)V

    .line 40634
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 40635
    return-void
.end method

.method private A06(II)V
    .locals 2

    .line 40636
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JX;->A04:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 40637
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JX;->A00:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 40638
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JX;->A00:Landroid/view/View;

    int-to-float v0, p1

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 40639
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JX;->A00:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 40640
    return-void
.end method

.method private A07(Landroid/animation/AnimatorListenerAdapter;)V
    .locals 3

    .line 40641
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JX;->A00:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 40642
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JX;->A00:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v0, 0x1f4

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 40643
    return-void
.end method

.method private final A08(Landroid/view/View;Lcom/facebook/ads/redexgen/X/Pw;)V
    .locals 3

    .line 40644
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/JX;->A02:Lcom/facebook/ads/redexgen/X/Pw;

    .line 40645
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/JX;->A00:Landroid/view/View;

    .line 40646
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JX;->A00:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 40647
    sget-object v0, Lcom/facebook/ads/redexgen/X/Pw;->A04:Lcom/facebook/ads/redexgen/X/Pw;

    if-ne p2, v0, :cond_0

    .line 40648
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JX;->A00:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/JX;->A0B:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x1a

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    .line 40649
    sget-object v2, Lcom/facebook/ads/redexgen/X/JX;->A0B:[Ljava/lang/String;

    const-string v1, "3OWa54Sl5zOXBo6RskK22JrE4LW5JWKj"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "lt7hksMEFpJVhV2333OBcIopOVPW9bfy"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JX;->A00:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 40650
    :goto_0
    return-void

    .line 40651
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JX;->A00:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 40652
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JX;->A00:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/JX;)V
    .locals 0

    .line 40653
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/JX;->A05()V

    return-void
.end method

.method public static synthetic A0A(Lcom/facebook/ads/redexgen/X/JX;II)V
    .locals 0

    .line 40654
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/JX;->A06(II)V

    return-void
.end method

.method public static synthetic A0B(Lcom/facebook/ads/redexgen/X/JX;Landroid/animation/AnimatorListenerAdapter;)V
    .locals 0

    .line 40655
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/JX;->A07(Landroid/animation/AnimatorListenerAdapter;)V

    return-void
.end method

.method public static synthetic A0C(Lcom/facebook/ads/redexgen/X/JX;)Z
    .locals 0

    .line 40656
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/JX;->A03:Z

    return p0
.end method

.method public static synthetic A0D(Lcom/facebook/ads/redexgen/X/JX;)Z
    .locals 0

    .line 40657
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/JX;->A09:Z

    return p0
.end method

.method public static synthetic A0E(Lcom/facebook/ads/redexgen/X/JX;)Z
    .locals 0

    .line 40658
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/JX;->A0A:Z

    return p0
.end method


# virtual methods
.method public final A8f(Lcom/facebook/ads/redexgen/X/Po;)V
    .locals 4

    .line 40659
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/JX;->A01:Lcom/facebook/ads/redexgen/X/Po;

    .line 40660
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Po;->getEventBus()Lcom/facebook/ads/redexgen/X/9O;

    move-result-object v3

    const/4 v0, 0x4

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/9P;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JX;->A06:Lcom/facebook/ads/redexgen/X/L3;

    const/4 v0, 0x0

    aput-object v1, v2, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JX;->A07:Lcom/facebook/ads/redexgen/X/Kq;

    const/4 v0, 0x1

    aput-object v1, v2, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JX;->A08:Lcom/facebook/ads/redexgen/X/KO;

    const/4 v0, 0x2

    aput-object v1, v2, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JX;->A05:Lcom/facebook/ads/redexgen/X/Mi;

    const/4 v0, 0x3

    aput-object v1, v2, v0

    .line 40661
    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/9O;->A03([Lcom/facebook/ads/redexgen/X/9P;)V

    .line 40662
    return-void
.end method

.method public final AF4(Lcom/facebook/ads/redexgen/X/Po;)V
    .locals 5

    .line 40663
    const/4 v4, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v4}, Lcom/facebook/ads/redexgen/X/JX;->A06(II)V

    .line 40664
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Po;->getEventBus()Lcom/facebook/ads/redexgen/X/9O;

    move-result-object v3

    const/4 v0, 0x4

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/9P;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JX;->A05:Lcom/facebook/ads/redexgen/X/Mi;

    aput-object v0, v2, v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/JX;->A08:Lcom/facebook/ads/redexgen/X/KO;

    aput-object v0, v2, v1

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JX;->A07:Lcom/facebook/ads/redexgen/X/Kq;

    const/4 v0, 0x2

    aput-object v1, v2, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/JX;->A06:Lcom/facebook/ads/redexgen/X/L3;

    const/4 v0, 0x3

    aput-object v1, v2, v0

    .line 40665
    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/9O;->A04([Lcom/facebook/ads/redexgen/X/9P;)V

    .line 40666
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/JX;->A01:Lcom/facebook/ads/redexgen/X/Po;

    .line 40667
    return-void
.end method
