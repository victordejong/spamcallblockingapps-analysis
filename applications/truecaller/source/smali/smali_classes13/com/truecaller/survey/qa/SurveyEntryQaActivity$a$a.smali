.class public final Lcom/truecaller/survey/qa/SurveyEntryQaActivity$a$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/survey/qa/SurveyEntryQaActivity$a;->onClick(Landroid/view/View;)V
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
    c = "com.truecaller.survey.qa.SurveyEntryQaActivity$onCreate$1$1"
    f = "SurveyEntryQaActivity.kt"
    l = {
        0x4c
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Lcom/truecaller/survey/qa/SurveyEntryQaActivity$a;

.field public final synthetic g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/truecaller/survey/qa/SurveyEntryQaActivity$a;Ljava/lang/String;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/survey/qa/SurveyEntryQaActivity$a$a;->f:Lcom/truecaller/survey/qa/SurveyEntryQaActivity$a;

    iput-object p2, p0, Lcom/truecaller/survey/qa/SurveyEntryQaActivity$a$a;->g:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 2
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

    new-instance p1, Lcom/truecaller/survey/qa/SurveyEntryQaActivity$a$a;

    iget-object v0, p0, Lcom/truecaller/survey/qa/SurveyEntryQaActivity$a$a;->f:Lcom/truecaller/survey/qa/SurveyEntryQaActivity$a;

    iget-object v1, p0, Lcom/truecaller/survey/qa/SurveyEntryQaActivity$a$a;->g:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Lcom/truecaller/survey/qa/SurveyEntryQaActivity$a$a;-><init>(Lcom/truecaller/survey/qa/SurveyEntryQaActivity$a;Ljava/lang/String;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/truecaller/survey/qa/SurveyEntryQaActivity$a$a;

    iget-object v0, p0, Lcom/truecaller/survey/qa/SurveyEntryQaActivity$a$a;->f:Lcom/truecaller/survey/qa/SurveyEntryQaActivity$a;

    iget-object v1, p0, Lcom/truecaller/survey/qa/SurveyEntryQaActivity$a$a;->g:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Lcom/truecaller/survey/qa/SurveyEntryQaActivity$a$a;-><init>(Lcom/truecaller/survey/qa/SurveyEntryQaActivity$a;Ljava/lang/String;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Lcom/truecaller/survey/qa/SurveyEntryQaActivity$a$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Lcom/truecaller/survey/qa/SurveyEntryQaActivity$a$a;->e:I

    const/4 v2, 0x0

    const-string v3, "uiContext"

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v4, :cond_0

    :try_start_0
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

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
    :try_start_1
    sget-object p1, Lq3/b/l/a;->b:Lq3/b/l/a$a;

    sget-object v1, Lcom/truecaller/surveys/data/entities/Survey;->Companion:Lcom/truecaller/surveys/data/entities/Survey$b;

    .line 5
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/truecaller/surveys/data/entities/Survey$a;->a:Lcom/truecaller/surveys/data/entities/Survey$a;

    .line 6
    iget-object v5, p0, Lcom/truecaller/survey/qa/SurveyEntryQaActivity$a$a;->g:Ljava/lang/String;

    invoke-virtual {p1, v1, v5}, Lq3/b/l/a;->a(Lq3/b/a;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truecaller/surveys/data/entities/Survey;

    .line 7
    new-instance v12, Lcom/truecaller/surveys/data/local/SurveyEntity;

    .line 8
    invoke-virtual {v1}, Lcom/truecaller/surveys/data/entities/Survey;->getId()Ljava/lang/String;

    move-result-object v6

    .line 9
    sget-object v5, Lcom/truecaller/surveys/data/entities/SurveyFlow;->Companion:Lcom/truecaller/surveys/data/entities/SurveyFlow$a;

    invoke-virtual {v5}, Lcom/truecaller/surveys/data/entities/SurveyFlow$a;->a()Lq3/b/b;

    move-result-object v5

    invoke-virtual {v1}, Lcom/truecaller/surveys/data/entities/Survey;->getFlow()Lcom/truecaller/surveys/data/entities/SurveyFlow;

    move-result-object v7

    invoke-virtual {p1, v5, v7}, Lq3/b/l/a;->b(Lq3/b/g;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 10
    sget-object v5, Lcom/truecaller/surveys/data/entities/Question;->Companion:Lcom/truecaller/surveys/data/entities/Question$a;

    invoke-virtual {v5}, Lcom/truecaller/surveys/data/entities/Question$a;->a()Lq3/b/b;

    move-result-object v5

    invoke-static {v5}, Ls1/a/a/a/v0/f/d;->m(Lq3/b/b;)Lq3/b/b;

    move-result-object v5

    invoke-virtual {v1}, Lcom/truecaller/surveys/data/entities/Survey;->getQuestions()Ljava/util/List;

    move-result-object v8

    invoke-virtual {p1, v5, v8}, Lq3/b/l/a;->b(Lq3/b/g;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 11
    sget-object v5, Ls1/z/c/k;->a:Ls1/z/c/k;

    invoke-static {v5}, Ls1/a/a/a/v0/f/d;->l3(Ls1/z/c/k;)Lq3/b/b;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    sget-object v5, Lq3/b/k/g;->b:Lq3/b/k/g;

    :try_start_2
    invoke-static {v5}, Ls1/a/a/a/v0/f/d;->m(Lq3/b/b;)Lq3/b/b;

    move-result-object v5

    .line 12
    invoke-virtual {v1}, Lcom/truecaller/surveys/data/entities/Survey;->getBottomSheetQuestionsIds()Ljava/util/List;

    move-result-object v1

    .line 13
    invoke-virtual {p1, v5, v1}, Lq3/b/l/a;->b(Lq3/b/g;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const-wide/16 v10, 0x0

    move-object v5, v12

    .line 14
    invoke-direct/range {v5 .. v11}, Lcom/truecaller/surveys/data/local/SurveyEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 15
    iget-object p1, p0, Lcom/truecaller/survey/qa/SurveyEntryQaActivity$a$a;->f:Lcom/truecaller/survey/qa/SurveyEntryQaActivity$a;

    iget-object p1, p1, Lcom/truecaller/survey/qa/SurveyEntryQaActivity$a;->a:Lcom/truecaller/survey/qa/SurveyEntryQaActivity;

    .line 16
    iget-object p1, p1, Lcom/truecaller/survey/qa/SurveyEntryQaActivity;->d:Le/a/j/c/d/b;

    if-eqz p1, :cond_4

    .line 17
    invoke-static {v12}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput v4, p0, Lcom/truecaller/survey/qa/SurveyEntryQaActivity$a$a;->e:I

    invoke-interface {p1, v1, p0}, Le/a/j/c/d/b;->b(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 18
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/truecaller/survey/qa/SurveyEntryQaActivity$a$a;->f:Lcom/truecaller/survey/qa/SurveyEntryQaActivity$a;

    iget-object p1, p1, Lcom/truecaller/survey/qa/SurveyEntryQaActivity$a;->a:Lcom/truecaller/survey/qa/SurveyEntryQaActivity;

    invoke-static {p1}, Ln3/v/r;->b(Ln3/v/b0;)Ln3/v/w;

    move-result-object v4

    iget-object p1, p0, Lcom/truecaller/survey/qa/SurveyEntryQaActivity$a$a;->f:Lcom/truecaller/survey/qa/SurveyEntryQaActivity$a;

    iget-object p1, p1, Lcom/truecaller/survey/qa/SurveyEntryQaActivity$a;->a:Lcom/truecaller/survey/qa/SurveyEntryQaActivity;

    .line 19
    iget-object v5, p1, Lcom/truecaller/survey/qa/SurveyEntryQaActivity;->f:Ls1/w/f;

    if-eqz v5, :cond_3

    const/4 v6, 0x0

    .line 20
    new-instance v7, Lcom/truecaller/survey/qa/SurveyEntryQaActivity$a$a$a;

    invoke-direct {v7, p0, v2}, Lcom/truecaller/survey/qa/SurveyEntryQaActivity$a$a$a;-><init>(Lcom/truecaller/survey/qa/SurveyEntryQaActivity$a$a;Ls1/w/d;)V

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    goto :goto_1

    .line 21
    :cond_3
    invoke-static {v3}, Ls1/z/c/l;->l(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    throw v2

    :cond_4
    :try_start_3
    const-string p1, "surveysDao"

    .line 22
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    throw v2

    :catch_0
    move-exception p1

    .line 23
    iget-object v0, p0, Lcom/truecaller/survey/qa/SurveyEntryQaActivity$a$a;->f:Lcom/truecaller/survey/qa/SurveyEntryQaActivity$a;

    iget-object v0, v0, Lcom/truecaller/survey/qa/SurveyEntryQaActivity$a;->a:Lcom/truecaller/survey/qa/SurveyEntryQaActivity;

    invoke-static {v0}, Ln3/v/r;->b(Ln3/v/b0;)Ln3/v/w;

    move-result-object v4

    iget-object v0, p0, Lcom/truecaller/survey/qa/SurveyEntryQaActivity$a$a;->f:Lcom/truecaller/survey/qa/SurveyEntryQaActivity$a;

    iget-object v0, v0, Lcom/truecaller/survey/qa/SurveyEntryQaActivity$a;->a:Lcom/truecaller/survey/qa/SurveyEntryQaActivity;

    .line 24
    iget-object v5, v0, Lcom/truecaller/survey/qa/SurveyEntryQaActivity;->f:Ls1/w/f;

    if-eqz v5, :cond_5

    const/4 v6, 0x0

    .line 25
    new-instance v7, Lcom/truecaller/survey/qa/SurveyEntryQaActivity$a$a$b;

    invoke-direct {v7, p0, p1, v2}, Lcom/truecaller/survey/qa/SurveyEntryQaActivity$a$a$b;-><init>(Lcom/truecaller/survey/qa/SurveyEntryQaActivity$a$a;Ljava/lang/Exception;Ls1/w/d;)V

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 26
    :goto_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1

    .line 27
    :cond_5
    invoke-static {v3}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2
.end method
