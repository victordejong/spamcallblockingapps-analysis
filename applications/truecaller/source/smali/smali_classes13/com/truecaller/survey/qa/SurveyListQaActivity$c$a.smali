.class public final Lcom/truecaller/survey/qa/SurveyListQaActivity$c$a;
.super Landroidx/viewpager2/widget/ViewPager2$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/survey/qa/SurveyListQaActivity$c;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/survey/qa/SurveyListQaActivity$c;

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/truecaller/survey/qa/SurveyListQaActivity$c;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/truecaller/survey/qa/SurveyListQaActivity$c$a;->a:Lcom/truecaller/survey/qa/SurveyListQaActivity$c;

    iput-object p2, p0, Lcom/truecaller/survey/qa/SurveyListQaActivity$c$a;->b:Ljava/util/List;

    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$e;-><init>()V

    return-void
.end method


# virtual methods
.method public g(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/truecaller/survey/qa/SurveyListQaActivity$c$a;->a:Lcom/truecaller/survey/qa/SurveyListQaActivity$c;

    iget-object v0, v0, Lcom/truecaller/survey/qa/SurveyListQaActivity$c;->f:Lcom/truecaller/survey/qa/SurveyListQaActivity;

    invoke-static {v0}, Lcom/truecaller/survey/qa/SurveyListQaActivity;->pa(Lcom/truecaller/survey/qa/SurveyListQaActivity;)Le/a/m3/c;

    move-result-object v0

    iget-object v0, v0, Le/a/m3/c;->c:Landroidx/appcompat/widget/Toolbar;

    const-string v1, "binding.toolbar"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Survey "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/truecaller/survey/qa/SurveyListQaActivity$c$a;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/truecaller/survey/qa/SurveyListQaActivity$c$a;->b:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/surveys/data/local/SurveyEntity;

    invoke-virtual {p1}, Lcom/truecaller/surveys/data/local/SurveyEntity;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
