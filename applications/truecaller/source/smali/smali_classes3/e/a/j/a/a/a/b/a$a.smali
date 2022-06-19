.class public final Le/a/j/a/a/a/b/a$a;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/j/a/a/a/b/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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

    iput p1, p0, Le/a/j/a/a/a/b/a$a;->a:I

    iput-object p2, p0, Le/a/j/a/a/a/b/a$a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget p1, p0, Le/a/j/a/a/a/b/a$a;->a:I

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Le/a/j/a/a/a/b/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/j/a/a/a/b/a;

    invoke-static {p1}, Le/a/j/a/a/a/b/a;->QA(Le/a/j/a/a/a/b/a;)Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/freetext/FreeTextQuestionViewModel;

    move-result-object p1

    .line 2
    iget-object p1, p1, Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/freetext/FreeTextQuestionViewModel;->e:Le/a/j/e/c;

    invoke-interface {p1}, Le/a/j/e/c;->b()V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 3
    throw p1

    .line 4
    :cond_1
    iget-object p1, p0, Le/a/j/a/a/a/b/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/j/a/a/a/b/a;

    invoke-static {p1}, Le/a/j/a/a/a/b/a;->QA(Le/a/j/a/a/a/b/a;)Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/freetext/FreeTextQuestionViewModel;

    move-result-object p1

    iget-object v1, p0, Le/a/j/a/a/a/b/a$a;->b:Ljava/lang/Object;

    check-cast v1, Le/a/j/a/a/a/b/a;

    .line 5
    invoke-virtual {v1}, Le/a/j/a/a/a/b/a;->RA()Le/a/j/d/f;

    move-result-object v1

    .line 6
    iget-object v1, v1, Le/a/j/d/f;->e:Landroid/widget/EditText;

    const-string v2, "binding.inputSuggestion"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "text"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-static {v1}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 9
    :cond_2
    iget-object v2, p1, Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/freetext/FreeTextQuestionViewModel;->a:Lq3/a/x2/z0;

    invoke-interface {v2}, Lq3/a/x2/e1;->b()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/j/a/a/a/b/c;

    if-eqz v2, :cond_3

    .line 10
    iget-boolean v2, v2, Le/a/j/a/a/a/b/c;->d:Z

    if-ne v2, v0, :cond_3

    .line 11
    iget-object v0, p1, Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/freetext/FreeTextQuestionViewModel;->e:Le/a/j/e/c;

    iget-object v2, p1, Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/freetext/FreeTextQuestionViewModel;->b:Lq3/a/x2/a1;

    invoke-interface {v2}, Lq3/a/x2/a1;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/freetext/SuggestionType;

    invoke-interface {v0, v1, v2}, Le/a/j/e/c;->a(Ljava/lang/String;Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/freetext/SuggestionType;)V

    .line 12
    :cond_3
    iget-object p1, p1, Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/freetext/FreeTextQuestionViewModel;->e:Le/a/j/e/c;

    new-instance v0, Lcom/truecaller/surveys/data/entities/Answer$FreeText;

    invoke-direct {v0, v1}, Lcom/truecaller/surveys/data/entities/Answer$FreeText;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Le/a/j/e/c;->c(Lcom/truecaller/surveys/data/entities/Answer;)V

    :goto_0
    return-void
.end method
