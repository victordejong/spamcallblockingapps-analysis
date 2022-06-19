.class public final Le/a/j/a/c/a$j$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/j/a/c/a$j;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lcom/truecaller/surveys/ui/adapter/SurveyControllerViewModel$a;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.surveys.ui.suggestName.FreeTextQuestionFragment$onViewCreated$3$1"
    f = "FreeTextQuestionFragment.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Le/a/j/a/c/a$j;


# direct methods
.method public constructor <init>(Le/a/j/a/c/a$j;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/j/a/c/a$j$a;->f:Le/a/j/a/c/a$j;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 2
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

    const-string v0, "completion"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/j/a/c/a$j$a;

    iget-object v1, p0, Le/a/j/a/c/a$j$a;->f:Le/a/j/a/c/a$j;

    invoke-direct {v0, v1, p2}, Le/a/j/a/c/a$j$a;-><init>(Le/a/j/a/c/a$j;Ls1/w/d;)V

    iput-object p1, v0, Le/a/j/a/c/a$j$a;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ls1/s;->a:Ls1/s;

    check-cast p2, Ls1/w/d;

    const-string v1, "completion"

    .line 1
    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Le/a/j/a/c/a$j$a;->f:Le/a/j/a/c/a$j;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    check-cast p1, Lcom/truecaller/surveys/ui/adapter/SurveyControllerViewModel$a;

    .line 4
    instance-of p2, p1, Lcom/truecaller/surveys/ui/adapter/SurveyControllerViewModel$a$b;

    if-eqz p2, :cond_0

    iget-object p2, v1, Le/a/j/a/c/a$j;->f:Le/a/j/a/c/a;

    check-cast p1, Lcom/truecaller/surveys/ui/adapter/SurveyControllerViewModel$a$b;

    .line 5
    iget-object v1, p1, Lcom/truecaller/surveys/ui/adapter/SurveyControllerViewModel$a$b;->a:Lcom/truecaller/surveys/data/entities/Question$FreeText;

    .line 6
    iget-boolean p1, p1, Lcom/truecaller/surveys/ui/adapter/SurveyControllerViewModel$a$b;->b:Z

    .line 7
    sget-object v2, Le/a/j/a/c/a;->j:[Ls1/a/l;

    .line 8
    invoke-virtual {p2}, Le/a/j/a/c/a;->RA()Le/a/j/d/d;

    move-result-object v2

    .line 9
    iget-object v3, v2, Le/a/j/d/d;->e:Landroid/widget/TextView;

    const-string v4, "this.question"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/truecaller/surveys/data/entities/Question$FreeText;->getHeaderMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v3, v2, Le/a/j/d/d;->a:Landroid/widget/EditText;

    const-string v4, "answer"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/truecaller/surveys/data/entities/Question$FreeText;->getHint()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v2, v2, Le/a/j/d/d;->b:Lcom/google/android/material/button/MaterialButton;

    const-string v3, "btnSubmit"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/truecaller/surveys/data/entities/Question$FreeText;->getActionLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 12
    invoke-virtual {p2}, Le/a/j/a/c/a;->RA()Le/a/j/d/d;

    move-result-object p2

    iget-object p2, p2, Le/a/j/d/d;->g:Landroid/widget/RadioGroup;

    const-string v1, "binding.radioGroup"

    invoke-static {p2, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, p1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    :cond_0
    return-object v0
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/j/a/c/a$j$a;->e:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/surveys/ui/adapter/SurveyControllerViewModel$a;

    .line 2
    instance-of v0, p1, Lcom/truecaller/surveys/ui/adapter/SurveyControllerViewModel$a$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/j/a/c/a$j$a;->f:Le/a/j/a/c/a$j;

    iget-object v0, v0, Le/a/j/a/c/a$j;->f:Le/a/j/a/c/a;

    check-cast p1, Lcom/truecaller/surveys/ui/adapter/SurveyControllerViewModel$a$b;

    .line 3
    iget-object v1, p1, Lcom/truecaller/surveys/ui/adapter/SurveyControllerViewModel$a$b;->a:Lcom/truecaller/surveys/data/entities/Question$FreeText;

    .line 4
    iget-boolean p1, p1, Lcom/truecaller/surveys/ui/adapter/SurveyControllerViewModel$a$b;->b:Z

    .line 5
    sget-object v2, Le/a/j/a/c/a;->j:[Ls1/a/l;

    .line 6
    invoke-virtual {v0}, Le/a/j/a/c/a;->RA()Le/a/j/d/d;

    move-result-object v2

    .line 7
    iget-object v3, v2, Le/a/j/d/d;->e:Landroid/widget/TextView;

    const-string v4, "this.question"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/truecaller/surveys/data/entities/Question$FreeText;->getHeaderMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v3, v2, Le/a/j/d/d;->a:Landroid/widget/EditText;

    const-string v4, "answer"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/truecaller/surveys/data/entities/Question$FreeText;->getHint()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v2, v2, Le/a/j/d/d;->b:Lcom/google/android/material/button/MaterialButton;

    const-string v3, "btnSubmit"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/truecaller/surveys/data/entities/Question$FreeText;->getActionLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 10
    invoke-virtual {v0}, Le/a/j/a/c/a;->RA()Le/a/j/d/d;

    move-result-object v0

    iget-object v0, v0, Le/a/j/d/d;->g:Landroid/widget/RadioGroup;

    const-string v1, "binding.radioGroup"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    .line 11
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
