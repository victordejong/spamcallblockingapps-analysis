.class public final Lcom/facebook/ads/redexgen/X/Ks;
.super Landroid/widget/FrameLayout;
.source ""


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "EmptyCatchBlock",
        "CatchGeneralException",
        "WrongCall"
    }
.end annotation

.annotation build Lcom/facebook/ads/internal/shield/NoAutoExceptionHandling;
.end annotation


# static fields
.field public static A00:[Ljava/lang/String;

.field public static final A01:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final A02:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/facebook/ads/redexgen/X/Kl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "8uiZfgsmrD5w7H2sVgAC3n2gJlRDmu8"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "AcResxUzczeVQ6"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "S"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "DeJxumnd3y1WcfHk"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "FMZxMK7lmQCPA"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "J"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "wc3PTdtI7w7wp63NJxsDpEHsC40vb1e2"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "jaoFPfR2hwKJJkyxUt0jn5KhPySOFpSP"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Ks;->A00:[Ljava/lang/String;

    .line 41923
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ks;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 41924
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ks;->A02:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private final A00()V
    .locals 0

    .line 41925
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 41926
    return-void
.end method

.method private final A01()V
    .locals 0

    .line 41927
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 41928
    return-void
.end method

.method private final A02()V
    .locals 0

    .line 41929
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 41930
    return-void
.end method

.method private final A03(I)V
    .locals 0

    .line 41931
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowVisibilityChanged(I)V

    .line 41932
    return-void
.end method

.method private final A04(II)V
    .locals 0

    .line 41933
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 41934
    return-void
.end method

.method private final A05(IIII)V
    .locals 0

    .line 41935
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 41936
    return-void
.end method

.method private final A06(Landroid/graphics/Canvas;)V
    .locals 0

    .line 41937
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 41938
    return-void
.end method

.method private A07(Ljava/lang/Throwable;)V
    .locals 2

    .line 41939
    invoke-static {}, Lcom/facebook/ads/redexgen/X/L2;->A00()Lcom/facebook/ads/redexgen/X/L1;

    move-result-object v1

    const/16 v0, 0xce9

    invoke-interface {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/L1;->A8g(ILjava/lang/Throwable;)V

    .line 41940
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ks;->A02:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Kl;

    .line 41941
    .local p0, "contextRepairHelper":Lcom/facebook/ads/redexgen/X/Kl;
    if-eqz v0, :cond_0

    .line 41942
    invoke-interface {v0, p1, p0}, Lcom/facebook/ads/redexgen/X/Kl;->ADg(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 41943
    :cond_0
    return-void
.end method

.method private final A08(Z)V
    .locals 0

    .line 41944
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 41945
    return-void
.end method

.method private final A09(ZIIII)V
    .locals 0

    .line 41946
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 41947
    return-void
.end method

.method private final A0A(ZILandroid/graphics/Rect;)V
    .locals 0

    .line 41948
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 41949
    return-void
.end method

.method public static A0B(ZLcom/facebook/ads/redexgen/X/Kl;)V
    .locals 1

    .line 41950
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ks;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 41951
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ks;->A02:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 41952
    return-void
.end method

.method private final A0C()Z
    .locals 1

    .line 41953
    invoke-super {p0}, Landroid/widget/FrameLayout;->performClick()Z

    move-result v0

    return v0
.end method

.method private final A0D(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 41954
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method private final A0E(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 41955
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method private final A0F(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 41956
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method private final A0G(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 41957
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 2

    .line 41958
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ks;->A00()V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41959
    :catchall_0
    move-exception v1

    .line 41960
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ks;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41961
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Ks;->A07(Ljava/lang/Throwable;)V

    .line 41962
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 41963
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 41964
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    throw v1
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    .line 41965
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ks;->A01()V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41966
    :catchall_0
    move-exception v1

    .line 41967
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ks;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41968
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Ks;->A07(Ljava/lang/Throwable;)V

    .line 41969
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 41970
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 41971
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    throw v1
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 41972
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Ks;->A06(Landroid/graphics/Canvas;)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41973
    :catchall_0
    move-exception v1

    .line 41974
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ks;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41975
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Ks;->A07(Ljava/lang/Throwable;)V

    .line 41976
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 41977
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 41978
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    throw v1
.end method

.method public final onFinishInflate()V
    .locals 2

    .line 41979
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ks;->A02()V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41980
    :catchall_0
    move-exception v1

    .line 41981
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ks;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41982
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Ks;->A07(Ljava/lang/Throwable;)V

    .line 41983
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 41984
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 41985
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    throw v1
.end method

.method public final onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 2

    .line 41986
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Ks;->A0A(ZILandroid/graphics/Rect;)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41987
    :catchall_0
    move-exception v1

    .line 41988
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ks;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41989
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Ks;->A07(Ljava/lang/Throwable;)V

    .line 41990
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 41991
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 41992
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    throw v1
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 41993
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Ks;->A0D(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41994
    :catchall_0
    move-exception v1

    .line 41995
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ks;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41996
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Ks;->A07(Ljava/lang/Throwable;)V

    .line 41997
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 41998
    :cond_0
    throw v1
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 41999
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Ks;->A0E(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42000
    :catchall_0
    move-exception v1

    .line 42001
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ks;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42002
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Ks;->A07(Ljava/lang/Throwable;)V

    .line 42003
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 42004
    :cond_0
    throw v1
.end method

.method public final onLayout(ZIIII)V
    .locals 2

    .line 42005
    :try_start_0
    invoke-direct/range {p0 .. p5}, Lcom/facebook/ads/redexgen/X/Ks;->A09(ZIIII)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42006
    :catchall_0
    move-exception v1

    .line 42007
    .local p0, "throwable":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ks;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42008
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Ks;->A07(Ljava/lang/Throwable;)V

    .line 42009
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 42010
    .end local p0    # "throwable":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 42011
    .restart local p0    # "throwable":Ljava/lang/Throwable;
    :cond_0
    throw v1
.end method

.method public final onMeasure(II)V
    .locals 5

    .line 42012
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Ks;->A04(II)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42013
    :catchall_0
    move-exception v3

    .line 42014
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v4, Lcom/facebook/ads/redexgen/X/Ks;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ks;->A00:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ks;->A00:[Ljava/lang/String;

    const-string v1, "Z"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "w"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 42015
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/Ks;->A07(Ljava/lang/Throwable;)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ks;->A00:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    .line 42016
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ks;->A00:[Ljava/lang/String;

    const-string v1, "i"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "g"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 42017
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 42018
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Ks;->A00:[Ljava/lang/String;

    const-string v1, "vkL4fX6PzwoldXVPCJAguywdSt35bgjD"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "pKAP23q7ywaPjJvUhcEhiH7V9bs9jrQJ"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto :goto_0

    .line 42019
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_2
    throw v3
.end method

.method public final onSizeChanged(IIII)V
    .locals 2

    .line 42020
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/Ks;->A05(IIII)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42021
    :catchall_0
    move-exception v1

    .line 42022
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ks;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42023
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Ks;->A07(Ljava/lang/Throwable;)V

    .line 42024
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 42025
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 42026
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    throw v1
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 42027
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Ks;->A0F(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42028
    :catchall_0
    move-exception v1

    .line 42029
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ks;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42030
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Ks;->A07(Ljava/lang/Throwable;)V

    .line 42031
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 42032
    :cond_0
    throw v1
.end method

.method public final onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 42033
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Ks;->A0G(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42034
    :catchall_0
    move-exception v1

    .line 42035
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ks;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42036
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Ks;->A07(Ljava/lang/Throwable;)V

    .line 42037
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 42038
    :cond_0
    throw v1
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 2

    .line 42039
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Ks;->A08(Z)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42040
    :catchall_0
    move-exception v1

    .line 42041
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ks;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42042
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Ks;->A07(Ljava/lang/Throwable;)V

    .line 42043
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 42044
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 42045
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    throw v1
.end method

.method public final onWindowVisibilityChanged(I)V
    .locals 2

    .line 42046
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Ks;->A03(I)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42047
    :catchall_0
    move-exception v1

    .line 42048
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ks;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42049
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Ks;->A07(Ljava/lang/Throwable;)V

    .line 42050
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowVisibilityChanged(I)V

    .line 42051
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 42052
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    throw v1
.end method

.method public final performClick()Z
    .locals 2

    .line 42053
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ks;->A0C()Z

    move-result v0

    return v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42054
    :catchall_0
    move-exception v1

    .line 42055
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ks;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42056
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Ks;->A07(Ljava/lang/Throwable;)V

    .line 42057
    invoke-super {p0}, Landroid/widget/FrameLayout;->performClick()Z

    move-result v0

    return v0

    .line 42058
    :cond_0
    throw v1
.end method
