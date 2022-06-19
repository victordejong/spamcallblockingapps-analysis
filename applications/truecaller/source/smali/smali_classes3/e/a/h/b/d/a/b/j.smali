.class public final Le/a/h/b/d/a/b/j;
.super Le/a/h/b/d/a/b/e;
.source "SourceFile"

# interfaces
.implements Le/a/h/b/d/a/b/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/h/b/d/a/b/e<",
        "Le/a/h/b/d/a/b/i;",
        ">;",
        "Le/a/h/b/d/a/b/h;"
    }
.end annotation


# instance fields
.field public final i:Le/a/h/b/d/b/k;

.field public j:Z

.field public final k:Le/a/h/b/d/a/b/n;

.field public final l:Lcom/truecaller/settings/CallingSettings;

.field public final m:Le/a/o5/b0;

.field public final n:Le/a/h/b/w;

.field public final o:Le/a/f4/g/j;


# direct methods
.method public constructor <init>(Le/a/h/b/d/a/b/b;Le/a/h/b/f;Le/a/h/b/p0;Le/a/q2/a;Le/a/d/c0/s1;Le/a/h/b/d/a/b/n;Lcom/truecaller/settings/CallingSettings;Le/a/o5/b0;Le/a/h/b/w;Le/a/f4/g/j;)V
    .locals 13
    .param p10    # Le/a/f4/g/j;
        .annotation runtime Ljavax/inject/Named;
            value = "DialerBulkSearcher"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    move-object v6, p0

    move-object v7, p1

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    const-string v0, "callHistoryDataHolder"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionModeHandler"

    move-object v4, p2

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phoneActionsHandler"

    move-object/from16 v2, p3

    invoke-static {v2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    move-object/from16 v3, p4

    invoke-static {v3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "voipUtil"

    move-object/from16 v5, p5

    invoke-static {v5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completedCallLogItemProvider"

    invoke-static {v8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callingSettings"

    invoke-static {v9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dateHelper"

    invoke-static {v10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dialerPerformanceAnalytics"

    invoke-static {v11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bulkSearcher"

    invoke-static {v12, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    .line 1
    invoke-direct/range {v0 .. v5}, Le/a/h/b/d/a/b/e;-><init>(Le/a/h/b/d/a/b/b;Le/a/h/b/p0;Le/a/q2/a;Le/a/h/b/f;Le/a/d/c0/s1;)V

    iput-object v8, v6, Le/a/h/b/d/a/b/j;->k:Le/a/h/b/d/a/b/n;

    iput-object v9, v6, Le/a/h/b/d/a/b/j;->l:Lcom/truecaller/settings/CallingSettings;

    iput-object v10, v6, Le/a/h/b/d/a/b/j;->m:Le/a/o5/b0;

    iput-object v11, v6, Le/a/h/b/d/a/b/j;->n:Le/a/h/b/w;

    iput-object v12, v6, Le/a/h/b/d/a/b/j;->o:Le/a/f4/g/j;

    .line 2
    invoke-interface {p1, p0}, Le/a/h/b/d/a/b/b;->Di(Le/a/h/b/d/a/b/c;)Le/a/h/b/d/b/k;

    move-result-object v0

    iput-object v0, v6, Le/a/h/b/d/a/b/j;->i:Le/a/h/b/d/b/k;

    return-void
.end method


# virtual methods
.method public F(I)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/h/b/d/a/b/e;->B()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/h/b/d/b/i;

    .line 2
    iget-object p1, p1, Le/a/h/b/d/b/i;->c:Lcom/truecaller/data/entity/HistoryEvent;

    .line 3
    iget-boolean v0, p0, Le/a/o2/c;->a:Z

    if-nez v0, :cond_0

    .line 4
    invoke-static {p1}, Le/a/n/g0;->a0(Lcom/truecaller/data/entity/HistoryEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;->Companion:Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType$a;

    invoke-virtual {v0, p1}, Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType$a;->a(Lcom/truecaller/data/entity/HistoryEvent;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public G(Ljava/lang/Object;I)V
    .locals 8

    .line 1
    check-cast p1, Le/a/h/b/d/a/b/i;

    const-string v0, "itemView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 4
    iget-object v2, p0, Le/a/h/b/d/a/b/j;->k:Le/a/h/b/d/a/b/n;

    invoke-virtual {p0}, Le/a/h/b/d/a/b/e;->B()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/h/b/d/b/i;

    invoke-interface {v2, v3}, Le/a/h/b/d/a/b/n;->a(Le/a/h/b/d/b/i;)Le/a/h/b/d/a/b/k;

    move-result-object v2

    .line 5
    iget-object v3, v2, Le/a/h/b/d/a/b/k;->c:Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    .line 6
    invoke-interface {p1, v3}, Le/a/h/b/d/a/b/i;->a(Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V

    .line 7
    iget-boolean v3, p0, Le/a/o2/c;->a:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_0

    .line 8
    iget-object v3, v2, Le/a/h/b/d/a/b/k;->a:Le/a/h/b/d/a/b/p;

    .line 9
    iget-boolean v3, v3, Le/a/h/b/d/a/b/p;->b:Z

    if-nez v3, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    .line 10
    :goto_0
    invoke-interface {p1, v3}, Le/a/h/b/d/a/b/i;->q(Z)V

    .line 11
    iget-object v3, v2, Le/a/h/b/d/a/b/k;->a:Le/a/h/b/d/a/b/p;

    .line 12
    iget-object v3, v3, Le/a/h/b/d/a/b/p;->f:Ljava/lang/String;

    .line 13
    invoke-interface {p1, v3}, Le/a/h/b/d/a/b/i;->j(Ljava/lang/String;)V

    .line 14
    iget-object v3, v2, Le/a/h/b/d/a/b/k;->b:Le/a/h/b/d/a/b/a;

    .line 15
    invoke-interface {p1, v3}, Le/a/h/b/d/a/b/d;->j2(Le/a/h/b/d/a/b/a;)V

    .line 16
    iget-object v3, v2, Le/a/h/b/d/a/b/k;->a:Le/a/h/b/d/a/b/p;

    .line 17
    iget-object v3, v3, Le/a/h/b/d/a/b/p;->d:Ljava/lang/String;

    .line 18
    invoke-interface {p1, v3}, Le/a/h/h0;->setTitle(Ljava/lang/String;)V

    .line 19
    iget-object v3, v2, Le/a/h/b/d/a/b/k;->a:Le/a/h/b/d/a/b/p;

    .line 20
    iget-object v3, v3, Le/a/h/b/d/a/b/p;->k:Lcom/truecaller/calling/dialer/call_log/items/entries/ContactBadge;

    .line 21
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-eqz v3, :cond_3

    if-eq v3, v5, :cond_2

    const/4 v6, 0x2

    if-eq v3, v6, :cond_1

    goto :goto_1

    .line 22
    :cond_1
    invoke-interface {p1, v4}, Le/a/h/i0;->K(Z)V

    goto :goto_1

    .line 23
    :cond_2
    invoke-interface {p1, v5}, Le/a/h/i0;->K(Z)V

    goto :goto_1

    .line 24
    :cond_3
    invoke-interface {p1, v5}, Le/a/h/j0;->i2(Z)V

    .line 25
    :goto_1
    iget-object v3, p0, Le/a/h/b/d/a/b/j;->m:Le/a/o5/b0;

    .line 26
    iget-object v6, v2, Le/a/h/b/d/a/b/k;->a:Le/a/h/b/d/a/b/p;

    .line 27
    iget-wide v6, v6, Le/a/h/b/d/a/b/p;->j:J

    .line 28
    invoke-interface {v3, v6, v7}, Le/a/o5/b0;->k(J)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Le/a/h/b/d/a/b/i;->M(Ljava/lang/String;)V

    .line 29
    iget-boolean v3, p0, Le/a/o2/c;->a:Z

    if-eqz v3, :cond_4

    .line 30
    iget-object v3, p0, Le/a/h/b/d/a/b/e;->c:Le/a/h/b/d/a/b/b;

    .line 31
    iget-object v6, v2, Le/a/h/b/d/a/b/k;->a:Le/a/h/b/d/a/b/p;

    .line 32
    iget-object v6, v6, Le/a/h/b/d/a/b/p;->i:Ljava/lang/Long;

    .line 33
    invoke-interface {v3, v6}, Le/a/h/b/d/a/b/b;->Ri(Ljava/lang/Long;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v5

    goto :goto_2

    :cond_4
    move v3, v4

    :goto_2
    invoke-interface {p1, v3}, Le/a/h/b/d/a/b/d;->b(Z)V

    .line 34
    iget-object v3, v2, Le/a/h/b/d/a/b/k;->a:Le/a/h/b/d/a/b/p;

    .line 35
    iget-object v3, v3, Le/a/h/b/d/a/b/p;->h:Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;

    .line 36
    invoke-virtual {v3}, Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;->getPrimaryAction()Lcom/truecaller/calling/ActionType;

    move-result-object v3

    invoke-interface {p1, v3}, Le/a/h/b/d/a/b/i;->L2(Lcom/truecaller/calling/ActionType;)V

    .line 37
    iget-object v3, v2, Le/a/h/b/d/a/b/k;->a:Le/a/h/b/d/a/b/p;

    .line 38
    iget-boolean v3, v3, Le/a/h/b/d/a/b/p;->b:Z

    const/4 v6, 0x0

    if-eqz v3, :cond_5

    .line 39
    invoke-interface {p1, v6}, Le/a/h/b/d/a/b/i;->V(Lcom/truecaller/calling/ActionType;)V

    goto :goto_3

    .line 40
    :cond_5
    sget-object v3, Lcom/truecaller/calling/ActionType;->PROFILE:Lcom/truecaller/calling/ActionType;

    invoke-interface {p1, v3}, Le/a/h/b/d/a/b/i;->V(Lcom/truecaller/calling/ActionType;)V

    .line 41
    :goto_3
    iget-object v3, v2, Le/a/h/b/d/a/b/k;->a:Le/a/h/b/d/a/b/p;

    .line 42
    iget-object v7, v3, Le/a/h/b/d/a/b/p;->e:Ljava/lang/String;

    if-eqz v7, :cond_6

    .line 43
    iget-object v3, v3, Le/a/h/b/d/a/b/p;->g:Lcom/truecaller/data/entity/Contact;

    .line 44
    invoke-static {v3}, Le/a/n/g0;->C0(Lcom/truecaller/data/entity/Contact;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Le/a/h/b/d/a/b/j;->i:Le/a/h/b/d/b/k;

    invoke-interface {v3, p2}, Le/a/h/b/d/b/k;->b(I)Z

    move-result v3

    if-nez v3, :cond_6

    .line 45
    iget-object v3, p0, Le/a/h/b/d/a/b/j;->o:Le/a/f4/g/j;

    invoke-interface {v3, v7, v6, v6}, Le/a/f4/g/j;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object v3, p0, Le/a/h/b/d/a/b/j;->o:Le/a/f4/g/j;

    invoke-interface {v3, v7}, Le/a/f4/g/j;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 47
    iget-object v3, p0, Le/a/h/b/d/a/b/j;->i:Le/a/h/b/d/b/k;

    invoke-interface {v3, v7, p2}, Le/a/h/b/d/b/k;->c(Ljava/lang/String;I)V

    .line 48
    :cond_6
    iget-object v3, p0, Le/a/h/b/d/a/b/j;->o:Le/a/f4/g/j;

    .line 49
    iget-object v2, v2, Le/a/h/b/d/a/b/k;->a:Le/a/h/b/d/a/b/p;

    .line 50
    iget-object v2, v2, Le/a/h/b/d/a/b/p;->e:Ljava/lang/String;

    .line 51
    invoke-interface {v3, v2}, Le/a/f4/g/j;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Le/a/h/b/d/a/b/j;->i:Le/a/h/b/d/b/k;

    invoke-interface {v2, p2}, Le/a/h/b/d/b/k;->b(I)Z

    move-result v2

    if-eqz v2, :cond_7

    move v4, v5

    :cond_7
    invoke-interface {p1, v4}, Le/a/h/a0;->s(Z)V

    .line 52
    iget-boolean v2, p0, Le/a/h/b/d/a/b/j;->j:Z

    if-nez v2, :cond_8

    iget-object v2, p0, Le/a/h/b/d/a/b/j;->l:Lcom/truecaller/settings/CallingSettings;

    const-string v3, "hasViewProfileTooltipDismissed"

    invoke-interface {v2, v3}, Lcom/truecaller/settings/CallingSettings;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 53
    invoke-virtual {p0}, Le/a/h/b/d/a/b/e;->getItemCount()I

    move-result v2

    if-lt v2, v5, :cond_8

    if-nez p2, :cond_8

    .line 54
    invoke-interface {p1}, Le/a/h/b/d/a/b/i;->i1()V

    .line 55
    iput-boolean v5, p0, Le/a/h/b/d/a/b/j;->j:Z

    .line 56
    :cond_8
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    sub-long/2addr p1, v0

    .line 57
    iget-object v0, p0, Le/a/h/b/d/a/b/j;->n:Le/a/h/b/w;

    invoke-interface {v0, p1, p2}, Le/a/h/b/w;->f(J)V

    return-void
.end method

.method public H(Lcom/truecaller/calling/ActionType;I)Z
    .locals 3

    const-string v0, "primaryAction"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/h/b/d/a/b/e;->B()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/h/b/d/b/i;

    .line 2
    iget-object p2, p2, Le/a/h/b/d/b/i;->c:Lcom/truecaller/data/entity/HistoryEvent;

    .line 3
    invoke-static {p2}, Le/a/n/g0;->a0(Lcom/truecaller/data/entity/HistoryEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 4
    :cond_0
    iget-object v0, p0, Le/a/h/b/d/a/b/j;->l:Lcom/truecaller/settings/CallingSettings;

    const-string v2, "madeCallsFromCallLog"

    invoke-interface {v0, v2}, Lcom/truecaller/settings/CallingSettings;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Le/a/h/b/d/a/b/j;->l:Lcom/truecaller/settings/CallingSettings;

    invoke-interface {v0, v2, v1}, Lcom/truecaller/settings/CallingSettings;->putBoolean(Ljava/lang/String;Z)V

    .line 6
    :cond_1
    sget-object v0, Lcom/truecaller/analytics/common/event/ViewActionEvent$CallSubAction;->ITEM:Lcom/truecaller/analytics/common/event/ViewActionEvent$CallSubAction;

    invoke-virtual {v0}, Lcom/truecaller/analytics/common/event/ViewActionEvent$CallSubAction;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, p1, v0}, Le/a/h/b/d/a/b/e;->C(Lcom/truecaller/data/entity/HistoryEvent;Lcom/truecaller/calling/ActionType;Ljava/lang/String;)Z

    return v1
.end method

.method public m(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public v(Le/a/o2/h;)Z
    .locals 3

    const-string v0, "event"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Le/a/o2/h;->a:Ljava/lang/String;

    const-string v1, "ItemEvent.ACTION_TCX_TOOLTIP_DISMISSED"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p0, Le/a/h/b/d/a/b/j;->l:Lcom/truecaller/settings/CallingSettings;

    const-string v0, "hasViewProfileTooltipDismissed"

    invoke-interface {p1, v0, v1}, Lcom/truecaller/settings/CallingSettings;->putBoolean(Ljava/lang/String;Z)V

    return v1

    .line 4
    :cond_0
    sget-object v0, Lcom/truecaller/calling/ActionType;->Companion:Lcom/truecaller/calling/ActionType$a;

    .line 5
    iget-object v2, p1, Le/a/o2/h;->a:Ljava/lang/String;

    .line 6
    invoke-virtual {v0, v2}, Lcom/truecaller/calling/ActionType$a;->a(Ljava/lang/String;)Lcom/truecaller/calling/ActionType;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7
    iget-object v2, p1, Le/a/o2/h;->e:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 8
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 9
    :goto_0
    check-cast v0, Lcom/truecaller/calling/ActionType;

    check-cast v2, Ljava/lang/String;

    .line 10
    iget p1, p1, Le/a/o2/h;->b:I

    .line 11
    invoke-virtual {p0, p1}, Le/a/h/b/d/a/b/e;->A(I)Lcom/truecaller/data/entity/HistoryEvent;

    move-result-object p1

    invoke-virtual {p0, p1, v0, v2}, Le/a/h/b/d/a/b/e;->C(Lcom/truecaller/data/entity/HistoryEvent;Lcom/truecaller/calling/ActionType;Ljava/lang/String;)Z

    goto :goto_1

    .line 12
    :cond_2
    invoke-super {p0, p1}, Le/a/h/b/d/a/b/e;->v(Le/a/o2/h;)Z

    move-result v1

    :goto_1
    return v1
.end method
