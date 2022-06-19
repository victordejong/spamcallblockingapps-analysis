.class public final Le/a/a/c/g7;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Lcom/truecaller/insights/models/smartcards/CardFeedBackType;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/a/c/d;

.field public final synthetic c:Le/a/a/c/a/k;

.field public final synthetic d:Le/a/c/r/j/s;


# direct methods
.method public constructor <init>(Le/a/a/c/d;Le/a/a/c/a/k;Le/a/c/r/j/s;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/g7;->b:Le/a/a/c/d;

    iput-object p2, p0, Le/a/a/c/g7;->c:Le/a/a/c/a/k;

    iput-object p3, p0, Le/a/a/c/g7;->d:Le/a/c/r/j/s;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Lcom/truecaller/insights/models/smartcards/CardFeedBackType;

    const-string v0, "feedbackType"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/a/c/g7;->c:Le/a/a/c/a/k;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Le/a/a/c/a/k;->i(Z)V

    .line 4
    iget-object v0, p0, Le/a/a/c/g7;->d:Le/a/c/r/j/s;

    invoke-virtual {p1}, Lcom/truecaller/insights/models/smartcards/CardFeedBackType;->getFeedbackSubclass()Lcom/truecaller/insights/models/smartcards/FeedbackSubclass;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 p1, 0x2

    if-ne v1, p1, :cond_0

    .line 5
    sget-object p1, Lcom/truecaller/insights/models/smartcards/FeedbackGivenState;->DISMISS:Lcom/truecaller/insights/models/smartcards/FeedbackGivenState;

    goto :goto_0

    :cond_0
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    .line 6
    :cond_1
    invoke-virtual {p1}, Lcom/truecaller/insights/models/smartcards/CardFeedBackType;->getFeedbackClass()Lcom/truecaller/insights/models/smartcards/FeedbackClass;

    move-result-object v1

    sget-object v3, Lcom/truecaller/insights/models/smartcards/FeedbackClass;->SPAM:Lcom/truecaller/insights/models/smartcards/FeedbackClass;

    if-eq v1, v3, :cond_2

    invoke-virtual {p1}, Lcom/truecaller/insights/models/smartcards/CardFeedBackType;->getFeedbackClass()Lcom/truecaller/insights/models/smartcards/FeedbackClass;

    move-result-object p1

    sget-object v1, Lcom/truecaller/insights/models/smartcards/FeedbackClass;->NOT_SPAM:Lcom/truecaller/insights/models/smartcards/FeedbackClass;

    if-eq p1, v1, :cond_2

    .line 7
    iget-object p1, p0, Le/a/a/c/g7;->b:Le/a/a/c/d;

    invoke-virtual {p1, v2}, Le/a/a/c/d;->I0(Z)V

    .line 8
    :cond_2
    sget-object p1, Lcom/truecaller/insights/models/smartcards/FeedbackGivenState;->NEGATIVE:Lcom/truecaller/insights/models/smartcards/FeedbackGivenState;

    goto :goto_0

    .line 9
    :cond_3
    sget-object p1, Lcom/truecaller/insights/models/smartcards/FeedbackGivenState;->POSITIVE:Lcom/truecaller/insights/models/smartcards/FeedbackGivenState;

    .line 10
    :goto_0
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "<set-?>"

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iput-object p1, v0, Le/a/c/r/j/s;->j:Lcom/truecaller/insights/models/smartcards/FeedbackGivenState;

    .line 12
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
