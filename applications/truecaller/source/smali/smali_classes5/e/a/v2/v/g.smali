.class public final Le/a/v2/v/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/q2/v;


# instance fields
.field public final a:Lcom/truecaller/attestation/AttestationEngine;

.field public final b:Z

.field public final c:Ljava/lang/Long;

.field public final d:Ljava/lang/Long;

.field public final e:Z

.field public final f:Ljava/lang/Integer;

.field public final g:Z


# direct methods
.method public constructor <init>(Lcom/truecaller/attestation/AttestationEngine;ZLjava/lang/Long;Ljava/lang/Long;ZLjava/lang/Integer;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/v2/v/g;->a:Lcom/truecaller/attestation/AttestationEngine;

    iput-boolean p2, p0, Le/a/v2/v/g;->b:Z

    iput-object p3, p0, Le/a/v2/v/g;->c:Ljava/lang/Long;

    iput-object p4, p0, Le/a/v2/v/g;->d:Ljava/lang/Long;

    iput-boolean p5, p0, Le/a/v2/v/g;->e:Z

    iput-object p6, p0, Le/a/v2/v/g;->f:Ljava/lang/Integer;

    iput-boolean p7, p0, Le/a/v2/v/g;->g:Z

    return-void
.end method


# virtual methods
.method public a()Le/a/q2/x;
    .locals 6

    .line 1
    sget-object v0, Le/a/v2/v/d;->a:Le/a/v2/v/d;

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3
    iget-boolean v2, p0, Le/a/v2/v/g;->b:Z

    if-eqz v2, :cond_0

    const-string v2, "Success"

    goto :goto_0

    :cond_0
    const-string v2, "Failure"

    :goto_0
    const-string v3, "Result"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v2, p0, Le/a/v2/v/g;->a:Lcom/truecaller/attestation/AttestationEngine;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const-string v2, "None"

    :goto_1
    const-string v3, "Engine"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-boolean v2, p0, Le/a/v2/v/g;->e:Z

    const-string v3, "Verification"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 6
    iget-object v2, p0, Le/a/v2/v/g;->c:Ljava/lang/Long;

    const-string v3, "value"

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    .line 7
    invoke-virtual {v0, v4, v5}, Le/a/v2/v/d;->a(J)Ljava/lang/String;

    move-result-object v2

    const-string v4, "Latency"

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v2, p0, Le/a/v2/v/g;->c:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 9
    :cond_2
    iget-object v2, p0, Le/a/v2/v/g;->d:Ljava/lang/Long;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    .line 10
    invoke-virtual {v0, v4, v5}, Le/a/v2/v/d;->a(J)Ljava/lang/String;

    move-result-object v0

    const-string v2, "FullLatency"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Le/a/v2/v/g;->d:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 12
    :cond_3
    iget-boolean v0, p0, Le/a/v2/v/g;->b:Z

    if-nez v0, :cond_6

    .line 13
    iget-object v0, p0, Le/a/v2/v/g;->f:Ljava/lang/Integer;

    iget-boolean v2, p0, Le/a/v2/v/g;->g:Z

    if-eqz v2, :cond_4

    const-string v0, "ConnectionError"

    goto :goto_2

    :cond_4
    if-eqz v0, :cond_5

    .line 14
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_6

    const-string v2, "FailureReason"

    .line 15
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    :cond_6
    new-instance v0, Le/a/q2/x$b;

    const-string v2, "AttestationVerified"

    invoke-direct {v0, v2, v1}, Le/a/q2/x$b;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Le/a/v2/v/g;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/v2/v/g;

    iget-object v0, p0, Le/a/v2/v/g;->a:Lcom/truecaller/attestation/AttestationEngine;

    iget-object v1, p1, Le/a/v2/v/g;->a:Lcom/truecaller/attestation/AttestationEngine;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Le/a/v2/v/g;->b:Z

    iget-boolean v1, p1, Le/a/v2/v/g;->b:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Le/a/v2/v/g;->c:Ljava/lang/Long;

    iget-object v1, p1, Le/a/v2/v/g;->c:Ljava/lang/Long;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/v2/v/g;->d:Ljava/lang/Long;

    iget-object v1, p1, Le/a/v2/v/g;->d:Ljava/lang/Long;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Le/a/v2/v/g;->e:Z

    iget-boolean v1, p1, Le/a/v2/v/g;->e:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Le/a/v2/v/g;->f:Ljava/lang/Integer;

    iget-object v1, p1, Le/a/v2/v/g;->f:Ljava/lang/Integer;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Le/a/v2/v/g;->g:Z

    iget-boolean p1, p1, Le/a/v2/v/g;->g:Z

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

    iget-object v0, p0, Le/a/v2/v/g;->a:Lcom/truecaller/attestation/AttestationEngine;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Le/a/v2/v/g;->b:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    move v2, v3

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/v2/v/g;->c:Ljava/lang/Long;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/v2/v/g;->d:Ljava/lang/Long;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_3
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Le/a/v2/v/g;->e:Z

    if-eqz v2, :cond_4

    move v2, v3

    :cond_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/v2/v/g;->f:Ljava/lang/Integer;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Le/a/v2/v/g;->g:Z

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

    const-string v0, "AttestationVerifiedEvent(engine="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/a/v2/v/g;->a:Lcom/truecaller/attestation/AttestationEngine;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", success="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Le/a/v2/v/g;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", latency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/v2/v/g;->c:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fullLatency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/v2/v/g;->d:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", verification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Le/a/v2/v/g;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", errorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/v2/v/g;->f:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", connectionError="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Le/a/v2/v/g;->g:Z

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->o(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
