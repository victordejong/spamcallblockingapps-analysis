.class public final Le/a/j/c/c$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/j/c/c;->a(Ls1/w/d;)Ljava/lang/Object;
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
    c = "com.truecaller.surveys.data.SurveysRepositoryImpl$fetchSurveys$2"
    f = "SurveysRepository.kt"
    l = {
        0x31
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/j/c/c;


# direct methods
.method public constructor <init>(Le/a/j/c/c;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/j/c/c$a;->f:Le/a/j/c/c;

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

    new-instance p1, Le/a/j/c/c$a;

    iget-object v0, p0, Le/a/j/c/c$a;->f:Le/a/j/c/c;

    invoke-direct {p1, v0, p2}, Le/a/j/c/c$a;-><init>(Le/a/j/c/c;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/j/c/c$a;

    iget-object v0, p0, Le/a/j/c/c$a;->f:Le/a/j/c/c;

    invoke-direct {p1, v0, p2}, Le/a/j/c/c$a;-><init>(Le/a/j/c/c;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/j/c/c$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/j/c/c$a;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    :try_start_0
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

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
    invoke-static {}, Lcom/truecaller/api/services/survey/ListAllSurveys$Request;->newBuilder()Lcom/truecaller/api/services/survey/ListAllSurveys$Request$a;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    const-string v1, "ListAllSurveys.Request\n \u2026er()\n            .build()"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    check-cast p1, Lcom/truecaller/api/services/survey/ListAllSurveys$Request;

    .line 7
    :try_start_1
    iget-object v1, p0, Le/a/j/c/c$a;->f:Le/a/j/c/c;

    .line 8
    iget-object v1, v1, Le/a/j/c/c;->b:Le/a/j/c/e/a;

    const/4 v3, 0x0

    .line 9
    invoke-static {v1, v3, v2, v3}, Le/a/c/p/a;->k0(Le/a/f4/b/h/g;Le/a/b0/b/e;ILjava/lang/Object;)Lp3/a/q1/c;

    move-result-object v1

    check-cast v1, Le/a/t2/a/i/c$a;

    if-eqz v1, :cond_5

    .line 10
    invoke-virtual {v1, p1}, Le/a/t2/a/i/c$a;->c(Lcom/truecaller/api/services/survey/ListAllSurveys$Request;)Lcom/truecaller/api/services/survey/ListAllSurveys$Response;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 11
    iget-object v1, p0, Le/a/j/c/c$a;->f:Le/a/j/c/c;

    invoke-virtual {p1}, Lcom/truecaller/api/services/survey/ListAllSurveys$Response;->getSurveysList()Ljava/util/List;

    move-result-object p1

    const-string v4, "response.surveysList"

    invoke-static {p1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 15
    check-cast v4, Lcom/truecaller/api/services/survey/Survey;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 16
    :try_start_2
    invoke-static {v4}, Le/a/l4/k;->s0(Lcom/truecaller/api/services/survey/Survey;)Lcom/truecaller/surveys/data/local/SurveyEntity;

    move-result-object v4
    :try_end_2
    .catch Lq3/b/f; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_0
    move-object v4, v3

    :goto_1
    if-eqz v4, :cond_2

    .line 17
    :try_start_3
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 18
    :cond_3
    iget-object p1, p0, Le/a/j/c/c$a;->f:Le/a/j/c/c;

    .line 19
    iget-object p1, p1, Le/a/j/c/c;->c:Le/a/j/c/d/b;

    .line 20
    iput v2, p0, Le/a/j/c/c$a;->e:I

    invoke-interface {p1, v1, p0}, Le/a/j/c/d/b;->c(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 21
    :cond_4
    :goto_2
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    if-eqz p1, :cond_5

    goto :goto_3

    :catch_1
    move-exception p1

    const-string v0, "Failed to fetch surveys"

    .line 22
    invoke-static {p1, v0}, Le/a/c/p/a;->J1(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_5
    const/4 v2, 0x0

    .line 23
    :goto_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
