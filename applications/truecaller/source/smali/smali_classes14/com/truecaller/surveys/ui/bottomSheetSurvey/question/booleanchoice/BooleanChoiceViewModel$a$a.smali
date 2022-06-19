.class public final Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/booleanchoice/BooleanChoiceViewModel$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/booleanchoice/BooleanChoiceViewModel$a;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/g<",
        "Le/a/j/e/d$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/booleanchoice/BooleanChoiceViewModel$a;


# direct methods
.method public constructor <init>(Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/booleanchoice/BooleanChoiceViewModel$a;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/booleanchoice/BooleanChoiceViewModel$a$a;->a:Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/booleanchoice/BooleanChoiceViewModel$a;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/j/e/d$a;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    check-cast p1, Le/a/j/e/d$a;

    .line 2
    instance-of p2, p1, Le/a/j/e/d$a$a;

    if-eqz p2, :cond_0

    .line 3
    iget-object p2, p0, Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/booleanchoice/BooleanChoiceViewModel$a$a;->a:Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/booleanchoice/BooleanChoiceViewModel$a;

    iget-object p2, p2, Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/booleanchoice/BooleanChoiceViewModel$a;->f:Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/booleanchoice/BooleanChoiceViewModel;

    .line 4
    iget-object p2, p2, Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/booleanchoice/BooleanChoiceViewModel;->a:Lq3/a/x2/z0;

    .line 5
    new-instance v0, Le/a/j/a/a/a/a/c;

    .line 6
    check-cast p1, Le/a/j/e/d$a$a;

    .line 7
    iget-object v1, p1, Le/a/j/e/d$a$a;->a:Lcom/truecaller/surveys/data/entities/Question$Binary;

    .line 8
    invoke-virtual {v1}, Lcom/truecaller/surveys/data/entities/Question$Binary;->getHeaderMessage()Ljava/lang/String;

    move-result-object v1

    .line 9
    iget-object v2, p1, Le/a/j/e/d$a$a;->a:Lcom/truecaller/surveys/data/entities/Question$Binary;

    .line 10
    invoke-virtual {v2}, Lcom/truecaller/surveys/data/entities/Question$Binary;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 11
    iget-object v3, p1, Le/a/j/e/d$a$a;->a:Lcom/truecaller/surveys/data/entities/Question$Binary;

    .line 12
    invoke-virtual {v3}, Lcom/truecaller/surveys/data/entities/Question$Binary;->getChoiceTrue()Lcom/truecaller/surveys/data/entities/Choice;

    move-result-object v3

    invoke-virtual {v3}, Lcom/truecaller/surveys/data/entities/Choice;->getText()Ljava/lang/String;

    move-result-object v3

    .line 13
    iget-object v4, p1, Le/a/j/e/d$a$a;->a:Lcom/truecaller/surveys/data/entities/Question$Binary;

    .line 14
    invoke-virtual {v4}, Lcom/truecaller/surveys/data/entities/Question$Binary;->getChoiceFalse()Lcom/truecaller/surveys/data/entities/Choice;

    move-result-object v4

    invoke-virtual {v4}, Lcom/truecaller/surveys/data/entities/Choice;->getText()Ljava/lang/String;

    move-result-object v4

    .line 15
    invoke-direct {v0, v1, v2, v3, v4}, Le/a/j/a/a/a/a/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-interface {p2, v0}, Lq3/a/x2/z0;->g(Ljava/lang/Object;)Z

    .line 17
    iget-object p2, p0, Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/booleanchoice/BooleanChoiceViewModel$a$a;->a:Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/booleanchoice/BooleanChoiceViewModel$a;

    iget-object p2, p2, Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/booleanchoice/BooleanChoiceViewModel$a;->f:Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/booleanchoice/BooleanChoiceViewModel;

    .line 18
    iget-object v0, p1, Le/a/j/e/d$a$a;->a:Lcom/truecaller/surveys/data/entities/Question$Binary;

    .line 19
    invoke-virtual {v0}, Lcom/truecaller/surveys/data/entities/Question$Binary;->getChoiceTrue()Lcom/truecaller/surveys/data/entities/Choice;

    move-result-object v0

    .line 20
    iput-object v0, p2, Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/booleanchoice/BooleanChoiceViewModel;->b:Lcom/truecaller/surveys/data/entities/Choice;

    .line 21
    iget-object p2, p0, Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/booleanchoice/BooleanChoiceViewModel$a$a;->a:Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/booleanchoice/BooleanChoiceViewModel$a;

    iget-object p2, p2, Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/booleanchoice/BooleanChoiceViewModel$a;->f:Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/booleanchoice/BooleanChoiceViewModel;

    .line 22
    iget-object p1, p1, Le/a/j/e/d$a$a;->a:Lcom/truecaller/surveys/data/entities/Question$Binary;

    .line 23
    invoke-virtual {p1}, Lcom/truecaller/surveys/data/entities/Question$Binary;->getChoiceFalse()Lcom/truecaller/surveys/data/entities/Choice;

    move-result-object p1

    .line 24
    iput-object p1, p2, Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/booleanchoice/BooleanChoiceViewModel;->c:Lcom/truecaller/surveys/data/entities/Choice;

    .line 25
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
