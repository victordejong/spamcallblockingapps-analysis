.class public final Lcom/facebook/ads/redexgen/X/9a;
.super Landroid/widget/FrameLayout;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/S3;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/view/dynamiclayout/DynamicInlineAdView$AdFormatType;
    }
.end annotation


# static fields
.field public static final A0A:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public A00:Z

.field public final A01:Lcom/facebook/ads/redexgen/X/16;

.field public final A02:Lcom/facebook/ads/redexgen/X/XT;

.field public final A03:Lcom/facebook/ads/redexgen/X/JT;

.field public final A04:Lcom/facebook/ads/redexgen/X/Jb;
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field

.field public final A05:Lcom/facebook/ads/redexgen/X/Lz;

.field public final A06:Lcom/facebook/ads/redexgen/X/On;

.field public final A07:Lcom/facebook/ads/redexgen/X/QY;
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field

.field public final A08:Lcom/facebook/ads/redexgen/X/QZ;

.field public final A09:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 20344
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/9a;->A0A:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/JT;Lcom/facebook/ads/redexgen/X/16;Ljava/lang/String;I)V
    .locals 5
    .param p5    # I
        .annotation build Lcom/facebook/ads/internal/view/dynamiclayout/DynamicInlineAdView$AdFormatType;
        .end annotation
    .end param

    .line 20345
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 20346
    new-instance v0, Lcom/facebook/ads/redexgen/X/SB;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/SB;-><init>(Lcom/facebook/ads/redexgen/X/9a;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9a;->A07:Lcom/facebook/ads/redexgen/X/QY;

    .line 20347
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/9a;->A02:Lcom/facebook/ads/redexgen/X/XT;

    .line 20348
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/9a;->A03:Lcom/facebook/ads/redexgen/X/JT;

    .line 20349
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/9a;->A01:Lcom/facebook/ads/redexgen/X/16;

    .line 20350
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/9a;->A09:Ljava/lang/String;

    .line 20351
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/16;->A0V()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Oo;->A02(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/On;

    .line 20352
    .local p0, "preloadedDynamicWebViewController":Lcom/facebook/ads/redexgen/X/On;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9a;->A02:Lcom/facebook/ads/redexgen/X/XT;

    new-instance v0, Lcom/facebook/ads/redexgen/X/On;

    invoke-direct {v0, v1, p3, p2, p5}, Lcom/facebook/ads/redexgen/X/On;-><init>(Lcom/facebook/ads/redexgen/X/XT;Lcom/facebook/ads/redexgen/X/16;Lcom/facebook/ads/redexgen/X/JT;I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9a;->A06:Lcom/facebook/ads/redexgen/X/On;

    .line 20353
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9a;->A06:Lcom/facebook/ads/redexgen/X/On;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/On;->A0L()Lcom/facebook/ads/redexgen/X/Jb;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9a;->A04:Lcom/facebook/ads/redexgen/X/Jb;

    .line 20354
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9a;->A06:Lcom/facebook/ads/redexgen/X/On;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/On;->A0M()Lcom/facebook/ads/redexgen/X/Lz;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9a;->A05:Lcom/facebook/ads/redexgen/X/Lz;

    .line 20355
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9a;->A06:Lcom/facebook/ads/redexgen/X/On;

    new-instance v0, Lcom/facebook/ads/redexgen/X/SA;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/SA;-><init>(Lcom/facebook/ads/redexgen/X/9a;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/On;->A0X(Lcom/facebook/ads/redexgen/X/Om;)V

    .line 20356
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9a;->A06:Lcom/facebook/ads/redexgen/X/On;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/On;->A0N()Lcom/facebook/ads/redexgen/X/S4;

    move-result-object v1

    const/16 v0, 0x3eb

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/M5;->A0G(ILandroid/view/View;)V

    .line 20357
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9a;->A06:Lcom/facebook/ads/redexgen/X/On;

    .line 20358
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/On;->A0N()Lcom/facebook/ads/redexgen/X/S4;

    move-result-object v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9a;->A07:Lcom/facebook/ads/redexgen/X/QY;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/9a;->A02:Lcom/facebook/ads/redexgen/X/XT;

    const/4 v1, 0x1

    new-instance v0, Lcom/facebook/ads/redexgen/X/QZ;

    invoke-direct {v0, v4, v1, v3, v2}, Lcom/facebook/ads/redexgen/X/QZ;-><init>(Landroid/view/View;ILjava/lang/ref/WeakReference;Lcom/facebook/ads/redexgen/X/XT;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9a;->A08:Lcom/facebook/ads/redexgen/X/QZ;

    .line 20359
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9a;->A08:Lcom/facebook/ads/redexgen/X/QZ;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9a;->A01:Lcom/facebook/ads/redexgen/X/16;

    .line 20360
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0E()I

    move-result v0

    .line 20361
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/QZ;->A0W(I)V

    .line 20362
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9a;->A08:Lcom/facebook/ads/redexgen/X/QZ;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9a;->A01:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0F()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/QZ;->A0X(I)V

    .line 20363
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9a;->A06:Lcom/facebook/ads/redexgen/X/On;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9a;->A08:Lcom/facebook/ads/redexgen/X/QZ;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/On;->A0Z(Lcom/facebook/ads/redexgen/X/QZ;)V

    .line 20364
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9a;->A02()V

    .line 20365
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/9a;)Lcom/facebook/ads/redexgen/X/Lz;
    .locals 0

    .line 20366
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/9a;->A05:Lcom/facebook/ads/redexgen/X/Lz;

    return-object p0
.end method

.method private final A01()V
    .locals 3

    .line 20367
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9a;->A06:Lcom/facebook/ads/redexgen/X/On;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/On;->A0Y(Lcom/facebook/ads/redexgen/X/S3;)V

    .line 20368
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9a;->A02:Lcom/facebook/ads/redexgen/X/XT;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XT;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A4u()V

    .line 20369
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9a;->A06:Lcom/facebook/ads/redexgen/X/On;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/On;->A0e(Z)V

    .line 20370
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9a;->A06:Lcom/facebook/ads/redexgen/X/On;

    .line 20371
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/On;->A0N()Lcom/facebook/ads/redexgen/X/S4;

    move-result-object v2

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 20372
    invoke-virtual {p0, v2, v0}, Lcom/facebook/ads/redexgen/X/9a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 20373
    return-void
.end method

.method private final A02()V
    .locals 1

    .line 20374
    sget-object v0, Lcom/facebook/ads/redexgen/X/9a;->A0A:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 20375
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9a;->A01()V

    .line 20376
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9a;->A06:Lcom/facebook/ads/redexgen/X/On;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/On;->A0U()V

    .line 20377
    return-void
.end method

.method private A03(Ljava/lang/String;)V
    .locals 8

    .line 20378
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20379
    return-void

    .line 20380
    :cond_0
    new-instance v2, Lcom/facebook/ads/redexgen/X/O1;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/9a;->A02:Lcom/facebook/ads/redexgen/X/XT;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/9a;->A09:Ljava/lang/String;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/9a;->A08:Lcom/facebook/ads/redexgen/X/QZ;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/9a;->A05:Lcom/facebook/ads/redexgen/X/Lz;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/9a;->A03:Lcom/facebook/ads/redexgen/X/JT;

    invoke-direct/range {v2 .. v7}, Lcom/facebook/ads/redexgen/X/O1;-><init>(Lcom/facebook/ads/redexgen/X/XT;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/QZ;Lcom/facebook/ads/redexgen/X/Lz;Lcom/facebook/ads/redexgen/X/JT;)V

    .line 20381
    .local p0, "ctaActionHelper":Lcom/facebook/ads/redexgen/X/O1;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9a;->A01:Lcom/facebook/ads/redexgen/X/16;

    .line 20382
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0Q()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 20383
    invoke-virtual {v2, v1, p1, v0}, Lcom/facebook/ads/redexgen/X/O1;->A08(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 20384
    return-void
.end method

.method public static getAttachedDynamicAdViews()I
    .locals 1

    .line 20404
    sget-object v0, Lcom/facebook/ads/redexgen/X/9a;->A0A:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method


# virtual methods
.method public final A7n()V
    .locals 1

    .line 20385
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9a;->A01:Lcom/facebook/ads/redexgen/X/16;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0K()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0F()Lcom/facebook/ads/redexgen/X/1J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1J;->A05()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/9a;->A03(Ljava/lang/String;)V

    .line 20386
    return-void
.end method

.method public final A7o(Ljava/lang/String;)V
    .locals 0

    .line 20387
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/9a;->A03(Ljava/lang/String;)V

    .line 20388
    return-void
.end method

.method public final A7s()V
    .locals 0

    .line 20389
    return-void
.end method

.method public final A7t(Ljava/lang/String;)V
    .locals 0

    .line 20390
    return-void
.end method

.method public final A8Z()V
    .locals 2

    .line 20391
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/S9;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/S9;-><init>(Lcom/facebook/ads/redexgen/X/9a;)V

    .line 20392
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 20393
    return-void
.end method

.method public final AAf()V
    .locals 0

    .line 20394
    return-void
.end method

.method public final ABK(Z)V
    .locals 0

    .line 20395
    return-void
.end method

.method public final AC4()V
    .locals 0

    .line 20396
    return-void
.end method

.method public final ACW(Z)V
    .locals 0

    .line 20397
    return-void
.end method

.method public final ACY(Z)V
    .locals 0

    .line 20398
    return-void
.end method

.method public final AEq()V
    .locals 1

    .line 20399
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9a;->A00:Z

    if-nez v0, :cond_0

    .line 20400
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9a;->A08:Lcom/facebook/ads/redexgen/X/QZ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QZ;->A0U()V

    .line 20401
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9a;->A00:Z

    .line 20402
    :cond_0
    return-void
.end method

.method public final close()V
    .locals 0

    .line 20403
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 20405
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/9a;->requestDisallowInterceptTouchEvent(Z)V

    .line 20406
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
