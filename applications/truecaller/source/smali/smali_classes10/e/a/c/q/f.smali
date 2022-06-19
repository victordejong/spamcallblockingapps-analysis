.class public final Le/a/c/q/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Z

.field public final b:J

.field public c:J

.field public final d:Lcom/truecaller/insights/insightsui/LoadDirection;

.field public final e:Le/a/c/q/i;

.field public final f:Lcom/truecaller/insights/insightsui/TransactionType;

.field public final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZJJLcom/truecaller/insights/insightsui/LoadDirection;Le/a/c/q/i;Lcom/truecaller/insights/insightsui/TransactionType;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZJJ",
            "Lcom/truecaller/insights/insightsui/LoadDirection;",
            "Le/a/c/q/i;",
            "Lcom/truecaller/insights/insightsui/TransactionType;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "loadDirection"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "boundary"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transactionType"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "senders"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Le/a/c/q/f;->a:Z

    iput-wide p2, p0, Le/a/c/q/f;->b:J

    iput-wide p4, p0, Le/a/c/q/f;->c:J

    iput-object p6, p0, Le/a/c/q/f;->d:Lcom/truecaller/insights/insightsui/LoadDirection;

    iput-object p7, p0, Le/a/c/q/f;->e:Le/a/c/q/i;

    iput-object p8, p0, Le/a/c/q/f;->f:Lcom/truecaller/insights/insightsui/TransactionType;

    iput-object p9, p0, Le/a/c/q/f;->g:Ljava/util/List;

    iput-object p10, p0, Le/a/c/q/f;->h:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(ZJJLcom/truecaller/insights/insightsui/LoadDirection;Le/a/c/q/i;Lcom/truecaller/insights/insightsui/TransactionType;Ljava/util/List;Ljava/lang/String;I)V
    .locals 14

    move/from16 v0, p11

    and-int/lit8 v1, v0, 0x20

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2
    sget-object v1, Lcom/truecaller/insights/insightsui/TransactionType;->ALL:Lcom/truecaller/insights/insightsui/TransactionType;

    move-object v11, v1

    goto :goto_0

    :cond_0
    move-object v11, v2

    :goto_0
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_1

    .line 3
    sget-object v2, Ls1/u/s;->a:Ls1/u/s;

    :cond_1
    move-object v12, v2

    and-int/lit16 v0, v0, 0x80

    const/4 v13, 0x0

    move-object v3, p0

    move v4, p1

    move-wide/from16 v5, p2

    move-wide/from16 v7, p4

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    .line 4
    invoke-direct/range {v3 .. v13}, Le/a/c/q/f;-><init>(ZJJLcom/truecaller/insights/insightsui/LoadDirection;Le/a/c/q/i;Lcom/truecaller/insights/insightsui/TransactionType;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Le/a/c/q/f;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/c/q/f;

    iget-boolean v0, p0, Le/a/c/q/f;->a:Z

    iget-boolean v1, p1, Le/a/c/q/f;->a:Z

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Le/a/c/q/f;->b:J

    iget-wide v2, p1, Le/a/c/q/f;->b:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Le/a/c/q/f;->c:J

    iget-wide v2, p1, Le/a/c/q/f;->c:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Le/a/c/q/f;->d:Lcom/truecaller/insights/insightsui/LoadDirection;

    iget-object v1, p1, Le/a/c/q/f;->d:Lcom/truecaller/insights/insightsui/LoadDirection;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/c/q/f;->e:Le/a/c/q/i;

    iget-object v1, p1, Le/a/c/q/f;->e:Le/a/c/q/i;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/c/q/f;->f:Lcom/truecaller/insights/insightsui/TransactionType;

    iget-object v1, p1, Le/a/c/q/f;->f:Lcom/truecaller/insights/insightsui/TransactionType;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/c/q/f;->g:Ljava/util/List;

    iget-object v1, p1, Le/a/c/q/f;->g:Ljava/util/List;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/c/q/f;->h:Ljava/lang/String;

    iget-object p1, p1, Le/a/c/q/f;->h:Ljava/lang/String;

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

    iget-boolean v0, p0, Le/a/c/q/f;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Le/a/c/q/f;->b:J

    invoke-static {v1, v2}, Ld;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Le/a/c/q/f;->c:J

    invoke-static {v1, v2}, Ld;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Le/a/c/q/f;->d:Lcom/truecaller/insights/insightsui/LoadDirection;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Le/a/c/q/f;->e:Le/a/c/q/i;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Le/a/c/q/i;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Le/a/c/q/f;->f:Lcom/truecaller/insights/insightsui/TransactionType;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Le/a/c/q/f;->g:Ljava/util/List;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_4
    move v1, v2

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Le/a/c/q/f;->h:Ljava/lang/String;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_5
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "LoadConfig(isInitialLoad="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Le/a/c/q/f;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", startTs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Le/a/c/q/f;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", endTs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Le/a/c/q/f;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", loadDirection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/c/q/f;->d:Lcom/truecaller/insights/insightsui/LoadDirection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", boundary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/c/q/f;->e:Le/a/c/q/i;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", transactionType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/c/q/f;->f:Lcom/truecaller/insights/insightsui/TransactionType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", senders="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/c/q/f;->g:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", searchQuery="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/c/q/f;->h:Ljava/lang/String;

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
