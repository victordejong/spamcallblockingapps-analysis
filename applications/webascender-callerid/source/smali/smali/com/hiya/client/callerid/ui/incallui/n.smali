.class public final Lcom/hiya/client/callerid/ui/incallui/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private f:Ljava/lang/Integer;

.field private g:Ljava/lang/Float;

.field private h:F

.field private i:F

.field private final j:Landroid/view/View;

.field private final k:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiBlock"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/incallui/n;->j:Landroid/view/View;

    iput-object p2, p0, Lcom/hiya/client/callerid/ui/incallui/n;->k:Landroid/view/View;

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 4
    new-instance p1, Lcom/hiya/client/callerid/ui/incallui/n$a;

    invoke-direct {p1, p0}, Lcom/hiya/client/callerid/ui/incallui/n$a;-><init>(Lcom/hiya/client/callerid/ui/incallui/n;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static final synthetic a(Lcom/hiya/client/callerid/ui/incallui/n;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hiya/client/callerid/ui/incallui/n;->b(Z)V

    return-void
.end method

.method private final b(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/n;->j:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/hiya/client/callerid/ui/incallui/n;->g:Ljava/lang/Float;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/n;->k:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 3
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/n;->k:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/hiya/client/callerid/ui/e0/j;->c(Landroid/view/View;Z)V

    return-void

    .line 4
    :cond_2
    invoke-static {}, Lkotlin/w/c/k;->o()V

    const/4 p1, 0x0

    throw p1
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/n;->f:Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/n;->j:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/n;->f:Ljava/lang/Integer;

    .line 3
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/n;->j:Landroid/view/View;

    sget v1, Lcom/hiya/client/callerid/ui/p;->b:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const-string v1, "view.actionSheetContent"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    .line 4
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/n;->g:Ljava/lang/Float;

    .line 5
    iget-object v1, p0, Lcom/hiya/client/callerid/ui/incallui/n;->j:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/w/c/k;->o()V

    const/4 v0, 0x0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    const/4 v1, 0x1

    if-nez v0, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_2

    .line 3
    iget-object p1, p0, Lcom/hiya/client/callerid/ui/incallui/n;->j:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    iput p1, p0, Lcom/hiya/client/callerid/ui/incallui/n;->h:F

    .line 4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/hiya/client/callerid/ui/incallui/n;->i:F

    return v1

    :cond_2
    :goto_1
    const/4 v2, 0x2

    if-nez v0, :cond_3

    goto :goto_2

    .line 5
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v2, :cond_6

    .line 6
    iget v0, p0, Lcom/hiya/client/callerid/ui/incallui/n;->h:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget v2, p0, Lcom/hiya/client/callerid/ui/incallui/n;->i:F

    sub-float/2addr p2, v2

    add-float/2addr v0, p2

    .line 7
    iget-object p2, p0, Lcom/hiya/client/callerid/ui/incallui/n;->j:Landroid/view/View;

    .line 8
    iget-object v2, p0, Lcom/hiya/client/callerid/ui/incallui/n;->g:Ljava/lang/Float;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v3, 0x0

    .line 9
    invoke-static {v0, v3, v2}, Lf/h/g/a;->a(FFF)F

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 10
    iget-object p2, p0, Lcom/hiya/client/callerid/ui/incallui/n;->k:Landroid/view/View;

    .line 11
    iget-object v2, p0, Lcom/hiya/client/callerid/ui/incallui/n;->g:Ljava/lang/Float;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result p1

    div-float/2addr v0, p1

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float v0, p1, v0

    .line 12
    invoke-static {v0, v3, p1}, Lf/h/g/a;->a(FFF)F

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    .line 13
    iget-object p1, p0, Lcom/hiya/client/callerid/ui/incallui/n;->k:Landroid/view/View;

    invoke-static {p1, v1}, Lcom/hiya/client/callerid/ui/e0/j;->c(Landroid/view/View;Z)V

    return v1

    .line 14
    :cond_4
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw p1

    .line 15
    :cond_5
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw p1

    :cond_6
    :goto_2
    const/4 p1, 0x0

    if-nez v0, :cond_7

    goto :goto_3

    .line 16
    :cond_7
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_9

    .line 17
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget v0, p0, Lcom/hiya/client/callerid/ui/incallui/n;->i:F

    cmpg-float p2, p2, v0

    if-gez p2, :cond_8

    const/4 p1, 0x1

    .line 18
    :cond_8
    invoke-direct {p0, p1}, Lcom/hiya/client/callerid/ui/incallui/n;->b(Z)V

    return v1

    :cond_9
    :goto_3
    return p1
.end method
