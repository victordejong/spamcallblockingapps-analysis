.class public final Lcom/truecaller/survey/qa/SurveyEntryQaActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/survey/qa/SurveyEntryQaActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/survey/qa/SurveyEntryQaActivity;

.field public final synthetic b:Le/a/m3/b;


# direct methods
.method public constructor <init>(Lcom/truecaller/survey/qa/SurveyEntryQaActivity;Le/a/m3/b;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/survey/qa/SurveyEntryQaActivity$a;->a:Lcom/truecaller/survey/qa/SurveyEntryQaActivity;

    iput-object p2, p0, Lcom/truecaller/survey/qa/SurveyEntryQaActivity$a;->b:Le/a/m3/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    iget-object p1, p0, Lcom/truecaller/survey/qa/SurveyEntryQaActivity$a;->b:Le/a/m3/b;

    iget-object p1, p1, Le/a/m3/b;->b:Landroid/widget/EditText;

    const-string v0, "binding.enterSurveyEditText"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/truecaller/survey/qa/SurveyEntryQaActivity$a;->a:Lcom/truecaller/survey/qa/SurveyEntryQaActivity;

    invoke-static {v0}, Ln3/v/r;->b(Ln3/v/b0;)Ln3/v/w;

    move-result-object v1

    iget-object v0, p0, Lcom/truecaller/survey/qa/SurveyEntryQaActivity$a;->a:Lcom/truecaller/survey/qa/SurveyEntryQaActivity;

    .line 3
    iget-object v2, v0, Lcom/truecaller/survey/qa/SurveyEntryQaActivity;->e:Ls1/w/f;

    const/4 v0, 0x0

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    .line 4
    new-instance v4, Lcom/truecaller/survey/qa/SurveyEntryQaActivity$a$a;

    invoke-direct {v4, p0, p1, v0}, Lcom/truecaller/survey/qa/SurveyEntryQaActivity$a$a;-><init>(Lcom/truecaller/survey/qa/SurveyEntryQaActivity$a;Ljava/lang/String;Ls1/w/d;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void

    :cond_0
    const-string p1, "ioContext"

    .line 5
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0
.end method
