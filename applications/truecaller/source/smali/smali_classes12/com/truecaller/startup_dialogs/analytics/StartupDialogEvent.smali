.class public final Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/q2/v;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;,
        Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Action;
    }
.end annotation


# instance fields
.field public final a:Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;

.field public final b:Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Action;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Action;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;I)V
    .locals 1

    and-int/lit8 p3, p6, 0x4

    and-int/lit8 p3, p6, 0x8

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    move-object p4, v0

    :cond_0
    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_1

    move-object p5, v0

    :cond_1
    const-string p3, "type"

    .line 1
    invoke-static {p1, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "action"

    invoke-static {p2, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent;->a:Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;

    iput-object p2, p0, Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent;->b:Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Action;

    iput-object v0, p0, Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent;->e:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public a()Le/a/q2/x;
    .locals 7

    .line 1
    new-instance v0, Le/a/q2/x$e;

    const/4 v1, 0x2

    new-array v1, v1, [Le/a/q2/x;

    .line 2
    new-instance v2, Le/a/q2/g$b;

    const-string v3, "StartupDialog"

    invoke-direct {v2, v3}, Le/a/q2/g$b;-><init>(Ljava/lang/String;)V

    .line 3
    iget-object v3, p0, Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent;->a:Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;

    invoke-virtual {v3}, Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;->getValue()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Type"

    invoke-virtual {v2, v4, v3}, Le/a/q2/g$b;->d(Ljava/lang/String;Ljava/lang/String;)Le/a/q2/g$b;

    .line 4
    iget-object v3, p0, Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent;->b:Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Action;

    invoke-virtual {v3}, Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Action;->getValue()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Action"

    invoke-virtual {v2, v4, v3}, Le/a/q2/g$b;->d(Ljava/lang/String;Ljava/lang/String;)Le/a/q2/g$b;

    .line 5
    iget-object v3, p0, Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent;->d:Ljava/lang/String;

    if-eqz v3, :cond_0

    const-string v4, "Context"

    invoke-virtual {v2, v4, v3}, Le/a/q2/g$b;->d(Ljava/lang/String;Ljava/lang/String;)Le/a/q2/g$b;

    .line 6
    :cond_0
    iget-object v3, p0, Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent;->e:Ljava/lang/Boolean;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const-string v4, "NewUser"

    invoke-virtual {v2, v4, v3}, Le/a/q2/g$b;->e(Ljava/lang/String;Z)Le/a/q2/g$b;

    .line 7
    :cond_1
    iget-object v3, p0, Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent;->c:Ljava/lang/String;

    if-eqz v3, :cond_2

    const-string v4, "SubAction"

    invoke-virtual {v2, v4, v3}, Le/a/q2/g$b;->d(Ljava/lang/String;Ljava/lang/String;)Le/a/q2/g$b;

    .line 8
    :cond_2
    invoke-virtual {v2}, Le/a/q2/g$b;->a()Le/a/q2/g;

    move-result-object v2

    const-string v3, "with(AnalyticsEvent.Buil\u2026        build()\n        }"

    .line 9
    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    new-instance v3, Le/a/q2/x$a;

    invoke-direct {v3, v2}, Le/a/q2/x$a;-><init>(Le/a/q2/g;)V

    const/4 v2, 0x0

    aput-object v3, v1, v2

    .line 11
    new-instance v2, Le/a/q2/x$d;

    .line 12
    invoke-static {}, Le/a/l5/a/g2;->a()Le/a/l5/a/g2$b;

    move-result-object v3

    .line 13
    iget-object v4, p0, Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent;->a:Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;

    invoke-virtual {v4}, Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Le/a/l5/a/g2$b;->e(Ljava/lang/CharSequence;)Le/a/l5/a/g2$b;

    .line 14
    iget-object v4, p0, Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent;->b:Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Action;

    invoke-virtual {v4}, Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Action;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Le/a/l5/a/g2$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/g2$b;

    .line 15
    iget-object v4, p0, Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Le/a/l5/a/g2$b;->d(Ljava/lang/CharSequence;)Le/a/l5/a/g2$b;

    .line 16
    iget-object v4, p0, Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Le/a/l5/a/g2$b;->c(Ljava/lang/CharSequence;)Le/a/l5/a/g2$b;

    .line 17
    iget-object v4, p0, Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent;->e:Ljava/lang/Boolean;

    .line 18
    invoke-virtual {v3}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v5

    const/4 v6, 0x6

    aget-object v5, v5, v6

    invoke-virtual {v3, v5, v4}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 19
    iput-object v4, v3, Le/a/l5/a/g2$b;->e:Ljava/lang/Boolean;

    .line 20
    invoke-virtual {v3}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v4

    const/4 v5, 0x1

    aput-boolean v5, v4, v6

    .line 21
    invoke-virtual {v3}, Le/a/l5/a/g2$b;->a()Le/a/l5/a/g2;

    move-result-object v3

    .line 22
    invoke-direct {v2, v3}, Le/a/q2/x$d;-><init>(Lorg/apache/avro/generic/GenericRecord;)V

    aput-object v2, v1, v5

    .line 23
    invoke-static {v1}, Ls1/u/i;->z0([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    .line 24
    invoke-direct {v0, v1}, Le/a/q2/x$e;-><init>(Ljava/util/Set;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent;

    iget-object v0, p0, Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent;->a:Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;

    iget-object v1, p1, Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent;->a:Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent;->b:Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Action;

    iget-object v1, p1, Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent;->b:Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Action;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent;->d:Ljava/lang/String;

    iget-object v1, p1, Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent;->e:Ljava/lang/Boolean;

    iget-object p1, p1, Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent;->e:Ljava/lang/Boolean;

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

    iget-object v0, p0, Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent;->a:Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent;->b:Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Action;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent;->c:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent;->d:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    move v2, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent;->e:Ljava/lang/Boolean;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_4
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "StartupDialogEvent(type="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent;->a:Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent;->b:Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Action;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", subAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", context="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", newUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent;->e:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
