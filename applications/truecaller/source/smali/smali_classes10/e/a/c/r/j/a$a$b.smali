.class public final Le/a/c/r/j/a$a$b;
.super Le/a/c/r/j/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/c/r/j/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final c:J

.field public final d:Le/a/c/j/f$a;

.field public final e:Ljava/lang/String;

.field public final f:Z

.field public final g:Lcom/truecaller/insights/models/DomainOrigin;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;

.field public final k:Le/a/c/r/j/c;


# direct methods
.method public constructor <init>(JLe/a/c/j/f$a;Ljava/lang/String;ZLcom/truecaller/insights/models/DomainOrigin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Le/a/c/r/j/c;I)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move/from16 v12, p5

    move-object/from16 v13, p6

    move-object/from16 v14, p7

    move-object/from16 v15, p8

    move/from16 v1, p11

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_0

    const-string v2, ""

    move-object v9, v2

    goto :goto_0

    :cond_0
    move-object/from16 v9, p9

    :goto_0
    and-int/lit16 v1, v1, 0x100

    const/4 v8, 0x0

    if-eqz v1, :cond_1

    .line 1
    new-instance v16, Le/a/c/r/j/u;

    move-object/from16 v1, v16

    move-wide/from16 v2, p1

    move-object/from16 v4, p6

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p3

    move-object v0, v8

    move-object/from16 v8, p7

    move-object v0, v9

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Le/a/c/r/j/u;-><init>(JLcom/truecaller/insights/models/DomainOrigin;Ljava/lang/String;ZLe/a/c/j/f;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v8, v16

    goto :goto_1

    :cond_1
    move-object v0, v9

    const/4 v8, 0x0

    :goto_1
    const-string v1, "deepLink"

    .line 2
    invoke-static {v10, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "senderId"

    invoke-static {v11, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "origin"

    invoke-static {v13, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "type"

    invoke-static {v14, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "analyticsContext"

    invoke-static {v15, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "title"

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "action"

    invoke-static {v8, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    move-object/from16 v1, p0

    .line 3
    invoke-direct {v1, v0, v12, v2}, Le/a/c/r/j/a$a;-><init>(Ljava/lang/String;ZLs1/z/c/f;)V

    move-wide/from16 v2, p1

    iput-wide v2, v1, Le/a/c/r/j/a$a$b;->c:J

    iput-object v10, v1, Le/a/c/r/j/a$a$b;->d:Le/a/c/j/f$a;

    iput-object v11, v1, Le/a/c/r/j/a$a$b;->e:Ljava/lang/String;

    iput-boolean v12, v1, Le/a/c/r/j/a$a$b;->f:Z

    iput-object v13, v1, Le/a/c/r/j/a$a$b;->g:Lcom/truecaller/insights/models/DomainOrigin;

    iput-object v14, v1, Le/a/c/r/j/a$a$b;->h:Ljava/lang/String;

    iput-object v15, v1, Le/a/c/r/j/a$a$b;->i:Ljava/lang/String;

    iput-object v0, v1, Le/a/c/r/j/a$a$b;->j:Ljava/lang/String;

    iput-object v8, v1, Le/a/c/r/j/a$a$b;->k:Le/a/c/r/j/c;

    return-void
.end method


# virtual methods
.method public a()Le/a/c/r/j/c;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/c/r/j/a$a$b;->k:Le/a/c/r/j/c;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/c/r/j/a$a$b;->j:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Le/a/c/r/j/a$a$b;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/c/r/j/a$a$b;

    iget-wide v0, p0, Le/a/c/r/j/a$a$b;->c:J

    iget-wide v2, p1, Le/a/c/r/j/a$a$b;->c:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Le/a/c/r/j/a$a$b;->d:Le/a/c/j/f$a;

    iget-object v1, p1, Le/a/c/r/j/a$a$b;->d:Le/a/c/j/f$a;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/c/r/j/a$a$b;->e:Ljava/lang/String;

    iget-object v1, p1, Le/a/c/r/j/a$a$b;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1
    iget-boolean v0, p0, Le/a/c/r/j/a$a$b;->f:Z

    iget-boolean v1, p1, Le/a/c/r/j/a$a$b;->f:Z

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Le/a/c/r/j/a$a$b;->g:Lcom/truecaller/insights/models/DomainOrigin;

    iget-object v1, p1, Le/a/c/r/j/a$a$b;->g:Lcom/truecaller/insights/models/DomainOrigin;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/c/r/j/a$a$b;->h:Ljava/lang/String;

    iget-object v1, p1, Le/a/c/r/j/a$a$b;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/c/r/j/a$a$b;->i:Ljava/lang/String;

    iget-object v1, p1, Le/a/c/r/j/a$a$b;->i:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Le/a/c/r/j/a$a$b;->j:Ljava/lang/String;

    iget-object v1, p1, Le/a/c/r/j/a$a$b;->j:Ljava/lang/String;

    .line 4
    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Le/a/c/r/j/a$a$b;->k:Le/a/c/r/j/c;

    iget-object p1, p1, Le/a/c/r/j/a$a$b;->k:Le/a/c/r/j/c;

    .line 6
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

    iget-wide v0, p0, Le/a/c/r/j/a$a$b;->c:J

    invoke-static {v0, v1}, Ld;->a(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Le/a/c/r/j/a$a$b;->d:Le/a/c/j/f$a;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Le/a/c/j/f$a;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Le/a/c/r/j/a$a$b;->e:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 1
    iget-boolean v1, p0, Le/a/c/r/j/a$a$b;->f:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :cond_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Le/a/c/r/j/a$a$b;->g:Lcom/truecaller/insights/models/DomainOrigin;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Le/a/c/r/j/a$a$b;->h:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_4
    move v1, v2

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Le/a/c/r/j/a$a$b;->i:Ljava/lang/String;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_5
    move v1, v2

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, Le/a/c/r/j/a$a$b;->j:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 4
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_5

    :cond_6
    move v1, v2

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget-object v1, p0, Le/a/c/r/j/a$a$b;->k:Le/a/c/r/j/c;

    if-eqz v1, :cond_7

    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_7
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "Pay(messageId="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Le/a/c/r/j/a$a$b;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", deepLink="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/c/r/j/a$a$b;->d:Le/a/c/j/f$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", senderId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/c/r/j/a$a$b;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isIM="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1
    iget-boolean v1, p0, Le/a/c/r/j/a$a$b;->f:Z

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", origin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/c/r/j/a$a$b;->g:Lcom/truecaller/insights/models/DomainOrigin;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/c/r/j/a$a$b;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", analyticsContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/c/r/j/a$a$b;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object v1, p0, Le/a/c/r/j/a$a$b;->j:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-object v1, p0, Le/a/c/r/j/a$a$b;->k:Le/a/c/r/j/c;

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
