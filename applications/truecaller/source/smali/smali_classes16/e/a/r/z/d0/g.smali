.class public final Le/a/r/z/d0/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/q2/v;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Z

.field public final c:Lcom/truecaller/wizard/WizardVerificationMode;


# direct methods
.method public constructor <init>(ZLcom/truecaller/wizard/WizardVerificationMode;)V
    .locals 1

    const-string v0, "verificationMode"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Le/a/r/z/d0/g;->b:Z

    iput-object p2, p0, Le/a/r/z/d0/g;->c:Lcom/truecaller/wizard/WizardVerificationMode;

    if-eqz p1, :cond_0

    const-string p1, "DualSim"

    goto :goto_0

    :cond_0
    const-string p1, "SingleSim"

    .line 2
    :goto_0
    iput-object p1, p0, Le/a/r/z/d0/g;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Le/a/q2/x;
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    iget-object v1, p0, Le/a/r/z/d0/g;->a:Ljava/lang/String;

    const-string v2, "DeviceType"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Le/a/r/z/d0/g;->c:Lcom/truecaller/wizard/WizardVerificationMode;

    const-string v2, "$this$toAnalyticsName"

    .line 4
    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "SecondaryNumber"

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Ls1/i;

    invoke-direct {v0}, Ls1/i;-><init>()V

    throw v0

    :cond_1
    const-string v1, "PrimaryNumber"

    :goto_0
    const-string v2, "VerificationMode"

    const-string v3, "VerificationCompleted"

    .line 7
    invoke-static {v0, v2, v1, v3, v0}, Le/d/c/a/a;->o1(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Le/a/q2/x$b;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Le/a/r/z/d0/g;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/r/z/d0/g;

    iget-boolean v0, p0, Le/a/r/z/d0/g;->b:Z

    iget-boolean v1, p1, Le/a/r/z/d0/g;->b:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Le/a/r/z/d0/g;->c:Lcom/truecaller/wizard/WizardVerificationMode;

    iget-object p1, p1, Le/a/r/z/d0/g;->c:Lcom/truecaller/wizard/WizardVerificationMode;

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
    .locals 2

    iget-boolean v0, p0, Le/a/r/z/d0/g;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Le/a/r/z/d0/g;->c:Lcom/truecaller/wizard/WizardVerificationMode;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "VerificationCompletedEvent(hasMultiSim="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Le/a/r/z/d0/g;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", verificationMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/r/z/d0/g;->c:Lcom/truecaller/wizard/WizardVerificationMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
