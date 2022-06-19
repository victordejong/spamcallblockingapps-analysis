.class public final Lcom/truecaller/backup/analyitcs/BackupTaskEvent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/q2/v;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/backup/analyitcs/BackupTaskEvent$Trigger;,
        Lcom/truecaller/backup/analyitcs/BackupTaskEvent$Type;
    }
.end annotation


# instance fields
.field public final a:J

.field public final b:Lcom/truecaller/backup/analyitcs/BackupTaskEvent$Type;

.field public final c:Lcom/truecaller/backup/BackupResult;

.field public final d:J

.field public final e:Ljava/lang/Long;

.field public final f:Lcom/truecaller/backup/analyitcs/BackupTaskEvent$Trigger;

.field public final g:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lcom/truecaller/backup/analyitcs/BackupTaskEvent$Type;Lcom/truecaller/backup/BackupResult;JLjava/lang/Long;Lcom/truecaller/backup/analyitcs/BackupTaskEvent$Trigger;Ljava/lang/Integer;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/truecaller/backup/analyitcs/BackupTaskEvent;->b:Lcom/truecaller/backup/analyitcs/BackupTaskEvent$Type;

    iput-object p2, p0, Lcom/truecaller/backup/analyitcs/BackupTaskEvent;->c:Lcom/truecaller/backup/BackupResult;

    iput-wide p3, p0, Lcom/truecaller/backup/analyitcs/BackupTaskEvent;->d:J

    iput-object p5, p0, Lcom/truecaller/backup/analyitcs/BackupTaskEvent;->e:Ljava/lang/Long;

    iput-object p6, p0, Lcom/truecaller/backup/analyitcs/BackupTaskEvent;->f:Lcom/truecaller/backup/analyitcs/BackupTaskEvent$Trigger;

    iput-object p7, p0, Lcom/truecaller/backup/analyitcs/BackupTaskEvent;->g:Ljava/lang/Integer;

    .line 2
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, p3, p4}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/truecaller/backup/analyitcs/BackupTaskEvent;->a:J

    return-void
.end method


# virtual methods
.method public a()Le/a/q2/x;
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/truecaller/backup/analyitcs/BackupTaskEvent;->c:Lcom/truecaller/backup/BackupResult;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Result"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/truecaller/backup/analyitcs/BackupTaskEvent;->b:Lcom/truecaller/backup/analyitcs/BackupTaskEvent$Type;

    invoke-virtual {v1}, Lcom/truecaller/backup/analyitcs/BackupTaskEvent$Type;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Type"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/truecaller/backup/analyitcs/BackupTaskEvent;->f:Lcom/truecaller/backup/analyitcs/BackupTaskEvent$Trigger;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/truecaller/backup/analyitcs/BackupTaskEvent$Trigger;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Trigger"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/truecaller/backup/analyitcs/BackupTaskEvent;->e:Ljava/lang/Long;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    iget-object v1, p0, Lcom/truecaller/backup/analyitcs/BackupTaskEvent;->e:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-string v3, "Frequency"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/truecaller/backup/analyitcs/BackupTaskEvent;->g:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    iget-object v1, p0, Lcom/truecaller/backup/analyitcs/BackupTaskEvent;->g:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "AttemptCount"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 7
    :cond_2
    iget-wide v1, p0, Lcom/truecaller/backup/analyitcs/BackupTaskEvent;->a:J

    const-string v3, "value"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 8
    new-instance v1, Le/a/q2/x$b;

    const-string v2, "BackupTask"

    invoke-direct {v1, v2, v0}, Le/a/q2/x$b;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/truecaller/backup/analyitcs/BackupTaskEvent;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/truecaller/backup/analyitcs/BackupTaskEvent;

    iget-object v0, p0, Lcom/truecaller/backup/analyitcs/BackupTaskEvent;->b:Lcom/truecaller/backup/analyitcs/BackupTaskEvent$Type;

    iget-object v1, p1, Lcom/truecaller/backup/analyitcs/BackupTaskEvent;->b:Lcom/truecaller/backup/analyitcs/BackupTaskEvent$Type;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/backup/analyitcs/BackupTaskEvent;->c:Lcom/truecaller/backup/BackupResult;

    iget-object v1, p1, Lcom/truecaller/backup/analyitcs/BackupTaskEvent;->c:Lcom/truecaller/backup/BackupResult;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/truecaller/backup/analyitcs/BackupTaskEvent;->d:J

    iget-wide v2, p1, Lcom/truecaller/backup/analyitcs/BackupTaskEvent;->d:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/backup/analyitcs/BackupTaskEvent;->e:Ljava/lang/Long;

    iget-object v1, p1, Lcom/truecaller/backup/analyitcs/BackupTaskEvent;->e:Ljava/lang/Long;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/backup/analyitcs/BackupTaskEvent;->f:Lcom/truecaller/backup/analyitcs/BackupTaskEvent$Trigger;

    iget-object v1, p1, Lcom/truecaller/backup/analyitcs/BackupTaskEvent;->f:Lcom/truecaller/backup/analyitcs/BackupTaskEvent$Trigger;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/backup/analyitcs/BackupTaskEvent;->g:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/truecaller/backup/analyitcs/BackupTaskEvent;->g:Ljava/lang/Integer;

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
    .locals 4

    iget-object v0, p0, Lcom/truecaller/backup/analyitcs/BackupTaskEvent;->b:Lcom/truecaller/backup/analyitcs/BackupTaskEvent$Type;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truecaller/backup/analyitcs/BackupTaskEvent;->c:Lcom/truecaller/backup/BackupResult;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/truecaller/backup/analyitcs/BackupTaskEvent;->d:J

    invoke-static {v2, v3}, Ld;->a(J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truecaller/backup/analyitcs/BackupTaskEvent;->e:Ljava/lang/Long;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truecaller/backup/analyitcs/BackupTaskEvent;->f:Lcom/truecaller/backup/analyitcs/BackupTaskEvent$Trigger;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    move v2, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truecaller/backup/analyitcs/BackupTaskEvent;->g:Ljava/lang/Integer;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_4
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "BackupTaskEvent(type="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/truecaller/backup/analyitcs/BackupTaskEvent;->b:Lcom/truecaller/backup/analyitcs/BackupTaskEvent$Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/backup/analyitcs/BackupTaskEvent;->c:Lcom/truecaller/backup/BackupResult;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", durationMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/truecaller/backup/analyitcs/BackupTaskEvent;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", frequency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/backup/analyitcs/BackupTaskEvent;->e:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", trigger="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/backup/analyitcs/BackupTaskEvent;->f:Lcom/truecaller/backup/analyitcs/BackupTaskEvent$Trigger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", runAttemptCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/backup/analyitcs/BackupTaskEvent;->g:Ljava/lang/Integer;

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->L2(Ljava/lang/StringBuilder;Ljava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
