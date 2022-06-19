.class public final Lcom/truecaller/ui/view/VerticalNestedScrollView;
.super Landroidx/core/widget/NestedScrollView;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R\u0016\u0010\n\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\tR\u0016\u0010\u000c\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\tR\u0016\u0010\u0010\u001a\u00020\r8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000fR\u0016\u0010\u0012\u001a\u00020\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u000fR\u0016\u0010\u0014\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\tR\u0016\u0010\u0016\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\t\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/truecaller/ui/view/VerticalNestedScrollView;",
        "Landroidx/core/widget/NestedScrollView;",
        "Landroid/view/MotionEvent;",
        "motion",
        "",
        "onInterceptTouchEvent",
        "(Landroid/view/MotionEvent;)Z",
        "",
        "D",
        "F",
        "xDistance",
        "K",
        "lastY",
        "",
        "L",
        "I",
        "touchSlop",
        "C",
        "gestureDirection",
        "E",
        "yDistance",
        "J",
        "lastX",
        "truecaller_googlePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public C:I

.field public D:F

.field public E:F

.field public J:F

.field public K:F

.field public final L:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    const-string v2, "ViewConfiguration.get(context)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    const-string v2, "context"

    .line 2
    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1, p2, v0}, Landroidx/core/widget/NestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v1, p0, Lcom/truecaller/ui/view/VerticalNestedScrollView;->L:I

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const-string v0, "motion"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 4
    iget v3, p0, Lcom/truecaller/ui/view/VerticalNestedScrollView;->D:F

    iget v4, p0, Lcom/truecaller/ui/view/VerticalNestedScrollView;->J:F

    sub-float v4, v0, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    add-float/2addr v4, v3

    iput v4, p0, Lcom/truecaller/ui/view/VerticalNestedScrollView;->D:F

    .line 5
    iget v3, p0, Lcom/truecaller/ui/view/VerticalNestedScrollView;->E:F

    iget v4, p0, Lcom/truecaller/ui/view/VerticalNestedScrollView;->K:F

    sub-float v4, v2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    add-float/2addr v4, v3

    iput v4, p0, Lcom/truecaller/ui/view/VerticalNestedScrollView;->E:F

    .line 6
    iput v0, p0, Lcom/truecaller/ui/view/VerticalNestedScrollView;->J:F

    .line 7
    iput v2, p0, Lcom/truecaller/ui/view/VerticalNestedScrollView;->K:F

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/truecaller/ui/view/VerticalNestedScrollView;->D:F

    .line 9
    iput v0, p0, Lcom/truecaller/ui/view/VerticalNestedScrollView;->E:F

    .line 10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/truecaller/ui/view/VerticalNestedScrollView;->J:F

    .line 11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/truecaller/ui/view/VerticalNestedScrollView;->K:F

    .line 12
    iput v1, p0, Lcom/truecaller/ui/view/VerticalNestedScrollView;->C:I

    .line 13
    :goto_0
    invoke-super {p0, p1}, Landroidx/core/widget/NestedScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_6

    .line 14
    iget p1, p0, Lcom/truecaller/ui/view/VerticalNestedScrollView;->E:F

    iget v3, p0, Lcom/truecaller/ui/view/VerticalNestedScrollView;->L:I

    int-to-float v3, v3

    cmpl-float v4, p1, v3

    if-gtz v4, :cond_2

    iget v4, p0, Lcom/truecaller/ui/view/VerticalNestedScrollView;->D:F

    cmpl-float v3, v4, v3

    if-lez v3, :cond_4

    :cond_2
    iget v3, p0, Lcom/truecaller/ui/view/VerticalNestedScrollView;->C:I

    if-ne v3, v1, :cond_4

    .line 15
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v1, p0, Lcom/truecaller/ui/view/VerticalNestedScrollView;->D:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_3

    move p1, v2

    goto :goto_1

    :cond_3
    move p1, v0

    :goto_1
    iput p1, p0, Lcom/truecaller/ui/view/VerticalNestedScrollView;->C:I

    .line 16
    :cond_4
    iget p1, p0, Lcom/truecaller/ui/view/VerticalNestedScrollView;->C:I

    if-nez p1, :cond_5

    move p1, v0

    goto :goto_2

    :cond_5
    move p1, v2

    :goto_2
    if-eqz p1, :cond_6

    goto :goto_3

    :cond_6
    move v0, v2

    :goto_3
    return v0
.end method
