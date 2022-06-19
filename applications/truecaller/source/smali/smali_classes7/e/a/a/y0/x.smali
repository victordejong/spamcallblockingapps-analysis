.class public final Le/a/a/y0/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/y0/u;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Le/a/i4/q;

.field public final c:Le/a/i4/e;

.field public final d:Le/a/o5/f0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/i4/q;Le/a/i4/e;Le/a/o5/f0;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationIconHelper"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceManager"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/y0/x;->a:Landroid/content/Context;

    iput-object p2, p0, Le/a/a/y0/x;->b:Le/a/i4/q;

    iput-object p3, p0, Le/a/a/y0/x;->c:Le/a/i4/e;

    iput-object p4, p0, Le/a/a/y0/x;->d:Le/a/o5/f0;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;)V
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/truecaller/messaging/data/types/Reaction;",
            "+",
            "Lcom/truecaller/data/entity/messaging/Participant;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "reactionWithParticipant"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 2
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 3
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 4
    move-object v5, v4

    check-cast v5, Lcom/truecaller/messaging/data/types/Reaction;

    .line 5
    iget-wide v5, v5, Lcom/truecaller/messaging/data/types/Reaction;->g:J

    .line 6
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 7
    invoke-virtual {v3, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_0

    .line 8
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_0
    check-cast v6, Ljava/util/List;

    .line 11
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_1
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 13
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 14
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Iterable;

    .line 15
    instance-of v8, v7, Ljava/util/Collection;

    if-eqz v8, :cond_3

    move-object v8, v7

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_3

    .line 16
    :cond_3
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/truecaller/messaging/data/types/Reaction;

    .line 17
    iget v8, v8, Lcom/truecaller/messaging/data/types/Reaction;->f:I

    if-ne v8, v6, :cond_5

    move v8, v6

    goto :goto_2

    :cond_5
    move v8, v5

    :goto_2
    if-eqz v8, :cond_4

    goto :goto_4

    :cond_6
    :goto_3
    move v5, v6

    :goto_4
    if-nez v5, :cond_2

    .line 18
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 19
    :cond_7
    new-instance v3, Le/a/a/y0/v;

    invoke-direct {v3, v2}, Le/a/a/y0/v;-><init>(Ljava/util/Map;)V

    invoke-static {v2, v3}, Le/q/f/a/d/a;->l3(Ljava/util/Map;Ljava/util/Comparator;)Ljava/util/SortedMap;

    move-result-object v2

    .line 20
    check-cast v2, Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const-string v7, "reactions"

    .line 21
    invoke-static {v3, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Ls1/u/i;->x0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    .line 22
    new-instance v7, Ln3/k/a/s;

    invoke-direct {v7}, Ln3/k/a/s;-><init>()V

    .line 23
    iget-object v8, v0, Le/a/a/y0/x;->a:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f10005e

    .line 24
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    new-array v11, v6, [Ljava/lang/Object;

    .line 25
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v5

    .line 26
    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 27
    invoke-virtual {v7, v8}, Ln3/k/a/s;->m(Ljava/lang/CharSequence;)Ln3/k/a/s;

    .line 28
    invoke-static {v3}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/truecaller/messaging/data/types/Reaction;

    .line 29
    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/truecaller/data/entity/messaging/Participant;

    if-eqz v9, :cond_c

    .line 30
    new-instance v10, Ljava/util/ArrayList;

    const/16 v11, 0xa

    invoke-static {v3, v11}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 31
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .line 32
    check-cast v12, Lcom/truecaller/messaging/data/types/Reaction;

    .line 33
    iget-wide v12, v12, Lcom/truecaller/messaging/data/types/Reaction;->b:J

    .line 34
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_8
    invoke-static {v10}, Ls1/u/i;->U0(Ljava/util/Collection;)[J

    move-result-object v10

    .line 35
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_9
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    const/4 v12, 0x2

    const v13, 0x7f120e81

    if-eqz v11, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/truecaller/messaging/data/types/Reaction;

    .line 36
    invoke-interface {v1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/truecaller/data/entity/messaging/Participant;

    if-eqz v14, :cond_9

    .line 37
    iget-object v15, v0, Le/a/a/y0/x;->a:Landroid/content/Context;

    new-array v12, v12, [Ljava/lang/Object;

    iget-object v14, v14, Lcom/truecaller/data/entity/messaging/Participant;->l:Ljava/lang/String;

    aput-object v14, v12, v5

    .line 38
    iget-object v11, v11, Lcom/truecaller/messaging/data/types/Reaction;->d:Ljava/lang/String;

    aput-object v11, v12, v6

    .line 39
    invoke-virtual {v15, v13, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ln3/k/a/s;->k(Ljava/lang/CharSequence;)Ln3/k/a/s;

    goto :goto_7

    .line 40
    :cond_a
    iget-object v3, v0, Le/a/a/y0/x;->c:Le/a/i4/e;

    const-string v11, "personal_chats"

    invoke-interface {v3, v11}, Le/a/i4/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 41
    new-instance v11, Ln3/k/a/q;

    iget-object v14, v0, Le/a/a/y0/x;->a:Landroid/content/Context;

    invoke-direct {v11, v14, v3}, Ln3/k/a/q;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 42
    iget-object v3, v11, Ln3/k/a/q;->R:Landroid/app/Notification;

    const v14, 0x7f080581

    iput v14, v3, Landroid/app/Notification;->icon:I

    .line 43
    iget-object v3, v0, Le/a/a/y0/x;->a:Landroid/content/Context;

    const v14, 0x7f060024

    .line 44
    sget-object v15, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 45
    invoke-static {v3, v14}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v3

    .line 46
    iput v3, v11, Ln3/k/a/q;->D:I

    .line 47
    iget-object v3, v8, Lcom/truecaller/messaging/data/types/Reaction;->h:Ljava/lang/String;

    if-eqz v3, :cond_b

    goto :goto_8

    .line 48
    :cond_b
    iget-object v3, v9, Lcom/truecaller/data/entity/messaging/Participant;->l:Ljava/lang/String;

    :goto_8
    invoke-virtual {v11, v3}, Ln3/k/a/q;->n(Ljava/lang/CharSequence;)Ln3/k/a/q;

    .line 49
    iget-object v3, v0, Le/a/a/y0/x;->a:Landroid/content/Context;

    new-array v12, v12, [Ljava/lang/Object;

    iget-object v14, v9, Lcom/truecaller/data/entity/messaging/Participant;->l:Ljava/lang/String;

    aput-object v14, v12, v5

    .line 50
    iget-object v14, v8, Lcom/truecaller/messaging/data/types/Reaction;->d:Ljava/lang/String;

    aput-object v14, v12, v6

    .line 51
    invoke-virtual {v3, v13, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ln3/k/a/q;->m(Ljava/lang/CharSequence;)Ln3/k/a/q;

    const/4 v3, -0x1

    .line 52
    invoke-virtual {v11, v3}, Ln3/k/a/q;->o(I)Ln3/k/a/q;

    .line 53
    iput v6, v11, Ln3/k/a/q;->l:I

    .line 54
    sget-object v12, Lcom/truecaller/messaging/conversation/ConversationActivity;->e:Lcom/truecaller/messaging/conversation/ConversationActivity$a;

    iget-object v13, v0, Le/a/a/y0/x;->a:Landroid/content/Context;

    .line 55
    iget-wide v14, v8, Lcom/truecaller/messaging/data/types/Reaction;->g:J

    .line 56
    iget-wide v5, v8, Lcom/truecaller/messaging/data/types/Reaction;->b:J

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x3f8

    move-wide/from16 v16, v5

    .line 57
    invoke-static/range {v12 .. v25}, Lcom/truecaller/messaging/conversation/ConversationActivity$a;->c(Lcom/truecaller/messaging/conversation/ConversationActivity$a;Landroid/content/Context;JJLjava/lang/String;ZZZLjava/util/List;Lcom/truecaller/messaging/notifications/NotificationIdentifier;Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 58
    iput-object v5, v11, Ln3/k/a/q;->g:Landroid/app/PendingIntent;

    .line 59
    iget-object v5, v0, Le/a/a/y0/x;->a:Landroid/content/Context;

    .line 60
    iget-wide v12, v8, Lcom/truecaller/messaging/data/types/Reaction;->b:J

    long-to-int v6, v12

    const-string v12, "context"

    .line 61
    invoke-static {v5, v12}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "messageIds"

    invoke-static {v10, v12}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    new-instance v12, Landroid/content/Intent;

    const-class v13, Lcom/truecaller/messaging/notifications/ReactionBroadcastReceiver;

    invoke-direct {v12, v5, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v13, "com.truecaller.mark_as_seen"

    .line 63
    invoke-virtual {v12, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v13, "message_ids"

    .line 64
    invoke-virtual {v12, v13, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    const/high16 v10, 0xc000000

    .line 65
    invoke-static {v5, v6, v12, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    const-string v6, "PendingIntent.getBroadca\u2026ingIntent.FLAG_IMMUTABLE)"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    iget-object v6, v11, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput-object v5, v6, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    const/16 v5, 0x10

    const/4 v6, 0x1

    .line 67
    invoke-virtual {v11, v5, v6}, Ln3/k/a/q;->p(IZ)V

    .line 68
    iget-wide v12, v8, Lcom/truecaller/messaging/data/types/Reaction;->e:J

    .line 69
    iget-object v5, v11, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput-wide v12, v5, Landroid/app/Notification;->when:J

    const-string v5, "Builder(context, channel\u2026  .setWhen(reaction.date)"

    .line 70
    invoke-static {v11, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-virtual {v11, v7}, Ln3/k/a/q;->x(Ln3/k/a/u;)Ln3/k/a/q;

    const-string v5, "buildNotification(lastRe\u2026Ids).setStyle(inboxStyle)"

    invoke-static {v11, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    iget-object v5, v0, Le/a/a/y0/x;->c:Le/a/i4/e;

    .line 73
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const v7, 0x7f0a0984

    .line 74
    iget-object v8, v0, Le/a/a/y0/x;->b:Le/a/i4/q;

    new-instance v10, Le/a/a/y0/w;

    invoke-direct {v10, v9, v0, v1}, Le/a/a/y0/w;-><init>(Lcom/truecaller/data/entity/messaging/Participant;Le/a/a/y0/x;Ljava/util/Map;)V

    invoke-interface {v8, v11, v10}, Le/a/i4/q;->a(Ln3/k/a/q;Le/a/i4/q$a;)Landroid/app/Notification;

    move-result-object v8

    const-string v9, "notificationIconHelper.c\u2026Avatar(lastParticipant) }"

    invoke-static {v8, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "notificationIncomingReaction"

    .line 75
    invoke-interface {v5, v4, v7, v8, v9}, Le/a/i4/e;->i(Ljava/lang/String;ILandroid/app/Notification;Ljava/lang/String;)V

    const/4 v5, 0x0

    goto/16 :goto_5

    :cond_c
    return-void
.end method

.method public b(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/y0/x;->c:Le/a/i4/e;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const p2, 0x7f0a0984

    invoke-interface {v0, p1, p2}, Le/a/i4/e;->b(Ljava/lang/String;I)V

    return-void
.end method
