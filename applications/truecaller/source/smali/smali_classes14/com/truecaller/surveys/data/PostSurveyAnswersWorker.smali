.class public final Lcom/truecaller/surveys/data/PostSurveyAnswersWorker;
.super Landroidx/work/CoroutineWorker;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B%\u0008\u0007\u0012\u0008\u0008\u0001\u0010\u0013\u001a\u00020\u0012\u0012\u0008\u0008\u0001\u0010\u0015\u001a\u00020\u0014\u0012\u0006\u0010\u000e\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0013\u0010\u0003\u001a\u00020\u0002H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0003\u0010\u0004R\u001d\u0010\n\u001a\u00020\u00058B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0006\u0010\u0007\u001a\u0004\u0008\u0008\u0010\tR\u0016\u0010\u000e\u001a\u00020\u000b8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\rR\u001d\u0010\u0011\u001a\u00020\u00058B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0007\u001a\u0004\u0008\u0010\u0010\t\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/truecaller/surveys/data/PostSurveyAnswersWorker;",
        "Landroidx/work/CoroutineWorker;",
        "Landroidx/work/ListenableWorker$a;",
        "n",
        "(Ls1/w/d;)Ljava/lang/Object;",
        "",
        "d",
        "Ls1/g;",
        "getSurveyAsJson",
        "()Ljava/lang/String;",
        "surveyAsJson",
        "Le/a/j/c/b;",
        "f",
        "Le/a/j/c/b;",
        "surveysRepository",
        "e",
        "getAnswersAsJson",
        "answersAsJson",
        "Landroid/content/Context;",
        "context",
        "Landroidx/work/WorkerParameters;",
        "params",
        "<init>",
        "(Landroid/content/Context;Landroidx/work/WorkerParameters;Le/a/j/c/b;)V",
        "surveys_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public final d:Ls1/g;

.field public final e:Ls1/g;

.field public final f:Le/a/j/c/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;Le/a/j/c/b;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "surveysRepository"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/work/CoroutineWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    iput-object p3, p0, Lcom/truecaller/surveys/data/PostSurveyAnswersWorker;->f:Le/a/j/c/b;

    .line 2
    new-instance p1, Lcom/truecaller/surveys/data/PostSurveyAnswersWorker$a;

    const/4 p2, 0x1

    invoke-direct {p1, p2, p0}, Lcom/truecaller/surveys/data/PostSurveyAnswersWorker$a;-><init>(ILjava/lang/Object;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/surveys/data/PostSurveyAnswersWorker;->d:Ls1/g;

    .line 3
    new-instance p1, Lcom/truecaller/surveys/data/PostSurveyAnswersWorker$a;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p0}, Lcom/truecaller/surveys/data/PostSurveyAnswersWorker$a;-><init>(ILjava/lang/Object;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/surveys/data/PostSurveyAnswersWorker;->e:Ls1/g;

    return-void
.end method


# virtual methods
.method public n(Ls1/w/d;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Landroidx/work/ListenableWorker$a;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/truecaller/surveys/data/PostSurveyAnswersWorker$b;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/truecaller/surveys/data/PostSurveyAnswersWorker$b;

    iget v1, v0, Lcom/truecaller/surveys/data/PostSurveyAnswersWorker$b;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/truecaller/surveys/data/PostSurveyAnswersWorker$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/truecaller/surveys/data/PostSurveyAnswersWorker$b;

    invoke-direct {v0, p0, p1}, Lcom/truecaller/surveys/data/PostSurveyAnswersWorker$b;-><init>(Lcom/truecaller/surveys/data/PostSurveyAnswersWorker;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Lcom/truecaller/surveys/data/PostSurveyAnswersWorker$b;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Lcom/truecaller/surveys/data/PostSurveyAnswersWorker$b;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catch Lq3/b/f; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    :try_start_1
    sget-object p1, Lq3/b/l/a;->b:Lq3/b/l/a$a;

    sget-object v2, Lcom/truecaller/surveys/data/entities/Survey;->Companion:Lcom/truecaller/surveys/data/entities/Survey$b;

    .line 5
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/truecaller/surveys/data/entities/Survey$a;->a:Lcom/truecaller/surveys/data/entities/Survey$a;

    .line 6
    iget-object v4, p0, Lcom/truecaller/surveys/data/PostSurveyAnswersWorker;->d:Ls1/g;

    invoke-interface {v4}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "surveyAsJson"

    .line 7
    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v2, v4}, Lq3/b/l/a;->a(Lq3/b/a;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/truecaller/surveys/data/entities/Survey;

    .line 8
    sget-object v4, Ls1/z/c/k;->a:Ls1/z/c/k;

    invoke-static {v4}, Ls1/a/a/a/v0/f/d;->l3(Ls1/z/c/k;)Lq3/b/b;
    :try_end_1
    .catch Lq3/b/f; {:try_start_1 .. :try_end_1} :catch_0

    sget-object v4, Lq3/b/k/g;->b:Lq3/b/k/g;

    :try_start_2
    sget-object v5, Lcom/truecaller/surveys/data/entities/Answer;->Companion:Lcom/truecaller/surveys/data/entities/Answer$a;

    invoke-virtual {v5}, Lcom/truecaller/surveys/data/entities/Answer$a;->a()Lq3/b/b;

    move-result-object v5

    const-string v6, "keySerializer"

    .line 9
    invoke-static {v4, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "valueSerializer"

    invoke-static {v5, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    new-instance v6, Lq3/b/k/i;

    invoke-direct {v6, v4, v5}, Lq3/b/k/i;-><init>(Lq3/b/b;Lq3/b/b;)V

    .line 11
    iget-object v4, p0, Lcom/truecaller/surveys/data/PostSurveyAnswersWorker;->e:Ls1/g;

    invoke-interface {v4}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "answersAsJson"

    .line 12
    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v6, v4}, Lq3/b/l/a;->a(Lq3/b/a;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 13
    iget-object v4, p0, Lcom/truecaller/surveys/data/PostSurveyAnswersWorker;->f:Le/a/j/c/b;

    iput v3, v0, Lcom/truecaller/surveys/data/PostSurveyAnswersWorker$b;->e:I

    invoke-interface {v4, v2, p1, v0}, Le/a/j/c/b;->b(Lcom/truecaller/surveys/data/entities/Survey;Ljava/util/Map;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-ne p1, v3, :cond_4

    .line 14
    new-instance p1, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {p1}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    goto :goto_2

    :cond_4
    if-nez p1, :cond_5

    .line 15
    new-instance p1, Landroidx/work/ListenableWorker$a$b;

    invoke-direct {p1}, Landroidx/work/ListenableWorker$a$b;-><init>()V

    :goto_2
    const-string v0, "when (surveysRepository.\u2026ult.retry()\n            }"

    .line 16
    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1
    :try_end_2
    .catch Lq3/b/f; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    const-string v0, "PostSurveyAnswersWorker failed to deserialize survey or answers: "

    .line 17
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Le/a/c/p/a;->M1(Ljava/lang/String;)V

    .line 18
    new-instance p1, Landroidx/work/ListenableWorker$a$a;

    invoke-direct {p1}, Landroidx/work/ListenableWorker$a$a;-><init>()V

    const-string v0, "Result.failure()"

    .line 19
    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_3
    return-object p1
.end method
