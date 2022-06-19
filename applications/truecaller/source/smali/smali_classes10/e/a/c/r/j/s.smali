.class public final Le/a/c/r/j/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/r/j/i;


# instance fields
.field public final a:Le/a/c/r/j/p;

.field public final b:Le/a/c/r/j/n;

.field public final c:Le/a/c/r/j/a;

.field public final d:Le/a/c/r/j/h;

.field public final e:Le/a/c/r/j/q;

.field public final f:Le/a/c/r/j/r;

.field public g:Le/a/c/r/j/o;

.field public final h:Le/a/c/i/e/b;

.field public final i:Lcom/truecaller/insights/repository/filters/InfoCardType;

.field public j:Lcom/truecaller/insights/models/smartcards/FeedbackGivenState;

.field public final k:Z


# direct methods
.method public constructor <init>(Le/a/c/r/j/p;Le/a/c/r/j/n;Le/a/c/r/j/a;Le/a/c/r/j/h;Le/a/c/r/j/q;Le/a/c/r/j/r;Le/a/c/r/j/o;Le/a/c/i/e/b;Lcom/truecaller/insights/repository/filters/InfoCardType;Lcom/truecaller/insights/models/smartcards/FeedbackGivenState;ZI)V
    .locals 1

    and-int/lit8 p7, p12, 0x2

    const/4 p10, 0x0

    if-eqz p7, :cond_0

    move-object p2, p10

    :cond_0
    and-int/lit8 p7, p12, 0x4

    if-eqz p7, :cond_1

    move-object p3, p10

    :cond_1
    and-int/lit8 p7, p12, 0x20

    if-eqz p7, :cond_2

    move-object p6, p10

    :cond_2
    and-int/lit8 p7, p12, 0x40

    if-eqz p7, :cond_3

    .line 1
    sget-object p7, Le/a/c/r/j/o;->b:Le/a/c/r/j/o;

    goto :goto_0

    :cond_3
    move-object p7, p10

    :goto_0
    and-int/lit16 v0, p12, 0x80

    if-eqz v0, :cond_4

    move-object p8, p10

    :cond_4
    and-int/lit16 v0, p12, 0x100

    if-eqz v0, :cond_5

    .line 2
    sget-object p9, Lcom/truecaller/insights/repository/filters/InfoCardType;->INFOCARD:Lcom/truecaller/insights/repository/filters/InfoCardType;

    :cond_5
    and-int/lit16 v0, p12, 0x200

    if-eqz v0, :cond_6

    .line 3
    sget-object p10, Lcom/truecaller/insights/models/smartcards/FeedbackGivenState;->NOT_GIVEN:Lcom/truecaller/insights/models/smartcards/FeedbackGivenState;

    :cond_6
    and-int/lit16 p12, p12, 0x400

    if-eqz p12, :cond_7

    const/4 p11, 0x0

    :cond_7
    const-string p12, "category"

    .line 4
    invoke-static {p1, p12}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p12, "infoCardMetadata"

    invoke-static {p5, p12}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p12, "infoCardActionState"

    invoke-static {p7, p12}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p12, "infoCardType"

    invoke-static {p9, p12}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p12, "feedbackGiven"

    invoke-static {p10, p12}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/r/j/s;->a:Le/a/c/r/j/p;

    iput-object p2, p0, Le/a/c/r/j/s;->b:Le/a/c/r/j/n;

    iput-object p3, p0, Le/a/c/r/j/s;->c:Le/a/c/r/j/a;

    iput-object p4, p0, Le/a/c/r/j/s;->d:Le/a/c/r/j/h;

    iput-object p5, p0, Le/a/c/r/j/s;->e:Le/a/c/r/j/q;

    iput-object p6, p0, Le/a/c/r/j/s;->f:Le/a/c/r/j/r;

    iput-object p7, p0, Le/a/c/r/j/s;->g:Le/a/c/r/j/o;

    iput-object p8, p0, Le/a/c/r/j/s;->h:Le/a/c/i/e/b;

    iput-object p9, p0, Le/a/c/r/j/s;->i:Lcom/truecaller/insights/repository/filters/InfoCardType;

    iput-object p10, p0, Le/a/c/r/j/s;->j:Lcom/truecaller/insights/models/smartcards/FeedbackGivenState;

    iput-boolean p11, p0, Le/a/c/r/j/s;->k:Z

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/a/c/r/j/s;->k:Z

    return v0
.end method

.method public b()Le/a/c/r/j/h;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/c/r/j/s;->d:Le/a/c/r/j/h;

    return-object v0
.end method

.method public c()Le/a/c/i/e/b;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/c/r/j/s;->h:Le/a/c/i/e/b;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Le/a/c/r/j/s;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/c/r/j/s;

    iget-object v0, p0, Le/a/c/r/j/s;->a:Le/a/c/r/j/p;

    iget-object v1, p1, Le/a/c/r/j/s;->a:Le/a/c/r/j/p;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/c/r/j/s;->b:Le/a/c/r/j/n;

    iget-object v1, p1, Le/a/c/r/j/s;->b:Le/a/c/r/j/n;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/c/r/j/s;->c:Le/a/c/r/j/a;

    iget-object v1, p1, Le/a/c/r/j/s;->c:Le/a/c/r/j/a;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1
    iget-object v0, p0, Le/a/c/r/j/s;->d:Le/a/c/r/j/h;

    iget-object v1, p1, Le/a/c/r/j/s;->d:Le/a/c/r/j/h;

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/c/r/j/s;->e:Le/a/c/r/j/q;

    iget-object v1, p1, Le/a/c/r/j/s;->e:Le/a/c/r/j/q;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/c/r/j/s;->f:Le/a/c/r/j/r;

    iget-object v1, p1, Le/a/c/r/j/s;->f:Le/a/c/r/j/r;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/c/r/j/s;->g:Le/a/c/r/j/o;

    iget-object v1, p1, Le/a/c/r/j/s;->g:Le/a/c/r/j/o;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Le/a/c/r/j/s;->h:Le/a/c/i/e/b;

    iget-object v1, p1, Le/a/c/r/j/s;->h:Le/a/c/i/e/b;

    .line 4
    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/c/r/j/s;->i:Lcom/truecaller/insights/repository/filters/InfoCardType;

    iget-object v1, p1, Le/a/c/r/j/s;->i:Lcom/truecaller/insights/repository/filters/InfoCardType;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Le/a/c/r/j/s;->j:Lcom/truecaller/insights/models/smartcards/FeedbackGivenState;

    iget-object v1, p1, Le/a/c/r/j/s;->j:Lcom/truecaller/insights/models/smartcards/FeedbackGivenState;

    .line 6
    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    iget-boolean v0, p0, Le/a/c/r/j/s;->k:Z

    iget-boolean p1, p1, Le/a/c/r/j/s;->k:Z

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

    iget-object v0, p0, Le/a/c/r/j/s;->a:Le/a/c/r/j/p;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/c/r/j/s;->b:Le/a/c/r/j/n;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Le/a/c/r/j/n;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/c/r/j/s;->c:Le/a/c/r/j/a;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 1
    iget-object v2, p0, Le/a/c/r/j/s;->d:Le/a/c/r/j/h;

    if-eqz v2, :cond_3

    .line 2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    move v2, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/c/r/j/s;->e:Le/a/c/r/j/q;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Le/a/c/r/j/q;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    move v2, v1

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/c/r/j/s;->f:Le/a/c/r/j/r;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    move v2, v1

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/c/r/j/s;->g:Le/a/c/r/j/o;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Le/a/c/r/j/o;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_6
    move v2, v1

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v2, p0, Le/a/c/r/j/s;->h:Le/a/c/i/e/b;

    if-eqz v2, :cond_7

    .line 4
    invoke-virtual {v2}, Le/a/c/i/e/b;->hashCode()I

    move-result v2

    goto :goto_7

    :cond_7
    move v2, v1

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/c/r/j/s;->i:Lcom/truecaller/insights/repository/filters/InfoCardType;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_8

    :cond_8
    move v2, v1

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget-object v2, p0, Le/a/c/r/j/s;->j:Lcom/truecaller/insights/models/smartcards/FeedbackGivenState;

    if-eqz v2, :cond_9

    .line 6
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_9
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 7
    iget-boolean v1, p0, Le/a/c/r/j/s;->k:Z

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    :cond_a
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "InfoCardWithAction(category="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/a/c/r/j/s;->a:Le/a/c/r/j/p;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", infoCard="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/c/r/j/s;->b:Le/a/c/r/j/n;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", actionData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/c/r/j/s;->c:Le/a/c/r/j/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", feedbackActionInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1
    iget-object v1, p0, Le/a/c/r/j/s;->d:Le/a/c/r/j/h;

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", infoCardMetadata="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/c/r/j/s;->e:Le/a/c/r/j/q;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", subCategory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/c/r/j/s;->f:Le/a/c/r/j/r;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", infoCardActionState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/c/r/j/s;->g:Le/a/c/r/j/o;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", feedback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object v1, p0, Le/a/c/r/j/s;->h:Le/a/c/i/e/b;

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", infoCardType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/c/r/j/s;->i:Lcom/truecaller/insights/repository/filters/InfoCardType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", feedbackGiven="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-object v1, p0, Le/a/c/r/j/s;->j:Lcom/truecaller/insights/models/smartcards/FeedbackGivenState;

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isIM="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    iget-boolean v1, p0, Le/a/c/r/j/s;->k:Z

    const-string v2, ")"

    .line 8
    invoke-static {v0, v1, v2}, Le/d/c/a/a;->o(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
