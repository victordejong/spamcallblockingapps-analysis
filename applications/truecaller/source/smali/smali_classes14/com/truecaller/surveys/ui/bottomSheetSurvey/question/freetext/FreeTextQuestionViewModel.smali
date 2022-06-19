.class public final Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/freetext/FreeTextQuestionViewModel;
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
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0007\u0018\u00002\u00020\u0001B\u0011\u0008\u0007\u0012\u0006\u0010\u0010\u001a\u00020\r\u00a2\u0006\u0004\u0008\u001c\u0010\u001dR\u001c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00028\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0004\u0010\u0005R\u001f\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00078\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000bR\u0016\u0010\u0010\u001a\u00020\r8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000fR\u001c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00118\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R\u001f\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00168\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/freetext/FreeTextQuestionViewModel;",
        "Ln3/v/y0;",
        "Lq3/a/x2/a1;",
        "Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/freetext/SuggestionType;",
        "b",
        "Lq3/a/x2/a1;",
        "_suggestion",
        "Lq3/a/x2/i1;",
        "d",
        "Lq3/a/x2/i1;",
        "getSuggestion",
        "()Lq3/a/x2/i1;",
        "suggestion",
        "Le/a/j/e/c;",
        "e",
        "Le/a/j/e/c;",
        "surveyManager",
        "Lq3/a/x2/z0;",
        "Le/a/j/a/a/a/b/c;",
        "a",
        "Lq3/a/x2/z0;",
        "_question",
        "Lq3/a/x2/e1;",
        "c",
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
            "Le/a/j/a/a/a/b/c;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lq3/a/x2/a1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/x2/a1<",
            "Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/freetext/SuggestionType;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lq3/a/x2/e1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/x2/e1<",
            "Le/a/j/a/a/a/b/c;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lq3/a/x2/i1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/x2/i1<",
            "Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/freetext/SuggestionType;",
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

    iput-object p1, p0, Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/freetext/FreeTextQuestionViewModel;->e:Le/a/j/e/c;

    const/4 p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x6

    .line 2
    invoke-static {p1, v0, v1, v2}, Lq3/a/x2/g1;->a(IILq3/a/w2/i;I)Lq3/a/x2/z0;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/freetext/FreeTextQuestionViewModel;->a:Lq3/a/x2/z0;

    .line 3
    sget-object v0, Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/freetext/SuggestionType;->BUSINESS:Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/freetext/SuggestionType;

    invoke-static {v0}, Lq3/a/x2/k1;->a(Ljava/lang/Object;)Lq3/a/x2/a1;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/freetext/FreeTextQuestionViewModel;->b:Lq3/a/x2/a1;

    .line 4
    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->B(Lq3/a/x2/z0;)Lq3/a/x2/e1;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/freetext/FreeTextQuestionViewModel;->c:Lq3/a/x2/e1;

    .line 5
    invoke-static {v0}, Ls1/a/a/a/v0/f/d;->E(Lq3/a/x2/a1;)Lq3/a/x2/i1;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/freetext/FreeTextQuestionViewModel;->d:Lq3/a/x2/i1;

    .line 6
    invoke-static {p0}, Landroid/support/v4/media/session/MediaSessionCompat;->C0(Ln3/v/y0;)Lq3/a/i0;

    move-result-object v2

    new-instance v5, Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/freetext/FreeTextQuestionViewModel$a;

    invoke-direct {v5, p0, v1}, Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/freetext/FreeTextQuestionViewModel$a;-><init>(Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/freetext/FreeTextQuestionViewModel;Ls1/w/d;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method
