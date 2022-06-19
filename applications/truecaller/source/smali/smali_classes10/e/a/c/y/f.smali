.class public final Le/a/c/y/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:J

.field public final b:J

.field public final c:Le/a/c/y/l;

.field public final d:Z

.field public final e:Le/a/c/r/j/h;

.field public final f:Le/a/c/i/e/b;

.field public final g:Lw3/b/a/b;

.field public final h:Le/a/c/r/j/p;

.field public i:Lcom/truecaller/insights/models/smartcards/FeedbackGivenState;


# direct methods
.method public constructor <init>(JJLe/a/c/y/l;ZLe/a/c/r/j/h;Le/a/c/i/e/b;Lw3/b/a/b;Le/a/c/r/j/p;Lcom/truecaller/insights/models/smartcards/FeedbackGivenState;)V
    .locals 1

    const-string v0, "smartCardUiModel"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageDateTime"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "infoCardCategory"

    invoke-static {p10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "feedbackGiven"

    invoke-static {p11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Le/a/c/y/f;->a:J

    iput-wide p3, p0, Le/a/c/y/f;->b:J

    iput-object p5, p0, Le/a/c/y/f;->c:Le/a/c/y/l;

    iput-boolean p6, p0, Le/a/c/y/f;->d:Z

    iput-object p7, p0, Le/a/c/y/f;->e:Le/a/c/r/j/h;

    iput-object p8, p0, Le/a/c/y/f;->f:Le/a/c/i/e/b;

    iput-object p9, p0, Le/a/c/y/f;->g:Lw3/b/a/b;

    iput-object p10, p0, Le/a/c/y/f;->h:Le/a/c/r/j/p;

    iput-object p11, p0, Le/a/c/y/f;->i:Lcom/truecaller/insights/models/smartcards/FeedbackGivenState;

    return-void
.end method

.method public static a(Le/a/c/y/f;JJLe/a/c/y/l;ZLe/a/c/r/j/h;Le/a/c/i/e/b;Lw3/b/a/b;Le/a/c/r/j/p;Lcom/truecaller/insights/models/smartcards/FeedbackGivenState;I)Le/a/c/y/f;
    .locals 13

    move-object v0, p0

    move/from16 v1, p12

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-wide v2, v0, Le/a/c/y/f;->a:J

    goto :goto_0

    :cond_0
    move-wide v2, p1

    :goto_0
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_1

    iget-wide v4, v0, Le/a/c/y/f;->b:J

    goto :goto_1

    :cond_1
    move-wide/from16 v4, p3

    :goto_1
    and-int/lit8 v6, v1, 0x4

    if-eqz v6, :cond_2

    iget-object v6, v0, Le/a/c/y/f;->c:Le/a/c/y/l;

    goto :goto_2

    :cond_2
    move-object/from16 v6, p5

    :goto_2
    and-int/lit8 v7, v1, 0x8

    if-eqz v7, :cond_3

    iget-boolean v7, v0, Le/a/c/y/f;->d:Z

    goto :goto_3

    :cond_3
    move/from16 v7, p6

    :goto_3
    and-int/lit8 v8, v1, 0x10

    const/4 v9, 0x0

    if-eqz v8, :cond_4

    iget-object v8, v0, Le/a/c/y/f;->e:Le/a/c/r/j/h;

    goto :goto_4

    :cond_4
    move-object v8, v9

    :goto_4
    and-int/lit8 v10, v1, 0x20

    if-eqz v10, :cond_5

    iget-object v10, v0, Le/a/c/y/f;->f:Le/a/c/i/e/b;

    goto :goto_5

    :cond_5
    move-object v10, v9

    :goto_5
    and-int/lit8 v11, v1, 0x40

    if-eqz v11, :cond_6

    iget-object v11, v0, Le/a/c/y/f;->g:Lw3/b/a/b;

    goto :goto_6

    :cond_6
    move-object v11, v9

    :goto_6
    and-int/lit16 v12, v1, 0x80

    if-eqz v12, :cond_7

    iget-object v12, v0, Le/a/c/y/f;->h:Le/a/c/r/j/p;

    goto :goto_7

    :cond_7
    move-object v12, v9

    :goto_7
    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8

    iget-object v0, v0, Le/a/c/y/f;->i:Lcom/truecaller/insights/models/smartcards/FeedbackGivenState;

    move-object v9, v0

    :cond_8
    const-string v0, "smartCardUiModel"

    .line 1
    invoke-static {v6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageDateTime"

    invoke-static {v11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "infoCardCategory"

    invoke-static {v12, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "feedbackGiven"

    invoke-static {v9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/c/y/f;

    move-object p0, v0

    move-wide p1, v2

    move-wide/from16 p3, v4

    move-object/from16 p5, v6

    move/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v10

    move-object/from16 p9, v11

    move-object/from16 p10, v12

    move-object/from16 p11, v9

    invoke-direct/range {p0 .. p11}, Le/a/c/y/f;-><init>(JJLe/a/c/y/l;ZLe/a/c/r/j/h;Le/a/c/i/e/b;Lw3/b/a/b;Le/a/c/r/j/p;Lcom/truecaller/insights/models/smartcards/FeedbackGivenState;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Le/a/c/y/f;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/c/y/f;

    iget-wide v0, p0, Le/a/c/y/f;->a:J

    iget-wide v2, p1, Le/a/c/y/f;->a:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Le/a/c/y/f;->b:J

    iget-wide v2, p1, Le/a/c/y/f;->b:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Le/a/c/y/f;->c:Le/a/c/y/l;

    iget-object v1, p1, Le/a/c/y/f;->c:Le/a/c/y/l;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Le/a/c/y/f;->d:Z

    iget-boolean v1, p1, Le/a/c/y/f;->d:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Le/a/c/y/f;->e:Le/a/c/r/j/h;

    iget-object v1, p1, Le/a/c/y/f;->e:Le/a/c/r/j/h;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/c/y/f;->f:Le/a/c/i/e/b;

    iget-object v1, p1, Le/a/c/y/f;->f:Le/a/c/i/e/b;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/c/y/f;->g:Lw3/b/a/b;

    iget-object v1, p1, Le/a/c/y/f;->g:Lw3/b/a/b;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/c/y/f;->h:Le/a/c/r/j/p;

    iget-object v1, p1, Le/a/c/y/f;->h:Le/a/c/r/j/p;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/c/y/f;->i:Lcom/truecaller/insights/models/smartcards/FeedbackGivenState;

    iget-object p1, p1, Le/a/c/y/f;->i:Lcom/truecaller/insights/models/smartcards/FeedbackGivenState;

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

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Le/a/c/y/f;->a:J

    invoke-static {v0, v1}, Ld;->a(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Le/a/c/y/f;->b:J

    invoke-static {v1, v2}, Ld;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Le/a/c/y/f;->c:Le/a/c/y/l;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Le/a/c/y/l;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Le/a/c/y/f;->d:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :cond_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Le/a/c/y/f;->e:Le/a/c/r/j/h;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Le/a/c/y/f;->f:Le/a/c/i/e/b;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Le/a/c/i/e/b;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Le/a/c/y/f;->g:Lw3/b/a/b;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lw3/b/a/e0/c;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_4
    move v1, v2

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Le/a/c/y/f;->h:Le/a/c/r/j/p;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_5
    move v1, v2

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Le/a/c/y/f;->i:Lcom/truecaller/insights/models/smartcards/FeedbackGivenState;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_6
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "InfoCardUiModel(messageId="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Le/a/c/y/f;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", conversationId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Le/a/c/y/f;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", smartCardUiModel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/c/y/f;->c:Le/a/c/y/l;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isCollapsible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Le/a/c/y/f;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", feedbackActionInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/c/y/f;->e:Le/a/c/r/j/h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", feedback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/c/y/f;->f:Le/a/c/i/e/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", messageDateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/c/y/f;->g:Lw3/b/a/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", infoCardCategory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/c/y/f;->h:Le/a/c/r/j/p;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", feedbackGiven="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/c/y/f;->i:Lcom/truecaller/insights/models/smartcards/FeedbackGivenState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
