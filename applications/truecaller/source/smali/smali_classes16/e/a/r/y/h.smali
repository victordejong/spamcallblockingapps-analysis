.class public Le/a/r/y/h;
.super Le/a/r/y/c;
.source "SourceFile"

# interfaces
.implements Le/a/r/y/k;
.implements Le/a/r/t/c$b;


# instance fields
.field public i:Landroid/widget/ImageView;

.field public j:Landroid/animation/ValueAnimator;

.field public k:Le/a/r/y/j;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/a/r/y/c;-><init>()V

    return-void
.end method


# virtual methods
.method public l4()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/r/t/e;->QA()Le/a/r/t/c;

    move-result-object v0

    invoke-virtual {v0}, Le/a/r/t/c;->ra()V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 2
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Le/a/r/y/h;->j:Landroid/animation/ValueAnimator;

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/truecaller/wizard/R$integer;->wizard_animation_duration_medium:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 4
    iget-object p1, p0, Le/a/r/y/h;->j:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 5
    iget-object p1, p0, Le/a/r/y/h;->j:Landroid/animation/ValueAnimator;

    new-instance v0, Le/a/r/y/b;

    invoke-direct {v0, p0}, Le/a/r/y/b;-><init>(Le/a/r/y/h;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 6
    iget-object p1, p0, Le/a/r/y/h;->j:Landroid/animation/ValueAnimator;

    new-instance v0, Le/a/r/y/g;

    invoke-direct {v0, p0}, Le/a/r/y/g;-><init>(Le/a/r/y/h;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x2710
    .end array-data
.end method

.method public onBackPressed()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Le/a/r/t/e;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Le/a/r/t/e;->QA()Le/a/r/t/c;

    move-result-object p1

    invoke-virtual {p1, p0}, Le/a/r/t/c;->pa(Le/a/r/t/c$b;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .line 1
    sget p3, Lcom/truecaller/wizard/R$layout;->wizard_fragment_success:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    sget p2, Lcom/truecaller/wizard/R$id;->image:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Le/a/r/y/h;->i:Landroid/widget/ImageView;

    .line 3
    new-instance p3, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    .line 4
    invoke-virtual {p0}, Le/a/r/y/c;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/truecaller/wizard/R$drawable;->wizard_anim_circular_background:I

    .line 5
    sget-object v4, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 6
    invoke-static {v2, v3}, Ln3/k/b/a$c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v0

    .line 7
    new-instance v0, Landroid/graphics/drawable/ClipDrawable;

    .line 8
    invoke-virtual {p0}, Le/a/r/y/c;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/truecaller/wizard/R$drawable;->wizard_anim_check_center:I

    .line 9
    invoke-static {v2, v3}, Ln3/k/b/a$c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const v3, 0x800003

    const/4 v4, 0x1

    .line 10
    invoke-direct {v0, v2, v3, v4}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    aput-object v0, v1, v4

    invoke-direct {p3, v1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 11
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 2
    iget-object v0, p0, Le/a/r/y/h;->j:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/r/y/h;->k:Le/a/r/y/j;

    invoke-interface {v0}, Le/a/u2/a/e;->c()V

    .line 2
    invoke-super {p0}, Le/a/r/t/e;->onDestroyView()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    iget-object v0, p0, Le/a/r/y/h;->j:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    iget-object v0, p0, Le/a/r/y/h;->j:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Le/a/r/y/h;->k:Le/a/r/y/j;

    invoke-interface {p1, p0}, Le/a/u2/a/e;->Y0(Ljava/lang/Object;)V

    return-void
.end method

.method public y7()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Le/a/r/t/e;->QA()Le/a/r/t/c;

    move-result-object v0

    .line 2
    sget-object v1, Le/a/r/x/n;->P:[I

    .line 3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "playTransitionAnimation"

    const/4 v3, 0x1

    .line 4
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "Page_Profile"

    .line 5
    invoke-virtual {v0, v2, v1}, Le/a/r/t/c;->Ia(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
