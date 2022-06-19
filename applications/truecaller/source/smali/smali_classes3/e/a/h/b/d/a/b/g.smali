.class public final Le/a/h/b/d/a/b/g;
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
.field public final i:Z

.field public final j:Le/a/h/b/d/b/k;

.field public k:Z

.field public final l:Le/a/o5/s1;

.field public final m:Lcom/truecaller/settings/CallingSettings;

.field public final n:Le/a/p5/c0;

.field public final o:Le/a/k3/l/f;

.field public final p:Le/a/o5/b0;

.field public final q:Le/a/e4/b0;

.field public final r:Le/a/b0/q/h0;

.field public final s:Le/a/h/b/d/b/a;

.field public final t:Le/a/z2/a;

.field public final u:Le/a/a0/p;

.field public final v:Le/a/b0/a/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/b0/a/b/b<",
            "Lcom/truecaller/data/entity/Contact;",
            ">;"
        }
    .end annotation
.end field

.field public final w:Le/a/h/b/w;

.field public final x:Le/a/f4/g/j;


# direct methods
.method public constructor <init>(Le/a/h/b/d/a/b/b;Le/a/h/b/f;Le/a/h/b/p0;Le/a/q2/a;Le/a/d/c0/s1;Le/a/e4/p;Le/a/o5/s1;Lcom/truecaller/settings/CallingSettings;Le/a/p5/c0;Le/a/k3/l/f;Le/a/o5/b0;Le/a/e4/b0;Le/a/b0/q/h0;Le/a/h/b/d/b/a;Le/a/z2/a;Le/a/a0/p;Le/a/b0/a/b/b;Le/a/h/b/w;Le/a/f4/g/j;)V
    .locals 16
    .param p19    # Le/a/f4/g/j;
        .annotation runtime Ljavax/inject/Named;
            value = "DialerBulkSearcher"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/h/b/d/a/b/b;",
            "Le/a/h/b/f;",
            "Le/a/h/b/p0;",
            "Le/a/q2/a;",
            "Le/a/d/c0/s1;",
            "Le/a/e4/p;",
            "Le/a/o5/s1;",
            "Lcom/truecaller/settings/CallingSettings;",
            "Le/a/p5/c0;",
            "Le/a/k3/l/f;",
            "Le/a/o5/b0;",
            "Le/a/e4/b0;",
            "Le/a/b0/q/h0;",
            "Le/a/h/b/d/b/a;",
            "Le/a/z2/a;",
            "Le/a/a0/p;",
            "Le/a/b0/a/b/b<",
            "Lcom/truecaller/data/entity/Contact;",
            ">;",
            "Le/a/h/b/w;",
            "Le/a/f4/g/j;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v5, p15

    move-object/from16 v4, p16

    move-object/from16 v3, p17

    move-object/from16 v2, p18

    move-object/from16 v1, p19

    const-string v0, "callHistoryDataHolder"

    invoke-static {v7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionModeHandler"

    move-object/from16 v7, p2

    invoke-static {v7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phoneActionsHandler"

    move-object/from16 v7, p3

    invoke-static {v7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    move-object/from16 v7, p4

    invoke-static {v7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "voipUtil"

    move-object/from16 v7, p5

    invoke-static {v7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "multiSimManager"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "telecomUtils"

    invoke-static {v8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callingSettings"

    invoke-static {v9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {v10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "numberProvider"

    invoke-static {v11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dateHelper"

    invoke-static {v12, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "simInfoCache"

    invoke-static {v13, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "specialNumberResolver"

    invoke-static {v14, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callLogItemTypeHelper"

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "badgeHelper"

    invoke-static {v5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "spamCategoryBuilder"

    invoke-static {v4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "avatarXConfigProvider"

    invoke-static {v3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dialerPerformanceAnalytics"

    invoke-static {v2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bulkSearcher"

    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object v7, v1

    move-object/from16 v1, p1

    move-object v7, v2

    move-object/from16 v2, p3

    move-object v7, v3

    move-object/from16 v3, p4

    move-object v7, v4

    move-object/from16 v4, p2

    move-object v7, v5

    move-object/from16 v5, p5

    .line 1
    invoke-direct/range {v0 .. v5}, Le/a/h/b/d/a/b/e;-><init>(Le/a/h/b/d/a/b/b;Le/a/h/b/p0;Le/a/q2/a;Le/a/h/b/f;Le/a/d/c0/s1;)V

    iput-object v8, v6, Le/a/h/b/d/a/b/g;->l:Le/a/o5/s1;

    iput-object v9, v6, Le/a/h/b/d/a/b/g;->m:Lcom/truecaller/settings/CallingSettings;

    iput-object v10, v6, Le/a/h/b/d/a/b/g;->n:Le/a/p5/c0;

    iput-object v11, v6, Le/a/h/b/d/a/b/g;->o:Le/a/k3/l/f;

    iput-object v12, v6, Le/a/h/b/d/a/b/g;->p:Le/a/o5/b0;

    iput-object v13, v6, Le/a/h/b/d/a/b/g;->q:Le/a/e4/b0;

    iput-object v14, v6, Le/a/h/b/d/a/b/g;->r:Le/a/b0/q/h0;

    iput-object v15, v6, Le/a/h/b/d/a/b/g;->s:Le/a/h/b/d/b/a;

    iput-object v7, v6, Le/a/h/b/d/a/b/g;->t:Le/a/z2/a;

    move-object/from16 v0, p16

    iput-object v0, v6, Le/a/h/b/d/a/b/g;->u:Le/a/a0/p;

    move-object/from16 v0, p17

    iput-object v0, v6, Le/a/h/b/d/a/b/g;->v:Le/a/b0/a/b/b;

    move-object/from16 v0, p18

    iput-object v0, v6, Le/a/h/b/d/a/b/g;->w:Le/a/h/b/w;

    move-object/from16 v0, p19

    iput-object v0, v6, Le/a/h/b/d/a/b/g;->x:Le/a/f4/g/j;

    .line 2
    invoke-interface/range {p6 .. p6}, Le/a/e4/p;->h()Z

    move-result v0

    iput-boolean v0, v6, Le/a/h/b/d/a/b/g;->i:Z

    move-object/from16 v0, p1

    .line 3
    invoke-interface {v0, v6}, Le/a/h/b/d/a/b/b;->Di(Le/a/h/b/d/a/b/c;)Le/a/h/b/d/b/k;

    move-result-object v0

    iput-object v0, v6, Le/a/h/b/d/a/b/g;->j:Le/a/h/b/d/b/k;

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
    .locals 38

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 1
    move-object/from16 v2, p1

    check-cast v2, Le/a/h/b/d/a/b/i;

    const-string v3, "itemView"

    .line 2
    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    .line 4
    invoke-virtual/range {p0 .. p0}, Le/a/h/b/d/a/b/e;->B()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/h/b/d/b/i;

    .line 5
    iget-object v5, v5, Le/a/h/b/d/b/i;->c:Lcom/truecaller/data/entity/HistoryEvent;

    .line 6
    invoke-static {v5}, Le/a/n/g0;->a0(Lcom/truecaller/data/entity/HistoryEvent;)Z

    move-result v6

    .line 7
    iget-object v7, v5, Lcom/truecaller/data/entity/HistoryEvent;->b:Ljava/lang/String;

    const-string v8, "it"

    const/4 v9, 0x0

    if-eqz v7, :cond_3

    if-nez v6, :cond_2

    .line 8
    invoke-static {v7, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_0

    const/4 v12, 0x1

    goto :goto_0

    :cond_0
    move v12, v9

    :goto_0
    if-eqz v12, :cond_1

    goto :goto_1

    :cond_1
    move v12, v9

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v12, 0x1

    :goto_2
    if-nez v12, :cond_3

    goto :goto_3

    :cond_3
    const/4 v7, 0x0

    :goto_3
    if-eqz v6, :cond_4

    const/4 v12, 0x0

    goto :goto_4

    :cond_4
    if-eqz v7, :cond_5

    move-object v12, v7

    goto :goto_4

    .line 9
    :cond_5
    iget-object v12, v5, Lcom/truecaller/data/entity/HistoryEvent;->c:Ljava/lang/String;

    .line 10
    :goto_4
    iget-object v13, v5, Lcom/truecaller/data/entity/HistoryEvent;->f:Lcom/truecaller/data/entity/Contact;

    .line 11
    invoke-static {v13}, Le/a/n/g0;->c0(Lcom/truecaller/data/entity/Contact;)Z

    move-result v14

    if-eqz v14, :cond_6

    goto :goto_5

    :cond_6
    const/4 v13, 0x0

    .line 12
    :goto_5
    iget-object v14, v0, Le/a/h/b/d/a/b/g;->s:Le/a/h/b/d/b/a;

    iget-object v15, v0, Le/a/h/b/d/a/b/g;->l:Le/a/o5/s1;

    .line 13
    invoke-static {v14}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v14, "historyEvent"

    invoke-static {v5, v14}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    sget-object v10, Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;->Companion:Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType$a;

    invoke-virtual {v10, v5, v15}, Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType$a;->b(Lcom/truecaller/data/entity/HistoryEvent;Le/a/o5/s1;)Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;

    move-result-object v10

    if-eqz v6, :cond_7

    .line 15
    iget-object v15, v0, Le/a/h/b/d/a/b/g;->n:Le/a/p5/c0;

    const v11, 0x7f1202d2

    move-wide/from16 v18, v3

    new-array v3, v9, [Ljava/lang/Object;

    invoke-interface {v15, v11, v3}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_8

    :cond_7
    move-wide/from16 v18, v3

    .line 16
    sget-object v3, Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;->VOIP_GROUP_CALL:Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;

    if-ne v10, v3, :cond_8

    iget-object v3, v0, Le/a/h/b/d/a/b/g;->n:Le/a/p5/c0;

    const/4 v4, 0x1

    new-array v11, v4, [Ljava/lang/Object;

    const v4, 0x7f1210cb

    new-array v15, v9, [Ljava/lang/Object;

    invoke-interface {v3, v4, v15}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v11, v9

    const v4, 0x7f12108d

    invoke-interface {v3, v4, v11}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_8

    :cond_8
    if-eqz v13, :cond_b

    .line 17
    invoke-virtual {v13}, Lcom/truecaller/data/entity/Contact;->w()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_9

    goto :goto_6

    :cond_9
    move v3, v9

    goto :goto_7

    :cond_a
    :goto_6
    const/4 v3, 0x1

    :goto_7
    if-nez v3, :cond_b

    invoke-virtual {v13}, Lcom/truecaller/data/entity/Contact;->w()Ljava/lang/String;

    move-result-object v3

    goto :goto_8

    .line 18
    :cond_b
    iget-object v3, v0, Le/a/h/b/d/a/b/g;->r:Le/a/b0/q/h0;

    const/4 v4, 0x2

    new-array v11, v4, [Ljava/lang/String;

    .line 19
    iget-object v4, v5, Lcom/truecaller/data/entity/HistoryEvent;->c:Ljava/lang/String;

    aput-object v4, v11, v9

    .line 20
    iget-object v4, v5, Lcom/truecaller/data/entity/HistoryEvent;->b:Ljava/lang/String;

    const/4 v15, 0x1

    aput-object v4, v11, v15

    .line 21
    invoke-interface {v3, v11}, Le/a/b0/q/h0;->d([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 22
    iget-object v3, v0, Le/a/h/b/d/a/b/g;->n:Le/a/p5/c0;

    const v4, 0x7f120f98

    new-array v11, v9, [Ljava/lang/Object;

    invoke-interface {v3, v4, v11}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_8

    .line 23
    :cond_c
    iget-object v3, v0, Le/a/h/b/d/a/b/g;->r:Le/a/b0/q/h0;

    .line 24
    iget-object v4, v5, Lcom/truecaller/data/entity/HistoryEvent;->c:Ljava/lang/String;

    .line 25
    invoke-interface {v3, v4}, Le/a/b0/q/h0;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, v0, Le/a/h/b/d/a/b/g;->r:Le/a/b0/q/h0;

    invoke-interface {v3}, Le/a/b0/q/h0;->c()Ljava/lang/String;

    move-result-object v3

    goto :goto_8

    :cond_d
    const/4 v3, 0x0

    :goto_8
    if-eqz v13, :cond_10

    .line 26
    invoke-virtual {v13}, Lcom/truecaller/data/entity/Contact;->M()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_10

    .line 27
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object v15, v11

    check-cast v15, Lcom/truecaller/data/entity/Number;

    .line 28
    invoke-static {v15, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15, v12}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_e

    goto :goto_9

    :cond_f
    const/4 v11, 0x0

    .line 29
    :goto_9
    check-cast v11, Lcom/truecaller/data/entity/Number;

    if-eqz v11, :cond_10

    goto :goto_a

    .line 30
    :cond_10
    iget-object v4, v0, Le/a/h/b/d/a/b/g;->o:Le/a/k3/l/f;

    const/4 v8, 0x1

    new-array v11, v8, [Ljava/lang/String;

    aput-object v12, v11, v9

    invoke-interface {v4, v11}, Le/a/k3/l/f;->a([Ljava/lang/String;)Lcom/truecaller/data/entity/Number;

    move-result-object v11

    :goto_a
    if-eqz v11, :cond_11

    .line 31
    invoke-virtual {v11}, Lcom/truecaller/data/entity/Number;->g()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_11

    goto :goto_b

    :cond_11
    move-object v4, v12

    :goto_b
    if-eqz v3, :cond_12

    goto :goto_c

    :cond_12
    move-object v3, v4

    .line 32
    :goto_c
    invoke-static {v3}, Le/a/b0/q/o;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "GUIUtils.bidiFormat(displayName ?: displayNumber)"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v13, :cond_13

    .line 33
    invoke-virtual {v13}, Lcom/truecaller/data/entity/Contact;->A0()Z

    move-result v4

    goto :goto_d

    :cond_13
    move v4, v9

    :goto_d
    const-string v8, "name"

    .line 34
    invoke-static {v3, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v14}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "itemType"

    invoke-static {v10, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    sget-object v8, Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;->VOIP_GROUP_CALL:Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;

    if-ne v10, v8, :cond_15

    .line 36
    new-instance v8, Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v26, 0x1

    const/16 v24, 0x0

    const/16 v25, 0x0

    .line 37
    invoke-virtual {v5}, Lcom/truecaller/data/entity/Entity;->getId()Ljava/lang/Long;

    move-result-object v11

    if-eqz v11, :cond_14

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v23, v11

    goto :goto_e

    :cond_14
    const/16 v23, 0x0

    :goto_e
    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const v37, 0xffdb

    move-object/from16 v20, v8

    .line 38
    invoke-direct/range {v20 .. v37}, Lcom/truecaller/common/ui/avatar/AvatarXConfig;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZZZZZLjava/lang/Integer;ZI)V

    goto/16 :goto_1d

    :cond_15
    if-eqz v13, :cond_16

    .line 39
    iget v8, v13, Lcom/truecaller/data/entity/Contact;->r:I

    .line 40
    iget-object v14, v13, Lcom/truecaller/data/entity/Contact;->y:Lcom/truecaller/data/entity/Contact$PremiumLevel;

    .line 41
    invoke-static {v8, v14}, Le/a/o5/t;->f(ILcom/truecaller/data/entity/Contact$PremiumLevel;)I

    move-result v8

    goto :goto_f

    :cond_16
    move v8, v9

    .line 42
    :goto_f
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v14

    const-string v15, "(this as java.lang.String).toCharArray()"

    invoke-static {v14, v15}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v14}, Le/q/f/a/d/a;->t0([C)Ljava/lang/Character;

    move-result-object v14

    if-eqz v14, :cond_19

    invoke-virtual {v14}, Ljava/lang/Character;->charValue()C

    move-result v14

    if-eqz v6, :cond_17

    goto :goto_10

    .line 43
    :cond_17
    invoke-static {v14}, Ljava/lang/Character;->isLetter(C)Z

    move-result v15

    if-eqz v15, :cond_18

    invoke-static {v14}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v14

    goto :goto_11

    :cond_18
    :goto_10
    const/4 v14, 0x0

    :goto_11
    move-object/from16 v24, v14

    goto :goto_12

    :cond_19
    const/16 v24, 0x0

    :goto_12
    if-eqz v13, :cond_1a

    .line 44
    iget-object v14, v0, Le/a/h/b/d/a/b/g;->v:Le/a/b0/a/b/b;

    invoke-interface {v14, v13}, Le/a/b0/a/b/b;->a(Ljava/lang/Object;)Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-result-object v14

    if-eqz v14, :cond_1a

    :goto_13
    move-object v8, v14

    goto/16 :goto_1d

    .line 45
    :cond_1a
    new-instance v14, Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    const/16 v21, 0x0

    if-eqz v11, :cond_1b

    .line 46
    invoke-virtual {v11}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v22, v11

    goto :goto_14

    :cond_1b
    const/16 v22, 0x0

    :goto_14
    const/16 v23, 0x0

    if-nez v4, :cond_1e

    .line 47
    iget v11, v5, Lcom/truecaller/data/entity/HistoryEvent;->r:I

    const/4 v15, 0x1

    if-ne v11, v15, :cond_1c

    const/4 v11, 0x1

    goto :goto_15

    :cond_1c
    move v11, v9

    :goto_15
    if-eqz v11, :cond_1d

    goto :goto_16

    :cond_1d
    move/from16 v25, v9

    goto :goto_17

    :cond_1e
    :goto_16
    const/16 v25, 0x1

    :goto_17
    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v11, 0x20

    if-ne v8, v11, :cond_1f

    const/16 v30, 0x1

    goto :goto_18

    :cond_1f
    move/from16 v30, v9

    :goto_18
    const/4 v11, 0x4

    if-ne v8, v11, :cond_20

    const/16 v29, 0x1

    goto :goto_19

    :cond_20
    move/from16 v29, v9

    :goto_19
    const/16 v11, 0x80

    if-ne v8, v11, :cond_21

    const/16 v31, 0x1

    goto :goto_1a

    :cond_21
    move/from16 v31, v9

    :goto_1a
    const/16 v11, 0x100

    if-ne v8, v11, :cond_22

    const/16 v32, 0x1

    goto :goto_1b

    :cond_22
    move/from16 v32, v9

    :goto_1b
    const/16 v11, 0x10

    if-ne v8, v11, :cond_23

    const/16 v33, 0x1

    goto :goto_1c

    :cond_23
    move/from16 v33, v9

    :goto_1c
    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const v37, 0xe0e5

    move-object/from16 v20, v14

    .line 48
    invoke-direct/range {v20 .. v37}, Lcom/truecaller/common/ui/avatar/AvatarXConfig;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZZZZZLjava/lang/Integer;ZI)V

    goto :goto_13

    .line 49
    :goto_1d
    invoke-interface {v2, v8}, Le/a/h/b/d/a/b/i;->a(Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V

    .line 50
    iget-boolean v8, v0, Le/a/o2/c;->a:Z

    if-nez v8, :cond_24

    if-nez v6, :cond_24

    const/4 v8, 0x1

    goto :goto_1e

    :cond_24
    move v8, v9

    .line 51
    :goto_1e
    invoke-interface {v2, v8}, Le/a/h/b/d/a/b/i;->q(Z)V

    .line 52
    invoke-interface {v2, v7}, Le/a/h/b/d/a/b/i;->j(Ljava/lang/String;)V

    .line 53
    iget-object v7, v0, Le/a/h/b/d/a/b/g;->q:Le/a/e4/b0;

    .line 54
    iget-object v8, v5, Lcom/truecaller/data/entity/HistoryEvent;->k:Ljava/lang/String;

    .line 55
    invoke-interface {v7, v8}, Le/a/e4/b0;->get(Ljava/lang/String;)Lcom/truecaller/multisim/SimInfo;

    move-result-object v7

    if-eqz v7, :cond_26

    iget-boolean v8, v0, Le/a/h/b/d/a/b/g;->i:Z

    if-eqz v8, :cond_25

    goto :goto_1f

    :cond_25
    const/4 v7, 0x0

    :goto_1f
    if-eqz v7, :cond_26

    iget v7, v7, Lcom/truecaller/multisim/SimInfo;->a:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_20

    :cond_26
    const/4 v7, 0x0

    .line 56
    :goto_20
    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    const/4 v11, 0x6

    if-eqz v8, :cond_2a

    const/4 v14, 0x1

    if-eq v8, v14, :cond_29

    const/4 v14, 0x5

    if-eq v8, v14, :cond_28

    if-eq v8, v11, :cond_28

    .line 57
    invoke-virtual {v10}, Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;->isVideo()Z

    move-result v8

    if-eqz v8, :cond_27

    sget-object v8, Lcom/truecaller/calling/dialer/call_log/items/entries/CallIconType;->VIDEO:Lcom/truecaller/calling/dialer/call_log/items/entries/CallIconType;

    goto :goto_21

    :cond_27
    invoke-static {v5}, Le/a/e/a2;->u(Lcom/truecaller/data/entity/HistoryEvent;)Lcom/truecaller/calling/dialer/call_log/items/entries/CallIconType;

    move-result-object v8

    goto :goto_21

    .line 58
    :cond_28
    sget-object v8, Lcom/truecaller/calling/dialer/call_log/items/entries/CallIconType;->VOIP:Lcom/truecaller/calling/dialer/call_log/items/entries/CallIconType;

    goto :goto_21

    .line 59
    :cond_29
    sget-object v8, Lcom/truecaller/calling/dialer/call_log/items/entries/CallIconType;->WHATSAPP:Lcom/truecaller/calling/dialer/call_log/items/entries/CallIconType;

    goto :goto_21

    .line 60
    :cond_2a
    sget-object v8, Lcom/truecaller/calling/dialer/call_log/items/entries/CallIconType;->FLASH:Lcom/truecaller/calling/dialer/call_log/items/entries/CallIconType;

    .line 61
    :goto_21
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    if-eq v14, v11, :cond_2d

    const/4 v11, 0x7

    if-eq v14, v11, :cond_2c

    const/16 v11, 0x8

    if-eq v14, v11, :cond_2b

    const/4 v11, 0x0

    goto :goto_22

    .line 62
    :cond_2b
    iget-object v11, v0, Le/a/h/b/d/a/b/g;->n:Le/a/p5/c0;

    const v14, 0x7f12090d

    new-array v15, v9, [Ljava/lang/Object;

    invoke-interface {v11, v14, v15}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto :goto_22

    .line 63
    :cond_2c
    iget-object v11, v0, Le/a/h/b/d/a/b/g;->n:Le/a/p5/c0;

    const v14, 0x7f12090f

    new-array v15, v9, [Ljava/lang/Object;

    invoke-interface {v11, v14, v15}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto :goto_22

    .line 64
    :cond_2d
    iget-object v11, v0, Le/a/h/b/d/a/b/g;->n:Le/a/p5/c0;

    const v14, 0x7f12090e

    new-array v15, v9, [Ljava/lang/Object;

    invoke-interface {v11, v14, v15}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 65
    :goto_22
    sget-object v14, Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;->FLASH_MESSAGE:Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;

    if-ne v10, v14, :cond_2e

    iget-object v11, v0, Le/a/h/b/d/a/b/g;->n:Le/a/p5/c0;

    const v14, 0x7f12090c

    new-array v15, v9, [Ljava/lang/Object;

    invoke-interface {v11, v14, v15}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_27

    .line 66
    :cond_2e
    iget v14, v5, Lcom/truecaller/data/entity/HistoryEvent;->r:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_2f

    const/4 v15, 0x1

    goto :goto_23

    :cond_2f
    move v15, v9

    :goto_23
    if-eqz v15, :cond_32

    .line 67
    iget-object v11, v5, Lcom/truecaller/data/entity/HistoryEvent;->u:Ljava/lang/String;

    .line 68
    invoke-static {v11}, Le/a/a3/c;->a(Ljava/lang/String;)Lcom/truecaller/blocking/ActionSource;

    move-result-object v11

    .line 69
    sget-object v14, Le/a/a3/c;->a:Ljava/util/List;

    .line 70
    invoke-interface {v14, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_30

    const/4 v11, 0x0

    :cond_30
    if-eqz v11, :cond_31

    .line 71
    iget-object v14, v0, Le/a/h/b/d/a/b/g;->n:Le/a/p5/c0;

    invoke-static {v11}, Le/a/a3/c;->b(Lcom/truecaller/blocking/ActionSource;)I

    move-result v11

    new-array v15, v9, [Ljava/lang/Object;

    invoke-interface {v14, v11, v15}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_31

    goto :goto_24

    .line 72
    :cond_31
    iget-object v11, v0, Le/a/h/b/d/a/b/g;->n:Le/a/p5/c0;

    const v14, 0x7f12090b

    new-array v15, v9, [Ljava/lang/Object;

    invoke-interface {v11, v14, v15}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    :goto_24
    const-string v14, "getBlockedReasonIfAvaila\u2026all_history_blocked_call)"

    invoke-static {v11, v14}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_27

    :cond_32
    const/4 v15, 0x3

    if-ne v14, v15, :cond_34

    if-eqz v13, :cond_33

    .line 73
    invoke-static {v13}, Le/a/l4/k;->X(Lcom/truecaller/data/entity/Contact;)Lcom/truecaller/data/entity/SpamCategoryModel;

    move-result-object v11

    if-eqz v11, :cond_33

    invoke-virtual {v11}, Lcom/truecaller/data/entity/SpamCategoryModel;->getLabel()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_33

    goto :goto_27

    :cond_33
    iget-object v11, v0, Le/a/h/b/d/a/b/g;->n:Le/a/p5/c0;

    const v14, 0x7f120917

    new-array v15, v9, [Ljava/lang/Object;

    invoke-interface {v11, v14, v15}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    const-string v14, "resourceProvider.getStri\u2026call_history_silent_call)"

    invoke-static {v11, v14}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_27

    :cond_34
    if-eqz v4, :cond_37

    .line 74
    iget-object v11, v0, Le/a/h/b/d/a/b/g;->u:Le/a/a0/p;

    if-eqz v13, :cond_35

    .line 75
    invoke-virtual {v13}, Lcom/truecaller/data/entity/Contact;->a0()I

    move-result v14

    move/from16 v22, v14

    goto :goto_25

    :cond_35
    move/from16 v22, v9

    :goto_25
    if-eqz v13, :cond_36

    .line 76
    invoke-static {v13}, Le/a/l4/k;->X(Lcom/truecaller/data/entity/Contact;)Lcom/truecaller/data/entity/SpamCategoryModel;

    move-result-object v14

    move-object/from16 v23, v14

    goto :goto_26

    :cond_36
    const/16 v23, 0x0

    :goto_26
    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x4

    const/16 v27, 0x0

    move-object/from16 v21, v11

    .line 77
    invoke-static/range {v21 .. v27}, Le/a/l4/k;->s(Le/a/a0/p;ILcom/truecaller/data/entity/SpamCategoryModel;IZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    :goto_27
    move-object/from16 v22, v12

    goto/16 :goto_2a

    :cond_37
    if-eqz v11, :cond_3b

    .line 78
    iget v14, v5, Lcom/truecaller/data/entity/HistoryEvent;->q:I

    const/4 v15, 0x1

    if-eq v14, v15, :cond_3a

    const/4 v9, 0x2

    if-eq v14, v9, :cond_39

    const/4 v9, 0x3

    if-eq v14, v9, :cond_38

    move-object/from16 v22, v12

    goto :goto_28

    .line 79
    :cond_38
    iget-object v9, v0, Le/a/h/b/d/a/b/g;->n:Le/a/p5/c0;

    const v14, 0x7f120912

    move-object/from16 v22, v12

    new-array v12, v15, [Ljava/lang/Object;

    const/16 v17, 0x0

    aput-object v11, v12, v17

    invoke-interface {v9, v14, v12}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto :goto_2a

    :cond_39
    move-object/from16 v22, v12

    const/16 v17, 0x0

    .line 80
    iget-object v9, v0, Le/a/h/b/d/a/b/g;->n:Le/a/p5/c0;

    const v12, 0x7f120914

    new-array v14, v15, [Ljava/lang/Object;

    aput-object v11, v14, v17

    invoke-interface {v9, v12, v14}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto :goto_2a

    :cond_3a
    move/from16 v17, v9

    move-object/from16 v22, v12

    .line 81
    iget-object v9, v0, Le/a/h/b/d/a/b/g;->n:Le/a/p5/c0;

    const v12, 0x7f120916

    new-array v14, v15, [Ljava/lang/Object;

    aput-object v11, v14, v17

    invoke-interface {v9, v12, v14}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto :goto_2a

    :cond_3b
    move-object/from16 v22, v12

    const/4 v15, 0x1

    .line 82
    iget v9, v5, Lcom/truecaller/data/entity/HistoryEvent;->q:I

    if-eq v9, v15, :cond_3e

    const/4 v11, 0x2

    if-eq v9, v11, :cond_3d

    const/4 v11, 0x3

    if-eq v9, v11, :cond_3c

    :goto_28
    const-string v11, ""

    goto :goto_2a

    .line 83
    :cond_3c
    iget-object v9, v0, Le/a/h/b/d/a/b/g;->n:Le/a/p5/c0;

    const v11, 0x7f120911

    const/4 v12, 0x0

    new-array v14, v12, [Ljava/lang/Object;

    invoke-interface {v9, v11, v14}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto :goto_29

    :cond_3d
    const/4 v12, 0x0

    .line 84
    iget-object v9, v0, Le/a/h/b/d/a/b/g;->n:Le/a/p5/c0;

    const v11, 0x7f120913

    new-array v14, v12, [Ljava/lang/Object;

    invoke-interface {v9, v11, v14}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    :goto_29
    move-object v11, v9

    goto :goto_2a

    :cond_3e
    const/4 v12, 0x0

    .line 85
    iget-object v9, v0, Le/a/h/b/d/a/b/g;->n:Le/a/p5/c0;

    const v11, 0x7f120915

    new-array v14, v12, [Ljava/lang/Object;

    invoke-interface {v9, v11, v14}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    :goto_2a
    const-string v9, "when {\n            item.\u2026}\n            }\n        }"

    .line 86
    invoke-static {v11, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    invoke-virtual/range {p0 .. p0}, Le/a/h/b/d/a/b/e;->B()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Le/a/h/b/d/b/i;

    .line 88
    instance-of v12, v9, Le/a/h/b/d/b/m;

    if-eqz v12, :cond_3f

    check-cast v9, Le/a/h/b/d/b/m;

    .line 89
    iget v9, v9, Le/a/h/b/d/b/m;->d:I

    goto :goto_2b

    .line 90
    :cond_3f
    iget-object v9, v9, Le/a/h/b/d/b/i;->a:Ljava/util/Set;

    .line 91
    invoke-interface {v9}, Ljava/util/Set;->size()I

    move-result v9

    .line 92
    :goto_2b
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 93
    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v12

    const/4 v14, 0x1

    if-le v12, v14, :cond_40

    const/4 v12, 0x1

    goto :goto_2c

    :cond_40
    const/4 v12, 0x0

    :goto_2c
    if-eqz v12, :cond_41

    goto :goto_2d

    :cond_41
    const/4 v9, 0x0

    :goto_2d
    if-eqz v9, :cond_42

    .line 94
    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    .line 95
    iget-object v12, v0, Le/a/h/b/d/a/b/g;->n:Le/a/p5/c0;

    const v14, 0x7f120910

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v11, v15, v16

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v16, 0x1

    aput-object v9, v15, v16

    invoke-interface {v12, v14, v15}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto :goto_2e

    :cond_42
    const/4 v9, 0x0

    :goto_2e
    if-eqz v9, :cond_43

    move-object v11, v9

    .line 96
    :cond_43
    invoke-static {v11}, Le/a/b0/q/o;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    const-string v11, "GUIUtils.bidiFormat(detailsWithGroup ?: details)"

    invoke-static {v9, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    iget v11, v5, Lcom/truecaller/data/entity/HistoryEvent;->r:I

    const/4 v12, 0x3

    if-ne v11, v12, :cond_44

    const v11, 0x7f08070c

    .line 98
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    goto :goto_2f

    :cond_44
    const/4 v11, 0x0

    .line 99
    :goto_2f
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    const v15, 0x7f080700

    packed-switch v14, :pswitch_data_0

    .line 100
    new-instance v1, Ls1/i;

    invoke-direct {v1}, Ls1/i;-><init>()V

    throw v1

    .line 101
    :pswitch_0
    iget v14, v5, Lcom/truecaller/data/entity/HistoryEvent;->q:I

    if-ne v14, v12, :cond_45

    const/4 v12, 0x1

    goto :goto_30

    :cond_45
    const/4 v12, 0x0

    :goto_30
    if-eqz v12, :cond_46

    const v15, 0x7f08070b

    goto :goto_31

    :cond_46
    const v15, 0x7f080712

    goto :goto_31

    :pswitch_1
    const v15, 0x7f080714

    goto :goto_31

    :pswitch_2
    const v15, 0x7f080713

    goto :goto_31

    :pswitch_3
    const v15, 0x7f080704

    goto :goto_31

    :pswitch_4
    const v15, 0x7f080708

    goto :goto_31

    :pswitch_5
    const v15, 0x7f08070d

    goto :goto_31

    :pswitch_6
    const v15, 0x7f080705

    .line 102
    :goto_31
    :pswitch_7
    iget-object v12, v0, Le/a/h/b/d/a/b/g;->n:Le/a/p5/c0;

    if-eqz v11, :cond_47

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v15

    :cond_47
    invoke-interface {v12, v15}, Le/a/p5/c0;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    const-string v12, "resourceProvider.getDraw\u2026e(silentIcon ?: resource)"

    invoke-static {v11, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v7, :cond_48

    goto :goto_32

    .line 103
    :cond_48
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-nez v12, :cond_49

    const v7, 0x7f08070f

    goto :goto_33

    :cond_49
    :goto_32
    if-nez v7, :cond_4a

    goto :goto_34

    .line 104
    :cond_4a
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v12, 0x1

    if-ne v7, v12, :cond_4b

    const v7, 0x7f080710

    .line 105
    :goto_33
    iget-object v12, v0, Le/a/h/b/d/a/b/g;->n:Le/a/p5/c0;

    invoke-interface {v12, v7}, Le/a/p5/c0;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    move-object/from16 v26, v7

    goto :goto_35

    :cond_4b
    :goto_34
    const/16 v26, 0x0

    :goto_35
    if-eqz v4, :cond_4c

    .line 106
    sget-object v7, Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;->RED:Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;

    :goto_36
    move-object/from16 v29, v7

    goto :goto_37

    .line 107
    :cond_4c
    iget v7, v5, Lcom/truecaller/data/entity/HistoryEvent;->r:I

    const/4 v12, 0x1

    if-ne v7, v12, :cond_4d

    .line 108
    sget-object v7, Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;->RED:Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;

    goto :goto_36

    :cond_4d
    const/4 v12, 0x3

    if-ne v7, v12, :cond_4e

    .line 109
    sget-object v7, Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;->RED:Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;

    goto :goto_36

    .line 110
    :cond_4e
    sget-object v7, Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;->DEFAULT:Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;

    goto :goto_36

    :goto_37
    if-eqz v4, :cond_4f

    .line 111
    sget-object v4, Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;->RED:Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;

    :goto_38
    move-object/from16 v28, v4

    goto :goto_3a

    .line 112
    :cond_4f
    iget v4, v5, Lcom/truecaller/data/entity/HistoryEvent;->r:I

    const/4 v7, 0x1

    if-ne v4, v7, :cond_50

    .line 113
    sget-object v4, Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;->RED:Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;

    goto :goto_38

    :cond_50
    const/4 v7, 0x3

    if-ne v4, v7, :cond_51

    .line 114
    sget-object v4, Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;->RED:Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;

    goto :goto_38

    .line 115
    :cond_51
    iget v4, v5, Lcom/truecaller/data/entity/HistoryEvent;->q:I

    if-ne v4, v7, :cond_52

    const/4 v4, 0x1

    goto :goto_39

    :cond_52
    const/4 v4, 0x0

    .line 116
    :goto_39
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    packed-switch v7, :pswitch_data_1

    .line 117
    new-instance v1, Ls1/i;

    invoke-direct {v1}, Ls1/i;-><init>()V

    throw v1

    :pswitch_8
    if-eqz v4, :cond_53

    .line 118
    sget-object v4, Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;->RED:Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;

    goto :goto_38

    :cond_53
    sget-object v4, Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;->DEFAULT:Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;

    goto :goto_38

    :pswitch_9
    if-eqz v4, :cond_54

    .line 119
    sget-object v4, Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;->RED:Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;

    goto :goto_38

    :cond_54
    sget-object v4, Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;->DEFAULT:Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;

    goto :goto_38

    :pswitch_a
    if-eqz v4, :cond_55

    .line 120
    sget-object v4, Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;->RED:Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;

    goto :goto_38

    :cond_55
    sget-object v4, Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;->DEFAULT:Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;

    goto :goto_38

    :pswitch_b
    if-eqz v4, :cond_56

    .line 121
    sget-object v4, Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;->RED:Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;

    goto :goto_38

    :cond_56
    sget-object v4, Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;->DEFAULT:Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;

    goto :goto_38

    .line 122
    :pswitch_c
    sget-object v4, Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;->RED:Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;

    goto :goto_38

    .line 123
    :pswitch_d
    sget-object v4, Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;->DEFAULT:Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;

    goto :goto_38

    .line 124
    :pswitch_e
    sget-object v4, Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;->DEFAULT:Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;

    goto :goto_38

    .line 125
    :pswitch_f
    sget-object v4, Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;->RED:Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;

    goto :goto_38

    .line 126
    :pswitch_10
    sget-object v4, Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;->RED:Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;

    goto :goto_38

    .line 127
    :goto_3a
    new-instance v4, Le/a/h/b/d/a/b/a;

    move-object/from16 v23, v4

    move-object/from16 v24, v9

    move-object/from16 v25, v11

    move-object/from16 v27, v29

    invoke-direct/range {v23 .. v29}, Le/a/h/b/d/a/b/a;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;)V

    .line 128
    invoke-interface {v2, v4}, Le/a/h/b/d/a/b/d;->j2(Le/a/h/b/d/a/b/a;)V

    .line 129
    invoke-interface {v2, v3}, Le/a/h/h0;->setTitle(Ljava/lang/String;)V

    .line 130
    invoke-static {v13}, Le/a/n/g0;->c0(Lcom/truecaller/data/entity/Contact;)Z

    move-result v3

    if-eqz v3, :cond_58

    .line 131
    iget-object v3, v0, Le/a/h/b/d/a/b/g;->t:Le/a/z2/a;

    invoke-interface {v3, v13}, Le/a/z2/a;->b(Lcom/truecaller/data/entity/Contact;)Z

    move-result v3

    if-eqz v3, :cond_57

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Le/a/h/j0;->i2(Z)V

    goto :goto_3b

    .line 132
    :cond_57
    iget-object v3, v0, Le/a/h/b/d/a/b/g;->t:Le/a/z2/a;

    invoke-interface {v3, v13}, Le/a/z2/a;->a(Lcom/truecaller/data/entity/Contact;)Z

    move-result v3

    invoke-interface {v2, v3}, Le/a/h/i0;->K(Z)V

    :goto_3b
    const/4 v3, 0x0

    goto :goto_3c

    :cond_58
    const/4 v3, 0x0

    .line 133
    invoke-interface {v2, v3}, Le/a/h/i0;->K(Z)V

    .line 134
    :goto_3c
    iget-object v4, v0, Le/a/h/b/d/a/b/g;->p:Le/a/o5/b0;

    .line 135
    iget-wide v7, v5, Lcom/truecaller/data/entity/HistoryEvent;->h:J

    .line 136
    invoke-interface {v4, v7, v8}, Le/a/o5/b0;->k(J)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Le/a/h/b/d/a/b/i;->M(Ljava/lang/String;)V

    .line 137
    iget-boolean v4, v0, Le/a/o2/c;->a:Z

    if-eqz v4, :cond_59

    .line 138
    iget-object v4, v0, Le/a/h/b/d/a/b/e;->c:Le/a/h/b/d/a/b/b;

    .line 139
    invoke-interface {v4, v5}, Le/a/h/b/d/a/b/b;->pb(Lcom/truecaller/data/entity/HistoryEvent;)Z

    move-result v4

    if-eqz v4, :cond_59

    const/4 v4, 0x1

    goto :goto_3d

    :cond_59
    move v4, v3

    :goto_3d
    invoke-interface {v2, v4}, Le/a/h/b/d/a/b/d;->b(Z)V

    .line 140
    invoke-virtual {v10}, Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;->getPrimaryAction()Lcom/truecaller/calling/ActionType;

    move-result-object v4

    invoke-interface {v2, v4}, Le/a/h/b/d/a/b/i;->L2(Lcom/truecaller/calling/ActionType;)V

    if-eqz v6, :cond_5a

    const/4 v4, 0x0

    .line 141
    invoke-interface {v2, v4}, Le/a/h/b/d/a/b/i;->V(Lcom/truecaller/calling/ActionType;)V

    goto :goto_3e

    .line 142
    :cond_5a
    sget-object v4, Lcom/truecaller/calling/ActionType;->PROFILE:Lcom/truecaller/calling/ActionType;

    invoke-interface {v2, v4}, Le/a/h/b/d/a/b/i;->V(Lcom/truecaller/calling/ActionType;)V

    .line 143
    :goto_3e
    invoke-static {v13}, Le/a/n/g0;->C0(Lcom/truecaller/data/entity/Contact;)Z

    move-result v4

    if-eqz v4, :cond_5b

    if-eqz v22, :cond_5b

    iget-object v4, v0, Le/a/h/b/d/a/b/g;->j:Le/a/h/b/d/b/k;

    invoke-interface {v4, v1}, Le/a/h/b/d/b/k;->b(I)Z

    move-result v4

    if-nez v4, :cond_5b

    .line 144
    iget-object v4, v0, Le/a/h/b/d/a/b/g;->x:Le/a/f4/g/j;

    move-object/from16 v7, v22

    const/4 v5, 0x0

    invoke-interface {v4, v7, v5, v5}, Le/a/f4/g/j;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object v4, v0, Le/a/h/b/d/a/b/g;->x:Le/a/f4/g/j;

    invoke-interface {v4, v7}, Le/a/f4/g/j;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 146
    iget-object v4, v0, Le/a/h/b/d/a/b/g;->j:Le/a/h/b/d/b/k;

    invoke-interface {v4, v7, v1}, Le/a/h/b/d/b/k;->c(Ljava/lang/String;I)V

    goto :goto_3f

    :cond_5b
    move-object/from16 v7, v22

    .line 147
    :cond_5c
    :goto_3f
    iget-object v4, v0, Le/a/h/b/d/a/b/g;->x:Le/a/f4/g/j;

    invoke-interface {v4, v7}, Le/a/f4/g/j;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5d

    iget-object v4, v0, Le/a/h/b/d/a/b/g;->j:Le/a/h/b/d/b/k;

    invoke-interface {v4, v1}, Le/a/h/b/d/b/k;->b(I)Z

    move-result v4

    if-eqz v4, :cond_5d

    const/4 v9, 0x1

    goto :goto_40

    :cond_5d
    move v9, v3

    :goto_40
    invoke-interface {v2, v9}, Le/a/h/a0;->s(Z)V

    .line 148
    iget-boolean v3, v0, Le/a/h/b/d/a/b/g;->k:Z

    if-nez v3, :cond_60

    iget-object v3, v0, Le/a/h/b/d/a/b/g;->m:Lcom/truecaller/settings/CallingSettings;

    const-string v4, "hasViewProfileTooltipDismissed"

    invoke-interface {v3, v4}, Lcom/truecaller/settings/CallingSettings;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_60

    .line 149
    invoke-virtual/range {p0 .. p0}, Le/a/h/b/d/a/b/e;->getItemCount()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5e

    if-eqz v1, :cond_5f

    :cond_5e
    invoke-virtual/range {p0 .. p0}, Le/a/h/b/d/a/b/e;->getItemCount()I

    move-result v3

    if-le v3, v4, :cond_60

    if-ne v1, v4, :cond_60

    .line 150
    :cond_5f
    invoke-interface {v2}, Le/a/h/b/d/a/b/i;->i1()V

    .line 151
    iput-boolean v4, v0, Le/a/h/b/d/a/b/g;->k:Z

    .line 152
    :cond_60
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    sub-long v1, v1, v18

    .line 153
    iget-object v3, v0, Le/a/h/b/d/a/b/g;->w:Le/a/h/b/w;

    invoke-interface {v3, v1, v2}, Le/a/h/b/w;->f(J)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
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
    iget-object v0, p0, Le/a/h/b/d/a/b/g;->m:Lcom/truecaller/settings/CallingSettings;

    const-string v2, "madeCallsFromCallLog"

    invoke-interface {v0, v2}, Lcom/truecaller/settings/CallingSettings;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Le/a/h/b/d/a/b/g;->m:Lcom/truecaller/settings/CallingSettings;

    invoke-interface {v0, v2, v1}, Lcom/truecaller/settings/CallingSettings;->putBoolean(Ljava/lang/String;Z)V

    .line 6
    :cond_1
    sget-object v0, Lcom/truecaller/analytics/common/event/ViewActionEvent$CallSubAction;->ITEM:Lcom/truecaller/analytics/common/event/ViewActionEvent$CallSubAction;

    invoke-virtual {v0}, Lcom/truecaller/analytics/common/event/ViewActionEvent$CallSubAction;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 7
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
    iget-object p1, p0, Le/a/h/b/d/a/b/g;->m:Lcom/truecaller/settings/CallingSettings;

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
