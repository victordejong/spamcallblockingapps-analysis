.class public Le/a/i/a/d;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field public static final synthetic e:I


# instance fields
.field public final a:Le/a/i/f0/m/c;

.field public final b:Landroid/view/ViewGroup;

.field public final c:Lcom/truecaller/ads/ui/VideoFrame;

.field public final d:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Le/a/i/f0/m/c;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p1, p0, Le/a/i/a/d;->b:Landroid/view/ViewGroup;

    .line 3
    iput-object p2, p0, Le/a/i/a/d;->a:Le/a/i/f0/m/c;

    .line 4
    iget-object p2, p2, Le/a/i/f0/m/b;->b:Ljava/lang/Object;

    .line 5
    check-cast p2, Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;

    .line 6
    invoke-interface {p2}, Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;->getCustomFormatId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/truecaller/ads/CustomTemplate;->CLICK_TO_PLAY_VIDEO:Lcom/truecaller/ads/CustomTemplate;

    iget-object v2, v1, Lcom/truecaller/ads/CustomTemplate;->templateId:Ljava/lang/String;

    invoke-static {v0, v2}, Lw3/c/a/a/a/h;->e(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "CTAbuttoncolor"

    .line 7
    invoke-interface {p2, v0}, Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    const/high16 v0, -0x1000000

    :goto_0
    :try_start_1
    const-string v1, "CTAbuttontextcolor"

    .line 9
    invoke-interface {p2, v1}, Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 10
    invoke-static {v1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    const/4 v1, -0x1

    :goto_1
    const-string v2, "CTAtext"

    .line 11
    invoke-interface {p2, v2}, Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 12
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 13
    sget v3, Lcom/truecaller/ads/R$layout;->ad_custom_overlay_clicktoplay:I

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Le/a/i/a/d;->d:Landroid/view/ViewGroup;

    .line 14
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 15
    sget v3, Lcom/truecaller/ads/R$id;->custom_ad_media_frame:I

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/truecaller/ads/ui/VideoFrame;

    iput-object v3, p0, Le/a/i/a/d;->c:Lcom/truecaller/ads/ui/VideoFrame;

    .line 16
    invoke-interface {p2}, Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;->getVideoMediaView()Lcom/google/android/gms/ads/nativead/MediaView;

    move-result-object v5

    invoke-interface {p2}, Lcom/google/android/gms/ads/nativead/NativeCustomFormatAd;->getVideoController()Lcom/google/android/gms/ads/VideoController;

    move-result-object p2

    sget-object v6, Le/a/i/a/g$a;->a:Le/a/i/a/g$a;

    invoke-virtual {v3, v5, p2, v6}, Lcom/truecaller/ads/ui/VideoFrame;->h1(Lcom/google/android/gms/ads/nativead/MediaView;Lcom/google/android/gms/ads/VideoController;Le/a/i/a/g;)Z

    .line 17
    sget p2, Lcom/truecaller/ads/R$id;->close:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance v3, Le/a/i/a/b;

    invoke-direct {v3, p0}, Le/a/i/a/b;-><init>(Le/a/i/a/d;)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    sget p2, Lcom/truecaller/ads/R$id;->more_url:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatButton;

    .line 19
    new-instance p2, Landroid/content/res/ColorStateList;

    const/4 v3, 0x1

    new-array v5, v3, [[I

    new-array v6, v4, [I

    aput-object v6, v5, v4

    new-array v6, v3, [I

    aput v0, v6, v4

    invoke-direct {p2, v5, v6}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 20
    sget-object v0, Ln3/k/i/s;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 21
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 22
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 23
    invoke-virtual {p1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 24
    new-instance p2, Le/a/i/a/c;

    invoke-direct {p2, p0}, Le/a/i/a/c;-><init>(Le/a/i/a/d;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 26
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    .line 27
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 28
    iget-object p1, p0, Le/a/i/a/d;->b:Landroid/view/ViewGroup;

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void

    .line 29
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Only "

    invoke-static {p2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, v1, Lcom/truecaller/ads/CustomTemplate;->templateId:Ljava/lang/String;

    const-string v1, " template supported"

    invoke-static {p2, v0, v1}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/i/a/d;->c:Lcom/truecaller/ads/ui/VideoFrame;

    invoke-virtual {v0}, Lcom/truecaller/ads/ui/VideoFrame;->g1()V

    .line 2
    iget-object v0, p0, Le/a/i/a/d;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 3
    iget-object v0, p0, Le/a/i/a/d;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 4
    iget-object v0, p0, Le/a/i/a/d;->b:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {v0, p1, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    return v2

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0, p1}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0}, Le/a/i/a/d;->a()V

    return v2

    .line 7
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
