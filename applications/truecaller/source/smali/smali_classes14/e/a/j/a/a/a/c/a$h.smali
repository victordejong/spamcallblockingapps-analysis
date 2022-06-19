.class public final Le/a/j/a/a/a/c/a$h;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/j/a/a/a/c/a;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Le/a/j/a/a/a/c/f;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/j/a/a/a/c/a;


# direct methods
.method public constructor <init>(Le/a/j/a/a/a/c/a;)V
    .locals 0

    iput-object p1, p0, Le/a/j/a/a/a/c/a$h;->b:Le/a/j/a/a/a/c/a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    check-cast p1, Le/a/j/a/a/a/c/f;

    const-string v0, "choice"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/j/a/a/a/c/a$h;->b:Le/a/j/a/a/a/c/a;

    invoke-static {v0}, Le/a/j/a/a/a/c/a;->QA(Le/a/j/a/a/a/c/a;)Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/singlechoice/SingleChoiceQuestionViewModel;

    move-result-object v0

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "choiceViewModel"

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v1, v0, Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/singlechoice/SingleChoiceQuestionViewModel;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Le/a/j/a/a/a/c/f;

    .line 6
    iget-object v3, v3, Le/a/j/a/a/a/c/f;->a:Lcom/truecaller/surveys/data/entities/Choice;

    .line 7
    invoke-virtual {v3}, Lcom/truecaller/surveys/data/entities/Choice;->getId()I

    move-result v3

    .line 8
    iget-object v4, p1, Le/a/j/a/a/a/c/f;->a:Lcom/truecaller/surveys/data/entities/Choice;

    .line 9
    invoke-virtual {v4}, Lcom/truecaller/surveys/data/entities/Choice;->getId()I

    move-result v4

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_0

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    check-cast v2, Le/a/j/a/a/a/c/f;

    if-eqz v2, :cond_3

    .line 10
    iget-object p1, p1, Le/a/j/a/a/a/c/f;->d:Ljava/lang/Float;

    .line 11
    iput-object p1, v2, Le/a/j/a/a/a/c/f;->d:Ljava/lang/Float;

    .line 12
    :cond_3
    invoke-virtual {v0}, Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/singlechoice/SingleChoiceQuestionViewModel;->c()V

    .line 13
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
