.class public final Le/a/j/a/e/b$g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/j/a/e/b$g;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/g<",
        "Lcom/truecaller/surveys/ui/adapter/SurveyControllerViewModel$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/j/a/e/b$g;


# direct methods
.method public constructor <init>(Le/a/j/a/e/b$g;)V
    .locals 0

    iput-object p1, p0, Le/a/j/a/e/b$g$a;->a:Le/a/j/a/e/b$g;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/surveys/ui/adapter/SurveyControllerViewModel$a;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/truecaller/surveys/ui/adapter/SurveyControllerViewModel$a;

    .line 2
    instance-of p2, p1, Lcom/truecaller/surveys/ui/adapter/SurveyControllerViewModel$a$a;

    const-string v0, "BoolQuestionFragment"

    if-eqz p2, :cond_0

    iget-object p1, p0, Le/a/j/a/e/b$g$a;->a:Le/a/j/a/e/b$g;

    iget-object p1, p1, Le/a/j/a/e/b$g;->f:Le/a/j/a/e/b;

    new-instance p2, Le/a/j/a/b/a;

    invoke-direct {p2}, Le/a/j/a/b/a;-><init>()V

    invoke-static {p1, p2, v0}, Le/a/j/a/e/b;->RA(Le/a/j/a/e/b;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    instance-of p2, p1, Lcom/truecaller/surveys/ui/adapter/SurveyControllerViewModel$a$b;

    if-eqz p2, :cond_1

    iget-object p1, p0, Le/a/j/a/e/b$g$a;->a:Le/a/j/a/e/b$g;

    iget-object p1, p1, Le/a/j/a/e/b$g;->f:Le/a/j/a/e/b;

    new-instance p2, Le/a/j/a/c/a;

    invoke-direct {p2}, Le/a/j/a/c/a;-><init>()V

    invoke-static {p1, p2, v0}, Le/a/j/a/e/b;->RA(Le/a/j/a/e/b;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_1
    instance-of p2, p1, Lcom/truecaller/surveys/ui/adapter/SurveyControllerViewModel$a$d;

    if-eqz p2, :cond_2

    iget-object p1, p0, Le/a/j/a/e/b$g$a;->a:Le/a/j/a/e/b$g;

    iget-object p1, p1, Le/a/j/a/e/b$g;->f:Le/a/j/a/e/b;

    .line 5
    iget-object p2, p1, Le/a/j/a/e/b;->h:Ln3/a/e/b;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "requireContext()"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    .line 6
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/truecaller/surveys/ui/bottomSheetSurvey/BottomSheetSurveyActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 p1, 0x0

    .line 8
    invoke-virtual {p2, v0, p1}, Ln3/a/e/b;->a(Ljava/lang/Object;Ln3/k/a/c;)V

    goto :goto_0

    .line 9
    :cond_2
    sget-object p2, Lcom/truecaller/surveys/ui/adapter/SurveyControllerViewModel$a$e;->a:Lcom/truecaller/surveys/ui/adapter/SurveyControllerViewModel$a$e;

    invoke-static {p1, p2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p1, p0, Le/a/j/a/e/b$g$a;->a:Le/a/j/a/e/b$g;

    iget-object p1, p1, Le/a/j/a/e/b$g;->f:Le/a/j/a/e/b;

    invoke-static {p1}, Le/a/j/a/e/b;->SA(Le/a/j/a/e/b;)Lcom/airbnb/lottie/LottieAnimationView;

    goto :goto_0

    .line 10
    :cond_3
    sget-object p2, Lcom/truecaller/surveys/ui/adapter/SurveyControllerViewModel$a$c;->a:Lcom/truecaller/surveys/ui/adapter/SurveyControllerViewModel$a$c;

    invoke-static {p1, p2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "Survey invalid state, question can\'t be handled"

    .line 11
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportWeirdnessButNeverCrash(Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, Le/a/j/a/e/b$g$a;->a:Le/a/j/a/e/b$g;

    iget-object p1, p1, Le/a/j/a/e/b$g;->f:Le/a/j/a/e/b;

    invoke-static {p1}, Le/a/j/a/e/b;->QA(Le/a/j/a/e/b;)V

    .line 13
    :cond_4
    :goto_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
