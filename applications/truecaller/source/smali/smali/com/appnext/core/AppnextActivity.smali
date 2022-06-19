.class public abstract Lcom/appnext/core/AppnextActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field public banner:Ljava/lang/String;

.field public da:Ljava/lang/String;

.field private db:Landroid/widget/RelativeLayout;

.field public dc:Landroid/widget/RelativeLayout;

.field public guid:Ljava/lang/String;

.field public handler:Landroid/os/Handler;

.field public placementID:Ljava/lang/String;

.field public userAction:Lcom/appnext/core/q;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/appnext/core/AppnextActivity;->da:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/appnext/core/AppnextActivity;->guid:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/appnext/core/AppnextActivity;->banner:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;Landroid/graphics/drawable/Drawable;)V
    .locals 8

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/appnext/core/AppnextActivity;->db:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/appnext/core/AppnextActivity;->ar()V

    .line 5
    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appnext/core/AppnextActivity;->db:Landroid/widget/RelativeLayout;

    const-string v1, "#77ffffff"

    .line 6
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 7
    iget-object v0, p0, Lcom/appnext/core/AppnextActivity;->db:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 8
    iget-object p1, p0, Lcom/appnext/core/AppnextActivity;->db:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/4 v0, -0x1

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 9
    iget-object p1, p0, Lcom/appnext/core/AppnextActivity;->db:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 10
    new-instance p1, Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    const v2, 0x1010077

    invoke-direct {p1, p0, v1, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 11
    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x1

    .line 12
    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 13
    iget-object p2, p0, Lcom/appnext/core/AppnextActivity;->db:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 14
    new-instance p2, Landroid/view/animation/RotateAnimation;

    const/high16 v2, 0x43b40000    # 360.0f

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v6, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    move-object v1, p2

    invoke-direct/range {v1 .. v7}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    const-wide/16 v1, 0x3e8

    .line 15
    invoke-virtual {p2, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 16
    invoke-virtual {p2, v0}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 17
    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setAnimation(Landroid/view/animation/Animation;)V

    .line 18
    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 p2, 0xd

    invoke-virtual {p1, p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 19
    iget-object p1, p0, Lcom/appnext/core/AppnextActivity;->db:Landroid/widget/RelativeLayout;

    new-instance p2, Lcom/appnext/core/AppnextActivity$2;

    invoke-direct {p2, p0}, Lcom/appnext/core/AppnextActivity$2;-><init>(Lcom/appnext/core/AppnextActivity;)V

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    iget-object p1, p0, Lcom/appnext/core/AppnextActivity;->handler:Landroid/os/Handler;

    new-instance p2, Lcom/appnext/core/AppnextActivity$3;

    invoke-direct {p2, p0}, Lcom/appnext/core/AppnextActivity$3;-><init>(Lcom/appnext/core/AppnextActivity;)V

    const-wide/16 v0, 0x3e80

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string p2, "AppnextActivity$showClickMask"

    .line 21
    invoke-static {p2, p1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public a(Lcom/appnext/core/AppnextAd;Lcom/appnext/core/f$a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/appnext/core/AppnextActivity;->userAction:Lcom/appnext/core/q;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/appnext/core/AppnextAd;->getImpressionURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2}, Lcom/appnext/core/q;->a(Lcom/appnext/core/AppnextAd;Ljava/lang/String;Lcom/appnext/core/f$a;)V

    :cond_0
    return-void
.end method

.method public final ar()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/appnext/core/AppnextActivity;->db:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 3
    iget-object v0, p0, Lcom/appnext/core/AppnextActivity;->db:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViewsInLayout()V

    .line 4
    iget-object v0, p0, Lcom/appnext/core/AppnextActivity;->db:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/appnext/core/AppnextActivity;->db:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/appnext/core/AppnextActivity;->db:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/appnext/core/AppnextActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    :cond_1
    iput-object v1, p0, Lcom/appnext/core/AppnextActivity;->db:Landroid/widget/RelativeLayout;

    return-void
.end method

.method public b(Lcom/appnext/core/AppnextAd;Lcom/appnext/core/f$a;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/appnext/core/AppnextActivity;->userAction:Lcom/appnext/core/q;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/appnext/core/AppnextAd;->getAppURL()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/appnext/core/AppnextActivity;->placementID:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/appnext/core/q;->a(Lcom/appnext/core/AppnextAd;Ljava/lang/String;Ljava/lang/String;Lcom/appnext/core/f$a;)V

    :cond_0
    return-void
.end method

.method public abstract getConfig()Lcom/appnext/core/SettingsManager;
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/appnext/core/o;->az()Lcom/appnext/core/o;

    move-result-object v0

    new-instance v1, Lcom/appnext/core/AppnextActivity$1;

    invoke-direct {v1, p0}, Lcom/appnext/core/AppnextActivity$1;-><init>(Lcom/appnext/core/AppnextActivity;)V

    invoke-virtual {v0, v1}, Lcom/appnext/core/o;->a(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 5
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 6
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/appnext/core/AppnextActivity;->handler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/appnext/core/AppnextActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3
    iput-object v0, p0, Lcom/appnext/core/AppnextActivity;->handler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :catchall_0
    :try_start_1
    iget-object v1, p0, Lcom/appnext/core/AppnextActivity;->userAction:Lcom/appnext/core/q;

    invoke-virtual {v1}, Lcom/appnext/core/q;->destroy()V

    .line 5
    iput-object v0, p0, Lcom/appnext/core/AppnextActivity;->userAction:Lcom/appnext/core/q;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception v0

    const-string v1, "AppnextActivity$onDestroy"

    .line 6
    invoke-static {v1, v0}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public abstract onError(Ljava/lang/String;)V
.end method
