.class public final Le/a/j/a/c/a$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/j/a/c/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/j/d/d;

.field public final synthetic b:Le/a/j/a/c/a;


# direct methods
.method public constructor <init>(Le/a/j/d/d;Le/a/j/a/c/a;)V
    .locals 0

    iput-object p1, p0, Le/a/j/a/c/a$g;->a:Le/a/j/d/d;

    iput-object p2, p0, Le/a/j/a/c/a$g;->b:Le/a/j/a/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Le/a/j/a/c/a$g;->b:Le/a/j/a/c/a;

    invoke-static {p1}, Le/a/j/a/c/a;->QA(Le/a/j/a/c/a;)Lcom/truecaller/surveys/ui/adapter/SurveyControllerViewModel;

    move-result-object p1

    iget-object v0, p0, Le/a/j/a/c/a$g;->a:Le/a/j/d/d;

    iget-object v0, v0, Le/a/j/d/d;->a:Landroid/widget/EditText;

    const-string v1, "answer"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "suggestedName"

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/truecaller/surveys/ui/adapter/SurveyControllerViewModel;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget-object v1, p1, Lcom/truecaller/surveys/ui/adapter/SurveyControllerViewModel;->f:Le/a/j/e/a;

    invoke-interface {v1}, Le/a/j/e/a;->getState()Le/a/j/e/f;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type com.truecaller.surveys.utils.SurveyState.Active"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Le/a/j/e/f$a;

    .line 5
    iget-object v1, v1, Le/a/j/e/f$a;->b:Lcom/truecaller/surveys/data/entities/SurveyFlow;

    .line 6
    instance-of v1, v1, Lcom/truecaller/surveys/data/entities/SurveyFlow$NameSuggestion;

    if-eqz v1, :cond_2

    .line 7
    iget-object v1, p1, Lcom/truecaller/surveys/ui/adapter/SurveyControllerViewModel;->g:Le/a/r2/f;

    invoke-interface {v1}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/g5/n;

    .line 8
    iget-object v2, p1, Lcom/truecaller/surveys/ui/adapter/SurveyControllerViewModel;->e:Lcom/truecaller/data/entity/Contact;

    if-eqz v2, :cond_1

    .line 9
    iget-object v3, p1, Lcom/truecaller/surveys/ui/adapter/SurveyControllerViewModel;->b:Lq3/a/x2/a1;

    invoke-interface {v3}, Lq3/a/x2/a1;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/freetext/SuggestionType;

    invoke-virtual {v3}, Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/freetext/SuggestionType;->getValue()I

    move-result v3

    .line 10
    invoke-interface {v1, v2, v0, v3}, Le/a/g5/n;->a(Lcom/truecaller/data/entity/Contact;Ljava/lang/String;I)Le/a/r2/x;

    move-result-object v1

    .line 11
    invoke-virtual {v1}, Le/a/r2/x;->g()V

    goto :goto_0

    :cond_1
    const-string p1, "contact"

    .line 12
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    .line 13
    :cond_2
    :goto_0
    iget-object v1, p1, Lcom/truecaller/surveys/ui/adapter/SurveyControllerViewModel;->f:Le/a/j/e/a;

    new-instance v2, Lcom/truecaller/surveys/data/entities/Answer$FreeText;

    invoke-direct {v2, v0}, Lcom/truecaller/surveys/data/entities/Answer$FreeText;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Le/a/j/e/a;->d(Lcom/truecaller/surveys/data/entities/Answer;)V

    .line 14
    iget-object v0, p1, Lcom/truecaller/surveys/ui/adapter/SurveyControllerViewModel;->f:Le/a/j/e/a;

    invoke-interface {v0}, Le/a/j/e/a;->a()V

    .line 15
    invoke-virtual {p1}, Lcom/truecaller/surveys/ui/adapter/SurveyControllerViewModel;->e()V

    :goto_1
    return-void
.end method
