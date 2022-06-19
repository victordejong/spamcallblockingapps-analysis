.class public Lcom/truecaller/ui/components/FloatingWindow$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/ui/components/FloatingWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final a:F

.field public final b:F

.field public c:F

.field public d:F

.field public e:I

.field public f:F

.field public g:F

.field public h:Landroid/view/VelocityTracker;

.field public final synthetic i:Lcom/truecaller/ui/components/FloatingWindow;


# direct methods
.method public constructor <init>(Lcom/truecaller/ui/components/FloatingWindow;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/truecaller/ui/components/FloatingWindow$d;->i:Lcom/truecaller/ui/components/FloatingWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/ui/components/FloatingWindow$d;->h:Landroid/view/VelocityTracker;

    .line 3
    iget-object p1, p1, Lcom/truecaller/ui/components/FloatingWindow;->a:Landroid/content/Context;

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x41c80000    # 25.0f

    mul-float/2addr v0, p1

    .line 5
    iput v0, p0, Lcom/truecaller/ui/components/FloatingWindow$d;->b:F

    const/high16 v0, 0x43c80000    # 400.0f

    mul-float/2addr p1, v0

    .line 6
    iput p1, p0, Lcom/truecaller/ui/components/FloatingWindow$d;->a:F

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/truecaller/ui/components/FloatingWindow$d;->h:Landroid/view/VelocityTracker;

    invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_d

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq p1, v0, :cond_7

    if-eq p1, v1, :cond_0

    return v2

    .line 3
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Lcom/truecaller/ui/components/FloatingWindow$d;->f:F

    .line 4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/truecaller/ui/components/FloatingWindow$d;->g:F

    .line 5
    iget p2, p0, Lcom/truecaller/ui/components/FloatingWindow$d;->f:F

    iget v1, p0, Lcom/truecaller/ui/components/FloatingWindow$d;->c:F

    sub-float/2addr p2, v1

    .line 6
    iget v1, p0, Lcom/truecaller/ui/components/FloatingWindow$d;->d:F

    sub-float/2addr p1, v1

    .line 7
    iget-object v1, p0, Lcom/truecaller/ui/components/FloatingWindow$d;->i:Lcom/truecaller/ui/components/FloatingWindow;

    .line 8
    iget-boolean v3, v1, Lcom/truecaller/ui/components/FloatingWindow;->l:Z

    if-nez v3, :cond_2

    .line 9
    iget-boolean v1, v1, Lcom/truecaller/ui/components/FloatingWindow;->k:Z

    if-nez v1, :cond_2

    .line 10
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v3, p0, Lcom/truecaller/ui/components/FloatingWindow$d;->i:Lcom/truecaller/ui/components/FloatingWindow;

    .line 11
    iget v4, v3, Lcom/truecaller/ui/components/FloatingWindow;->n:I

    int-to-float v4, v4

    cmpl-float v1, v1, v4

    if-lez v1, :cond_1

    .line 12
    iput-boolean v0, v3, Lcom/truecaller/ui/components/FloatingWindow;->k:Z

    goto :goto_0

    .line 13
    :cond_1
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v3, p0, Lcom/truecaller/ui/components/FloatingWindow$d;->i:Lcom/truecaller/ui/components/FloatingWindow;

    .line 14
    iget v4, v3, Lcom/truecaller/ui/components/FloatingWindow;->n:I

    int-to-float v4, v4

    cmpl-float v1, v1, v4

    if-lez v1, :cond_2

    .line 15
    iput-boolean v0, v3, Lcom/truecaller/ui/components/FloatingWindow;->l:Z

    .line 16
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/truecaller/ui/components/FloatingWindow$d;->i:Lcom/truecaller/ui/components/FloatingWindow;

    .line 17
    iget-boolean v3, v1, Lcom/truecaller/ui/components/FloatingWindow;->k:Z

    if-eqz v3, :cond_5

    .line 18
    iget v3, p0, Lcom/truecaller/ui/components/FloatingWindow$d;->e:I

    int-to-float v3, v3

    add-float/2addr v3, p1

    float-to-int p1, v3

    if-gez p1, :cond_3

    .line 19
    iget-object p1, v1, Lcom/truecaller/ui/components/FloatingWindow;->e:Landroid/view/WindowManager$LayoutParams;

    .line 20
    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_1

    .line 21
    :cond_3
    iget v2, v1, Lcom/truecaller/ui/components/FloatingWindow;->i:I

    .line 22
    iget-object v1, v1, Lcom/truecaller/ui/components/FloatingWindow;->o:Landroid/view/View;

    .line 23
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v2, v1

    if-le p1, v2, :cond_4

    .line 24
    iget-object p1, p0, Lcom/truecaller/ui/components/FloatingWindow$d;->i:Lcom/truecaller/ui/components/FloatingWindow;

    .line 25
    iget-object v1, p1, Lcom/truecaller/ui/components/FloatingWindow;->e:Landroid/view/WindowManager$LayoutParams;

    .line 26
    iget v2, p1, Lcom/truecaller/ui/components/FloatingWindow;->i:I

    .line 27
    iget-object p1, p1, Lcom/truecaller/ui/components/FloatingWindow;->o:Landroid/view/View;

    .line 28
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    sub-int/2addr v2, p1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_1

    .line 29
    :cond_4
    iget-object v1, p0, Lcom/truecaller/ui/components/FloatingWindow$d;->i:Lcom/truecaller/ui/components/FloatingWindow;

    .line 30
    iget-object v1, v1, Lcom/truecaller/ui/components/FloatingWindow;->e:Landroid/view/WindowManager$LayoutParams;

    .line 31
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 32
    :goto_1
    iget-object p1, p0, Lcom/truecaller/ui/components/FloatingWindow$d;->i:Lcom/truecaller/ui/components/FloatingWindow;

    .line 33
    iget-object v1, p1, Lcom/truecaller/ui/components/FloatingWindow;->d:Landroid/view/WindowManager;

    .line 34
    iget-object v2, p1, Lcom/truecaller/ui/components/FloatingWindow;->f:Landroid/widget/FrameLayout;

    .line 35
    iget-object p1, p1, Lcom/truecaller/ui/components/FloatingWindow;->e:Landroid/view/WindowManager$LayoutParams;

    .line 36
    invoke-interface {v1, v2, p1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 37
    :cond_5
    iget-object p1, p0, Lcom/truecaller/ui/components/FloatingWindow$d;->i:Lcom/truecaller/ui/components/FloatingWindow;

    .line 38
    iget-boolean p1, p1, Lcom/truecaller/ui/components/FloatingWindow;->l:Z

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    .line 39
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v2, p0, Lcom/truecaller/ui/components/FloatingWindow$d;->i:Lcom/truecaller/ui/components/FloatingWindow;

    .line 40
    iget v2, v2, Lcom/truecaller/ui/components/FloatingWindow;->h:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    .line 41
    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 42
    iget-object v1, p0, Lcom/truecaller/ui/components/FloatingWindow$d;->i:Lcom/truecaller/ui/components/FloatingWindow;

    .line 43
    iget-object v1, v1, Lcom/truecaller/ui/components/FloatingWindow;->o:Landroid/view/View;

    .line 44
    invoke-virtual {v1, p1}, Landroid/view/View;->setAlpha(F)V

    .line 45
    iget-object p1, p0, Lcom/truecaller/ui/components/FloatingWindow$d;->i:Lcom/truecaller/ui/components/FloatingWindow;

    .line 46
    iget-object p1, p1, Lcom/truecaller/ui/components/FloatingWindow;->o:Landroid/view/View;

    .line 47
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    :cond_6
    return v0

    .line 48
    :cond_7
    iget-object p1, p0, Lcom/truecaller/ui/components/FloatingWindow$d;->i:Lcom/truecaller/ui/components/FloatingWindow;

    .line 49
    iget-boolean p1, p1, Lcom/truecaller/ui/components/FloatingWindow;->l:Z

    if-eqz p1, :cond_c

    .line 50
    iget-object p1, p0, Lcom/truecaller/ui/components/FloatingWindow$d;->h:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    invoke-virtual {p1, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 51
    iget-object p1, p0, Lcom/truecaller/ui/components/FloatingWindow$d;->h:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p1

    .line 52
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/truecaller/ui/components/FloatingWindow$d;->a:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_8

    iget v3, p0, Lcom/truecaller/ui/components/FloatingWindow$d;->c:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p2

    sub-float/2addr v3, p2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iget v3, p0, Lcom/truecaller/ui/components/FloatingWindow$d;->b:F

    cmpl-float p2, p2, v3

    if-gtz p2, :cond_9

    :cond_8
    iget-object p2, p0, Lcom/truecaller/ui/components/FloatingWindow$d;->i:Lcom/truecaller/ui/components/FloatingWindow;

    .line 53
    iget-object p2, p2, Lcom/truecaller/ui/components/FloatingWindow;->o:Landroid/view/View;

    .line 54
    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iget-object v3, p0, Lcom/truecaller/ui/components/FloatingWindow$d;->i:Lcom/truecaller/ui/components/FloatingWindow;

    .line 55
    iget v4, v3, Lcom/truecaller/ui/components/FloatingWindow;->h:I

    .line 56
    div-int/2addr v4, v1

    int-to-float v4, v4

    cmpl-float p2, p2, v4

    if-ltz p2, :cond_b

    .line 57
    :cond_9
    iget-object p2, p0, Lcom/truecaller/ui/components/FloatingWindow$d;->i:Lcom/truecaller/ui/components/FloatingWindow;

    .line 58
    iget-object p2, p2, Lcom/truecaller/ui/components/FloatingWindow;->o:Landroid/view/View;

    .line 59
    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iget-object v3, p0, Lcom/truecaller/ui/components/FloatingWindow$d;->i:Lcom/truecaller/ui/components/FloatingWindow;

    .line 60
    iget v4, v3, Lcom/truecaller/ui/components/FloatingWindow;->h:I

    .line 61
    div-int/2addr v4, v1

    int-to-float v1, v4

    cmpl-float p2, p2, v1

    if-ltz p2, :cond_a

    .line 62
    iget-object p1, v3, Lcom/truecaller/ui/components/FloatingWindow;->o:Landroid/view/View;

    .line 63
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p1

    .line 64
    :cond_a
    iget-object p2, p0, Lcom/truecaller/ui/components/FloatingWindow$d;->i:Lcom/truecaller/ui/components/FloatingWindow;

    .line 65
    iget v1, p2, Lcom/truecaller/ui/components/FloatingWindow;->h:I

    int-to-float v1, v1

    .line 66
    invoke-static {v1, p1}, Ljava/lang/Math;->copySign(FF)F

    move-result p1

    float-to-int p1, p1

    .line 67
    invoke-virtual {p2, p1}, Lcom/truecaller/ui/components/FloatingWindow;->a(I)V

    goto :goto_2

    .line 68
    :cond_b
    invoke-virtual {v3, v2}, Lcom/truecaller/ui/components/FloatingWindow;->a(I)V

    .line 69
    :goto_2
    iget-object p1, p0, Lcom/truecaller/ui/components/FloatingWindow$d;->i:Lcom/truecaller/ui/components/FloatingWindow;

    .line 70
    iput-boolean v2, p1, Lcom/truecaller/ui/components/FloatingWindow;->l:Z

    .line 71
    :cond_c
    iget-object p1, p0, Lcom/truecaller/ui/components/FloatingWindow$d;->i:Lcom/truecaller/ui/components/FloatingWindow;

    .line 72
    iput-boolean v2, p1, Lcom/truecaller/ui/components/FloatingWindow;->k:Z

    return v0

    .line 73
    :cond_d
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Lcom/truecaller/ui/components/FloatingWindow$d;->f:F

    iput p1, p0, Lcom/truecaller/ui/components/FloatingWindow$d;->c:F

    .line 74
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/truecaller/ui/components/FloatingWindow$d;->g:F

    iput p1, p0, Lcom/truecaller/ui/components/FloatingWindow$d;->d:F

    .line 75
    iget-object p1, p0, Lcom/truecaller/ui/components/FloatingWindow$d;->i:Lcom/truecaller/ui/components/FloatingWindow;

    .line 76
    iget-object p2, p1, Lcom/truecaller/ui/components/FloatingWindow;->e:Landroid/view/WindowManager$LayoutParams;

    .line 77
    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    iput p2, p0, Lcom/truecaller/ui/components/FloatingWindow$d;->e:I

    .line 78
    iget v1, p1, Lcom/truecaller/ui/components/FloatingWindow;->i:I

    .line 79
    iget-object p1, p1, Lcom/truecaller/ui/components/FloatingWindow;->o:Landroid/view/View;

    .line 80
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    sub-int/2addr v1, p1

    if-le p2, v1, :cond_e

    .line 81
    iget-object p1, p0, Lcom/truecaller/ui/components/FloatingWindow$d;->i:Lcom/truecaller/ui/components/FloatingWindow;

    .line 82
    iget p2, p1, Lcom/truecaller/ui/components/FloatingWindow;->i:I

    .line 83
    iget-object p1, p1, Lcom/truecaller/ui/components/FloatingWindow;->o:Landroid/view/View;

    .line 84
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/truecaller/ui/components/FloatingWindow$d;->e:I

    :cond_e
    return v0
.end method
