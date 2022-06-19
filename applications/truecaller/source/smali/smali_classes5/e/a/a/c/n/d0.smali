.class public final Le/a/a/c/n/d0;
.super Le/a/o2/c;
.source "SourceFile"

# interfaces
.implements Le/a/a/c/n/b0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/o2/c<",
        "Le/a/a/c/n/c0;",
        ">;",
        "Le/a/a/c/n/b0;"
    }
.end annotation


# instance fields
.field public final b:Le/a/o5/b0;

.field public final c:Lcom/truecaller/messaging/data/types/Message;

.field public final d:Ljava/lang/String;

.field public final e:Le/a/a/i0;

.field public final f:Le/a/p5/c0;

.field public final g:Le/a/a/c/w3;

.field public final h:Le/a/u3/g;


# direct methods
.method public constructor <init>(Le/a/o5/b0;Lcom/truecaller/messaging/data/types/Message;Ljava/lang/String;Le/a/a/i0;Le/a/p5/c0;Le/a/a/c/w3;Le/a/u3/g;)V
    .locals 1
    .param p2    # Lcom/truecaller/messaging/data/types/Message;
        .annotation runtime Ljavax/inject/Named;
            value = "message"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/inject/Named;
            value = "im_group_id"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "dateHelper"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settings"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dataSource"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featureRegistry"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/o2/c;-><init>()V

    iput-object p1, p0, Le/a/a/c/n/d0;->b:Le/a/o5/b0;

    iput-object p2, p0, Le/a/a/c/n/d0;->c:Lcom/truecaller/messaging/data/types/Message;

    iput-object p3, p0, Le/a/a/c/n/d0;->d:Ljava/lang/String;

    iput-object p4, p0, Le/a/a/c/n/d0;->e:Le/a/a/i0;

    iput-object p5, p0, Le/a/a/c/n/d0;->f:Le/a/p5/c0;

    iput-object p6, p0, Le/a/a/c/n/d0;->g:Le/a/a/c/w3;

    iput-object p7, p0, Le/a/a/c/n/d0;->h:Le/a/u3/g;

    return-void
.end method


# virtual methods
.method public final A()Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Le/a/a/c/n/y;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/c/n/d0;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/a/c/n/d0;->c:Lcom/truecaller/messaging/data/types/Message;

    invoke-static {v0}, Le/a/c/p/a;->x1(Lcom/truecaller/messaging/data/types/Message;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Ls1/u/s;->a:Ls1/u/s;

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object v1, p0, Le/a/a/c/n/d0;->g:Le/a/a/c/w3;

    invoke-interface {v1}, Le/a/a/c/w3;->f()Le/a/a/g/j0/q;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 5
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_2

    invoke-interface {v1}, Le/a/a/g/j0/q;->getMessage()Lcom/truecaller/messaging/data/types/Message;

    move-result-object v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    iget-object v1, p0, Le/a/a/c/n/d0;->c:Lcom/truecaller/messaging/data/types/Message;

    .line 7
    :goto_1
    iget-wide v3, v1, Lcom/truecaller/messaging/data/types/Message;->R:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    const/4 v5, 0x1

    const/4 v8, 0x0

    if-lez v4, :cond_3

    move v4, v5

    goto :goto_2

    :cond_3
    move v4, v8

    :goto_2
    if-eqz v4, :cond_4

    goto :goto_3

    :cond_4
    move-object v3, v2

    :goto_3
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    .line 8
    new-instance v9, Le/a/a/c/n/f0;

    .line 9
    iget-object v10, p0, Le/a/a/c/n/d0;->f:Le/a/p5/c0;

    const v11, 0x7f120381

    new-array v12, v8, [Ljava/lang/Object;

    invoke-interface {v10, v11, v12}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "resourceProvider.getStri\u2026ing.MessageDetailsEdited)"

    invoke-static {v10, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {v9, v10, v3, v4}, Le/a/a/c/n/f0;-><init>(Ljava/lang/String;J)V

    .line 11
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    :cond_5
    iget-object v3, v1, Lcom/truecaller/messaging/data/types/Message;->n:Lcom/truecaller/messaging/data/types/TransportInfo;

    instance-of v4, v3, Lcom/truecaller/messaging/transport/im/ImTransportInfo;

    if-nez v4, :cond_6

    move-object v3, v2

    :cond_6
    check-cast v3, Lcom/truecaller/messaging/transport/im/ImTransportInfo;

    if-eqz v3, :cond_b

    .line 13
    iget-object v4, p0, Le/a/a/c/n/d0;->f:Le/a/p5/c0;

    const v9, 0x7f120386

    new-array v10, v8, [Ljava/lang/Object;

    invoke-interface {v4, v9, v10}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v9, "resourceProvider.getStri\u2026tring.MessageDetailsRead)"

    invoke-static {v4, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget-wide v9, v3, Lcom/truecaller/messaging/transport/im/ImTransportInfo;->l:J

    .line 15
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    iget-object v9, p0, Le/a/a/c/n/d0;->e:Le/a/a/i0;

    invoke-interface {v9}, Le/a/a/i0;->k()Z

    move-result v9

    if-nez v9, :cond_8

    iget-object v9, v1, Lcom/truecaller/messaging/data/types/Message;->c:Lcom/truecaller/data/entity/messaging/Participant;

    iget v9, v9, Lcom/truecaller/data/entity/messaging/Participant;->b:I

    const/4 v10, 0x4

    if-ne v9, v10, :cond_7

    goto :goto_4

    :cond_7
    move v9, v8

    goto :goto_5

    :cond_8
    :goto_4
    move v9, v5

    :goto_5
    if-eqz v9, :cond_9

    goto :goto_6

    :cond_9
    move-object v3, v2

    :goto_6
    if-eqz v3, :cond_a

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    goto :goto_7

    :cond_a
    move-wide v9, v6

    .line 16
    :goto_7
    new-instance v3, Le/a/a/c/n/f0;

    invoke-direct {v3, v4, v9, v10}, Le/a/a/c/n/f0;-><init>(Ljava/lang/String;J)V

    .line 17
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    :cond_b
    invoke-static {v1}, Le/a/c/p/a;->x1(Lcom/truecaller/messaging/data/types/Message;)Z

    move-result v3

    const-string v4, "resourceProvider.getStri\u2026tring.MessageDetailsSent)"

    const v9, 0x7f12038a

    const-string v10, "date"

    const/4 v11, 0x2

    const-string v12, "dateSent"

    if-eqz v3, :cond_10

    .line 19
    iget-object v3, p0, Le/a/a/c/n/d0;->f:Le/a/p5/c0;

    const v13, 0x7f1203ae

    new-array v14, v8, [Ljava/lang/Object;

    invoke-interface {v3, v13, v14}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v13, "resourceProvider.getStri\u2026g.MessageStatusDelivered)"

    invoke-static {v3, v13}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iget-object v13, v1, Lcom/truecaller/messaging/data/types/Message;->d:Lw3/b/a/b;

    invoke-static {v13, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget-wide v12, v13, Lw3/b/a/e0/e;->a:J

    .line 22
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Number;->longValue()J

    iget-object v13, v1, Lcom/truecaller/messaging/data/types/Message;->n:Lcom/truecaller/messaging/data/types/TransportInfo;

    const-string v14, "transportInfo"

    invoke-static {v13, v14}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v13}, Lcom/truecaller/messaging/data/types/TransportInfo;->E()I

    move-result v13

    const/4 v14, 0x3

    if-ne v13, v14, :cond_c

    goto :goto_8

    :cond_c
    move v5, v8

    :goto_8
    if-eqz v5, :cond_d

    move-object v2, v12

    :cond_d
    if-eqz v2, :cond_e

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 23
    :cond_e
    new-instance v2, Le/a/a/c/n/f0;

    invoke-direct {v2, v3, v6, v7}, Le/a/a/c/n/f0;-><init>(Ljava/lang/String;J)V

    .line 24
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    invoke-static {v1}, Le/a/c/p/a;->A1(Lcom/truecaller/messaging/data/types/Message;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 26
    new-instance v2, Le/a/a/c/n/f0;

    iget-object v3, p0, Le/a/a/c/n/d0;->f:Le/a/p5/c0;

    const v4, 0x7f1203b4

    new-array v5, v8, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "resourceProvider.getStri\u2026g.MessageStatusScheduled)"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v1, Lcom/truecaller/messaging/data/types/Message;->f:Lw3/b/a/b;

    const-string v4, "sendScheduleDate"

    invoke-static {v1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iget-wide v4, v1, Lw3/b/a/e0/e;->a:J

    .line 28
    invoke-direct {v2, v3, v4, v5}, Le/a/a/c/n/f0;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    .line 29
    :cond_f
    iget v2, v1, Lcom/truecaller/messaging/data/types/Message;->k:I

    if-eq v2, v11, :cond_16

    .line 30
    new-instance v2, Le/a/a/c/n/f0;

    iget-object v3, p0, Le/a/a/c/n/d0;->f:Le/a/p5/c0;

    new-array v5, v8, [Ljava/lang/Object;

    invoke-interface {v3, v9, v5}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v1, Lcom/truecaller/messaging/data/types/Message;->e:Lw3/b/a/b;

    invoke-static {v1, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iget-wide v4, v1, Lw3/b/a/e0/e;->a:J

    .line 32
    invoke-direct {v2, v3, v4, v5}, Le/a/a/c/n/f0;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    .line 33
    :cond_10
    iget-object v2, v1, Lcom/truecaller/messaging/data/types/Message;->s:Ljava/lang/String;

    .line 34
    iget-object v3, p0, Le/a/a/c/n/d0;->h:Le/a/u3/g;

    invoke-virtual {v3}, Le/a/u3/g;->a0()Le/a/u3/b;

    move-result-object v3

    invoke-interface {v3}, Le/a/u3/b;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_12

    if-eqz v2, :cond_11

    .line 35
    sget-object v3, Le/a/b0/q/c0;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 36
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    goto :goto_9

    :cond_11
    move v2, v8

    :goto_9
    if-eqz v2, :cond_12

    goto :goto_a

    :cond_12
    move v5, v8

    :goto_a
    if-eqz v5, :cond_13

    .line 37
    new-instance v2, Le/a/a/c/n/e0;

    .line 38
    iget-object v3, p0, Le/a/a/c/n/d0;->f:Le/a/p5/c0;

    const v5, 0x7f120382

    new-array v6, v8, [Ljava/lang/Object;

    invoke-interface {v3, v5, v6}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "resourceProvider.getStri\u2026tring.MessageDetailsFrom)"

    invoke-static {v3, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iget-object v5, v1, Lcom/truecaller/messaging/data/types/Message;->s:Ljava/lang/String;

    .line 40
    invoke-direct {v2, v3, v5}, Le/a/a/c/n/e0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    :cond_13
    new-instance v2, Le/a/a/c/n/f0;

    .line 43
    iget-object v3, p0, Le/a/a/c/n/d0;->f:Le/a/p5/c0;

    const v5, 0x7f120388

    new-array v6, v8, [Ljava/lang/Object;

    invoke-interface {v3, v5, v6}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "resourceProvider.getStri\u2026g.MessageDetailsReceived)"

    invoke-static {v3, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iget v5, v1, Lcom/truecaller/messaging/data/types/Message;->k:I

    if-ne v5, v11, :cond_14

    iget-object v5, v1, Lcom/truecaller/messaging/data/types/Message;->d:Lw3/b/a/b;

    invoke-static {v5, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_b

    :cond_14
    iget-object v5, v1, Lcom/truecaller/messaging/data/types/Message;->e:Lw3/b/a/b;

    invoke-static {v5, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    :goto_b
    iget-wide v5, v5, Lw3/b/a/e0/e;->a:J

    .line 46
    invoke-direct {v2, v3, v5, v6}, Le/a/a/c/n/f0;-><init>(Ljava/lang/String;J)V

    .line 47
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    new-instance v2, Le/a/a/c/n/f0;

    .line 49
    iget-object v3, p0, Le/a/a/c/n/d0;->f:Le/a/p5/c0;

    new-array v5, v8, [Ljava/lang/Object;

    invoke-interface {v3, v9, v5}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iget v4, v1, Lcom/truecaller/messaging/data/types/Message;->k:I

    if-ne v4, v11, :cond_15

    iget-object v1, v1, Lcom/truecaller/messaging/data/types/Message;->e:Lw3/b/a/b;

    invoke-static {v1, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_c

    :cond_15
    iget-object v1, v1, Lcom/truecaller/messaging/data/types/Message;->d:Lw3/b/a/b;

    invoke-static {v1, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    :goto_c
    iget-wide v4, v1, Lw3/b/a/e0/e;->a:J

    .line 52
    invoke-direct {v2, v3, v4, v5}, Le/a/a/c/n/f0;-><init>(Ljava/lang/String;J)V

    .line 53
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_16
    :goto_d
    return-object v0
.end method

.method public G(Ljava/lang/Object;I)V
    .locals 5

    .line 1
    check-cast p1, Le/a/a/c/n/c0;

    const-string v0, "itemView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Le/a/a/c/n/d0;->A()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/a/c/n/y;

    .line 4
    invoke-virtual {p2}, Le/a/a/c/n/y;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Le/a/a/c/n/c0;->l1(Ljava/lang/String;)V

    .line 5
    instance-of v0, p2, Le/a/a/c/n/f0;

    if-eqz v0, :cond_4

    check-cast p2, Le/a/a/c/n/f0;

    .line 6
    iget-wide v0, p2, Le/a/a/c/n/f0;->c:J

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-nez p2, :cond_0

    goto/16 :goto_1

    .line 7
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    iget-object v2, p0, Le/a/a/c/n/d0;->b:Le/a/o5/b0;

    invoke-interface {v2, v0, v1}, Le/a/o5/b0;->d(J)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v2, p0, Le/a/a/c/n/d0;->f:Le/a/p5/c0;

    const v4, 0x7f1201e5

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v2, v4, v3}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "resourceProvider.getStri\u2026.ConversationHeaderToday)"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object v2, p0, Le/a/a/c/n/d0;->b:Le/a/o5/b0;

    invoke-interface {v2, v0, v1}, Le/a/o5/b0;->e(J)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Le/a/a/c/n/d0;->f:Le/a/p5/c0;

    const v4, 0x7f1201e6

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v2, v4, v3}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "resourceProvider.getStri\u2026versationHeaderYesterday)"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_2
    new-instance v2, Lw3/b/a/b;

    invoke-direct {v2, v0, v1}, Lw3/b/a/b;-><init>(J)V

    invoke-virtual {v2}, Lw3/b/a/e0/a;->u()I

    move-result v2

    new-instance v3, Lw3/b/a/b;

    invoke-direct {v3}, Lw3/b/a/b;-><init>()V

    invoke-virtual {v3}, Lw3/b/a/e0/a;->u()I

    move-result v3

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Le/a/a/c/n/d0;->b:Le/a/o5/b0;

    sget-object v3, Lcom/truecaller/util/DatePattern;->GROUP_HEADER_WITH_YEAR:Lcom/truecaller/util/DatePattern;

    invoke-interface {v2, v0, v1, v3}, Le/a/o5/b0;->a(JLcom/truecaller/util/DatePattern;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 11
    :cond_3
    iget-object v2, p0, Le/a/a/c/n/d0;->b:Le/a/o5/b0;

    sget-object v3, Lcom/truecaller/util/DatePattern;->GROUP_HEADER_WITH_YEAR:Lcom/truecaller/util/DatePattern;

    invoke-interface {v2, v0, v1, v3}, Le/a/o5/b0;->a(JLcom/truecaller/util/DatePattern;)Ljava/lang/String;

    move-result-object v2

    .line 12
    :goto_0
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \u00b7 "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Le/a/a/c/n/d0;->b:Le/a/o5/b0;

    invoke-interface {v2, v0, v1}, Le/a/o5/b0;->l(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    .line 13
    :cond_4
    instance-of v0, p2, Le/a/a/c/n/e0;

    if-eqz v0, :cond_5

    check-cast p2, Le/a/a/c/n/e0;

    .line 14
    iget-object p2, p2, Le/a/a/c/n/e0;->c:Ljava/lang/String;

    if-eqz p2, :cond_5

    goto :goto_2

    :cond_5
    :goto_1
    const-string p2, "---"

    .line 15
    :goto_2
    invoke-interface {p1, p2}, Le/a/a/c/n/c0;->K2(Ljava/lang/String;)V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/a/c/n/d0;->A()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method
