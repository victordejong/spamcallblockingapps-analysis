.class public final Le/a/j/c/c$c;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/j/c/c;->b(Lcom/truecaller/surveys/data/entities/Survey;Ljava/util/Map;Ls1/w/d;)Ljava/lang/Object;
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
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.surveys.data.SurveysRepositoryImpl$postSurveyResults$2"
    f = "SurveysRepository.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/j/c/c;

.field public final synthetic f:Lcom/truecaller/surveys/data/entities/Survey;

.field public final synthetic g:Ljava/util/Map;


# direct methods
.method public constructor <init>(Le/a/j/c/c;Lcom/truecaller/surveys/data/entities/Survey;Ljava/util/Map;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/j/c/c$c;->e:Le/a/j/c/c;

    iput-object p2, p0, Le/a/j/c/c$c;->f:Lcom/truecaller/surveys/data/entities/Survey;

    iput-object p3, p0, Le/a/j/c/c$c;->g:Ljava/util/Map;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 3
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

    new-instance p1, Le/a/j/c/c$c;

    iget-object v0, p0, Le/a/j/c/c$c;->e:Le/a/j/c/c;

    iget-object v1, p0, Le/a/j/c/c$c;->f:Lcom/truecaller/surveys/data/entities/Survey;

    iget-object v2, p0, Le/a/j/c/c$c;->g:Ljava/util/Map;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/j/c/c$c;-><init>(Le/a/j/c/c;Lcom/truecaller/surveys/data/entities/Survey;Ljava/util/Map;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/j/c/c$c;

    iget-object v0, p0, Le/a/j/c/c$c;->e:Le/a/j/c/c;

    iget-object v1, p0, Le/a/j/c/c$c;->f:Lcom/truecaller/surveys/data/entities/Survey;

    iget-object v2, p0, Le/a/j/c/c$c;->g:Ljava/util/Map;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/j/c/c$c;-><init>(Le/a/j/c/c;Lcom/truecaller/surveys/data/entities/Survey;Ljava/util/Map;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/j/c/c$c;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    invoke-static {}, Lcom/truecaller/api/services/survey/PostSurveyResults$Request;->newBuilder()Lcom/truecaller/api/services/survey/PostSurveyResults$Request$b;

    move-result-object p1

    .line 3
    iget-object v0, p0, Le/a/j/c/c$c;->f:Lcom/truecaller/surveys/data/entities/Survey;

    invoke-virtual {v0}, Lcom/truecaller/surveys/data/entities/Survey;->getId()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 5
    iget-object v1, p1, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/truecaller/api/services/survey/PostSurveyResults$Request;

    invoke-static {v1, v0}, Lcom/truecaller/api/services/survey/PostSurveyResults$Request;->access$1800(Lcom/truecaller/api/services/survey/PostSurveyResults$Request;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Le/a/j/c/c$c;->g:Ljava/util/Map;

    const-string v1, "$this$toAnswersRequest"

    .line 7
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-static {v2}, Le/q/f/a/d/a;->Y1(I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 9
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 10
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 11
    check-cast v2, Ljava/util/Map$Entry;

    .line 12
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 13
    invoke-static {}, Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;->newBuilder()Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers$a;

    move-result-object v4

    .line 14
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/truecaller/surveys/data/entities/Answer;

    .line 15
    instance-of v5, v2, Lcom/truecaller/surveys/data/entities/Answer$Binary;

    if-eqz v5, :cond_0

    check-cast v2, Lcom/truecaller/surveys/data/entities/Answer$Binary;

    invoke-virtual {v2}, Lcom/truecaller/surveys/data/entities/Answer$Binary;->getChoice()Lcom/truecaller/surveys/data/entities/Choice;

    move-result-object v2

    invoke-virtual {v2}, Lcom/truecaller/surveys/data/entities/Choice;->getId()I

    move-result v2

    invoke-virtual {v4, v2}, Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers$a;->a(I)Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers$a;

    goto :goto_1

    .line 16
    :cond_0
    instance-of v5, v2, Lcom/truecaller/surveys/data/entities/Answer$SingleChoice;

    if-eqz v5, :cond_1

    check-cast v2, Lcom/truecaller/surveys/data/entities/Answer$SingleChoice;

    invoke-virtual {v2}, Lcom/truecaller/surveys/data/entities/Answer$SingleChoice;->getChoice()Lcom/truecaller/surveys/data/entities/Choice;

    move-result-object v2

    invoke-virtual {v2}, Lcom/truecaller/surveys/data/entities/Choice;->getId()I

    move-result v2

    invoke-virtual {v4, v2}, Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers$a;->a(I)Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers$a;

    goto :goto_1

    .line 17
    :cond_1
    instance-of v5, v2, Lcom/truecaller/surveys/data/entities/Answer$FreeText;

    if-eqz v5, :cond_2

    check-cast v2, Lcom/truecaller/surveys/data/entities/Answer$FreeText;

    invoke-virtual {v2}, Lcom/truecaller/surveys/data/entities/Answer$FreeText;->getText()Ljava/lang/String;

    move-result-object v2

    .line 18
    invoke-virtual {v4}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 19
    iget-object v5, v4, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v5, Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;

    invoke-static {v5, v2}, Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;->access$500(Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;Ljava/lang/String;)V

    goto :goto_1

    .line 20
    :cond_2
    instance-of v5, v2, Lcom/truecaller/surveys/data/entities/Answer$Rating;

    if-eqz v5, :cond_3

    check-cast v2, Lcom/truecaller/surveys/data/entities/Answer$Rating;

    invoke-virtual {v2}, Lcom/truecaller/surveys/data/entities/Answer$Rating;->getChoice()Lcom/truecaller/surveys/data/entities/Choice;

    move-result-object v2

    invoke-virtual {v2}, Lcom/truecaller/surveys/data/entities/Choice;->getId()I

    move-result v2

    invoke-virtual {v4, v2}, Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers$a;->a(I)Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers$a;

    .line 21
    :cond_3
    :goto_1
    invoke-virtual {v4}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v2

    check-cast v2, Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;

    .line 22
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 23
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 24
    iget-object v0, p1, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request;

    invoke-static {v0}, Lcom/truecaller/api/services/survey/PostSurveyResults$Request;->access$2100(Lcom/truecaller/api/services/survey/PostSurveyResults$Request;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 25
    iget-object v0, p0, Le/a/j/c/c$c;->f:Lcom/truecaller/surveys/data/entities/Survey;

    invoke-virtual {v0}, Lcom/truecaller/surveys/data/entities/Survey;->getPassThrough()Ljava/lang/String;

    move-result-object v0

    .line 26
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 27
    iget-object v1, p1, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/truecaller/api/services/survey/PostSurveyResults$Request;

    invoke-static {v1, v0}, Lcom/truecaller/api/services/survey/PostSurveyResults$Request;->access$2200(Lcom/truecaller/api/services/survey/PostSurveyResults$Request;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    .line 29
    check-cast p1, Lcom/truecaller/api/services/survey/PostSurveyResults$Request;

    const/4 v0, 0x0

    .line 30
    :try_start_0
    iget-object v1, p0, Le/a/j/c/c$c;->e:Le/a/j/c/c;

    .line 31
    iget-object v1, v1, Le/a/j/c/c;->b:Le/a/j/c/e/a;

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 32
    invoke-static {v1, v3, v2, v3}, Le/a/c/p/a;->k0(Le/a/f4/b/h/g;Le/a/b0/b/e;ILjava/lang/Object;)Lp3/a/q1/c;

    move-result-object v1

    check-cast v1, Le/a/t2/a/i/c$a;

    if-eqz v1, :cond_5

    .line 33
    invoke-virtual {v1, p1}, Le/a/t2/a/i/c$a;->d(Lcom/truecaller/api/services/survey/PostSurveyResults$Request;)Lcom/truecaller/api/services/survey/PostSurveyResults$Response;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 34
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_5

    move v0, v2

    goto :goto_2

    :catch_0
    move-exception p1

    const-string v1, "Failed to post survey answers"

    .line 35
    invoke-static {p1, v1}, Le/a/c/p/a;->J1(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 36
    :cond_5
    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
