.class public final Lcom/truecaller/surveys/data/PostSurveyAnswersWorker$a;
.super Ls1/z/c/m;
.source "kotlin-style lambda group"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/surveys/data/PostSurveyAnswersWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;Le/a/j/c/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/truecaller/surveys/data/PostSurveyAnswersWorker$a;->b:I

    iput-object p2, p0, Lcom/truecaller/surveys/data/PostSurveyAnswersWorker$a;->c:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/truecaller/surveys/data/PostSurveyAnswersWorker$a;->b:I

    const-string v1, "Required value was null."

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 1
    iget-object v0, p0, Lcom/truecaller/surveys/data/PostSurveyAnswersWorker$a;->c:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/surveys/data/PostSurveyAnswersWorker;

    invoke-virtual {v0}, Landroidx/work/ListenableWorker;->getInputData()Ln3/m0/f;

    move-result-object v0

    const-string v2, "survey_as_json_key"

    invoke-virtual {v0, v2}, Ln3/m0/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    .line 2
    throw v0

    .line 3
    :cond_2
    iget-object v0, p0, Lcom/truecaller/surveys/data/PostSurveyAnswersWorker$a;->c:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/surveys/data/PostSurveyAnswersWorker;

    invoke-virtual {v0}, Landroidx/work/ListenableWorker;->getInputData()Ln3/m0/f;

    move-result-object v0

    const-string v2, "answers_as_json_key"

    invoke-virtual {v0, v2}, Ln3/m0/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    return-object v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
