.class public final Le/a/h/b/d/a/b/q;
.super Le/a/h/b/d/a/b/e;
.source "SourceFile"

# interfaces
.implements Le/a/h/b/d/a/b/t;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/h/b/d/a/b/e<",
        "Le/a/h/b/d/a/b/u;",
        ">;",
        "Le/a/h/b/d/a/b/t;"
    }
.end annotation


# instance fields
.field public final i:Le/a/o5/s1;

.field public final j:Le/a/y/c/b;

.field public final k:Le/a/y/c/i;

.field public final l:Le/a/o5/b0;

.field public final m:Le/a/p5/c0;


# direct methods
.method public constructor <init>(Le/a/h/b/d/a/b/b;Le/a/h/b/p0;Le/a/q2/a;Le/a/h/b/f;Le/a/d/c0/s1;Le/a/o5/s1;Le/a/y/c/b;Le/a/y/c/i;Le/a/o5/b0;Le/a/p5/c0;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "callHistoryDataHolder"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phoneActionsHandler"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionModeHandler"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "voipUtil"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "telecomUtils"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flashManager"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flashPoint"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dateHelper"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct/range {p0 .. p5}, Le/a/h/b/d/a/b/e;-><init>(Le/a/h/b/d/a/b/b;Le/a/h/b/p0;Le/a/q2/a;Le/a/h/b/f;Le/a/d/c0/s1;)V

    iput-object p6, p0, Le/a/h/b/d/a/b/q;->i:Le/a/o5/s1;

    iput-object p7, p0, Le/a/h/b/d/a/b/q;->j:Le/a/y/c/b;

    iput-object p8, p0, Le/a/h/b/d/a/b/q;->k:Le/a/y/c/i;

    iput-object p9, p0, Le/a/h/b/d/a/b/q;->l:Le/a/o5/b0;

    iput-object p10, p0, Le/a/h/b/d/a/b/q;->m:Le/a/p5/c0;

    return-void
.end method


# virtual methods
.method public F(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public G(Ljava/lang/Object;I)V
    .locals 27

    move-object/from16 v0, p0

    .line 1
    move-object/from16 v1, p1

    check-cast v1, Le/a/h/b/d/a/b/u;

    const-string v2, "itemView"

    .line 2
    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual/range {p0 .. p0}, Le/a/h/b/d/a/b/e;->B()Ljava/util/List;

    move-result-object v2

    move/from16 v3, p2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/h/b/d/b/i;

    .line 4
    iget-object v2, v2, Le/a/h/b/d/b/i;->c:Lcom/truecaller/data/entity/HistoryEvent;

    .line 5
    iget-object v3, v2, Lcom/truecaller/data/entity/HistoryEvent;->f:Lcom/truecaller/data/entity/Contact;

    .line 6
    invoke-static {v3}, Le/a/n/g0;->c0(Lcom/truecaller/data/entity/Contact;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move-object v3, v5

    :goto_0
    if-eqz v3, :cond_1

    .line 7
    invoke-virtual {v3}, Lcom/truecaller/data/entity/Contact;->w()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    iget-object v4, v2, Lcom/truecaller/data/entity/HistoryEvent;->b:Ljava/lang/String;

    .line 9
    :goto_1
    invoke-static {v4}, Le/a/b0/q/o;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "GUIUtils.bidiFormat(cont\u2026ryEvent.normalizedNumber)"

    invoke-static {v4, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object v9, v2, Lcom/truecaller/data/entity/HistoryEvent;->b:Ljava/lang/String;

    const/4 v6, 0x0

    if-eqz v3, :cond_2

    .line 11
    invoke-virtual {v3}, Lcom/truecaller/data/entity/Contact;->A0()Z

    move-result v7

    move v12, v7

    goto :goto_2

    :cond_2
    move v12, v6

    :goto_2
    if-eqz v3, :cond_3

    .line 12
    iget v7, v3, Lcom/truecaller/data/entity/Contact;->r:I

    .line 13
    iget-object v8, v3, Lcom/truecaller/data/entity/Contact;->y:Lcom/truecaller/data/entity/Contact$PremiumLevel;

    .line 14
    invoke-static {v7, v8}, Le/a/o5/t;->f(ILcom/truecaller/data/entity/Contact$PremiumLevel;)I

    move-result v7

    goto :goto_3

    :cond_3
    move v7, v6

    .line 15
    :goto_3
    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    const-string v10, "(this as java.lang.String).toCharArray()"

    invoke-static {v8, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8}, Le/q/f/a/d/a;->t0([C)Ljava/lang/Character;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-virtual {v8}, Ljava/lang/Character;->charValue()C

    move-result v8

    .line 16
    invoke-static {v8}, Ljava/lang/Character;->isLetter(C)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-static {v8}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    :cond_4
    move-object v8, v5

    :goto_4
    move-object v11, v8

    goto :goto_5

    :cond_5
    move-object v11, v5

    .line 17
    :goto_5
    new-instance v15, Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    const/4 v14, 0x1

    if-eqz v3, :cond_6

    .line 18
    invoke-static {v3, v14}, Le/a/e/a2;->B(Lcom/truecaller/data/entity/Contact;Z)Landroid/net/Uri;

    move-result-object v3

    move-object v8, v3

    goto :goto_6

    :cond_6
    move-object v8, v5

    :goto_6
    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v3, 0x0

    const/16 v16, 0x0

    const/16 v14, 0x20

    if-ne v7, v14, :cond_7

    const/16 v17, 0x1

    goto :goto_7

    :cond_7
    move/from16 v17, v6

    :goto_7
    const/4 v14, 0x4

    if-ne v7, v14, :cond_8

    const/16 v18, 0x1

    goto :goto_8

    :cond_8
    move/from16 v18, v6

    :goto_8
    const/16 v14, 0x80

    if-ne v7, v14, :cond_9

    const/16 v19, 0x1

    goto :goto_9

    :cond_9
    move/from16 v19, v6

    :goto_9
    const/16 v14, 0x100

    if-ne v7, v14, :cond_a

    const/16 v20, 0x1

    goto :goto_a

    :cond_a
    move/from16 v20, v6

    :goto_a
    const/16 v14, 0x10

    if-ne v7, v14, :cond_b

    const/16 v25, 0x1

    goto :goto_b

    :cond_b
    move/from16 v25, v6

    :goto_b
    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const v24, 0xe0e4

    move-object v7, v15

    const/16 v26, 0x1

    move v14, v3

    move-object v3, v15

    move/from16 v15, v16

    move/from16 v16, v18

    move/from16 v18, v19

    move/from16 v19, v20

    move/from16 v20, v25

    .line 19
    invoke-direct/range {v7 .. v24}, Lcom/truecaller/common/ui/avatar/AvatarXConfig;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZZZZZLjava/lang/Integer;ZI)V

    .line 20
    invoke-interface {v1, v3}, Le/a/h/b/d/a/b/u;->a(Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V

    .line 21
    iget-object v3, v2, Lcom/truecaller/data/entity/HistoryEvent;->b:Ljava/lang/String;

    .line 22
    invoke-interface {v1, v3}, Le/a/h/b/d/a/b/u;->j(Ljava/lang/String;)V

    .line 23
    invoke-interface {v1, v4}, Le/a/h/h0;->setTitle(Ljava/lang/String;)V

    .line 24
    new-instance v3, Le/a/h/b/d/a/b/a;

    .line 25
    iget-object v7, v0, Le/a/h/b/d/a/b/q;->m:Le/a/p5/c0;

    const v8, 0x7f1210ce

    new-array v9, v6, [Ljava/lang/Object;

    invoke-interface {v7, v8, v9}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v7, "resourceProvider.getStri\u2026string.waiting_for_reply)"

    invoke-static {v8, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iget-object v7, v0, Le/a/h/b/d/a/b/q;->m:Le/a/p5/c0;

    const v9, 0x7f080704

    invoke-interface {v7, v9}, Le/a/p5/c0;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 27
    sget-object v13, Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;->BLUE:Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;

    const/4 v10, 0x0

    move-object v7, v3

    move-object v11, v13

    move-object v12, v13

    .line 28
    invoke-direct/range {v7 .. v13}, Le/a/h/b/d/a/b/a;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;)V

    .line 29
    invoke-interface {v1, v3}, Le/a/h/b/d/a/b/d;->j2(Le/a/h/b/d/a/b/a;)V

    .line 30
    iget-object v3, v0, Le/a/h/b/d/a/b/q;->l:Le/a/o5/b0;

    .line 31
    iget-wide v7, v2, Lcom/truecaller/data/entity/HistoryEvent;->h:J

    .line 32
    invoke-interface {v3, v7, v8}, Le/a/o5/b0;->v(J)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Le/a/h/b/d/a/b/u;->M(Ljava/lang/String;)V

    .line 33
    iget-boolean v3, v0, Le/a/o2/c;->a:Z

    if-eqz v3, :cond_c

    .line 34
    iget-object v3, v0, Le/a/h/b/d/a/b/e;->c:Le/a/h/b/d/a/b/b;

    .line 35
    invoke-interface {v3, v2}, Le/a/h/b/d/a/b/b;->pb(Lcom/truecaller/data/entity/HistoryEvent;)Z

    move-result v3

    if-eqz v3, :cond_c

    move/from16 v14, v26

    goto :goto_c

    :cond_c
    move v14, v6

    :goto_c
    invoke-interface {v1, v14}, Le/a/h/b/d/a/b/d;->b(Z)V

    .line 36
    iget-object v2, v2, Lcom/truecaller/data/entity/HistoryEvent;->b:Ljava/lang/String;

    .line 37
    iget-object v3, v0, Le/a/h/b/d/a/b/q;->k:Le/a/y/c/i;

    const-string v7, "$this$isFlashEnabled"

    .line 38
    invoke-static {v3, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x2

    .line 39
    invoke-interface {v3, v7, v5}, Le/a/y/c/i;->w(ILjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e

    if-eqz v2, :cond_e

    .line 40
    invoke-interface {v3, v7, v2}, Le/a/y/c/i;->w(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    goto :goto_d

    :cond_d
    move-object v2, v5

    :goto_d
    if-eqz v2, :cond_e

    const-string v3, "+"

    const-string v7, ""

    const/4 v8, 0x4

    .line 41
    invoke-static {v2, v3, v7, v6, v8}, Ls1/f0/r;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ls1/f0/q;->j(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 42
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    new-instance v5, Le/a/h/t;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v3, "callHistory"

    invoke-direct {v5, v2, v4, v3}, Le/a/h/t;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :cond_e
    invoke-interface {v1, v5}, Le/a/h/s;->G0(Le/a/h/t;)V

    return-void
.end method

.method public H(Lcom/truecaller/calling/ActionType;I)Z
    .locals 0

    const-string p2, "primaryAction"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public m(I)Z
    .locals 11

    .line 1
    invoke-virtual {p0}, Le/a/h/b/d/a/b/e;->B()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/h/b/d/b/i;

    .line 2
    iget-object v0, v0, Le/a/h/b/d/b/i;->c:Lcom/truecaller/data/entity/HistoryEvent;

    .line 3
    iget-object v1, v0, Lcom/truecaller/data/entity/HistoryEvent;->b:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    const-string v3, "historyEvent.normalizedNumber ?: return false"

    .line 4
    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v3, p0, Le/a/h/b/d/a/b/e;->c:Le/a/h/b/d/a/b/b;

    .line 6
    invoke-interface {v3}, Le/a/h/b/d/a/b/b;->Ka()Ljava/util/Map;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 7
    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    .line 8
    sget-object v4, Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;->Companion:Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType$a;

    .line 9
    iget-object v5, p0, Le/a/h/b/d/a/b/q;->i:Le/a/o5/s1;

    .line 10
    invoke-virtual {v4, v0, v5}, Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType$a;->b(Lcom/truecaller/data/entity/HistoryEvent;Le/a/o5/s1;)Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;

    move-result-object v4

    sget-object v5, Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;->FLASH_MESSAGE:Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;

    if-ne v4, v5, :cond_0

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 12
    iget-wide v6, v0, Lcom/truecaller/data/entity/HistoryEvent;->h:J

    sub-long/2addr v4, v6

    const-wide/32 v6, 0xea60

    cmp-long v0, v4, v6

    if-gez v0, :cond_0

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v0, p0, Le/a/h/b/d/a/b/q;->j:Le/a/y/c/b;

    const/4 v8, 0x4

    const-string v9, "+"

    const-string v10, ""

    .line 14
    invoke-static {v1, v9, v10, v2, v8}, Ls1/f0/r;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v1

    .line 15
    invoke-interface {v0, v1}, Le/a/y/c/b;->e(Ljava/lang/String;)Le/a/y/d/h;

    move-result-object v0

    .line 16
    iget-wide v0, v0, Le/a/y/d/h;->b:J

    sub-long/2addr v4, v0

    cmp-long v0, v4, v6

    if-gez v0, :cond_0

    const/4 v2, 0x1

    .line 17
    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 18
    invoke-interface {v3, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    :cond_1
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :cond_2
    return v2
.end method
