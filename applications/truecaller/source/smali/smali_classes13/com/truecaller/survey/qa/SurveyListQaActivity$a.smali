.class public final Lcom/truecaller/survey/qa/SurveyListQaActivity$a;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/survey/qa/SurveyListQaActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/survey/qa/SurveyListQaActivity$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$g<",
        "Lcom/truecaller/survey/qa/SurveyListQaActivity$a$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/truecaller/surveys/data/local/SurveyEntity;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic b:Lcom/truecaller/survey/qa/SurveyListQaActivity;


# direct methods
.method public constructor <init>(Lcom/truecaller/survey/qa/SurveyListQaActivity;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/truecaller/surveys/data/local/SurveyEntity;",
            ">;)V"
        }
    .end annotation

    const-string v0, "surveys"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/truecaller/survey/qa/SurveyListQaActivity$a;->b:Lcom/truecaller/survey/qa/SurveyListQaActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    iput-object p2, p0, Lcom/truecaller/survey/qa/SurveyListQaActivity$a;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/survey/qa/SurveyListQaActivity$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 2

    .line 1
    check-cast p1, Lcom/truecaller/survey/qa/SurveyListQaActivity$a$a;

    const-string v0, "holder"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/truecaller/survey/qa/SurveyListQaActivity$a;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/truecaller/surveys/data/local/SurveyEntity;

    const-string v0, "surveyEntity"

    .line 4
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 5
    invoke-static {p2, v0}, Le/a/l4/k;->r0(Lcom/truecaller/surveys/data/local/SurveyEntity;Ljava/lang/String;)Lcom/truecaller/surveys/data/entities/Survey;

    move-result-object p2

    .line 6
    iget-object v0, p1, Lcom/truecaller/survey/qa/SurveyListQaActivity$a$a;->b:Lcom/truecaller/survey/qa/SurveyListQaActivity$a;

    iget-object v0, v0, Lcom/truecaller/survey/qa/SurveyListQaActivity$a;->b:Lcom/truecaller/survey/qa/SurveyListQaActivity;

    .line 7
    iget-object v0, v0, Lcom/truecaller/survey/qa/SurveyListQaActivity;->e:Lq3/b/l/a;

    .line 8
    sget-object v1, Lcom/truecaller/surveys/data/entities/Survey;->Companion:Lcom/truecaller/surveys/data/entities/Survey$b;

    .line 9
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/truecaller/surveys/data/entities/Survey$a;->a:Lcom/truecaller/surveys/data/entities/Survey$a;

    .line 10
    invoke-virtual {v0, v1, p2}, Lq3/b/l/a;->b(Lq3/b/g;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 11
    iget-object p1, p1, Lcom/truecaller/survey/qa/SurveyListQaActivity$a$a;->a:Le/a/m3/s0;

    iget-object p1, p1, Le/a/m3/s0;->b:Landroid/widget/TextView;

    const-string v0, "binding.surveyJson"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 2

    const-string p2, "parent"

    .line 1
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d0334

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a1105

    .line 4
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 5
    new-instance p2, Le/a/m3/s0;

    check-cast p1, Landroidx/core/widget/NestedScrollView;

    invoke-direct {p2, p1, v0}, Le/a/m3/s0;-><init>(Landroidx/core/widget/NestedScrollView;Landroid/widget/TextView;)V

    const-string p1, "LayoutSingleSurveyPageBi\u2026.context), parent, false)"

    .line 6
    invoke-static {p2, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance p1, Lcom/truecaller/survey/qa/SurveyListQaActivity$a$a;

    invoke-direct {p1, p0, p2}, Lcom/truecaller/survey/qa/SurveyListQaActivity$a$a;-><init>(Lcom/truecaller/survey/qa/SurveyListQaActivity$a;Le/a/m3/s0;)V

    return-object p1

    .line 8
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 9
    new-instance p2, Ljava/lang/NullPointerException;

    const-string v0, "Missing required view with ID: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
