.class public final Le/a/j/a/e/b;
.super Le/a/j/a/e/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/j/a/e/b$d;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0007\u0018\u0000 (2\u00020\u0001:\u0001)B\u0007\u00a2\u0006\u0004\u0008&\u0010\'J+\u0010\t\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ!\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\u00082\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eR$\u0010\u0014\u001a\u0010\u0012\u000c\u0012\n \u0011*\u0004\u0018\u00010\u00100\u00100\u000f8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R%\u0010\u001a\u001a\n \u0011*\u0004\u0018\u00010\u00150\u00158B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019R\u001d\u0010\u001f\u001a\u00020\u001b8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001c\u0010\u0017\u001a\u0004\u0008\u001d\u0010\u001eR\u001d\u0010%\u001a\u00020 8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008!\u0010\"\u001a\u0004\u0008#\u0010$\u00a8\u0006*"
    }
    d2 = {
        "Le/a/j/a/e/b;",
        "Landroidx/fragment/app/Fragment;",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Landroid/view/View;",
        "onCreateView",
        "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;",
        "view",
        "Ls1/s;",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "Ln3/a/e/b;",
        "Landroid/content/Intent;",
        "kotlin.jvm.PlatformType",
        "h",
        "Ln3/a/e/b;",
        "getSurveyResult",
        "Landroid/view/animation/Animation;",
        "g",
        "Ls1/g;",
        "getFadeInAnim",
        "()Landroid/view/animation/Animation;",
        "fadeInAnim",
        "Lcom/truecaller/surveys/ui/adapter/SurveyControllerViewModel;",
        "f",
        "getViewModel",
        "()Lcom/truecaller/surveys/ui/adapter/SurveyControllerViewModel;",
        "viewModel",
        "Le/a/j/d/g;",
        "e",
        "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;",
        "getBinding",
        "()Le/a/j/d/g;",
        "binding",
        "<init>",
        "()V",
        "j",
        "d",
        "surveys_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final synthetic i:[Ls1/a/l;

.field public static final j:Le/a/j/a/e/b$d;


# instance fields
.field public final e:Lcom/truecaller/utils/viewbinding/ViewBindingProperty;

.field public final f:Ls1/g;

.field public final g:Ls1/g;

.field public final h:Ln3/a/e/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/a/e/b<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Ls1/a/l;

    const-class v1, Le/a/j/a/e/b;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/truecaller/surveys/databinding/FragmentSurveyControllerBinding;"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Le/d/c/a/a;->g0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Ls1/a/k;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Le/a/j/a/e/b;->i:[Ls1/a/l;

    new-instance v0, Le/a/j/a/e/b$d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le/a/j/a/e/b$d;-><init>(Ls1/z/c/f;)V

    sput-object v0, Le/a/j/a/e/b;->j:Le/a/j/a/e/b$d;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Le/a/j/a/e/a;-><init>()V

    .line 2
    new-instance v0, Le/a/p5/x0/a;

    new-instance v1, Le/a/j/a/e/b$c;

    invoke-direct {v1}, Le/a/j/a/e/b$c;-><init>()V

    invoke-direct {v0, v1}, Le/a/p5/x0/a;-><init>(Ls1/z/b/l;)V

    iput-object v0, p0, Le/a/j/a/e/b;->e:Lcom/truecaller/utils/viewbinding/ViewBindingProperty;

    .line 3
    const-class v0, Lcom/truecaller/surveys/ui/adapter/SurveyControllerViewModel;

    invoke-static {v0}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object v0

    new-instance v1, Le/a/j/a/e/b$a;

    invoke-direct {v1, p0}, Le/a/j/a/e/b$a;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 4
    new-instance v2, Le/a/j/a/e/b$b;

    invoke-direct {v2, p0}, Le/a/j/a/e/b$b;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 5
    invoke-static {p0, v0, v1, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->P(Landroidx/fragment/app/Fragment;Ls1/a/c;Ls1/z/b/a;Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    .line 6
    iput-object v0, p0, Le/a/j/a/e/b;->f:Ls1/g;

    .line 7
    new-instance v0, Le/a/j/a/e/b$e;

    invoke-direct {v0, p0}, Le/a/j/a/e/b$e;-><init>(Le/a/j/a/e/b;)V

    invoke-static {v0}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Le/a/j/a/e/b;->g:Ls1/g;

    .line 8
    new-instance v0, Ln3/a/e/d/d;

    invoke-direct {v0}, Ln3/a/e/d/d;-><init>()V

    new-instance v1, Le/a/j/a/e/b$f;

    invoke-direct {v1, p0}, Le/a/j/a/e/b$f;-><init>(Le/a/j/a/e/b;)V

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Ln3/a/e/d/a;Ln3/a/e/a;)Ln3/a/e/b;

    move-result-object v0

    const-string v1, "registerForActivityResul\u2026       showThanks()\n    }"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Le/a/j/a/e/b;->h:Ln3/a/e/b;

    return-void
.end method

.method public static final QA(Le/a/j/a/e/b;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "BoolQuestionFragment"

    .line 2
    filled-new-array {v1, v1}, [Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v1}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 4
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5
    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->K(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6
    new-instance v3, Ln3/r/a/a;

    invoke-direct {v3, v0}, Ln3/r/a/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 7
    invoke-virtual {v3, v2}, Ln3/r/a/a;->l(Landroidx/fragment/app/Fragment;)Ln3/r/a/f0;

    invoke-virtual {v3}, Ln3/r/a/a;->g()I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [Ls1/k;

    .line 8
    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat;->k([Ls1/k;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "survey_adapter_request_key"

    invoke-static {p0, v1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->r1(Landroidx/fragment/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static final RA(Le/a/j/a/e/b;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v0, "childFragmentManager"

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ln3/r/a/a;

    invoke-direct {v0, p0}, Ln3/r/a/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    const-string p0, "beginTransaction()"

    .line 3
    invoke-static {v0, p0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget p0, Lcom/truecaller/surveys/R$anim;->question_slide_in:I

    .line 5
    sget v1, Lcom/truecaller/surveys/R$anim;->question_fade_out:I

    .line 6
    sget v2, Lcom/truecaller/surveys/R$anim;->question_fade_in:I

    .line 7
    sget v3, Lcom/truecaller/surveys/R$anim;->question_slide_out:I

    .line 8
    invoke-virtual {v0, p0, v1, v2, v3}, Ln3/r/a/f0;->o(IIII)Ln3/r/a/f0;

    .line 9
    sget p0, Lcom/truecaller/surveys/R$id;->questionContainer:I

    invoke-virtual {v0, p0, p1, p2}, Ln3/r/a/f0;->m(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Ln3/r/a/f0;

    .line 10
    invoke-virtual {v0}, Ln3/r/a/a;->g()I

    return-void
.end method

.method public static final SA(Le/a/j/a/e/b;)Lcom/airbnb/lottie/LottieAnimationView;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/j/a/e/b;->e:Lcom/truecaller/utils/viewbinding/ViewBindingProperty;

    sget-object v1, Le/a/j/a/e/b;->i:[Ls1/a/l;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/truecaller/utils/viewbinding/ViewBindingProperty;->b(Ljava/lang/Object;Ls1/a/l;)Ln3/j0/a;

    move-result-object v0

    check-cast v0, Le/a/j/d/g;

    .line 2
    iget-object v1, v0, Le/a/j/d/g;->a:Landroidx/fragment/app/FragmentContainerView;

    const-string v2, "questionContainer"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Le/a/p5/s0/f;->Q(Landroid/view/View;)V

    .line 3
    iget-object v1, v0, Le/a/j/d/g;->c:Landroidx/constraintlayout/widget/Group;

    const-string v2, "thanksGroup"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 4
    iget-object v1, v0, Le/a/j/d/g;->d:Landroid/widget/TextView;

    .line 5
    iget-object v2, p0, Le/a/j/a/e/b;->g:Ls1/g;

    invoke-interface {v2}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/animation/Animation;

    .line 6
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 7
    iget-object v0, v0, Le/a/j/d/g;->b:Lcom/airbnb/lottie/LottieAnimationView;

    .line 8
    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->g()V

    .line 9
    new-instance v1, Le/a/j/a/e/c;

    invoke-direct {v1, p0}, Le/a/j/a/e/c;-><init>(Le/a/j/a/e/b;)V

    invoke-static {v0, v1}, Le/a/e/a2;->O(Lcom/airbnb/lottie/LottieAnimationView;Ls1/z/b/l;)V

    const-string p0, "with(binding) {\n        \u2026        }\n        }\n    }"

    .line 10
    invoke-static {v0, p0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x1

    .line 1
    invoke-static {p1, p3}, Le/a/l4/k;->u0(Landroid/view/LayoutInflater;Z)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p3, Lcom/truecaller/surveys/R$layout;->fragment_survey_controller:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p2, "inflater.toThemeInflater\u2026roller, container, false)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Le/a/j/a/e/b;->f:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/surveys/ui/adapter/SurveyControllerViewModel;

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "contact"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    if-eqz p2, :cond_0

    check-cast p2, Lcom/truecaller/data/entity/Contact;

    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-static {p1}, Landroid/support/v4/media/session/MediaSessionCompat;->C0(Ln3/v/y0;)Lq3/a/i0;

    move-result-object v1

    new-instance v4, Le/a/j/a/e/e;

    const/4 v0, 0x0

    invoke-direct {v4, p1, p2, v0}, Le/a/j/a/e/e;-><init>(Lcom/truecaller/surveys/ui/adapter/SurveyControllerViewModel;Lcom/truecaller/data/entity/Contact;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Ln3/v/b0;

    move-result-object p1

    const-string p2, "viewLifecycleOwner"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ln3/v/r;->b(Ln3/v/b0;)Ln3/v/w;

    move-result-object p1

    new-instance p2, Le/a/j/a/e/b$g;

    invoke-direct {p2, p0, v0}, Le/a/j/a/e/b$g;-><init>(Le/a/j/a/e/b;Ls1/w/d;)V

    invoke-virtual {p1, p2}, Ln3/v/w;->b(Ls1/z/b/p;)Lq3/a/p1;

    return-void

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Required value was null."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
