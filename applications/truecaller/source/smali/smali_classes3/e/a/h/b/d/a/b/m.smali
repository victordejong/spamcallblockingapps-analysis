.class public final Le/a/h/b/d/a/b/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/h/b/d/a/b/l;


# instance fields
.field public final a:Z

.field public final b:Le/a/o5/s1;

.field public final c:Le/a/p5/c0;

.field public final d:Le/a/e4/b0;

.field public final e:Le/a/b0/q/h0;

.field public final f:Le/a/h/b/d/b/a;

.field public final g:Le/a/a0/p;

.field public final h:Le/a/b0/a/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/b0/a/b/b<",
            "Lcom/truecaller/data/entity/Contact;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Le/a/z2/a;


# direct methods
.method public constructor <init>(Le/a/e4/p;Le/a/o5/s1;Le/a/p5/c0;Le/a/e4/b0;Le/a/b0/q/h0;Le/a/h/b/d/b/a;Le/a/a0/p;Le/a/b0/a/b/b;Le/a/z2/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/e4/p;",
            "Le/a/o5/s1;",
            "Le/a/p5/c0;",
            "Le/a/e4/b0;",
            "Le/a/b0/q/h0;",
            "Le/a/h/b/d/b/a;",
            "Le/a/a0/p;",
            "Le/a/b0/a/b/b<",
            "Lcom/truecaller/data/entity/Contact;",
            ">;",
            "Le/a/z2/a;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "multiSimManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "telecomUtils"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "simInfoCache"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "specialNumberResolver"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callLogItemTypeHelper"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "spamCategoryBuilder"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "avatarXConfigProvider"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "badgeHelper"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Le/a/h/b/d/a/b/m;->b:Le/a/o5/s1;

    iput-object p3, p0, Le/a/h/b/d/a/b/m;->c:Le/a/p5/c0;

    iput-object p4, p0, Le/a/h/b/d/a/b/m;->d:Le/a/e4/b0;

    iput-object p5, p0, Le/a/h/b/d/a/b/m;->e:Le/a/b0/q/h0;

    iput-object p6, p0, Le/a/h/b/d/a/b/m;->f:Le/a/h/b/d/b/a;

    iput-object p7, p0, Le/a/h/b/d/a/b/m;->g:Le/a/a0/p;

    iput-object p8, p0, Le/a/h/b/d/a/b/m;->h:Le/a/b0/a/b/b;

    iput-object p9, p0, Le/a/h/b/d/a/b/m;->i:Le/a/z2/a;

    .line 2
    invoke-interface {p1}, Le/a/e4/p;->h()Z

    move-result p1

    iput-boolean p1, p0, Le/a/h/b/d/a/b/m;->a:Z

    return-void
.end method


# virtual methods
.method public a(Le/a/h/b/d/b/i;)Le/a/h/b/d/a/b/k;
    .locals 36

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "mergedCall"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v2, v1, Le/a/h/b/d/b/i;->c:Lcom/truecaller/data/entity/HistoryEvent;

    .line 2
    invoke-static {v2}, Le/a/n/g0;->a0(Lcom/truecaller/data/entity/HistoryEvent;)Z

    move-result v5

    .line 3
    iget-object v3, v0, Le/a/h/b/d/a/b/m;->f:Le/a/h/b/d/b/a;

    iget-object v4, v0, Le/a/h/b/d/a/b/m;->b:Le/a/o5/s1;

    .line 4
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "historyEvent"

    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    sget-object v3, Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;->Companion:Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType$a;

    invoke-virtual {v3, v2, v4}, Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType$a;->b(Lcom/truecaller/data/entity/HistoryEvent;Le/a/o5/s1;)Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;

    move-result-object v11

    .line 6
    iget-object v3, v2, Lcom/truecaller/data/entity/HistoryEvent;->b:Ljava/lang/String;

    const/4 v15, 0x0

    const/4 v13, 0x1

    const/16 v17, 0x0

    if-eqz v3, :cond_3

    if-nez v5, :cond_2

    const-string v4, "it"

    .line 7
    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    move v4, v13

    goto :goto_0

    :cond_0
    move v4, v15

    :goto_0
    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move v4, v15

    goto :goto_2

    :cond_2
    :goto_1
    move v4, v13

    :goto_2
    if-nez v4, :cond_3

    move-object v9, v3

    goto :goto_3

    :cond_3
    move-object/from16 v9, v17

    :goto_3
    if-eqz v5, :cond_4

    move-object/from16 v8, v17

    goto :goto_4

    :cond_4
    if-eqz v9, :cond_5

    move-object v8, v9

    goto :goto_4

    .line 8
    :cond_5
    iget-object v3, v2, Lcom/truecaller/data/entity/HistoryEvent;->c:Ljava/lang/String;

    move-object v8, v3

    .line 9
    :goto_4
    iget-object v3, v2, Lcom/truecaller/data/entity/HistoryEvent;->f:Lcom/truecaller/data/entity/Contact;

    .line 10
    invoke-static {v3}, Le/a/n/g0;->c0(Lcom/truecaller/data/entity/Contact;)Z

    move-result v4

    if-eqz v4, :cond_6

    move-object v10, v3

    goto :goto_5

    :cond_6
    move-object/from16 v10, v17

    .line 11
    :goto_5
    iget-object v3, v2, Lcom/truecaller/data/entity/HistoryEvent;->f:Lcom/truecaller/data/entity/Contact;

    if-eqz v3, :cond_7

    .line 12
    invoke-virtual {v3}, Lcom/truecaller/data/entity/Contact;->M()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-static {v3}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/truecaller/data/entity/Number;

    goto :goto_6

    :cond_7
    move-object/from16 v3, v17

    :goto_6
    const/4 v14, 0x2

    if-eqz v5, :cond_8

    .line 13
    iget-object v4, v0, Le/a/h/b/d/a/b/m;->c:Le/a/p5/c0;

    const v6, 0x7f1202d2

    new-array v7, v15, [Ljava/lang/Object;

    invoke-interface {v4, v6, v7}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_9

    .line 14
    :cond_8
    sget-object v4, Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;->VOIP_GROUP_CALL:Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;

    if-ne v11, v4, :cond_9

    iget-object v4, v0, Le/a/h/b/d/a/b/m;->c:Le/a/p5/c0;

    const v6, 0x7f12108d

    new-array v7, v13, [Ljava/lang/Object;

    const v12, 0x7f1210cb

    new-array v13, v15, [Ljava/lang/Object;

    invoke-interface {v4, v12, v13}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v7, v15

    invoke-interface {v4, v6, v7}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_9

    :cond_9
    if-eqz v10, :cond_c

    .line 15
    invoke-virtual {v10}, Lcom/truecaller/data/entity/Contact;->w()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_b

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_a

    goto :goto_7

    :cond_a
    move v4, v15

    goto :goto_8

    :cond_b
    :goto_7
    const/4 v4, 0x1

    :goto_8
    if-nez v4, :cond_c

    invoke-virtual {v10}, Lcom/truecaller/data/entity/Contact;->w()Ljava/lang/String;

    move-result-object v4

    goto :goto_9

    .line 16
    :cond_c
    iget-object v4, v0, Le/a/h/b/d/a/b/m;->e:Le/a/b0/q/h0;

    new-array v6, v14, [Ljava/lang/String;

    .line 17
    iget-object v7, v2, Lcom/truecaller/data/entity/HistoryEvent;->c:Ljava/lang/String;

    aput-object v7, v6, v15

    .line 18
    iget-object v7, v2, Lcom/truecaller/data/entity/HistoryEvent;->b:Ljava/lang/String;

    const/4 v12, 0x1

    aput-object v7, v6, v12

    .line 19
    invoke-interface {v4, v6}, Le/a/b0/q/h0;->d([Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 20
    iget-object v4, v0, Le/a/h/b/d/a/b/m;->c:Le/a/p5/c0;

    const v6, 0x7f120f98

    new-array v7, v15, [Ljava/lang/Object;

    invoke-interface {v4, v6, v7}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_9

    .line 21
    :cond_d
    iget-object v4, v0, Le/a/h/b/d/a/b/m;->e:Le/a/b0/q/h0;

    .line 22
    iget-object v6, v2, Lcom/truecaller/data/entity/HistoryEvent;->c:Ljava/lang/String;

    .line 23
    invoke-interface {v4, v6}, Le/a/b0/q/h0;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    iget-object v4, v0, Le/a/h/b/d/a/b/m;->e:Le/a/b0/q/h0;

    invoke-interface {v4}, Le/a/b0/q/h0;->c()Ljava/lang/String;

    move-result-object v4

    goto :goto_9

    :cond_e
    move-object/from16 v4, v17

    :goto_9
    if-eqz v3, :cond_f

    .line 24
    invoke-virtual {v3}, Lcom/truecaller/data/entity/Number;->g()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_f

    goto :goto_a

    :cond_f
    move-object v3, v8

    :goto_a
    if-eqz v4, :cond_10

    goto :goto_b

    :cond_10
    move-object v4, v3

    .line 25
    :goto_b
    invoke-static {v4}, Le/a/b0/q/o;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    const-string v3, "GUIUtils.bidiFormat(displayName ?: displayNumber)"

    invoke-static {v7, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    new-instance v13, Le/a/h/b/d/a/b/p;

    if-eqz v10, :cond_11

    .line 27
    invoke-virtual {v10}, Lcom/truecaller/data/entity/Contact;->A0()Z

    move-result v3

    move v4, v3

    goto :goto_c

    :cond_11
    move v4, v15

    .line 28
    :goto_c
    iget v3, v2, Lcom/truecaller/data/entity/HistoryEvent;->r:I

    const/4 v12, 0x1

    if-ne v3, v12, :cond_12

    move v6, v12

    goto :goto_d

    :cond_12
    move v6, v15

    .line 29
    :goto_d
    invoke-virtual {v2}, Lcom/truecaller/data/entity/Entity;->getId()Ljava/lang/Long;

    move-result-object v16

    .line 30
    iget-wide v2, v2, Lcom/truecaller/data/entity/HistoryEvent;->h:J

    .line 31
    invoke-static {v10}, Le/a/n/g0;->c0(Lcom/truecaller/data/entity/Contact;)Z

    move-result v18

    if-eqz v18, :cond_15

    .line 32
    iget-object v12, v0, Le/a/h/b/d/a/b/m;->i:Le/a/z2/a;

    invoke-interface {v12, v10}, Le/a/z2/a;->b(Lcom/truecaller/data/entity/Contact;)Z

    move-result v12

    if-eqz v12, :cond_13

    sget-object v12, Lcom/truecaller/calling/dialer/call_log/items/entries/ContactBadge;->VERIFIED:Lcom/truecaller/calling/dialer/call_log/items/entries/ContactBadge;

    goto :goto_e

    .line 33
    :cond_13
    iget-object v12, v0, Le/a/h/b/d/a/b/m;->i:Le/a/z2/a;

    invoke-interface {v12, v10}, Le/a/z2/a;->a(Lcom/truecaller/data/entity/Contact;)Z

    move-result v12

    if-eqz v12, :cond_14

    sget-object v12, Lcom/truecaller/calling/dialer/call_log/items/entries/ContactBadge;->TRUE_BADGE:Lcom/truecaller/calling/dialer/call_log/items/entries/ContactBadge;

    goto :goto_e

    .line 34
    :cond_14
    sget-object v12, Lcom/truecaller/calling/dialer/call_log/items/entries/ContactBadge;->NONE:Lcom/truecaller/calling/dialer/call_log/items/entries/ContactBadge;

    goto :goto_e

    .line 35
    :cond_15
    sget-object v12, Lcom/truecaller/calling/dialer/call_log/items/entries/ContactBadge;->NONE:Lcom/truecaller/calling/dialer/call_log/items/entries/ContactBadge;

    :goto_e
    move-object/from16 v19, v12

    .line 36
    iget-object v12, v1, Le/a/h/b/d/b/i;->a:Ljava/util/Set;

    move-wide/from16 v20, v2

    move-object v3, v13

    move-object v2, v12

    const/16 v18, 0x1

    move-object/from16 v12, v16

    move-object/from16 v22, v13

    move-wide/from16 v13, v20

    move-object/from16 v15, v19

    move-object/from16 v16, v2

    .line 37
    invoke-direct/range {v3 .. v16}, Le/a/h/b/d/a/b/p;-><init>(ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/data/entity/Contact;Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;Ljava/lang/Long;JLcom/truecaller/calling/dialer/call_log/items/entries/ContactBadge;Ljava/util/Set;)V

    .line 38
    new-instance v2, Le/a/h/b/d/a/b/k;

    .line 39
    iget-object v3, v1, Le/a/h/b/d/b/i;->c:Lcom/truecaller/data/entity/HistoryEvent;

    .line 40
    iget-object v4, v0, Le/a/h/b/d/a/b/m;->d:Le/a/e4/b0;

    .line 41
    iget-object v5, v3, Lcom/truecaller/data/entity/HistoryEvent;->k:Ljava/lang/String;

    .line 42
    invoke-interface {v4, v5}, Le/a/e4/b0;->get(Ljava/lang/String;)Lcom/truecaller/multisim/SimInfo;

    move-result-object v4

    if-eqz v4, :cond_17

    iget-boolean v5, v0, Le/a/h/b/d/a/b/m;->a:Z

    if-eqz v5, :cond_16

    goto :goto_f

    :cond_16
    move-object/from16 v4, v17

    :goto_f
    if-eqz v4, :cond_17

    iget v4, v4, Lcom/truecaller/multisim/SimInfo;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_10

    :cond_17
    move-object/from16 v4, v17

    :goto_10
    move-object/from16 v5, v22

    .line 43
    iget-object v6, v5, Le/a/h/b/d/a/b/p;->h:Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;

    .line 44
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/4 v7, 0x6

    if-eqz v6, :cond_1b

    const/4 v8, 0x1

    if-eq v6, v8, :cond_1a

    const/4 v9, 0x5

    if-eq v6, v9, :cond_19

    if-eq v6, v7, :cond_19

    .line 45
    iget-object v6, v5, Le/a/h/b/d/a/b/p;->h:Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;

    .line 46
    invoke-virtual {v6}, Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;->isVideo()Z

    move-result v6

    if-eqz v6, :cond_18

    sget-object v6, Lcom/truecaller/calling/dialer/call_log/items/entries/CallIconType;->VIDEO:Lcom/truecaller/calling/dialer/call_log/items/entries/CallIconType;

    goto :goto_11

    :cond_18
    invoke-static {v3}, Le/a/e/a2;->u(Lcom/truecaller/data/entity/HistoryEvent;)Lcom/truecaller/calling/dialer/call_log/items/entries/CallIconType;

    move-result-object v6

    goto :goto_11

    .line 47
    :cond_19
    sget-object v6, Lcom/truecaller/calling/dialer/call_log/items/entries/CallIconType;->VOIP:Lcom/truecaller/calling/dialer/call_log/items/entries/CallIconType;

    goto :goto_11

    .line 48
    :cond_1a
    sget-object v6, Lcom/truecaller/calling/dialer/call_log/items/entries/CallIconType;->WHATSAPP:Lcom/truecaller/calling/dialer/call_log/items/entries/CallIconType;

    goto :goto_11

    :cond_1b
    const/4 v8, 0x1

    .line 49
    sget-object v6, Lcom/truecaller/calling/dialer/call_log/items/entries/CallIconType;->FLASH:Lcom/truecaller/calling/dialer/call_log/items/entries/CallIconType;

    .line 50
    :goto_11
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    if-eq v9, v7, :cond_1e

    const/4 v7, 0x7

    if-eq v9, v7, :cond_1d

    const/16 v7, 0x8

    if-eq v9, v7, :cond_1c

    move-object/from16 v7, v17

    const/4 v10, 0x0

    goto :goto_12

    .line 51
    :cond_1c
    iget-object v7, v0, Le/a/h/b/d/a/b/m;->c:Le/a/p5/c0;

    const v9, 0x7f12090d

    const/4 v10, 0x0

    new-array v11, v10, [Ljava/lang/Object;

    invoke-interface {v7, v9, v11}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_12

    :cond_1d
    const/4 v10, 0x0

    .line 52
    iget-object v7, v0, Le/a/h/b/d/a/b/m;->c:Le/a/p5/c0;

    const v9, 0x7f12090f

    new-array v11, v10, [Ljava/lang/Object;

    invoke-interface {v7, v9, v11}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_12

    :cond_1e
    const/4 v10, 0x0

    .line 53
    iget-object v7, v0, Le/a/h/b/d/a/b/m;->c:Le/a/p5/c0;

    const v9, 0x7f12090e

    new-array v11, v10, [Ljava/lang/Object;

    invoke-interface {v7, v9, v11}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 54
    :goto_12
    iget-object v9, v1, Le/a/h/b/d/b/i;->c:Lcom/truecaller/data/entity/HistoryEvent;

    .line 55
    iget-object v11, v5, Le/a/h/b/d/a/b/p;->h:Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;

    .line 56
    sget-object v12, Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;->FLASH_MESSAGE:Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;

    const/4 v13, 0x3

    if-ne v11, v12, :cond_1f

    iget-object v7, v0, Le/a/h/b/d/a/b/m;->c:Le/a/p5/c0;

    const v9, 0x7f12090c

    new-array v11, v10, [Ljava/lang/Object;

    invoke-interface {v7, v9, v11}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_16

    .line 57
    :cond_1f
    iget-boolean v11, v5, Le/a/h/b/d/a/b/p;->c:Z

    if-eqz v11, :cond_22

    .line 58
    iget-object v7, v9, Lcom/truecaller/data/entity/HistoryEvent;->u:Ljava/lang/String;

    .line 59
    invoke-static {v7}, Le/a/a3/c;->a(Ljava/lang/String;)Lcom/truecaller/blocking/ActionSource;

    move-result-object v7

    .line 60
    sget-object v9, Le/a/a3/c;->a:Ljava/util/List;

    .line 61
    invoke-interface {v9, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_20

    move-object/from16 v7, v17

    :cond_20
    if-eqz v7, :cond_21

    .line 62
    iget-object v9, v0, Le/a/h/b/d/a/b/m;->c:Le/a/p5/c0;

    invoke-static {v7}, Le/a/a3/c;->b(Lcom/truecaller/blocking/ActionSource;)I

    move-result v7

    new-array v11, v10, [Ljava/lang/Object;

    invoke-interface {v9, v7, v11}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_21

    goto :goto_13

    .line 63
    :cond_21
    iget-object v7, v0, Le/a/h/b/d/a/b/m;->c:Le/a/p5/c0;

    const v9, 0x7f12090b

    new-array v11, v10, [Ljava/lang/Object;

    invoke-interface {v7, v9, v11}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    :goto_13
    const-string v9, "getBlockedReasonIfAvaila\u2026all_history_blocked_call)"

    invoke-static {v7, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_16

    .line 64
    :cond_22
    iget v11, v9, Lcom/truecaller/data/entity/HistoryEvent;->r:I

    if-ne v11, v13, :cond_24

    .line 65
    iget-object v7, v5, Le/a/h/b/d/a/b/p;->g:Lcom/truecaller/data/entity/Contact;

    if-eqz v7, :cond_23

    .line 66
    invoke-static {v7}, Le/a/l4/k;->X(Lcom/truecaller/data/entity/Contact;)Lcom/truecaller/data/entity/SpamCategoryModel;

    move-result-object v7

    if-eqz v7, :cond_23

    invoke-virtual {v7}, Lcom/truecaller/data/entity/SpamCategoryModel;->getLabel()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_23

    goto :goto_16

    :cond_23
    iget-object v7, v0, Le/a/h/b/d/a/b/m;->c:Le/a/p5/c0;

    const v9, 0x7f120917

    new-array v11, v10, [Ljava/lang/Object;

    invoke-interface {v7, v9, v11}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "resourceProvider.getStri\u2026call_history_silent_call)"

    invoke-static {v7, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_16

    .line 67
    :cond_24
    iget-boolean v11, v5, Le/a/h/b/d/a/b/p;->a:Z

    if-eqz v11, :cond_27

    .line 68
    iget-object v7, v0, Le/a/h/b/d/a/b/m;->g:Le/a/a0/p;

    .line 69
    iget-object v9, v5, Le/a/h/b/d/a/b/p;->g:Lcom/truecaller/data/entity/Contact;

    if-eqz v9, :cond_25

    .line 70
    invoke-virtual {v9}, Lcom/truecaller/data/entity/Contact;->a0()I

    move-result v15

    move/from16 v25, v15

    goto :goto_14

    :cond_25
    move/from16 v25, v10

    .line 71
    :goto_14
    iget-object v9, v5, Le/a/h/b/d/a/b/p;->g:Lcom/truecaller/data/entity/Contact;

    if-eqz v9, :cond_26

    .line 72
    invoke-static {v9}, Le/a/l4/k;->X(Lcom/truecaller/data/entity/Contact;)Lcom/truecaller/data/entity/SpamCategoryModel;

    move-result-object v9

    move-object/from16 v26, v9

    goto :goto_15

    :cond_26
    move-object/from16 v26, v17

    :goto_15
    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x4

    const/16 v30, 0x0

    move-object/from16 v24, v7

    .line 73
    invoke-static/range {v24 .. v30}, Le/a/l4/k;->s(Le/a/a0/p;ILcom/truecaller/data/entity/SpamCategoryModel;IZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    :goto_16
    const/4 v11, 0x2

    goto :goto_18

    :cond_27
    if-eqz v7, :cond_2b

    .line 74
    iget v9, v9, Lcom/truecaller/data/entity/HistoryEvent;->q:I

    if-eq v9, v8, :cond_2a

    const/4 v11, 0x2

    if-eq v9, v11, :cond_29

    if-eq v9, v13, :cond_28

    goto :goto_17

    .line 75
    :cond_28
    iget-object v9, v0, Le/a/h/b/d/a/b/m;->c:Le/a/p5/c0;

    const v12, 0x7f120912

    new-array v14, v8, [Ljava/lang/Object;

    aput-object v7, v14, v10

    invoke-interface {v9, v12, v14}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_18

    .line 76
    :cond_29
    iget-object v9, v0, Le/a/h/b/d/a/b/m;->c:Le/a/p5/c0;

    const v12, 0x7f120914

    new-array v14, v8, [Ljava/lang/Object;

    aput-object v7, v14, v10

    invoke-interface {v9, v12, v14}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_18

    :cond_2a
    const/4 v11, 0x2

    .line 77
    iget-object v9, v0, Le/a/h/b/d/a/b/m;->c:Le/a/p5/c0;

    const v12, 0x7f120916

    new-array v14, v8, [Ljava/lang/Object;

    aput-object v7, v14, v10

    invoke-interface {v9, v12, v14}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_18

    :cond_2b
    const/4 v11, 0x2

    .line 78
    iget v7, v9, Lcom/truecaller/data/entity/HistoryEvent;->q:I

    if-eq v7, v8, :cond_2e

    if-eq v7, v11, :cond_2d

    if-eq v7, v13, :cond_2c

    :goto_17
    const-string v7, ""

    goto :goto_18

    .line 79
    :cond_2c
    iget-object v7, v0, Le/a/h/b/d/a/b/m;->c:Le/a/p5/c0;

    const v9, 0x7f120911

    new-array v12, v10, [Ljava/lang/Object;

    invoke-interface {v7, v9, v12}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_18

    .line 80
    :cond_2d
    iget-object v7, v0, Le/a/h/b/d/a/b/m;->c:Le/a/p5/c0;

    const v9, 0x7f120913

    new-array v12, v10, [Ljava/lang/Object;

    invoke-interface {v7, v9, v12}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_18

    .line 81
    :cond_2e
    iget-object v7, v0, Le/a/h/b/d/a/b/m;->c:Le/a/p5/c0;

    const v9, 0x7f120915

    new-array v12, v10, [Ljava/lang/Object;

    invoke-interface {v7, v9, v12}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    :goto_18
    const-string v9, "when {\n            item.\u2026}\n            }\n        }"

    .line 82
    invoke-static {v7, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    instance-of v9, v1, Le/a/h/b/d/b/m;

    if-eqz v9, :cond_2f

    check-cast v1, Le/a/h/b/d/b/m;

    .line 84
    iget v1, v1, Le/a/h/b/d/b/m;->d:I

    goto :goto_19

    .line 85
    :cond_2f
    iget-object v1, v1, Le/a/h/b/d/b/i;->a:Ljava/util/Set;

    .line 86
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    .line 87
    :goto_19
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 88
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v9

    if-le v9, v8, :cond_30

    move v15, v8

    goto :goto_1a

    :cond_30
    move v15, v10

    :goto_1a
    if-eqz v15, :cond_31

    goto :goto_1b

    :cond_31
    move-object/from16 v1, v17

    :goto_1b
    if-eqz v1, :cond_32

    .line 89
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 90
    iget-object v9, v0, Le/a/h/b/d/a/b/m;->c:Le/a/p5/c0;

    const v12, 0x7f120910

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v7, v11, v10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v11, v8

    invoke-interface {v9, v12, v11}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1c

    :cond_32
    move-object/from16 v1, v17

    :goto_1c
    if-eqz v1, :cond_33

    move-object v7, v1

    .line 91
    :cond_33
    invoke-static {v7}, Le/a/b0/q/o;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v7, "GUIUtils.bidiFormat(detailsWithGroup ?: details)"

    invoke-static {v1, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    iget v7, v3, Lcom/truecaller/data/entity/HistoryEvent;->r:I

    if-ne v7, v13, :cond_34

    const v7, 0x7f08070c

    .line 93
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_1d

    :cond_34
    move-object/from16 v7, v17

    .line 94
    :goto_1d
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    const v11, 0x7f080700

    packed-switch v9, :pswitch_data_0

    .line 95
    new-instance v1, Ls1/i;

    invoke-direct {v1}, Ls1/i;-><init>()V

    throw v1

    .line 96
    :pswitch_0
    iget v9, v3, Lcom/truecaller/data/entity/HistoryEvent;->q:I

    if-ne v9, v13, :cond_35

    move v15, v8

    goto :goto_1e

    :cond_35
    move v15, v10

    :goto_1e
    if-eqz v15, :cond_36

    const v11, 0x7f08070b

    goto :goto_1f

    :cond_36
    const v11, 0x7f080712

    goto :goto_1f

    :pswitch_1
    const v11, 0x7f080714

    goto :goto_1f

    :pswitch_2
    const v11, 0x7f080713

    goto :goto_1f

    :pswitch_3
    const v11, 0x7f080704

    goto :goto_1f

    :pswitch_4
    const v11, 0x7f080708

    goto :goto_1f

    :pswitch_5
    const v11, 0x7f08070d

    goto :goto_1f

    :pswitch_6
    const v11, 0x7f080705

    .line 97
    :goto_1f
    :pswitch_7
    iget-object v9, v0, Le/a/h/b/d/a/b/m;->c:Le/a/p5/c0;

    if-eqz v7, :cond_37

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v11

    :cond_37
    invoke-interface {v9, v11}, Le/a/p5/c0;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    const-string v9, "resourceProvider.getDraw\u2026e(silentIcon ?: resource)"

    invoke-static {v7, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v4, :cond_38

    goto :goto_20

    .line 98
    :cond_38
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-nez v9, :cond_39

    const v4, 0x7f08070f

    goto :goto_21

    :cond_39
    :goto_20
    if-nez v4, :cond_3a

    goto :goto_22

    .line 99
    :cond_3a
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v8, :cond_3b

    const v4, 0x7f080710

    .line 100
    :goto_21
    iget-object v9, v0, Le/a/h/b/d/a/b/m;->c:Le/a/p5/c0;

    invoke-interface {v9, v4}, Le/a/p5/c0;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object/from16 v21, v4

    goto :goto_23

    :cond_3b
    :goto_22
    move-object/from16 v21, v17

    .line 101
    :goto_23
    iget-boolean v4, v5, Le/a/h/b/d/a/b/p;->a:Z

    if-eqz v4, :cond_3c

    .line 102
    sget-object v9, Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;->RED:Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;

    :goto_24
    move-object/from16 v24, v9

    goto :goto_25

    .line 103
    :cond_3c
    iget v9, v3, Lcom/truecaller/data/entity/HistoryEvent;->r:I

    if-ne v9, v8, :cond_3d

    .line 104
    sget-object v9, Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;->RED:Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;

    goto :goto_24

    :cond_3d
    if-ne v9, v13, :cond_3e

    .line 105
    sget-object v9, Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;->RED:Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;

    goto :goto_24

    .line 106
    :cond_3e
    sget-object v9, Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;->DEFAULT:Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;

    goto :goto_24

    :goto_25
    if-eqz v4, :cond_3f

    .line 107
    sget-object v3, Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;->RED:Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;

    :goto_26
    move-object/from16 v23, v3

    goto :goto_28

    .line 108
    :cond_3f
    iget v4, v3, Lcom/truecaller/data/entity/HistoryEvent;->r:I

    if-ne v4, v8, :cond_40

    .line 109
    sget-object v3, Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;->RED:Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;

    goto :goto_26

    :cond_40
    if-ne v4, v13, :cond_41

    .line 110
    sget-object v3, Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;->RED:Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;

    goto :goto_26

    .line 111
    :cond_41
    iget v3, v3, Lcom/truecaller/data/entity/HistoryEvent;->q:I

    if-ne v3, v13, :cond_42

    move v15, v8

    goto :goto_27

    :cond_42
    move v15, v10

    .line 112
    :goto_27
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    packed-switch v3, :pswitch_data_1

    .line 113
    new-instance v1, Ls1/i;

    invoke-direct {v1}, Ls1/i;-><init>()V

    throw v1

    :pswitch_8
    if-eqz v15, :cond_43

    .line 114
    sget-object v3, Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;->RED:Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;

    goto :goto_26

    :cond_43
    sget-object v3, Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;->DEFAULT:Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;

    goto :goto_26

    :pswitch_9
    if-eqz v15, :cond_44

    .line 115
    sget-object v3, Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;->RED:Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;

    goto :goto_26

    :cond_44
    sget-object v3, Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;->DEFAULT:Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;

    goto :goto_26

    :pswitch_a
    if-eqz v15, :cond_45

    .line 116
    sget-object v3, Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;->RED:Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;

    goto :goto_26

    :cond_45
    sget-object v3, Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;->DEFAULT:Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;

    goto :goto_26

    :pswitch_b
    if-eqz v15, :cond_46

    .line 117
    sget-object v3, Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;->RED:Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;

    goto :goto_26

    :cond_46
    sget-object v3, Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;->DEFAULT:Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;

    goto :goto_26

    .line 118
    :pswitch_c
    sget-object v3, Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;->RED:Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;

    goto :goto_26

    .line 119
    :pswitch_d
    sget-object v3, Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;->DEFAULT:Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;

    goto :goto_26

    .line 120
    :pswitch_e
    sget-object v3, Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;->DEFAULT:Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;

    goto :goto_26

    .line 121
    :pswitch_f
    sget-object v3, Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;->RED:Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;

    goto :goto_26

    .line 122
    :pswitch_10
    sget-object v3, Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;->RED:Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;

    goto :goto_26

    .line 123
    :goto_28
    new-instance v3, Le/a/h/b/d/a/b/a;

    move-object/from16 v18, v3

    move-object/from16 v19, v1

    move-object/from16 v20, v7

    move-object/from16 v22, v24

    invoke-direct/range {v18 .. v24}, Le/a/h/b/d/a/b/a;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;)V

    const-string v1, "item"

    .line 124
    invoke-static {v5, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    iget-object v1, v5, Le/a/h/b/d/a/b/p;->h:Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;

    .line 126
    sget-object v4, Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;->VOIP_GROUP_CALL:Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;

    if-ne v1, v4, :cond_48

    .line 127
    new-instance v1, Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v24, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    .line 128
    iget-object v4, v5, Le/a/h/b/d/a/b/p;->i:Ljava/lang/Long;

    if-eqz v4, :cond_47

    .line 129
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v17

    :cond_47
    move-object/from16 v21, v17

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const v35, 0xffdb

    move-object/from16 v18, v1

    .line 130
    invoke-direct/range {v18 .. v35}, Lcom/truecaller/common/ui/avatar/AvatarXConfig;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZZZZZLjava/lang/Integer;ZI)V

    goto/16 :goto_32

    .line 131
    :cond_48
    iget-object v1, v5, Le/a/h/b/d/a/b/p;->g:Lcom/truecaller/data/entity/Contact;

    if-eqz v1, :cond_49

    .line 132
    iget v4, v1, Lcom/truecaller/data/entity/Contact;->r:I

    .line 133
    iget-object v1, v1, Lcom/truecaller/data/entity/Contact;->y:Lcom/truecaller/data/entity/Contact$PremiumLevel;

    .line 134
    invoke-static {v4, v1}, Le/a/o5/t;->f(ILcom/truecaller/data/entity/Contact$PremiumLevel;)I

    move-result v15

    goto :goto_29

    :cond_49
    move v15, v10

    .line 135
    :goto_29
    iget-object v1, v5, Le/a/h/b/d/a/b/p;->d:Ljava/lang/String;

    const-string v4, "null cannot be cast to non-null type java.lang.String"

    .line 136
    invoke-static {v1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const-string v4, "(this as java.lang.String).toCharArray()"

    invoke-static {v1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Le/q/f/a/d/a;->t0([C)Ljava/lang/Character;

    move-result-object v1

    if-eqz v1, :cond_4b

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    .line 137
    iget-boolean v4, v5, Le/a/h/b/d/a/b/p;->b:Z

    if-eqz v4, :cond_4a

    goto :goto_2a

    .line 138
    :cond_4a
    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-eqz v4, :cond_4b

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v17

    :cond_4b
    :goto_2a
    move-object/from16 v22, v17

    .line 139
    iget-object v1, v5, Le/a/h/b/d/a/b/p;->g:Lcom/truecaller/data/entity/Contact;

    if-eqz v1, :cond_4c

    .line 140
    iget-object v4, v0, Le/a/h/b/d/a/b/m;->h:Le/a/b0/a/b/b;

    invoke-interface {v4, v1}, Le/a/b0/a/b/b;->a(Ljava/lang/Object;)Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-result-object v1

    if-eqz v1, :cond_4c

    goto :goto_32

    .line 141
    :cond_4c
    new-instance v1, Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    const/16 v19, 0x0

    .line 142
    iget-object v4, v5, Le/a/h/b/d/a/b/p;->f:Ljava/lang/String;

    const/16 v21, 0x0

    .line 143
    iget-boolean v6, v5, Le/a/h/b/d/a/b/p;->a:Z

    if-nez v6, :cond_4e

    .line 144
    iget-boolean v6, v5, Le/a/h/b/d/a/b/p;->c:Z

    if-eqz v6, :cond_4d

    goto :goto_2b

    :cond_4d
    move/from16 v23, v10

    goto :goto_2c

    :cond_4e
    :goto_2b
    move/from16 v23, v8

    :goto_2c
    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v6, 0x20

    if-ne v15, v6, :cond_4f

    move/from16 v28, v8

    goto :goto_2d

    :cond_4f
    move/from16 v28, v10

    :goto_2d
    const/4 v6, 0x4

    if-ne v15, v6, :cond_50

    move/from16 v27, v8

    goto :goto_2e

    :cond_50
    move/from16 v27, v10

    :goto_2e
    const/16 v6, 0x80

    if-ne v15, v6, :cond_51

    move/from16 v29, v8

    goto :goto_2f

    :cond_51
    move/from16 v29, v10

    :goto_2f
    const/16 v6, 0x100

    if-ne v15, v6, :cond_52

    move/from16 v30, v8

    goto :goto_30

    :cond_52
    move/from16 v30, v10

    :goto_30
    const/16 v6, 0x10

    if-ne v15, v6, :cond_53

    move/from16 v31, v8

    goto :goto_31

    :cond_53
    move/from16 v31, v10

    :goto_31
    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const v35, 0xe0e5

    move-object/from16 v18, v1

    move-object/from16 v20, v4

    .line 145
    invoke-direct/range {v18 .. v35}, Lcom/truecaller/common/ui/avatar/AvatarXConfig;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZZZZZLjava/lang/Integer;ZI)V

    .line 146
    :goto_32
    invoke-direct {v2, v5, v3, v1}, Le/a/h/b/d/a/b/k;-><init>(Le/a/h/b/d/a/b/p;Le/a/h/b/d/a/b/a;Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V

    return-object v2

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
