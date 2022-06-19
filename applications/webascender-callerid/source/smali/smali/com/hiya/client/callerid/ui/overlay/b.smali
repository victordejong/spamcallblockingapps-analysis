.class public Lcom/hiya/client/callerid/ui/overlay/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private f:F

.field private g:F

.field private h:I

.field private i:I

.field private final j:Lcom/hiya/client/callerid/ui/overlay/a;

.field private final k:Landroid/view/View;

.field private final l:Landroid/view/WindowManager$LayoutParams;

.field private m:Lcom/hiya/client/callerid/ui/b0/h;


# direct methods
.method public constructor <init>(Lcom/hiya/client/callerid/ui/overlay/a;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/hiya/client/callerid/ui/b0/h;->NONE:Lcom/hiya/client/callerid/ui/b0/h;

    iput-object v0, p0, Lcom/hiya/client/callerid/ui/overlay/b;->m:Lcom/hiya/client/callerid/ui/b0/h;

    .line 3
    iput-object p1, p0, Lcom/hiya/client/callerid/ui/overlay/b;->j:Lcom/hiya/client/callerid/ui/overlay/a;

    .line 4
    iput-object p2, p0, Lcom/hiya/client/callerid/ui/overlay/b;->k:Landroid/view/View;

    .line 5
    iput-object p3, p0, Lcom/hiya/client/callerid/ui/overlay/b;->l:Landroid/view/WindowManager$LayoutParams;

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v1, :cond_4

    const/4 p1, 0x2

    if-eq v0, p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget v0, p0, Lcom/hiya/client/callerid/ui/overlay/b;->f:F

    add-float/2addr p1, v0

    float-to-int p1, p1

    .line 3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget v0, p0, Lcom/hiya/client/callerid/ui/overlay/b;->g:F

    add-float/2addr p2, v0

    float-to-int p2, p2

    .line 4
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/overlay/b;->m:Lcom/hiya/client/callerid/ui/b0/h;

    sget-object v2, Lcom/hiya/client/callerid/ui/b0/h;->NONE:Lcom/hiya/client/callerid/ui/b0/h;

    const/16 v3, 0x4b

    if-ne v0, v2, :cond_2

    .line 5
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/2addr v0, v3

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le v0, v2, :cond_1

    .line 6
    sget-object p1, Lcom/hiya/client/callerid/ui/b0/h;->HORIZONTAL:Lcom/hiya/client/callerid/ui/b0/h;

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/overlay/b;->m:Lcom/hiya/client/callerid/ui/b0/h;

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    add-int/2addr p2, v3

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-le p2, p1, :cond_6

    .line 8
    sget-object p1, Lcom/hiya/client/callerid/ui/b0/h;->VERTICAL:Lcom/hiya/client/callerid/ui/b0/h;

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/overlay/b;->m:Lcom/hiya/client/callerid/ui/b0/h;

    goto :goto_0

    .line 9
    :cond_2
    sget-object v2, Lcom/hiya/client/callerid/ui/b0/h;->VERTICAL:Lcom/hiya/client/callerid/ui/b0/h;

    if-ne v0, v2, :cond_3

    if-le p1, v3, :cond_6

    .line 10
    :cond_3
    iget-object p1, p0, Lcom/hiya/client/callerid/ui/overlay/b;->l:Landroid/view/WindowManager$LayoutParams;

    iget v0, p0, Lcom/hiya/client/callerid/ui/overlay/b;->i:I

    add-int/2addr v0, p2

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 11
    iget-object p1, p0, Lcom/hiya/client/callerid/ui/overlay/b;->j:Lcom/hiya/client/callerid/ui/overlay/a;

    invoke-interface {p1}, Lcom/hiya/client/callerid/ui/overlay/a;->a()V

    goto :goto_0

    .line 12
    :cond_4
    iget-object p2, p0, Lcom/hiya/client/callerid/ui/overlay/b;->k:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 13
    iget-object p2, p0, Lcom/hiya/client/callerid/ui/overlay/b;->k:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    iget v0, p0, Lcom/hiya/client/callerid/ui/overlay/b;->h:I

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const-wide/16 v2, 0x12c

    invoke-virtual {p2, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 14
    sget-object p2, Lcom/hiya/client/callerid/ui/b0/h;->NONE:Lcom/hiya/client/callerid/ui/b0/h;

    iput-object p2, p0, Lcom/hiya/client/callerid/ui/overlay/b;->m:Lcom/hiya/client/callerid/ui/b0/h;

    .line 15
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    goto :goto_0

    .line 16
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/hiya/client/callerid/ui/overlay/b;->f:F

    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    sub-float/2addr v0, p2

    iput v0, p0, Lcom/hiya/client/callerid/ui/overlay/b;->g:F

    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/hiya/client/callerid/ui/overlay/b;->h:I

    .line 19
    iget-object p1, p0, Lcom/hiya/client/callerid/ui/overlay/b;->l:Landroid/view/WindowManager$LayoutParams;

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iput p1, p0, Lcom/hiya/client/callerid/ui/overlay/b;->i:I

    .line 20
    iget-object p1, p0, Lcom/hiya/client/callerid/ui/overlay/b;->k:Landroid/view/View;

    const p2, 0x3f333333    # 0.7f

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    :cond_6
    :goto_0
    return v1
.end method
