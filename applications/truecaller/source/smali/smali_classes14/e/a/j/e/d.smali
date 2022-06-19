.class public final Le/a/j/e/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/j/e/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/j/e/d$a;
    }
.end annotation


# instance fields
.field public final a:Lq3/a/x2/a1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/x2/a1<",
            "Le/a/j/e/d$a;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lq3/a/x2/i1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/x2/i1<",
            "Le/a/j/e/d$a;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Le/a/j/e/a;

.field public final d:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/g5/n;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/j/e/a;Le/a/r2/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/j/e/a;",
            "Le/a/r2/f<",
            "Le/a/g5/n;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "surveyCoordinator"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tagDataSaver"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/j/e/d;->c:Le/a/j/e/a;

    iput-object p2, p0, Le/a/j/e/d;->d:Le/a/r2/f;

    const/4 p1, 0x0

    .line 2
    invoke-static {p1}, Lq3/a/x2/k1;->a(Ljava/lang/Object;)Lq3/a/x2/a1;

    move-result-object p1

    iput-object p1, p0, Le/a/j/e/d;->a:Lq3/a/x2/a1;

    .line 3
    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->E(Lq3/a/x2/a1;)Lq3/a/x2/i1;

    move-result-object p1

    iput-object p1, p0, Le/a/j/e/d;->b:Lq3/a/x2/i1;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/freetext/SuggestionType;)V
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/j/e/d;->c:Le/a/j/e/a;

    invoke-interface {v0}, Le/a/j/e/a;->b()Lcom/truecaller/data/entity/Contact;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Le/a/j/e/d;->d:Le/a/r2/f;

    invoke-interface {v1}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/g5/n;

    .line 3
    invoke-virtual {p2}, Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/freetext/SuggestionType;->getValue()I

    move-result p2

    .line 4
    invoke-interface {v1, v0, p1, p2}, Le/a/g5/n;->a(Lcom/truecaller/data/entity/Contact;Ljava/lang/String;I)Le/a/r2/x;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Le/a/r2/x;->g()V

    goto :goto_0

    :cond_0
    const-string p1, "Survey invalid state, question can\'t be handled"

    .line 6
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportWeirdnessButNeverCrash(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/j/e/d;->a:Lq3/a/x2/a1;

    sget-object v1, Le/a/j/e/d$a$e;->a:Le/a/j/e/d$a$e;

    invoke-interface {v0, v1}, Lq3/a/x2/a1;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public c(Lcom/truecaller/surveys/data/entities/Answer;)V
    .locals 1

    const-string v0, "answer"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/j/e/d;->c:Le/a/j/e/a;

    invoke-interface {v0, p1}, Le/a/j/e/a;->d(Lcom/truecaller/surveys/data/entities/Answer;)V

    .line 2
    iget-object p1, p0, Le/a/j/e/d;->c:Le/a/j/e/a;

    invoke-interface {p1}, Le/a/j/e/a;->a()V

    .line 3
    invoke-virtual {p0}, Le/a/j/e/d;->d()V

    return-void
.end method

.method public final d()V
    .locals 5

    .line 1
    sget-object v0, Le/a/j/e/d$a$c;->a:Le/a/j/e/d$a$c;

    iget-object v1, p0, Le/a/j/e/d;->a:Lq3/a/x2/a1;

    iget-object v2, p0, Le/a/j/e/d;->c:Le/a/j/e/a;

    invoke-interface {v2}, Le/a/j/e/a;->getState()Le/a/j/e/f;

    move-result-object v2

    .line 2
    instance-of v3, v2, Le/a/j/e/f$a;

    if-eqz v3, :cond_2

    .line 3
    check-cast v2, Le/a/j/e/f$a;

    .line 4
    iget-object v3, v2, Le/a/j/e/f$a;->a:Lcom/truecaller/surveys/data/entities/Question;

    .line 5
    instance-of v4, v3, Lcom/truecaller/surveys/data/entities/Question$SingleChoice;

    if-eqz v4, :cond_0

    new-instance v0, Le/a/j/e/d$a$d;

    check-cast v3, Lcom/truecaller/surveys/data/entities/Question$SingleChoice;

    invoke-direct {v0, v3}, Le/a/j/e/d$a$d;-><init>(Lcom/truecaller/surveys/data/entities/Question$SingleChoice;)V

    goto :goto_0

    .line 6
    :cond_0
    instance-of v4, v3, Lcom/truecaller/surveys/data/entities/Question$Binary;

    if-eqz v4, :cond_1

    new-instance v0, Le/a/j/e/d$a$a;

    check-cast v3, Lcom/truecaller/surveys/data/entities/Question$Binary;

    invoke-direct {v0, v3}, Le/a/j/e/d$a$a;-><init>(Lcom/truecaller/surveys/data/entities/Question$Binary;)V

    goto :goto_0

    .line 7
    :cond_1
    instance-of v4, v3, Lcom/truecaller/surveys/data/entities/Question$FreeText;

    if-eqz v4, :cond_4

    new-instance v0, Le/a/j/e/d$a$b;

    check-cast v3, Lcom/truecaller/surveys/data/entities/Question$FreeText;

    .line 8
    iget-object v2, v2, Le/a/j/e/f$a;->b:Lcom/truecaller/surveys/data/entities/SurveyFlow;

    .line 9
    instance-of v2, v2, Lcom/truecaller/surveys/data/entities/SurveyFlow$NameSuggestion;

    invoke-direct {v0, v3, v2}, Le/a/j/e/d$a$b;-><init>(Lcom/truecaller/surveys/data/entities/Question$FreeText;Z)V

    goto :goto_0

    .line 10
    :cond_2
    sget-object v3, Le/a/j/e/f$c;->a:Le/a/j/e/f$c;

    invoke-static {v2, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    .line 11
    :cond_3
    sget-object v0, Le/a/j/e/f$b;->a:Le/a/j/e/f$b;

    invoke-static {v2, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Le/a/j/e/d$a$e;->a:Le/a/j/e/d$a$e;

    .line 12
    :cond_4
    :goto_0
    invoke-interface {v1, v0}, Lq3/a/x2/a1;->setValue(Ljava/lang/Object;)V

    return-void

    .line 13
    :cond_5
    new-instance v0, Ls1/i;

    invoke-direct {v0}, Ls1/i;-><init>()V

    throw v0
.end method

.method public getState()Lq3/a/x2/i1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lq3/a/x2/i1<",
            "Le/a/j/e/d$a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/j/e/d;->b:Lq3/a/x2/i1;

    return-object v0
.end method

.method public start()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Le/a/j/e/d;->d()V

    return-void
.end method
