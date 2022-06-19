.class public final Lcom/truecaller/survey/qa/SurveyListQaActivity$c;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/survey/qa/SurveyListQaActivity;->onCreate(Landroid/os/Bundle;)V
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
    c = "com.truecaller.survey.qa.SurveyListQaActivity$onCreate$1"
    f = "SurveyListQaActivity.kt"
    l = {
        0x3b
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Lcom/truecaller/survey/qa/SurveyListQaActivity;


# direct methods
.method public constructor <init>(Lcom/truecaller/survey/qa/SurveyListQaActivity;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/survey/qa/SurveyListQaActivity$c;->f:Lcom/truecaller/survey/qa/SurveyListQaActivity;

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

    new-instance p1, Lcom/truecaller/survey/qa/SurveyListQaActivity$c;

    iget-object v0, p0, Lcom/truecaller/survey/qa/SurveyListQaActivity$c;->f:Lcom/truecaller/survey/qa/SurveyListQaActivity;

    invoke-direct {p1, v0, p2}, Lcom/truecaller/survey/qa/SurveyListQaActivity$c;-><init>(Lcom/truecaller/survey/qa/SurveyListQaActivity;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/truecaller/survey/qa/SurveyListQaActivity$c;

    iget-object v0, p0, Lcom/truecaller/survey/qa/SurveyListQaActivity$c;->f:Lcom/truecaller/survey/qa/SurveyListQaActivity;

    invoke-direct {p1, v0, p2}, Lcom/truecaller/survey/qa/SurveyListQaActivity$c;-><init>(Lcom/truecaller/survey/qa/SurveyListQaActivity;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Lcom/truecaller/survey/qa/SurveyListQaActivity$c;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Lcom/truecaller/survey/qa/SurveyListQaActivity$c;->e:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

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

    .line 4
    iget-object p1, p0, Lcom/truecaller/survey/qa/SurveyListQaActivity$c;->f:Lcom/truecaller/survey/qa/SurveyListQaActivity;

    .line 5
    iget-object p1, p1, Lcom/truecaller/survey/qa/SurveyListQaActivity;->d:Le/a/j/c/d/b;

    if-eqz p1, :cond_4

    .line 6
    iput v3, p0, Lcom/truecaller/survey/qa/SurveyListQaActivity$c;->e:I

    invoke-interface {p1, p0}, Le/a/j/c/d/b;->a(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 7
    :cond_2
    :goto_0
    check-cast p1, Ljava/util/List;

    .line 8
    iget-object v0, p0, Lcom/truecaller/survey/qa/SurveyListQaActivity$c;->f:Lcom/truecaller/survey/qa/SurveyListQaActivity;

    new-instance v1, Lcom/truecaller/survey/qa/SurveyListQaActivity$a;

    invoke-direct {v1, v0, p1}, Lcom/truecaller/survey/qa/SurveyListQaActivity$a;-><init>(Lcom/truecaller/survey/qa/SurveyListQaActivity;Ljava/util/List;)V

    .line 9
    iput-object v1, v0, Lcom/truecaller/survey/qa/SurveyListQaActivity;->g:Lcom/truecaller/survey/qa/SurveyListQaActivity$a;

    .line 10
    iget-object v0, p0, Lcom/truecaller/survey/qa/SurveyListQaActivity$c;->f:Lcom/truecaller/survey/qa/SurveyListQaActivity;

    invoke-static {v0}, Lcom/truecaller/survey/qa/SurveyListQaActivity;->pa(Lcom/truecaller/survey/qa/SurveyListQaActivity;)Le/a/m3/c;

    move-result-object v0

    iget-object v0, v0, Le/a/m3/c;->b:Landroidx/viewpager2/widget/ViewPager2;

    const-string v1, "binding.surveyPager"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/truecaller/survey/qa/SurveyListQaActivity$c;->f:Lcom/truecaller/survey/qa/SurveyListQaActivity;

    .line 11
    iget-object v1, v1, Lcom/truecaller/survey/qa/SurveyListQaActivity;->g:Lcom/truecaller/survey/qa/SurveyListQaActivity$a;

    if-eqz v1, :cond_3

    .line 12
    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    .line 13
    iget-object v0, p0, Lcom/truecaller/survey/qa/SurveyListQaActivity$c;->f:Lcom/truecaller/survey/qa/SurveyListQaActivity;

    invoke-static {v0}, Lcom/truecaller/survey/qa/SurveyListQaActivity;->pa(Lcom/truecaller/survey/qa/SurveyListQaActivity;)Le/a/m3/c;

    move-result-object v0

    iget-object v0, v0, Le/a/m3/c;->b:Landroidx/viewpager2/widget/ViewPager2;

    new-instance v1, Lcom/truecaller/survey/qa/SurveyListQaActivity$c$a;

    invoke-direct {v1, p0, p1}, Lcom/truecaller/survey/qa/SurveyListQaActivity$c$a;-><init>(Lcom/truecaller/survey/qa/SurveyListQaActivity$c;Ljava/util/List;)V

    .line 14
    iget-object p1, v0, Landroidx/viewpager2/widget/ViewPager2;->c:Ln3/l0/b/c;

    .line 15
    iget-object p1, p1, Ln3/l0/b/c;->a:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1

    :cond_3
    const-string p1, "surveyPagerAdapter"

    .line 17
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    :cond_4
    const-string p1, "surveysDao"

    .line 18
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2
.end method
