.class public final Le/a/v2/v/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/q2/v;


# instance fields
.field public final a:Lcom/truecaller/attestation/AttestationEngine;

.field public final b:Z

.field public final c:Z


# direct methods
.method public constructor <init>(Lcom/truecaller/attestation/AttestationEngine;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/v2/v/f;->a:Lcom/truecaller/attestation/AttestationEngine;

    iput-boolean p2, p0, Le/a/v2/v/f;->b:Z

    iput-boolean p3, p0, Le/a/v2/v/f;->c:Z

    return-void
.end method


# virtual methods
.method public a()Le/a/q2/x;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    iget-boolean v1, p0, Le/a/v2/v/f;->b:Z

    if-eqz v1, :cond_0

    const-string v1, "Success"

    goto :goto_0

    :cond_0
    const-string v1, "Failure"

    :goto_0
    const-string v2, "Result"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Le/a/v2/v/f;->a:Lcom/truecaller/attestation/AttestationEngine;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "None"

    :goto_1
    const-string v2, "Engine"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-boolean v1, p0, Le/a/v2/v/f;->c:Z

    const-string v2, "Verification"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5
    new-instance v1, Le/a/q2/x$b;

    const-string v2, "AttestationTriggered"

    invoke-direct {v1, v2, v0}, Le/a/q2/x$b;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Le/a/v2/v/f;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/v2/v/f;

    iget-object v0, p0, Le/a/v2/v/f;->a:Lcom/truecaller/attestation/AttestationEngine;

    iget-object v1, p1, Le/a/v2/v/f;->a:Lcom/truecaller/attestation/AttestationEngine;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Le/a/v2/v/f;->b:Z

    iget-boolean v1, p1, Le/a/v2/v/f;->b:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Le/a/v2/v/f;->c:Z

    iget-boolean p1, p1, Le/a/v2/v/f;->c:Z

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

    iget-object v0, p0, Le/a/v2/v/f;->a:Lcom/truecaller/attestation/AttestationEngine;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Le/a/v2/v/f;->b:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    move v1, v2

    :cond_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Le/a/v2/v/f;->c:Z

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "AttestationTriggeredEvent(engine="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/a/v2/v/f;->a:Lcom/truecaller/attestation/AttestationEngine;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", success="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Le/a/v2/v/f;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", verification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Le/a/v2/v/f;->c:Z

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->o(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
