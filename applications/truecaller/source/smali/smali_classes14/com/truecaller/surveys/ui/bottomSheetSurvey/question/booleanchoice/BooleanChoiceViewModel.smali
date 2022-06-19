.class public final Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/booleanchoice/BooleanChoiceViewModel;
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
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0007\u0018\u00002\u00020\u0001B\u0011\u0008\u0007\u0012\u0006\u0010\u0014\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0015\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R\u0018\u0010\t\u001a\u0004\u0018\u00010\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u0008R\u0018\u0010\u000b\u001a\u0004\u0018\u00010\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u0008R\u001c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000fR\u0016\u0010\u0014\u001a\u00020\u00118\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R\u001f\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\r0\u00158\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/booleanchoice/BooleanChoiceViewModel;",
        "Ln3/v/y0;",
        "",
        "answerTrue",
        "Ls1/s;",
        "c",
        "(Z)V",
        "Lcom/truecaller/surveys/data/entities/Choice;",
        "Lcom/truecaller/surveys/data/entities/Choice;",
        "choiceFalse",
        "b",
        "choiceTrue",
        "Lq3/a/x2/z0;",
        "Le/a/j/a/a/a/a/c;",
        "a",
        "Lq3/a/x2/z0;",
        "_question",
        "Le/a/j/e/c;",
        "e",
        "Le/a/j/e/c;",
        "surveyManager",
        "Lq3/a/x2/e1;",
        "d",
        "Lq3/a/x2/e1;",
        "getQuestion",
        "()Lq3/a/x2/e1;",
        "question",
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
.field public final a:Lq3/a/x2/z0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/x2/z0<",
            "Le/a/j/a/a/a/a/c;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lcom/truecaller/surveys/data/entities/Choice;

.field public c:Lcom/truecaller/surveys/data/entities/Choice;

.field public final d:Lq3/a/x2/e1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/x2/e1<",
            "Le/a/j/a/a/a/a/c;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Le/a/j/e/c;


# direct methods
.method public constructor <init>(Le/a/j/e/c;)V
    .locals 8
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "surveyManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ln3/v/y0;-><init>()V

    iput-object p1, p0, Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/booleanchoice/BooleanChoiceViewModel;->e:Le/a/j/e/c;

    const/4 p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x6

    .line 2
    invoke-static {p1, v0, v1, v2}, Lq3/a/x2/g1;->a(IILq3/a/w2/i;I)Lq3/a/x2/z0;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/booleanchoice/BooleanChoiceViewModel;->a:Lq3/a/x2/z0;

    .line 3
    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->B(Lq3/a/x2/z0;)Lq3/a/x2/e1;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/booleanchoice/BooleanChoiceViewModel;->d:Lq3/a/x2/e1;

    .line 4
    invoke-static {p0}, Landroid/support/v4/media/session/MediaSessionCompat;->C0(Ln3/v/y0;)Lq3/a/i0;

    move-result-object v2

    new-instance v5, Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/booleanchoice/BooleanChoiceViewModel$a;

    invoke-direct {v5, p0, v1}, Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/booleanchoice/BooleanChoiceViewModel$a;-><init>(Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/booleanchoice/BooleanChoiceViewModel;Ls1/w/d;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method


# virtual methods
.method public final c(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/booleanchoice/BooleanChoiceViewModel;->b:Lcom/truecaller/surveys/data/entities/Choice;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/booleanchoice/BooleanChoiceViewModel;->c:Lcom/truecaller/surveys/data/entities/Choice;

    if-nez v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v2, p0, Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/booleanchoice/BooleanChoiceViewModel;->e:Le/a/j/e/c;

    new-instance v3, Lcom/truecaller/surveys/data/entities/Answer$Binary;

    if-eqz p1, :cond_1

    invoke-static {v0}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-static {v1}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    move-object v0, v1

    :goto_0
    invoke-direct {v3, v0}, Lcom/truecaller/surveys/data/entities/Answer$Binary;-><init>(Lcom/truecaller/surveys/data/entities/Choice;)V

    invoke-interface {v2, v3}, Le/a/j/e/c;->c(Lcom/truecaller/surveys/data/entities/Answer;)V

    return-void

    :cond_2
    :goto_1
    const-string p1, "Survey invalid state, question can\'t be handled"

    .line 3
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportWeirdnessButNeverCrash(Ljava/lang/String;)V

    return-void
.end method
