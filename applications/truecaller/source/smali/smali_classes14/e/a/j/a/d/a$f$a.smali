.class public final Le/a/j/a/d/a$f$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/j/a/d/a$f;->onRatingChanged(Landroid/widget/RatingBar;FZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.surveys.ui.ratingQuestion.BizRatingQuestionFragment$onViewCreated$2$2"
    f = "BizRatingQuestionFragment.kt"
    l = {
        0x50
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/j/a/d/a$f;


# direct methods
.method public constructor <init>(Le/a/j/a/d/a$f;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/j/a/d/a$f$a;->f:Le/a/j/a/d/a$f;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/j/a/d/a$f$a;

    iget-object v0, p0, Le/a/j/a/d/a$f$a;->f:Le/a/j/a/d/a$f;

    invoke-direct {p1, v0, p2}, Le/a/j/a/d/a$f$a;-><init>(Le/a/j/a/d/a$f;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/j/a/d/a$f$a;

    iget-object v0, p0, Le/a/j/a/d/a$f$a;->f:Le/a/j/a/d/a$f;

    invoke-direct {p1, v0, p2}, Le/a/j/a/d/a$f$a;-><init>(Le/a/j/a/d/a$f;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/j/a/d/a$f$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/j/a/d/a$f$a;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    const-wide/16 v3, 0x12c

    .line 4
    iput v2, p0, Le/a/j/a/d/a$f$a;->e:I

    invoke-static {v3, v4, p0}, Ls1/a/a/a/v0/f/d;->D0(JLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 5
    :cond_2
    :goto_0
    iget-object p1, p0, Le/a/j/a/d/a$f$a;->f:Le/a/j/a/d/a$f;

    iget-object p1, p1, Le/a/j/a/d/a$f;->a:Le/a/j/a/d/a;

    .line 6
    iget-object p1, p1, Le/a/j/a/d/a;->f:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/surveys/ui/bizmonAdapter/BizSurveyControllerViewModel;

    .line 7
    iget-object v0, p0, Le/a/j/a/d/a$f$a;->f:Le/a/j/a/d/a$f;

    iget-object v0, v0, Le/a/j/a/d/a$f;->a:Le/a/j/a/d/a;

    .line 8
    invoke-virtual {v0}, Le/a/j/a/d/a;->QA()Le/a/j/d/a;

    move-result-object v0

    .line 9
    iget-object v0, v0, Le/a/j/d/a;->b:Landroid/widget/RatingBar;

    const-string v1, "binding.ratingBar"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/RatingBar;->getRating()F

    move-result v0

    .line 10
    iget-object v1, p1, Lcom/truecaller/surveys/ui/bizmonAdapter/BizSurveyControllerViewModel;->c:Le/a/j/e/a;

    const/4 v3, 0x0

    cmpg-float v3, v0, v3

    if-nez v3, :cond_3

    goto :goto_3

    .line 11
    :cond_3
    iget-object v3, p1, Lcom/truecaller/surveys/ui/bizmonAdapter/BizSurveyControllerViewModel;->b:Lq3/a/x2/i1;

    invoke-interface {v3}, Lq3/a/x2/i1;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/truecaller/surveys/ui/bizmonAdapter/BizSurveyControllerViewModel$a;

    .line 12
    instance-of v3, v3, Lcom/truecaller/surveys/ui/bizmonAdapter/BizSurveyControllerViewModel$a$b;

    if-eqz v3, :cond_7

    .line 13
    iget-object v3, p1, Lcom/truecaller/surveys/ui/bizmonAdapter/BizSurveyControllerViewModel;->b:Lq3/a/x2/i1;

    invoke-interface {v3}, Lq3/a/x2/i1;->getValue()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type com.truecaller.surveys.ui.bizmonAdapter.BizSurveyControllerViewModel.State.RatingQuestion"

    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v3, Lcom/truecaller/surveys/ui/bizmonAdapter/BizSurveyControllerViewModel$a$b;

    .line 14
    iget-object v3, v3, Lcom/truecaller/surveys/ui/bizmonAdapter/BizSurveyControllerViewModel$a$b;->a:Lcom/truecaller/surveys/data/entities/Question$Rating;

    .line 15
    invoke-virtual {v3}, Lcom/truecaller/surveys/data/entities/Question$Rating;->getChoices()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/truecaller/surveys/data/entities/Choice;

    invoke-virtual {v5}, Lcom/truecaller/surveys/data/entities/Choice;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    cmpg-float v5, v5, v0

    if-nez v5, :cond_5

    move v5, v2

    goto :goto_1

    :cond_5
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_4

    goto :goto_2

    :cond_6
    const/4 v4, 0x0

    :goto_2
    check-cast v4, Lcom/truecaller/surveys/data/entities/Choice;

    if-eqz v4, :cond_7

    .line 16
    new-instance v0, Lcom/truecaller/surveys/data/entities/Answer$Rating;

    invoke-direct {v0, v4}, Lcom/truecaller/surveys/data/entities/Answer$Rating;-><init>(Lcom/truecaller/surveys/data/entities/Choice;)V

    invoke-interface {v1, v0}, Le/a/j/e/a;->d(Lcom/truecaller/surveys/data/entities/Answer;)V

    .line 17
    iget-object p1, p1, Lcom/truecaller/surveys/ui/bizmonAdapter/BizSurveyControllerViewModel;->a:Lq3/a/x2/a1;

    sget-object v0, Lcom/truecaller/surveys/ui/bizmonAdapter/BizSurveyControllerViewModel$a$c;->a:Lcom/truecaller/surveys/ui/bizmonAdapter/BizSurveyControllerViewModel$a$c;

    invoke-interface {p1, v0}, Lq3/a/x2/a1;->setValue(Ljava/lang/Object;)V

    .line 18
    :cond_7
    :goto_3
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
