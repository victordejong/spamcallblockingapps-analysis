.class public final Lcom/facebook/ads/redexgen/X/Ku;
.super Landroid/widget/RelativeLayout;
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

    const-string v0, "rKALTBDYJCbaiFNXEtUJroCn52VpZZ"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "JV6MiXKUyj6JCzF1u"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "kCmdEzEHbLuzxIacOyabQp9NKin7bt2r"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "jWcGCQZMqdkAqfRZe6"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "nlkBBG2n0OIOkXKFHLw9fg1KFY8VWnLB"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "EEOdRs0yxrMLewCcdlWj6UoX1OR7WiBI"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "iBrckNfFoUM659sftuZ"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "XnvO082n6pbwhWKAJ"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Ku;->A00:[Ljava/lang/String;

    .line 42194
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ku;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 42195
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ku;->A02:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private final A00()V
    .locals 0

    .line 42196
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 42197
    return-void
.end method

.method private final A01()V
    .locals 0

    .line 42198
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 42199
    return-void
.end method

.method private final A02()V
    .locals 0

    .line 42200
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 42201
    return-void
.end method

.method private final A03(I)V
    .locals 0

    .line 42202
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowVisibilityChanged(I)V

    .line 42203
    return-void
.end method

.method private final A04(II)V
    .locals 0

    .line 42204
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 42205
    return-void
.end method

.method private final A05(IIII)V
    .locals 0

    .line 42206
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    .line 42207
    return-void
.end method

.method private final A06(Landroid/graphics/Canvas;)V
    .locals 0

    .line 42208
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 42209
    return-void
.end method

.method private A07(Ljava/lang/Throwable;)V
    .locals 2

    .line 42210
    invoke-static {}, Lcom/facebook/ads/redexgen/X/L2;->A00()Lcom/facebook/ads/redexgen/X/L1;

    move-result-object v1

    const/16 v0, 0xce9

    invoke-interface {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/L1;->A8g(ILjava/lang/Throwable;)V

    .line 42211
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ku;->A02:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Kl;

    .line 42212
    .local p0, "contextRepairHelper":Lcom/facebook/ads/redexgen/X/Kl;
    if-eqz v0, :cond_0

    .line 42213
    invoke-interface {v0, p1, p0}, Lcom/facebook/ads/redexgen/X/Kl;->ADg(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 42214
    :cond_0
    return-void
.end method

.method private final A08(Z)V
    .locals 0

    .line 42215
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowFocusChanged(Z)V

    .line 42216
    return-void
.end method

.method private final A09(ZIIII)V
    .locals 0

    .line 42217
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 42218
    return-void
.end method

.method private final A0A(ZILandroid/graphics/Rect;)V
    .locals 0

    .line 42219
    invoke-super {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 42220
    return-void
.end method

.method public static A0B(ZLcom/facebook/ads/redexgen/X/Kl;)V
    .locals 1

    .line 42221
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ku;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 42222
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ku;->A02:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 42223
    return-void
.end method

.method private final A0C()Z
    .locals 1

    .line 42224
    invoke-super {p0}, Landroid/widget/RelativeLayout;->performClick()Z

    move-result v0

    return v0
.end method

.method private final A0D(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 42225
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method private final A0E(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 42226
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method private final A0F(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 42227
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method private final A0G(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 42228
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 2

    .line 42229
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ku;->A00()V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42230
    :catchall_0
    move-exception v1

    .line 42231
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ku;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42232
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Ku;->A07(Ljava/lang/Throwable;)V

    .line 42233
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 42234
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 42235
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    throw v1
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    .line 42236
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ku;->A01()V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42237
    :catchall_0
    move-exception v1

    .line 42238
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ku;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42239
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Ku;->A07(Ljava/lang/Throwable;)V

    .line 42240
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 42241
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 42242
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    throw v1
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 42243
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Ku;->A06(Landroid/graphics/Canvas;)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42244
    :catchall_0
    move-exception v1

    .line 42245
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ku;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42246
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Ku;->A07(Ljava/lang/Throwable;)V

    .line 42247
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 42248
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 42249
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    throw v1
.end method

.method public final onFinishInflate()V
    .locals 2

    .line 42250
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ku;->A02()V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42251
    :catchall_0
    move-exception v1

    .line 42252
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ku;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42253
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Ku;->A07(Ljava/lang/Throwable;)V

    .line 42254
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 42255
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 42256
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    throw v1
.end method

.method public final onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 5

    .line 42257
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Ku;->A0A(ZILandroid/graphics/Rect;)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42258
    :catchall_0
    move-exception v4

    .line 42259
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ku;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ku;->A00:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x38

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ku;->A00:[Ljava/lang/String;

    const-string v1, "cWID6xQloznFOrhLXGfxCs3XAeGgBa"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v3, :cond_0

    .line 42260
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/Ku;->A07(Ljava/lang/Throwable;)V

    .line 42261
    invoke-super {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 42262
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 42263
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    throw v4

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 42264
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Ku;->A0D(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42265
    :catchall_0
    move-exception v1

    .line 42266
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ku;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42267
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Ku;->A07(Ljava/lang/Throwable;)V

    .line 42268
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 42269
    :cond_0
    throw v1
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 42270
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Ku;->A0E(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42271
    :catchall_0
    move-exception v1

    .line 42272
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ku;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42273
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Ku;->A07(Ljava/lang/Throwable;)V

    .line 42274
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 42275
    :cond_0
    throw v1
.end method

.method public final onLayout(ZIIII)V
    .locals 2

    .line 42276
    :try_start_0
    invoke-direct/range {p0 .. p5}, Lcom/facebook/ads/redexgen/X/Ku;->A09(ZIIII)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42277
    :catchall_0
    move-exception v1

    .line 42278
    .local p0, "throwable":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ku;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42279
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Ku;->A07(Ljava/lang/Throwable;)V

    .line 42280
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 42281
    .end local p0    # "throwable":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 42282
    .restart local p0    # "throwable":Ljava/lang/Throwable;
    :cond_0
    throw v1
.end method

.method public final onMeasure(II)V
    .locals 2

    .line 42283
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Ku;->A04(II)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42284
    :catchall_0
    move-exception v1

    .line 42285
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ku;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42286
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Ku;->A07(Ljava/lang/Throwable;)V

    .line 42287
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 42288
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 42289
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    throw v1
.end method

.method public final onSizeChanged(IIII)V
    .locals 2

    .line 42290
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/Ku;->A05(IIII)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42291
    :catchall_0
    move-exception v1

    .line 42292
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ku;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42293
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Ku;->A07(Ljava/lang/Throwable;)V

    .line 42294
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    .line 42295
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 42296
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    throw v1
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 42297
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Ku;->A0F(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42298
    :catchall_0
    move-exception v1

    .line 42299
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ku;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42300
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Ku;->A07(Ljava/lang/Throwable;)V

    .line 42301
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 42302
    :cond_0
    throw v1
.end method

.method public final onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 42303
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Ku;->A0G(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42304
    :catchall_0
    move-exception v1

    .line 42305
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ku;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42306
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Ku;->A07(Ljava/lang/Throwable;)V

    .line 42307
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 42308
    :cond_0
    throw v1
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 2

    .line 42309
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Ku;->A08(Z)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42310
    :catchall_0
    move-exception v1

    .line 42311
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ku;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42312
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Ku;->A07(Ljava/lang/Throwable;)V

    .line 42313
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowFocusChanged(Z)V

    .line 42314
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 42315
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    throw v1
.end method

.method public final onWindowVisibilityChanged(I)V
    .locals 2

    .line 42316
    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Ku;->A03(I)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42317
    :catchall_0
    move-exception v1

    .line 42318
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ku;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42319
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Ku;->A07(Ljava/lang/Throwable;)V

    .line 42320
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowVisibilityChanged(I)V

    .line 42321
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 42322
    .restart local p0    # "t":Ljava/lang/Throwable;
    :cond_0
    throw v1
.end method

.method public final performClick()Z
    .locals 2

    .line 42323
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ku;->A0C()Z

    move-result v0

    return v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42324
    :catchall_0
    move-exception v1

    .line 42325
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v0, Lcom/facebook/ads/redexgen/X/Ku;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42326
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Ku;->A07(Ljava/lang/Throwable;)V

    .line 42327
    invoke-super {p0}, Landroid/widget/RelativeLayout;->performClick()Z

    move-result v0

    return v0

    .line 42328
    :cond_0
    throw v1
.end method
