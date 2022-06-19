.class public final Lcom/facebook/ads/redexgen/X/9f;
.super Landroid/widget/FrameLayout;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/MV;
.implements Lcom/facebook/ads/redexgen/X/S3;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/view/dynamiclayout/DynamicFullScreenAdView$AdFormatType;
    }
.end annotation


# static fields
.field public static A0I:[Ljava/lang/String;

.field public static final A0J:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/50;

.field public A01:Lcom/facebook/ads/redexgen/X/52;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A02:Lcom/facebook/ads/redexgen/X/Ox;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A03:Z

.field public A04:Z

.field public A05:Z

.field public final A06:Lcom/facebook/ads/redexgen/X/16;

.field public final A07:Lcom/facebook/ads/redexgen/X/XT;

.field public final A08:Lcom/facebook/ads/redexgen/X/JT;

.field public final A09:Lcom/facebook/ads/redexgen/X/Jb;

.field public final A0A:Lcom/facebook/ads/redexgen/X/Lu;

.field public final A0B:Lcom/facebook/ads/redexgen/X/Lz;

.field public final A0C:Lcom/facebook/ads/redexgen/X/MU;

.field public final A0D:Lcom/facebook/ads/redexgen/X/Mw;

.field public final A0E:Lcom/facebook/ads/redexgen/X/Oh;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A0F:Lcom/facebook/ads/redexgen/X/On;

.field public final A0G:Lcom/facebook/ads/redexgen/X/QY;
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field

.field public final A0H:Lcom/facebook/ads/redexgen/X/QZ;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Ky6zrcoV7NYtZpO3AnBVhERgUe61TP4A"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "7"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "MIS71VG0t7feKobdqgnq1TwubiJ1N09z"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "nEwmQOfqxRkjYDAAu8TY0n89Pulsb82"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "nm6mhrtocmSPL4qM7u9wOkkvqXPHcra"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "ADTrDSFqqVysA22fSklmKPGMwsWvvDiN"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "oNlgPu"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "28CTXOUAXLtNi6XFaROwO0buCKC9QIVi"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/9f;->A0I:[Ljava/lang/String;

    .line 20432
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/9f;->A0J:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/JT;Lcom/facebook/ads/redexgen/X/MU;Lcom/facebook/ads/redexgen/X/16;Lcom/facebook/ads/redexgen/X/Mw;I)V
    .locals 11
    .param p6    # I
        .annotation build Lcom/facebook/ads/internal/view/dynamiclayout/DynamicFullScreenAdView$AdFormatType;
        .end annotation
    .end param

    .line 20433
    move-object v0, p0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 20434
    new-instance v1, Lcom/facebook/ads/redexgen/X/SH;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/SH;-><init>(Lcom/facebook/ads/redexgen/X/9f;)V

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/9f;->A00:Lcom/facebook/ads/redexgen/X/50;

    .line 20435
    new-instance v1, Lcom/facebook/ads/redexgen/X/SG;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/SG;-><init>(Lcom/facebook/ads/redexgen/X/9f;)V

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/9f;->A0G:Lcom/facebook/ads/redexgen/X/QY;

    .line 20436
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/facebook/ads/redexgen/X/9f;->A03:Z

    .line 20437
    iput-object p1, v0, Lcom/facebook/ads/redexgen/X/9f;->A07:Lcom/facebook/ads/redexgen/X/XT;

    .line 20438
    iput-object p2, v0, Lcom/facebook/ads/redexgen/X/9f;->A08:Lcom/facebook/ads/redexgen/X/JT;

    .line 20439
    iput-object p3, v0, Lcom/facebook/ads/redexgen/X/9f;->A0C:Lcom/facebook/ads/redexgen/X/MU;

    .line 20440
    move-object v1, p4

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/9f;->A06:Lcom/facebook/ads/redexgen/X/16;

    .line 20441
    move-object/from16 v2, p5

    iput-object v2, v0, Lcom/facebook/ads/redexgen/X/9f;->A0D:Lcom/facebook/ads/redexgen/X/Mw;

    .line 20442
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/16;->A0V()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/Oo;->A02(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/On;

    move-result-object v2

    .line 20443
    .local v0, "preloadedDynamicWebViewController":Lcom/facebook/ads/redexgen/X/On;
    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 20444
    iput-object v2, v0, Lcom/facebook/ads/redexgen/X/9f;->A0F:Lcom/facebook/ads/redexgen/X/On;

    .line 20445
    iput-boolean v3, v0, Lcom/facebook/ads/redexgen/X/9f;->A04:Z

    .line 20446
    :goto_0
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/9f;->A0F:Lcom/facebook/ads/redexgen/X/On;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/On;->A0L()Lcom/facebook/ads/redexgen/X/Jb;

    move-result-object v2

    iput-object v2, v0, Lcom/facebook/ads/redexgen/X/9f;->A09:Lcom/facebook/ads/redexgen/X/Jb;

    .line 20447
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/9f;->A0F:Lcom/facebook/ads/redexgen/X/On;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/On;->A0M()Lcom/facebook/ads/redexgen/X/Lz;

    move-result-object v2

    iput-object v2, v0, Lcom/facebook/ads/redexgen/X/9f;->A0B:Lcom/facebook/ads/redexgen/X/Lz;

    .line 20448
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/9f;->A0F:Lcom/facebook/ads/redexgen/X/On;

    new-instance v2, Lcom/facebook/ads/redexgen/X/SF;

    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/SF;-><init>(Lcom/facebook/ads/redexgen/X/9f;)V

    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/On;->A0X(Lcom/facebook/ads/redexgen/X/Om;)V

    .line 20449
    const/16 v3, 0x3eb

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/9f;->A0F:Lcom/facebook/ads/redexgen/X/On;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/On;->A0N()Lcom/facebook/ads/redexgen/X/S4;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/facebook/ads/redexgen/X/M5;->A0G(ILandroid/view/View;)V

    .line 20450
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/9f;->A06:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/16;->A0j()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 20451
    new-instance v2, Lcom/facebook/ads/redexgen/X/Oh;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/9f;->A07:Lcom/facebook/ads/redexgen/X/XT;

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/9f;->A08:Lcom/facebook/ads/redexgen/X/JT;

    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/9f;->A06:Lcom/facebook/ads/redexgen/X/16;

    new-instance v6, Lcom/facebook/ads/redexgen/X/7J;

    invoke-direct {v6, v3}, Lcom/facebook/ads/redexgen/X/7J;-><init>(Lcom/facebook/ads/redexgen/X/8J;)V

    iget-object v7, v0, Lcom/facebook/ads/redexgen/X/9f;->A09:Lcom/facebook/ads/redexgen/X/Jb;

    iget-object v8, v0, Lcom/facebook/ads/redexgen/X/9f;->A0C:Lcom/facebook/ads/redexgen/X/MU;

    iget-object v9, v0, Lcom/facebook/ads/redexgen/X/9f;->A0D:Lcom/facebook/ads/redexgen/X/Mw;

    new-instance v10, Lcom/facebook/ads/redexgen/X/SE;

    invoke-direct {v10, v0}, Lcom/facebook/ads/redexgen/X/SE;-><init>(Lcom/facebook/ads/redexgen/X/9f;)V

    invoke-direct/range {v2 .. v10}, Lcom/facebook/ads/redexgen/X/Oh;-><init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/JT;Lcom/facebook/ads/redexgen/X/16;Lcom/facebook/ads/redexgen/X/7J;Lcom/facebook/ads/redexgen/X/Jb;Lcom/facebook/ads/redexgen/X/MU;Lcom/facebook/ads/redexgen/X/Mw;Lcom/facebook/ads/redexgen/X/Og;)V

    iput-object v2, v0, Lcom/facebook/ads/redexgen/X/9f;->A0E:Lcom/facebook/ads/redexgen/X/Oh;

    .line 20452
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/9f;->A0E:Lcom/facebook/ads/redexgen/X/Oh;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Oh;->A0N()V

    .line 20453
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/9f;->A0F:Lcom/facebook/ads/redexgen/X/On;

    .line 20454
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/On;->A0N()Lcom/facebook/ads/redexgen/X/S4;

    move-result-object v3

    new-instance v2, Lcom/facebook/ads/redexgen/X/Oc;

    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/Oc;-><init>(Lcom/facebook/ads/redexgen/X/9f;)V

    .line 20455
    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/S4;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 20456
    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/9f;->A0E:Lcom/facebook/ads/redexgen/X/Oh;

    const/4 v3, -0x1

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4, v2}, Lcom/facebook/ads/redexgen/X/9f;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 20457
    :goto_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9f;->getMediaView()Landroid/view/ViewGroup;

    move-result-object v6

    .line 20458
    .local p1, "mediaView":Landroid/view/ViewGroup;
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/9f;->A0G:Lcom/facebook/ads/redexgen/X/QY;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/9f;->A07:Lcom/facebook/ads/redexgen/X/XT;

    const/4 v3, 0x1

    new-instance v2, Lcom/facebook/ads/redexgen/X/QZ;

    invoke-direct {v2, v6, v3, v5, v4}, Lcom/facebook/ads/redexgen/X/QZ;-><init>(Landroid/view/View;ILjava/lang/ref/WeakReference;Lcom/facebook/ads/redexgen/X/XT;)V

    iput-object v2, v0, Lcom/facebook/ads/redexgen/X/9f;->A0H:Lcom/facebook/ads/redexgen/X/QZ;

    .line 20459
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/9f;->A0H:Lcom/facebook/ads/redexgen/X/QZ;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/9f;->A06:Lcom/facebook/ads/redexgen/X/16;

    .line 20460
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/16;->A0E()I

    move-result v2

    .line 20461
    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/QZ;->A0W(I)V

    .line 20462
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/9f;->A0H:Lcom/facebook/ads/redexgen/X/QZ;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/9f;->A06:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/16;->A0F()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/QZ;->A0X(I)V

    .line 20463
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/9f;->A0F:Lcom/facebook/ads/redexgen/X/On;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/9f;->A0H:Lcom/facebook/ads/redexgen/X/QZ;

    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/On;->A0Z(Lcom/facebook/ads/redexgen/X/QZ;)V

    .line 20464
    new-instance v2, Lcom/facebook/ads/redexgen/X/Lu;

    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/Lu;-><init>(Landroid/view/View;)V

    iput-object v2, v0, Lcom/facebook/ads/redexgen/X/9f;->A0A:Lcom/facebook/ads/redexgen/X/Lu;

    .line 20465
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/9f;->A0A:Lcom/facebook/ads/redexgen/X/Lu;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Lt;->A03:Lcom/facebook/ads/redexgen/X/Lt;

    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/Lu;->A05(Lcom/facebook/ads/redexgen/X/Lt;)V

    .line 20466
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/9f;->setBackgroundColor(I)V

    .line 20467
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/JD;->A1D(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20468
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/8J;->A09()Lcom/facebook/ads/redexgen/X/Jf;

    move-result-object v5

    .line 20469
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/16;->A0Q()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-interface/range {v5 .. v10}, Lcom/facebook/ads/redexgen/X/Jf;->AFE(Landroid/view/View;Ljava/lang/String;ZZZ)V

    .line 20470
    :cond_0
    return-void

    .line 20471
    :cond_1
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/facebook/ads/redexgen/X/9f;->A0E:Lcom/facebook/ads/redexgen/X/Oh;

    goto :goto_1

    .line 20472
    :cond_2
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/9f;->A07:Lcom/facebook/ads/redexgen/X/XT;

    new-instance v2, Lcom/facebook/ads/redexgen/X/On;

    move/from16 v5, p6

    invoke-direct {v2, v3, v1, p2, v5}, Lcom/facebook/ads/redexgen/X/On;-><init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/16;Lcom/facebook/ads/redexgen/X/JT;I)V

    iput-object v2, v0, Lcom/facebook/ads/redexgen/X/9f;->A0F:Lcom/facebook/ads/redexgen/X/On;

    .line 20473
    iput-boolean v4, v0, Lcom/facebook/ads/redexgen/X/9f;->A04:Z

    goto/16 :goto_0
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/9f;)Lcom/facebook/ads/redexgen/X/16;
    .locals 0

    .line 20474
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/9f;->A06:Lcom/facebook/ads/redexgen/X/16;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/9f;)Lcom/facebook/ads/redexgen/X/52;
    .locals 0

    .line 20475
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/9f;->A01:Lcom/facebook/ads/redexgen/X/52;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/9f;)Lcom/facebook/ads/redexgen/X/XT;
    .locals 0

    .line 20476
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/9f;->A07:Lcom/facebook/ads/redexgen/X/XT;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/9f;)Lcom/facebook/ads/redexgen/X/JT;
    .locals 0

    .line 20477
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/9f;->A08:Lcom/facebook/ads/redexgen/X/JT;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/9f;)Lcom/facebook/ads/redexgen/X/Jb;
    .locals 0

    .line 20478
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/9f;->A09:Lcom/facebook/ads/redexgen/X/Jb;

    return-object p0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/9f;)Lcom/facebook/ads/redexgen/X/Lz;
    .locals 0

    .line 20479
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/9f;->A0B:Lcom/facebook/ads/redexgen/X/Lz;

    return-object p0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/9f;)Lcom/facebook/ads/redexgen/X/MU;
    .locals 0

    .line 20480
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/9f;->A0C:Lcom/facebook/ads/redexgen/X/MU;

    return-object p0
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/9f;)Lcom/facebook/ads/redexgen/X/Mw;
    .locals 0

    .line 20481
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/9f;->A0D:Lcom/facebook/ads/redexgen/X/Mw;

    return-object p0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/9f;)Lcom/facebook/ads/redexgen/X/Oh;
    .locals 0

    .line 20482
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/9f;->A0E:Lcom/facebook/ads/redexgen/X/Oh;

    return-object p0
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/9f;)Lcom/facebook/ads/redexgen/X/On;
    .locals 0

    .line 20483
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/9f;->A0F:Lcom/facebook/ads/redexgen/X/On;

    return-object p0
.end method

.method public static synthetic A0A(Lcom/facebook/ads/redexgen/X/9f;)Lcom/facebook/ads/redexgen/X/QZ;
    .locals 0

    .line 20484
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/9f;->A0H:Lcom/facebook/ads/redexgen/X/QZ;

    return-object p0
.end method

.method private A0B()V
    .locals 4

    .line 20485
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/9f;->A07:Lcom/facebook/ads/redexgen/X/XT;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9f;->A06:Lcom/facebook/ads/redexgen/X/16;

    .line 20486
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0K()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0E()Lcom/facebook/ads/redexgen/X/1G;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9f;->A06:Lcom/facebook/ads/redexgen/X/16;

    .line 20487
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0N()Lcom/facebook/ads/redexgen/X/1S;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/P3;

    invoke-direct {v1, v3, v2, v0}, Lcom/facebook/ads/redexgen/X/P3;-><init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/1G;Lcom/facebook/ads/redexgen/X/1S;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9f;->A06:Lcom/facebook/ads/redexgen/X/16;

    .line 20488
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0J()Lcom/facebook/ads/redexgen/X/17;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/17;->A01()Lcom/facebook/ads/redexgen/X/1I;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/P3;->A08(Lcom/facebook/ads/redexgen/X/1I;)Lcom/facebook/ads/redexgen/X/P3;

    move-result-object v0

    .line 20489
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/P3;->A0B()Lcom/facebook/ads/redexgen/X/P5;

    move-result-object v2

    .line 20490
    .local p0, "introView":Lcom/facebook/ads/redexgen/X/P5;
    const/4 v1, -0x1

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v0}, Lcom/facebook/ads/redexgen/X/9f;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 20491
    new-instance v0, Lcom/facebook/ads/redexgen/X/SC;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/SC;-><init>(Lcom/facebook/ads/redexgen/X/9f;)V

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/P5;->A04(Lcom/facebook/ads/redexgen/X/P4;)V

    .line 20492
    return-void
.end method

.method private final A0C()V
    .locals 4

    .line 20493
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9f;->A0F:Lcom/facebook/ads/redexgen/X/On;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/On;->A0Y(Lcom/facebook/ads/redexgen/X/S3;)V

    .line 20494
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9f;->A04:Z

    if-nez v0, :cond_2

    .line 20495
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9f;->A07:Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A4u()V

    .line 20496
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9f;->A0F:Lcom/facebook/ads/redexgen/X/On;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/On;->A0e(Z)V

    .line 20497
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9f;->A0F:Lcom/facebook/ads/redexgen/X/On;

    .line 20498
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/On;->A0N()Lcom/facebook/ads/redexgen/X/S4;

    move-result-object v1

    const/4 v2, -0x1

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 20499
    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/9f;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 20500
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9f;->A0C:Lcom/facebook/ads/redexgen/X/MU;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-interface {v1, p0, v0}, Lcom/facebook/ads/redexgen/X/MU;->A3H(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 20501
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt v1, v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9f;->A06:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0k()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20502
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9f;->A0A:Lcom/facebook/ads/redexgen/X/Lu;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Lt;->A04:Lcom/facebook/ads/redexgen/X/Lt;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Lu;->A05(Lcom/facebook/ads/redexgen/X/Lt;)V

    .line 20503
    :cond_1
    return-void

    .line 20504
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9f;->A07:Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A4v()V

    .line 20505
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9f;->A0F:Lcom/facebook/ads/redexgen/X/On;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/On;->A0f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20506
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9f;->AEq()V

    .line 20507
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/9f;->A07:Lcom/facebook/ads/redexgen/X/XT;

    sget-object v1, Lcom/facebook/ads/redexgen/X/9f;->A0I:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x6

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/9f;->A0I:[Ljava/lang/String;

    const-string v1, "8j5uXfZ95rl8UwGJAIvPTgfy7qu4v9pG"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/JD;->A1D(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20508
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9f;->A07:Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A09()Lcom/facebook/ads/redexgen/X/Jf;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Jf;->AAH()V

    goto :goto_0
.end method

.method private A0D(Ljava/lang/String;)V
    .locals 9

    .line 20509
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20510
    return-void

    .line 20511
    :cond_0
    new-instance v2, Lcom/facebook/ads/redexgen/X/O1;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/9f;->A07:Lcom/facebook/ads/redexgen/X/XT;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9f;->A0D:Lcom/facebook/ads/redexgen/X/Mw;

    .line 20512
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Mw;->A60()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/9f;->A0H:Lcom/facebook/ads/redexgen/X/QZ;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/9f;->A0B:Lcom/facebook/ads/redexgen/X/Lz;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/9f;->A08:Lcom/facebook/ads/redexgen/X/JT;

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/9f;->A0C:Lcom/facebook/ads/redexgen/X/MU;

    invoke-direct/range {v2 .. v8}, Lcom/facebook/ads/redexgen/X/O1;-><init>(Lcom/facebook/ads/redexgen/X/XT;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/QZ;Lcom/facebook/ads/redexgen/X/Lz;Lcom/facebook/ads/redexgen/X/JT;Lcom/facebook/ads/redexgen/X/MU;)V

    .line 20513
    .local p0, "ctaActionHelper":Lcom/facebook/ads/redexgen/X/O1;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9f;->A06:Lcom/facebook/ads/redexgen/X/16;

    .line 20514
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0Q()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 20515
    invoke-virtual {v2, v1, p1, v0}, Lcom/facebook/ads/redexgen/X/O1;->A08(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 20516
    return-void
.end method

.method public static getAttachedDynamicAdViews()I
    .locals 1

    .line 20579
    sget-object v0, Lcom/facebook/ads/redexgen/X/9f;->A0J:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method private getMediaView()Landroid/view/ViewGroup;
    .locals 1

    .line 20580
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9f;->A0E:Lcom/facebook/ads/redexgen/X/Oh;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    .line 20581
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9f;->A0F:Lcom/facebook/ads/redexgen/X/On;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/On;->A0N()Lcom/facebook/ads/redexgen/X/S4;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final A7n()V
    .locals 1

    .line 20517
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9f;->A06:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0K()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0F()Lcom/facebook/ads/redexgen/X/1J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1J;->A05()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/9f;->A0D(Ljava/lang/String;)V

    .line 20518
    return-void
.end method

.method public final A7o(Ljava/lang/String;)V
    .locals 0

    .line 20519
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/9f;->A0D(Ljava/lang/String;)V

    .line 20520
    return-void
.end method

.method public final A7s()V
    .locals 5

    .line 20521
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9f;->A0C:Lcom/facebook/ads/redexgen/X/MU;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9f;->A0D:Lcom/facebook/ads/redexgen/X/Mw;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Mw;->A5X()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/MU;->A3q(Ljava/lang/String;)V

    .line 20522
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/9f;->A07:Lcom/facebook/ads/redexgen/X/XT;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/9f;->A0D:Lcom/facebook/ads/redexgen/X/Mw;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9f;->A06:Lcom/facebook/ads/redexgen/X/16;

    .line 20523
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0W()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9f;->A0C:Lcom/facebook/ads/redexgen/X/MU;

    new-instance v0, Lcom/facebook/ads/redexgen/X/PV;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/PV;-><init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/Mw;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/MU;)V

    .line 20524
    .local p0, "serverSideRewardHandler":Lcom/facebook/ads/redexgen/X/PV;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PV;->A05()V

    .line 20525
    return-void
.end method

.method public final A7t(Ljava/lang/String;)V
    .locals 1

    .line 20526
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9f;->A02:Lcom/facebook/ads/redexgen/X/Ox;

    if-eqz v0, :cond_0

    .line 20527
    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Ox;->A7t(Ljava/lang/String;)V

    .line 20528
    :cond_0
    return-void
.end method

.method public final A8Z()V
    .locals 2

    .line 20529
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/SD;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/SD;-><init>(Lcom/facebook/ads/redexgen/X/9f;)V

    .line 20530
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 20531
    return-void
.end method

.method public final A8e(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/ads/redexgen/X/52;)V
    .locals 1
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 20532
    sget-object v0, Lcom/facebook/ads/redexgen/X/9f;->A0J:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 20533
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9f;->A00:Lcom/facebook/ads/redexgen/X/50;

    invoke-virtual {p3, v0}, Lcom/facebook/ads/redexgen/X/52;->A0K(Lcom/facebook/ads/redexgen/X/50;)V

    .line 20534
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/9f;->A01:Lcom/facebook/ads/redexgen/X/52;

    .line 20535
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9f;->A0C()V

    .line 20536
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9f;->A06:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0K()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0O()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20537
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9f;->A0B()V

    .line 20538
    :goto_0
    return-void

    .line 20539
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9f;->A0F:Lcom/facebook/ads/redexgen/X/On;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/On;->A0U()V

    goto :goto_0
.end method

.method public final AAf()V
    .locals 1

    .line 20540
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9f;->A0E:Lcom/facebook/ads/redexgen/X/Oh;

    if-eqz v0, :cond_0

    .line 20541
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oh;->A0P()V

    .line 20542
    :cond_0
    return-void
.end method

.method public final ABK(Z)V
    .locals 1

    .line 20543
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9f;->A0E:Lcom/facebook/ads/redexgen/X/Oh;

    if-eqz v0, :cond_0

    .line 20544
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Oh;->A0R(Z)V

    .line 20545
    :cond_0
    return-void
.end method

.method public final ABU(Z)V
    .locals 1

    .line 20546
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9f;->A0E:Lcom/facebook/ads/redexgen/X/Oh;

    if-eqz v0, :cond_0

    .line 20547
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Oh;->A0S(Z)V

    .line 20548
    :cond_0
    if-eqz p1, :cond_1

    .line 20549
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9f;->A0F:Lcom/facebook/ads/redexgen/X/On;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/On;->A0Q()V

    .line 20550
    :goto_0
    return-void

    .line 20551
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9f;->A0F:Lcom/facebook/ads/redexgen/X/On;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/On;->A0T()V

    goto :goto_0
.end method

.method public final ABt(Z)V
    .locals 4

    .line 20552
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9f;->A0E:Lcom/facebook/ads/redexgen/X/Oh;

    if-eqz v0, :cond_0

    .line 20553
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Oh;->A0T(Z)V

    .line 20554
    :cond_0
    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/9f;->A03:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/9f;->A0I:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xb

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/9f;->A0I:[Ljava/lang/String;

    const-string v1, "5WCDyt3aDRAQqvSthuq2O6x8YHnGvtvN"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    .line 20555
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9f;->A03:Z

    .line 20556
    return-void

    .line 20557
    :cond_1
    if-eqz p1, :cond_2

    .line 20558
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9f;->A0F:Lcom/facebook/ads/redexgen/X/On;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/On;->A0P()V

    .line 20559
    :goto_0
    return-void

    .line 20560
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9f;->A0F:Lcom/facebook/ads/redexgen/X/On;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/On;->A0V()V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final AC4()V
    .locals 1

    .line 20561
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9f;->A0E:Lcom/facebook/ads/redexgen/X/Oh;

    if-eqz v0, :cond_0

    .line 20562
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oh;->A0Q()V

    .line 20563
    :cond_0
    return-void
.end method

.method public final ACW(Z)V
    .locals 1

    .line 20564
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9f;->A0E:Lcom/facebook/ads/redexgen/X/Oh;

    if-eqz v0, :cond_0

    .line 20565
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Oh;->A0U(Z)V

    .line 20566
    :cond_0
    return-void
.end method

.method public final ACY(Z)V
    .locals 1

    .line 20567
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9f;->A0E:Lcom/facebook/ads/redexgen/X/Oh;

    if-eqz v0, :cond_0

    .line 20568
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Oh;->A0V(Z)V

    .line 20569
    :cond_0
    return-void
.end method

.method public final AE6(Landroid/os/Bundle;)V
    .locals 0

    .line 20570
    return-void
.end method

.method public final AEq()V
    .locals 1

    .line 20571
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9f;->A05:Z

    if-nez v0, :cond_0

    .line 20572
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9f;->A0H:Lcom/facebook/ads/redexgen/X/QZ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QZ;->A0U()V

    .line 20573
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9f;->A05:Z

    .line 20574
    :cond_0
    return-void
.end method

.method public final close()V
    .locals 2

    .line 20575
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9f;->A01:Lcom/facebook/ads/redexgen/X/52;

    if-nez v1, :cond_0

    .line 20576
    return-void

    .line 20577
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/52;->finish(I)V

    .line 20578
    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)Z
    .locals 1

    .line 20582
    const/4 v0, 0x0

    return v0
.end method

.method public final onDestroy()V
    .locals 4

    .line 20583
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9f;->A07:Lcom/facebook/ads/redexgen/X/XT;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JD;->A1D(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20584
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9f;->A07:Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8J;->A09()Lcom/facebook/ads/redexgen/X/Jf;

    move-result-object v1

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9f;->getMediaView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Jf;->AF3(Landroid/view/View;)V

    .line 20585
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9f;->A0E:Lcom/facebook/ads/redexgen/X/Oh;

    if-eqz v0, :cond_1

    .line 20586
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oh;->A0O()V

    .line 20587
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9f;->A0A:Lcom/facebook/ads/redexgen/X/Lu;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Lu;->A03()V

    .line 20588
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/9f;->A08:Lcom/facebook/ads/redexgen/X/JT;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9f;->A06:Lcom/facebook/ads/redexgen/X/16;

    .line 20589
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0Q()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Lcom/facebook/ads/redexgen/X/Nu;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/Nu;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9f;->A0B:Lcom/facebook/ads/redexgen/X/Lz;

    .line 20590
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Nu;->A02(Lcom/facebook/ads/redexgen/X/Lz;)Lcom/facebook/ads/redexgen/X/Nu;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9f;->A0H:Lcom/facebook/ads/redexgen/X/QZ;

    .line 20591
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Nu;->A03(Lcom/facebook/ads/redexgen/X/QZ;)Lcom/facebook/ads/redexgen/X/Nu;

    move-result-object v0

    .line 20592
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nu;->A05()Ljava/util/Map;

    move-result-object v0

    .line 20593
    invoke-interface {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/JT;->A8n(Ljava/lang/String;Ljava/util/Map;)V

    .line 20594
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9f;->A00:Lcom/facebook/ads/redexgen/X/50;

    .line 20595
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9f;->A02:Lcom/facebook/ads/redexgen/X/Ox;

    .line 20596
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9f;->A01:Lcom/facebook/ads/redexgen/X/52;

    .line 20597
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9f;->A06:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0V()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Oo;->A03(Ljava/lang/String;)V

    .line 20598
    sget-object v0, Lcom/facebook/ads/redexgen/X/9f;->A0J:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 20599
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 20600
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/9f;->requestDisallowInterceptTouchEvent(Z)V

    .line 20601
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setListener(Lcom/facebook/ads/redexgen/X/MU;)V
    .locals 0

    .line 20602
    return-void
.end method

.method public setRtfActionsJavascriptListener(Lcom/facebook/ads/redexgen/X/Ox;)V
    .locals 0

    .line 20603
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/9f;->A02:Lcom/facebook/ads/redexgen/X/Ox;

    .line 20604
    return-void
.end method
