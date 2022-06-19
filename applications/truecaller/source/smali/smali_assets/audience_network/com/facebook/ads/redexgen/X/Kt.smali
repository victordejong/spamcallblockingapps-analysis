.class public final Lcom/facebook/ads/redexgen/X/Kt;
.super Landroid/widget/LinearLayout;
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

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "JscVEJqzE5snxFf0FJHgKRbYi5fThMYN"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "98Tc4ikzWj4puYv0qdZM5IaJNuj"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "NrxE39kCKJtZUIjvLefOnsoHZY5VCkYH"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "IRKWghuugEe9To8dUXYn546QiGafUd0F"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "iGyvM3KMGXSFWH61pr"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Kt;->A00:[Ljava/lang/String;

    .line 42059
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Kt;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 42060
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Kt;->A02:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private final A00()V
    .locals 0

    .line 42061
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 42062
    return-void
.end method

.method private final A01()V
    .locals 0

    .line 42063
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 42064
    return-void
.end method

.method private final A02()V
    .locals 0

    .line 42065
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 42066
    return-void
.end method

.method private final A03(I)V
    .locals 0

    .line 42067
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowVisibilityChanged(I)V

    .line 42068
    return-void
.end method

.method private final A04(II)V
    .locals 0

    .line 42069
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 42070
    return-void
.end method

.method private final A05(IIII)V
    .locals 0

    .line 42071
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 42072
    return-void
.end method

.method private final A06(Landroid/graphics/Canvas;)V
    .locals 0

    .line 42073
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 42074
    return-void
.end method

.method private A07(Ljava/lang/Throwable;)V
    .locals 2

    .line 42075
    invoke-static {}, Lcom/facebook/ads/redexgen/X/L2;->A00()Lcom/facebook/ads/redexgen/X/L1;

    move-result-object v1

    const/16 v0, 0xce9

    invoke-interface {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/L1;->A8g(ILjava/lang/Throwable;)V

    .line 42076
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kt;->A02:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Kl;

    .line 42077
    .local p0, "contextRepairHelper":Lcom/facebook/ads/redexgen/X/Kl;
    if-eqz v0, :cond_0

    .line 42078
    invoke-interface {v0, p1, p0}, Lcom/facebook/ads/redexgen/X/Kl;->ADg(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 42079
    :cond_0
    return-void
.end method

.method private final A08(Z)V
    .locals 0

    .line 42080
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    .line 42081
    return-void
.end method

.method private final A09(ZIIII)V
    .locals 0

    .line 42082
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 42083
    return-void
.end method

.method private final A0A(ZILandroid/graphics/Rect;)V
    .locals 0

    .line 42084
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 42085
    return-void
.end method

.method public static A0B(ZLcom/facebook/ads/redexgen/X/Kl;)V
    .locals 1

    .line 42086
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kt;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 42087
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kt;->A02:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 42088
    return-void
.end method

.method private final A0C()Z
    .locals 1

    .line 42089
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v0

    return v0
.end method

.method private final A0D(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 42090
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method private final A0E(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 42091
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method private final A0F(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 42092
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method private final A0G(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 42093
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 3

    .line 42094
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kt;->A00()V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42095
    :catchall_0
    move-exception v1

    .line 42096
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kt;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 42097
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Kt;->A07(Ljava/lang/Throwable;)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/Kt;->A00:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xd

    if-eq v1, v0, :cond_0

    .line 42098
    sget-object v2, Lcom/facebook/ads/redexgen/X/Kt;->A00:[Ljava/lang/String;

    const-string v1, ""

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, ""

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 42099
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 42100
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_1
    throw v1
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    .line 42101
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kt;->A01()V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42102
    :catchall_0
    move-exception v1

    .line 42103
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kt;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42104
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Kt;->A07(Ljava/lang/Throwable;)V

    .line 42105
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 42106
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 42107
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    throw v1
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 42108
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Kt;->A06(Landroid/graphics/Canvas;)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42109
    :catchall_0
    move-exception v1

    .line 42110
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kt;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42111
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Kt;->A07(Ljava/lang/Throwable;)V

    .line 42112
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 42113
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 42114
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    throw v1
.end method

.method public final onFinishInflate()V
    .locals 2

    .line 42115
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kt;->A02()V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42116
    :catchall_0
    move-exception v1

    .line 42117
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kt;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42118
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Kt;->A07(Ljava/lang/Throwable;)V

    .line 42119
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 42120
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 42121
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    throw v1
.end method

.method public final onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 2

    .line 42122
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Kt;->A0A(ZILandroid/graphics/Rect;)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42123
    :catchall_0
    move-exception v1

    .line 42124
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kt;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42125
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Kt;->A07(Ljava/lang/Throwable;)V

    .line 42126
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 42127
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 42128
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    throw v1
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 42129
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Kt;->A0D(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42130
    :catchall_0
    move-exception v1

    .line 42131
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kt;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42132
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Kt;->A07(Ljava/lang/Throwable;)V

    .line 42133
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 42134
    :cond_0
    throw v1
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 42135
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Kt;->A0E(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42136
    :catchall_0
    move-exception v1

    .line 42137
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kt;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42138
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Kt;->A07(Ljava/lang/Throwable;)V

    .line 42139
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 42140
    :cond_0
    throw v1
.end method

.method public final onLayout(ZIIII)V
    .locals 2

    .line 42141
    :try_start_0
    invoke-direct/range {p0 .. p5}, Lcom/facebook/ads/redexgen/X/Kt;->A09(ZIIII)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42142
    :catchall_0
    move-exception v1

    .line 42143
    .local p0, "throwable":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kt;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42144
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Kt;->A07(Ljava/lang/Throwable;)V

    .line 42145
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 42146
    .end local p0    # "throwable":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 42147
    .restart local p0    # "throwable":Ljava/lang/Throwable;
    :cond_0
    throw v1
.end method

.method public final onMeasure(II)V
    .locals 2

    .line 42148
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Kt;->A04(II)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42149
    :catchall_0
    move-exception v1

    .line 42150
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kt;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42151
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Kt;->A07(Ljava/lang/Throwable;)V

    .line 42152
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 42153
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 42154
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    throw v1
.end method

.method public final onSizeChanged(IIII)V
    .locals 3

    .line 42155
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/Kt;->A05(IIII)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42156
    :catchall_0
    move-exception v1

    .line 42157
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kt;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 42158
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Kt;->A07(Ljava/lang/Throwable;)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/Kt;->A00:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xd

    if-eq v1, v0, :cond_0

    .line 42159
    sget-object v2, Lcom/facebook/ads/redexgen/X/Kt;->A00:[Ljava/lang/String;

    const-string v1, "MH26u4dEv805dgSIeYYXQ23GOqCTLqJu"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 42160
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 42161
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_1
    throw v1
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 42162
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Kt;->A0F(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42163
    :catchall_0
    move-exception v1

    .line 42164
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kt;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42165
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Kt;->A07(Ljava/lang/Throwable;)V

    .line 42166
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 42167
    :cond_0
    throw v1
.end method

.method public final onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 42168
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Kt;->A0G(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42169
    :catchall_0
    move-exception v1

    .line 42170
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kt;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42171
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Kt;->A07(Ljava/lang/Throwable;)V

    .line 42172
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 42173
    :cond_0
    throw v1
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 2

    .line 42174
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Kt;->A08(Z)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42175
    :catchall_0
    move-exception v1

    .line 42176
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kt;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42177
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Kt;->A07(Ljava/lang/Throwable;)V

    .line 42178
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    .line 42179
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 42180
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    throw v1
.end method

.method public final onWindowVisibilityChanged(I)V
    .locals 2

    .line 42181
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Kt;->A03(I)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42182
    :catchall_0
    move-exception v1

    .line 42183
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kt;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42184
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Kt;->A07(Ljava/lang/Throwable;)V

    .line 42185
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowVisibilityChanged(I)V

    .line 42186
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 42187
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    throw v1
.end method

.method public final performClick()Z
    .locals 4

    .line 42188
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kt;->A0C()Z

    move-result v0

    return v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42189
    :catchall_0
    move-exception v1

    .line 42190
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kt;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 42191
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Kt;->A07(Ljava/lang/Throwable;)V

    .line 42192
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Kt;->A00:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x12

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Kt;->A00:[Ljava/lang/String;

    const-string v1, "AcVK2d2xNjImmhnoUD9nKEsQb"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return v3

    .line 42193
    :cond_1
    throw v1
.end method
