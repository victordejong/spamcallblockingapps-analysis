.class public final Le/a/j/a/a/a/c/a$a;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/j/a/a/a/c/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Le/a/j/a/a/a/c/a$a;->a:I

    iput-object p2, p0, Le/a/j/a/a/a/c/a$a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget p1, p0, Le/a/j/a/a/a/c/a$a;->a:I

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 1
    iget-object p1, p0, Le/a/j/a/a/a/c/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/j/a/a/a/c/a;

    invoke-static {p1}, Le/a/j/a/a/a/c/a;->QA(Le/a/j/a/a/a/c/a;)Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/singlechoice/SingleChoiceQuestionViewModel;

    move-result-object p1

    .line 2
    iget-object p1, p1, Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/singlechoice/SingleChoiceQuestionViewModel;->f:Le/a/j/e/c;

    invoke-interface {p1}, Le/a/j/e/c;->b()V

    return-void

    .line 3
    :cond_0
    throw v0

    .line 4
    :cond_1
    iget-object p1, p0, Le/a/j/a/a/a/c/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/j/a/a/a/c/a;

    invoke-static {p1}, Le/a/j/a/a/a/c/a;->QA(Le/a/j/a/a/a/c/a;)Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/singlechoice/SingleChoiceQuestionViewModel;

    move-result-object p1

    .line 5
    iget-object v1, p1, Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/singlechoice/SingleChoiceQuestionViewModel;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Le/a/j/a/a/a/c/f;

    .line 6
    iget-boolean v3, v3, Le/a/j/a/a/a/c/f;->c:Z

    if-eqz v3, :cond_2

    move-object v0, v2

    .line 7
    :cond_3
    check-cast v0, Le/a/j/a/a/a/c/f;

    if-eqz v0, :cond_4

    .line 8
    iget-object p1, p1, Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/singlechoice/SingleChoiceQuestionViewModel;->f:Le/a/j/e/c;

    new-instance v1, Lcom/truecaller/surveys/data/entities/Answer$SingleChoice;

    .line 9
    iget-object v0, v0, Le/a/j/a/a/a/c/f;->a:Lcom/truecaller/surveys/data/entities/Choice;

    .line 10
    invoke-direct {v1, v0}, Lcom/truecaller/surveys/data/entities/Answer$SingleChoice;-><init>(Lcom/truecaller/surveys/data/entities/Choice;)V

    invoke-interface {p1, v1}, Le/a/j/e/c;->c(Lcom/truecaller/surveys/data/entities/Answer;)V

    :cond_4
    return-void
.end method
