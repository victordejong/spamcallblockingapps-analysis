.class public final Le/a/j/a/f/a$f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/j/a/f/a$f;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/g<",
        "Lcom/truecaller/surveys/ui/bizmonAdapter/BizSurveyControllerViewModel$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/j/a/f/a$f;


# direct methods
.method public constructor <init>(Le/a/j/a/f/a$f;)V
    .locals 0

    iput-object p1, p0, Le/a/j/a/f/a$f$a;->a:Le/a/j/a/f/a$f;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/surveys/ui/bizmonAdapter/BizSurveyControllerViewModel$a;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/truecaller/surveys/ui/bizmonAdapter/BizSurveyControllerViewModel$a;

    .line 2
    instance-of p2, p1, Lcom/truecaller/surveys/ui/bizmonAdapter/BizSurveyControllerViewModel$a$b;

    if-eqz p2, :cond_0

    iget-object p1, p0, Le/a/j/a/f/a$f$a;->a:Le/a/j/a/f/a$f;

    iget-object p1, p1, Le/a/j/a/f/a$f;->f:Le/a/j/a/f/a;

    new-instance p2, Le/a/j/a/d/a;

    invoke-direct {p2}, Le/a/j/a/d/a;-><init>()V

    .line 3
    sget-object v0, Le/a/j/a/f/a;->h:[Ls1/a/l;

    .line 4
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v0, "childFragmentManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v0, Ln3/r/a/a;

    invoke-direct {v0, p1}, Ln3/r/a/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    const-string p1, "beginTransaction()"

    .line 6
    invoke-static {v0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    sget p1, Lcom/truecaller/surveys/R$anim;->question_slide_in:I

    .line 8
    sget v1, Lcom/truecaller/surveys/R$anim;->question_fade_out:I

    .line 9
    sget v2, Lcom/truecaller/surveys/R$anim;->question_fade_in:I

    .line 10
    sget v3, Lcom/truecaller/surveys/R$anim;->question_slide_out:I

    .line 11
    invoke-virtual {v0, p1, v1, v2, v3}, Ln3/r/a/f0;->o(IIII)Ln3/r/a/f0;

    .line 12
    sget p1, Lcom/truecaller/surveys/R$id;->questionContainer:I

    const-string v1, "RatingQuestionFragment"

    invoke-virtual {v0, p1, p2, v1}, Ln3/r/a/f0;->m(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Ln3/r/a/f0;

    .line 13
    invoke-virtual {v0}, Ln3/r/a/a;->g()I

    goto :goto_0

    .line 14
    :cond_0
    sget-object p2, Lcom/truecaller/surveys/ui/bizmonAdapter/BizSurveyControllerViewModel$a$c;->a:Lcom/truecaller/surveys/ui/bizmonAdapter/BizSurveyControllerViewModel$a$c;

    invoke-static {p1, p2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p1, p0, Le/a/j/a/f/a$f$a;->a:Le/a/j/a/f/a$f;

    iget-object p1, p1, Le/a/j/a/f/a$f;->f:Le/a/j/a/f/a;

    .line 15
    iget-object p2, p1, Le/a/j/a/f/a;->e:Lcom/truecaller/utils/viewbinding/ViewBindingProperty;

    sget-object v0, Le/a/j/a/f/a;->h:[Ls1/a/l;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p2, p1, v0}, Lcom/truecaller/utils/viewbinding/ViewBindingProperty;->b(Ljava/lang/Object;Ls1/a/l;)Ln3/j0/a;

    move-result-object p2

    check-cast p2, Le/a/j/d/g;

    .line 16
    iget-object v0, p2, Le/a/j/d/g;->a:Landroidx/fragment/app/FragmentContainerView;

    const-string v1, "questionContainer"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Le/a/p5/s0/f;->Q(Landroid/view/View;)V

    .line 17
    iget-object v0, p2, Le/a/j/d/g;->c:Landroidx/constraintlayout/widget/Group;

    const-string v1, "thanksGroup"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 18
    iget-object v0, p2, Le/a/j/d/g;->d:Landroid/widget/TextView;

    .line 19
    iget-object v1, p1, Le/a/j/a/f/a;->g:Ls1/g;

    invoke-interface {v1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/animation/Animation;

    .line 20
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 21
    iget-object p2, p2, Le/a/j/d/g;->b:Lcom/airbnb/lottie/LottieAnimationView;

    .line 22
    invoke-virtual {p2}, Lcom/airbnb/lottie/LottieAnimationView;->g()V

    .line 23
    new-instance v0, Le/a/j/a/f/b;

    invoke-direct {v0, p1}, Le/a/j/a/f/b;-><init>(Le/a/j/a/f/a;)V

    invoke-static {p2, v0}, Le/a/e/a2;->O(Lcom/airbnb/lottie/LottieAnimationView;Ls1/z/b/l;)V

    const-string p1, "with(binding) {\n        \u2026        }\n        }\n    }"

    .line 24
    invoke-static {p2, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 25
    :cond_1
    sget-object p2, Lcom/truecaller/surveys/ui/bizmonAdapter/BizSurveyControllerViewModel$a$a;->a:Lcom/truecaller/surveys/ui/bizmonAdapter/BizSurveyControllerViewModel$a$a;

    invoke-static {p1, p2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "Biz Survey invalid state, question can\'t be handled"

    .line 26
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportWeirdnessButNeverCrash(Ljava/lang/String;)V

    .line 27
    iget-object p1, p0, Le/a/j/a/f/a$f$a;->a:Le/a/j/a/f/a$f;

    iget-object p1, p1, Le/a/j/a/f/a$f;->f:Le/a/j/a/f/a;

    invoke-static {p1}, Le/a/j/a/f/a;->QA(Le/a/j/a/f/a;)V

    .line 28
    :cond_2
    :goto_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
