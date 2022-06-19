.class public Lcom/truecaller/flashsdk/ui/customviews/BouncingView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/flashsdk/ui/customviews/BouncingView$c;,
        Lcom/truecaller/flashsdk/ui/customviews/BouncingView$b;
    }
.end annotation


# instance fields
.field public a:Ln3/m/a/e;

.field public b:I

.field public c:Lcom/truecaller/flashsdk/ui/customviews/BouncingView$c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeScroll()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/customviews/BouncingView;->a:Ln3/m/a/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ln3/m/a/e;->i(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Ln3/k/i/s;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2
    new-instance v0, Lcom/truecaller/flashsdk/ui/customviews/BouncingView$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/truecaller/flashsdk/ui/customviews/BouncingView$b;-><init>(Lcom/truecaller/flashsdk/ui/customviews/BouncingView;Lcom/truecaller/flashsdk/ui/customviews/BouncingView$a;)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p0, v1, v0}, Ln3/m/a/e;->j(Landroid/view/ViewGroup;FLn3/m/a/e$c;)Ln3/m/a/e;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/flashsdk/ui/customviews/BouncingView;->a:Ln3/m/a/e;

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/customviews/BouncingView;->a:Ln3/m/a/e;

    invoke-virtual {v0, p1}, Ln3/m/a/e;->w(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/customviews/BouncingView;->a:Ln3/m/a/e;

    invoke-virtual {v0, p1}, Ln3/m/a/e;->p(Landroid/view/MotionEvent;)V

    const/4 p1, 0x1

    return p1
.end method

.method public setDragViewResId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/truecaller/flashsdk/ui/customviews/BouncingView;->b:I

    return-void
.end method
