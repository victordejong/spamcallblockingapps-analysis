.class public final Le/a/j/a/a/a/b/a$i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/j/a/a/a/b/a$i;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/g<",
        "Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/freetext/SuggestionType;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/j/a/a/a/b/a$i;


# direct methods
.method public constructor <init>(Le/a/j/a/a/a/b/a$i;)V
    .locals 0

    iput-object p1, p0, Le/a/j/a/a/a/b/a$i$a;->a:Le/a/j/a/a/a/b/a$i;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/freetext/SuggestionType;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/freetext/SuggestionType;

    .line 2
    iget-object p2, p0, Le/a/j/a/a/a/b/a$i$a;->a:Le/a/j/a/a/a/b/a$i;

    iget-object p2, p2, Le/a/j/a/a/a/b/a$i;->f:Le/a/j/a/a/a/b/a;

    .line 3
    sget-object v0, Le/a/j/a/a/a/b/a;->j:[Ls1/a/l;

    .line 4
    invoke-virtual {p2}, Le/a/j/a/a/a/b/a;->RA()Le/a/j/d/f;

    move-result-object p2

    .line 5
    iget-object p2, p2, Le/a/j/d/f;->c:Landroid/widget/RadioButton;

    const-string v0, "binding.choiceBusiness"

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/freetext/SuggestionType;->BUSINESS:Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/freetext/SuggestionType;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p2, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 6
    iget-object p2, p0, Le/a/j/a/a/a/b/a$i$a;->a:Le/a/j/a/a/a/b/a$i;

    iget-object p2, p2, Le/a/j/a/a/a/b/a$i;->f:Le/a/j/a/a/a/b/a;

    .line 7
    invoke-virtual {p2}, Le/a/j/a/a/a/b/a;->RA()Le/a/j/d/f;

    move-result-object p2

    .line 8
    iget-object p2, p2, Le/a/j/d/f;->d:Landroid/widget/RadioButton;

    const-string v0, "binding.choicePerson"

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/freetext/SuggestionType;->PERSON:Lcom/truecaller/surveys/ui/bottomSheetSurvey/question/freetext/SuggestionType;

    if-ne p1, v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {p2, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 9
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
