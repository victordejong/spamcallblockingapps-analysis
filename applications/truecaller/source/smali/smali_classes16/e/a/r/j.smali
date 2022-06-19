.class public Le/a/r/j;
.super Le/a/r/t/e;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public g:Landroid/widget/TextView;

.field public h:Landroid/widget/ImageView;

.field public i:Landroid/animation/Animator;

.field public final j:Landroid/os/Handler;

.field public k:Lcom/truecaller/tcpermissions/PermissionPoller;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Le/a/r/t/e;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Le/a/r/j;->j:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public RA()Landroid/animation/Animator;
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    const/high16 v2, 0x41100000    # 9.0f

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 2
    invoke-virtual {p0}, Le/a/r/t/a;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/truecaller/wizard/R$color;->wizard_gray_light:I

    .line 3
    sget-object v4, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 4
    invoke-static {v2, v3}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v2

    .line 5
    invoke-virtual {p0}, Le/a/r/t/a;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/truecaller/wizard/R$color;->wizard_blue:I

    .line 6
    invoke-static {v3, v4}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v3

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/truecaller/wizard/R$integer;->wizard_animation_duration_medium:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-long v4, v4

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/truecaller/wizard/R$integer;->wizard_cyclic_animation_pause:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    int-to-long v6, v6

    .line 9
    new-instance v8, Le/a/r/j$a;

    invoke-direct {v8, p0, v2, v3, v0}, Le/a/r/j$a;-><init>(Le/a/r/j;IIF)V

    const/4 v0, 0x2

    new-array v2, v0, [F

    .line 10
    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 11
    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 12
    invoke-virtual {v2, v6, v7}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 13
    invoke-virtual {v2, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v3, v0, [F

    .line 14
    fill-array-data v3, :array_1

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 15
    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 16
    invoke-virtual {v3, v6, v7}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 17
    invoke-virtual {v3, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 18
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v0, v0, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object v2, v0, v5

    aput-object v3, v0, v1

    .line 19
    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 20
    new-instance v0, Le/a/r/j$b;

    invoke-direct {v0, p0}, Le/a/r/j$b;-><init>(Le/a/r/j;)V

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v4

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/truecaller/wizard/R$id;->nextButton:I

    if-ne v0, v1, :cond_2

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-static {p1}, Le/a/p5/s0/g;->y1(Landroid/app/Activity;)V

    .line 4
    :cond_0
    iget-object p1, p0, Le/a/r/j;->k:Lcom/truecaller/tcpermissions/PermissionPoller;

    if-nez p1, :cond_1

    .line 5
    new-instance p1, Lcom/truecaller/tcpermissions/PermissionPoller;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Le/a/r/j;->j:Landroid/os/Handler;

    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Le/a/r/t/a;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {p1, v0, v1, v2}, Lcom/truecaller/tcpermissions/PermissionPoller;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/content/Intent;)V

    iput-object p1, p0, Le/a/r/j;->k:Lcom/truecaller/tcpermissions/PermissionPoller;

    .line 6
    :cond_1
    iget-object p1, p0, Le/a/r/j;->k:Lcom/truecaller/tcpermissions/PermissionPoller;

    sget-object v0, Lcom/truecaller/tcpermissions/PermissionPoller$Permission;->DRAW_OVERLAY:Lcom/truecaller/tcpermissions/PermissionPoller$Permission;

    invoke-virtual {p1, v0}, Lcom/truecaller/tcpermissions/PermissionPoller;->a(Lcom/truecaller/tcpermissions/PermissionPoller$Permission;)V

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/truecaller/wizard/R$id;->later:I

    if-ne v0, v1, :cond_3

    .line 8
    invoke-virtual {p0}, Le/a/r/t/e;->QA()Le/a/r/t/c;

    move-result-object p1

    invoke-virtual {p1}, Le/a/r/t/c;->ra()V

    goto :goto_0

    .line 9
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/truecaller/wizard/R$id;->details:I

    if-ne p1, v0, :cond_4

    .line 10
    invoke-virtual {p0}, Le/a/r/t/e;->QA()Le/a/r/t/c;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "Page_DrawPermissionDetails"

    .line 11
    invoke-virtual {p1, v1, v0}, Le/a/r/t/c;->Ia(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    sget p3, Lcom/truecaller/wizard/R$layout;->wizard_fragment_draw:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/r/j;->k:Lcom/truecaller/tcpermissions/PermissionPoller;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, v0, Lcom/truecaller/tcpermissions/PermissionPoller;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 4
    iget-object v0, p0, Le/a/r/j;->i:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    iget-object v0, p0, Le/a/r/j;->i:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    iget-object v0, p0, Le/a/r/j;->k:Lcom/truecaller/tcpermissions/PermissionPoller;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, v0, Lcom/truecaller/tcpermissions/PermissionPoller;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4
    :cond_0
    iget-object v0, p0, Le/a/r/t/e;->f:Le/a/p5/a0;

    invoke-interface {v0}, Le/a/p5/a0;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Le/a/r/t/e;->QA()Le/a/r/t/c;

    move-result-object v0

    invoke-virtual {v0}, Le/a/r/t/c;->ra()V

    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Le/a/r/j;->i:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    sget p2, Lcom/truecaller/wizard/R$id;->nextButton:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    sget p2, Lcom/truecaller/wizard/R$id;->later:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    sget p2, Lcom/truecaller/wizard/R$id;->details:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Le/a/r/j;->g:Landroid/widget/TextView;

    .line 5
    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iget-object p2, p0, Le/a/r/j;->g:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 7
    sget p2, Lcom/truecaller/wizard/R$id;->animated:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Le/a/r/j;->h:Landroid/widget/ImageView;

    .line 8
    invoke-virtual {p0}, Le/a/r/j;->RA()Landroid/animation/Animator;

    move-result-object p1

    iput-object p1, p0, Le/a/r/j;->i:Landroid/animation/Animator;

    return-void
.end method
