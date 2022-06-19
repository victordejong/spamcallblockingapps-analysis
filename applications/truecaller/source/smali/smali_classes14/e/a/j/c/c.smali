.class public final Le/a/j/c/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/j/c/b;


# instance fields
.field public final a:Ls1/w/f;

.field public final b:Le/a/j/c/e/a;

.field public final c:Le/a/j/c/d/b;

.field public final d:Le/a/p5/c;


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/j/c/e/a;Le/a/j/c/d/b;Le/a/p5/c;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "ioContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "surveysStubManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "surveysDao"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/j/c/c;->a:Ls1/w/f;

    iput-object p2, p0, Le/a/j/c/c;->b:Le/a/j/c/e/a;

    iput-object p3, p0, Le/a/j/c/c;->c:Le/a/j/c/d/b;

    iput-object p4, p0, Le/a/j/c/c;->d:Le/a/p5/c;

    return-void
.end method


# virtual methods
.method public a(Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/j/c/c;->a:Ls1/w/f;

    new-instance v1, Le/a/j/c/c$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Le/a/j/c/c$a;-><init>(Le/a/j/c/c;Ls1/w/d;)V

    invoke-static {v0, v1, p1}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/truecaller/surveys/data/entities/Survey;Ljava/util/Map;Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/surveys/data/entities/Survey;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "+",
            "Lcom/truecaller/surveys/data/entities/Answer;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/j/c/c;->a:Ls1/w/f;

    new-instance v1, Le/a/j/c/c$c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Le/a/j/c/c$c;-><init>(Le/a/j/c/c;Lcom/truecaller/surveys/data/entities/Survey;Ljava/util/Map;Ls1/w/d;)V

    invoke-static {v0, v1, p3}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/j/c/c$d;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/j/c/c$d;

    iget v1, v0, Le/a/j/c/c$d;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/j/c/c$d;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/j/c/c$d;

    invoke-direct {v0, p0, p2}, Le/a/j/c/c$d;-><init>(Le/a/j/c/c;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/j/c/c$d;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/j/c/c$d;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, v0, Le/a/j/c/c$d;->h:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v2, v0, Le/a/j/c/c$d;->g:Ljava/lang/Object;

    check-cast v2, Le/a/j/c/c;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Le/a/j/c/c;->c:Le/a/j/c/d/b;

    iput-object p0, v0, Le/a/j/c/c$d;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/j/c/c$d;->h:Ljava/lang/Object;

    iput v4, v0, Le/a/j/c/c$d;->e:I

    invoke-interface {p2, p1, v0}, Le/a/j/c/d/b;->d(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    .line 5
    :goto_1
    move-object v4, p2

    check-cast v4, Lcom/truecaller/surveys/data/local/SurveyEntity;

    if-eqz v4, :cond_5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 6
    iget-object p1, v2, Le/a/j/c/c;->d:Le/a/p5/c;

    invoke-interface {p1}, Le/a/p5/c;->c()J

    move-result-wide v9

    const/16 v11, 0xf

    const/4 v12, 0x0

    invoke-static/range {v4 .. v12}, Lcom/truecaller/surveys/data/local/SurveyEntity;->copy$default(Lcom/truecaller/surveys/data/local/SurveyEntity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JILjava/lang/Object;)Lcom/truecaller/surveys/data/local/SurveyEntity;

    move-result-object p1

    .line 7
    iget-object p2, v2, Le/a/j/c/c;->c:Le/a/j/c/d/b;

    const/4 v2, 0x0

    iput-object v2, v0, Le/a/j/c/c$d;->g:Ljava/lang/Object;

    iput-object v2, v0, Le/a/j/c/c$d;->h:Ljava/lang/Object;

    iput v3, v0, Le/a/j/c/c$d;->e:I

    invoke-interface {p2, p1, v0}, Le/a/j/c/d/b;->e(Lcom/truecaller/surveys/data/local/SurveyEntity;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    return-object v1

    .line 8
    :cond_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to update last time seen. No survey with id: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Le/a/c/p/a;->M1(Ljava/lang/String;)V

    .line 9
    :cond_6
    :goto_2
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/surveys/data/entities/Survey;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Le/a/j/c/c$b;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Le/a/j/c/c$b;

    iget v1, v0, Le/a/j/c/c$b;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/j/c/c$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/j/c/c$b;

    invoke-direct {v0, p0, p3}, Le/a/j/c/c$b;-><init>(Le/a/j/c/c;Ls1/w/d;)V

    :goto_0
    iget-object p3, v0, Le/a/j/c/c$b;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/j/c/c$b;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p1, v0, Le/a/j/c/c$b;->h:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Ljava/lang/String;

    iget-object p1, v0, Le/a/j/c/c$b;->g:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    :try_start_0
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catch Lq3/b/f; {:try_start_0 .. :try_end_0} :catch_0

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
    :try_start_1
    iget-object p3, p0, Le/a/j/c/c;->c:Le/a/j/c/d/b;

    iput-object p1, v0, Le/a/j/c/c$b;->g:Ljava/lang/Object;

    iput-object p2, v0, Le/a/j/c/c$b;->h:Ljava/lang/Object;

    iput v4, v0, Le/a/j/c/c$b;->e:I

    invoke-interface {p3, p1, v0}, Le/a/j/c/d/b;->d(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    .line 5
    :cond_3
    :goto_1
    check-cast p3, Lcom/truecaller/surveys/data/local/SurveyEntity;

    if-eqz p3, :cond_4

    .line 6
    invoke-static {p3, p2}, Le/a/l4/k;->r0(Lcom/truecaller/surveys/data/local/SurveyEntity;Ljava/lang/String;)Lcom/truecaller/surveys/data/entities/Survey;

    move-result-object p1
    :try_end_1
    .catch Lq3/b/f; {:try_start_1 .. :try_end_1} :catch_0

    move-object v3, p1

    :catch_0
    :cond_4
    return-object v3
.end method
