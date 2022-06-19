.class public final Le/a/r/z/d0/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/q2/v;


# instance fields
.field public final a:Le/a/r/z/o;

.field public final b:Z

.field public final c:Lcom/truecaller/wizard/WizardVerificationMode;


# direct methods
.method public constructor <init>(Le/a/r/z/o;ZLcom/truecaller/wizard/WizardVerificationMode;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "verificationMode"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/r/z/d0/l;->a:Le/a/r/z/o;

    iput-boolean p2, p0, Le/a/r/z/d0/l;->b:Z

    iput-object p3, p0, Le/a/r/z/d0/l;->c:Lcom/truecaller/wizard/WizardVerificationMode;

    return-void
.end method


# virtual methods
.method public a()Le/a/q2/x;
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    iget-object v1, p0, Le/a/r/z/d0/l;->a:Le/a/r/z/o;

    .line 3
    iget-object v1, v1, Le/a/r/z/o;->a:Ljava/lang/String;

    const-string v2, "Message"

    .line 4
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-boolean v1, p0, Le/a/r/z/d0/l;->b:Z

    const-string v2, "EmailClient"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 6
    iget-object v1, p0, Le/a/r/z/d0/l;->c:Lcom/truecaller/wizard/WizardVerificationMode;

    const-string v2, "$this$toAnalyticsName"

    .line 7
    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "SecondaryNumber"

    goto :goto_0

    .line 9
    :cond_0
    new-instance v0, Ls1/i;

    invoke-direct {v0}, Ls1/i;-><init>()V

    throw v0

    :cond_1
    const-string v1, "PrimaryNumber"

    :goto_0
    const-string v2, "VerificationMode"

    const-string v3, "WizardContactSupport"

    .line 10
    invoke-static {v0, v2, v1, v3, v0}, Le/d/c/a/a;->o1(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Le/a/q2/x$b;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Le/a/r/z/d0/l;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/r/z/d0/l;

    iget-object v0, p0, Le/a/r/z/d0/l;->a:Le/a/r/z/o;

    iget-object v1, p1, Le/a/r/z/d0/l;->a:Le/a/r/z/o;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Le/a/r/z/d0/l;->b:Z

    iget-boolean v1, p1, Le/a/r/z/d0/l;->b:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Le/a/r/z/d0/l;->c:Lcom/truecaller/wizard/WizardVerificationMode;

    iget-object p1, p1, Le/a/r/z/d0/l;->c:Lcom/truecaller/wizard/WizardVerificationMode;

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

    iget-object v0, p0, Le/a/r/z/d0/l;->a:Le/a/r/z/o;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Le/a/r/z/d0/l;->b:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/r/z/d0/l;->c:Lcom/truecaller/wizard/WizardVerificationMode;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "WizardContactSupportEvent(message="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/a/r/z/d0/l;->a:Le/a/r/z/o;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", emailComposed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Le/a/r/z/d0/l;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", verificationMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/r/z/d0/l;->c:Lcom/truecaller/wizard/WizardVerificationMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
