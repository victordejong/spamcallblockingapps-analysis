.class public final Lcom/truecaller/analytics/common/event/ViewActionEvent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/q2/v;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/analytics/common/event/ViewActionEvent$HelpAction;,
        Lcom/truecaller/analytics/common/event/ViewActionEvent$ViralityAction;,
        Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactAction;,
        Lcom/truecaller/analytics/common/event/ViewActionEvent$MessageSubAction;,
        Lcom/truecaller/analytics/common/event/ViewActionEvent$CallSubAction;,
        Lcom/truecaller/analytics/common/event/ViewActionEvent$TagSubAction;,
        Lcom/truecaller/analytics/common/event/ViewActionEvent$BlockingAction;,
        Lcom/truecaller/analytics/common/event/ViewActionEvent$BlockingSubAction;,
        Lcom/truecaller/analytics/common/event/ViewActionEvent$BusinessSuggestionSubAction;,
        Lcom/truecaller/analytics/common/event/ViewActionEvent$WhatsAppSubAction;,
        Lcom/truecaller/analytics/common/event/ViewActionEvent$BusinessProfilesAction;,
        Lcom/truecaller/analytics/common/event/ViewActionEvent$BackupAction;,
        Lcom/truecaller/analytics/common/event/ViewActionEvent$DetailsSubAction;,
        Lcom/truecaller/analytics/common/event/ViewActionEvent$DualSimSubAction;,
        Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;,
        Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsSubAction;,
        Lcom/truecaller/analytics/common/event/ViewActionEvent$MenuSubAction;,
        Lcom/truecaller/analytics/common/event/ViewActionEvent$CallerIdSettingsAction;,
        Lcom/truecaller/analytics/common/event/ViewActionEvent$PremiumAlertAction;,
        Lcom/truecaller/analytics/common/event/ViewActionEvent$ContextCallAction;,
        Lcom/truecaller/analytics/common/event/ViewActionEvent$ImUpgradeAction;,
        Lcom/truecaller/analytics/common/event/ViewActionEvent$BackupPromoAction;,
        Lcom/truecaller/analytics/common/event/ViewActionEvent$OtpNotifAction;,
        Lcom/truecaller/analytics/common/event/ViewActionEvent$InCallUiAction;,
        Lcom/truecaller/analytics/common/event/ViewActionEvent$SocialMediaSubAction;,
        Lcom/truecaller/analytics/common/event/ViewActionEvent$LearnMoreSubAction;,
        Lcom/truecaller/analytics/common/event/ViewActionEvent$DialogWarnFriendsAction;,
        Lcom/truecaller/analytics/common/event/ViewActionEvent$a;
    }
.end annotation


# static fields
.field public static final d:Lcom/truecaller/analytics/common/event/ViewActionEvent$a;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/truecaller/analytics/common/event/ViewActionEvent$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/truecaller/analytics/common/event/ViewActionEvent$a;-><init>(Ls1/z/c/f;)V

    sput-object v0, Lcom/truecaller/analytics/common/event/ViewActionEvent;->d:Lcom/truecaller/analytics/common/event/ViewActionEvent$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "action"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/truecaller/analytics/common/event/ViewActionEvent;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/truecaller/analytics/common/event/ViewActionEvent;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/truecaller/analytics/common/event/ViewActionEvent;->c:Ljava/lang/String;

    return-void
.end method

.method public static final b(Ljava/lang/String;Lcom/truecaller/analytics/common/event/ViewActionEvent$BusinessProfilesAction;)Lcom/truecaller/analytics/common/event/ViewActionEvent;
    .locals 2

    const-string v0, "context"

    .line 1
    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/truecaller/analytics/common/event/ViewActionEvent$BusinessProfilesAction;->getValue()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v0, Lcom/truecaller/analytics/common/event/ViewActionEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p0}, Lcom/truecaller/analytics/common/event/ViewActionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final c(Ljava/lang/String;Ljava/lang/String;)Lcom/truecaller/analytics/common/event/ViewActionEvent;
    .locals 2

    const-string v0, "context"

    .line 1
    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "call"

    const-string v1, "action"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v1, Lcom/truecaller/analytics/common/event/ViewActionEvent;

    invoke-direct {v1, v0, p1, p0}, Lcom/truecaller/analytics/common/event/ViewActionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static final d(Ljava/lang/String;Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactAction;)Lcom/truecaller/analytics/common/event/ViewActionEvent;
    .locals 1

    sget-object v0, Lcom/truecaller/analytics/common/event/ViewActionEvent;->d:Lcom/truecaller/analytics/common/event/ViewActionEvent$a;

    invoke-virtual {v0, p0, p1}, Lcom/truecaller/analytics/common/event/ViewActionEvent$a;->e(Ljava/lang/String;Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactAction;)Lcom/truecaller/analytics/common/event/ViewActionEvent;

    move-result-object p0

    return-object p0
.end method

.method public static final e(Ljava/lang/String;Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;)Lcom/truecaller/analytics/common/event/ViewActionEvent;
    .locals 2

    const-string v0, "context"

    .line 1
    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;->getValue()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v0, Lcom/truecaller/analytics/common/event/ViewActionEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p0}, Lcom/truecaller/analytics/common/event/ViewActionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final f(Ljava/lang/String;Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsSubAction;)Lcom/truecaller/analytics/common/event/ViewActionEvent;
    .locals 1

    const-string v0, "context"

    .line 1
    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;->getValue()Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsSubAction;->getValue()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 3
    :goto_0
    invoke-static {p1, v0, p1, p2, p0}, Le/d/c/a/a;->p1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/truecaller/analytics/common/event/ViewActionEvent;

    move-result-object p0

    return-object p0
.end method

.method public static final g(Ljava/lang/String;Ljava/lang/String;)Lcom/truecaller/analytics/common/event/ViewActionEvent;
    .locals 2

    const-string v0, "action"

    const/4 v1, 0x0

    .line 1
    invoke-static {p1, v0, p1, v1, p0}, Le/d/c/a/a;->p1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/truecaller/analytics/common/event/ViewActionEvent;

    move-result-object p0

    return-object p0
.end method

.method public static final h(Ljava/lang/String;Lcom/truecaller/analytics/common/event/ViewActionEvent$MessageSubAction;)Lcom/truecaller/analytics/common/event/ViewActionEvent;
    .locals 2

    const-string v0, "context"

    .line 1
    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/truecaller/analytics/common/event/ViewActionEvent$MessageSubAction;->getValue()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v0, "message"

    const-string v1, "action"

    .line 3
    invoke-static {v0, v1, v0, p1, p0}, Le/d/c/a/a;->p1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/truecaller/analytics/common/event/ViewActionEvent;

    move-result-object p0

    return-object p0
.end method

.method public static final i(Ljava/lang/String;Lcom/truecaller/analytics/common/event/ViewActionEvent$ViralityAction;)Lcom/truecaller/analytics/common/event/ViewActionEvent;
    .locals 1

    sget-object v0, Lcom/truecaller/analytics/common/event/ViewActionEvent;->d:Lcom/truecaller/analytics/common/event/ViewActionEvent$a;

    invoke-virtual {v0, p0, p1}, Lcom/truecaller/analytics/common/event/ViewActionEvent$a;->o(Ljava/lang/String;Lcom/truecaller/analytics/common/event/ViewActionEvent$ViralityAction;)Lcom/truecaller/analytics/common/event/ViewActionEvent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()Le/a/q2/x;
    .locals 7

    .line 1
    new-instance v0, Le/a/q2/x$e;

    const/4 v1, 0x2

    new-array v2, v1, [Le/a/q2/x;

    .line 2
    sget-object v3, Le/a/l5/a/v2;->f:Lorg/apache/avro/Schema;

    new-instance v3, Le/a/l5/a/v2$b;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Le/a/l5/a/v2$b;-><init>(Le/a/l5/a/v2$a;)V

    const-string v4, "builder"

    .line 3
    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/truecaller/analytics/common/event/ViewActionEvent;->a:Ljava/lang/String;

    .line 4
    invoke-virtual {v3}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v5

    aget-object v5, v5, v1

    invoke-virtual {v3, v5, v4}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 5
    iput-object v4, v3, Le/a/l5/a/v2$b;->a:Ljava/lang/CharSequence;

    .line 6
    invoke-virtual {v3}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v4

    const/4 v5, 0x1

    aput-boolean v5, v4, v1

    .line 7
    iget-object v1, p0, Lcom/truecaller/analytics/common/event/ViewActionEvent;->b:Ljava/lang/String;

    .line 8
    invoke-virtual {v3}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v4

    const/4 v6, 0x3

    aget-object v4, v4, v6

    invoke-virtual {v3, v4, v1}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 9
    iput-object v1, v3, Le/a/l5/a/v2$b;->b:Ljava/lang/CharSequence;

    .line 10
    invoke-virtual {v3}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    aput-boolean v5, v1, v6

    .line 11
    iget-object v1, p0, Lcom/truecaller/analytics/common/event/ViewActionEvent;->c:Ljava/lang/String;

    .line 12
    invoke-virtual {v3}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v4

    const/4 v6, 0x4

    aget-object v4, v4, v6

    invoke-virtual {v3, v4, v1}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 13
    iput-object v1, v3, Le/a/l5/a/v2$b;->c:Ljava/lang/CharSequence;

    .line 14
    invoke-virtual {v3}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v1

    aput-boolean v5, v1, v6

    .line 15
    new-instance v1, Le/a/q2/x$d;

    invoke-virtual {v3}, Le/a/l5/a/v2$b;->a()Le/a/l5/a/v2;

    move-result-object v3

    const-string v4, "builder.build()"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v3}, Le/a/q2/x$d;-><init>(Lorg/apache/avro/generic/GenericRecord;)V

    const/4 v3, 0x0

    aput-object v1, v2, v3

    .line 16
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 17
    iget-object v3, p0, Lcom/truecaller/analytics/common/event/ViewActionEvent;->a:Ljava/lang/String;

    const-string v4, "Action"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iget-object v3, p0, Lcom/truecaller/analytics/common/event/ViewActionEvent;->c:Ljava/lang/String;

    if-eqz v3, :cond_0

    const-string v4, "Context"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    :cond_0
    iget-object v3, p0, Lcom/truecaller/analytics/common/event/ViewActionEvent;->b:Ljava/lang/String;

    if-eqz v3, :cond_1

    const-string v4, "SubAction"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :cond_1
    new-instance v3, Le/a/q2/x$b;

    const-string v4, "ViewAction"

    invoke-direct {v3, v4, v1}, Le/a/q2/x$b;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    aput-object v3, v2, v5

    .line 21
    invoke-static {v2}, Ls1/u/i;->z0([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    .line 22
    invoke-direct {v0, v1}, Le/a/q2/x$e;-><init>(Ljava/util/Set;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/truecaller/analytics/common/event/ViewActionEvent;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/truecaller/analytics/common/event/ViewActionEvent;

    iget-object v0, p0, Lcom/truecaller/analytics/common/event/ViewActionEvent;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/truecaller/analytics/common/event/ViewActionEvent;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/analytics/common/event/ViewActionEvent;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/truecaller/analytics/common/event/ViewActionEvent;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/analytics/common/event/ViewActionEvent;->c:Ljava/lang/String;

    iget-object p1, p1, Lcom/truecaller/analytics/common/event/ViewActionEvent;->c:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/truecaller/analytics/common/event/ViewActionEvent;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truecaller/analytics/common/event/ViewActionEvent;->b:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truecaller/analytics/common/event/ViewActionEvent;->c:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "ViewActionEvent(action="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/truecaller/analytics/common/event/ViewActionEvent;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", subAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/analytics/common/event/ViewActionEvent;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", context="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/analytics/common/event/ViewActionEvent;->c:Ljava/lang/String;

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
