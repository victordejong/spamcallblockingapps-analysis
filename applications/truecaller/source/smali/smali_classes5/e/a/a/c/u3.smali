.class public final Le/a/a/c/u3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/c/t3;


# instance fields
.field public a:Z

.field public final b:Le/a/q2/a;

.field public final c:Le/a/a/c/m5;


# direct methods
.method public constructor <init>(Le/a/q2/a;Le/a/a/c/m5;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "analytics"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "conversationState"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/c/u3;->b:Le/a/q2/a;

    iput-object p2, p0, Le/a/a/c/u3;->c:Le/a/a/c/m5;

    return-void
.end method


# virtual methods
.method public final a([Lcom/truecaller/messaging/data/types/Message;)Ljava/lang/String;
    .locals 7

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_2

    aget-object v4, p1, v2

    .line 2
    iget v4, v4, Lcom/truecaller/messaging/data/types/Message;->k:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    move v4, v3

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    if-nez v4, :cond_1

    move v0, v1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v0, v3

    :goto_2
    if-eqz v0, :cond_3

    const-string p1, "im"

    goto/16 :goto_11

    .line 3
    :cond_3
    array-length v0, p1

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_7

    aget-object v4, p1, v2

    .line 4
    iget v5, v4, Lcom/truecaller/messaging/data/types/Message;->k:I

    if-eqz v5, :cond_5

    const/4 v6, 0x4

    if-eq v5, v6, :cond_5

    iget v4, v4, Lcom/truecaller/messaging/data/types/Message;->l:I

    if-nez v4, :cond_4

    goto :goto_4

    :cond_4
    move v4, v1

    goto :goto_5

    :cond_5
    :goto_4
    move v4, v3

    :goto_5
    if-nez v4, :cond_6

    move v0, v1

    goto :goto_6

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_7
    move v0, v3

    :goto_6
    if-eqz v0, :cond_8

    const-string p1, "sms"

    goto/16 :goto_11

    .line 5
    :cond_8
    array-length v0, p1

    move v2, v1

    :goto_7
    if-ge v2, v0, :cond_c

    aget-object v4, p1, v2

    .line 6
    iget v5, v4, Lcom/truecaller/messaging/data/types/Message;->k:I

    if-eq v5, v3, :cond_a

    const/4 v6, 0x7

    if-eq v5, v6, :cond_a

    iget v4, v4, Lcom/truecaller/messaging/data/types/Message;->l:I

    if-ne v4, v3, :cond_9

    goto :goto_8

    :cond_9
    move v4, v1

    goto :goto_9

    :cond_a
    :goto_8
    move v4, v3

    :goto_9
    if-nez v4, :cond_b

    move v0, v1

    goto :goto_a

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_c
    move v0, v3

    :goto_a
    if-eqz v0, :cond_d

    const-string p1, "mms"

    goto :goto_11

    .line 7
    :cond_d
    array-length v0, p1

    move v2, v1

    :goto_b
    const-string v4, "null cannot be cast to non-null type com.truecaller.messaging.transport.history.HistoryTransportInfo"

    if-ge v2, v0, :cond_10

    aget-object v5, p1, v2

    .line 8
    iget-object v5, v5, Lcom/truecaller/messaging/data/types/Message;->n:Lcom/truecaller/messaging/data/types/TransportInfo;

    instance-of v6, v5, Lcom/truecaller/messaging/transport/history/HistoryTransportInfo;

    if-eqz v6, :cond_e

    invoke-static {v5, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v5, Lcom/truecaller/messaging/transport/history/HistoryTransportInfo;

    .line 9
    iget v5, v5, Lcom/truecaller/messaging/transport/history/HistoryTransportInfo;->d:I

    if-ne v5, v3, :cond_e

    move v5, v3

    goto :goto_c

    :cond_e
    move v5, v1

    :goto_c
    if-nez v5, :cond_f

    move v0, v1

    goto :goto_d

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_10
    move v0, v3

    :goto_d
    if-eqz v0, :cond_11

    const-string p1, "flash"

    goto :goto_11

    .line 10
    :cond_11
    array-length v0, p1

    move v2, v1

    :goto_e
    if-ge v2, v0, :cond_14

    aget-object v5, p1, v2

    .line 11
    iget-object v5, v5, Lcom/truecaller/messaging/data/types/Message;->n:Lcom/truecaller/messaging/data/types/TransportInfo;

    instance-of v6, v5, Lcom/truecaller/messaging/transport/history/HistoryTransportInfo;

    if-eqz v6, :cond_12

    invoke-static {v5, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v5, Lcom/truecaller/messaging/transport/history/HistoryTransportInfo;

    .line 12
    iget v5, v5, Lcom/truecaller/messaging/transport/history/HistoryTransportInfo;->d:I

    if-eq v5, v3, :cond_12

    move v5, v3

    goto :goto_f

    :cond_12
    move v5, v1

    :goto_f
    if-nez v5, :cond_13

    goto :goto_10

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_14
    move v1, v3

    :goto_10
    if-eqz v1, :cond_15

    const-string p1, "call"

    goto :goto_11

    :cond_15
    const-string p1, "mixed"

    :goto_11
    return-object p1
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Le/a/a/c/u3;->b:Le/a/q2/a;

    const-string v2, "ConversationBubbleLongPress"

    const-string v8, "type"

    .line 2
    invoke-static {v2, v8}, Le/d/c/a/a;->X(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v15

    const-string v11, "name"

    const-string v14, "value"

    const-string v16, "action"

    move-object v3, v8

    move-object v4, v11

    move-object/from16 v5, p1

    move-object v6, v14

    move-object v7, v15

    move-object/from16 v9, p1

    move-object/from16 v10, v16

    move-object/from16 v12, p2

    move-object v13, v14

    move-object v0, v14

    move-object/from16 v14, v16

    move-object/from16 v16, v1

    move-object v1, v15

    move-object/from16 v15, p2

    .line 3
    invoke-static/range {v3 .. v15}, Le/d/c/a/a;->Z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v3

    move/from16 v4, p3

    int-to-double v4, v4

    .line 4
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {}, Le/a/l5/a/p3;->a()Le/a/l5/a/p3$b;

    move-result-object v0

    invoke-virtual {v0, v2}, Le/a/l5/a/p3$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/p3$b;

    invoke-virtual {v0, v3}, Le/a/l5/a/p3$b;->c(Ljava/util/Map;)Le/a/l5/a/p3$b;

    invoke-virtual {v0, v1}, Le/a/l5/a/p3$b;->d(Ljava/util/Map;)Le/a/l5/a/p3$b;

    invoke-virtual {v0}, Le/a/l5/a/p3$b;->a()Le/a/l5/a/p3;

    move-result-object v0

    const-string v1, "GenericAnalyticsEvent.ne\u2026rties(properties).build()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v1, v16

    .line 6
    invoke-interface {v1, v0}, Le/a/q2/a;->a(Lorg/apache/avro/generic/GenericRecord;)V

    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Le/a/a/c/u3;->b:Le/a/q2/a;

    const-string v2, "ConversationBubbleTap"

    const-string v8, "type"

    .line 2
    invoke-static {v2, v8}, Le/d/c/a/a;->X(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v15

    const-string v11, "name"

    const-string v13, "value"

    const-string v14, "action"

    move-object v3, v8

    move-object v4, v11

    move-object/from16 v5, p1

    move-object v6, v13

    move-object v7, v15

    move-object/from16 v9, p1

    move-object v10, v14

    move-object/from16 v12, p2

    move-object v0, v15

    move-object/from16 v15, p2

    .line 3
    invoke-static/range {v3 .. v15}, Le/d/c/a/a;->Z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v3

    const-string v4, "GenericAnalyticsEvent.ne\u2026rties(properties).build()"

    .line 4
    invoke-static {v2, v3, v0, v4, v1}, Le/d/c/a/a;->N0(Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;Ljava/lang/String;Le/a/q2/a;)V

    return-void
.end method

.method public n0(Lcom/truecaller/messaging/data/types/Message;I)V
    .locals 2

    const-string v0, "message"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sparse-switch p2, :sswitch_data_0

    const-string p1, "Consider logging the new action"

    .line 1
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil$OnlyInDebug;->fail([Ljava/lang/String;)V

    return-void

    :sswitch_0
    const-string p2, "copy"

    goto :goto_0

    :sswitch_1
    const-string p2, "markAsNotImportant"

    goto :goto_0

    :sswitch_2
    const-string p2, "messageDetails"

    goto :goto_0

    :sswitch_3
    const-string p2, "markAsImportant"

    goto :goto_0

    :sswitch_4
    const-string p2, "resend"

    goto :goto_0

    :sswitch_5
    const-string p2, "resendAsSms"

    goto :goto_0

    :sswitch_6
    const-string p2, "resendAsMms"

    goto :goto_0

    :sswitch_7
    const-string p2, "resendAsIM"

    goto :goto_0

    :sswitch_8
    const-string p2, "edit"

    goto :goto_0

    :sswitch_9
    const-string p2, "delete"

    goto :goto_0

    :sswitch_a
    const-string p2, "selectMore"

    :goto_0
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/truecaller/messaging/data/types/Message;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 2
    invoke-virtual {p0, v0}, Le/a/a/c/u3;->a([Lcom/truecaller/messaging/data/types/Message;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Le/a/a/c/u3;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f1201bd -> :sswitch_a
        0x7f1201d1 -> :sswitch_9
        0x7f1201d2 -> :sswitch_8
        0x7f1201d4 -> :sswitch_7
        0x7f1201d5 -> :sswitch_6
        0x7f1201d6 -> :sswitch_5
        0x7f1201d7 -> :sswitch_4
        0x7f1201fc -> :sswitch_3
        0x7f120206 -> :sswitch_2
        0x7f120207 -> :sswitch_1
        0x7f120d2b -> :sswitch_0
    .end sparse-switch
.end method

.method public o0()V
    .locals 2

    const-string v0, "im"

    const-string v1, "addReaction"

    .line 1
    invoke-virtual {p0, v0, v1}, Le/a/a/c/u3;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public p0([Lcom/truecaller/messaging/data/types/Message;)V
    .locals 3

    const-string v0, "messages"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Le/a/a/c/u3;->a:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Le/a/a/c/u3;->c:Le/a/a/c/m5;

    invoke-interface {v0}, Le/a/a/c/m5;->B()Z

    move-result v0

    if-eqz v0, :cond_1

    array-length v0, p1

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    xor-int/2addr v0, v2

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0, p1}, Le/a/a/c/u3;->a([Lcom/truecaller/messaging/data/types/Message;)Ljava/lang/String;

    move-result-object v0

    array-length p1, p1

    const-string v2, "none"

    invoke-virtual {p0, v0, v2, p1}, Le/a/a/c/u3;->b(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3
    :cond_1
    iput-boolean v1, p0, Le/a/a/c/u3;->a:Z

    return-void
.end method

.method public q0(IZ[Lcom/truecaller/messaging/data/types/Message;)V
    .locals 1

    const-string v0, "selectedMessages"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const-string p1, "Consider logging the new action"

    .line 1
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil$OnlyInDebug;->fail([Ljava/lang/String;)V

    return-void

    :pswitch_1
    const-string p1, "view_pdo"

    goto :goto_0

    :pswitch_2
    const-string p1, "translate"

    goto :goto_0

    :pswitch_3
    const-string p1, "reportSpam"

    goto :goto_0

    :pswitch_4
    const-string p1, "showOriginal"

    goto :goto_0

    :pswitch_5
    const-string p1, "showInChat"

    goto :goto_0

    :pswitch_6
    const-string p1, "share"

    goto :goto_0

    :pswitch_7
    const-string p1, "sendNow"

    goto :goto_0

    :pswitch_8
    const-string p1, "selectAllMessages"

    goto :goto_0

    :pswitch_9
    const-string p1, "selectAllCalls"

    goto :goto_0

    :pswitch_a
    const-string p1, "resend"

    goto :goto_0

    :pswitch_b
    const-string p1, "reschedule"

    goto :goto_0

    :pswitch_c
    const-string p1, "reply"

    goto :goto_0

    :pswitch_d
    const-string p1, "reportPromotional"

    goto :goto_0

    :pswitch_e
    const-string p1, "reportNotSpam"

    goto :goto_0

    :pswitch_f
    const-string p1, "reportNotPromotional"

    goto :goto_0

    :pswitch_10
    const-string p1, "markAsNotImportant"

    goto :goto_0

    :pswitch_11
    const-string p1, "selectMore"

    goto :goto_0

    :pswitch_12
    const-string p1, "markAsImportant"

    goto :goto_0

    :pswitch_13
    const-string p1, "messageDetails"

    goto :goto_0

    :pswitch_14
    const-string p1, "forward"

    goto :goto_0

    :pswitch_15
    const-string p1, "feedback"

    goto :goto_0

    :pswitch_16
    const-string p1, "edit"

    goto :goto_0

    :pswitch_17
    const-string p1, "download"

    goto :goto_0

    :pswitch_18
    const-string p1, "delete"

    goto :goto_0

    :pswitch_19
    const-string p1, "copy"

    :goto_0
    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p0, p3}, Le/a/a/c/u3;->a([Lcom/truecaller/messaging/data/types/Message;)Ljava/lang/String;

    move-result-object p2

    array-length p3, p3

    invoke-virtual {p0, p2, p1, p3}, Le/a/a/c/u3;->b(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Le/a/a/c/u3;->a:Z

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {p0, p3}, Le/a/a/c/u3;->a([Lcom/truecaller/messaging/data/types/Message;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Le/a/a/c/u3;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x7f0a0062
        :pswitch_19
        :pswitch_18
        :pswitch_0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_0
        :pswitch_0
        :pswitch_13
        :pswitch_12
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public r0(Lcom/truecaller/messaging/data/types/Message;)V
    .locals 2

    const-string v0, "message"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/truecaller/messaging/data/types/Message;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 1
    invoke-virtual {p0, v0}, Le/a/a/c/u3;->a([Lcom/truecaller/messaging/data/types/Message;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "none"

    invoke-virtual {p0, p1, v0}, Le/a/a/c/u3;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
