.class public final Le/a/r1$u;
.super Le/a/i2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/r1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "u"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/r1$u$a;
    }
.end annotation


# instance fields
.field public final d:Le/a/c/a/p/a/b;

.field public final e:Le/a/r1;

.field public final f:Le/a/r1$d;

.field public final g:Le/a/r1$u;

.field public h:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/truecaller/ads/offline/adtype/article/ArticleViewModel;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/truecaller/surveys/ui/bizmonAdapter/BizSurveyControllerViewModel;",
            ">;"
        }
    .end annotation
.end field

.field public j:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/booleanchoice/BooleanChoiceViewModel;",
            ">;"
        }
    .end annotation
.end field

.field public k:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/truecaller/surveys/ui/bottomSheetSurvey/BottomSheetSurveyViewModel;",
            ">;"
        }
    .end annotation
.end field

.field public l:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/freetext/FreeTextQuestionViewModel;",
            ">;"
        }
    .end annotation
.end field

.field public m:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;",
            ">;"
        }
    .end annotation
.end field

.field public n:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/truecaller/insights/ui/financepage/search/presentation/SearchTrxViewModel;",
            ">;"
        }
    .end annotation
.end field

.field public o:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/singlechoice/SingleChoiceQuestionViewModel;",
            ">;"
        }
    .end annotation
.end field

.field public p:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/truecaller/surveys/ui/adapter/SurveyControllerViewModel;",
            ">;"
        }
    .end annotation
.end field

.field public q:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/truecaller/tagger/tagPicker/TaggerViewModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/r1;Le/a/r1$d;Le/a/c/a/p/a/b;Ln3/v/s0;Le/a/h1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/a/i2;-><init>()V

    .line 2
    iput-object p0, p0, Le/a/r1$u;->g:Le/a/r1$u;

    .line 3
    iput-object p1, p0, Le/a/r1$u;->e:Le/a/r1;

    .line 4
    iput-object p2, p0, Le/a/r1$u;->f:Le/a/r1$d;

    .line 5
    iput-object p3, p0, Le/a/r1$u;->d:Le/a/c/a/p/a/b;

    .line 6
    new-instance p3, Le/a/r1$u$a;

    const/4 p4, 0x0

    invoke-direct {p3, p1, p2, p0, p4}, Le/a/r1$u$a;-><init>(Le/a/r1;Le/a/r1$d;Le/a/r1$u;I)V

    iput-object p3, p0, Le/a/r1$u;->h:Ljavax/inject/Provider;

    .line 7
    new-instance p3, Le/a/r1$u$a;

    const/4 p4, 0x1

    invoke-direct {p3, p1, p2, p0, p4}, Le/a/r1$u$a;-><init>(Le/a/r1;Le/a/r1$d;Le/a/r1$u;I)V

    iput-object p3, p0, Le/a/r1$u;->i:Ljavax/inject/Provider;

    .line 8
    new-instance p3, Le/a/r1$u$a;

    const/4 p4, 0x2

    invoke-direct {p3, p1, p2, p0, p4}, Le/a/r1$u$a;-><init>(Le/a/r1;Le/a/r1$d;Le/a/r1$u;I)V

    iput-object p3, p0, Le/a/r1$u;->j:Ljavax/inject/Provider;

    .line 9
    new-instance p3, Le/a/r1$u$a;

    const/4 p4, 0x3

    invoke-direct {p3, p1, p2, p0, p4}, Le/a/r1$u$a;-><init>(Le/a/r1;Le/a/r1$d;Le/a/r1$u;I)V

    iput-object p3, p0, Le/a/r1$u;->k:Ljavax/inject/Provider;

    .line 10
    new-instance p3, Le/a/r1$u$a;

    const/4 p4, 0x4

    invoke-direct {p3, p1, p2, p0, p4}, Le/a/r1$u$a;-><init>(Le/a/r1;Le/a/r1$d;Le/a/r1$u;I)V

    iput-object p3, p0, Le/a/r1$u;->l:Ljavax/inject/Provider;

    .line 11
    new-instance p3, Le/a/r1$u$a;

    const/4 p4, 0x5

    invoke-direct {p3, p1, p2, p0, p4}, Le/a/r1$u$a;-><init>(Le/a/r1;Le/a/r1$d;Le/a/r1$u;I)V

    iput-object p3, p0, Le/a/r1$u;->m:Ljavax/inject/Provider;

    .line 12
    new-instance p3, Le/a/r1$u$a;

    const/4 p4, 0x6

    invoke-direct {p3, p1, p2, p0, p4}, Le/a/r1$u$a;-><init>(Le/a/r1;Le/a/r1$d;Le/a/r1$u;I)V

    iput-object p3, p0, Le/a/r1$u;->n:Ljavax/inject/Provider;

    .line 13
    new-instance p3, Le/a/r1$u$a;

    const/4 p4, 0x7

    invoke-direct {p3, p1, p2, p0, p4}, Le/a/r1$u$a;-><init>(Le/a/r1;Le/a/r1$d;Le/a/r1$u;I)V

    iput-object p3, p0, Le/a/r1$u;->o:Ljavax/inject/Provider;

    .line 14
    new-instance p3, Le/a/r1$u$a;

    const/16 p4, 0x8

    invoke-direct {p3, p1, p2, p0, p4}, Le/a/r1$u$a;-><init>(Le/a/r1;Le/a/r1$d;Le/a/r1$u;I)V

    iput-object p3, p0, Le/a/r1$u;->p:Ljavax/inject/Provider;

    .line 15
    new-instance p3, Le/a/r1$u$a;

    const/16 p4, 0x9

    invoke-direct {p3, p1, p2, p0, p4}, Le/a/r1$u$a;-><init>(Le/a/r1;Le/a/r1$d;Le/a/r1$u;I)V

    iput-object p3, p0, Le/a/r1$u;->q:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljavax/inject/Provider<",
            "Ln3/v/y0;",
            ">;>;"
        }
    .end annotation

    const/16 v0, 0xa

    .line 1
    invoke-static {v0}, Lcom/google/common/collect/ImmutableMap;->builderWithExpectedSize(I)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    iget-object v1, p0, Le/a/r1$u;->h:Ljavax/inject/Provider;

    const-string v2, "com.truecaller.ads.offline.adtype.article.ArticleViewModel"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    iget-object v1, p0, Le/a/r1$u;->i:Ljavax/inject/Provider;

    const-string v2, "com.truecaller.surveys.ui.bizmonAdapter.BizSurveyControllerViewModel"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    iget-object v1, p0, Le/a/r1$u;->j:Ljavax/inject/Provider;

    const-string v2, "com.truecaller.surveys.ui.bottomSheetSurvey.question.booleanchoice.BooleanChoiceViewModel"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    iget-object v1, p0, Le/a/r1$u;->k:Ljavax/inject/Provider;

    const-string v2, "com.truecaller.surveys.ui.bottomSheetSurvey.BottomSheetSurveyViewModel"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    iget-object v1, p0, Le/a/r1$u;->l:Ljavax/inject/Provider;

    const-string v2, "com.truecaller.surveys.ui.bottomSheetSurvey.question.freetext.FreeTextQuestionViewModel"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    iget-object v1, p0, Le/a/r1$u;->m:Ljavax/inject/Provider;

    const-string v2, "com.truecaller.insights.ui.smartfeed.presentation.InsightsSmartFeedViewModel"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    iget-object v1, p0, Le/a/r1$u;->n:Ljavax/inject/Provider;

    const-string v2, "com.truecaller.insights.ui.financepage.search.presentation.SearchTrxViewModel"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    iget-object v1, p0, Le/a/r1$u;->o:Ljavax/inject/Provider;

    const-string v2, "com.truecaller.surveys.ui.bottomSheetSurvey.question.singlechoice.SingleChoiceQuestionViewModel"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    iget-object v1, p0, Le/a/r1$u;->p:Ljavax/inject/Provider;

    const-string v2, "com.truecaller.surveys.ui.adapter.SurveyControllerViewModel"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    iget-object v1, p0, Le/a/r1$u;->q:Ljavax/inject/Provider;

    const-string v2, "com.truecaller.tagger.tagPicker.TaggerViewModel"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method
