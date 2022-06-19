.class public final Le/a/j/a/a/a/b/a$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/j/a/a/a/b/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/j/a/a/a/b/a;


# direct methods
.method public constructor <init>(Le/a/j/a/a/a/b/a;)V
    .locals 0

    iput-object p1, p0, Le/a/j/a/a/a/b/a$h;->a:Le/a/j/a/a/a/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2

    .line 1
    iget-object p1, p0, Le/a/j/a/a/a/b/a$h;->a:Le/a/j/a/a/a/b/a;

    invoke-static {p1}, Le/a/j/a/a/a/b/a;->QA(Le/a/j/a/a/a/b/a;)Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/freetext/FreeTextQuestionViewModel;

    move-result-object p1

    iget-object v0, p0, Le/a/j/a/a/a/b/a$h;->a:Le/a/j/a/a/a/b/a;

    .line 2
    invoke-virtual {v0}, Le/a/j/a/a/a/b/a;->RA()Le/a/j/d/f;

    move-result-object v0

    .line 3
    iget-object v0, v0, Le/a/j/d/f;->c:Landroid/widget/RadioButton;

    const-string v1, "binding.choiceBusiness"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getId()I

    move-result v0

    if-ne p2, v0, :cond_0

    sget-object p2, Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/freetext/SuggestionType;->BUSINESS:Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/freetext/SuggestionType;

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/freetext/SuggestionType;->PERSON:Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/freetext/SuggestionType;

    .line 4
    :goto_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "suggestionType"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object p1, p1, Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/freetext/FreeTextQuestionViewModel;->b:Lq3/a/x2/a1;

    invoke-interface {p1, p2}, Lq3/a/x2/a1;->setValue(Ljava/lang/Object;)V

    return-void
.end method
