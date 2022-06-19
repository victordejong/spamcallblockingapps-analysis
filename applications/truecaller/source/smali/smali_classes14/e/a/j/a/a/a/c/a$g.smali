.class public final Le/a/j/a/a/a/c/a$g;
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
        "Ljava/lang/Integer;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/j/a/a/a/c/a;


# direct methods
.method public constructor <init>(Le/a/j/a/a/a/c/a;)V
    .locals 0

    iput-object p1, p0, Le/a/j/a/a/a/c/a$g;->b:Le/a/j/a/a/a/c/a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 2
    iget-object v0, p0, Le/a/j/a/a/a/c/a$g;->b:Le/a/j/a/a/a/c/a;

    invoke-static {v0}, Le/a/j/a/a/a/c/a;->QA(Le/a/j/a/a/a/c/a;)Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/singlechoice/SingleChoiceQuestionViewModel;

    move-result-object v0

    .line 3
    iget-object v1, v0, Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/singlechoice/SingleChoiceQuestionViewModel;->a:Ljava/util/List;

    .line 4
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/j/a/a/a/c/f;

    .line 5
    iget-object v3, v2, Le/a/j/a/a/a/c/f;->a:Lcom/truecaller/surveys/data/entities/Choice;

    .line 6
    invoke-virtual {v3}, Lcom/truecaller/surveys/data/entities/Choice;->getId()I

    move-result v3

    if-ne v3, p1, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 7
    :goto_1
    iput-boolean v3, v2, Le/a/j/a/a/a/c/f;->c:Z

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v0}, Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/singlechoice/SingleChoiceQuestionViewModel;->c()V

    .line 9
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
