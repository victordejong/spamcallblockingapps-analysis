.class public final Le/a/j/e/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/j/e/h;


# instance fields
.field public final a:Le/a/j/c/b;

.field public final b:Le/a/b0/q/l0;


# direct methods
.method public constructor <init>(Le/a/j/c/b;Le/a/b0/q/l0;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "surveysRepository"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timestampUtil"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/j/e/i;->a:Le/a/j/c/b;

    iput-object p2, p0, Le/a/j/e/i;->b:Le/a/b0/q/l0;

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/surveys/data/entities/Survey;Lcom/truecaller/data/entity/ContactSurvey;)Z
    .locals 5

    const-string v0, "survey"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contactSurvey"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/j/e/i;->b:Le/a/b0/q/l0;

    invoke-virtual {p1}, Lcom/truecaller/surveys/data/entities/Survey;->getLastTimeSeen()J

    move-result-wide v1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2}, Lcom/truecaller/data/entity/ContactSurvey;->getFrequency()Ljava/lang/Long;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    :goto_0
    invoke-virtual {p1, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    invoke-virtual {v0, v1, v2, p1, p2}, Le/a/b0/q/l0;->b(JJ)Z

    move-result p1

    return p1
.end method

.method public b(Lcom/truecaller/data/entity/Contact;Le/a/j/e/e;Ls1/w/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/data/entity/Contact;",
            "Le/a/j/e/e;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    instance-of v1, p3, Le/a/j/e/i$a;

    if-eqz v1, :cond_0

    move-object v1, p3

    check-cast v1, Le/a/j/e/i$a;

    iget v2, v1, Le/a/j/e/i$a;->e:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Le/a/j/e/i$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v1, Le/a/j/e/i$a;

    invoke-direct {v1, p0, p3}, Le/a/j/e/i$a;-><init>(Le/a/j/e/i;Ls1/w/d;)V

    :goto_0
    iget-object p3, v1, Le/a/j/e/i$a;->d:Ljava/lang/Object;

    sget-object v2, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v3, v1, Le/a/j/e/i$a;->e:I

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v4, :cond_1

    iget-object p1, v1, Le/a/j/e/i$a;->i:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/data/entity/ContactSurvey;

    iget-object p2, v1, Le/a/j/e/i$a;->h:Ljava/lang/Object;

    check-cast p2, Le/a/j/e/e;

    iget-object v1, v1, Le/a/j/e/i$a;->g:Ljava/lang/Object;

    check-cast v1, Le/a/j/e/i;

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->c0()Ljava/util/List;

    move-result-object p1

    const-string p3, "contact.surveys"

    invoke-static {p1, p3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/data/entity/ContactSurvey;

    if-eqz p1, :cond_b

    .line 5
    invoke-virtual {p1}, Lcom/truecaller/data/entity/ContactSurvey;->getId()Ljava/lang/String;

    move-result-object p3

    const-string v3, "Required value was null."

    if-eqz p3, :cond_a

    .line 6
    invoke-virtual {p1}, Lcom/truecaller/data/entity/ContactSurvey;->getPassthroughData()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 7
    iget-object v3, p0, Le/a/j/e/i;->a:Le/a/j/c/b;

    iput-object p0, v1, Le/a/j/e/i$a;->g:Ljava/lang/Object;

    iput-object p2, v1, Le/a/j/e/i$a;->h:Ljava/lang/Object;

    iput-object p1, v1, Le/a/j/e/i$a;->i:Ljava/lang/Object;

    iput v4, v1, Le/a/j/e/i$a;->e:I

    invoke-interface {v3, p3, v5, v1}, Le/a/j/c/b;->d(Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v2, :cond_3

    return-object v2

    :cond_3
    move-object v1, p0

    :goto_1
    check-cast p3, Lcom/truecaller/surveys/data/entities/Survey;

    if-eqz p3, :cond_8

    .line 8
    invoke-virtual {v1, p3, p1}, Le/a/j/e/i;->a(Lcom/truecaller/surveys/data/entities/Survey;Lcom/truecaller/data/entity/ContactSurvey;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    .line 9
    instance-of p1, p2, Le/a/j/e/e$a;

    if-eqz p1, :cond_6

    .line 10
    check-cast p2, Le/a/j/e/e$a;

    .line 11
    invoke-virtual {p3}, Lcom/truecaller/surveys/data/entities/Survey;->getFlow()Lcom/truecaller/surveys/data/entities/SurveyFlow;

    move-result-object p1

    .line 12
    instance-of p1, p1, Lcom/truecaller/surveys/data/entities/SurveyFlow$AcsBizmon;

    if-eqz p1, :cond_5

    .line 13
    invoke-virtual {p3}, Lcom/truecaller/surveys/data/entities/Survey;->getFlow()Lcom/truecaller/surveys/data/entities/SurveyFlow;

    move-result-object p1

    check-cast p1, Lcom/truecaller/surveys/data/entities/SurveyFlow$AcsBizmon;

    invoke-virtual {p1}, Lcom/truecaller/surveys/data/entities/SurveyFlow$AcsBizmon;->getOnlyIfPickedUp()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 14
    iget-boolean p1, p2, Le/a/j/e/e$a;->b:Z

    if-nez p1, :cond_4

    goto :goto_2

    .line 15
    :cond_4
    iget-boolean p1, p2, Le/a/j/e/e$a;->a:Z

    xor-int/lit8 v0, p1, 0x1

    goto :goto_2

    :cond_5
    const-string p1, "Unsupported biz survey flow for ACS: "

    .line 16
    invoke-static {p1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p3}, Lcom/truecaller/surveys/data/entities/Survey;->getFlow()Lcom/truecaller/surveys/data/entities/SurveyFlow;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Le/a/c/p/a;->M1(Ljava/lang/String;)V

    goto :goto_2

    .line 17
    :cond_6
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    .line 18
    :cond_7
    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_8
    return-object v0

    .line 19
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    return-object v0
.end method

.method public c(Lcom/truecaller/data/entity/Contact;Le/a/j/e/e;Ls1/w/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/data/entity/Contact;",
            "Le/a/j/e/e;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    instance-of v1, p3, Le/a/j/e/i$b;

    if-eqz v1, :cond_0

    move-object v1, p3

    check-cast v1, Le/a/j/e/i$b;

    iget v2, v1, Le/a/j/e/i$b;->e:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Le/a/j/e/i$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v1, Le/a/j/e/i$b;

    invoke-direct {v1, p0, p3}, Le/a/j/e/i$b;-><init>(Le/a/j/e/i;Ls1/w/d;)V

    :goto_0
    iget-object p3, v1, Le/a/j/e/i$b;->d:Ljava/lang/Object;

    sget-object v2, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v3, v1, Le/a/j/e/i$b;->e:I

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v4, :cond_1

    iget-object p1, v1, Le/a/j/e/i$b;->i:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/data/entity/ContactSurvey;

    iget-object p2, v1, Le/a/j/e/i$b;->h:Ljava/lang/Object;

    check-cast p2, Le/a/j/e/e;

    iget-object v1, v1, Le/a/j/e/i$b;->g:Ljava/lang/Object;

    check-cast v1, Le/a/j/e/i;

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->c0()Ljava/util/List;

    move-result-object p1

    const-string p3, "contact.surveys"

    invoke-static {p1, p3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/data/entity/ContactSurvey;

    if-eqz p1, :cond_f

    .line 5
    invoke-virtual {p1}, Lcom/truecaller/data/entity/ContactSurvey;->getId()Ljava/lang/String;

    move-result-object p3

    const-string v3, "Required value was null."

    if-eqz p3, :cond_e

    .line 6
    invoke-virtual {p1}, Lcom/truecaller/data/entity/ContactSurvey;->getPassthroughData()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_d

    .line 7
    iget-object v3, p0, Le/a/j/e/i;->a:Le/a/j/c/b;

    iput-object p0, v1, Le/a/j/e/i$b;->g:Ljava/lang/Object;

    iput-object p2, v1, Le/a/j/e/i$b;->h:Ljava/lang/Object;

    iput-object p1, v1, Le/a/j/e/i$b;->i:Ljava/lang/Object;

    iput v4, v1, Le/a/j/e/i$b;->e:I

    invoke-interface {v3, p3, v5, v1}, Le/a/j/c/b;->d(Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v2, :cond_3

    return-object v2

    :cond_3
    move-object v1, p0

    :goto_1
    check-cast p3, Lcom/truecaller/surveys/data/entities/Survey;

    if-eqz p3, :cond_c

    .line 8
    invoke-virtual {v1, p3, p1}, Le/a/j/e/i;->a(Lcom/truecaller/surveys/data/entities/Survey;Lcom/truecaller/data/entity/ContactSurvey;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_b

    .line 9
    instance-of p1, p2, Le/a/j/e/e$a;

    if-eqz p1, :cond_a

    .line 10
    check-cast p2, Le/a/j/e/e$a;

    .line 11
    invoke-virtual {p3}, Lcom/truecaller/surveys/data/entities/Survey;->getFlow()Lcom/truecaller/surveys/data/entities/SurveyFlow;

    move-result-object p1

    .line 12
    instance-of v1, p1, Lcom/truecaller/surveys/data/entities/SurveyFlow$Acs;

    if-eqz v1, :cond_4

    .line 13
    invoke-virtual {p3}, Lcom/truecaller/surveys/data/entities/Survey;->getFlow()Lcom/truecaller/surveys/data/entities/SurveyFlow;

    move-result-object p1

    check-cast p1, Lcom/truecaller/surveys/data/entities/SurveyFlow$Acs;

    invoke-virtual {p1}, Lcom/truecaller/surveys/data/entities/SurveyFlow$Acs;->getOnlyIfPickedUp()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 14
    iget-boolean p1, p2, Le/a/j/e/e$a;->b:Z

    if-nez p1, :cond_8

    goto :goto_2

    .line 15
    :cond_4
    instance-of v1, p1, Lcom/truecaller/surveys/data/entities/SurveyFlow$NameSuggestion;

    if-eqz v1, :cond_6

    .line 16
    invoke-virtual {p3}, Lcom/truecaller/surveys/data/entities/Survey;->getFlow()Lcom/truecaller/surveys/data/entities/SurveyFlow;

    move-result-object p1

    check-cast p1, Lcom/truecaller/surveys/data/entities/SurveyFlow$NameSuggestion;

    invoke-virtual {p1}, Lcom/truecaller/surveys/data/entities/SurveyFlow$NameSuggestion;->getOnlyIfPickedUp()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 17
    iget-boolean p1, p2, Le/a/j/e/e$a;->b:Z

    if-nez p1, :cond_5

    goto :goto_2

    .line 18
    :cond_5
    iget-boolean p1, p2, Le/a/j/e/e$a;->a:Z

    xor-int/2addr v4, p1

    goto :goto_3

    .line 19
    :cond_6
    sget-object p2, Lcom/truecaller/surveys/data/entities/SurveyFlow$ReportProfile;->INSTANCE:Lcom/truecaller/surveys/data/entities/SurveyFlow$ReportProfile;

    invoke-static {p1, p2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    const-string v1, "Unsupported survey flow for ACS: "

    if-eqz p2, :cond_7

    .line 20
    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p3}, Lcom/truecaller/surveys/data/entities/Survey;->getFlow()Lcom/truecaller/surveys/data/entities/SurveyFlow;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Le/a/c/p/a;->M1(Ljava/lang/String;)V

    goto :goto_2

    .line 21
    :cond_7
    instance-of p1, p1, Lcom/truecaller/surveys/data/entities/SurveyFlow$AcsBizmon;

    if-eqz p1, :cond_9

    .line 22
    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p3}, Lcom/truecaller/surveys/data/entities/Survey;->getFlow()Lcom/truecaller/surveys/data/entities/SurveyFlow;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Le/a/c/p/a;->M1(Ljava/lang/String;)V

    :goto_2
    move v4, v0

    :cond_8
    :goto_3
    move v0, v4

    goto :goto_4

    .line 23
    :cond_9
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    .line 24
    :cond_a
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    .line 25
    :cond_b
    :goto_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_c
    return-object v0

    .line 26
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 27
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_f
    return-object v0
.end method
