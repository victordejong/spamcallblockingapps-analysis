.class public final Le/a/f/z/d0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/truecaller/incallui/service/CallType;

.field public final c:J

.field public final d:J

.field public final e:Ljava/lang/String;

.field public final f:Z

.field public final g:Z

.field public final h:Lcom/truecaller/incallui/utils/BlockAction;

.field public final i:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/truecaller/incallui/service/CallType;JJLjava/lang/String;ZZLcom/truecaller/incallui/utils/BlockAction;Z)V
    .locals 1

    const-string v0, "phoneNumber"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callType"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/f/z/d0;->a:Ljava/lang/String;

    iput-object p2, p0, Le/a/f/z/d0;->b:Lcom/truecaller/incallui/service/CallType;

    iput-wide p3, p0, Le/a/f/z/d0;->c:J

    iput-wide p5, p0, Le/a/f/z/d0;->d:J

    iput-object p7, p0, Le/a/f/z/d0;->e:Ljava/lang/String;

    iput-boolean p8, p0, Le/a/f/z/d0;->f:Z

    iput-boolean p9, p0, Le/a/f/z/d0;->g:Z

    iput-object p10, p0, Le/a/f/z/d0;->h:Lcom/truecaller/incallui/utils/BlockAction;

    iput-boolean p11, p0, Le/a/f/z/d0;->i:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Le/a/f/z/d0;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/f/z/d0;

    iget-object v0, p0, Le/a/f/z/d0;->a:Ljava/lang/String;

    iget-object v1, p1, Le/a/f/z/d0;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/f/z/d0;->b:Lcom/truecaller/incallui/service/CallType;

    iget-object v1, p1, Le/a/f/z/d0;->b:Lcom/truecaller/incallui/service/CallType;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Le/a/f/z/d0;->c:J

    iget-wide v2, p1, Le/a/f/z/d0;->c:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Le/a/f/z/d0;->d:J

    iget-wide v2, p1, Le/a/f/z/d0;->d:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Le/a/f/z/d0;->e:Ljava/lang/String;

    iget-object v1, p1, Le/a/f/z/d0;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Le/a/f/z/d0;->f:Z

    iget-boolean v1, p1, Le/a/f/z/d0;->f:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Le/a/f/z/d0;->g:Z

    iget-boolean v1, p1, Le/a/f/z/d0;->g:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Le/a/f/z/d0;->h:Lcom/truecaller/incallui/utils/BlockAction;

    iget-object v1, p1, Le/a/f/z/d0;->h:Lcom/truecaller/incallui/utils/BlockAction;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Le/a/f/z/d0;->i:Z

    iget-boolean p1, p1, Le/a/f/z/d0;->i:Z

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
    .locals 4

    iget-object v0, p0, Le/a/f/z/d0;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/f/z/d0;->b:Lcom/truecaller/incallui/service/CallType;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Le/a/f/z/d0;->c:J

    invoke-static {v2, v3}, Ld;->a(J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Le/a/f/z/d0;->d:J

    invoke-static {v2, v3}, Ld;->a(J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/f/z/d0;->e:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Le/a/f/z/d0;->f:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    move v2, v3

    :cond_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Le/a/f/z/d0;->g:Z

    if-eqz v2, :cond_4

    move v2, v3

    :cond_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/f/z/d0;->h:Lcom/truecaller/incallui/utils/BlockAction;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Le/a/f/z/d0;->i:Z

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    move v3, v1

    :goto_3
    add-int/2addr v0, v3

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "InCallUiAcsData(phoneNumber="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/a/f/z/d0;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", callType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/f/z/d0;->b:Lcom/truecaller/incallui/service/CallType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Le/a/f/z/d0;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Le/a/f/z/d0;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", simIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/f/z/d0;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", rejected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Le/a/f/z/d0;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", rejectedFromNotification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Le/a/f/z/d0;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", blockAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/f/z/d0;->h:Lcom/truecaller/incallui/utils/BlockAction;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isFromTruecaller="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Le/a/f/z/d0;->i:Z

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->o(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
