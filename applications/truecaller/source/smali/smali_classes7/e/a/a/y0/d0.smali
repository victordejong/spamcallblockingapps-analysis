.class public final Le/a/a/y0/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/y0/y;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Landroid/content/Context;

.field public final d:Le/a/o5/f0;

.field public final e:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/i4/e;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/b0/a/a0/a;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/a/y0/l;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/u3/g;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Le/a/a/i0;

.field public final j:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/o5/l1;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/a/y0/n;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/a/i1/b;",
            ">;"
        }
    .end annotation
.end field

.field public final m:Le/a/b0/o/a;

.field public final n:Le/a/b0/e/r/a;

.field public final o:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/a/g/w;",
            ">;"
        }
    .end annotation
.end field

.field public final p:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/a/c/o/h;",
            ">;"
        }
    .end annotation
.end field

.field public final q:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/h4/g;",
            ">;"
        }
    .end annotation
.end field

.field public final r:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/h4/n;",
            ">;"
        }
    .end annotation
.end field

.field public final s:Z

.field public final t:Le/a/p5/a0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/o5/f0;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Le/a/a/i0;Lo3/a;Lo3/a;Lo3/a;Le/a/b0/o/a;Le/a/b0/e/r/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;ZLe/a/p5/a0;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Le/a/o5/f0;",
            "Lo3/a<",
            "Le/a/i4/e;",
            ">;",
            "Lo3/a<",
            "Le/a/b0/a/a0/a;",
            ">;",
            "Lo3/a<",
            "Le/a/a/y0/l;",
            ">;",
            "Lo3/a<",
            "Le/a/u3/g;",
            ">;",
            "Le/a/a/i0;",
            "Lo3/a<",
            "Le/a/o5/l1;",
            ">;",
            "Lo3/a<",
            "Le/a/a/y0/n;",
            ">;",
            "Lo3/a<",
            "Le/a/a/i1/b;",
            ">;",
            "Le/a/b0/o/a;",
            "Le/a/b0/e/r/a;",
            "Lo3/a<",
            "Le/a/a/g/w;",
            ">;",
            "Lo3/a<",
            "Le/a/a/c/o/h;",
            ">;",
            "Lo3/a<",
            "Le/a/h4/g;",
            ">;",
            "Lo3/a<",
            "Le/a/h4/n;",
            ">;Z",
            "Le/a/p5/a0;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v0, p16

    const-string v0, "context"

    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceManager"

    invoke-static {v2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationManager"

    invoke-static {v3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "avatarXPresenter"

    invoke-static {v4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "searchHelper"

    invoke-static {v5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {v6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageSettings"

    invoke-static {v7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ringtoneNotificationSettings"

    invoke-static {v8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationState"

    invoke-static {v9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageUtil"

    invoke-static {v10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coreSettings"

    invoke-static {v11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountSettings"

    invoke-static {v12, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "readMessageStorage"

    invoke-static {v13, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "conversationNotificationsManager"

    invoke-static {v14, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messagingNotificationSettings"

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "systemNotificationManager"

    move-object/from16 v15, p16

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissionUtil"

    move-object/from16 v15, p18

    invoke-static {v15, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v15, p16

    iput-object v1, v0, Le/a/a/y0/d0;->c:Landroid/content/Context;

    iput-object v2, v0, Le/a/a/y0/d0;->d:Le/a/o5/f0;

    iput-object v3, v0, Le/a/a/y0/d0;->e:Lo3/a;

    iput-object v4, v0, Le/a/a/y0/d0;->f:Lo3/a;

    iput-object v5, v0, Le/a/a/y0/d0;->g:Lo3/a;

    iput-object v6, v0, Le/a/a/y0/d0;->h:Lo3/a;

    iput-object v7, v0, Le/a/a/y0/d0;->i:Le/a/a/i0;

    iput-object v8, v0, Le/a/a/y0/d0;->j:Lo3/a;

    iput-object v9, v0, Le/a/a/y0/d0;->k:Lo3/a;

    iput-object v10, v0, Le/a/a/y0/d0;->l:Lo3/a;

    iput-object v11, v0, Le/a/a/y0/d0;->m:Le/a/b0/o/a;

    iput-object v12, v0, Le/a/a/y0/d0;->n:Le/a/b0/e/r/a;

    iput-object v13, v0, Le/a/a/y0/d0;->o:Lo3/a;

    iput-object v14, v0, Le/a/a/y0/d0;->p:Lo3/a;

    move-object/from16 v2, p15

    iput-object v2, v0, Le/a/a/y0/d0;->q:Lo3/a;

    iput-object v15, v0, Le/a/a/y0/d0;->r:Lo3/a;

    move/from16 v2, p17

    iput-boolean v2, v0, Le/a/a/y0/d0;->s:Z

    move-object/from16 v2, p18

    iput-object v2, v0, Le/a/a/y0/d0;->t:Le/a/p5/a0;

    .line 2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070362

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Le/a/a/y0/d0;->a:I

    .line 3
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Le/a/a/y0/d0;->b:I

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const-string v0, "conversationIds"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const v2, 0x7f0a0c36

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    .line 2
    iget-object v1, p0, Le/a/a/y0/d0;->e:Lo3/a;

    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/i4/e;

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Le/a/i4/e;->b(Ljava/lang/String;I)V

    goto :goto_0

    .line 3
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_4

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 6
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    .line 7
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-static {v0}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    .line 8
    invoke-virtual {p0}, Le/a/a/y0/d0;->d()Ljava/util/List;

    move-result-object v0

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Landroid/service/notification/StatusBarNotification;

    .line 11
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    xor-int/2addr v4, v5

    if-eqz v4, :cond_2

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 12
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v4, :cond_4

    const/4 p1, 0x0

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4

    .line 13
    iget-object p1, p0, Le/a/a/y0/d0;->e:Lo3/a;

    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/i4/e;

    invoke-interface {p1, v2}, Le/a/i4/e;->f(I)V

    :cond_4
    return-void
.end method

.method public b(Ljava/util/Map;)V
    .locals 44
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/truecaller/messaging/data/types/Conversation;",
            "+",
            "Ljava/util/List<",
            "Lcom/truecaller/messaging/data/types/Message;",
            ">;>;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "conversations"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 4
    instance-of v8, v7, Ljava/util/Collection;

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/truecaller/messaging/data/types/Message;

    .line 6
    invoke-static {v8}, Le/a/c/p/a;->s1(Lcom/truecaller/messaging/data/types/Message;)Z

    move-result v8

    if-eqz v8, :cond_2

    move v5, v6

    :cond_3
    :goto_1
    if-eqz v5, :cond_0

    .line 7
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_4
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    const/16 v7, 0x18

    const v8, 0x7f0a0c36

    if-eqz v4, :cond_5

    if-ge v3, v7, :cond_4d

    .line 9
    iget-object v0, v1, Le/a/a/y0/d0;->e:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/i4/e;

    invoke-interface {v0, v8}, Le/a/i4/e;->f(I)V

    goto/16 :goto_30

    .line 10
    :cond_5
    iget-object v4, v1, Le/a/a/y0/d0;->g:Lo3/a;

    invoke-interface {v4}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/a/y0/l;

    invoke-interface {v4, v0}, Le/a/a/y0/l;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 11
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v11

    invoke-static {v11}, Le/q/f/a/d/a;->Y1(I)I

    move-result v11

    invoke-direct {v4, v11}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 12
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 13
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 14
    check-cast v11, Ljava/util/Map$Entry;

    .line 15
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 16
    new-instance v13, Le/a/a/y0/z;

    invoke-direct {v13}, Le/a/a/y0/z;-><init>()V

    invoke-static {v11, v13}, Ls1/u/i;->F0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v4, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 17
    :cond_6
    new-instance v0, Le/a/a/y0/f0;

    invoke-direct {v0}, Le/a/a/y0/f0;-><init>()V

    invoke-static {v4, v0}, Le/q/f/a/d/a;->l3(Ljava/util/Map;Ljava/util/Comparator;)Ljava/util/SortedMap;

    move-result-object v0

    .line 18
    move-object v4, v0

    check-cast v4, Ljava/util/TreeMap;

    invoke-virtual {v4}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/truecaller/messaging/data/types/Conversation;

    .line 19
    invoke-static {v0, v11}, Ls1/u/i;->H(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    const-string v13, "sortedConversations.getValue(latestConversation)"

    invoke-static {v12, v13}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v12, Ljava/util/List;

    invoke-static {v12}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/truecaller/messaging/data/types/Message;

    .line 20
    iget-object v14, v12, Lcom/truecaller/messaging/data/types/Message;->c:Lcom/truecaller/data/entity/messaging/Participant;

    const-string v15, "latestMessage.participant"

    invoke-static {v14, v15}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/truecaller/data/entity/messaging/Participant;->n()Z

    move-result v14

    .line 21
    invoke-static {v0, v11}, Ls1/u/i;->H(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-static {v15, v13}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v15, Ljava/util/List;

    invoke-static {v15}, Ls1/u/i;->Q(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/truecaller/messaging/data/types/Message;

    invoke-virtual {v1, v13}, Le/a/a/y0/d0;->k(Lcom/truecaller/messaging/data/types/Message;)Z

    move-result v13

    const/4 v15, 0x2

    if-eqz v13, :cond_7

    const-string v11, "urgent_messages_ringtone"

    goto/16 :goto_9

    :cond_7
    const-string v13, "latestConversation"

    .line 22
    invoke-static {v11, v13}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iget-object v13, v1, Le/a/a/y0/d0;->j:Lo3/a;

    invoke-interface {v13}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Le/a/o5/l1;

    invoke-interface {v13}, Le/a/o5/l1;->g()Landroid/net/Uri;

    move-result-object v13

    .line 24
    iget-object v7, v1, Le/a/a/y0/d0;->i:Le/a/a/i0;

    invoke-interface {v7}, Le/a/a/i0;->i3()Ljava/lang/String;

    move-result-object v7

    if-eqz v13, :cond_8

    invoke-virtual {v13}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v8, v16

    goto :goto_3

    :cond_8
    const/4 v8, 0x0

    :goto_3
    invoke-static {v7, v8}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    xor-int/2addr v7, v6

    if-eqz v7, :cond_a

    .line 25
    iget-object v7, v1, Le/a/a/y0/d0;->i:Le/a/a/i0;

    if-eqz v13, :cond_9

    invoke-virtual {v13}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    :cond_9
    const/4 v8, 0x0

    :goto_4
    invoke-interface {v7, v8}, Le/a/a/i0;->e4(Ljava/lang/String;)V

    .line 26
    iget-object v7, v1, Le/a/a/y0/d0;->q:Lo3/a;

    invoke-interface {v7}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le/a/h4/g;

    invoke-interface {v7}, Le/a/h4/g;->a()V

    .line 27
    iget-object v7, v1, Le/a/a/y0/d0;->r:Lo3/a;

    invoke-interface {v7}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le/a/h4/n;

    invoke-interface {v7, v5}, Le/a/h4/n;->k(Z)Z

    .line 28
    :cond_a
    iget-object v7, v1, Le/a/a/y0/d0;->j:Lo3/a;

    invoke-interface {v7}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le/a/o5/l1;

    invoke-interface {v7}, Le/a/o5/l1;->d()Landroid/net/Uri;

    move-result-object v7

    .line 29
    iget-object v8, v1, Le/a/a/y0/d0;->i:Le/a/a/i0;

    invoke-interface {v8}, Le/a/a/i0;->j1()Ljava/lang/String;

    move-result-object v8

    if-eqz v7, :cond_b

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_5

    :cond_b
    const/4 v13, 0x0

    :goto_5
    invoke-static {v8, v13}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    xor-int/2addr v8, v6

    if-eqz v8, :cond_d

    .line 30
    iget-object v8, v1, Le/a/a/y0/d0;->i:Le/a/a/i0;

    if-eqz v7, :cond_c

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_6

    :cond_c
    const/4 v7, 0x0

    :goto_6
    invoke-interface {v8, v7}, Le/a/a/i0;->G1(Ljava/lang/String;)V

    .line 31
    iget-object v7, v1, Le/a/a/y0/d0;->q:Lo3/a;

    invoke-interface {v7}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le/a/h4/g;

    invoke-interface {v7}, Le/a/h4/g;->d()V

    .line 32
    iget-object v7, v1, Le/a/a/y0/d0;->r:Lo3/a;

    invoke-interface {v7}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le/a/h4/n;

    invoke-interface {v7, v5}, Le/a/h4/n;->k(Z)Z

    .line 33
    :cond_d
    iget-object v7, v1, Le/a/a/y0/d0;->p:Lo3/a;

    invoke-interface {v7}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le/a/a/c/o/h;

    invoke-interface {v7, v11}, Le/a/a/c/o/h;->f(Lcom/truecaller/messaging/data/types/Conversation;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_e

    move-object v11, v7

    goto :goto_9

    :cond_e
    iget v7, v12, Lcom/truecaller/messaging/data/types/Message;->k:I

    if-ne v7, v15, :cond_f

    move v7, v6

    goto :goto_7

    :cond_f
    move v7, v5

    :goto_7
    if-ne v7, v6, :cond_11

    .line 34
    iget-object v7, v11, Lcom/truecaller/messaging/data/types/Conversation;->z:Lcom/truecaller/messaging/data/types/ImGroupInfo;

    if-eqz v7, :cond_10

    const-string v7, "group_chats"

    goto :goto_8

    :cond_10
    const-string v7, "personal_chats"

    goto :goto_8

    :cond_11
    if-nez v7, :cond_53

    if-eqz v14, :cond_12

    const-string v7, "spam_sms"

    goto :goto_8

    :cond_12
    const-string v7, "non_spam_sms_v2"

    .line 35
    :goto_8
    iget-object v8, v1, Le/a/a/y0/d0;->e:Lo3/a;

    invoke-interface {v8}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Le/a/i4/e;

    invoke-interface {v8, v7}, Le/a/i4/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 36
    :goto_9
    invoke-virtual {v4}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const-string v12, "messages"

    const-string v13, "conversation"

    const-string v9, "notificationIncomingMessage"

    const-string v5, "notification.build()"

    const-string v10, "com.truecaller.messaging.NEW_MESSAGES"

    if-eqz v8, :cond_3d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v6, v20

    check-cast v6, Lcom/truecaller/messaging/data/types/Conversation;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 37
    invoke-static {v6, v13}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    new-instance v12, Ls1/k;

    invoke-direct {v12, v6, v8}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 39
    invoke-static {v12}, Le/q/f/a/d/a;->Z1(Ls1/k;)Ljava/util/Map;

    move-result-object v12

    invoke-virtual {v1, v12}, Le/a/a/y0/d0;->l(Ljava/util/Map;)Z

    move-result v12

    if-nez v12, :cond_13

    move-object/from16 v24, v0

    move-object/from16 v23, v4

    move-object/from16 v22, v7

    move/from16 v37, v14

    goto/16 :goto_26

    .line 40
    :cond_13
    iget-wide v12, v6, Lcom/truecaller/messaging/data/types/Conversation;->a:J

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    .line 41
    new-instance v13, Ln3/k/a/q;

    iget-object v15, v1, Le/a/a/y0/d0;->c:Landroid/content/Context;

    invoke-direct {v13, v15, v11}, Ln3/k/a/q;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 42
    iget-object v15, v13, Ln3/k/a/q;->R:Landroid/app/Notification;

    const v2, 0x7f080581

    iput v2, v15, Landroid/app/Notification;->icon:I

    .line 43
    iget-object v2, v1, Le/a/a/y0/d0;->c:Landroid/content/Context;

    .line 44
    sget-object v15, Ln3/k/b/a;->a:Ljava/lang/Object;

    move-object/from16 v22, v7

    const v7, 0x7f060024

    .line 45
    invoke-static {v2, v7}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v2

    .line 46
    iput v2, v13, Ln3/k/a/q;->D:I

    .line 47
    new-instance v2, Ln3/k/a/t;

    invoke-virtual/range {p0 .. p0}, Le/a/a/y0/d0;->h()Ln3/k/a/y;

    move-result-object v7

    invoke-direct {v2, v7}, Ln3/k/a/t;-><init>(Ln3/k/a/y;)V

    .line 48
    invoke-static {v6}, Le/a/c/p/a;->o1(Lcom/truecaller/messaging/data/types/Conversation;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 49
    invoke-virtual {v1, v6}, Le/a/a/y0/d0;->f(Lcom/truecaller/messaging/data/types/Conversation;)Ljava/lang/String;

    move-result-object v7

    .line 50
    iput-object v7, v2, Ln3/k/a/t;->h:Ljava/lang/CharSequence;

    .line 51
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v7, v2, Ln3/k/a/t;->i:Ljava/lang/Boolean;

    .line 52
    :cond_14
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_16

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/truecaller/messaging/data/types/Message;

    move-object/from16 v19, v7

    .line 53
    invoke-virtual {v1, v15}, Le/a/a/y0/d0;->g(Lcom/truecaller/messaging/data/types/Message;)Ljava/lang/CharSequence;

    move-result-object v7

    move-object/from16 v23, v4

    iget-object v4, v15, Lcom/truecaller/messaging/data/types/Message;->e:Lw3/b/a/b;

    move-object/from16 v24, v0

    const-string v0, "message.date"

    invoke-static {v4, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v5

    .line 54
    iget-wide v4, v4, Lw3/b/a/e0/e;->a:J

    .line 55
    invoke-static {v15}, Le/a/c/p/a;->x1(Lcom/truecaller/messaging/data/types/Message;)Z

    move-result v20

    if-eqz v20, :cond_15

    invoke-virtual/range {p0 .. p0}, Le/a/a/y0/d0;->h()Ln3/k/a/y;

    move-result-object v15

    move-object/from16 v25, v9

    goto :goto_c

    .line 56
    :cond_15
    iget-object v15, v15, Lcom/truecaller/messaging/data/types/Message;->c:Lcom/truecaller/data/entity/messaging/Participant;

    move-object/from16 v25, v9

    const-string v9, "participant"

    invoke-static {v15, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v15}, Le/a/a/y0/d0;->m(Lcom/truecaller/data/entity/messaging/Participant;)Ln3/k/a/y;

    move-result-object v15

    .line 57
    :goto_c
    invoke-virtual {v2, v7, v4, v5, v15}, Ln3/k/a/t;->k(Ljava/lang/CharSequence;JLn3/k/a/y;)Ln3/k/a/t;

    move-object v5, v0

    move-object/from16 v7, v19

    move-object/from16 v4, v23

    move-object/from16 v0, v24

    move-object/from16 v9, v25

    goto :goto_b

    :cond_16
    move-object/from16 v24, v0

    move-object/from16 v23, v4

    move-object v0, v5

    move-object/from16 v25, v9

    .line 58
    invoke-virtual {v13, v2}, Ln3/k/a/q;->x(Ln3/k/a/u;)Ln3/k/a/q;

    .line 59
    invoke-static {v8}, Ls1/u/i;->Q(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/truecaller/messaging/data/types/Message;

    iget-object v2, v2, Lcom/truecaller/messaging/data/types/Message;->e:Lw3/b/a/b;

    const-string v4, "messages.last().date"

    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iget-wide v4, v2, Lw3/b/a/e0/e;->a:J

    .line 61
    iget-object v2, v13, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput-wide v4, v2, Landroid/app/Notification;->when:J

    .line 62
    iput-object v10, v13, Ln3/k/a/q;->v:Ljava/lang/String;

    const/4 v2, 0x2

    .line 63
    iput v2, v13, Ln3/k/a/q;->O:I

    .line 64
    new-instance v2, Ls1/k;

    invoke-direct {v2, v6, v8}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 65
    invoke-static {v2}, Le/q/f/a/d/a;->Z1(Ls1/k;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Le/a/a/y0/d0;->j(Ljava/util/Map;)Z

    move-result v2

    const/4 v4, 0x1

    xor-int/2addr v2, v4

    const/16 v4, 0x8

    .line 66
    invoke-virtual {v13, v4, v2}, Ln3/k/a/q;->p(IZ)V

    const-string v2, "NotificationCompat.Build\u2026nversation to messages)))"

    .line 67
    invoke-static {v13, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "size"

    const/16 v4, 0x1e

    if-lt v3, v4, :cond_36

    .line 68
    iget v5, v6, Lcom/truecaller/messaging/data/types/Conversation;->c:I

    const/4 v7, 0x2

    if-eq v5, v7, :cond_18

    const/4 v7, 0x3

    if-eq v5, v7, :cond_18

    invoke-virtual {v6}, Lcom/truecaller/messaging/data/types/Conversation;->b()Z

    move-result v5

    if-eqz v5, :cond_17

    iget v5, v6, Lcom/truecaller/messaging/data/types/Conversation;->o:I

    if-gtz v5, :cond_17

    iget v5, v6, Lcom/truecaller/messaging/data/types/Conversation;->p:I

    if-lez v5, :cond_18

    :cond_17
    const/4 v5, 0x1

    goto :goto_d

    :cond_18
    const/4 v5, 0x0

    :goto_d
    if-eqz v5, :cond_36

    .line 69
    iget v5, v1, Le/a/a/y0/d0;->b:I

    .line 70
    iget-object v7, v6, Lcom/truecaller/messaging/data/types/Conversation;->z:Lcom/truecaller/messaging/data/types/ImGroupInfo;

    const-string v9, "conversation.participants"

    if-eqz v7, :cond_1c

    .line 71
    iget-object v7, v7, Lcom/truecaller/messaging/data/types/ImGroupInfo;->c:Ljava/lang/String;

    if-eqz v7, :cond_1c

    .line 72
    new-instance v10, Le/a/z3/i/d;

    invoke-direct {v10, v5, v5}, Le/a/z3/i/d;-><init>(II)V

    .line 73
    invoke-static {v10, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v15

    if-nez v15, :cond_19

    const/4 v15, 0x1

    goto :goto_e

    :cond_19
    const/4 v15, 0x0

    :goto_e
    if-nez v15, :cond_1a

    goto :goto_f

    :cond_1a
    const/4 v7, 0x0

    :goto_f
    if-eqz v7, :cond_1b

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    goto :goto_10

    :cond_1b
    const/4 v7, 0x0

    .line 75
    :goto_10
    new-instance v15, Le/a/z3/i/a;

    invoke-direct {v15, v7, v10}, Le/a/z3/i/a;-><init>(Landroid/net/Uri;Le/a/z3/i/g;)V

    const/4 v7, 0x1

    .line 76
    iput-boolean v7, v15, Le/a/z3/i/a;->a:Z

    .line 77
    iget-object v7, v1, Le/a/a/y0/d0;->c:Landroid/content/Context;

    invoke-static {v15, v7}, Le/a/m0/a1$k;->N0(Le/a/z3/i/a;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v7

    if-eqz v7, :cond_1c

    move-object/from16 v20, v12

    goto :goto_11

    .line 78
    :cond_1c
    iget-object v7, v6, Lcom/truecaller/messaging/data/types/Conversation;->m:[Lcom/truecaller/data/entity/messaging/Participant;

    invoke-static {v7, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7}, Le/a/a/i1/h;->e([Lcom/truecaller/data/entity/messaging/Participant;)Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 79
    iget-object v7, v1, Le/a/a/y0/d0;->f:Lo3/a;

    invoke-interface {v7}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le/a/b0/a/b/a;

    new-instance v10, Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-object/from16 v26, v10

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x1

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const v43, 0xffdf

    invoke-direct/range {v26 .. v43}, Lcom/truecaller/common/ui/avatar/AvatarXConfig;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZZZZZLjava/lang/Integer;ZI)V

    move-object/from16 v20, v12

    const/4 v4, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x2

    invoke-static {v7, v10, v12, v15, v4}, Le/a/b0/a/b/a;->ok(Le/a/b0/a/b/a;Lcom/truecaller/common/ui/avatar/AvatarXConfig;ZILjava/lang/Object;)V

    .line 80
    new-instance v7, Le/a/a/y0/c0;

    invoke-direct {v7, v1, v5, v4}, Le/a/a/y0/c0;-><init>(Le/a/a/y0/d0;ILs1/w/d;)V

    const/4 v5, 0x1

    invoke-static {v4, v7, v5, v4}, Ls1/a/a/a/v0/f/d;->c3(Ls1/w/f;Ls1/z/b/p;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;

    goto :goto_11

    :cond_1d
    move-object/from16 v20, v12

    .line 81
    iget-object v4, v6, Lcom/truecaller/messaging/data/types/Conversation;->m:[Lcom/truecaller/data/entity/messaging/Participant;

    invoke-static {v4, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Le/q/f/a/d/a;->s0([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v7, "conversation.participants.first()"

    invoke-static {v4, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lcom/truecaller/data/entity/messaging/Participant;

    invoke-virtual {v1, v4, v5}, Le/a/a/y0/d0;->e(Lcom/truecaller/data/entity/messaging/Participant;I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 82
    :goto_11
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-double v4, v4

    const-wide v26, 0x3ff4cccccccccccdL    # 1.3

    mul-double v4, v4, v26

    double-to-int v4, v4

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    move-object v15, v11

    int-to-double v10, v5

    mul-double v10, v10, v26

    double-to-int v5, v10

    const-string v10, "$this$centerCrop"

    .line 83
    invoke-static {v7, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    invoke-static {v7}, Le/a/e/a2;->D(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v10

    invoke-static {v5, v4, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 85
    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 86
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    sub-int/2addr v5, v12

    int-to-float v5, v5

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v5, v12

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v26

    sub-int v4, v4, v26

    int-to-float v4, v4

    div-float/2addr v4, v12

    const/4 v12, 0x0

    invoke-virtual {v11, v7, v5, v4, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const-string v4, "dest"

    .line 87
    invoke-static {v10, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    sget-object v4, Landroidx/core/graphics/drawable/IconCompat;->k:Landroid/graphics/PorterDuff$Mode;

    .line 89
    new-instance v4, Landroidx/core/graphics/drawable/IconCompat;

    const/4 v5, 0x5

    invoke-direct {v4, v5}, Landroidx/core/graphics/drawable/IconCompat;-><init>(I)V

    .line 90
    iput-object v10, v4, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    const-string v5, "getConversationIcon(conv\u2026eWithAdaptiveBitmap(it) }"

    .line 91
    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "conversation_"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v6, Lcom/truecaller/messaging/data/types/Conversation;->m:[Lcom/truecaller/data/entity/messaging/Participant;

    invoke-static {v7, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v32, Le/a/a/y0/a0;->b:Le/a/a/y0/a0;

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v33, 0x1e

    const-string v27, ","

    move-object/from16 v26, v7

    invoke-static/range {v26 .. v33}, Le/q/f/a/d/a;->M1([Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 93
    iget-object v7, v1, Le/a/a/y0/d0;->c:Landroid/content/Context;

    .line 94
    new-instance v10, Ln3/k/b/c/b;

    invoke-direct {v10}, Ln3/k/b/c/b;-><init>()V

    .line 95
    iput-object v7, v10, Ln3/k/b/c/b;->a:Landroid/content/Context;

    .line 96
    iput-object v5, v10, Ln3/k/b/c/b;->b:Ljava/lang/String;

    .line 97
    iget-object v7, v1, Le/a/a/y0/d0;->l:Lo3/a;

    invoke-interface {v7}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le/a/a/i1/b;

    invoke-interface {v7, v6}, Le/a/a/i1/b;->n(Lcom/truecaller/messaging/data/types/Conversation;)Ljava/lang/String;

    move-result-object v7

    .line 98
    iput-object v7, v10, Ln3/k/b/c/b;->d:Ljava/lang/CharSequence;

    .line 99
    iput-object v4, v10, Ln3/k/b/c/b;->e:Landroidx/core/graphics/drawable/IconCompat;

    const/4 v7, 0x1

    .line 100
    iput-boolean v7, v10, Ln3/k/b/c/b;->f:Z

    .line 101
    sget-object v11, Lcom/truecaller/messaging/conversation/ConversationActivity;->e:Lcom/truecaller/messaging/conversation/ConversationActivity$a;

    iget-object v12, v6, Lcom/truecaller/messaging/data/types/Conversation;->m:[Lcom/truecaller/data/entity/messaging/Participant;

    invoke-static {v12, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v35, v15

    const/4 v15, 0x0

    invoke-virtual {v11, v12, v15}, Lcom/truecaller/messaging/conversation/ConversationActivity$a;->d([Lcom/truecaller/data/entity/messaging/Participant;Z)Landroid/content/Intent;

    move-result-object v11

    new-array v12, v7, [Landroid/content/Intent;

    aput-object v11, v12, v15

    .line 102
    iput-object v12, v10, Ln3/k/b/c/b;->c:[Landroid/content/Intent;

    .line 103
    iget-object v7, v10, Ln3/k/b/c/b;->d:Ljava/lang/CharSequence;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_35

    .line 104
    iget-object v7, v10, Ln3/k/b/c/b;->c:[Landroid/content/Intent;

    if-eqz v7, :cond_34

    array-length v7, v7

    if-eqz v7, :cond_34

    const-string v7, "ShortcutInfoCompat.Build\u2026se))\n            .build()"

    .line 105
    invoke-static {v10, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    iget-object v7, v1, Le/a/a/y0/d0;->c:Landroid/content/Context;

    .line 107
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v11, 0x19

    if-lt v3, v11, :cond_1e

    .line 108
    const-class v12, Landroid/content/pm/ShortcutManager;

    invoke-virtual {v7, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ShortcutManager;

    invoke-virtual {v12}, Landroid/content/pm/ShortcutManager;->getMaxShortcutCountPerActivity()I

    move-result v12

    goto :goto_12

    :cond_1e
    const/4 v12, 0x5

    :goto_12
    if-nez v12, :cond_1f

    move-object/from16 v36, v0

    goto :goto_16

    :cond_1f
    const/16 v15, 0x1d

    if-gt v3, v15, :cond_25

    .line 109
    iget-object v15, v10, Ln3/k/b/c/b;->e:Landroidx/core/graphics/drawable/IconCompat;

    if-nez v15, :cond_20

    goto :goto_14

    .line 110
    :cond_20
    iget v11, v15, Landroidx/core/graphics/drawable/IconCompat;->a:I

    move-object/from16 v36, v0

    const/4 v0, 0x6

    if-eq v11, v0, :cond_21

    const/4 v0, 0x4

    if-eq v11, v0, :cond_21

    goto :goto_15

    .line 111
    :cond_21
    invoke-virtual {v15, v7}, Landroidx/core/graphics/drawable/IconCompat;->s(Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_22

    goto :goto_15

    .line 112
    :cond_22
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_23

    goto :goto_15

    :cond_23
    const/4 v15, 0x6

    if-ne v11, v15, :cond_24

    .line 113
    new-instance v11, Landroidx/core/graphics/drawable/IconCompat;

    const/4 v15, 0x5

    invoke-direct {v11, v15}, Landroidx/core/graphics/drawable/IconCompat;-><init>(I)V

    .line 114
    iput-object v0, v11, Landroidx/core/graphics/drawable/IconCompat;->b:Ljava/lang/Object;

    goto :goto_13

    .line 115
    :cond_24
    invoke-static {v0}, Landroidx/core/graphics/drawable/IconCompat;->h(Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v11

    :goto_13
    iput-object v11, v10, Ln3/k/b/c/b;->e:Landroidx/core/graphics/drawable/IconCompat;

    goto :goto_15

    :cond_25
    :goto_14
    move-object/from16 v36, v0

    :goto_15
    const/16 v11, 0x1e

    if-lt v3, v11, :cond_26

    .line 116
    const-class v11, Landroid/content/pm/ShortcutManager;

    invoke-virtual {v7, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ShortcutManager;

    .line 117
    invoke-virtual {v10}, Ln3/k/b/c/b;->a()Landroid/content/pm/ShortcutInfo;

    move-result-object v15

    .line 118
    invoke-virtual {v11, v15}, Landroid/content/pm/ShortcutManager;->pushDynamicShortcut(Landroid/content/pm/ShortcutInfo;)V

    goto/16 :goto_19

    :cond_26
    const/16 v11, 0x19

    if-lt v3, v11, :cond_2b

    .line 119
    const-class v11, Landroid/content/pm/ShortcutManager;

    invoke-virtual {v7, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ShortcutManager;

    .line 120
    invoke-virtual {v11}, Landroid/content/pm/ShortcutManager;->isRateLimitingActive()Z

    move-result v15

    if-eqz v15, :cond_27

    :goto_16
    move-object/from16 v21, v2

    move/from16 v37, v14

    goto/16 :goto_1f

    .line 121
    :cond_27
    invoke-virtual {v11}, Landroid/content/pm/ShortcutManager;->getDynamicShortcuts()Ljava/util/List;

    move-result-object v15

    .line 122
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v12, :cond_2a

    move-object/from16 v21, v2

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    .line 123
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move/from16 v37, v14

    const/4 v14, -0x1

    const/4 v15, 0x0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/content/pm/ShortcutInfo;

    move-object/from16 v27, v0

    .line 124
    invoke-virtual/range {v26 .. v26}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v0

    if-le v0, v14, :cond_28

    .line 125
    invoke-virtual/range {v26 .. v26}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v0

    .line 126
    invoke-virtual/range {v26 .. v26}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result v14

    move-object v15, v0

    :cond_28
    move-object/from16 v0, v27

    goto :goto_17

    :cond_29
    const/4 v0, 0x0

    aput-object v15, v2, v0

    .line 127
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/content/pm/ShortcutManager;->removeDynamicShortcuts(Ljava/util/List;)V

    goto :goto_18

    :cond_2a
    move-object/from16 v21, v2

    move/from16 v37, v14

    const/4 v0, 0x0

    :goto_18
    const/4 v2, 0x1

    new-array v14, v2, [Landroid/content/pm/ShortcutInfo;

    .line 128
    invoke-virtual {v10}, Ln3/k/b/c/b;->a()Landroid/content/pm/ShortcutInfo;

    move-result-object v2

    aput-object v2, v14, v0

    invoke-static {v14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/content/pm/ShortcutManager;->addDynamicShortcuts(Ljava/util/List;)Z

    goto :goto_1a

    :cond_2b
    :goto_19
    move-object/from16 v21, v2

    move/from16 v37, v14

    .line 129
    :goto_1a
    sget-object v0, Ln3/k/b/c/d;->a:Ln3/k/b/c/c;

    if-nez v0, :cond_2c

    .line 130
    :try_start_0
    const-class v0, Ln3/k/b/c/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v2, "androidx.sharetarget.ShortcutInfoCompatSaverImpl"

    const/4 v11, 0x0

    .line 131
    invoke-static {v2, v11, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "getInstance"

    const/4 v14, 0x1

    new-array v15, v14, [Ljava/lang/Class;

    .line 132
    const-class v17, Landroid/content/Context;

    aput-object v17, v15, v11

    invoke-virtual {v0, v2, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v14, [Ljava/lang/Object;

    aput-object v7, v2, v11

    const/4 v11, 0x0

    .line 133
    invoke-virtual {v0, v11, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/k/b/c/c;

    sput-object v0, Ln3/k/b/c/d;->a:Ln3/k/b/c/c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :catch_0
    sget-object v0, Ln3/k/b/c/d;->a:Ln3/k/b/c/c;

    if-nez v0, :cond_2c

    .line 135
    new-instance v0, Ln3/k/b/c/c$a;

    invoke-direct {v0}, Ln3/k/b/c/c$a;-><init>()V

    sput-object v0, Ln3/k/b/c/d;->a:Ln3/k/b/c/c;

    .line 136
    :cond_2c
    sget-object v0, Ln3/k/b/c/d;->a:Ln3/k/b/c/c;

    .line 137
    :try_start_1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 139
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lt v11, v12, :cond_2f

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/String;

    .line 140
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v11, 0x0

    const/16 v19, -0x1

    :cond_2d
    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ln3/k/b/c/b;

    .line 141
    invoke-static {v14}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-gez v19, :cond_2d

    .line 142
    iget-object v11, v14, Ln3/k/b/c/b;->b:Ljava/lang/String;

    const/16 v19, 0x0

    goto :goto_1b

    :cond_2e
    const/4 v2, 0x0

    aput-object v11, v12, v2

    .line 143
    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ln3/k/b/c/c;->b(Ljava/util/List;)Ljava/lang/Object;

    :cond_2f
    const/4 v2, 0x1

    new-array v11, v2, [Ln3/k/b/c/b;

    const/4 v2, 0x0

    aput-object v10, v11, v2

    .line 144
    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ln3/k/b/c/c;->a(Ljava/util/List;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    invoke-static {v7}, Ln3/k/b/c/d;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/k/b/c/a;

    .line 146
    invoke-static {v10}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 147
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c

    :catchall_0
    move-exception v0

    .line 148
    invoke-static {v7}, Ln3/k/b/c/d;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln3/k/b/c/a;

    .line 149
    invoke-static {v10}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 150
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1d

    .line 151
    :cond_30
    iget-object v2, v10, Ln3/k/b/c/b;->b:Ljava/lang/String;

    .line 152
    invoke-static {v7, v2}, Ln3/k/b/c/d;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 153
    throw v0

    .line 154
    :catch_1
    invoke-static {v7}, Ln3/k/b/c/d;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ln3/k/b/c/a;

    .line 155
    invoke-static {v10}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 156
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1e

    .line 157
    :cond_31
    iget-object v0, v10, Ln3/k/b/c/b;->b:Ljava/lang/String;

    .line 158
    invoke-static {v7, v0}, Ln3/k/b/c/d;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 159
    :goto_1f
    iget-object v0, v1, Le/a/a/y0/d0;->c:Landroid/content/Context;

    const/16 v2, 0x1f

    if-lt v3, v2, :cond_32

    const/high16 v2, 0xa000000

    goto :goto_20

    :cond_32
    const/high16 v2, 0x8000000

    :goto_20
    const/16 v7, 0x64

    .line 160
    sget-object v10, Lcom/truecaller/messaging/conversation/ConversationActivity;->e:Lcom/truecaller/messaging/conversation/ConversationActivity$a;

    iget-object v11, v6, Lcom/truecaller/messaging/data/types/Conversation;->m:[Lcom/truecaller/data/entity/messaging/Participant;

    invoke-static {v11, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x1

    invoke-virtual {v10, v11, v9}, Lcom/truecaller/messaging/conversation/ConversationActivity$a;->d([Lcom/truecaller/data/entity/messaging/Participant;Z)Landroid/content/Intent;

    move-result-object v10

    invoke-static {v0, v7, v10, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    const-string v2, "PendingIntent.getActivit\u2026rticipants, true), flags)"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v28, 0x0

    const/16 v33, 0x0

    const/16 v2, 0x3e8

    const/4 v7, 0x0

    .line 161
    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v30

    .line 162
    new-instance v2, Ln3/k/a/p;

    const/16 v34, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v26, v2

    move-object/from16 v27, v0

    move-object/from16 v29, v4

    invoke-direct/range {v26 .. v34}, Ln3/k/a/p;-><init>(Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;IIILjava/lang/String;Ln3/k/a/l;)V

    const/4 v0, 0x0

    .line 163
    iput v0, v2, Ln3/k/a/p;->f:I

    .line 164
    iput-object v2, v13, Ln3/k/a/q;->Q:Ln3/k/a/p;

    .line 165
    iput-object v5, v13, Ln3/k/a/q;->L:Ljava/lang/String;

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v8, v2}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 167
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_33

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 168
    check-cast v4, Lcom/truecaller/messaging/data/types/Message;

    .line 169
    iget-object v4, v4, Lcom/truecaller/messaging/data/types/Message;->c:Lcom/truecaller/data/entity/messaging/Participant;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_21

    .line 170
    :cond_33
    invoke-static {v0}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    .line 171
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/truecaller/data/entity/messaging/Participant;

    const-string v4, "it"

    .line 172
    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Le/a/a/y0/d0;->m(Lcom/truecaller/data/entity/messaging/Participant;)Ln3/k/a/y;

    move-result-object v2

    .line 173
    iget-object v4, v13, Ln3/k/a/q;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 174
    :cond_34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Shortcut must have an intent"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Shortcut must have a non-empty label"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_36
    move-object/from16 v36, v0

    move-object/from16 v21, v2

    move-object/from16 v35, v11

    move-object/from16 v20, v12

    move/from16 v37, v14

    :cond_37
    if-nez v37, :cond_38

    .line 176
    invoke-static {v8}, Ls1/u/i;->Q(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/messaging/data/types/Message;

    iget v0, v0, Lcom/truecaller/messaging/data/types/Message;->k:I

    invoke-static {v8}, Ls1/u/i;->Q(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/truecaller/messaging/data/types/Message;

    invoke-virtual {v1, v2}, Le/a/a/y0/d0;->k(Lcom/truecaller/messaging/data/types/Message;)Z

    move-result v2

    invoke-virtual {v1, v13, v0, v2, v6}, Le/a/a/y0/d0;->i(Ln3/k/a/q;IZLcom/truecaller/messaging/data/types/Conversation;)Ln3/k/a/q;

    .line 177
    :cond_38
    iget-object v0, v6, Lcom/truecaller/messaging/data/types/Conversation;->z:Lcom/truecaller/messaging/data/types/ImGroupInfo;

    if-eqz v0, :cond_3c

    .line 178
    iget-object v4, v0, Lcom/truecaller/messaging/data/types/ImGroupInfo;->c:Ljava/lang/String;

    if-eqz v4, :cond_3c

    .line 179
    sget-object v0, Le/a/z3/i/e$b;->c:Le/a/z3/i/e$b;

    move-object/from16 v2, v21

    .line 180
    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_39

    const/4 v2, 0x1

    goto :goto_23

    :cond_39
    const/4 v2, 0x0

    :goto_23
    if-nez v2, :cond_3a

    goto :goto_24

    :cond_3a
    const/4 v4, 0x0

    :goto_24
    if-eqz v4, :cond_3b

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    goto :goto_25

    :cond_3b
    const/4 v4, 0x0

    .line 182
    :goto_25
    new-instance v2, Le/a/z3/i/a;

    invoke-direct {v2, v4, v0}, Le/a/z3/i/a;-><init>(Landroid/net/Uri;Le/a/z3/i/g;)V

    const/4 v0, 0x1

    .line 183
    iput-boolean v0, v2, Le/a/z3/i/a;->a:Z

    .line 184
    iget-object v0, v1, Le/a/a/y0/d0;->c:Landroid/content/Context;

    invoke-static {v2, v0}, Le/a/m0/a1$k;->N0(Le/a/z3/i/a;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3c

    .line 185
    invoke-virtual {v13, v0}, Ln3/k/a/q;->q(Landroid/graphics/Bitmap;)Ln3/k/a/q;

    .line 186
    :cond_3c
    new-instance v0, Ls1/k;

    invoke-direct {v0, v6, v8}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 187
    invoke-static {v0}, Le/q/f/a/d/a;->Z1(Ls1/k;)Ljava/util/Map;

    move-result-object v0

    .line 188
    new-instance v2, Le/a/a/y0/f0;

    invoke-direct {v2}, Le/a/a/y0/f0;-><init>()V

    invoke-static {v0, v2}, Le/q/f/a/d/a;->l3(Ljava/util/Map;Ljava/util/Comparator;)Ljava/util/SortedMap;

    move-result-object v0

    move-object/from16 v11, v35

    const/4 v2, 0x0

    .line 189
    invoke-virtual {v1, v13, v0, v11, v2}, Le/a/a/y0/d0;->c(Ln3/k/a/q;Ljava/util/SortedMap;Ljava/lang/String;Z)V

    .line 190
    iget-object v0, v1, Le/a/a/y0/d0;->e:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/i4/e;

    .line 191
    invoke-virtual {v13}, Ln3/k/a/q;->d()Landroid/app/Notification;

    move-result-object v2

    move-object/from16 v4, v36

    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v4, v20

    move-object/from16 v5, v25

    const v6, 0x7f0a0c36

    .line 192
    invoke-interface {v0, v4, v6, v2, v5}, Le/a/i4/e;->i(Ljava/lang/String;ILandroid/app/Notification;Ljava/lang/String;)V

    :goto_26
    move-object/from16 v2, p1

    move-object/from16 v7, v22

    move-object/from16 v4, v23

    move-object/from16 v0, v24

    move/from16 v14, v37

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v15, 0x2

    goto/16 :goto_a

    :cond_3d
    move-object/from16 v23, v4

    move-object v4, v5

    move-object v5, v9

    move/from16 v37, v14

    .line 193
    invoke-virtual {v1, v0}, Le/a/a/y0/d0;->l(Ljava/util/Map;)Z

    move-result v2

    if-nez v2, :cond_3e

    const/16 v2, 0x18

    if-lt v3, v2, :cond_3e

    goto/16 :goto_2e

    .line 194
    :cond_3e
    new-instance v2, Ln3/k/a/q;

    iget-object v6, v1, Le/a/a/y0/d0;->c:Landroid/content/Context;

    invoke-direct {v2, v6, v11}, Ln3/k/a/q;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 195
    iget-object v6, v2, Ln3/k/a/q;->R:Landroid/app/Notification;

    const v7, 0x7f080581

    iput v7, v6, Landroid/app/Notification;->icon:I

    .line 196
    iget-object v6, v1, Le/a/a/y0/d0;->c:Landroid/content/Context;

    .line 197
    sget-object v7, Ln3/k/b/a;->a:Ljava/lang/Object;

    const v8, 0x7f060024

    .line 198
    invoke-static {v6, v8}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v6

    .line 199
    iput v6, v2, Ln3/k/a/q;->D:I

    .line 200
    iput-object v10, v2, Ln3/k/a/q;->v:Ljava/lang/String;

    const/4 v6, 0x1

    .line 201
    iput-boolean v6, v2, Ln3/k/a/q;->w:Z

    .line 202
    invoke-virtual/range {v23 .. v23}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/truecaller/messaging/data/types/Conversation;

    iget-object v6, v6, Lcom/truecaller/messaging/data/types/Conversation;->i:Lw3/b/a/b;

    const-string v7, "conversations.lastKey().date"

    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    iget-wide v6, v6, Lw3/b/a/e0/e;->a:J

    .line 204
    iget-object v8, v2, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput-wide v6, v8, Landroid/app/Notification;->when:J

    const-string v6, "NotificationCompat.Build\u2026ns.lastKey().date.millis)"

    .line 205
    invoke-static {v2, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x18

    if-ge v3, v6, :cond_4a

    .line 206
    invoke-virtual/range {v23 .. v23}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v3

    const-string v6, "conversations.values"

    invoke-static {v3, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v6, 0x0

    :goto_27
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 208
    check-cast v7, Ljava/util/List;

    .line 209
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/2addr v6, v7

    goto :goto_27

    .line 210
    :cond_3f
    invoke-virtual/range {v23 .. v23}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v3

    const-string v7, "conversations.keys"

    invoke-static {v3, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    new-instance v7, Le/a/a/y0/e0;

    invoke-direct {v7, v1}, Le/a/a/y0/e0;-><init>(Le/a/a/y0/d0;)V

    const/16 v31, 0x1f

    move-object/from16 v24, v3

    move-object/from16 v30, v7

    invoke-static/range {v24 .. v31}, Ls1/u/i;->O(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object v3

    .line 211
    invoke-virtual {v2, v3}, Ln3/k/a/q;->n(Ljava/lang/CharSequence;)Ln3/k/a/q;

    .line 212
    invoke-virtual/range {v23 .. v23}, Ljava/util/TreeMap;->size()I

    move-result v3

    const-string v7, "message.participant"

    const/16 v8, 0x20

    const/4 v9, 0x1

    if-ne v3, v9, :cond_42

    .line 213
    invoke-virtual/range {v23 .. v23}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/truecaller/messaging/data/types/Conversation;

    .line 214
    invoke-static {v0, v3}, Ls1/u/i;->H(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    const-string v10, "conversations.getValue(conversation)"

    invoke-static {v9, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Ljava/util/List;

    invoke-static {v9}, Ls1/u/i;->Q(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/truecaller/messaging/data/types/Message;

    .line 215
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    invoke-static {v3, v13}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Le/a/c/p/a;->o1(Lcom/truecaller/messaging/data/types/Conversation;)Z

    move-result v3

    if-eqz v3, :cond_40

    iget-object v3, v9, Lcom/truecaller/messaging/data/types/Message;->c:Lcom/truecaller/data/entity/messaging/Participant;

    invoke-static {v3, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Le/a/a/i1/h;->c(Lcom/truecaller/data/entity/messaging/Participant;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Le/a/c/p/a;->b(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 217
    :cond_40
    invoke-virtual {v1, v9}, Le/a/a/y0/d0;->g(Lcom/truecaller/messaging/data/types/Message;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v10, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v3, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ln3/k/a/q;->m(Ljava/lang/CharSequence;)Ln3/k/a/q;

    .line 219
    iget-object v3, v9, Lcom/truecaller/messaging/data/types/Message;->c:Lcom/truecaller/data/entity/messaging/Participant;

    invoke-static {v3, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget v9, v1, Le/a/a/y0/d0;->a:I

    invoke-virtual {v1, v3, v9}, Le/a/a/y0/d0;->e(Lcom/truecaller/data/entity/messaging/Participant;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Ln3/k/a/q;->q(Landroid/graphics/Bitmap;)Ln3/k/a/q;

    const/4 v3, 0x1

    if-le v6, v3, :cond_41

    .line 220
    iput v6, v2, Ln3/k/a/q;->k:I

    :cond_41
    const/4 v15, 0x0

    goto :goto_28

    :cond_42
    move v3, v9

    .line 221
    iget-object v9, v1, Le/a/a/y0/d0;->c:Landroid/content/Context;

    const v10, 0x7f120413

    new-array v14, v3, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v15, 0x0

    aput-object v6, v14, v15

    invoke-virtual {v9, v10, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ln3/k/a/q;->m(Ljava/lang/CharSequence;)Ln3/k/a/q;

    const-string v6, "notification.setContentT\u2026agesTitle, messageCount))"

    invoke-static {v2, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    :goto_28
    new-instance v6, Ln3/k/a/s;

    invoke-direct {v6}, Ln3/k/a/s;-><init>()V

    .line 223
    invoke-virtual/range {v23 .. v23}, Ljava/util/TreeMap;->size()I

    move-result v9

    if-gt v9, v3, :cond_43

    invoke-virtual/range {v23 .. v23}, Ljava/util/TreeMap;->firstKey()Ljava/lang/Object;

    move-result-object v3

    const-string v9, "conversations.firstKey()"

    invoke-static {v3, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/truecaller/messaging/data/types/Conversation;

    invoke-static {v3}, Le/a/c/p/a;->o1(Lcom/truecaller/messaging/data/types/Conversation;)Z

    move-result v3

    if-eqz v3, :cond_44

    :cond_43
    const/4 v15, 0x1

    .line 224
    :cond_44
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual/range {v23 .. v23}, Ljava/util/TreeMap;->size()I

    move-result v9

    invoke-direct {v3, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 225
    invoke-virtual/range {v23 .. v23}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_29
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_46

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 226
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/truecaller/messaging/data/types/Conversation;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 227
    invoke-static {v10, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    new-instance v8, Ljava/util/ArrayList;

    move-object/from16 v17, v9

    move-object/from16 v18, v12

    const/16 v9, 0xa

    invoke-static {v10, v9}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v12

    invoke-direct {v8, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 229
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_45

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 230
    check-cast v10, Lcom/truecaller/messaging/data/types/Message;

    .line 231
    new-instance v12, Ls1/k;

    invoke-direct {v12, v14, v10}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 232
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    .line 233
    :cond_45
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v9, v17

    move-object/from16 v12, v18

    const/16 v8, 0x20

    goto :goto_29

    .line 234
    :cond_46
    invoke-static {v3}, Le/q/f/a/d/a;->w0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    const/4 v8, 0x5

    .line 235
    invoke-static {v3, v8}, Ls1/u/i;->L0(Ljava/util/List;I)Ljava/util/List;

    move-result-object v3

    .line 236
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_49

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ls1/k;

    .line 237
    iget-object v9, v8, Ls1/k;->a:Ljava/lang/Object;

    .line 238
    check-cast v9, Lcom/truecaller/messaging/data/types/Conversation;

    .line 239
    iget-object v8, v8, Ls1/k;->b:Ljava/lang/Object;

    .line 240
    check-cast v8, Lcom/truecaller/messaging/data/types/Message;

    .line 241
    new-instance v10, Landroid/text/SpannableStringBuilder;

    invoke-direct {v10}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 242
    invoke-static {v9, v13}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9}, Le/a/c/p/a;->o1(Lcom/truecaller/messaging/data/types/Conversation;)Z

    move-result v12

    if-eqz v12, :cond_47

    invoke-virtual/range {v23 .. v23}, Ljava/util/TreeMap;->size()I

    move-result v12

    const/4 v14, 0x1

    if-le v12, v14, :cond_47

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Le/a/a/y0/d0;->f(Lcom/truecaller/messaging/data/types/Conversation;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ": "

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Le/a/c/p/a;->b(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v10, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_47
    if-eqz v15, :cond_48

    .line 243
    iget-object v9, v8, Lcom/truecaller/messaging/data/types/Message;->c:Lcom/truecaller/data/entity/messaging/Participant;

    invoke-static {v9, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9}, Le/a/a/i1/h;->c(Lcom/truecaller/data/entity/messaging/Participant;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Le/a/c/p/a;->b(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v10, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v9

    const/16 v12, 0x20

    invoke-virtual {v9, v12}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_2c

    :cond_48
    const/16 v12, 0x20

    .line 244
    :goto_2c
    invoke-virtual {v1, v8}, Le/a/a/y0/d0;->g(Lcom/truecaller/messaging/data/types/Message;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v10, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 245
    invoke-virtual {v6, v10}, Ln3/k/a/s;->k(Ljava/lang/CharSequence;)Ln3/k/a/s;

    goto :goto_2b

    .line 246
    :cond_49
    invoke-virtual {v2, v6}, Ln3/k/a/q;->x(Ln3/k/a/u;)Ln3/k/a/q;

    if-nez v37, :cond_4b

    .line 247
    invoke-virtual {v1, v0}, Le/a/a/y0/d0;->j(Ljava/util/Map;)Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 248
    invoke-virtual/range {v23 .. v23}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v3}, Ls1/u/i;->H(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v6, "conversations.getValue(conversations.lastKey())"

    invoke-static {v3, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Ls1/u/i;->Q(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/truecaller/messaging/data/types/Message;

    .line 249
    iget v6, v3, Lcom/truecaller/messaging/data/types/Message;->k:I

    invoke-virtual {v1, v3}, Le/a/a/y0/d0;->k(Lcom/truecaller/messaging/data/types/Message;)Z

    move-result v3

    invoke-virtual/range {v23 .. v23}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;

    move-result-object v7

    const-string v8, "conversations.lastKey()"

    invoke-static {v7, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Lcom/truecaller/messaging/data/types/Conversation;

    invoke-virtual {v1, v2, v6, v3, v7}, Le/a/a/y0/d0;->i(Ln3/k/a/q;IZLcom/truecaller/messaging/data/types/Conversation;)Ln3/k/a/q;

    goto :goto_2d

    :cond_4a
    const/4 v3, 0x2

    .line 250
    iput v3, v2, Ln3/k/a/q;->O:I

    const-string v3, "notification.setGroupAle\u2026pat.GROUP_ALERT_CHILDREN)"

    .line 251
    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4b
    :goto_2d
    const/4 v3, 0x1

    .line 252
    invoke-virtual {v1, v2, v0, v11, v3}, Le/a/a/y0/d0;->c(Ln3/k/a/q;Ljava/util/SortedMap;Ljava/lang/String;Z)V

    .line 253
    iget-object v0, v1, Le/a/a/y0/d0;->e:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/i4/e;

    .line 254
    invoke-virtual {v2}, Ln3/k/a/q;->d()Landroid/app/Notification;

    move-result-object v2

    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v3, 0x7f0a0c36

    .line 255
    invoke-interface {v0, v3, v2, v5}, Le/a/i4/e;->j(ILandroid/app/Notification;Ljava/lang/String;)V

    .line 256
    :goto_2e
    iget-object v0, v1, Le/a/a/y0/d0;->k:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a/y0/n;

    invoke-virtual/range {v23 .. v23}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v2

    const-string v3, "sortedConversations.values"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Le/q/f/a/d/a;->w0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    .line 257
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v2, v4}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 258
    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 259
    check-cast v4, Lcom/truecaller/messaging/data/types/Message;

    .line 260
    iget-wide v4, v4, Lcom/truecaller/messaging/data/types/Message;->a:J

    .line 261
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    :cond_4c
    invoke-interface {v0, v3}, Le/a/a/y0/n;->b(Ljava/util/List;)V

    .line 262
    :cond_4d
    :goto_30
    new-instance v0, Ls1/z/c/c0;

    invoke-direct {v0}, Ls1/z/c/c0;-><init>()V

    invoke-virtual/range {p0 .. p0}, Le/a/a/y0/d0;->d()Ljava/util/List;

    move-result-object v2

    .line 263
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 264
    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4e
    :goto_31
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_50

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 265
    check-cast v4, Landroid/service/notification/StatusBarNotification;

    .line 266
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4f

    invoke-static {v4}, Ls1/f0/q;->j(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    goto :goto_32

    :cond_4f
    const/4 v4, 0x0

    :goto_32
    if-eqz v4, :cond_4e

    .line 267
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_31

    .line 268
    :cond_50
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 269
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v2, v5}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 270
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_33
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_51

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 271
    check-cast v5, Lcom/truecaller/messaging/data/types/Conversation;

    .line 272
    iget-wide v5, v5, Lcom/truecaller/messaging/data/types/Conversation;->a:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_33

    :cond_51
    invoke-static {v3, v4}, Ls1/u/i;->Z(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 273
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_52

    goto :goto_34

    .line 274
    :cond_52
    new-instance v2, Le/a/a/y0/b0;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v0, v3}, Le/a/a/y0/b0;-><init>(Le/a/a/y0/d0;Ls1/z/c/c0;Ls1/w/d;)V

    const/4 v0, 0x1

    invoke-static {v3, v2, v0, v3}, Ls1/a/a/a/v0/f/d;->c3(Ls1/w/f;Ls1/z/b/p;ILjava/lang/Object;)Ljava/lang/Object;

    :goto_34
    return-void

    .line 275
    :cond_53
    new-instance v0, Ls1/i;

    invoke-direct {v0}, Ls1/i;-><init>()V

    throw v0
.end method

.method public final c(Ln3/k/a/q;Ljava/util/SortedMap;Ljava/lang/String;Z)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/k/a/q;",
            "Ljava/util/SortedMap<",
            "Lcom/truecaller/messaging/data/types/Conversation;",
            "Ljava/util/List<",
            "Lcom/truecaller/messaging/data/types/Message;",
            ">;>;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-interface/range {p2 .. p2}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/truecaller/messaging/data/types/Conversation;

    .line 2
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 5
    invoke-static {v11, v4}, Ls1/u/i;->b(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    :cond_0
    const v3, 0x7f0a0c36

    const/4 v12, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    if-eqz p4, :cond_1

    .line 6
    new-instance v6, Lcom/truecaller/messaging/notifications/NotificationIdentifier;

    invoke-direct {v6, v3, v4, v12, v5}, Lcom/truecaller/messaging/notifications/NotificationIdentifier;-><init>(ILjava/lang/String;II)V

    goto :goto_1

    .line 7
    :cond_1
    new-instance v6, Lcom/truecaller/messaging/notifications/NotificationIdentifier;

    iget-wide v4, v2, Lcom/truecaller/messaging/data/types/Conversation;->a:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    iget-wide v7, v2, Lcom/truecaller/messaging/data/types/Conversation;->a:J

    long-to-int v5, v7

    invoke-direct {v6, v3, v4, v5}, Lcom/truecaller/messaging/notifications/NotificationIdentifier;-><init>(ILjava/lang/String;I)V

    :goto_1
    move-object v13, v6

    .line 8
    invoke-interface/range {p2 .. p2}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    const-string v4, "conversations.entries"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Ls1/u/i;->P(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "conversations.entries.last()"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/util/Map$Entry;

    .line 9
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    const-string v5, "conversation.key"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lcom/truecaller/messaging/data/types/Conversation;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    const-string v7, "conversation.value"

    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Ljava/util/List;

    invoke-static {v6}, Ls1/u/i;->Q(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/truecaller/messaging/data/types/Message;

    .line 10
    iget-object v8, v0, Le/a/a/y0/d0;->h:Lo3/a;

    invoke-interface {v8}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Le/a/u3/g;

    invoke-virtual {v8}, Le/a/u3/g;->h0()Le/a/u3/b;

    move-result-object v8

    invoke-interface {v8}, Le/a/u3/b;->isEnabled()Z

    move-result v8

    .line 11
    iget v6, v6, Lcom/truecaller/messaging/data/types/Message;->t:I

    .line 12
    iget-boolean v9, v0, Le/a/a/y0/d0;->s:Z

    .line 13
    invoke-static {v4, v8, v6, v9}, Le/a/a/i1/a;->a(Lcom/truecaller/messaging/data/types/Conversation;ZIZ)Lcom/truecaller/messaging/data/types/InboxTab;

    move-result-object v4

    sget-object v6, Lcom/truecaller/messaging/data/types/InboxTab;->OTHERS:Lcom/truecaller/messaging/data/types/InboxTab;

    const/4 v14, 0x1

    if-ne v4, v6, :cond_2

    move v4, v14

    goto :goto_2

    :cond_2
    move v4, v12

    :goto_2
    const/4 v15, 0x4

    if-eqz v4, :cond_3

    .line 14
    iget-object v3, v0, Le/a/a/y0/d0;->c:Landroid/content/Context;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/16 v10, 0x28

    const-string v6, "view_message"

    move-object v4, v11

    move-object v5, v13

    invoke-static/range {v3 .. v10}, Le/a/c/p/a;->T(Landroid/content/Context;Ljava/util/List;Lcom/truecaller/messaging/notifications/NotificationIdentifier;Ljava/lang/String;Ljava/lang/String;ZZI)Landroid/app/PendingIntent;

    move-result-object v3

    goto :goto_4

    .line 15
    :cond_3
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lcom/truecaller/messaging/data/types/Conversation;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Ls1/u/i;->Q(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/truecaller/messaging/data/types/Message;

    .line 16
    iget v3, v3, Lcom/truecaller/messaging/data/types/Message;->t:I

    if-eq v3, v15, :cond_4

    iget v3, v4, Lcom/truecaller/messaging/data/types/Conversation;->r:I

    if-ne v3, v15, :cond_5

    :cond_4
    iget-object v3, v0, Le/a/a/y0/d0;->h:Lo3/a;

    invoke-interface {v3}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/u3/g;

    invoke-virtual {v3}, Le/a/u3/g;->e0()Le/a/u3/b;

    move-result-object v3

    invoke-interface {v3}, Le/a/u3/b;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v14

    goto :goto_3

    :cond_5
    move v3, v12

    :goto_3
    if-eqz v3, :cond_6

    .line 17
    iget-object v3, v0, Le/a/a/y0/d0;->c:Landroid/content/Context;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/16 v10, 0x18

    const-string v6, "view_message"

    move-object v4, v11

    move-object v5, v13

    invoke-static/range {v3 .. v10}, Le/a/c/p/a;->T(Landroid/content/Context;Ljava/util/List;Lcom/truecaller/messaging/notifications/NotificationIdentifier;Ljava/lang/String;Ljava/lang/String;ZZI)Landroid/app/PendingIntent;

    move-result-object v3

    goto :goto_4

    .line 18
    :cond_6
    iget-object v3, v0, Le/a/a/y0/d0;->c:Landroid/content/Context;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x38

    const-string v6, "view_message"

    move-object v4, v11

    move-object v5, v13

    invoke-static/range {v3 .. v10}, Le/a/c/p/a;->T(Landroid/content/Context;Ljava/util/List;Lcom/truecaller/messaging/notifications/NotificationIdentifier;Ljava/lang/String;Ljava/lang/String;ZZI)Landroid/app/PendingIntent;

    move-result-object v3

    .line 19
    :goto_4
    iget-object v4, v0, Le/a/a/y0/d0;->c:Landroid/content/Context;

    const-string v5, "com.truecaller.messaging.notifications.DISMISSED"

    .line 20
    invoke-static {v4, v5, v11, v12, v13}, Lcom/truecaller/messaging/notifications/NotificationBroadcastReceiver;->b(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;ZLcom/truecaller/messaging/notifications/NotificationIdentifier;)Landroid/app/PendingIntent;

    move-result-object v4

    .line 21
    iget-object v5, v1, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput-object v4, v5, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 22
    iput-object v3, v1, Ln3/k/a/q;->g:Landroid/app/PendingIntent;

    .line 23
    new-instance v3, Ln3/k/a/m;

    .line 24
    iget-object v4, v0, Le/a/a/y0/d0;->c:Landroid/content/Context;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v14, :cond_7

    const v5, 0x7f120367

    goto :goto_5

    :cond_7
    const v5, 0x7f120366

    :goto_5
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 25
    iget-object v5, v0, Le/a/a/y0/d0;->c:Landroid/content/Context;

    .line 26
    sget v6, Lcom/truecaller/messaging/notifications/NotificationBroadcastReceiver;->b:I

    .line 27
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v6, v14, :cond_8

    const-string v6, "com.truecaller.messaging.notifications.MARK_MESSAGE_READ"

    goto :goto_6

    :cond_8
    const-string v6, "com.truecaller.messaging.notifications.MARK_READ"

    .line 28
    :goto_6
    invoke-static {v5, v6, v11, v14, v13}, Lcom/truecaller/messaging/notifications/NotificationBroadcastReceiver;->b(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;ZLcom/truecaller/messaging/notifications/NotificationIdentifier;)Landroid/app/PendingIntent;

    move-result-object v5

    const v6, 0x7f080458

    .line 29
    invoke-direct {v3, v6, v4, v5}, Ln3/k/a/m;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 30
    invoke-virtual {v1, v3}, Ln3/k/a/q;->b(Ln3/k/a/m;)Ln3/k/a/q;

    .line 31
    invoke-interface/range {p2 .. p2}, Ljava/util/SortedMap;->size()I

    move-result v3

    if-le v3, v14, :cond_9

    return-void

    :cond_9
    move-object/from16 v3, p2

    .line 32
    invoke-static {v3, v2}, Ls1/u/i;->H(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "conversations.getValue(latestConversation)"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Ls1/u/i;->Q(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/truecaller/messaging/data/types/Message;

    .line 33
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v14, :cond_a

    iget v3, v2, Lcom/truecaller/messaging/data/types/Message;->k:I

    if-nez v3, :cond_a

    .line 34
    new-instance v3, Ln3/k/a/m;

    .line 35
    iget-object v4, v0, Le/a/a/y0/d0;->c:Landroid/content/Context;

    const v5, 0x7f120707

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 36
    iget-object v5, v0, Le/a/a/y0/d0;->c:Landroid/content/Context;

    .line 37
    new-instance v6, Landroid/content/Intent;

    const-class v7, Lcom/truecaller/messaging/notifications/NotificationBroadcastReceiver;

    invoke-direct {v6, v5, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v7, "com.truecaller.messaging.notifications.DELETE"

    .line 38
    invoke-virtual {v6, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    iget-wide v7, v2, Lcom/truecaller/messaging/data/types/Message;->a:J

    const-string v9, "EXTRA_MESSAGE_ID"

    .line 40
    invoke-virtual {v6, v9, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v7, "EXTRA_NOTIFICATION_ID"

    .line 41
    invoke-virtual {v6, v7, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 42
    iget v7, v13, Lcom/truecaller/messaging/notifications/NotificationIdentifier;->c:I

    const/high16 v8, 0xc000000

    .line 43
    invoke-static {v5, v7, v6, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    const v6, 0x7f080447

    .line 44
    invoke-direct {v3, v6, v4, v5}, Ln3/k/a/m;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 45
    invoke-virtual {v1, v3}, Ln3/k/a/q;->b(Ln3/k/a/m;)Ln3/k/a/q;

    .line 46
    :cond_a
    iget-object v2, v2, Lcom/truecaller/messaging/data/types/Message;->c:Lcom/truecaller/data/entity/messaging/Participant;

    const-string v3, "latestMessage.participant"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iget v3, v2, Lcom/truecaller/data/entity/messaging/Participant;->b:I

    if-eq v3, v14, :cond_c

    iget-object v3, v0, Le/a/a/y0/d0;->h:Lo3/a;

    invoke-interface {v3}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/u3/g;

    invoke-virtual {v3}, Le/a/u3/g;->G()Le/a/u3/b;

    move-result-object v3

    invoke-interface {v3}, Le/a/u3/b;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {v2}, Lcom/truecaller/data/entity/messaging/Participant;->l()Z

    move-result v3

    if-eqz v3, :cond_b

    iget v2, v2, Lcom/truecaller/data/entity/messaging/Participant;->z:I

    and-int/2addr v2, v15

    if-nez v2, :cond_b

    goto :goto_7

    :cond_b
    move v2, v12

    goto :goto_8

    :cond_c
    :goto_7
    move v2, v14

    :goto_8
    if-nez v2, :cond_11

    .line 48
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_d

    move v3, v14

    goto :goto_9

    :cond_d
    move v3, v12

    :goto_9
    if-ne v3, v14, :cond_f

    .line 49
    iget-object v9, v0, Le/a/a/y0/d0;->c:Landroid/content/Context;

    const/4 v6, 0x1

    const-string v4, "com.truecaller.messaging.notifications.QUICK_REPLY"

    move-object v3, v9

    move-object v5, v11

    move-object v7, v13

    move-object/from16 v8, p3

    .line 50
    invoke-static/range {v3 .. v8}, Lcom/truecaller/messaging/notifications/NotificationBroadcastReceiver;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;ZLcom/truecaller/messaging/notifications/NotificationIdentifier;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const/16 v4, 0x1f

    if-lt v2, v4, :cond_e

    const/high16 v2, 0xa000000

    goto :goto_a

    :cond_e
    const/high16 v2, 0x8000000

    .line 51
    :goto_a
    iget v4, v13, Lcom/truecaller/messaging/notifications/NotificationIdentifier;->c:I

    .line 52
    invoke-static {v9, v4, v3, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    const-string v3, "NotificationBroadcastRec\u2026r, notificationChannelId)"

    .line 53
    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_b

    :cond_f
    if-nez v3, :cond_10

    .line 54
    iget-object v3, v0, Le/a/a/y0/d0;->c:Landroid/content/Context;

    new-instance v5, Lcom/truecaller/messaging/notifications/NotificationIdentifier;

    const/4 v2, 0x0

    const/4 v4, 0x6

    invoke-direct {v5, v12, v2, v12, v4}, Lcom/truecaller/messaging/notifications/NotificationIdentifier;-><init>(ILjava/lang/String;II)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x38

    const-string v6, "reply_message"

    move-object v4, v11

    invoke-static/range {v3 .. v10}, Le/a/c/p/a;->T(Landroid/content/Context;Ljava/util/List;Lcom/truecaller/messaging/notifications/NotificationIdentifier;Ljava/lang/String;Ljava/lang/String;ZZI)Landroid/app/PendingIntent;

    move-result-object v2

    .line 55
    :goto_b
    iget-object v3, v0, Le/a/a/y0/d0;->c:Landroid/content/Context;

    const v4, 0x7f120ebb

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v3, "context.getString(R.string.reply)"

    invoke-static {v7, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    new-instance v3, Ln3/k/a/m$a;

    const v4, 0x7f080633

    invoke-direct {v3, v4, v7, v2}, Ln3/k/a/m$a;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const/4 v8, 0x0

    .line 57
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 58
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 59
    new-instance v2, Ln3/k/a/z;

    const-string v6, "KEY_REPLY_TEXT"

    move-object v5, v2

    invoke-direct/range {v5 .. v12}, Ln3/k/a/z;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ZILandroid/os/Bundle;Ljava/util/Set;)V

    .line 60
    invoke-virtual {v3, v2}, Ln3/k/a/m$a;->a(Ln3/k/a/z;)Ln3/k/a/m$a;

    .line 61
    invoke-virtual {v3}, Ln3/k/a/m$a;->b()Ln3/k/a/m;

    move-result-object v2

    const-string v3, "NotificationCompat.Actio\u2026d())\n            .build()"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-virtual {v1, v2}, Ln3/k/a/q;->b(Ln3/k/a/m;)Ln3/k/a/q;

    goto :goto_c

    .line 63
    :cond_10
    new-instance v1, Ls1/i;

    invoke-direct {v1}, Ls1/i;-><init>()V

    throw v1

    :cond_11
    :goto_c
    return-void
.end method

.method public final d()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/y0/d0;->e:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/i4/e;

    invoke-interface {v0}, Le/a/i4/e;->e()[Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v0, v4

    .line 4
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v6

    const v7, 0x7f0a0c36

    if-ne v6, v7, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    move v6, v3

    :goto_1
    if-eqz v6, :cond_1

    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public final e(Lcom/truecaller/data/entity/messaging/Participant;I)Landroid/graphics/Bitmap;
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 1
    iget-object v3, v0, Le/a/a/y0/d0;->d:Le/a/o5/f0;

    iget-wide v4, v1, Lcom/truecaller/data/entity/messaging/Participant;->o:J

    iget-object v6, v1, Lcom/truecaller/data/entity/messaging/Participant;->m:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-interface {v3, v4, v5, v6, v7}, Le/a/o5/f0;->k(JLjava/lang/String;Z)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 2
    new-instance v5, Le/a/z3/i/a;

    new-instance v6, Le/a/z3/i/d;

    invoke-direct {v6, v2, v2}, Le/a/z3/i/d;-><init>(II)V

    invoke-direct {v5, v3, v6}, Le/a/z3/i/a;-><init>(Landroid/net/Uri;Le/a/z3/i/g;)V

    .line 3
    iput-boolean v7, v5, Le/a/z3/i/a;->a:Z

    .line 4
    iget-object v3, v0, Le/a/a/y0/d0;->c:Landroid/content/Context;

    invoke-static {v5, v3}, Le/a/m0/a1$k;->N0(Le/a/z3/i/a;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    if-eqz v3, :cond_1

    return-object v3

    .line 5
    :cond_1
    iget-object v3, v0, Le/a/a/y0/d0;->f:Lo3/a;

    invoke-interface {v3}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/b0/a/b/a;

    .line 6
    new-instance v5, Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    const/4 v9, 0x0

    .line 7
    iget-object v10, v1, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    const/4 v11, 0x0

    .line 8
    iget-object v6, v1, Lcom/truecaller/data/entity/messaging/Participant;->l:Ljava/lang/String;

    const/4 v15, 0x0

    invoke-static {v6, v15, v7}, Le/m/d/y/n;->t1(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v12

    .line 9
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/data/entity/messaging/Participant;->n()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, v0, Le/a/a/y0/d0;->h:Lo3/a;

    invoke-interface {v6}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/a/u3/g;

    invoke-virtual {v6}, Le/a/u3/g;->h0()Le/a/u3/b;

    move-result-object v6

    invoke-interface {v6}, Le/a/u3/b;->isEnabled()Z

    move-result v6

    if-nez v6, :cond_2

    move v13, v7

    goto :goto_1

    :cond_2
    move v13, v15

    :goto_1
    const/4 v14, 0x0

    .line 10
    iget v1, v1, Lcom/truecaller/data/entity/messaging/Participant;->b:I

    if-ne v1, v7, :cond_3

    move v1, v7

    goto :goto_2

    :cond_3
    move v1, v15

    :goto_2
    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const v25, 0xffa5

    move-object v8, v5

    move v6, v15

    move v15, v1

    .line 11
    invoke-direct/range {v8 .. v25}, Lcom/truecaller/common/ui/avatar/AvatarXConfig;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZZZZZLjava/lang/Integer;ZI)V

    const/4 v1, 0x2

    .line 12
    invoke-static {v3, v5, v6, v1, v4}, Le/a/b0/a/b/a;->ok(Le/a/b0/a/b/a;Lcom/truecaller/common/ui/avatar/AvatarXConfig;ZILjava/lang/Object;)V

    .line 13
    new-instance v1, Le/a/a/y0/d0$a;

    invoke-direct {v1, v0, v2, v4}, Le/a/a/y0/d0$a;-><init>(Le/a/a/y0/d0;ILs1/w/d;)V

    invoke-static {v4, v1, v7, v4}, Ls1/a/a/a/v0/f/d;->c3(Ls1/w/f;Ls1/z/b/p;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    return-object v1
.end method

.method public final f(Lcom/truecaller/messaging/data/types/Conversation;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p1, p1, Lcom/truecaller/messaging/data/types/Conversation;->z:Lcom/truecaller/messaging/data/types/ImGroupInfo;

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p1, Lcom/truecaller/messaging/data/types/ImGroupInfo;->b:Ljava/lang/String;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Le/a/a/y0/d0;->c:Landroid/content/Context;

    const v0, 0x7f1203a8

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(R.stri\u2026MessageNotificationGroup)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method public final g(Lcom/truecaller/messaging/data/types/Message;)Ljava/lang/CharSequence;
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/a/y0/d0;->l:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a/i1/b;

    invoke-interface {v0, p1}, Le/a/a/i1/b;->z(Lcom/truecaller/messaging/data/types/Message;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/a/b0/q/e0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "RtlUtils.stringWithPhone\u2026).buildSnippetText(this))"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "snippetText"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Le/a/a/y0/d0;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v2, "context.resources"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "res"

    .line 5
    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Le/a/a/y0/d0;->l:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a/i1/b;

    invoke-interface {v0, p1}, Le/a/a/i1/b;->v(Lcom/truecaller/messaging/data/types/Message;)Ljava/lang/String;

    move-result-object v0

    .line 7
    iget-object v2, p0, Le/a/a/y0/d0;->c:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Le/a/l4/k;->E(Landroid/content/Context;Z)Landroid/view/ContextThemeWrapper;

    move-result-object v2

    invoke-static {p1}, Le/a/c/p/a;->z1(Lcom/truecaller/messaging/data/types/Message;)Z

    move-result p1

    const-string v3, "context"

    .line 8
    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v3, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    const-string v4, " "

    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_0
    if-eqz p1, :cond_1

    .line 11
    sget-object p1, Lcom/truecaller/messaging/conversation/richtext/TextDelimiterFormatter;->b:Lcom/truecaller/messaging/conversation/richtext/TextDelimiterFormatter;

    sget-object p1, Lcom/truecaller/messaging/conversation/richtext/TextDelimiterFormatter$DelimiterVisibility;->REMOVE:Lcom/truecaller/messaging/conversation/richtext/TextDelimiterFormatter$DelimiterVisibility;

    invoke-static {v2, v1, p1}, Lcom/truecaller/messaging/conversation/richtext/TextDelimiterFormatter;->c(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/truecaller/messaging/conversation/richtext/TextDelimiterFormatter$DelimiterVisibility;)Landroid/text/Spannable;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {v3, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :goto_0
    return-object v3
.end method

.method public final h()Ln3/k/a/y;
    .locals 5

    .line 1
    new-instance v0, Ln3/k/a/y$a;

    invoke-direct {v0}, Ln3/k/a/y$a;-><init>()V

    .line 2
    iget-object v1, p0, Le/a/a/y0/d0;->c:Landroid/content/Context;

    const v2, 0x7f1203ad

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3
    iput-object v1, v0, Ln3/k/a/y$a;->a:Ljava/lang/CharSequence;

    .line 4
    new-instance v1, Lcom/truecaller/data/entity/messaging/Participant$b;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/truecaller/data/entity/messaging/Participant$b;-><init>(I)V

    .line 5
    iget-object v2, p0, Le/a/a/y0/d0;->n:Le/a/b0/e/r/a;

    const-string v3, "profileNumber"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Le/a/b0/e/r/a;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6
    iput-object v2, v1, Lcom/truecaller/data/entity/messaging/Participant$b;->e:Ljava/lang/String;

    .line 7
    iget-object v2, p0, Le/a/a/y0/d0;->m:Le/a/b0/o/a;

    const-string v3, "profileFirstName"

    invoke-interface {v2, v3}, Le/a/b0/o/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 8
    iput-object v2, v1, Lcom/truecaller/data/entity/messaging/Participant$b;->l:Ljava/lang/String;

    .line 9
    iget-object v2, p0, Le/a/a/y0/d0;->m:Le/a/b0/o/a;

    const-string v3, "profileAvatar"

    invoke-interface {v2, v3}, Le/a/b0/o/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 10
    iput-object v2, v1, Lcom/truecaller/data/entity/messaging/Participant$b;->m:Ljava/lang/String;

    .line 11
    invoke-virtual {v1}, Lcom/truecaller/data/entity/messaging/Participant$b;->a()Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object v1

    const-string v2, "Participant.Builder(Part\u2026AVATAR))\n        .build()"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget v2, p0, Le/a/a/y0/d0;->a:I

    invoke-virtual {p0, v1, v2}, Le/a/a/y0/d0;->e(Lcom/truecaller/data/entity/messaging/Participant;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/graphics/drawable/IconCompat;->h(Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v1

    .line 13
    iput-object v1, v0, Ln3/k/a/y$a;->b:Landroidx/core/graphics/drawable/IconCompat;

    .line 14
    new-instance v1, Ln3/k/a/y;

    invoke-direct {v1, v0}, Ln3/k/a/y;-><init>(Ln3/k/a/y$a;)V

    const-string v0, "Person.Builder()\n       \u2026nSize)))\n        .build()"

    .line 15
    invoke-static {v1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method public final i(Ln3/k/a/q;IZLcom/truecaller/messaging/data/types/Conversation;)Ln3/k/a/q;
    .locals 8

    .line 1
    iget-object v0, p0, Le/a/a/y0/d0;->i:Le/a/a/i0;

    invoke-interface {v0}, Le/a/a/i0;->I2()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/a/y0/d0;->d:Le/a/o5/f0;

    invoke-interface {v0}, Le/a/o5/f0;->n()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    .line 2
    :goto_0
    invoke-virtual {p1, v0}, Ln3/k/a/q;->o(I)Ln3/k/a/q;

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    .line 3
    iget-object v0, p0, Le/a/a/y0/d0;->j:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/o5/l1;

    invoke-interface {v0}, Le/a/o5/l1;->d()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Ln3/k/a/q;->w(Landroid/net/Uri;)Ln3/k/a/q;

    goto :goto_1

    :cond_1
    if-eqz p3, :cond_2

    .line 4
    iget-object v0, p0, Le/a/a/y0/d0;->j:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/o5/l1;

    invoke-interface {v0}, Le/a/o5/l1;->b()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Ln3/k/a/q;->w(Landroid/net/Uri;)Ln3/k/a/q;

    .line 5
    iget-object v0, p0, Le/a/a/y0/d0;->j:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/o5/l1;

    invoke-interface {v0}, Le/a/o5/l1;->a()[J

    move-result-object v0

    .line 6
    iget-object v1, p1, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput-object v0, v1, Landroid/app/Notification;->vibrate:[J

    goto :goto_1

    .line 7
    :cond_2
    iget-object v0, p0, Le/a/a/y0/d0;->j:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/o5/l1;

    invoke-interface {v0}, Le/a/o5/l1;->g()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Ln3/k/a/q;->w(Landroid/net/Uri;)Ln3/k/a/q;

    .line 8
    :goto_1
    iget-object v0, p4, Lcom/truecaller/messaging/data/types/Conversation;->Q:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 9
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "uri"

    .line 10
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Le/a/a/y0/d0;->c:Landroid/content/Context;

    invoke-static {v0, v1}, Le/a/p5/s0/f;->g(Landroid/net/Uri;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 11
    invoke-virtual {p1, v0}, Ln3/k/a/q;->w(Landroid/net/Uri;)Ln3/k/a/q;

    const-string p2, "setSound(uri)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 12
    :cond_3
    new-instance v7, Le/a/a/y0/d0$b;

    const/4 v1, 0x0

    move-object v0, v7

    move-object v2, p1

    move-object v3, p0

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Le/a/a/y0/d0$b;-><init>(Ls1/w/d;Ln3/k/a/q;Le/a/a/y0/d0;IZLcom/truecaller/messaging/data/types/Conversation;)V

    const/4 p2, 0x1

    const/4 p3, 0x0

    invoke-static {p3, v7, p2, p3}, Ls1/a/a/a/v0/f/d;->c3(Ls1/w/f;Ls1/z/b/p;ILjava/lang/Object;)Ljava/lang/Object;

    .line 13
    iput-object p3, p4, Lcom/truecaller/messaging/data/types/Conversation;->Q:Ljava/lang/String;

    :cond_4
    :goto_2
    const/4 p2, 0x5

    .line 14
    iput p2, p1, Ln3/k/a/q;->l:I

    return-object p1
.end method

.method public final j(Ljava/util/Map;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/truecaller/messaging/data/types/Conversation;",
            "+",
            "Ljava/util/List<",
            "Lcom/truecaller/messaging/data/types/Message;",
            ">;>;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 2
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 3
    instance-of v3, v0, Ljava/util/Collection;

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 4
    :cond_2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/truecaller/messaging/data/types/Message;

    .line 5
    invoke-static {v3}, Le/a/c/p/a;->s1(Lcom/truecaller/messaging/data/types/Message;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Le/a/a/y0/d0;->k:Lo3/a;

    invoke-interface {v4}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/a/y0/n;

    .line 6
    iget-wide v5, v3, Lcom/truecaller/messaging/data/types/Message;->a:J

    .line 7
    invoke-interface {v4, v5, v6}, Le/a/a/y0/n;->a(J)Z

    move-result v3

    if-nez v3, :cond_4

    move v3, v1

    goto :goto_0

    :cond_4
    move v3, v2

    :goto_0
    if-eqz v3, :cond_3

    move v0, v1

    goto :goto_2

    :cond_5
    :goto_1
    move v0, v2

    :goto_2
    if-eqz v0, :cond_1

    goto :goto_4

    :cond_6
    :goto_3
    move v1, v2

    :goto_4
    return v1
.end method

.method public final k(Lcom/truecaller/messaging/data/types/Message;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/y0/d0;->h:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/u3/g;

    invoke-virtual {v0}, Le/a/u3/g;->W()Le/a/u3/b;

    move-result-object v0

    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/a/y0/d0;->t:Le/a/p5/a0;

    invoke-interface {v0}, Le/a/p5/a0;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/a/y0/d0;->i:Le/a/a/i0;

    invoke-interface {v0}, Le/a/a/i0;->P3()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p1}, Le/a/c/p/a;->D1(Lcom/truecaller/messaging/data/types/Message;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final l(Ljava/util/Map;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/truecaller/messaging/data/types/Conversation;",
            "+",
            "Ljava/util/List<",
            "Lcom/truecaller/messaging/data/types/Message;",
            ">;>;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    :cond_0
    move v1, v2

    goto :goto_1

    .line 2
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 3
    instance-of v3, v0, Ljava/util/Collection;

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    move v0, v2

    goto :goto_0

    .line 4
    :cond_4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/truecaller/messaging/data/types/Message;

    .line 5
    iget-object v4, p0, Le/a/a/y0/d0;->k:Lo3/a;

    invoke-interface {v4}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/a/y0/n;

    .line 6
    iget-wide v5, v3, Lcom/truecaller/messaging/data/types/Message;->a:J

    .line 7
    invoke-interface {v4, v5, v6}, Le/a/a/y0/n;->a(J)Z

    move-result v3

    xor-int/2addr v3, v1

    if-eqz v3, :cond_5

    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    :goto_1
    return v1
.end method

.method public final m(Lcom/truecaller/data/entity/messaging/Participant;)Ln3/k/a/y;
    .locals 2

    .line 1
    new-instance v0, Ln3/k/a/y$a;

    invoke-direct {v0}, Ln3/k/a/y$a;-><init>()V

    .line 2
    invoke-static {p1}, Le/a/a/i1/h;->c(Lcom/truecaller/data/entity/messaging/Participant;)Ljava/lang/String;

    move-result-object v1

    .line 3
    iput-object v1, v0, Ln3/k/a/y$a;->a:Ljava/lang/CharSequence;

    .line 4
    iget v1, p0, Le/a/a/y0/d0;->a:I

    invoke-virtual {p0, p1, v1}, Le/a/a/y0/d0;->e(Lcom/truecaller/data/entity/messaging/Participant;I)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/graphics/drawable/IconCompat;->h(Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p1

    .line 5
    iput-object p1, v0, Ln3/k/a/y$a;->b:Landroidx/core/graphics/drawable/IconCompat;

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, v0, Ln3/k/a/y$a;->f:Z

    .line 7
    new-instance p1, Ln3/k/a/y;

    invoke-direct {p1, v0}, Ln3/k/a/y;-><init>(Ln3/k/a/y$a;)V

    const-string v0, "Person.Builder()\n       \u2026rue)\n            .build()"

    .line 8
    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
