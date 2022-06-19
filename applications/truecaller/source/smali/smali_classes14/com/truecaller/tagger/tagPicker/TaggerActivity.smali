.class public final Lcom/truecaller/tagger/tagPicker/TaggerActivity;
.super Le/a/g5/e0/b;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008$\u0010\u0008J\u0019\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u001d\u0010\u000e\u001a\u00020\t8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\rR\u0016\u0010\u0012\u001a\u00020\u000f8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011R\"\u0010\u001a\u001a\u00020\u00138\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u001d\u0010\u001f\u001a\u00020\u001b8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001c\u0010\u000b\u001a\u0004\u0008\u001d\u0010\u001eR\u0016\u0010#\u001a\u00020 8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008!\u0010\"\u00a8\u0006%"
    }
    d2 = {
        "Lcom/truecaller/tagger/tagPicker/TaggerActivity;",
        "Ln3/b/a/h;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Ls1/s;",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "finish",
        "()V",
        "Lcom/truecaller/tagger/tagPicker/TaggerViewModel;",
        "e",
        "Ls1/g;",
        "getTagViewModel",
        "()Lcom/truecaller/tagger/tagPicker/TaggerViewModel;",
        "tagViewModel",
        "Landroid/animation/ValueAnimator$AnimatorUpdateListener;",
        "h",
        "Landroid/animation/ValueAnimator$AnimatorUpdateListener;",
        "mTransitionUpdateListener",
        "Le/a/q2/a;",
        "d",
        "Le/a/q2/a;",
        "getAnalytics",
        "()Le/a/q2/a;",
        "setAnalytics",
        "(Le/a/q2/a;)V",
        "analytics",
        "Le/a/g5/d0/a;",
        "g",
        "qa",
        "()Le/a/g5/d0/a;",
        "binding",
        "Landroid/graphics/drawable/ColorDrawable;",
        "f",
        "Landroid/graphics/drawable/ColorDrawable;",
        "windowBackground",
        "<init>",
        "tagger_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final synthetic i:I


# instance fields
.field public d:Le/a/q2/a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public final e:Ls1/g;

.field public final f:Landroid/graphics/drawable/ColorDrawable;

.field public final g:Ls1/g;

.field public final h:Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Le/a/g5/e0/b;-><init>()V

    .line 2
    new-instance v0, Lcom/truecaller/tagger/tagPicker/TaggerActivity$b;

    invoke-direct {v0, p0}, Lcom/truecaller/tagger/tagPicker/TaggerActivity$b;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 3
    new-instance v1, Ln3/v/z0;

    const-class v2, Lcom/truecaller/tagger/tagPicker/TaggerViewModel;

    invoke-static {v2}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v2

    new-instance v3, Lcom/truecaller/tagger/tagPicker/TaggerActivity$c;

    invoke-direct {v3, p0}, Lcom/truecaller/tagger/tagPicker/TaggerActivity$c;-><init>(Landroidx/activity/ComponentActivity;)V

    invoke-direct {v1, v2, v3, v0}, Ln3/v/z0;-><init>(Ls1/a/c;Ls1/z/b/a;Ls1/z/b/a;)V

    iput-object v1, p0, Lcom/truecaller/tagger/tagPicker/TaggerActivity;->e:Ls1/g;

    .line 4
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/truecaller/tagger/tagPicker/TaggerActivity;->f:Landroid/graphics/drawable/ColorDrawable;

    .line 5
    sget-object v0, Ls1/h;->c:Ls1/h;

    new-instance v1, Lcom/truecaller/tagger/tagPicker/TaggerActivity$a;

    invoke-direct {v1, p0}, Lcom/truecaller/tagger/tagPicker/TaggerActivity$a;-><init>(Ln3/b/a/h;)V

    invoke-static {v0, v1}, Le/q/f/a/d/a;->O1(Ls1/h;Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    .line 6
    iput-object v0, p0, Lcom/truecaller/tagger/tagPicker/TaggerActivity;->g:Ls1/g;

    .line 7
    new-instance v0, Lcom/truecaller/tagger/tagPicker/TaggerActivity$e;

    invoke-direct {v0, p0}, Lcom/truecaller/tagger/tagPicker/TaggerActivity$e;-><init>(Lcom/truecaller/tagger/tagPicker/TaggerActivity;)V

    iput-object v0, p0, Lcom/truecaller/tagger/tagPicker/TaggerActivity;->h:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    return-void
.end method

.method public static final synthetic pa(Lcom/truecaller/tagger/tagPicker/TaggerActivity;)V
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
    invoke-virtual {p0}, Lcom/truecaller/tagger/tagPicker/TaggerActivity;->qa()Le/a/g5/d0/a;

    move-result-object v1

    iget-object v1, v1, Le/a/g5/d0/a;->b:Landroid/widget/FrameLayout;

    const-string v2, "binding.fragmentContainer"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-string v1, "animator"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

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
    iget-object v1, p0, Lcom/truecaller/tagger/tagPicker/TaggerActivity;->h:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 5
    new-instance v1, Lcom/truecaller/tagger/tagPicker/TaggerActivity$d;

    invoke-direct {v1, p0}, Lcom/truecaller/tagger/tagPicker/TaggerActivity$d;-><init>(Lcom/truecaller/tagger/tagPicker/TaggerActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 6
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->reverse()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const-string v1, "theme"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Le/a/l4/k;->n(Landroid/content/res/Resources$Theme;ZI)V

    const-string v0, "$this$setTaggerTheme"

    .line 2
    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v0, Le/a/i5/a;->g:Le/a/i5/a;

    invoke-static {}, Le/a/i5/a;->a()Le/a/i5/d;

    move-result-object v0

    .line 4
    instance-of v2, v0, Le/a/i5/d$d;

    if-eqz v2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    instance-of v2, v0, Le/a/i5/d$b;

    if-eqz v2, :cond_1

    :goto_0
    sget v0, Lcom/truecaller/tagger/R$style;->ThemeX_Dark_Tagger:I

    invoke-virtual {p0, v0}, Ln3/b/a/h;->setTheme(I)V

    goto :goto_2

    .line 6
    :cond_1
    instance-of v2, v0, Le/a/i5/d$c;

    if-eqz v2, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    instance-of v0, v0, Le/a/i5/d$a;

    if-eqz v0, :cond_3

    :goto_1
    sget v0, Lcom/truecaller/tagger/R$style;->ThemeX_Light_Tagger:I

    invoke-virtual {p0, v0}, Ln3/b/a/h;->setTheme(I)V

    goto :goto_2

    .line 8
    :cond_3
    sget v0, Lcom/truecaller/tagger/R$style;->ThemeX_Light_Tagger:I

    invoke-virtual {p0, v0}, Ln3/b/a/h;->setTheme(I)V

    .line 9
    :goto_2
    invoke-super {p0, p1}, Ln3/r/a/l;->onCreate(Landroid/os/Bundle;)V

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    iget-object v0, p0, Lcom/truecaller/tagger/tagPicker/TaggerActivity;->f:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 11
    invoke-virtual {p0}, Lcom/truecaller/tagger/tagPicker/TaggerActivity;->qa()Le/a/g5/d0/a;

    move-result-object p1

    const-string v0, "binding"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget-object p1, p1, Le/a/g5/d0/a;->a:Landroid/widget/FrameLayout;

    .line 13
    invoke-virtual {p0, p1}, Ln3/b/a/h;->setContentView(Landroid/view/View;)V

    .line 14
    invoke-static {}, Le/a/c3/f;->a()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 15
    invoke-static {p0}, Le/a/e/a2;->Y(Landroid/app/Activity;)V

    .line 16
    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_5

    .line 17
    invoke-virtual {p0}, Lcom/truecaller/tagger/tagPicker/TaggerActivity;->finish()V

    move-object p1, v0

    goto :goto_4

    .line 18
    :cond_5
    iget-object v2, p0, Lcom/truecaller/tagger/tagPicker/TaggerActivity;->e:Ls1/g;

    invoke-interface {v2}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/truecaller/tagger/tagPicker/TaggerViewModel;

    const/16 v3, 0x3e7

    const-string v4, "search_type"

    .line 19
    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "tag_context"

    .line 20
    invoke-virtual {p1, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v4, "contact"

    .line 21
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/truecaller/data/entity/Contact;

    const-wide/high16 v5, -0x8000000000000000L

    const-string v7, "initial_tag"

    .line 22
    invoke-virtual {p1, v7, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    if-eqz v4, :cond_6

    .line 23
    iget-object p1, v2, Lcom/truecaller/tagger/tagPicker/TaggerViewModel;->i:Le/a/g5/p;

    invoke-interface {p1, v4}, Le/a/g5/p;->b(Lcom/truecaller/data/entity/Contact;)Le/a/b0/p/c;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 24
    iget-wide v5, p1, Le/a/b0/p/c;->a:J

    goto :goto_3

    :cond_6
    move-wide v5, v7

    .line 25
    :cond_7
    :goto_3
    invoke-virtual {v2, v5, v6}, Lcom/truecaller/tagger/tagPicker/TaggerViewModel;->d(J)Le/a/b0/p/c;

    move-result-object p1

    .line 26
    new-instance v5, Le/a/g5/e0/d;

    invoke-direct {v5, v1, p1, v3, v4}, Le/a/g5/e0/d;-><init>(ILe/a/b0/p/c;ILcom/truecaller/data/entity/Contact;)V

    .line 27
    iget-object p1, v2, Lcom/truecaller/tagger/tagPicker/TaggerViewModel;->b:Ln3/v/k0;

    invoke-virtual {p1, v5}, Ln3/v/k0;->j(Ljava/lang/Object;)V

    .line 28
    new-instance p1, Le/a/g5/e0/i;

    invoke-direct {p1}, Le/a/g5/e0/i;-><init>()V

    :goto_4
    if-eqz p1, :cond_8

    .line 29
    invoke-virtual {p0}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 30
    new-instance v2, Ln3/r/a/a;

    invoke-direct {v2, v1}, Ln3/r/a/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 31
    sget v1, Lcom/truecaller/tagger/R$id;->fragment_container:I

    .line 32
    invoke-virtual {v2, v1, p1, v0}, Ln3/r/a/f0;->m(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Ln3/r/a/f0;

    .line 33
    invoke-virtual {v2}, Ln3/r/a/a;->f()I

    .line 34
    :cond_8
    invoke-virtual {p0}, Lcom/truecaller/tagger/tagPicker/TaggerActivity;->qa()Le/a/g5/d0/a;

    move-result-object p1

    iget-object p1, p1, Le/a/g5/d0/a;->b:Landroid/widget/FrameLayout;

    const-string v0, "binding.fragmentContainer"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Le/a/g5/e0/f;

    invoke-direct {v0, p0}, Le/a/g5/e0/f;-><init>(Lcom/truecaller/tagger/tagPicker/TaggerActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 35
    iget-object p1, p0, Lcom/truecaller/tagger/tagPicker/TaggerActivity;->e:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/tagger/tagPicker/TaggerViewModel;

    .line 36
    iget-object p1, p1, Lcom/truecaller/tagger/tagPicker/TaggerViewModel;->g:Landroidx/lifecycle/LiveData;

    .line 37
    new-instance v0, Le/a/g5/e0/g;

    invoke-direct {v0, p0}, Le/a/g5/e0/g;-><init>(Lcom/truecaller/tagger/tagPicker/TaggerActivity;)V

    invoke-virtual {p1, p0, v0}, Landroidx/lifecycle/LiveData;->f(Ln3/v/b0;Ln3/v/l0;)V

    return-void
.end method

.method public final qa()Le/a/g5/d0/a;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/tagger/tagPicker/TaggerActivity;->g:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/g5/d0/a;

    return-object v0
.end method
