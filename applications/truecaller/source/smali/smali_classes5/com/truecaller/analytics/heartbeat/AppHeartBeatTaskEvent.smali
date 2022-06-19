.class public final Lcom/truecaller/analytics/heartbeat/AppHeartBeatTaskEvent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/q2/v;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/analytics/heartbeat/AppHeartBeatTaskEvent$Result;
    }
.end annotation


# instance fields
.field public final a:Lcom/truecaller/analytics/heartbeat/AppHeartBeatTaskEvent$Result;

.field public final b:J


# direct methods
.method public constructor <init>(Lcom/truecaller/analytics/heartbeat/AppHeartBeatTaskEvent$Result;J)V
    .locals 1

    const-string v0, "result"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/truecaller/analytics/heartbeat/AppHeartBeatTaskEvent;->a:Lcom/truecaller/analytics/heartbeat/AppHeartBeatTaskEvent$Result;

    iput-wide p2, p0, Lcom/truecaller/analytics/heartbeat/AppHeartBeatTaskEvent;->b:J

    return-void
.end method

.method public constructor <init>(Lcom/truecaller/analytics/heartbeat/AppHeartBeatTaskEvent$Result;JI)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const-wide/16 p2, -0x1

    :cond_0
    const-string p4, "result"

    .line 1
    invoke-static {p1, p4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/truecaller/analytics/heartbeat/AppHeartBeatTaskEvent;->a:Lcom/truecaller/analytics/heartbeat/AppHeartBeatTaskEvent$Result;

    iput-wide p2, p0, Lcom/truecaller/analytics/heartbeat/AppHeartBeatTaskEvent;->b:J

    return-void
.end method


# virtual methods
.method public a()Le/a/q2/x;
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/truecaller/analytics/heartbeat/AppHeartBeatTaskEvent;->a:Lcom/truecaller/analytics/heartbeat/AppHeartBeatTaskEvent$Result;

    invoke-virtual {v1}, Lcom/truecaller/analytics/heartbeat/AppHeartBeatTaskEvent$Result;->getStatus()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Result"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-wide v1, p0, Lcom/truecaller/analytics/heartbeat/AppHeartBeatTaskEvent;->b:J

    const-string v3, "TriggerPeriodMinutes"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 4
    new-instance v1, Le/a/q2/x$b;

    const-string v2, "AppHeartBeatTask"

    invoke-direct {v1, v2, v0}, Le/a/q2/x$b;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/truecaller/analytics/heartbeat/AppHeartBeatTaskEvent;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/truecaller/analytics/heartbeat/AppHeartBeatTaskEvent;

    iget-object v0, p0, Lcom/truecaller/analytics/heartbeat/AppHeartBeatTaskEvent;->a:Lcom/truecaller/analytics/heartbeat/AppHeartBeatTaskEvent$Result;

    iget-object v1, p1, Lcom/truecaller/analytics/heartbeat/AppHeartBeatTaskEvent;->a:Lcom/truecaller/analytics/heartbeat/AppHeartBeatTaskEvent$Result;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/truecaller/analytics/heartbeat/AppHeartBeatTaskEvent;->b:J

    iget-wide v2, p1, Lcom/truecaller/analytics/heartbeat/AppHeartBeatTaskEvent;->b:J

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

    iget-object v0, p0, Lcom/truecaller/analytics/heartbeat/AppHeartBeatTaskEvent;->a:Lcom/truecaller/analytics/heartbeat/AppHeartBeatTaskEvent$Result;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/truecaller/analytics/heartbeat/AppHeartBeatTaskEvent;->b:J

    invoke-static {v1, v2}, Ld;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "AppHeartBeatTaskEvent(result="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/truecaller/analytics/heartbeat/AppHeartBeatTaskEvent;->a:Lcom/truecaller/analytics/heartbeat/AppHeartBeatTaskEvent$Result;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", triggerPeriodMinutes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/truecaller/analytics/heartbeat/AppHeartBeatTaskEvent;->b:J

    const-string v3, ")"

    invoke-static {v0, v1, v2, v3}, Le/d/c/a/a;->K2(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
