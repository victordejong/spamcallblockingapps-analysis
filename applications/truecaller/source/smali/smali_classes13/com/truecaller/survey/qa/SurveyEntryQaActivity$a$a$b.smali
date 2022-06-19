.class public final Lcom/truecaller/survey/qa/SurveyEntryQaActivity$a$a$b;
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
    c = "com.truecaller.survey.qa.SurveyEntryQaActivity$onCreate$1$1$2"
    f = "SurveyEntryQaActivity.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Lcom/truecaller/survey/qa/SurveyEntryQaActivity$a$a;

.field public final synthetic f:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Lcom/truecaller/survey/qa/SurveyEntryQaActivity$a$a;Ljava/lang/Exception;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/survey/qa/SurveyEntryQaActivity$a$a$b;->e:Lcom/truecaller/survey/qa/SurveyEntryQaActivity$a$a;

    iput-object p2, p0, Lcom/truecaller/survey/qa/SurveyEntryQaActivity$a$a$b;->f:Ljava/lang/Exception;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

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

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/truecaller/survey/qa/SurveyEntryQaActivity$a$a$b;

    iget-object v0, p0, Lcom/truecaller/survey/qa/SurveyEntryQaActivity$a$a$b;->e:Lcom/truecaller/survey/qa/SurveyEntryQaActivity$a$a;

    iget-object v1, p0, Lcom/truecaller/survey/qa/SurveyEntryQaActivity$a$a$b;->f:Ljava/lang/Exception;

    invoke-direct {p1, v0, v1, p2}, Lcom/truecaller/survey/qa/SurveyEntryQaActivity$a$a$b;-><init>(Lcom/truecaller/survey/qa/SurveyEntryQaActivity$a$a;Ljava/lang/Exception;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object p1, Ls1/s;->a:Ls1/s;

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/truecaller/survey/qa/SurveyEntryQaActivity$a$a$b;->e:Lcom/truecaller/survey/qa/SurveyEntryQaActivity$a$a;

    iget-object v1, p0, Lcom/truecaller/survey/qa/SurveyEntryQaActivity$a$a$b;->f:Ljava/lang/Exception;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, v0, Lcom/truecaller/survey/qa/SurveyEntryQaActivity$a$a;->f:Lcom/truecaller/survey/qa/SurveyEntryQaActivity$a;

    iget-object p2, p2, Lcom/truecaller/survey/qa/SurveyEntryQaActivity$a;->a:Lcom/truecaller/survey/qa/SurveyEntryQaActivity;

    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to parse JSON: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/truecaller/survey/qa/SurveyEntryQaActivity$a$a$b;->e:Lcom/truecaller/survey/qa/SurveyEntryQaActivity$a$a;

    iget-object p1, p1, Lcom/truecaller/survey/qa/SurveyEntryQaActivity$a$a;->f:Lcom/truecaller/survey/qa/SurveyEntryQaActivity$a;

    iget-object p1, p1, Lcom/truecaller/survey/qa/SurveyEntryQaActivity$a;->a:Lcom/truecaller/survey/qa/SurveyEntryQaActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "Failed to parse JSON: "

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/truecaller/survey/qa/SurveyEntryQaActivity$a$a$b;->f:Ljava/lang/Exception;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 3
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
