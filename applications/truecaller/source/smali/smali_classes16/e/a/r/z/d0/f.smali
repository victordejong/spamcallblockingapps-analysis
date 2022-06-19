.class public final Le/a/r/z/d0/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/q2/v;


# instance fields
.field public final a:Z

.field public final b:Lcom/truecaller/wizard/verification/analytics/CallAction;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Z

.field public final g:Ljava/lang/Long;

.field public final h:Lcom/truecaller/wizard/WizardVerificationMode;

.field public final i:Ljava/lang/Boolean;

.field public final j:Z


# direct methods
.method public constructor <init>(Lcom/truecaller/wizard/verification/analytics/CallAction;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Long;Lcom/truecaller/wizard/WizardVerificationMode;Ljava/lang/Boolean;Z)V
    .locals 1

    const-string v0, "action"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "enteredPhoneNumber"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "enteredNumberCountry"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callPhoneNumber"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "verificationMode"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/r/z/d0/f;->b:Lcom/truecaller/wizard/verification/analytics/CallAction;

    iput-object p2, p0, Le/a/r/z/d0/f;->c:Ljava/lang/String;

    iput-object p3, p0, Le/a/r/z/d0/f;->d:Ljava/lang/String;

    iput-object p4, p0, Le/a/r/z/d0/f;->e:Ljava/lang/String;

    iput-boolean p5, p0, Le/a/r/z/d0/f;->f:Z

    iput-object p6, p0, Le/a/r/z/d0/f;->g:Ljava/lang/Long;

    iput-object p7, p0, Le/a/r/z/d0/f;->h:Lcom/truecaller/wizard/WizardVerificationMode;

    iput-object p8, p0, Le/a/r/z/d0/f;->i:Ljava/lang/Boolean;

    iput-boolean p9, p0, Le/a/r/z/d0/f;->j:Z

    .line 2
    sget-object p2, Lcom/truecaller/wizard/verification/analytics/CallAction;->REJECTED:Lcom/truecaller/wizard/verification/analytics/CallAction;

    if-eq p1, p2, :cond_1

    sget-object p2, Lcom/truecaller/wizard/verification/analytics/CallAction;->NOT_REJECTED:Lcom/truecaller/wizard/verification/analytics/CallAction;

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Le/a/r/z/d0/f;->a:Z

    return-void
.end method


# virtual methods
.method public a()Le/a/q2/x;
    .locals 7

    .line 1
    iget-object v0, p0, Le/a/r/z/d0/f;->b:Lcom/truecaller/wizard/verification/analytics/CallAction;

    sget-object v1, Lcom/truecaller/wizard/verification/analytics/CallAction;->REJECTED:Lcom/truecaller/wizard/verification/analytics/CallAction;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/truecaller/wizard/verification/analytics/CallAction;->NOT_REJECTED:Lcom/truecaller/wizard/verification/analytics/CallAction;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/truecaller/wizard/verification/analytics/CallAction;->ANSWERED:Lcom/truecaller/wizard/verification/analytics/CallAction;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Le/a/r/z/d0/f;->i:Ljava/lang/Boolean;

    invoke-static {v0}, Le/a/e/a2;->r(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    .line 2
    :goto_1
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    if-eqz v0, :cond_6

    .line 3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    iget-object v3, p0, Le/a/r/z/d0/f;->h:Lcom/truecaller/wizard/WizardVerificationMode;

    const-string v4, "$this$toAnalyticsName"

    .line 5
    invoke-static {v3, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-eqz v3, :cond_3

    if-ne v3, v2, :cond_2

    const-string v3, "SecondaryNumber"

    goto :goto_2

    .line 7
    :cond_2
    new-instance v0, Ls1/i;

    invoke-direct {v0}, Ls1/i;-><init>()V

    throw v0

    :cond_3
    const-string v3, "PrimaryNumber"

    :goto_2
    const-string v4, "VerificationMode"

    .line 8
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v3, p0, Le/a/r/z/d0/f;->b:Lcom/truecaller/wizard/verification/analytics/CallAction;

    invoke-virtual {v3}, Lcom/truecaller/wizard/verification/analytics/CallAction;->getAnalyticsName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Action"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object v3, p0, Le/a/r/z/d0/f;->d:Ljava/lang/String;

    const-string v4, "PhoneNumberCountry"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-boolean v3, p0, Le/a/r/z/d0/f;->f:Z

    const-string v4, "DetectSIMEnabled"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 12
    iget-boolean v3, p0, Le/a/r/z/d0/f;->a:Z

    if-eqz v3, :cond_5

    .line 13
    iget-object v3, p0, Le/a/r/z/d0/f;->g:Ljava/lang/Long;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_3

    :cond_4
    const-wide/16 v3, -0x1

    :goto_3
    const-string v5, "CallRejectionDelay"

    invoke-virtual {v0, v5, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 14
    :cond_5
    new-instance v3, Le/a/q2/x$b;

    const-string v4, "VerificationCallAction"

    invoke-direct {v3, v4, v0}, Le/a/q2/x$b;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 15
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 16
    :cond_6
    iget-boolean v0, p0, Le/a/r/z/d0/f;->j:Z

    if-eqz v0, :cond_7

    .line 17
    new-instance v0, Le/a/q2/x$d;

    .line 18
    sget-object v3, Le/a/l5/a/n2;->g:Lorg/apache/avro/Schema;

    new-instance v3, Le/a/l5/a/n2$b;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Le/a/l5/a/n2$b;-><init>(Le/a/l5/a/n2$a;)V

    .line 19
    iget-object v4, p0, Le/a/r/z/d0/f;->b:Lcom/truecaller/wizard/verification/analytics/CallAction;

    invoke-virtual {v4}, Lcom/truecaller/wizard/verification/analytics/CallAction;->getAnalyticsName()Ljava/lang/String;

    move-result-object v4

    .line 20
    invoke-virtual {v3}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v5

    const/4 v6, 0x4

    aget-object v5, v5, v6

    invoke-virtual {v3, v5, v4}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 21
    iput-object v4, v3, Le/a/l5/a/n2$b;->c:Ljava/lang/CharSequence;

    .line 22
    invoke-virtual {v3}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v4

    aput-boolean v2, v4, v6

    .line 23
    iget-object v4, p0, Le/a/r/z/d0/f;->e:Ljava/lang/String;

    .line 24
    invoke-virtual {v3}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v5

    const/4 v6, 0x5

    aget-object v5, v5, v6

    invoke-virtual {v3, v5, v4}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 25
    iput-object v4, v3, Le/a/l5/a/n2$b;->d:Ljava/lang/CharSequence;

    .line 26
    invoke-virtual {v3}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v4

    aput-boolean v2, v4, v6

    .line 27
    iget-object v4, p0, Le/a/r/z/d0/f;->d:Ljava/lang/String;

    .line 28
    invoke-virtual {v3}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v5

    const/4 v6, 0x3

    aget-object v5, v5, v6

    invoke-virtual {v3, v5, v4}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 29
    iput-object v4, v3, Le/a/l5/a/n2$b;->b:Ljava/lang/CharSequence;

    .line 30
    invoke-virtual {v3}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v4

    aput-boolean v2, v4, v6

    .line 31
    iget-object v4, p0, Le/a/r/z/d0/f;->c:Ljava/lang/String;

    .line 32
    invoke-virtual {v3}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v5

    const/4 v6, 0x2

    aget-object v5, v5, v6

    invoke-virtual {v3, v5, v4}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 33
    iput-object v4, v3, Le/a/l5/a/n2$b;->a:Ljava/lang/CharSequence;

    .line 34
    invoke-virtual {v3}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v4

    aput-boolean v2, v4, v6

    .line 35
    invoke-virtual {v3}, Le/a/l5/a/n2$b;->a()Le/a/l5/a/n2;

    move-result-object v2

    const-string v3, "AppVerificationCallActio\u2026ber)\n            .build()"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {v0, v2}, Le/a/q2/x$d;-><init>(Lorg/apache/avro/generic/GenericRecord;)V

    .line 37
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 38
    :cond_7
    new-instance v0, Le/a/q2/x$e;

    invoke-direct {v0, v1}, Le/a/q2/x$e;-><init>(Ljava/util/Set;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Le/a/r/z/d0/f;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/r/z/d0/f;

    iget-object v0, p0, Le/a/r/z/d0/f;->b:Lcom/truecaller/wizard/verification/analytics/CallAction;

    iget-object v1, p1, Le/a/r/z/d0/f;->b:Lcom/truecaller/wizard/verification/analytics/CallAction;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/r/z/d0/f;->c:Ljava/lang/String;

    iget-object v1, p1, Le/a/r/z/d0/f;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/r/z/d0/f;->d:Ljava/lang/String;

    iget-object v1, p1, Le/a/r/z/d0/f;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/r/z/d0/f;->e:Ljava/lang/String;

    iget-object v1, p1, Le/a/r/z/d0/f;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Le/a/r/z/d0/f;->f:Z

    iget-boolean v1, p1, Le/a/r/z/d0/f;->f:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Le/a/r/z/d0/f;->g:Ljava/lang/Long;

    iget-object v1, p1, Le/a/r/z/d0/f;->g:Ljava/lang/Long;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/r/z/d0/f;->h:Lcom/truecaller/wizard/WizardVerificationMode;

    iget-object v1, p1, Le/a/r/z/d0/f;->h:Lcom/truecaller/wizard/WizardVerificationMode;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/r/z/d0/f;->i:Ljava/lang/Boolean;

    iget-object v1, p1, Le/a/r/z/d0/f;->i:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Le/a/r/z/d0/f;->j:Z

    iget-boolean p1, p1, Le/a/r/z/d0/f;->j:Z

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

    iget-object v0, p0, Le/a/r/z/d0/f;->b:Lcom/truecaller/wizard/verification/analytics/CallAction;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/r/z/d0/f;->c:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/r/z/d0/f;->d:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/r/z/d0/f;->e:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    move v2, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Le/a/r/z/d0/f;->f:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    move v2, v3

    :cond_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/r/z/d0/f;->g:Ljava/lang/Long;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_5
    move v2, v1

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/r/z/d0/f;->h:Lcom/truecaller/wizard/WizardVerificationMode;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_6
    move v2, v1

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Le/a/r/z/d0/f;->i:Ljava/lang/Boolean;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Le/a/r/z/d0/f;->j:Z

    if-eqz v1, :cond_8

    goto :goto_6

    :cond_8
    move v3, v1

    :goto_6
    add-int/2addr v0, v3

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "VerificationCallActionEvent(action="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/a/r/z/d0/f;->b:Lcom/truecaller/wizard/verification/analytics/CallAction;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", enteredPhoneNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/r/z/d0/f;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", enteredNumberCountry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/r/z/d0/f;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", callPhoneNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/r/z/d0/f;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", detectSimCardEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Le/a/r/z/d0/f;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", delayValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/r/z/d0/f;->g:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", verificationMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/r/z/d0/f;->h:Lcom/truecaller/wizard/WizardVerificationMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", confirmedVerificationCall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/r/z/d0/f;->i:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", logInternally="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Le/a/r/z/d0/f;->j:Z

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->o(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
