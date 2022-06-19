.class public final Lcom/truecaller/survey/qa/SurveyListQaActivity$a$a;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/survey/qa/SurveyListQaActivity$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final a:Le/a/m3/s0;

.field public final synthetic b:Lcom/truecaller/survey/qa/SurveyListQaActivity$a;


# direct methods
.method public constructor <init>(Lcom/truecaller/survey/qa/SurveyListQaActivity$a;Le/a/m3/s0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/m3/s0;",
            ")V"
        }
    .end annotation

    const-string v0, "binding"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/truecaller/survey/qa/SurveyListQaActivity$a$a;->b:Lcom/truecaller/survey/qa/SurveyListQaActivity$a;

    .line 2
    iget-object p1, p2, Le/a/m3/s0;->a:Landroidx/core/widget/NestedScrollView;

    .line 3
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/truecaller/survey/qa/SurveyListQaActivity$a$a;->a:Le/a/m3/s0;

    return-void
.end method
