.class public final Le/a/a/w0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/w0/a;


# instance fields
.field public final a:Le/a/a/w0/d;

.field public final b:Le/a/q2/a;

.field public final c:Le/a/e4/p;

.field public final d:Le/a/b0/q/l0;

.field public final e:Le/a/q2/i0;

.field public final f:Le/a/o5/b0;

.field public final g:Le/a/p5/a0;


# direct methods
.method public constructor <init>(Le/a/a/w0/d;Le/a/q2/a;Le/a/e4/p;Le/a/b0/q/l0;Le/a/q2/i0;Le/a/o5/b0;Le/a/p5/a0;Le/a/u3/g;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "repository"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "multisimManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timestampUtil"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageAnalytics"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dateHelper"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissionUtil"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/w0/c;->a:Le/a/a/w0/d;

    iput-object p2, p0, Le/a/a/w0/c;->b:Le/a/q2/a;

    iput-object p3, p0, Le/a/a/w0/c;->c:Le/a/e4/p;

    iput-object p4, p0, Le/a/a/w0/c;->d:Le/a/b0/q/l0;

    iput-object p5, p0, Le/a/a/w0/c;->e:Le/a/q2/i0;

    iput-object p6, p0, Le/a/a/w0/c;->f:Le/a/o5/b0;

    iput-object p7, p0, Le/a/a/w0/c;->g:Le/a/p5/a0;

    return-void
.end method


# virtual methods
.method public a(ZI)V
    .locals 10

    const-string v7, "ScheduledMessageSend"

    const-string v0, "type"

    .line 1
    invoke-static {v7, v0}, Le/d/c/a/a;->X(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v9

    .line 2
    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v0, "messageType"

    .line 3
    invoke-virtual {p0, p2}, Le/a/a/w0/c;->l(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "name"

    .line 4
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "value"

    invoke-static {p2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-interface {v9, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "sendResult"

    if-eqz p1, :cond_0

    const-string p1, "success"

    goto :goto_0

    :cond_0
    const-string p1, "fail"

    :goto_0
    move-object v6, p1

    move-object v0, v5

    move-object v2, v6

    move-object v4, v9

    .line 6
    invoke-static/range {v0 .. v8}, Le/d/c/a/a;->v1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Le/a/l5/a/p3$b;

    move-result-object p1

    .line 7
    invoke-virtual {p1, v9}, Le/a/l5/a/p3$b;->d(Ljava/util/Map;)Le/a/l5/a/p3$b;

    invoke-virtual {p1}, Le/a/l5/a/p3$b;->a()Le/a/l5/a/p3;

    move-result-object p1

    const-string p2, "GenericAnalyticsEvent.ne\u2026rties(properties).build()"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object p2, p0, Le/a/a/w0/c;->b:Le/a/q2/a;

    invoke-interface {p2, p1}, Le/a/q2/a;->a(Lorg/apache/avro/generic/GenericRecord;)V

    return-void
.end method

.method public b(Le/a/a/k/o;Lcom/truecaller/messaging/data/types/Message;I)V
    .locals 12

    const-string v0, "result"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p1, Le/a/a/k/o$d;

    if-eqz v0, :cond_0

    const-string v1, "Success"

    goto :goto_0

    .line 2
    :cond_0
    instance-of v1, p1, Le/a/a/k/o$a;

    if-eqz v1, :cond_1

    const-string v1, "Cancel"

    goto :goto_0

    .line 3
    :cond_1
    instance-of v1, p1, Le/a/a/k/o$b;

    if-eqz v1, :cond_23

    const-string v1, "Failure"

    .line 4
    :goto_0
    invoke-virtual {p0, p3}, Le/a/a/w0/c;->l(I)Ljava/lang/String;

    move-result-object v2

    .line 5
    new-instance v3, Le/a/q2/e0;

    const-string v4, "MessageSendResult"

    invoke-direct {v3, v4}, Le/a/q2/e0;-><init>(Ljava/lang/String;)V

    const-string v4, "type"

    .line 6
    invoke-virtual {v3, v4, v2}, Le/a/q2/e0;->c(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Le/a/q2/e0;

    const-string v2, "status"

    .line 7
    invoke-virtual {v3, v2, v1}, Le/a/q2/e0;->c(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Le/a/q2/e0;

    .line 8
    iget-object v1, p0, Le/a/a/w0/c;->c:Le/a/e4/p;

    invoke-interface {v1}, Le/a/e4/p;->h()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "Multi"

    goto :goto_1

    :cond_2
    const-string v1, "Single"

    :goto_1
    const-string v2, "sim"

    .line 9
    invoke-virtual {v3, v2, v1}, Le/a/q2/e0;->c(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Le/a/q2/e0;

    .line 10
    iget-object v1, p2, Lcom/truecaller/messaging/data/types/Message;->m:Ljava/lang/String;

    const-string v2, "message.simToken"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "simToken"

    invoke-virtual {v3, v2, v1}, Le/a/q2/e0;->c(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Le/a/q2/e0;

    .line 11
    iget-object v1, p0, Le/a/a/w0/c;->c:Le/a/e4/p;

    invoke-interface {v1}, Le/a/e4/p;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "multisimManager.analyticsName"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "multiSimConfig"

    invoke-virtual {v3, v2, v1}, Le/a/q2/e0;->c(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Le/a/q2/e0;

    .line 12
    iget v1, p2, Lcom/truecaller/messaging/data/types/Message;->w:I

    const-string v2, "retryCount"

    invoke-virtual {v3, v2, v1}, Le/a/q2/e0;->b(Ljava/lang/CharSequence;I)Le/a/q2/e0;

    .line 13
    iget-object v1, p2, Lcom/truecaller/messaging/data/types/Message;->q:Ljava/lang/String;

    const-wide/16 v5, 0x0

    const/4 v2, 0x0

    const/4 v7, 0x1

    if-eqz v1, :cond_f

    .line 14
    iget-object v8, p0, Le/a/a/w0/c;->a:Le/a/a/w0/d;

    iget-object v9, p0, Le/a/a/w0/c;->d:Le/a/b0/q/l0;

    invoke-virtual {v9}, Le/a/b0/q/l0;->c()J

    move-result-wide v9

    const-string v11, "id"

    invoke-static {v1, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v8, v9, v10, v1}, Le/a/a/w0/d;->b(JLjava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Number;->longValue()J

    move-result-wide v9

    cmp-long v9, v9, v5

    if-lez v9, :cond_3

    move v9, v7

    goto :goto_2

    :cond_3
    move v9, v2

    :goto_2
    if-eqz v9, :cond_4

    goto :goto_3

    :cond_4
    const/4 v8, 0x0

    :goto_3
    if-eqz v8, :cond_5

    invoke-virtual {v8}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    .line 15
    invoke-virtual {p0, v8, v9}, Le/a/a/w0/c;->m(J)Ljava/lang/String;

    move-result-object v8

    const-string v9, "fullTimeInterval"

    invoke-virtual {v3, v9, v8}, Le/a/q2/e0;->c(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Le/a/q2/e0;

    .line 16
    :cond_5
    iget-object v8, p0, Le/a/a/w0/c;->a:Le/a/a/w0/d;

    invoke-interface {v8, v1}, Le/a/a/w0/d;->h(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Number;->longValue()J

    move-result-wide v9

    cmp-long v9, v9, v5

    if-lez v9, :cond_6

    move v9, v7

    goto :goto_4

    :cond_6
    move v9, v2

    :goto_4
    if-eqz v9, :cond_7

    goto :goto_5

    :cond_7
    const/4 v8, 0x0

    :goto_5
    if-eqz v8, :cond_8

    invoke-virtual {v8}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    .line 17
    invoke-virtual {p0, v8, v9}, Le/a/a/w0/c;->m(J)Ljava/lang/String;

    move-result-object v8

    const-string v9, "scheduleTimeInterval"

    invoke-virtual {v3, v9, v8}, Le/a/q2/e0;->c(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Le/a/q2/e0;

    .line 18
    :cond_8
    iget-object v8, p0, Le/a/a/w0/c;->a:Le/a/a/w0/d;

    invoke-interface {v8, v1}, Le/a/a/w0/d;->e(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Number;->longValue()J

    move-result-wide v9

    cmp-long v9, v9, v5

    if-lez v9, :cond_9

    move v9, v7

    goto :goto_6

    :cond_9
    move v9, v2

    :goto_6
    if-eqz v9, :cond_a

    goto :goto_7

    :cond_a
    const/4 v8, 0x0

    :goto_7
    if-eqz v8, :cond_b

    invoke-virtual {v8}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    .line 19
    invoke-virtual {p0, v8, v9}, Le/a/a/w0/c;->m(J)Ljava/lang/String;

    move-result-object v8

    const-string v9, "enqueueTimeInterval"

    invoke-virtual {v3, v9, v8}, Le/a/q2/e0;->c(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Le/a/q2/e0;

    .line 20
    :cond_b
    iget-object v8, p0, Le/a/a/w0/c;->a:Le/a/a/w0/d;

    iget-object v9, p0, Le/a/a/w0/c;->d:Le/a/b0/q/l0;

    invoke-virtual {v9}, Le/a/b0/q/l0;->c()J

    move-result-wide v9

    invoke-interface {v8, v9, v10, v1}, Le/a/a/w0/d;->f(JLjava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Number;->longValue()J

    move-result-wide v9

    cmp-long v9, v9, v5

    if-lez v9, :cond_c

    move v9, v7

    goto :goto_8

    :cond_c
    move v9, v2

    :goto_8
    if-eqz v9, :cond_d

    goto :goto_9

    :cond_d
    const/4 v8, 0x0

    :goto_9
    if-eqz v8, :cond_e

    invoke-virtual {v8}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    .line 21
    invoke-virtual {p0, v8, v9}, Le/a/a/w0/c;->m(J)Ljava/lang/String;

    move-result-object v10

    const-string v11, "sendTimeInterval"

    invoke-virtual {v3, v11, v10}, Le/a/q2/e0;->c(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Le/a/q2/e0;

    .line 22
    invoke-virtual {v3, v8, v9}, Le/a/q2/e0;->f(J)Le/a/q2/e0;

    .line 23
    :cond_e
    iget-object v8, p0, Le/a/a/w0/c;->a:Le/a/a/w0/d;

    invoke-interface {v8, v1}, Le/a/a/w0/d;->c(Ljava/lang/String;)V

    .line 24
    :cond_f
    instance-of v1, p1, Le/a/a/k/a0/c;

    if-eqz v1, :cond_11

    .line 25
    move-object v1, p1

    check-cast v1, Le/a/a/k/a0/c;

    .line 26
    iget-object v8, v1, Le/a/a/k/a0/c;->b:Ljava/lang/String;

    const-string v9, "failureReason"

    .line 27
    invoke-virtual {v3, v9, v8}, Le/a/q2/e0;->c(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Le/a/q2/e0;

    .line 28
    iget-object v8, p0, Le/a/a/w0/c;->g:Le/a/p5/a0;

    const-string v9, "android.permission.SEND_SMS"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Le/a/p5/a0;->h([Ljava/lang/String;)Z

    move-result v8

    const-string v9, "hasSendSmsPermission"

    invoke-virtual {v3, v9, v8}, Le/a/q2/e0;->d(Ljava/lang/CharSequence;Z)Le/a/q2/e0;

    .line 29
    iget-object v8, v1, Le/a/a/k/a0/c;->c:Ljava/lang/Integer;

    if-eqz v8, :cond_10

    .line 30
    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "errorResult"

    invoke-virtual {v3, v9, v8}, Le/a/q2/e0;->c(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Le/a/q2/e0;

    .line 31
    :cond_10
    iget-object v1, v1, Le/a/a/k/a0/c;->d:Ljava/lang/Integer;

    if-eqz v1, :cond_11

    .line 32
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v8, "errorCode"

    invoke-virtual {v3, v8, v1}, Le/a/q2/e0;->c(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Le/a/q2/e0;

    .line 33
    :cond_11
    iget-object v1, p0, Le/a/a/w0/c;->b:Le/a/q2/a;

    invoke-virtual {v3}, Le/a/q2/e0;->a()Le/a/l5/a/p3;

    move-result-object v3

    invoke-interface {v1, v3}, Le/a/q2/a;->a(Lorg/apache/avro/generic/GenericRecord;)V

    const-string v1, "message.buildMessageText()"

    const/4 v3, 0x2

    if-ne p3, v3, :cond_1b

    .line 34
    iget-object v8, p0, Le/a/a/w0/c;->e:Le/a/q2/i0;

    invoke-interface {v8, p2, p1}, Le/a/q2/i0;->e(Lcom/truecaller/messaging/data/types/Message;Le/a/a/k/o;)V

    if-eqz v0, :cond_1b

    .line 35
    invoke-static {p2}, Le/a/c/p/a;->z1(Lcom/truecaller/messaging/data/types/Message;)Z

    move-result p1

    if-nez p1, :cond_12

    goto/16 :goto_11

    .line 36
    :cond_12
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 37
    new-instance v8, Ls1/z/c/a0;

    invoke-direct {v8}, Ls1/z/c/a0;-><init>()V

    iput v2, v8, Ls1/z/c/a0;->a:I

    .line 38
    invoke-virtual {p2}, Lcom/truecaller/messaging/data/types/Message;->a()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v10, Le/a/a/w0/b;

    invoke-direct {v10, p1, v8}, Le/a/a/w0/b;-><init>(Ljava/util/Map;Ls1/z/c/a0;)V

    invoke-static {v9, v10}, Le/a/a/c/p8/g;->b(Ljava/lang/CharSequence;Le/a/a/c/p8/a;)V

    .line 39
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_13

    iget v9, v8, Ls1/z/c/a0;->a:I

    if-nez v9, :cond_13

    goto/16 :goto_11

    .line 40
    :cond_13
    new-instance v9, Le/a/q2/e0;

    const-string v10, "RichTextMessageSent"

    invoke-direct {v9, v10}, Le/a/q2/e0;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v10

    iget v11, v8, Ls1/z/c/a0;->a:I

    add-int/2addr v10, v11

    if-le v10, v7, :cond_14

    move v10, v7

    goto :goto_a

    :cond_14
    move v10, v2

    :goto_a
    const-string v11, "isMixedFormatting"

    invoke-virtual {v9, v11, v10}, Le/a/q2/e0;->d(Ljava/lang/CharSequence;Z)Le/a/q2/e0;

    .line 42
    sget-object v10, Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;->BOLD:Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;

    invoke-virtual {p1, v10}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    if-eqz v10, :cond_15

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    goto :goto_b

    :cond_15
    move v10, v2

    :goto_b
    const-string v11, "numBold"

    invoke-virtual {v9, v11, v10}, Le/a/q2/e0;->b(Ljava/lang/CharSequence;I)Le/a/q2/e0;

    .line 43
    sget-object v10, Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;->ITALIC:Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;

    invoke-virtual {p1, v10}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    if-eqz v10, :cond_16

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    goto :goto_c

    :cond_16
    move v10, v2

    :goto_c
    const-string v11, "numItalic"

    invoke-virtual {v9, v11, v10}, Le/a/q2/e0;->b(Ljava/lang/CharSequence;I)Le/a/q2/e0;

    .line 44
    sget-object v10, Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;->UNDERLINE:Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;

    invoke-virtual {p1, v10}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    if-eqz v10, :cond_17

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    goto :goto_d

    :cond_17
    move v10, v2

    :goto_d
    const-string v11, "numUnderline"

    invoke-virtual {v9, v11, v10}, Le/a/q2/e0;->b(Ljava/lang/CharSequence;I)Le/a/q2/e0;

    .line 45
    sget-object v10, Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;->STRIKETHROUGH:Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;

    invoke-virtual {p1, v10}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    if-eqz v10, :cond_18

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    goto :goto_e

    :cond_18
    move v10, v2

    :goto_e
    const-string v11, "numStrikethrough"

    invoke-virtual {v9, v11, v10}, Le/a/q2/e0;->b(Ljava/lang/CharSequence;I)Le/a/q2/e0;

    .line 46
    sget-object v10, Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;->MONOSPACE:Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;

    invoke-virtual {p1, v10}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    if-eqz v10, :cond_19

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    goto :goto_f

    :cond_19
    move v10, v2

    :goto_f
    const-string v11, "numMonospace"

    invoke-virtual {v9, v11, v10}, Le/a/q2/e0;->b(Ljava/lang/CharSequence;I)Le/a/q2/e0;

    .line 47
    sget-object v10, Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;->MONOSPACE_MULTILINE:Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;

    invoke-virtual {p1, v10}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_10

    :cond_1a
    move p1, v2

    :goto_10
    const-string v10, "numMultiLineMonospace"

    invoke-virtual {v9, v10, p1}, Le/a/q2/e0;->b(Ljava/lang/CharSequence;I)Le/a/q2/e0;

    .line 48
    iget p1, v8, Ls1/z/c/a0;->a:I

    const-string v8, "numLink"

    invoke-virtual {v9, v8, p1}, Le/a/q2/e0;->b(Ljava/lang/CharSequence;I)Le/a/q2/e0;

    .line 49
    invoke-virtual {v9}, Le/a/q2/e0;->a()Le/a/l5/a/p3;

    move-result-object p1

    .line 50
    iget-object v8, p0, Le/a/a/w0/c;->b:Le/a/q2/a;

    invoke-interface {v8, p1}, Le/a/q2/a;->a(Lorg/apache/avro/generic/GenericRecord;)V

    .line 51
    :cond_1b
    :goto_11
    iget-object p1, p2, Lcom/truecaller/messaging/data/types/Message;->f:Lw3/b/a/b;

    const-string v8, "message.sendScheduleDate"

    invoke-static {p1, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iget-wide v8, p1, Lw3/b/a/e0/e;->a:J

    cmp-long p1, v8, v5

    if-lez p1, :cond_1c

    .line 53
    invoke-virtual {p0, v0, p3}, Le/a/a/w0/c;->a(ZI)V

    .line 54
    :cond_1c
    iget p1, p2, Lcom/truecaller/messaging/data/types/Message;->k:I

    if-ne p1, v3, :cond_22

    invoke-virtual {p2}, Lcom/truecaller/messaging/data/types/Message;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    sget-object p3, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {p3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    const-string p3, "Patterns.WEB_URL.matcher(text)"

    invoke-static {p1, p3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    :cond_1d
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p3

    if-eqz p3, :cond_1f

    .line 57
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_12

    :cond_1e
    const/4 p3, 0x0

    :goto_12
    if-eqz p3, :cond_1d

    move p1, v7

    goto :goto_13

    :cond_1f
    move p1, v2

    :goto_13
    if-eqz p1, :cond_22

    .line 58
    iget-object p1, p2, Lcom/truecaller/messaging/data/types/Message;->o:[Lcom/truecaller/messaging/data/types/Entity;

    const-string p2, "message.entities"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    array-length p2, p1

    move p3, v2

    :goto_14
    if-ge p3, p2, :cond_21

    aget-object v0, p1, p3

    .line 60
    invoke-virtual {v0}, Lcom/truecaller/messaging/data/types/Entity;->n()Z

    move-result v0

    if-eqz v0, :cond_20

    move v2, v7

    goto :goto_15

    :cond_20
    add-int/lit8 p3, p3, 0x1

    goto :goto_14

    .line 61
    :cond_21
    :goto_15
    iget-object p1, p0, Le/a/a/w0/c;->b:Le/a/q2/a;

    const-string p2, "ImWithLinkSent"

    .line 62
    invoke-static {p2, v4}, Le/d/c/a/a;->X(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object p3

    .line 63
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v1, "hasPreview"

    const-string v3, "name"

    .line 64
    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    invoke-static {}, Le/a/l5/a/p3;->a()Le/a/l5/a/p3$b;

    move-result-object v1

    invoke-virtual {v1, p2}, Le/a/l5/a/p3$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/p3$b;

    invoke-virtual {v1, v0}, Le/a/l5/a/p3$b;->c(Ljava/util/Map;)Le/a/l5/a/p3$b;

    invoke-virtual {v1, p3}, Le/a/l5/a/p3$b;->d(Ljava/util/Map;)Le/a/l5/a/p3$b;

    invoke-virtual {v1}, Le/a/l5/a/p3$b;->a()Le/a/l5/a/p3;

    move-result-object p2

    const-string p3, "GenericAnalyticsEvent.ne\u2026rties(properties).build()"

    invoke-static {p2, p3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-interface {p1, p2}, Le/a/q2/a;->a(Lorg/apache/avro/generic/GenericRecord;)V

    :cond_22
    return-void

    .line 68
    :cond_23
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected result "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public c(Ljava/lang/String;I)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget-object p2, p0, Le/a/a/w0/c;->a:Le/a/a/w0/d;

    invoke-interface {p2, p1}, Le/a/a/w0/d;->g(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public d(Ljava/lang/String;JI)V
    .locals 10

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/w0/c;->d:Le/a/b0/q/l0;

    invoke-virtual {v0}, Le/a/b0/q/l0;->c()J

    move-result-wide v0

    sub-long v6, p2, v0

    const-string v4, "Reshedule"

    move-object v2, p0

    move-object v3, p1

    move v5, p4

    move-wide v8, p2

    invoke-virtual/range {v2 .. v9}, Le/a/a/w0/c;->k(Ljava/lang/String;Ljava/lang/String;IJJ)V

    return-void
.end method

.method public e(Ljava/lang/String;I)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget-object p2, p0, Le/a/a/w0/c;->a:Le/a/a/w0/d;

    invoke-interface {p2, p1}, Le/a/a/w0/d;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public f(Ljava/lang/String;IJJ)V
    .locals 9

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sub-long v5, p5, p3

    const-string v3, "Delete"

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move-wide v7, p5

    .line 1
    invoke-virtual/range {v1 .. v8}, Le/a/a/w0/c;->k(Ljava/lang/String;Ljava/lang/String;IJJ)V

    return-void
.end method

.method public g(Ljava/lang/String;I)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget-object p2, p0, Le/a/a/w0/c;->a:Le/a/a/w0/d;

    invoke-interface {p2, p1}, Le/a/a/w0/d;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public h(Ljava/lang/String;JI)V
    .locals 10

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/w0/c;->d:Le/a/b0/q/l0;

    invoke-virtual {v0}, Le/a/b0/q/l0;->c()J

    move-result-wide v0

    sub-long v6, p2, v0

    const-string v4, "Schedule"

    move-object v2, p0

    move-object v3, p1

    move v5, p4

    move-wide v8, p2

    invoke-virtual/range {v2 .. v9}, Le/a/a/w0/c;->k(Ljava/lang/String;Ljava/lang/String;IJJ)V

    return-void
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;I[Lcom/truecaller/data/entity/messaging/Participant;[Lcom/truecaller/messaging/data/types/BinaryEntity;Z)V
    .locals 0

    const-string p3, "userInteraction"

    invoke-static {p2, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "participants"

    invoke-static {p4, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "media"

    invoke-static {p5, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1
    iget-object p2, p0, Le/a/a/w0/c;->a:Le/a/a/w0/d;

    invoke-interface {p2, p1}, Le/a/a/w0/d;->i(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public j(Lcom/truecaller/messaging/data/types/Message;)V
    .locals 7

    const-string v0, "message"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "EditMessage"

    const-string v1, "type"

    .line 1
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 3
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    invoke-static {p1}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Le/a/c/p/a;->T2(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "name"

    .line 5
    invoke-static {v1, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "value"

    invoke-static {v4, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {p1}, Le/a/c/p/a;->D1(Lcom/truecaller/messaging/data/types/Message;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "urgent"

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {p1}, Le/a/c/p/a;->A1(Lcom/truecaller/messaging/data/types/Message;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "scheduled"

    goto :goto_0

    :cond_1
    const-string p1, "im"

    :goto_0
    const-string v1, "transport"

    .line 9
    invoke-static {v1, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "peer"

    const-string v1, "chat"

    .line 11
    invoke-static {p1, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-static {}, Le/a/l5/a/p3;->a()Le/a/l5/a/p3$b;

    move-result-object p1

    invoke-virtual {p1, v0}, Le/a/l5/a/p3$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/p3$b;

    invoke-virtual {p1, v3}, Le/a/l5/a/p3$b;->c(Ljava/util/Map;)Le/a/l5/a/p3$b;

    invoke-virtual {p1, v2}, Le/a/l5/a/p3$b;->d(Ljava/util/Map;)Le/a/l5/a/p3$b;

    invoke-virtual {p1}, Le/a/l5/a/p3$b;->a()Le/a/l5/a/p3;

    move-result-object p1

    const-string v0, "GenericAnalyticsEvent.ne\u2026rties(properties).build()"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Le/a/a/w0/c;->b:Le/a/q2/a;

    invoke-interface {v0, p1}, Le/a/q2/a;->a(Lorg/apache/avro/generic/GenericRecord;)V

    return-void
.end method

.method public final k(Ljava/lang/String;Ljava/lang/String;IJJ)V
    .locals 17

    move-object/from16 v0, p0

    move-wide/from16 v1, p4

    const-string v8, "ScheduleMessage"

    const-string v3, "type"

    .line 1
    invoke-static {v8, v3}, Le/d/c/a/a;->X(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v7

    const-string v14, "context"

    const-string v3, "name"

    const-string v4, "value"

    move-object v9, v14

    move-object v10, v3

    move-object/from16 v11, p1

    move-object v12, v4

    move-object v13, v7

    move-object/from16 v15, p1

    .line 2
    invoke-static/range {v9 .. v15}, Le/d/c/a/a;->Y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v16

    move/from16 v5, p3

    .line 3
    invoke-virtual {v0, v5}, Le/a/a/w0/c;->l(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "messageType"

    .line 4
    invoke-static {v6, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-interface {v7, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v14, "action"

    move-object v9, v14

    move-object/from16 v11, p2

    move-object/from16 v15, p2

    .line 6
    invoke-static/range {v9 .. v15}, Le/d/c/a/a;->K0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v9

    long-to-int v6, v9

    .line 8
    invoke-virtual {v5, v1, v2}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v9

    long-to-int v9, v9

    .line 9
    invoke-virtual {v5, v1, v2}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v1

    long-to-int v1, v1

    const/4 v2, 0x4

    const/16 v5, 0x18

    const/4 v15, 0x6

    const/16 v14, 0xf

    if-gt v6, v2, :cond_0

    const-string v1, "0-4mins"

    goto :goto_0

    :cond_0
    if-gt v6, v14, :cond_1

    const-string v1, "5-15mins"

    goto :goto_0

    :cond_1
    const/16 v2, 0x1e

    if-gt v6, v2, :cond_2

    const-string v1, "16-30mins"

    goto :goto_0

    :cond_2
    const/16 v2, 0x3c

    if-gt v6, v2, :cond_3

    const-string v1, "31-60mins"

    goto :goto_0

    :cond_3
    if-gt v9, v15, :cond_4

    const-string v1, "1-6h"

    goto :goto_0

    :cond_4
    if-gt v9, v5, :cond_5

    const-string v1, "7-24h"

    goto :goto_0

    :cond_5
    const/4 v2, 0x7

    if-gt v1, v2, :cond_6

    const-string v1, "1-7d"

    goto :goto_0

    :cond_6
    const-string v1, "8d+"

    :goto_0
    const-string v2, "period"

    move-object v9, v2

    move-object v10, v3

    move-object v11, v1

    move-object v12, v4

    move-object v13, v7

    move v6, v14

    move-object v14, v2

    move v2, v15

    move-object v15, v1

    .line 10
    invoke-static/range {v9 .. v15}, Le/d/c/a/a;->K0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "sendingTime"

    .line 11
    iget-object v1, v0, Le/a/a/w0/c;->f:Le/a/o5/b0;

    move-wide/from16 v10, p6

    invoke-interface {v1, v10, v11}, Le/a/o5/b0;->h(J)I

    move-result v1

    const/4 v10, 0x3

    if-ge v1, v10, :cond_7

    const-string v1, "0-3"

    :goto_1
    move-object v10, v1

    goto :goto_2

    :cond_7
    if-ge v1, v2, :cond_8

    const-string v1, "3-6"

    goto :goto_1

    :cond_8
    const/16 v2, 0x9

    if-ge v1, v2, :cond_9

    const-string v1, "6-9"

    goto :goto_1

    :cond_9
    const/16 v2, 0xc

    if-ge v1, v2, :cond_a

    const-string v1, "9-12"

    goto :goto_1

    :cond_a
    if-ge v1, v6, :cond_b

    const-string v1, "12-15"

    goto :goto_1

    :cond_b
    const/16 v2, 0x12

    if-ge v1, v2, :cond_c

    const-string v1, "15-18"

    goto :goto_1

    :cond_c
    const/16 v2, 0x15

    if-ge v1, v2, :cond_d

    const-string v1, "18-21"

    goto :goto_1

    :cond_d
    if-ge v1, v5, :cond_e

    const-string v1, "21-24"

    goto :goto_1

    :goto_2
    move-object v1, v9

    move-object v2, v3

    move-object v3, v10

    move-object v5, v7

    move-object v6, v9

    move-object v11, v7

    move-object v7, v10

    move-object/from16 v9, v16

    .line 12
    invoke-static/range {v1 .. v9}, Le/d/c/a/a;->v1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;)Le/a/l5/a/p3$b;

    move-result-object v1

    .line 13
    invoke-virtual {v1, v11}, Le/a/l5/a/p3$b;->d(Ljava/util/Map;)Le/a/l5/a/p3$b;

    invoke-virtual {v1}, Le/a/l5/a/p3$b;->a()Le/a/l5/a/p3;

    move-result-object v1

    const-string v2, "GenericAnalyticsEvent.ne\u2026rties(properties).build()"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget-object v2, v0, Le/a/a/w0/c;->b:Le/a/q2/a;

    invoke-interface {v2, v1}, Le/a/q2/a;->a(Lorg/apache/avro/generic/GenericRecord;)V

    return-void

    .line 15
    :cond_e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Should be < 24"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final l(I)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const-string p1, "Unknown"

    goto :goto_0

    :cond_0
    const-string p1, "im"

    goto :goto_0

    :cond_1
    const-string p1, "mms"

    goto :goto_0

    :cond_2
    const-string p1, "sms"

    :goto_0
    return-object p1
.end method

.method public final m(J)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide p1

    long-to-int p1, p1

    const/4 p2, 0x2

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    if-lt p2, p1, :cond_1

    const-string p1, "0-2"

    goto/16 :goto_d

    :cond_1
    :goto_0
    const/4 v0, 0x5

    if-le p2, p1, :cond_2

    goto :goto_1

    :cond_2
    if-lt v0, p1, :cond_3

    const-string p1, "2-5"

    goto/16 :goto_d

    :cond_3
    :goto_1
    const/16 p2, 0xa

    if-le v0, p1, :cond_4

    goto :goto_2

    :cond_4
    if-lt p2, p1, :cond_5

    const-string p1, "5-10"

    goto/16 :goto_d

    :cond_5
    :goto_2
    const/16 v0, 0x14

    if-le p2, p1, :cond_6

    goto :goto_3

    :cond_6
    if-lt v0, p1, :cond_7

    const-string p1, "10-20"

    goto/16 :goto_d

    :cond_7
    :goto_3
    const/16 p2, 0x1e

    if-le v0, p1, :cond_8

    goto :goto_4

    :cond_8
    if-lt p2, p1, :cond_9

    const-string p1, "20-30"

    goto/16 :goto_d

    :cond_9
    :goto_4
    const/16 v0, 0x28

    if-le p2, p1, :cond_a

    goto :goto_5

    :cond_a
    if-lt v0, p1, :cond_b

    const-string p1, "30-40"

    goto :goto_d

    :cond_b
    :goto_5
    const/16 p2, 0x32

    if-le v0, p1, :cond_c

    goto :goto_6

    :cond_c
    if-lt p2, p1, :cond_d

    const-string p1, "40-50"

    goto :goto_d

    :cond_d
    :goto_6
    const/16 v0, 0x3c

    if-le p2, p1, :cond_e

    goto :goto_7

    :cond_e
    if-lt v0, p1, :cond_f

    const-string p1, "50-60"

    goto :goto_d

    :cond_f
    :goto_7
    const/16 p2, 0x5a

    if-le v0, p1, :cond_10

    goto :goto_8

    :cond_10
    if-lt p2, p1, :cond_11

    const-string p1, "60-90"

    goto :goto_d

    :cond_11
    :goto_8
    const/16 v0, 0x78

    if-le p2, p1, :cond_12

    goto :goto_9

    :cond_12
    if-lt v0, p1, :cond_13

    const-string p1, "90-120"

    goto :goto_d

    :cond_13
    :goto_9
    const/16 p2, 0xb4

    if-le v0, p1, :cond_14

    goto :goto_a

    :cond_14
    if-lt p2, p1, :cond_15

    const-string p1, "120-180"

    goto :goto_d

    :cond_15
    :goto_a
    const/16 v0, 0xf0

    if-le p2, p1, :cond_16

    goto :goto_b

    :cond_16
    if-lt v0, p1, :cond_17

    const-string p1, "180-240"

    goto :goto_d

    :cond_17
    :goto_b
    const/16 p2, 0x1e0

    if-le v0, p1, :cond_18

    goto :goto_c

    :cond_18
    if-lt p2, p1, :cond_19

    const-string p1, "240-480"

    goto :goto_d

    :cond_19
    :goto_c
    const-string p1, ">480"

    :goto_d
    return-object p1
.end method
