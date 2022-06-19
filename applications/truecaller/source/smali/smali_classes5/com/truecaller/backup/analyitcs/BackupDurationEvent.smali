.class public final Lcom/truecaller/backup/analyitcs/BackupDurationEvent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/q2/v;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/backup/analyitcs/BackupDurationEvent$Segment;
    }
.end annotation


# instance fields
.field public final a:J

.field public final b:Lcom/truecaller/backup/analyitcs/BackupDurationEvent$Segment;

.field public final c:J


# direct methods
.method public constructor <init>(Lcom/truecaller/backup/analyitcs/BackupDurationEvent$Segment;J)V
    .locals 1

    const-string v0, "segment"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/truecaller/backup/analyitcs/BackupDurationEvent;->b:Lcom/truecaller/backup/analyitcs/BackupDurationEvent$Segment;

    iput-wide p2, p0, Lcom/truecaller/backup/analyitcs/BackupDurationEvent;->c:J

    .line 2
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, p2, p3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/truecaller/backup/analyitcs/BackupDurationEvent;->a:J

    return-void
.end method


# virtual methods
.method public a()Le/a/q2/x;
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/truecaller/backup/analyitcs/BackupDurationEvent;->b:Lcom/truecaller/backup/analyitcs/BackupDurationEvent$Segment;

    invoke-virtual {v1}, Lcom/truecaller/backup/analyitcs/BackupDurationEvent$Segment;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Segment"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-wide v1, p0, Lcom/truecaller/backup/analyitcs/BackupDurationEvent;->a:J

    const-string v3, "value"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 4
    new-instance v1, Le/a/q2/x$b;

    const-string v2, "BackupDuration"

    invoke-direct {v1, v2, v0}, Le/a/q2/x$b;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/truecaller/backup/analyitcs/BackupDurationEvent;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/truecaller/backup/analyitcs/BackupDurationEvent;

    iget-object v0, p0, Lcom/truecaller/backup/analyitcs/BackupDurationEvent;->b:Lcom/truecaller/backup/analyitcs/BackupDurationEvent$Segment;

    iget-object v1, p1, Lcom/truecaller/backup/analyitcs/BackupDurationEvent;->b:Lcom/truecaller/backup/analyitcs/BackupDurationEvent$Segment;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/truecaller/backup/analyitcs/BackupDurationEvent;->c:J

    iget-wide v2, p1, Lcom/truecaller/backup/analyitcs/BackupDurationEvent;->c:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

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

    iget-object v0, p0, Lcom/truecaller/backup/analyitcs/BackupDurationEvent;->b:Lcom/truecaller/backup/analyitcs/BackupDurationEvent$Segment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/truecaller/backup/analyitcs/BackupDurationEvent;->c:J

    invoke-static {v1, v2}, Ld;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "BackupDurationEvent(segment="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/truecaller/backup/analyitcs/BackupDurationEvent;->b:Lcom/truecaller/backup/analyitcs/BackupDurationEvent$Segment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", durationMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/truecaller/backup/analyitcs/BackupDurationEvent;->c:J

    const-string v3, ")"

    invoke-static {v0, v1, v2, v3}, Le/d/c/a/a;->K2(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
