.class public final Le/a/c/b0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/r/j/i;


# instance fields
.field public final a:Le/a/c/r/m/b;

.field public final b:Le/a/c/r/j/h;

.field public c:Lcom/truecaller/insights/models/smartcards/FeedbackGivenState;

.field public final d:Le/a/c/i/e/b;

.field public final e:Lcom/truecaller/insights/models/pdo/ClassifierType;

.field public final f:Z


# direct methods
.method public constructor <init>(Le/a/c/r/m/b;Le/a/c/r/j/h;Lcom/truecaller/insights/models/smartcards/FeedbackGivenState;Le/a/c/i/e/b;Lcom/truecaller/insights/models/pdo/ClassifierType;ZI)V
    .locals 1

    and-int/lit8 p3, p7, 0x4

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 1
    sget-object p3, Lcom/truecaller/insights/models/smartcards/FeedbackGivenState;->NOT_GIVEN:Lcom/truecaller/insights/models/smartcards/FeedbackGivenState;

    goto :goto_0

    :cond_0
    move-object p3, v0

    :goto_0
    and-int/lit8 p7, p7, 0x8

    if-eqz p7, :cond_1

    move-object p4, v0

    :cond_1
    const-string p7, "updateCategory"

    .line 2
    invoke-static {p1, p7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p7, "feedbackGiven"

    invoke-static {p3, p7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p7, "classifierType"

    invoke-static {p5, p7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/b0/b;->a:Le/a/c/r/m/b;

    iput-object p2, p0, Le/a/c/b0/b;->b:Le/a/c/r/j/h;

    iput-object p3, p0, Le/a/c/b0/b;->c:Lcom/truecaller/insights/models/smartcards/FeedbackGivenState;

    iput-object p4, p0, Le/a/c/b0/b;->d:Le/a/c/i/e/b;

    iput-object p5, p0, Le/a/c/b0/b;->e:Lcom/truecaller/insights/models/pdo/ClassifierType;

    iput-boolean p6, p0, Le/a/c/b0/b;->f:Z

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/a/c/b0/b;->f:Z

    return v0
.end method

.method public b()Le/a/c/r/j/h;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/c/b0/b;->b:Le/a/c/r/j/h;

    return-object v0
.end method

.method public c()Le/a/c/i/e/b;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/c/b0/b;->d:Le/a/c/i/e/b;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Le/a/c/b0/b;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/c/b0/b;

    iget-object v0, p0, Le/a/c/b0/b;->a:Le/a/c/r/m/b;

    iget-object v1, p1, Le/a/c/b0/b;->a:Le/a/c/r/m/b;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1
    iget-object v0, p0, Le/a/c/b0/b;->b:Le/a/c/r/j/h;

    iget-object v1, p1, Le/a/c/b0/b;->b:Le/a/c/r/j/h;

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Le/a/c/b0/b;->c:Lcom/truecaller/insights/models/smartcards/FeedbackGivenState;

    iget-object v1, p1, Le/a/c/b0/b;->c:Lcom/truecaller/insights/models/smartcards/FeedbackGivenState;

    .line 4
    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Le/a/c/b0/b;->d:Le/a/c/i/e/b;

    iget-object v1, p1, Le/a/c/b0/b;->d:Le/a/c/i/e/b;

    .line 6
    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/c/b0/b;->e:Lcom/truecaller/insights/models/pdo/ClassifierType;

    iget-object v1, p1, Le/a/c/b0/b;->e:Lcom/truecaller/insights/models/pdo/ClassifierType;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    iget-boolean v0, p0, Le/a/c/b0/b;->f:Z

    iget-boolean p1, p1, Le/a/c/b0/b;->f:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Le/a/c/b0/b;->a:Le/a/c/r/m/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Le/a/c/r/m/b;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 1
    iget-object v2, p0, Le/a/c/b0/b;->b:Le/a/c/r/j/h;

    if-eqz v2, :cond_1

    .line 2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v2, p0, Le/a/c/b0/b;->c:Lcom/truecaller/insights/models/smartcards/FeedbackGivenState;

    if-eqz v2, :cond_2

    .line 4
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget-object v2, p0, Le/a/c/b0/b;->d:Le/a/c/i/e/b;

    if-eqz v2, :cond_3

    .line 6
    invoke-virtual {v2}, Le/a/c/i/e/b;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    move v2, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/c/b0/b;->e:Lcom/truecaller/insights/models/pdo/ClassifierType;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 7
    iget-boolean v1, p0, Le/a/c/b0/b;->f:Z

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    :cond_5
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "UpdateCategoryWithFeedback(updateCategory="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/a/c/b0/b;->a:Le/a/c/r/m/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", feedbackActionInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1
    iget-object v1, p0, Le/a/c/b0/b;->b:Le/a/c/r/j/h;

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", feedbackGiven="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object v1, p0, Le/a/c/b0/b;->c:Lcom/truecaller/insights/models/smartcards/FeedbackGivenState;

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", feedback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-object v1, p0, Le/a/c/b0/b;->d:Le/a/c/i/e/b;

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", classifierType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/c/b0/b;->e:Lcom/truecaller/insights/models/pdo/ClassifierType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isIM="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    iget-boolean v1, p0, Le/a/c/b0/b;->f:Z

    const-string v2, ")"

    .line 8
    invoke-static {v0, v1, v2}, Le/d/c/a/a;->o(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
