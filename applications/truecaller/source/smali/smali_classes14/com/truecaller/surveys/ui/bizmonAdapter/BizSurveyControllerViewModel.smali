.class public final Lcom/truecaller/surveys/ui/bizmonAdapter/BizSurveyControllerViewModel;
.super Ln3/v/y0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/surveys/ui/bizmonAdapter/BizSurveyControllerViewModel$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u0004B\u0011\u0008\u0007\u0012\u0006\u0010\n\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0011\u0010\u0012R\u001e\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00028\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0004\u0010\u0005R\u0016\u0010\n\u001a\u00020\u00078\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\tR!\u0010\u0010\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u000b8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/truecaller/surveys/ui/bizmonAdapter/BizSurveyControllerViewModel;",
        "Ln3/v/y0;",
        "Lq3/a/x2/a1;",
        "Lcom/truecaller/surveys/ui/bizmonAdapter/BizSurveyControllerViewModel$a;",
        "a",
        "Lq3/a/x2/a1;",
        "_state",
        "Le/a/j/e/a;",
        "c",
        "Le/a/j/e/a;",
        "surveyCoordinator",
        "Lq3/a/x2/i1;",
        "b",
        "Lq3/a/x2/i1;",
        "getState",
        "()Lq3/a/x2/i1;",
        "state",
        "<init>",
        "(Le/a/j/e/a;)V",
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
.field public final a:Lq3/a/x2/a1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/x2/a1<",
            "Lcom/truecaller/surveys/ui/bizmonAdapter/BizSurveyControllerViewModel$a;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lq3/a/x2/i1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/x2/i1<",
            "Lcom/truecaller/surveys/ui/bizmonAdapter/BizSurveyControllerViewModel$a;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Le/a/j/e/a;


# direct methods
.method public constructor <init>(Le/a/j/e/a;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "surveyCoordinator"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ln3/v/y0;-><init>()V

    iput-object p1, p0, Lcom/truecaller/surveys/ui/bizmonAdapter/BizSurveyControllerViewModel;->c:Le/a/j/e/a;

    const/4 p1, 0x0

    .line 2
    invoke-static {p1}, Lq3/a/x2/k1;->a(Ljava/lang/Object;)Lq3/a/x2/a1;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/surveys/ui/bizmonAdapter/BizSurveyControllerViewModel;->a:Lq3/a/x2/a1;

    .line 3
    iput-object p1, p0, Lcom/truecaller/surveys/ui/bizmonAdapter/BizSurveyControllerViewModel;->b:Lq3/a/x2/i1;

    return-void
.end method
