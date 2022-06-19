.class public final Le/a/j/a/f/d;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
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
    c = "com.truecaller.surveys.ui.bizmonAdapter.BizSurveyControllerViewModel$start$1"
    f = "BizSurveyControllerViewModel.kt"
    l = {
        0x1f
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Lcom/truecaller/surveys/ui/bizmonAdapter/BizSurveyControllerViewModel;

.field public final synthetic g:Lcom/truecaller/data/entity/Contact;


# direct methods
.method public constructor <init>(Lcom/truecaller/surveys/ui/bizmonAdapter/BizSurveyControllerViewModel;Lcom/truecaller/data/entity/Contact;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/j/a/f/d;->f:Lcom/truecaller/surveys/ui/bizmonAdapter/BizSurveyControllerViewModel;

    iput-object p2, p0, Le/a/j/a/f/d;->g:Lcom/truecaller/data/entity/Contact;

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

    new-instance p1, Le/a/j/a/f/d;

    iget-object v0, p0, Le/a/j/a/f/d;->f:Lcom/truecaller/surveys/ui/bizmonAdapter/BizSurveyControllerViewModel;

    iget-object v1, p0, Le/a/j/a/f/d;->g:Lcom/truecaller/data/entity/Contact;

    invoke-direct {p1, v0, v1, p2}, Le/a/j/a/f/d;-><init>(Lcom/truecaller/surveys/ui/bizmonAdapter/BizSurveyControllerViewModel;Lcom/truecaller/data/entity/Contact;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/j/a/f/d;

    iget-object v0, p0, Le/a/j/a/f/d;->f:Lcom/truecaller/surveys/ui/bizmonAdapter/BizSurveyControllerViewModel;

    iget-object v1, p0, Le/a/j/a/f/d;->g:Lcom/truecaller/data/entity/Contact;

    invoke-direct {p1, v0, v1, p2}, Le/a/j/a/f/d;-><init>(Lcom/truecaller/surveys/ui/bizmonAdapter/BizSurveyControllerViewModel;Lcom/truecaller/data/entity/Contact;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/j/a/f/d;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/j/a/f/d;->e:I

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

    .line 4
    iget-object p1, p0, Le/a/j/a/f/d;->f:Lcom/truecaller/surveys/ui/bizmonAdapter/BizSurveyControllerViewModel;

    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object p1, p0, Le/a/j/a/f/d;->f:Lcom/truecaller/surveys/ui/bizmonAdapter/BizSurveyControllerViewModel;

    .line 7
    iget-object p1, p1, Lcom/truecaller/surveys/ui/bizmonAdapter/BizSurveyControllerViewModel;->c:Le/a/j/e/a;

    .line 8
    iget-object v1, p0, Le/a/j/a/f/d;->g:Lcom/truecaller/data/entity/Contact;

    iput v2, p0, Le/a/j/a/f/d;->e:I

    invoke-interface {p1, v1, p0}, Le/a/j/e/a;->c(Lcom/truecaller/data/entity/Contact;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 9
    :cond_2
    :goto_0
    iget-object p1, p0, Le/a/j/a/f/d;->f:Lcom/truecaller/surveys/ui/bizmonAdapter/BizSurveyControllerViewModel;

    .line 10
    sget-object v0, Lcom/truecaller/surveys/ui/bizmonAdapter/BizSurveyControllerViewModel$a$a;->a:Lcom/truecaller/surveys/ui/bizmonAdapter/BizSurveyControllerViewModel$a$a;

    iget-object v1, p1, Lcom/truecaller/surveys/ui/bizmonAdapter/BizSurveyControllerViewModel;->a:Lq3/a/x2/a1;

    iget-object p1, p1, Lcom/truecaller/surveys/ui/bizmonAdapter/BizSurveyControllerViewModel;->c:Le/a/j/e/a;

    invoke-interface {p1}, Le/a/j/e/a;->getState()Le/a/j/e/f;

    move-result-object p1

    .line 11
    instance-of v2, p1, Le/a/j/e/f$a;

    if-eqz v2, :cond_3

    .line 12
    check-cast p1, Le/a/j/e/f$a;

    .line 13
    iget-object p1, p1, Le/a/j/e/f$a;->a:Lcom/truecaller/surveys/data/entities/Question;

    .line 14
    instance-of v2, p1, Lcom/truecaller/surveys/data/entities/Question$Rating;

    if-eqz v2, :cond_5

    new-instance v0, Lcom/truecaller/surveys/ui/bizmonAdapter/BizSurveyControllerViewModel$a$b;

    check-cast p1, Lcom/truecaller/surveys/data/entities/Question$Rating;

    invoke-direct {v0, p1}, Lcom/truecaller/surveys/ui/bizmonAdapter/BizSurveyControllerViewModel$a$b;-><init>(Lcom/truecaller/surveys/data/entities/Question$Rating;)V

    goto :goto_1

    .line 15
    :cond_3
    sget-object v2, Le/a/j/e/f$b;->a:Le/a/j/e/f$b;

    invoke-static {p1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v0, Lcom/truecaller/surveys/ui/bizmonAdapter/BizSurveyControllerViewModel$a$c;->a:Lcom/truecaller/surveys/ui/bizmonAdapter/BizSurveyControllerViewModel$a$c;

    goto :goto_1

    .line 16
    :cond_4
    sget-object v2, Le/a/j/e/f$c;->a:Le/a/j/e/f$c;

    invoke-static {p1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 17
    :cond_5
    :goto_1
    invoke-interface {v1, v0}, Lq3/a/x2/a1;->setValue(Ljava/lang/Object;)V

    .line 18
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1

    .line 19
    :cond_6
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1
.end method
