.class public final Lcom/truecaller/bizmon/verifiedFeedback/FeedbackQuestion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\t\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0008\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0010\u0010\u0003\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J$\u0010\n\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00022\u0008\u0008\u0002\u0010\t\u001a\u00020\u0005H\u00c6\u0001\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0010\u0010\u000c\u001a\u00020\u0005H\u00d6\u0001\u00a2\u0006\u0004\u0008\u000c\u0010\u0007J\u0010\u0010\r\u001a\u00020\u0002H\u00d6\u0001\u00a2\u0006\u0004\u0008\r\u0010\u0004J\u001a\u0010\u0010\u001a\u00020\u000f2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\u0010\u0010\u0011R\u001c\u0010\u0008\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0004R\u001c\u0010\t\u001a\u00020\u00058\u0006@\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0007\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/truecaller/bizmon/verifiedFeedback/FeedbackQuestion;",
        "",
        "",
        "component1",
        "()I",
        "",
        "component2",
        "()Ljava/lang/String;",
        "questionId",
        "question",
        "copy",
        "(ILjava/lang/String;)Lcom/truecaller/bizmon/verifiedFeedback/FeedbackQuestion;",
        "toString",
        "hashCode",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "I",
        "getQuestionId",
        "Ljava/lang/String;",
        "getQuestion",
        "<init>",
        "(ILjava/lang/String;)V",
        "bizmon_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field private final question:Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "question"
    .end annotation
.end field

.field private final questionId:I
    .annotation runtime Le/m/e/d0/b;
        value = "questionId"
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    const-string v0, "question"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/truecaller/bizmon/verifiedFeedback/FeedbackQuestion;->questionId:I

    iput-object p2, p0, Lcom/truecaller/bizmon/verifiedFeedback/FeedbackQuestion;->question:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/truecaller/bizmon/verifiedFeedback/FeedbackQuestion;ILjava/lang/String;ILjava/lang/Object;)Lcom/truecaller/bizmon/verifiedFeedback/FeedbackQuestion;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget p1, p0, Lcom/truecaller/bizmon/verifiedFeedback/FeedbackQuestion;->questionId:I

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/truecaller/bizmon/verifiedFeedback/FeedbackQuestion;->question:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/truecaller/bizmon/verifiedFeedback/FeedbackQuestion;->copy(ILjava/lang/String;)Lcom/truecaller/bizmon/verifiedFeedback/FeedbackQuestion;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/truecaller/bizmon/verifiedFeedback/FeedbackQuestion;->questionId:I

    return v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/bizmon/verifiedFeedback/FeedbackQuestion;->question:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(ILjava/lang/String;)Lcom/truecaller/bizmon/verifiedFeedback/FeedbackQuestion;
    .locals 1

    const-string v0, "question"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/truecaller/bizmon/verifiedFeedback/FeedbackQuestion;

    invoke-direct {v0, p1, p2}, Lcom/truecaller/bizmon/verifiedFeedback/FeedbackQuestion;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/truecaller/bizmon/verifiedFeedback/FeedbackQuestion;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/truecaller/bizmon/verifiedFeedback/FeedbackQuestion;

    iget v0, p0, Lcom/truecaller/bizmon/verifiedFeedback/FeedbackQuestion;->questionId:I

    iget v1, p1, Lcom/truecaller/bizmon/verifiedFeedback/FeedbackQuestion;->questionId:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/truecaller/bizmon/verifiedFeedback/FeedbackQuestion;->question:Ljava/lang/String;

    iget-object p1, p1, Lcom/truecaller/bizmon/verifiedFeedback/FeedbackQuestion;->question:Ljava/lang/String;

    invoke-static {v0, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getQuestion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/bizmon/verifiedFeedback/FeedbackQuestion;->question:Ljava/lang/String;

    return-object v0
.end method

.method public final getQuestionId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/bizmon/verifiedFeedback/FeedbackQuestion;->questionId:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/truecaller/bizmon/verifiedFeedback/FeedbackQuestion;->questionId:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/truecaller/bizmon/verifiedFeedback/FeedbackQuestion;->question:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "FeedbackQuestion(questionId="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/truecaller/bizmon/verifiedFeedback/FeedbackQuestion;->questionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", question="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/bizmon/verifiedFeedback/FeedbackQuestion;->question:Ljava/lang/String;

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
