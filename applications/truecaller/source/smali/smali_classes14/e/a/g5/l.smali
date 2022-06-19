.class public abstract Le/a/g5/l;
.super Ln3/b/a/h;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/g5/l$d;
    }
.end annotation


# instance fields
.field public a:Landroid/view/View;

.field public final b:Landroid/graphics/drawable/ColorDrawable;

.field public c:Le/a/g5/l$d;

.field public final d:Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ln3/b/a/h;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Le/a/g5/l;->b:Landroid/graphics/drawable/ColorDrawable;

    .line 3
    new-instance v0, Le/a/g5/l$a;

    invoke-direct {v0, p0}, Le/a/g5/l$a;-><init>(Le/a/g5/l;)V

    iput-object v0, p0, Le/a/g5/l;->d:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    return-void
.end method

.method public static synthetic pa(Le/a/g5/l;)V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 1
    iget-object v1, p0, Le/a/g5/l;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Ln3/b/a/h;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x10e0000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4
    iget-object v1, p0, Le/a/g5/l;->d:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 5
    new-instance v1, Le/a/g5/l$c;

    invoke-direct {v1, p0}, Le/a/g5/l$c;-><init>(Le/a/g5/l;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 6
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->reverse()V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 2
    iget-object v0, p0, Le/a/g5/l;->c:Le/a/g5/l$d;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Le/a/g5/l$d;->OA()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x1020002

    if-ne p1, v0, :cond_1

    .line 2
    iget-object p1, p0, Le/a/g5/l;->c:Le/a/g5/l$d;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Le/a/g5/l$d;->OA()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Le/a/g5/l;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Ln3/r/a/l;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-static {p1}, Le/a/l4/k;->l(Landroid/content/res/Resources$Theme;)V

    .line 3
    sget p1, Lcom/truecaller/tagger/R$layout;->activity_tag:I

    invoke-virtual {p0, p1}, Ln3/b/a/h;->setContentView(I)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    iget-object v0, p0, Le/a/g5/l;->b:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const p1, 0x1020002

    .line 5
    invoke-virtual {p0, p1}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Le/a/g5/l;->a:Landroid/view/View;

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Le/a/g5/l$b;

    invoke-direct {v0, p0}, Le/a/g5/l$b;-><init>(Le/a/g5/l;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 7
    iget-object p1, p0, Le/a/g5/l;->a:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    invoke-virtual {p0}, Le/a/g5/l;->qa()Le/a/g5/l$d;

    move-result-object p1

    iput-object p1, p0, Le/a/g5/l;->c:Le/a/g5/l$d;

    if-eqz p1, :cond_0

    .line 9
    invoke-virtual {p0}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 10
    new-instance v0, Ln3/r/a/a;

    invoke-direct {v0, p1}, Ln3/r/a/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 11
    sget p1, Lcom/truecaller/tagger/R$id;->fragment_container:I

    iget-object v1, p0, Le/a/g5/l;->c:Le/a/g5/l$d;

    const/4 v2, 0x0

    .line 12
    invoke-virtual {v0, p1, v1, v2}, Ln3/r/a/f0;->m(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Ln3/r/a/f0;

    .line 13
    invoke-virtual {v0}, Ln3/r/a/a;->f()I

    :cond_0
    return-void
.end method

.method public abstract qa()Le/a/g5/l$d;
.end method
