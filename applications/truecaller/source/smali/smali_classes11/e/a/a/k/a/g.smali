.class public final Le/a/a/k/a/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/r2/f<",
            "Le/a/a/g/m;",
            ">;>;"
        }
    .end annotation
.end field

.field public final b:Landroid/content/ContentResolver;

.field public final c:Le/a/u3/g;

.field public final d:Le/a/b0/e/l;

.field public final e:Le/a/a/g/g;

.field public final f:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/r2/f<",
            "Le/a/a/y0/q;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo3/a;Landroid/content/ContentResolver;Le/a/u3/g;Le/a/b0/e/l;Le/a/a/g/g;Lo3/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo3/a<",
            "Le/a/r2/f<",
            "Le/a/a/g/m;",
            ">;>;",
            "Landroid/content/ContentResolver;",
            "Le/a/u3/g;",
            "Le/a/b0/e/l;",
            "Le/a/a/g/g;",
            "Lo3/a<",
            "Le/a/r2/f<",
            "Le/a/a/y0/q;",
            ">;>;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "messagesStorage"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentResolver"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountManager"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cursorsFactory"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationsManager"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/k/a/g;->a:Lo3/a;

    iput-object p2, p0, Le/a/a/k/a/g;->b:Landroid/content/ContentResolver;

    iput-object p3, p0, Le/a/a/k/a/g;->c:Le/a/u3/g;

    iput-object p4, p0, Le/a/a/k/a/g;->d:Le/a/b0/e/l;

    iput-object p5, p0, Le/a/a/k/a/g;->e:Le/a/a/g/g;

    iput-object p6, p0, Le/a/a/k/a/g;->f:Lo3/a;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/truecaller/messaging/data/types/Conversation;
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/a/k/a/g;->b:Landroid/content/ContentResolver;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 2
    invoke-static {v2, v1}, Le/a/b0/q/g0;->m([Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 3
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 4
    :try_start_0
    iget-object v1, p0, Le/a/a/k/a/g;->e:Le/a/a/g/g;

    invoke-interface {v1, p1}, Le/a/a/g/g;->t(Landroid/database/Cursor;)Le/a/a/g/j0/a;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Le/a/a/g/j0/a;->p()Lcom/truecaller/messaging/data/types/Conversation;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 6
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {p1, v0}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    move-object v1, v0

    :goto_1
    invoke-static {p1, v0}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public b(Lcom/truecaller/api/services/messenger/v1/events/Event;I)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "event"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual/range {p0 .. p1}, Le/a/a/k/a/g;->c(Lcom/truecaller/api/services/messenger/v1/events/Event;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/events/Event;->getPayloadCase()Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_4

    const/4 v4, 0x1

    const/4 v5, 0x3

    if-eq v2, v4, :cond_3

    if-eq v2, v3, :cond_2

    const/16 v4, 0x9

    if-eq v2, v4, :cond_1

    :goto_0
    return-void

    .line 3
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/events/Event;->getUserTyping()Lcom/truecaller/api/services/messenger/v1/events/Event$UserTyping;

    move-result-object v1

    const-string v2, "event.userTyping"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/truecaller/api/services/messenger/v1/events/Event$UserTyping;->getSender()Lcom/truecaller/api/services/messenger/v1/models/Peer$User;

    move-result-object v1

    const-string v2, "event.userTyping.sender"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v1, v2, v2, v5}, Le/a/c/p/a;->k3(Lcom/truecaller/api/services/messenger/v1/models/Peer$User;Ljava/lang/Boolean;Ljava/lang/Integer;I)Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object v1

    goto :goto_1

    .line 4
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/events/Event;->getReactionSent()Lcom/truecaller/api/services/messenger/v1/events/Event$ReactionSent;

    move-result-object v1

    const-string v2, "event.reactionSent"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/truecaller/api/services/messenger/v1/events/Event$ReactionSent;->getSender()Lcom/truecaller/api/services/messenger/v1/models/Peer;

    move-result-object v1

    const-string v2, "event.reactionSent.sender"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Le/a/c/p/a;->i3(Lcom/truecaller/api/services/messenger/v1/models/Peer;)Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object v1

    goto :goto_1

    .line 5
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/events/Event;->getReportSent()Lcom/truecaller/api/services/messenger/v1/events/Event$ReportSent;

    move-result-object v1

    const-string v2, "event.reportSent"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/truecaller/api/services/messenger/v1/events/Event$ReportSent;->getSenderId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "event.reportSent.senderId"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v2, Lcom/truecaller/data/entity/messaging/Participant$b;

    invoke-direct {v2, v5}, Lcom/truecaller/data/entity/messaging/Participant$b;-><init>(I)V

    .line 7
    iput-object v1, v2, Lcom/truecaller/data/entity/messaging/Participant$b;->e:Ljava/lang/String;

    .line 8
    iput-object v1, v2, Lcom/truecaller/data/entity/messaging/Participant$b;->c:Ljava/lang/String;

    .line 9
    invoke-virtual {v2}, Lcom/truecaller/data/entity/messaging/Participant$b;->a()Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object v1

    const-string v2, "Participant.Builder(True\u2026PeerId(imId)\n    .build()"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 10
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/api/services/messenger/v1/events/Event;->getMessageSent()Lcom/truecaller/api/services/messenger/v1/events/Event$MessageSent;

    move-result-object v2

    const-string v4, "event.messageSent"

    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageSent;->getSender()Lcom/truecaller/api/services/messenger/v1/models/Peer$User;

    move-result-object v2

    const-string v4, "event.messageSent.sender"

    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v0, Le/a/a/k/a/g;->c:Le/a/u3/g;

    invoke-static {v1, v4}, Le/a/c/p/a;->g1(Lcom/truecaller/api/services/messenger/v1/events/Event;Le/a/u3/g;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static/range {p1 .. p1}, Le/a/c/p/a;->L(Lcom/truecaller/api/services/messenger/v1/events/Event;)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2, v4, v1}, Le/a/c/p/a;->h3(Lcom/truecaller/api/services/messenger/v1/models/Peer$User;Ljava/lang/Boolean;Ljava/lang/Integer;)Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object v1

    .line 11
    :goto_1
    new-instance v2, Lcom/truecaller/messaging/data/types/Message$b;

    invoke-direct {v2}, Lcom/truecaller/messaging/data/types/Message$b;-><init>()V

    .line 12
    iput-object v1, v2, Lcom/truecaller/messaging/data/types/Message$b;->c:Lcom/truecaller/data/entity/messaging/Participant;

    const/16 v22, 0x0

    const/16 v21, 0x0

    const/16 v20, 0x0

    const-wide/16 v18, 0x0

    const/16 v26, 0x0

    const/16 v24, 0x0

    const-wide/16 v15, 0x0

    const/4 v14, 0x0

    const/4 v13, 0x0

    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    const-wide/16 v5, 0x0

    .line 13
    new-instance v1, Lcom/truecaller/messaging/transport/im/ImTransportInfo;

    move-object v4, v1

    const/16 v17, 0x0

    move-object/from16 v23, v17

    const-string v7, ""

    move/from16 v25, p2

    invoke-direct/range {v4 .. v26}, Lcom/truecaller/messaging/transport/im/ImTransportInfo;-><init>(JLjava/lang/String;IIIIIIIJ[Lcom/truecaller/messaging/data/types/Reaction;JIILjava/lang/String;[Lcom/truecaller/messaging/data/types/QuickAction;IILcom/truecaller/data/entity/messaging/Participant;)V

    .line 14
    iput v3, v2, Lcom/truecaller/messaging/data/types/Message$b;->k:I

    .line 15
    iput-object v1, v2, Lcom/truecaller/messaging/data/types/Message$b;->n:Lcom/truecaller/messaging/data/types/TransportInfo;

    const/4 v1, 0x0

    .line 16
    iput-boolean v1, v2, Lcom/truecaller/messaging/data/types/Message$b;->q:Z

    .line 17
    invoke-virtual {v2}, Lcom/truecaller/messaging/data/types/Message$b;->a()Lcom/truecaller/messaging/data/types/Message;

    move-result-object v2

    const-string v3, "Message.Builder()\n      \u2026\n                .build()"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iget-object v3, v0, Le/a/a/k/a/g;->a:Lo3/a;

    invoke-interface {v3}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/r2/f;

    invoke-interface {v3}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/a/g/m;

    invoke-interface {v3, v2, v1}, Le/a/a/g/m;->d0(Lcom/truecaller/messaging/data/types/Message;Z)V

    :cond_5
    return-void
.end method

.method public c(Lcom/truecaller/api/services/messenger/v1/events/Event;)Z
    .locals 5

    const-string v0, "event"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/truecaller/api/services/messenger/v1/events/Event;->getPayloadCase()Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/16 v2, 0x9

    if-eq v0, v2, :cond_1

    :goto_0
    return v1

    .line 2
    :cond_1
    invoke-virtual {p1}, Lcom/truecaller/api/services/messenger/v1/events/Event;->getUserTyping()Lcom/truecaller/api/services/messenger/v1/events/Event$UserTyping;

    move-result-object p1

    const-string v0, "event.userTyping"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$UserTyping;->getKnownPhoneNumbersList()Ljava/util/List;

    move-result-object p1

    const-string v0, "event.userTyping.knownPhoneNumbersList"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 3
    :cond_2
    invoke-virtual {p1}, Lcom/truecaller/api/services/messenger/v1/events/Event;->getReactionSent()Lcom/truecaller/api/services/messenger/v1/events/Event$ReactionSent;

    move-result-object p1

    const-string v0, "event.reactionSent"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$ReactionSent;->getKnownPhoneNumbersList()Ljava/util/List;

    move-result-object p1

    const-string v0, "event.reactionSent.knownPhoneNumbersList"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 4
    :cond_3
    invoke-virtual {p1}, Lcom/truecaller/api/services/messenger/v1/events/Event;->getReportSent()Lcom/truecaller/api/services/messenger/v1/events/Event$ReportSent;

    move-result-object p1

    const-string v0, "event.reportSent"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$ReportSent;->getKnownPhoneNumbersList()Ljava/util/List;

    move-result-object p1

    const-string v0, "event.reportSent.knownPhoneNumbersList"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 5
    :cond_4
    invoke-virtual {p1}, Lcom/truecaller/api/services/messenger/v1/events/Event;->getMessageSent()Lcom/truecaller/api/services/messenger/v1/events/Event$MessageSent;

    move-result-object p1

    const-string v0, "event.messageSent"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/truecaller/api/services/messenger/v1/events/Event$MessageSent;->getKnownPhoneNumbersList()Ljava/util/List;

    move-result-object p1

    const-string v0, "event.messageSent.knownPhoneNumbersList"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    :goto_1
    iget-object v0, p0, Le/a/a/k/a/g;->d:Le/a/b0/e/l;

    invoke-interface {v0}, Le/a/b0/e/l;->n()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const/4 v2, 0x4

    const-string v3, "+"

    const-string v4, ""

    .line 7
    invoke-static {v0, v3, v4, v1, v2}, Ls1/f0/r;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-static {v0}, Ls1/f0/q;->j(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 9
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/protobuf/Int64Value;->of(J)Lcom/google/protobuf/Int64Value;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 10
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_5
    return v1
.end method
