.class public final Le/a/j/e/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/j/e/a;


# instance fields
.field public a:Lcom/truecaller/surveys/data/entities/Survey;

.field public b:Ljava/lang/String;

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/truecaller/surveys/data/entities/Answer;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/truecaller/surveys/data/entities/Question;",
            ">;"
        }
    .end annotation
.end field

.field public e:Z

.field public f:Le/a/j/e/f;

.field public g:Lcom/truecaller/data/entity/Contact;

.field public final h:Landroid/content/Context;

.field public final i:Le/a/j/c/b;

.field public final j:Le/a/j/e/g;

.field public final k:Le/a/j/e/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/j/c/b;Le/a/j/e/g;Le/a/j/e/h;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "surveysRepository"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "surveysHelper"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/j/e/b;->h:Landroid/content/Context;

    iput-object p2, p0, Le/a/j/e/b;->i:Le/a/j/c/b;

    iput-object p3, p0, Le/a/j/e/b;->j:Le/a/j/e/g;

    iput-object p4, p0, Le/a/j/e/b;->k:Le/a/j/e/h;

    .line 2
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Le/a/j/e/b;->c:Ljava/util/Map;

    .line 3
    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Le/a/j/e/b;->d:Ljava/util/Stack;

    .line 4
    sget-object p1, Le/a/j/e/f$c;->a:Le/a/j/e/f$c;

    iput-object p1, p0, Le/a/j/e/b;->f:Le/a/j/e/f;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    .line 1
    iget-object v0, p0, Le/a/j/e/b;->c:Ljava/util/Map;

    invoke-virtual {p0}, Le/a/j/e/b;->e()Lcom/truecaller/surveys/data/entities/Question;

    move-result-object v1

    invoke-virtual {v1}, Lcom/truecaller/surveys/data/entities/Question;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_d

    check-cast v0, Lcom/truecaller/surveys/data/entities/Answer;

    .line 2
    invoke-virtual {p0}, Le/a/j/e/b;->e()Lcom/truecaller/surveys/data/entities/Question;

    move-result-object v1

    .line 3
    instance-of v2, v1, Lcom/truecaller/surveys/data/entities/Question$FreeText;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Le/a/j/e/b;->e()Lcom/truecaller/surveys/data/entities/Question;

    move-result-object v0

    check-cast v0, Lcom/truecaller/surveys/data/entities/Question$FreeText;

    invoke-virtual {v0}, Lcom/truecaller/surveys/data/entities/Question$FreeText;->getFollowupQuestionId()Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_0
    instance-of v2, v1, Lcom/truecaller/surveys/data/entities/Question$Binary;

    if-eqz v2, :cond_1

    check-cast v0, Lcom/truecaller/surveys/data/entities/Answer$Binary;

    invoke-virtual {v0}, Lcom/truecaller/surveys/data/entities/Answer$Binary;->getChoice()Lcom/truecaller/surveys/data/entities/Choice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/surveys/data/entities/Choice;->getFollowupQuestionId()Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 5
    :cond_1
    instance-of v2, v1, Lcom/truecaller/surveys/data/entities/Question$SingleChoice;

    if-eqz v2, :cond_2

    check-cast v0, Lcom/truecaller/surveys/data/entities/Answer$SingleChoice;

    invoke-virtual {v0}, Lcom/truecaller/surveys/data/entities/Answer$SingleChoice;->getChoice()Lcom/truecaller/surveys/data/entities/Choice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/surveys/data/entities/Choice;->getFollowupQuestionId()Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 6
    :cond_2
    instance-of v1, v1, Lcom/truecaller/surveys/data/entities/Question$Rating;

    if-eqz v1, :cond_c

    check-cast v0, Lcom/truecaller/surveys/data/entities/Answer$Rating;

    invoke-virtual {v0}, Lcom/truecaller/surveys/data/entities/Answer$Rating;->getChoice()Lcom/truecaller/surveys/data/entities/Choice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/surveys/data/entities/Choice;->getFollowupQuestionId()Ljava/lang/Integer;

    move-result-object v0

    .line 7
    :goto_0
    iget-object v1, p0, Le/a/j/e/b;->a:Lcom/truecaller/surveys/data/entities/Survey;

    const-string v2, "survey"

    const/4 v3, 0x0

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lcom/truecaller/surveys/data/entities/Survey;->getQuestions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/truecaller/surveys/data/entities/Question;

    invoke-virtual {v5}, Lcom/truecaller/surveys/data/entities/Question;->getId()I

    move-result v5

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v5, v6, :cond_5

    const/4 v5, 0x1

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_3

    goto :goto_3

    :cond_6
    move-object v4, v3

    :goto_3
    check-cast v4, Lcom/truecaller/surveys/data/entities/Question;

    if-eqz v4, :cond_8

    .line 8
    iget-object v0, p0, Le/a/j/e/b;->d:Ljava/util/Stack;

    invoke-virtual {v0, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-virtual {p0}, Le/a/j/e/b;->f()Z

    move-result v0

    iput-boolean v0, p0, Le/a/j/e/b;->e:Z

    .line 10
    new-instance v0, Le/a/j/e/f$a;

    .line 11
    invoke-virtual {p0}, Le/a/j/e/b;->e()Lcom/truecaller/surveys/data/entities/Question;

    move-result-object v1

    .line 12
    iget-object v4, p0, Le/a/j/e/b;->a:Lcom/truecaller/surveys/data/entities/Survey;

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lcom/truecaller/surveys/data/entities/Survey;->getFlow()Lcom/truecaller/surveys/data/entities/SurveyFlow;

    move-result-object v2

    .line 13
    invoke-virtual {p0}, Le/a/j/e/b;->f()Z

    move-result v3

    .line 14
    invoke-direct {v0, v1, v2, v3}, Le/a/j/e/f$a;-><init>(Lcom/truecaller/surveys/data/entities/Question;Lcom/truecaller/surveys/data/entities/SurveyFlow;Z)V

    iput-object v0, p0, Le/a/j/e/b;->f:Le/a/j/e/f;

    goto :goto_5

    .line 15
    :cond_7
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3

    :cond_8
    if-eqz v0, :cond_a

    .line 16
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "Invalid state: Survey with id: "

    .line 17
    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Le/a/j/e/b;->a:Lcom/truecaller/surveys/data/entities/Survey;

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Lcom/truecaller/surveys/data/entities/Survey;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " doesn\'t have a followup question with id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportWeirdnessButNeverCrash(Ljava/lang/String;)V

    goto :goto_4

    :cond_9
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3

    .line 18
    :cond_a
    :goto_4
    sget-object v0, Le/a/j/e/f$b;->a:Le/a/j/e/f$b;

    iput-object v0, p0, Le/a/j/e/b;->f:Le/a/j/e/f;

    .line 19
    iput-object v3, p0, Le/a/j/e/b;->g:Lcom/truecaller/data/entity/Contact;

    .line 20
    iget-object v0, p0, Le/a/j/e/b;->d:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    :goto_5
    return-void

    .line 21
    :cond_b
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3

    .line 22
    :cond_c
    new-instance v0, Ls1/i;

    invoke-direct {v0}, Ls1/i;-><init>()V

    throw v0

    .line 23
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value was null."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()Lcom/truecaller/data/entity/Contact;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/j/e/b;->g:Lcom/truecaller/data/entity/Contact;

    return-object v0
.end method

.method public c(Lcom/truecaller/data/entity/Contact;Ls1/w/d;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/data/entity/Contact;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Ls1/s;->a:Ls1/s;

    instance-of v1, p2, Le/a/j/e/b$a;

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Le/a/j/e/b$a;

    iget v2, v1, Le/a/j/e/b$a;->e:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Le/a/j/e/b$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v1, Le/a/j/e/b$a;

    invoke-direct {v1, p0, p2}, Le/a/j/e/b$a;-><init>(Le/a/j/e/b;Ls1/w/d;)V

    :goto_0
    iget-object p2, v1, Le/a/j/e/b$a;->d:Ljava/lang/Object;

    sget-object v2, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v3, v1, Le/a/j/e/b$a;->e:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    const-string v6, "survey"

    const/4 v7, 0x0

    if-eqz v3, :cond_3

    if-eq v3, v5, :cond_2

    if-ne v3, v4, :cond_1

    iget-object p1, v1, Le/a/j/e/b$a;->h:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/data/entity/Contact;

    iget-object v1, v1, Le/a/j/e/b$a;->g:Ljava/lang/Object;

    check-cast v1, Le/a/j/e/b;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, v1, Le/a/j/e/b$a;->j:Ljava/lang/Object;

    check-cast p1, Le/a/j/e/b;

    iget-object v3, v1, Le/a/j/e/b$a;->i:Ljava/lang/Object;

    check-cast v3, Lcom/truecaller/data/entity/ContactSurvey;

    iget-object v8, v1, Le/a/j/e/b$a;->h:Ljava/lang/Object;

    check-cast v8, Lcom/truecaller/data/entity/Contact;

    iget-object v9, v1, Le/a/j/e/b$a;->g:Ljava/lang/Object;

    check-cast v9, Le/a/j/e/b;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->c0()Ljava/util/List;

    move-result-object p2

    const-string v3, "contact.surveys"

    invoke-static {p2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/truecaller/data/entity/ContactSurvey;

    if-eqz v3, :cond_13

    .line 5
    iput-object p0, v1, Le/a/j/e/b$a;->g:Ljava/lang/Object;

    iput-object p1, v1, Le/a/j/e/b$a;->h:Ljava/lang/Object;

    iput-object v3, v1, Le/a/j/e/b$a;->i:Ljava/lang/Object;

    iput-object p0, v1, Le/a/j/e/b$a;->j:Ljava/lang/Object;

    iput v5, v1, Le/a/j/e/b$a;->e:I

    .line 6
    invoke-virtual {v3}, Lcom/truecaller/data/entity/ContactSurvey;->getId()Ljava/lang/String;

    move-result-object p2

    const-string v8, "Required value was null."

    if-eqz p2, :cond_12

    .line 7
    invoke-virtual {v3}, Lcom/truecaller/data/entity/ContactSurvey;->getPassthroughData()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_11

    .line 8
    iget-object v8, p0, Le/a/j/e/b;->i:Le/a/j/c/b;

    invoke-interface {v8, p2, v9, v1}, Le/a/j/c/b;->d(Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v2, :cond_4

    return-object v2

    :cond_4
    move-object v9, p0

    move-object v8, p1

    move-object p1, v9

    .line 9
    :goto_1
    check-cast p2, Lcom/truecaller/surveys/data/entities/Survey;

    if-eqz p2, :cond_10

    iput-object p2, p1, Le/a/j/e/b;->a:Lcom/truecaller/surveys/data/entities/Survey;

    .line 10
    iget-object p1, v9, Le/a/j/e/b;->k:Le/a/j/e/h;

    iget-object p2, v9, Le/a/j/e/b;->a:Lcom/truecaller/surveys/data/entities/Survey;

    if-eqz p2, :cond_f

    check-cast p1, Le/a/j/e/i;

    invoke-virtual {p1, p2, v3}, Le/a/j/e/i;->a(Lcom/truecaller/surveys/data/entities/Survey;Lcom/truecaller/data/entity/ContactSurvey;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "Attempted to start a survey, when last seen has not expired yet."

    .line 11
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportWeirdnessButNeverCrash(Ljava/lang/String;)V

    return-object v0

    .line 12
    :cond_5
    iput-object v8, v9, Le/a/j/e/b;->g:Lcom/truecaller/data/entity/Contact;

    const-string p1, "UUID.randomUUID().toString()"

    .line 13
    invoke-static {p1}, Le/d/c/a/a;->e2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v9, Le/a/j/e/b;->b:Ljava/lang/String;

    .line 14
    iget-object p1, v9, Le/a/j/e/b;->d:Ljava/util/Stack;

    iget-object p2, v9, Le/a/j/e/b;->a:Lcom/truecaller/surveys/data/entities/Survey;

    if-eqz p2, :cond_e

    invoke-virtual {p2}, Lcom/truecaller/surveys/data/entities/Survey;->getQuestions()Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-virtual {v9}, Le/a/j/e/b;->f()Z

    move-result p1

    iput-boolean p1, v9, Le/a/j/e/b;->e:Z

    .line 16
    new-instance p1, Le/a/j/e/f$a;

    .line 17
    invoke-virtual {v9}, Le/a/j/e/b;->e()Lcom/truecaller/surveys/data/entities/Question;

    move-result-object p2

    .line 18
    iget-object v3, v9, Le/a/j/e/b;->a:Lcom/truecaller/surveys/data/entities/Survey;

    if-eqz v3, :cond_d

    invoke-virtual {v3}, Lcom/truecaller/surveys/data/entities/Survey;->getFlow()Lcom/truecaller/surveys/data/entities/SurveyFlow;

    move-result-object v3

    .line 19
    invoke-virtual {v9}, Le/a/j/e/b;->f()Z

    move-result v10

    .line 20
    invoke-direct {p1, p2, v3, v10}, Le/a/j/e/f$a;-><init>(Lcom/truecaller/surveys/data/entities/Question;Lcom/truecaller/surveys/data/entities/SurveyFlow;Z)V

    iput-object p1, v9, Le/a/j/e/b;->f:Le/a/j/e/f;

    .line 21
    iget-object p1, v9, Le/a/j/e/b;->i:Le/a/j/c/b;

    iget-object p2, v9, Le/a/j/e/b;->a:Lcom/truecaller/surveys/data/entities/Survey;

    if-eqz p2, :cond_c

    invoke-virtual {p2}, Lcom/truecaller/surveys/data/entities/Survey;->getId()Ljava/lang/String;

    move-result-object p2

    iput-object v9, v1, Le/a/j/e/b$a;->g:Ljava/lang/Object;

    iput-object v8, v1, Le/a/j/e/b$a;->h:Ljava/lang/Object;

    iput-object v7, v1, Le/a/j/e/b$a;->i:Ljava/lang/Object;

    iput-object v7, v1, Le/a/j/e/b$a;->j:Ljava/lang/Object;

    iput v4, v1, Le/a/j/e/b$a;->e:I

    invoke-interface {p1, p2, v1}, Le/a/j/c/b;->c(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_6

    return-object v2

    :cond_6
    move-object p1, v8

    move-object v1, v9

    .line 22
    :goto_2
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->M()Ljava/util/List;

    move-result-object p1

    const-string p2, "contact.numbers"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Le/a/m0/a1$k;->x1(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 23
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz p2, :cond_8

    move v3, v5

    goto :goto_3

    :cond_8
    move v3, v2

    .line 24
    :goto_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 25
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_7

    if-eqz p2, :cond_9

    goto :goto_4

    :cond_9
    const-string p2, ""

    .line 26
    :goto_4
    iget-object p1, v1, Le/a/j/e/b;->j:Le/a/j/e/g;

    iget-object v1, v1, Le/a/j/e/b;->a:Lcom/truecaller/surveys/data/entities/Survey;

    if-eqz v1, :cond_a

    .line 27
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "contactNormalizedNumber"

    invoke-static {p2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-static {}, Le/a/l5/a/p3;->a()Le/a/l5/a/p3$b;

    move-result-object v3

    const-string v6, "SurveyShown"

    .line 29
    invoke-virtual {v3, v6}, Le/a/l5/a/p3$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/p3$b;

    const/4 v6, 0x3

    new-array v6, v6, [Ls1/k;

    .line 30
    invoke-virtual {v1}, Lcom/truecaller/surveys/data/entities/Survey;->getId()Ljava/lang/String;

    move-result-object v7

    .line 31
    new-instance v8, Ls1/k;

    const-string v9, "SurveyID"

    invoke-direct {v8, v9, v7}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v8, v6, v2

    .line 32
    invoke-virtual {v1}, Lcom/truecaller/surveys/data/entities/Survey;->getFlow()Lcom/truecaller/surveys/data/entities/SurveyFlow;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 33
    new-instance v2, Ls1/k;

    const-string v7, "FlowId"

    invoke-direct {v2, v7, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v6, v5

    .line 34
    new-instance v1, Ls1/k;

    const-string v2, "ContactNormalizedNumber"

    invoke-direct {v1, v2, p2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v6, v4

    .line 35
    invoke-static {v6}, Ls1/u/i;->W([Ls1/k;)Ljava/util/Map;

    move-result-object p2

    .line 36
    invoke-virtual {v3, p2}, Le/a/l5/a/p3$b;->d(Ljava/util/Map;)Le/a/l5/a/p3$b;

    .line 37
    invoke-virtual {v3}, Le/a/l5/a/p3$b;->a()Le/a/l5/a/p3;

    move-result-object p2

    const-string v1, "GenericAnalyticsEvent.ne\u2026   )\n            .build()"

    invoke-static {p2, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object p1, p1, Le/a/j/e/g;->a:Le/a/q2/a;

    invoke-static {p2, p1}, Le/m/d/y/n;->C0(Lorg/apache/avro/generic/GenericRecord;Le/a/q2/a;)V

    return-object v0

    .line 39
    :cond_a
    invoke-static {v6}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v7

    .line 40
    :cond_b
    new-instance p1, Ljava/util/NoSuchElementException;

    const-string p2, "Collection contains no element matching the predicate."

    invoke-direct {p1, p2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 41
    :cond_c
    invoke-static {v6}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v7

    .line 42
    :cond_d
    invoke-static {v6}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v7

    .line 43
    :cond_e
    invoke-static {v6}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v7

    .line 44
    :cond_f
    invoke-static {v6}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v7

    :cond_10
    return-object v0

    .line 45
    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 46
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_13
    return-object v0
.end method

.method public d(Lcom/truecaller/surveys/data/entities/Answer;)V
    .locals 7

    const-string v0, "answer"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/j/e/b;->c:Ljava/util/Map;

    .line 2
    invoke-virtual {p0}, Le/a/j/e/b;->e()Lcom/truecaller/surveys/data/entities/Question;

    move-result-object v1

    invoke-virtual {v1}, Lcom/truecaller/surveys/data/entities/Question;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Le/a/j/e/b;->e()Lcom/truecaller/surveys/data/entities/Question;

    move-result-object v1

    invoke-virtual {v1}, Lcom/truecaller/surveys/data/entities/Question;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Le/a/j/e/b;->h:Landroid/content/Context;

    iget-object v0, p0, Le/a/j/e/b;->a:Lcom/truecaller/surveys/data/entities/Survey;

    const/4 v1, 0x0

    const-string v2, "survey"

    if-eqz v0, :cond_1

    iget-object v3, p0, Le/a/j/e/b;->c:Ljava/util/Map;

    iget-object v4, p0, Le/a/j/e/b;->b:Ljava/lang/String;

    const-string v5, "surveyUUID"

    if-eqz v4, :cond_0

    const-string v1, "context"

    .line 5
    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "answers"

    invoke-static {v3, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 7
    sget-object v2, Lq3/b/l/a;->b:Lq3/b/l/a$a;

    sget-object v5, Lcom/truecaller/surveys/data/entities/Survey;->Companion:Lcom/truecaller/surveys/data/entities/Survey$b;

    .line 8
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/truecaller/surveys/data/entities/Survey$a;->a:Lcom/truecaller/surveys/data/entities/Survey$a;

    .line 9
    invoke-virtual {v2, v5, v0}, Lq3/b/l/a;->b(Lq3/b/g;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "survey_as_json_key"

    .line 10
    invoke-virtual {v1, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v0, Ls1/z/c/k;->a:Ls1/z/c/k;

    invoke-static {v0}, Ls1/a/a/a/v0/f/d;->l3(Ls1/z/c/k;)Lq3/b/b;

    sget-object v0, Lq3/b/k/g;->b:Lq3/b/k/g;

    sget-object v5, Lcom/truecaller/surveys/data/entities/Answer;->Companion:Lcom/truecaller/surveys/data/entities/Answer$a;

    invoke-virtual {v5}, Lcom/truecaller/surveys/data/entities/Answer$a;->a()Lq3/b/b;

    move-result-object v5

    const-string v6, "keySerializer"

    .line 12
    invoke-static {v0, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "valueSerializer"

    invoke-static {v5, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    new-instance v6, Lq3/b/k/i;

    invoke-direct {v6, v0, v5}, Lq3/b/k/i;-><init>(Lq3/b/b;Lq3/b/b;)V

    .line 14
    invoke-virtual {v2, v6, v3}, Lq3/b/l/a;->b(Lq3/b/g;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "answers_as_json_key"

    .line 15
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    new-instance v0, Ln3/m0/f;

    invoke-direct {v0, v1}, Ln3/m0/f;-><init>(Ljava/util/Map;)V

    .line 17
    invoke-static {v0}, Ln3/m0/f;->g(Ln3/m0/f;)[B

    const-string v1, "Builder()\n              \u2026\n                .build()"

    .line 18
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-static {p1}, Ln3/m0/c0/l;->n(Landroid/content/Context;)Ln3/m0/c0/l;

    move-result-object p1

    .line 20
    sget-object v1, Ln3/m0/h;->a:Ln3/m0/h;

    .line 21
    new-instance v2, Ln3/m0/r$a;

    const-class v3, Lcom/truecaller/surveys/data/PostSurveyAnswersWorker;

    invoke-direct {v2, v3}, Ln3/m0/r$a;-><init>(Ljava/lang/Class;)V

    .line 22
    iget-object v3, v2, Ln3/m0/z$a;->c:Ln3/m0/c0/s/p;

    iput-object v0, v3, Ln3/m0/c0/s/p;->e:Ln3/m0/f;

    const-wide/16 v5, 0xa

    .line 23
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v5, v6, v0}, Ln3/m0/z$a;->f(JLjava/util/concurrent/TimeUnit;)Ln3/m0/z$a;

    move-result-object v0

    check-cast v0, Ln3/m0/r$a;

    .line 24
    new-instance v2, Ln3/m0/d$a;

    invoke-direct {v2}, Ln3/m0/d$a;-><init>()V

    sget-object v3, Ln3/m0/q;->b:Ln3/m0/q;

    .line 25
    iput-object v3, v2, Ln3/m0/d$a;->c:Ln3/m0/q;

    .line 26
    new-instance v3, Ln3/m0/d;

    invoke-direct {v3, v2}, Ln3/m0/d;-><init>(Ln3/m0/d$a;)V

    .line 27
    iget-object v2, v0, Ln3/m0/z$a;->c:Ln3/m0/c0/s/p;

    iput-object v3, v2, Ln3/m0/c0/s/p;->j:Ln3/m0/d;

    .line 28
    invoke-virtual {v0}, Ln3/m0/z$a;->b()Ln3/m0/z;

    move-result-object v0

    check-cast v0, Ln3/m0/r;

    .line 29
    invoke-virtual {p1, v4, v1, v0}, Ln3/m0/y;->i(Ljava/lang/String;Ln3/m0/h;Ln3/m0/r;)Ln3/m0/s;

    return-void

    .line 30
    :cond_0
    invoke-static {v5}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public final e()Lcom/truecaller/surveys/data/entities/Question;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/j/e/b;->d:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "questionsStack.peek()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/truecaller/surveys/data/entities/Question;

    return-object v0
.end method

.method public final f()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/j/e/b;->a:Lcom/truecaller/surveys/data/entities/Survey;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/truecaller/surveys/data/entities/Survey;->getBottomSheetQuestionsIds()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Le/a/j/e/b;->e()Lcom/truecaller/surveys/data/entities/Question;

    move-result-object v1

    invoke-virtual {v1}, Lcom/truecaller/surveys/data/entities/Question;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Le/a/j/e/b;->e:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_2
    const-string v0, "survey"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public getState()Le/a/j/e/f;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/j/e/b;->f:Le/a/j/e/f;

    return-object v0
.end method
