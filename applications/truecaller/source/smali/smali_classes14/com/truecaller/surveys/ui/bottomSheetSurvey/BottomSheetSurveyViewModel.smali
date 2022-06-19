.class public final Lcom/truecaller/surveys/ui/bottomSheetSurvey/BottomSheetSurveyViewModel;
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
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u00020\u0001B\u0011\u0008\u0007\u0012\u0006\u0010\u000c\u001a\u00020\t\u00a2\u0006\u0004\u0008\r\u0010\u000eR!\u0010\u0008\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0004\u0010\u0005\u001a\u0004\u0008\u0006\u0010\u0007R\u0016\u0010\u000c\u001a\u00020\t8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/truecaller/surveys/ui/bottomSheetSurvey/BottomSheetSurveyViewModel;",
        "Ln3/v/y0;",
        "Lq3/a/x2/i1;",
        "Le/a/j/e/d$a;",
        "a",
        "Lq3/a/x2/i1;",
        "getState",
        "()Lq3/a/x2/i1;",
        "state",
        "Le/a/j/e/c;",
        "b",
        "Le/a/j/e/c;",
        "surveyManager",
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
.field public final a:Lq3/a/x2/i1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/x2/i1<",
            "Le/a/j/e/d$a;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Le/a/j/e/c;


# direct methods
.method public constructor <init>(Le/a/j/e/c;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "surveyManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ln3/v/y0;-><init>()V

    iput-object p1, p0, Lcom/truecaller/surveys/ui/bottomSheetSurvey/BottomSheetSurveyViewModel;->b:Le/a/j/e/c;

    .line 2
    invoke-interface {p1}, Le/a/j/e/c;->getState()Lq3/a/x2/i1;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/surveys/ui/bottomSheetSurvey/BottomSheetSurveyViewModel;->a:Lq3/a/x2/i1;

    return-void
.end method
