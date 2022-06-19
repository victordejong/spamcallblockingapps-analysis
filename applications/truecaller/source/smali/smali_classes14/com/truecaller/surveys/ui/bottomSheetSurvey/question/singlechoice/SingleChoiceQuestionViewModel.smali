.class public final Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/singlechoice/SingleChoiceQuestionViewModel;
.super Ln3/v/y0;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u00002\u00020\u0001B\u0011\u0008\u0007\u0012\u0006\u0010\u0018\u001a\u00020\u0015\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u000f\u0010\u0003\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004R\u001c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00058\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0008R\u001f\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000fR%\u0010\u0014\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u00110\n8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\r\u001a\u0004\u0008\u0013\u0010\u000fR\u0016\u0010\u0018\u001a\u00020\u00158\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R\u001c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u00198\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001bR\"\u0010\u001d\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u00110\u00198\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u001b\u00a8\u0006 "
    }
    d2 = {
        "Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/singlechoice/SingleChoiceQuestionViewModel;",
        "Ln3/v/y0;",
        "Ls1/s;",
        "c",
        "()V",
        "",
        "Le/a/j/a/a/a/c/f;",
        "a",
        "Ljava/util/List;",
        "localChoices",
        "Lq3/a/x2/i1;",
        "",
        "e",
        "Lq3/a/x2/i1;",
        "getQuestion",
        "()Lq3/a/x2/i1;",
        "question",
        "",
        "d",
        "getChoices",
        "choices",
        "Le/a/j/e/c;",
        "f",
        "Le/a/j/e/c;",
        "surveyManager",
        "Lq3/a/x2/a1;",
        "b",
        "Lq3/a/x2/a1;",
        "_question",
        "_choices",
        "<init>",
        "(Le/a/j/e/c;)V",
        "surveys_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/a/j/a/a/a/c/f;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lq3/a/x2/a1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/x2/a1<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lq3/a/x2/a1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/x2/a1<",
            "Ljava/util/List<",
            "Le/a/j/a/a/a/c/f;",
            ">;>;"
        }
    .end annotation
.end field

.field public final d:Lq3/a/x2/i1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/x2/i1<",
            "Ljava/util/List<",
            "Le/a/j/a/a/a/c/f;",
            ">;>;"
        }
    .end annotation
.end field

.field public final e:Lq3/a/x2/i1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/x2/i1<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Le/a/j/e/c;


# direct methods
.method public constructor <init>(Le/a/j/e/c;)V
    .locals 6
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "surveyManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ln3/v/y0;-><init>()V

    iput-object p1, p0, Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/singlechoice/SingleChoiceQuestionViewModel;->f:Le/a/j/e/c;

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/singlechoice/SingleChoiceQuestionViewModel;->a:Ljava/util/List;

    const-string p1, ""

    .line 3
    invoke-static {p1}, Lq3/a/x2/k1;->a(Ljava/lang/Object;)Lq3/a/x2/a1;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/singlechoice/SingleChoiceQuestionViewModel;->b:Lq3/a/x2/a1;

    .line 4
    sget-object v0, Ls1/u/s;->a:Ls1/u/s;

    invoke-static {v0}, Lq3/a/x2/k1;->a(Ljava/lang/Object;)Lq3/a/x2/a1;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/singlechoice/SingleChoiceQuestionViewModel;->c:Lq3/a/x2/a1;

    .line 5
    invoke-static {v0}, Ls1/a/a/a/v0/f/d;->E(Lq3/a/x2/a1;)Lq3/a/x2/i1;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/singlechoice/SingleChoiceQuestionViewModel;->d:Lq3/a/x2/i1;

    .line 6
    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->E(Lq3/a/x2/a1;)Lq3/a/x2/i1;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/singlechoice/SingleChoiceQuestionViewModel;->e:Lq3/a/x2/i1;

    .line 7
    invoke-static {p0}, Landroid/support/v4/media/session/MediaSessionCompat;->C0(Ln3/v/y0;)Lq3/a/i0;

    move-result-object v0

    new-instance v3, Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/singlechoice/SingleChoiceQuestionViewModel$a;

    const/4 p1, 0x0

    invoke-direct {v3, p0, p1}, Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/singlechoice/SingleChoiceQuestionViewModel$a;-><init>(Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/singlechoice/SingleChoiceQuestionViewModel;Ls1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/singlechoice/SingleChoiceQuestionViewModel;->c:Lq3/a/x2/a1;

    iget-object v1, p0, Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/singlechoice/SingleChoiceQuestionViewModel;->a:Ljava/util/List;

    .line 2
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 4
    move-object v4, v3

    check-cast v4, Le/a/j/a/a/a/c/f;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xf

    .line 5
    invoke-static/range {v4 .. v9}, Le/a/j/a/a/a/c/f;->a(Le/a/j/a/a/a/c/f;Lcom/truecaller/surveys/data/entities/Choice;Ljava/util/UUID;ZLjava/lang/Float;I)Le/a/j/a/a/a/c/f;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {v0, v2}, Lq3/a/x2/a1;->setValue(Ljava/lang/Object;)V

    return-void
.end method
