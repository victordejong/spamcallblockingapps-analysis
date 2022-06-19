.class public final Le/a/a/k/a/a/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/k/a/a/s;


# instance fields
.field public final a:Landroid/content/ContentResolver;

.field public final b:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/a/k/a/c0;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/q2/a0;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Le/a/q2/a;

.field public final e:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/r2/f<",
            "Le/a/a/g/m;",
            ">;>;"
        }
    .end annotation
.end field

.field public final f:Le/a/a/i0;

.field public final g:Ln3/m0/y;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Le/a/r2/f;Le/a/r2/f;Le/a/q2/a;Lo3/a;Le/a/a/i0;Ln3/m0/y;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Le/a/r2/f<",
            "Le/a/a/k/a/c0;",
            ">;",
            "Le/a/r2/f<",
            "Le/a/q2/a0;",
            ">;",
            "Le/a/q2/a;",
            "Lo3/a<",
            "Le/a/r2/f<",
            "Le/a/a/g/m;",
            ">;>;",
            "Le/a/a/i0;",
            "Ln3/m0/y;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "contentResolver"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imReactionManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventsTracker"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageStorage"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageSettings"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workManager"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/k/a/a/t;->a:Landroid/content/ContentResolver;

    iput-object p2, p0, Le/a/a/k/a/a/t;->b:Le/a/r2/f;

    iput-object p3, p0, Le/a/a/k/a/a/t;->c:Le/a/r2/f;

    iput-object p4, p0, Le/a/a/k/a/a/t;->d:Le/a/q2/a;

    iput-object p5, p0, Le/a/a/k/a/a/t;->e:Lo3/a;

    iput-object p6, p0, Le/a/a/k/a/a/t;->f:Le/a/a/i0;

    iput-object p7, p0, Le/a/a/k/a/a/t;->g:Ln3/m0/y;

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/messaging/data/types/Message;)Le/a/a/k/p;
    .locals 2

    const-string v0, "message"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p1, Lcom/truecaller/messaging/data/types/Message;->n:Lcom/truecaller/messaging/data/types/TransportInfo;

    const-string v0, "message.getTransportInfo()"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/truecaller/messaging/transport/im/ImTransportInfo;

    .line 3
    iget v0, p1, Lcom/truecaller/messaging/transport/im/ImTransportInfo;->r:I

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_1

    const/16 v1, 0x7d1

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, v0}, Le/a/a/k/a/a/t;->f(Lcom/truecaller/messaging/transport/im/ImTransportInfo;Z)Le/a/a/k/p;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, p1, v0}, Le/a/a/k/a/a/t;->f(Lcom/truecaller/messaging/transport/im/ImTransportInfo;Z)Le/a/a/k/p;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public b(Landroid/content/Intent;)V
    .locals 29

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "intent"

    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "message"

    .line 1
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/truecaller/messaging/data/types/Message;

    if-eqz v2, :cond_6

    const-string v3, "emoji"

    .line 2
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v4, "initiated_via"

    .line 3
    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v4, v1, Le/a/a/k/a/a/t;->f:Le/a/a/i0;

    invoke-interface {v4}, Le/a/a/i0;->f()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_6

    .line 5
    iget-wide v4, v2, Lcom/truecaller/messaging/data/types/Message;->a:J

    .line 6
    iget-object v6, v1, Le/a/a/k/a/a/t;->a:Landroid/content/ContentResolver;

    const/4 v7, 0x2

    .line 7
    invoke-static {v7}, Le/a/b0/q/g0;->o(I)Landroid/net/Uri;

    move-result-object v7

    const-string v13, "raw_id"

    .line 8
    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v8

    const/4 v12, 0x1

    new-array v10, v12, [Ljava/lang/String;

    .line 9
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v10, v5

    const/4 v11, 0x0

    const-string v9, "_id = ?"

    .line 10
    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    .line 11
    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 12
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    move-object v7, v6

    .line 13
    :goto_0
    invoke-static {v4, v6}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    move-object v11, v7

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v2, v0

    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    move-object v3, v0

    invoke-static {v4, v2}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3

    :cond_1
    move-object v11, v6

    :goto_1
    if-eqz v11, :cond_6

    .line 14
    iget-wide v7, v2, Lcom/truecaller/messaging/data/types/Message;->b:J

    .line 15
    iget-object v4, v1, Le/a/a/k/a/a/t;->a:Landroid/content/ContentResolver;

    .line 16
    invoke-static {}, Le/a/m0/a1$f;->a()Landroid/net/Uri;

    move-result-object v17

    const-string v9, "tc_group_id"

    .line 17
    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v18

    new-array v9, v12, [Ljava/lang/String;

    .line 18
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v9, v5

    const/16 v21, 0x0

    const-string v19, "_id=?"

    move-object/from16 v16, v4

    move-object/from16 v20, v9

    .line 19
    invoke-virtual/range {v16 .. v21}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 20
    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 21
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :cond_2
    move-object v7, v6

    .line 22
    :goto_2
    invoke-static {v4, v6}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    move-object v10, v7

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v2, v0

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    move-exception v0

    move-object v3, v0

    invoke-static {v4, v2}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3

    :cond_3
    move-object v10, v6

    .line 23
    :goto_3
    iget-object v4, v2, Lcom/truecaller/messaging/data/types/Message;->c:Lcom/truecaller/data/entity/messaging/Participant;

    iget-object v4, v4, Lcom/truecaller/data/entity/messaging/Participant;->c:Ljava/lang/String;

    if-nez v4, :cond_5

    if-eqz v10, :cond_4

    goto :goto_4

    :cond_4
    move v12, v5

    :cond_5
    :goto_4
    const-string v4, "imPeerId or imGroupId must be set for sending reaction"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Lcom/truecaller/log/AssertionUtil;->isTrue(Z[Ljava/lang/String;)V

    .line 24
    new-instance v12, Lcom/truecaller/messaging/data/types/Reaction;

    const-wide/16 v5, 0x0

    .line 25
    iget-wide v7, v2, Lcom/truecaller/messaging/data/types/Message;->a:J

    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    const/16 v18, 0x2

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0xc1

    move-object v4, v12

    move-object v9, v15

    move-object/from16 v23, v10

    move-object v10, v14

    move-object/from16 v24, v11

    move-object/from16 v25, v12

    move-wide/from16 v11, v16

    move-object/from16 v26, v13

    move/from16 v13, v18

    move-object/from16 v27, v14

    move-object/from16 v28, v15

    move-wide/from16 v14, v19

    move-object/from16 v16, v21

    move/from16 v17, v22

    .line 27
    invoke-direct/range {v4 .. v17}, Lcom/truecaller/messaging/data/types/Reaction;-><init>(JJLjava/lang/String;Ljava/lang/String;JIJLjava/lang/String;I)V

    const/4 v4, 0x0

    move-object/from16 v6, v24

    move-object/from16 v5, v25

    .line 28
    invoke-virtual {v1, v5, v6, v4}, Le/a/a/k/a/a/t;->g(Lcom/truecaller/messaging/data/types/Reaction;Ljava/lang/String;Z)V

    .line 29
    iget-object v4, v1, Le/a/a/k/a/a/t;->f:Le/a/a/i0;

    invoke-interface {v4}, Le/a/a/i0;->f()Ljava/lang/String;

    move-result-object v4

    const-string v5, "outgoing"

    move-object/from16 v7, v27

    invoke-virtual {v1, v4, v7, v0, v5}, Le/a/a/k/a/a/t;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iget-object v0, v1, Le/a/a/k/a/a/t;->g:Ln3/m0/y;

    .line 31
    sget-object v4, Ln3/m0/h;->c:Ln3/m0/h;

    .line 32
    iget-wide v8, v2, Lcom/truecaller/messaging/data/types/Message;->a:J

    .line 33
    iget-object v2, v2, Lcom/truecaller/messaging/data/types/Message;->c:Lcom/truecaller/data/entity/messaging/Participant;

    iget-wide v10, v2, Lcom/truecaller/data/entity/messaging/Participant;->a:J

    const-string v2, "rawId"

    .line 34
    invoke-static {v6, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "fromPeerId"

    move-object/from16 v5, v28

    invoke-static {v5, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    new-instance v2, Ln3/m0/r$a;

    const-class v12, Lcom/truecaller/messaging/transport/im/SendReactionWorker;

    invoke-direct {v2, v12}, Ln3/m0/r$a;-><init>(Ljava/lang/Class;)V

    .line 36
    sget-object v12, Ln3/m0/a;->a:Ln3/m0/a;

    sget-object v13, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v14, 0x1e

    invoke-virtual {v2, v12, v14, v15, v13}, Ln3/m0/z$a;->e(Ln3/m0/a;JLjava/util/concurrent/TimeUnit;)Ln3/m0/z$a;

    move-result-object v2

    check-cast v2, Ln3/m0/r$a;

    move-object/from16 v12, v26

    .line 37
    invoke-static {v12, v6}, Le/d/c/a/a;->T(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v6

    .line 38
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v9, "message_id"

    invoke-virtual {v6, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "from_peer_id"

    .line 39
    invoke-virtual {v6, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v8, "particpant_id"

    invoke-virtual {v6, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "to_group_id"

    move-object/from16 v8, v23

    .line 41
    invoke-virtual {v6, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    invoke-virtual {v6, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    new-instance v3, Ln3/m0/f;

    invoke-direct {v3, v6}, Ln3/m0/f;-><init>(Ljava/util/Map;)V

    .line 44
    invoke-static {v3}, Ln3/m0/f;->g(Ln3/m0/f;)[B

    .line 45
    iget-object v5, v2, Ln3/m0/z$a;->c:Ln3/m0/c0/s/p;

    iput-object v3, v5, Ln3/m0/c0/s/p;->e:Ln3/m0/f;

    .line 46
    iget-object v3, v2, Ln3/m0/z$a;->d:Ljava/util/Set;

    const-string v5, "send_im_reaction"

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 47
    new-instance v3, Ln3/m0/d$a;

    invoke-direct {v3}, Ln3/m0/d$a;-><init>()V

    .line 48
    sget-object v5, Ln3/m0/q;->b:Ln3/m0/q;

    .line 49
    iput-object v5, v3, Ln3/m0/d$a;->c:Ln3/m0/q;

    .line 50
    new-instance v5, Ln3/m0/d;

    invoke-direct {v5, v3}, Ln3/m0/d;-><init>(Ln3/m0/d$a;)V

    .line 51
    iget-object v3, v2, Ln3/m0/z$a;->c:Ln3/m0/c0/s/p;

    iput-object v5, v3, Ln3/m0/c0/s/p;->j:Ln3/m0/d;

    .line 52
    invoke-virtual {v2}, Ln3/m0/z$a;->b()Ln3/m0/z;

    move-result-object v2

    const-string v3, "OneTimeWorkRequest.Build\u2026\n                .build()"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ln3/m0/r;

    const-string v3, "SendReaction"

    .line 53
    invoke-virtual {v0, v3, v4, v2}, Ln3/m0/y;->i(Ljava/lang/String;Ln3/m0/h;Ln3/m0/r;)Ln3/m0/s;

    :cond_6
    return-void
.end method

.method public c(Lcom/truecaller/api/services/messenger/v1/events/Event$ReactionSent;ZZ)V
    .locals 19

    move-object/from16 v0, p0

    const-string v1, "reactionSent"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$ReactionSent;->getContent()Lcom/truecaller/api/services/messenger/v1/models/ReactionContent;

    move-result-object v1

    const-string v3, "reactionSent.content"

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/truecaller/api/services/messenger/v1/models/ReactionContent;->getRefMessageId()Ljava/lang/String;

    move-result-object v1

    const-string v4, "reactionSent.content.refMessageId"

    invoke-static {v1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$ReactionSent;->getContent()Lcom/truecaller/api/services/messenger/v1/models/ReactionContent;

    move-result-object v4

    invoke-static {v4, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/truecaller/api/services/messenger/v1/models/ReactionContent;->getEmoji()Lcom/truecaller/api/services/messenger/v1/models/ReactionContent$Emoji;

    move-result-object v3

    const-string v4, "reactionSent.content.emoji"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/truecaller/api/services/messenger/v1/models/ReactionContent$Emoji;->getValue()Ljava/lang/String;

    move-result-object v3

    const-string v4, "reactionSent.content.emoji.value"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$ReactionSent;->getSender()Lcom/truecaller/api/services/messenger/v1/models/Peer;

    move-result-object v4

    const-string v5, "reactionSent.sender"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/truecaller/api/services/messenger/v1/models/Peer;->getUser()Lcom/truecaller/api/services/messenger/v1/models/Peer$User;

    move-result-object v4

    const-string v5, "reactionSent.sender.user"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/truecaller/api/services/messenger/v1/models/Peer$User;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "reactionSent.sender.user.id"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$ReactionSent;->getDate()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v12

    .line 5
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$ReactionSent;->getRecipient()Lcom/truecaller/api/services/messenger/v1/models/Peer;

    move-result-object v2

    const-string v5, "reactionSent.recipient"

    invoke-static {v2, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/truecaller/api/services/messenger/v1/models/Peer;->getGroup()Lcom/truecaller/api/services/messenger/v1/models/Peer$Group;

    move-result-object v2

    const-string v5, "reactionSent.recipient.group"

    invoke-static {v2, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/truecaller/api/services/messenger/v1/models/Peer$Group;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v5, "reactionSent.recipient.group.id"

    invoke-static {v2, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v2, Lcom/truecaller/messaging/data/types/Reaction;

    const/4 v5, 0x1

    if-nez p3, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    const/4 v5, 0x0

    :cond_1
    move v14, v5

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0xc3

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    move-object v5, v2

    move-object v10, v4

    move-object v11, v3

    invoke-direct/range {v5 .. v18}, Lcom/truecaller/messaging/data/types/Reaction;-><init>(JJLjava/lang/String;Ljava/lang/String;JIJLjava/lang/String;I)V

    const/4 v5, 0x1

    .line 7
    invoke-virtual {v0, v2, v1, v5}, Le/a/a/k/a/a/t;->g(Lcom/truecaller/messaging/data/types/Reaction;Ljava/lang/String;Z)V

    const/4 v1, 0x0

    const-string v2, "incoming"

    .line 8
    invoke-virtual {v0, v4, v3, v1, v2}, Le/a/a/k/a/a/t;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "intent"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reaction"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    const-string v1, "Required value was null."

    if-eqz v0, :cond_1

    check-cast v0, Lcom/truecaller/messaging/data/types/Reaction;

    const-string v2, "raw_id"

    .line 2
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v0, p1, v1}, Le/a/a/k/a/a/t;->g(Lcom/truecaller/messaging/data/types/Reaction;Ljava/lang/String;Z)V

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/a/k/a/a/t;->c:Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/q2/a0;

    .line 2
    sget-object v1, Le/a/l5/a/x0;->g:Lorg/apache/avro/Schema;

    new-instance v1, Le/a/l5/a/x0$b;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Le/a/l5/a/x0$b;-><init>(Le/a/l5/a/x0$a;)V

    const-string v2, ""

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, v2

    .line 3
    :goto_0
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v3

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v1, v3, p2}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 4
    iput-object p2, v1, Le/a/l5/a/x0$b;->b:Ljava/lang/CharSequence;

    .line 5
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object p2

    const/4 v3, 0x1

    aput-boolean v3, p2, v4

    .line 6
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object p2

    const/4 v4, 0x2

    aget-object p2, p2, v4

    invoke-virtual {v1, p2, p1}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 7
    iput-object p1, v1, Le/a/l5/a/x0$b;->a:Ljava/lang/CharSequence;

    .line 8
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object p1

    aput-boolean v3, p1, v4

    .line 9
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object p1

    const/4 p2, 0x4

    aget-object p1, p1, p2

    invoke-virtual {v1, p1, p4}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 10
    iput-object p4, v1, Le/a/l5/a/x0$b;->c:Ljava/lang/CharSequence;

    .line 11
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object p1

    aput-boolean v3, p1, p2

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    move-object p3, v2

    .line 12
    :goto_1
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object p1

    const/4 p2, 0x5

    aget-object p1, p1, p2

    invoke-virtual {v1, p1, p3}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 13
    iput-object p3, v1, Le/a/l5/a/x0$b;->d:Ljava/lang/CharSequence;

    .line 14
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object p1

    aput-boolean v3, p1, p2

    .line 15
    invoke-virtual {v1}, Le/a/l5/a/x0$b;->a()Le/a/l5/a/x0;

    move-result-object p1

    .line 16
    invoke-interface {v0, p1}, Le/a/q2/a0;->a(Lorg/apache/avro/generic/GenericRecord;)V

    return-void
.end method

.method public final f(Lcom/truecaller/messaging/transport/im/ImTransportInfo;Z)Le/a/a/k/p;
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/truecaller/messaging/transport/im/ImTransportInfo;->k:[Lcom/truecaller/messaging/data/types/Reaction;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v2, p0, Le/a/a/k/a/a/t;->b:Le/a/r2/f;

    invoke-interface {v2}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/a/k/a/c0;

    .line 3
    iget-object p1, p1, Lcom/truecaller/messaging/transport/im/ImTransportInfo;->b:Ljava/lang/String;

    .line 4
    invoke-interface {v2, p1, v0}, Le/a/a/k/a/c0;->g(Ljava/lang/String;[Lcom/truecaller/messaging/data/types/Reaction;)Le/a/r2/x;

    move-result-object p1

    invoke-virtual {p1}, Le/a/r2/x;->c()Ljava/lang/Object;

    .line 5
    new-instance p1, Le/a/a/k/p;

    const/4 v0, 0x1

    invoke-direct {p1, v0, p2, p2, v1}, Le/a/a/k/p;-><init>(ZZZLs1/z/c/f;)V

    return-object p1

    .line 6
    :cond_0
    new-instance p1, Le/a/a/k/p;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2, p2, v1}, Le/a/a/k/p;-><init>(ZZZLs1/z/c/f;)V

    return-object p1
.end method

.method public final g(Lcom/truecaller/messaging/data/types/Reaction;Ljava/lang/String;Z)V
    .locals 26

    move-object/from16 v0, p1

    .line 1
    new-instance v1, Lcom/truecaller/messaging/data/types/Message$b;

    invoke-direct {v1}, Lcom/truecaller/messaging/data/types/Message$b;-><init>()V

    .line 2
    sget-object v2, Lcom/truecaller/data/entity/messaging/Participant;->B:Lcom/truecaller/data/entity/messaging/Participant;

    .line 3
    iput-object v2, v1, Lcom/truecaller/messaging/data/types/Message$b;->c:Lcom/truecaller/data/entity/messaging/Participant;

    if-eqz p3, :cond_0

    const/16 v2, 0x7d0

    goto :goto_0

    :cond_0
    const/16 v2, 0x7d1

    :goto_0
    move/from16 v24, v2

    const-string v2, "rawId"

    move-object/from16 v6, p2

    .line 4
    invoke-static {v6, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "reaction"

    .line 5
    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/truecaller/messaging/data/types/Reaction;

    const/4 v13, 0x0

    aput-object v0, v2, v13

    .line 6
    invoke-static {v2}, Ls1/u/i;->d0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 7
    new-instance v2, Lcom/truecaller/messaging/transport/im/ImTransportInfo;

    move-object v3, v2

    const/16 v22, 0x0

    new-array v4, v13, [Lcom/truecaller/messaging/data/types/Reaction;

    .line 8
    invoke-interface {v0, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    const-string v4, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {v0, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, [Lcom/truecaller/messaging/data/types/Reaction;

    const-wide/16 v14, 0x0

    const-wide/16 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v0, 0x0

    move v13, v0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v25, 0x0

    .line 9
    invoke-direct/range {v3 .. v25}, Lcom/truecaller/messaging/transport/im/ImTransportInfo;-><init>(JLjava/lang/String;IIIIIIIJ[Lcom/truecaller/messaging/data/types/Reaction;JIILjava/lang/String;[Lcom/truecaller/messaging/data/types/QuickAction;IILcom/truecaller/data/entity/messaging/Participant;)V

    const/4 v0, 0x2

    .line 10
    iput v0, v1, Lcom/truecaller/messaging/data/types/Message$b;->k:I

    .line 11
    iput-object v2, v1, Lcom/truecaller/messaging/data/types/Message$b;->n:Lcom/truecaller/messaging/data/types/TransportInfo;

    .line 12
    invoke-virtual {v1}, Lcom/truecaller/messaging/data/types/Message$b;->a()Lcom/truecaller/messaging/data/types/Message;

    move-result-object v0

    const-string v1, "Message.Builder()\n      \u2026   )\n            .build()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v1, p0

    .line 13
    iget-object v2, v1, Le/a/a/k/a/a/t;->e:Lo3/a;

    invoke-interface {v2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/r2/f;

    invoke-interface {v2}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/a/g/m;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Le/a/a/g/m;->d0(Lcom/truecaller/messaging/data/types/Message;Z)V

    return-void
.end method
