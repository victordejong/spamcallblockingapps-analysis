.class public final synthetic Le/a/a/k/a0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r2/d0;


# instance fields
.field public final synthetic a:Le/a/a/k/a0/g;

.field public final synthetic b:Z

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Le/a/a/k/a0/g;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/k/a0/a;->a:Le/a/a/k/a0/g;

    iput-boolean p2, p0, Le/a/a/k/a0/a;->b:Z

    iput-object p3, p0, Le/a/a/k/a0/a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onResult(Ljava/lang/Object;)V
    .locals 8

    iget-object v0, p0, Le/a/a/k/a0/a;->a:Le/a/a/k/a0/g;

    iget-boolean v1, p0, Le/a/a/k/a0/a;->b:Z

    iget-object v2, p0, Le/a/a/k/a0/a;->c:Ljava/lang/String;

    check-cast p1, Lcom/truecaller/messaging/data/types/Conversation;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v3, Lcom/truecaller/analytics/AppEvents$DefaultSmsChanged$SWITCH_TRIGGER;->NONE:Lcom/truecaller/analytics/AppEvents$DefaultSmsChanged$SWITCH_TRIGGER;

    if-eqz p1, :cond_5

    .line 3
    iget-object v3, p1, Lcom/truecaller/messaging/data/types/Conversation;->m:[Lcom/truecaller/data/entity/messaging/Participant;

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_1

    aget-object v7, v3, v6

    .line 4
    invoke-virtual {v7}, Lcom/truecaller/data/entity/messaging/Participant;->m()Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 5
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/truecaller/messaging/data/types/Conversation;->b()Z

    move-result p1

    if-eqz p1, :cond_3

    if-eqz v5, :cond_2

    .line 6
    sget-object p1, Lcom/truecaller/analytics/AppEvents$DefaultSmsChanged$SWITCH_TRIGGER;->PERSONAL_SPAM:Lcom/truecaller/analytics/AppEvents$DefaultSmsChanged$SWITCH_TRIGGER;

    goto :goto_2

    :cond_2
    sget-object p1, Lcom/truecaller/analytics/AppEvents$DefaultSmsChanged$SWITCH_TRIGGER;->UNKNOWN_SPAM:Lcom/truecaller/analytics/AppEvents$DefaultSmsChanged$SWITCH_TRIGGER;

    goto :goto_2

    :cond_3
    if-eqz v5, :cond_4

    .line 7
    sget-object p1, Lcom/truecaller/analytics/AppEvents$DefaultSmsChanged$SWITCH_TRIGGER;->PERSONAL_SMS:Lcom/truecaller/analytics/AppEvents$DefaultSmsChanged$SWITCH_TRIGGER;

    goto :goto_2

    :cond_4
    sget-object p1, Lcom/truecaller/analytics/AppEvents$DefaultSmsChanged$SWITCH_TRIGGER;->UNKNOWN_SMS:Lcom/truecaller/analytics/AppEvents$DefaultSmsChanged$SWITCH_TRIGGER;

    :goto_2
    move-object v3, p1

    .line 8
    :cond_5
    new-instance p1, Le/a/q2/g$b;

    const-string v4, "ANDROID_Default_SMS_Changed"

    invoke-direct {p1, v4}, Le/a/q2/g$b;-><init>(Ljava/lang/String;)V

    const-string v4, "TcIsDefault"

    .line 9
    invoke-virtual {p1, v4, v1}, Le/a/q2/g$b;->e(Ljava/lang/String;Z)Le/a/q2/g$b;

    const-string v1, "OtherApp"

    .line 10
    invoke-virtual {p1, v1, v2}, Le/a/q2/g$b;->d(Ljava/lang/String;Ljava/lang/String;)Le/a/q2/g$b;

    .line 11
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Trigger"

    invoke-virtual {p1, v2, v1}, Le/a/q2/g$b;->d(Ljava/lang/String;Ljava/lang/String;)Le/a/q2/g$b;

    .line 12
    invoke-virtual {p1}, Le/a/q2/g$b;->a()Le/a/q2/g;

    move-result-object p1

    .line 13
    iget-object v1, v0, Le/a/a/k/a0/g;->l:Le/a/q2/a;

    invoke-interface {v1, p1}, Le/a/q2/a;->e(Le/a/q2/g;)V

    .line 14
    iget-object p1, v0, Le/a/a/k/a0/g;->c:Le/a/p5/g;

    iget-object v1, v0, Le/a/a/k/a0/g;->o:Le/a/a/p;

    invoke-interface {v1}, Le/a/a/p;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Le/a/p5/g;->D(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 15
    iget-object p1, v0, Le/a/a/k/a0/g;->g:Le/a/a/i0;

    .line 16
    new-instance v0, Lw3/b/a/b;

    invoke-direct {v0}, Lw3/b/a/b;-><init>()V

    .line 17
    iget-wide v0, v0, Lw3/b/a/e0/e;->a:J

    .line 18
    invoke-interface {p1, v0, v1}, Le/a/a/i0;->I1(J)V

    :cond_6
    return-void
.end method
