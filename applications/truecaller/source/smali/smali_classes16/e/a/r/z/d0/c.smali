.class public final Le/a/r/z/d0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/q2/v;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Lcom/truecaller/wizard/WizardVerificationMode;

.field public final d:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/wizard/WizardVerificationMode;Z)V
    .locals 1

    const-string v0, "enteredPhoneNumber"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "enteredCountryCode"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "verificationMode"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/r/z/d0/c;->a:Ljava/lang/String;

    iput-object p2, p0, Le/a/r/z/d0/c;->b:Ljava/lang/String;

    iput-object p3, p0, Le/a/r/z/d0/c;->c:Lcom/truecaller/wizard/WizardVerificationMode;

    iput-boolean p4, p0, Le/a/r/z/d0/c;->d:Z

    return-void
.end method


# virtual methods
.method public a()Le/a/q2/x;
    .locals 7

    .line 1
    iget-boolean v0, p0, Le/a/r/z/d0/c;->d:Z

    if-eqz v0, :cond_0

    new-instance v0, Le/a/q2/x$e;

    const/4 v1, 0x2

    new-array v2, v1, [Le/a/q2/x;

    const/4 v3, 0x0

    invoke-virtual {p0}, Le/a/r/z/d0/c;->b()Le/a/q2/x$b;

    move-result-object v4

    aput-object v4, v2, v3

    .line 2
    sget-object v3, Le/a/l5/a/m2;->e:Lorg/apache/avro/Schema;

    new-instance v3, Le/a/l5/a/m2$b;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Le/a/l5/a/m2$b;-><init>(Le/a/l5/a/m2$a;)V

    .line 3
    iget-object v4, p0, Le/a/r/z/d0/c;->b:Ljava/lang/String;

    .line 4
    invoke-virtual {v3}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v5

    const/4 v6, 0x3

    aget-object v5, v5, v6

    invoke-virtual {v3, v5, v4}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 5
    iput-object v4, v3, Le/a/l5/a/m2$b;->b:Ljava/lang/CharSequence;

    .line 6
    invoke-virtual {v3}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v4

    const/4 v5, 0x1

    aput-boolean v5, v4, v6

    .line 7
    iget-object v4, p0, Le/a/r/z/d0/c;->a:Ljava/lang/String;

    .line 8
    invoke-virtual {v3}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v6

    aget-object v6, v6, v1

    invoke-virtual {v3, v6, v4}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 9
    iput-object v4, v3, Le/a/l5/a/m2$b;->a:Ljava/lang/CharSequence;

    .line 10
    invoke-virtual {v3}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v4

    aput-boolean v5, v4, v1

    .line 11
    invoke-virtual {v3}, Le/a/l5/a/m2$b;->a()Le/a/l5/a/m2;

    move-result-object v1

    const-string v3, "AppVerificationAbandoned\u2026eNumber\n        }.build()"

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    new-instance v3, Le/a/q2/x$d;

    invoke-direct {v3, v1}, Le/a/q2/x$d;-><init>(Lorg/apache/avro/generic/GenericRecord;)V

    aput-object v3, v2, v5

    .line 13
    invoke-static {v2}, Ls1/u/i;->z0([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Le/a/q2/x$e;-><init>(Ljava/util/Set;)V

    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0}, Le/a/r/z/d0/c;->b()Le/a/q2/x$b;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final b()Le/a/q2/x$b;
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    iget-object v1, p0, Le/a/r/z/d0/c;->c:Lcom/truecaller/wizard/WizardVerificationMode;

    const-string v2, "$this$toAnalyticsName"

    .line 3
    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "SecondaryNumber"

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Ls1/i;

    invoke-direct {v0}, Ls1/i;-><init>()V

    throw v0

    :cond_1
    const-string v1, "PrimaryNumber"

    :goto_0
    const-string v2, "VerificationMode"

    const-string v3, "VerificationAbandoned"

    .line 6
    invoke-static {v0, v2, v1, v3, v0}, Le/d/c/a/a;->o1(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Le/a/q2/x$b;

    move-result-object v0

    return-object v0
.end method
