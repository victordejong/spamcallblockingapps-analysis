.class public Le/a/h0/y/f;
.super Le/m/a/g/e/e;
.source "SourceFile"

# interfaces
.implements Le/a/h0/y/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/h0/y/f$b;
    }
.end annotation


# instance fields
.field public a:Le/a/h0/y/g;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public b:Le/a/l/a2;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public c:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public d:Landroid/widget/ImageView;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/widget/TextView;

.field public g:Landroid/widget/ProgressBar;

.field public h:Landroid/widget/Button;

.field public i:Landroid/widget/FrameLayout;

.field public j:Landroidx/constraintlayout/widget/Group;

.field public k:Landroid/view/View;

.field public l:Landroid/view/View;

.field public m:Landroid/animation/ValueAnimator;

.field public n:Le/a/h0/y/f$b;

.field public o:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/m/a/g/e/e;-><init>()V

    return-void
.end method


# virtual methods
.method public Em()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/h0/y/f;->l:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public I6()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/h0/y/f;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Ln3/g0/q;->a(Landroid/view/ViewGroup;Ln3/g0/m;)V

    .line 3
    iget-object v0, p0, Le/a/h0/y/f;->d:Landroid/widget/ImageView;

    const v1, 0x7f080861

    invoke-static {v0, v1}, Le/a/o5/j0;->o(Landroid/widget/ImageView;I)V

    .line 4
    iget-object v0, p0, Le/a/h0/y/f;->d:Landroid/widget/ImageView;

    iget-object v1, p0, Le/a/h0/y/f;->o:Landroid/content/Context;

    const v2, 0x7f0405d8

    invoke-static {v1, v2}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 5
    iget-object v0, p0, Le/a/h0/y/f;->e:Landroid/widget/TextView;

    const v1, 0x7f120797

    invoke-static {v0, v1}, Le/a/o5/j0;->s(Landroid/widget/TextView;I)V

    .line 6
    iget-object v0, p0, Le/a/h0/y/f;->h:Landroid/widget/Button;

    const v1, 0x7f12079b

    invoke-static {v0, v1}, Le/a/o5/j0;->s(Landroid/widget/TextView;I)V

    .line 7
    iget-object v0, p0, Le/a/h0/y/f;->f:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Le/a/o5/j0;->v(Landroid/view/View;ZZ)Landroid/view/View;

    return-void
.end method

.method public R3(Le/a/i/f0/m/d;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Le/a/h0/y/f;->j:Landroidx/constraintlayout/widget/Group;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 4
    sget-object v1, Lcom/truecaller/ads/AdLayoutTypeX;->MEGA_VIDEO:Lcom/truecaller/ads/AdLayoutTypeX;

    invoke-static {v0, v1, p1}, Le/m/d/y/n;->x(Landroid/app/Activity;Le/a/i/g;Le/a/i/f0/m/d;)Landroid/view/View;

    move-result-object p1

    .line 5
    iget-object v0, p0, Le/a/h0/y/f;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 6
    iget-object v0, p0, Le/a/h0/y/f;->i:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public Ta(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/h0/y/f;->f:Landroid/widget/TextView;

    invoke-static {v0, p1}, Le/a/o5/j0;->t(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public W0(Lcom/truecaller/premium/PremiumLaunchContext;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/h0/y/f;->b:Le/a/l/a2;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Le/a/l/a2;->b(Landroid/content/Context;Lcom/truecaller/premium/PremiumLaunchContext;)V

    .line 2
    invoke-virtual {p0}, Le/m/a/g/e/e;->dismiss()V

    return-void
.end method

.method public g9()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/h0/y/f;->l:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public kd()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/h0/y/f;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Ln3/g0/q;->a(Landroid/view/ViewGroup;Ln3/g0/m;)V

    .line 3
    iget-object v0, p0, Le/a/h0/y/f;->d:Landroid/widget/ImageView;

    iget-object v1, p0, Le/a/h0/y/f;->o:Landroid/content/Context;

    const v2, 0x7f0405dc

    invoke-static {v1, v2}, Le/a/p5/s0/g;->d0(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v0, v1}, Le/a/o5/j0;->o(Landroid/widget/ImageView;I)V

    .line 4
    iget-object v0, p0, Le/a/h0/y/f;->e:Landroid/widget/TextView;

    const v1, 0x7f12079c

    invoke-static {v0, v1}, Le/a/o5/j0;->s(Landroid/widget/TextView;I)V

    .line 5
    iget-object v0, p0, Le/a/h0/y/f;->g:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Le/a/o5/j0;->v(Landroid/view/View;ZZ)Landroid/view/View;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12

    .line 1
    invoke-super {p0, p1}, Ln3/r/a/k;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Le/a/l4/k;->E(Landroid/content/Context;Z)Landroid/view/ContextThemeWrapper;

    move-result-object p1

    iput-object p1, p0, Le/a/h0/y/f;->o:Landroid/content/Context;

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Le/a/w1;

    invoke-interface {p1}, Le/a/w1;->s()Le/a/j2;

    move-result-object p1

    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    const-class v1, Le/a/j2;

    invoke-static {p1, v1}, Le/q/f/a/d/a;->s(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 6
    invoke-interface {p1}, Le/a/j2;->T()Le/a/h0/m;

    move-result-object v3

    const-string v1, "Cannot return null from a non-@Nullable component method"

    .line 7
    invoke-static {v3, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    invoke-interface {p1}, Le/a/j2;->e7()Le/a/o5/b0;

    move-result-object v4

    .line 9
    invoke-static {v4, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    invoke-interface {p1}, Le/a/j2;->G1()Le/a/p5/u;

    move-result-object v5

    .line 11
    invoke-static {v5, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    invoke-interface {p1}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object v6

    .line 13
    invoke-static {v6, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    invoke-interface {p1}, Le/a/j2;->i()Le/a/p5/c0;

    move-result-object v7

    .line 15
    invoke-static {v7, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    invoke-interface {p1}, Le/a/j2;->h7()Le/a/i/f0/d;

    move-result-object v8

    .line 17
    invoke-static {v8, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    invoke-interface {p1}, Le/a/j2;->c4()Le/a/i/f0/j/c;

    move-result-object v2

    .line 19
    invoke-static {v2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    invoke-interface {p1}, Le/a/j2;->b()Le/a/u3/g;

    move-result-object v9

    .line 21
    invoke-static {v9, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v10, "blockUpdateAdUnitId"

    .line 22
    invoke-interface {v2, v10}, Le/a/i/f0/j/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x0

    const-string v11, "BLOCK_UPDATE"

    .line 23
    invoke-static {v2, v10, v11, v9}, Le/a/i/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Le/a/u3/g;)Le/a/i/s$a;

    move-result-object v2

    const-string v9, "blockViewUpdate"

    .line 24
    iput-object v9, v2, Le/a/i/s$a;->i:Ljava/lang/String;

    const/4 v9, 0x0

    .line 25
    iput v9, v2, Le/a/i/s$a;->p:I

    new-array v10, v0, [Lcom/truecaller/ads/CustomTemplate;

    .line 26
    sget-object v11, Lcom/truecaller/ads/CustomTemplate;->NATIVE_CONTENT_DUAL_TRACKER:Lcom/truecaller/ads/CustomTemplate;

    aput-object v11, v10, v9

    .line 27
    invoke-virtual {v2, v10}, Le/a/i/s$a;->f([Lcom/truecaller/ads/CustomTemplate;)Le/a/i/s$a;

    .line 28
    iput v9, v2, Le/a/i/s$a;->e:I

    .line 29
    iput-boolean v0, v2, Le/a/i/s$a;->m:Z

    .line 30
    iput-boolean v9, v2, Le/a/i/s$a;->n:Z

    .line 31
    new-instance v9, Le/a/i/s;

    invoke-direct {v9, v2}, Le/a/i/s;-><init>(Le/a/i/s$a;)V

    .line 32
    invoke-interface {p1}, Le/a/j2;->H0()Le/a/h0/t;

    move-result-object v10

    .line 33
    invoke-static {v10, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 34
    invoke-interface {p1}, Le/a/j2;->f()Le/a/l/p2/v0;

    move-result-object v11

    .line 35
    invoke-static {v11, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 36
    new-instance v0, Le/a/h0/y/h;

    move-object v2, v0

    invoke-direct/range {v2 .. v11}, Le/a/h0/y/h;-><init>(Le/a/h0/m;Le/a/o5/b0;Le/a/p5/u;Le/a/q2/a;Le/a/p5/c0;Le/a/i/f0/d;Le/a/i/s;Le/a/h0/t;Le/a/l/p2/v0;)V

    .line 37
    iput-object v0, p0, Le/a/h0/y/f;->a:Le/a/h0/y/g;

    .line 38
    invoke-interface {p1}, Le/a/j2;->C3()Le/a/l/a2;

    move-result-object p1

    .line 39
    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 40
    iput-object p1, p0, Le/a/h0/y/f;->b:Le/a/l/a2;

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Ln3/r/a/k;->onDismiss(Landroid/content/DialogInterface;)V

    .line 2
    iget-object p1, p0, Le/a/h0/y/f;->n:Le/a/h0/y/f$b;

    if-eqz p1, :cond_0

    .line 3
    check-cast p1, Le/a/h0/a/r;

    .line 4
    iget-object p1, p1, Le/a/h0/a/r;->b:Le/a/h0/a/s;

    invoke-virtual {p1}, Le/a/h0/a/s;->Sj()V

    .line 5
    :cond_0
    iget-object p1, p0, Le/a/h0/y/f;->m:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 6
    iget-object p1, p0, Le/a/h0/y/f;->a:Le/a/h0/y/g;

    invoke-virtual {p1}, Le/a/u2/a/b;->c()V

    return-void
.end method

.method public setupDialog(Landroid/app/Dialog;I)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Ln3/b/a/q;->setupDialog(Landroid/app/Dialog;I)V

    const/4 p2, 0x2

    new-array p2, p2, [I

    .line 2
    fill-array-data p2, :array_0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Le/a/h0/y/f;->m:Landroid/animation/ValueAnimator;

    .line 3
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/2addr v0, v1

    int-to-long v0, v0

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 4
    iget-object p2, p0, Le/a/h0/y/f;->m:Landroid/animation/ValueAnimator;

    new-instance v0, Le/a/h0/y/c;

    invoke-direct {v0, p0}, Le/a/h0/y/c;-><init>(Le/a/h0/y/f;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 5
    iget-object p2, p0, Le/a/h0/y/f;->m:Landroid/animation/ValueAnimator;

    new-instance v0, Ln3/t/a/a/b;

    invoke-direct {v0}, Ln3/t/a/a/b;-><init>()V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 6
    iget-object p2, p0, Le/a/h0/y/f;->m:Landroid/animation/ValueAnimator;

    new-instance v0, Le/a/h0/y/f$a;

    invoke-direct {v0, p0}, Le/a/h0/y/f$a;-><init>(Le/a/h0/y/f;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 7
    iget-object p2, p0, Le/a/h0/y/f;->o:Landroid/content/Context;

    const v0, 0x7f0d0145

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 8
    move-object v0, p2

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Le/a/h0/y/f;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f0a0987

    .line 9
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Le/a/h0/y/f;->d:Landroid/widget/ImageView;

    const v0, 0x7f0a1245

    .line 10
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Le/a/h0/y/f;->e:Landroid/widget/TextView;

    const v0, 0x7f0a10de

    .line 11
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Le/a/h0/y/f;->f:Landroid/widget/TextView;

    const v0, 0x7f0a0d9c

    .line 12
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Le/a/h0/y/f;->g:Landroid/widget/ProgressBar;

    const v0, 0x7f0a02ab

    .line 13
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Le/a/h0/y/f;->h:Landroid/widget/Button;

    const v0, 0x7f0a00fc

    .line 14
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Le/a/h0/y/f;->i:Landroid/widget/FrameLayout;

    const v0, 0x7f0a0107

    .line 15
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/Group;

    iput-object v0, p0, Le/a/h0/y/f;->j:Landroidx/constraintlayout/widget/Group;

    const v0, 0x7f0a128c

    .line 16
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Le/a/h0/y/f;->k:Landroid/view/View;

    const v0, 0x7f0a0d5b

    .line 17
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Le/a/h0/y/f;->l:Landroid/view/View;

    .line 18
    iget-object v0, p0, Le/a/h0/y/f;->h:Landroid/widget/Button;

    new-instance v1, Le/a/h0/y/d;

    invoke-direct {v1, p0}, Le/a/h0/y/d;-><init>(Le/a/h0/y/f;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0405

    .line 19
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Le/a/h0/y/b;

    invoke-direct {v1, p0}, Le/a/h0/y/b;-><init>(Le/a/h0/y/f;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    iget-object v0, p0, Le/a/h0/y/f;->k:Landroid/view/View;

    new-instance v1, Le/a/h0/y/a;

    invoke-direct {v1, p0}, Le/a/h0/y/a;-><init>(Le/a/h0/y/f;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 22
    iget-object v0, p0, Le/a/h0/y/f;->a:Le/a/h0/y/g;

    invoke-virtual {v0, p0}, Le/a/u2/a/b;->Y0(Ljava/lang/Object;)V

    .line 23
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "forceUpdate"

    .line 24
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Le/a/h0/y/f;->a:Le/a/h0/y/g;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Le/a/h0/y/g;->Ij(Z)V

    :cond_0
    const v0, 0x7f0a05e0

    .line 26
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 27
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;

    if-eqz v0, :cond_1

    .line 28
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;

    .line 29
    new-instance v1, Lcom/truecaller/filters/update/UpdateFiltersDialogBehavior;

    invoke-direct {v1}, Lcom/truecaller/filters/update/UpdateFiltersDialogBehavior;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->b(Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;)V

    .line 30
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    const p1, 0x7f0a0d58

    .line 31
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Le/a/h0/y/e;

    invoke-direct {p2, p0}, Le/a/h0/y/e;-><init>(Le/a/h0/y/f;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x64
    .end array-data
.end method

.method public y8()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/h0/y/f;->d:Landroid/widget/ImageView;

    iget-object v1, p0, Le/a/h0/y/f;->o:Landroid/content/Context;

    const v2, 0x7f0405db

    invoke-static {v1, v2}, Le/a/p5/s0/g;->d0(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v0, v1}, Le/a/o5/j0;->o(Landroid/widget/ImageView;I)V

    .line 2
    iget-object v0, p0, Le/a/h0/y/f;->e:Landroid/widget/TextView;

    const v1, 0x7f12079d

    invoke-static {v0, v1}, Le/a/o5/j0;->s(Landroid/widget/TextView;I)V

    .line 3
    iget-object v0, p0, Le/a/h0/y/f;->h:Landroid/widget/Button;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 4
    invoke-static {v0, v1, v2}, Le/a/o5/j0;->v(Landroid/view/View;ZZ)Landroid/view/View;

    .line 5
    iget-object v0, p0, Le/a/h0/y/f;->f:Landroid/widget/TextView;

    invoke-static {v0, v1, v1}, Le/a/o5/j0;->v(Landroid/view/View;ZZ)Landroid/view/View;

    .line 6
    iget-object v0, p0, Le/a/h0/y/f;->g:Landroid/widget/ProgressBar;

    .line 7
    invoke-static {v0, v2, v2}, Le/a/o5/j0;->v(Landroid/view/View;ZZ)Landroid/view/View;

    .line 8
    iget-object v0, p0, Le/a/h0/y/f;->m:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
