.class public final Lcom/truecaller/survey/qa/SurveyEntryQaActivity$a$a$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/survey/qa/SurveyEntryQaActivity$a$a;->s(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.survey.qa.SurveyEntryQaActivity$onCreate$1$1$1"
    f = "SurveyEntryQaActivity.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Lcom/truecaller/survey/qa/SurveyEntryQaActivity$a$a;


# direct methods
.method public constructor <init>(Lcom/truecaller/survey/qa/SurveyEntryQaActivity$a$a;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/survey/qa/SurveyEntryQaActivity$a$a$a;->e:Lcom/truecaller/survey/qa/SurveyEntryQaActivity$a$a;

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

    new-instance p1, Lcom/truecaller/survey/qa/SurveyEntryQaActivity$a$a$a;

    iget-object v0, p0, Lcom/truecaller/survey/qa/SurveyEntryQaActivity$a$a$a;->e:Lcom/truecaller/survey/qa/SurveyEntryQaActivity$a$a;

    invoke-direct {p1, v0, p2}, Lcom/truecaller/survey/qa/SurveyEntryQaActivity$a$a$a;-><init>(Lcom/truecaller/survey/qa/SurveyEntryQaActivity$a$a;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object p1, Ls1/s;->a:Ls1/s;

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/truecaller/survey/qa/SurveyEntryQaActivity$a$a$a;->e:Lcom/truecaller/survey/qa/SurveyEntryQaActivity$a$a;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, v0, Lcom/truecaller/survey/qa/SurveyEntryQaActivity$a$a;->f:Lcom/truecaller/survey/qa/SurveyEntryQaActivity$a;

    iget-object p2, p2, Lcom/truecaller/survey/qa/SurveyEntryQaActivity$a;->a:Lcom/truecaller/survey/qa/SurveyEntryQaActivity;

    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const/4 v0, 0x0

    const-string v1, "Successfully inserted survey"

    invoke-static {p2, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/truecaller/survey/qa/SurveyEntryQaActivity$a$a$a;->e:Lcom/truecaller/survey/qa/SurveyEntryQaActivity$a$a;

    iget-object p1, p1, Lcom/truecaller/survey/qa/SurveyEntryQaActivity$a$a;->f:Lcom/truecaller/survey/qa/SurveyEntryQaActivity$a;

    iget-object p1, p1, Lcom/truecaller/survey/qa/SurveyEntryQaActivity$a;->a:Lcom/truecaller/survey/qa/SurveyEntryQaActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "Successfully inserted survey"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 3
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
