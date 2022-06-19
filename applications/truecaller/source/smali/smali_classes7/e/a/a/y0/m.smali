.class public final Le/a/a/y0/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/y0/l;


# instance fields
.field public final a:Le/a/o5/f0;

.field public final b:Le/a/p5/g;

.field public final c:Le/a/p5/u;

.field public final d:Le/a/w4/d;

.field public final e:Le/a/a/b1/b;

.field public final f:Le/a/h0/t;

.field public final g:Le/a/a/y0/j;

.field public final h:Le/a/k3/j/b;


# direct methods
.method public constructor <init>(Le/a/o5/f0;Le/a/p5/g;Le/a/p5/u;Le/a/w4/d;Le/a/a/b1/b;Le/a/h0/t;Le/a/a/y0/j;Le/a/k3/j/b;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "deviceManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceInfoUtil"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkUtil"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contactStalenessHelper"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "participantSearchHelper"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "topSpammerRepository"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsHelper"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "aggregatedContactDao"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/y0/m;->a:Le/a/o5/f0;

    iput-object p2, p0, Le/a/a/y0/m;->b:Le/a/p5/g;

    iput-object p3, p0, Le/a/a/y0/m;->c:Le/a/p5/u;

    iput-object p4, p0, Le/a/a/y0/m;->d:Le/a/w4/d;

    iput-object p5, p0, Le/a/a/y0/m;->e:Le/a/a/b1/b;

    iput-object p6, p0, Le/a/a/y0/m;->f:Le/a/h0/t;

    iput-object p7, p0, Le/a/a/y0/m;->g:Le/a/a/y0/j;

    iput-object p8, p0, Le/a/a/y0/m;->h:Le/a/k3/j/b;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;)Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/truecaller/messaging/data/types/Conversation;",
            "+",
            "Ljava/util/List<",
            "Lcom/truecaller/messaging/data/types/Message;",
            ">;>;)",
            "Ljava/util/Map<",
            "Lcom/truecaller/messaging/data/types/Conversation;",
            "Ljava/util/List<",
            "Lcom/truecaller/messaging/data/types/Message;",
            ">;>;"
        }
    .end annotation

    const-string v0, "conversations"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 4
    invoke-static {v0, v2}, Ls1/u/i;->b(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0, v0}, Le/a/a/y0/m;->b(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 8
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/truecaller/messaging/data/types/Conversation;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 9
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    new-instance v4, Lcom/truecaller/messaging/data/types/Conversation$b;

    invoke-direct {v4, v3}, Lcom/truecaller/messaging/data/types/Conversation$b;-><init>(Lcom/truecaller/messaging/data/types/Conversation;)V

    .line 11
    iget-object v3, v3, Lcom/truecaller/messaging/data/types/Conversation;->m:[Lcom/truecaller/data/entity/messaging/Participant;

    const-string v5, "conversation.participants"

    invoke-static {v3, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    new-instance v5, Ljava/util/ArrayList;

    array-length v6, v3

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 13
    array-length v6, v3

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v6, :cond_2

    aget-object v8, v3, v7

    .line 14
    iget-object v9, v8, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    move-object v10, v0

    check-cast v10, Ljava/util/LinkedHashMap;

    invoke-virtual {v10, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/truecaller/data/entity/messaging/Participant;

    if-eqz v9, :cond_1

    move-object v8, v9

    :cond_1
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 15
    :cond_2
    iget-object v3, v4, Lcom/truecaller/messaging/data/types/Conversation$b;->m:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 16
    iget-object v3, v4, Lcom/truecaller/messaging/data/types/Conversation$b;->m:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 17
    invoke-virtual {v4}, Lcom/truecaller/messaging/data/types/Conversation$b;->b()Lcom/truecaller/messaging/data/types/Conversation;

    move-result-object v3

    const-string v4, "conversation.buildUpon()\u2026\n                .build()"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v2, v5}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 19
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 20
    check-cast v5, Lcom/truecaller/messaging/data/types/Message;

    .line 21
    invoke-virtual {v5}, Lcom/truecaller/messaging/data/types/Message;->b()Lcom/truecaller/messaging/data/types/Message$b;

    move-result-object v6

    iget-object v5, v5, Lcom/truecaller/messaging/data/types/Message;->c:Lcom/truecaller/data/entity/messaging/Participant;

    iget-object v5, v5, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    const-string v7, "it.participant.normalizedAddress"

    invoke-static {v5, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v5}, Ls1/u/i;->H(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/truecaller/data/entity/messaging/Participant;

    .line 22
    iput-object v5, v6, Lcom/truecaller/messaging/data/types/Message$b;->c:Lcom/truecaller/data/entity/messaging/Participant;

    .line 23
    invoke-virtual {v6}, Lcom/truecaller/messaging/data/types/Message$b;->a()Lcom/truecaller/messaging/data/types/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 24
    :cond_3
    new-instance v2, Ls1/k;

    invoke-direct {v2, v3, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 25
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 26
    :cond_4
    invoke-static {v1}, Ls1/u/i;->V0(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/util/List;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/truecaller/messaging/data/types/Message;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/truecaller/data/entity/messaging/Participant;",
            ">;"
        }
    .end annotation

    const-string v0, "messages"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 3
    move-object v2, v1

    check-cast v2, Lcom/truecaller/messaging/data/types/Message;

    .line 4
    iget-object v2, v2, Lcom/truecaller/messaging/data/types/Message;->c:Lcom/truecaller/data/entity/messaging/Participant;

    iget-object v2, v2, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    .line 5
    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 6
    invoke-static {v0, v2}, Le/d/c/a/a;->R(Ljava/util/LinkedHashMap;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    :cond_0
    check-cast v3, Ljava/util/List;

    .line 7
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_1
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {v1}, Le/q/f/a/d/a;->Y1(I)I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 9
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 10
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 11
    check-cast v1, Ljava/util/Map$Entry;

    .line 12
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 13
    invoke-static {v1}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/truecaller/messaging/data/types/Message;

    iget-object v3, v3, Lcom/truecaller/messaging/data/types/Message;->c:Lcom/truecaller/data/entity/messaging/Participant;

    const-string v4, "messages.first().participant"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v1, v5}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 15
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 16
    check-cast v5, Lcom/truecaller/messaging/data/types/Message;

    .line 17
    iget-object v6, v5, Lcom/truecaller/messaging/data/types/Message;->n:Lcom/truecaller/messaging/data/types/TransportInfo;

    invoke-interface {v6}, Lcom/truecaller/messaging/data/types/TransportInfo;->k0()J

    move-result-wide v6

    iget-object v5, v5, Lcom/truecaller/messaging/data/types/Message;->e:Lw3/b/a/b;

    invoke-static {v6, v7, v5}, Lcom/truecaller/messaging/data/types/Message;->d(JLw3/b/a/b;)Ljava/lang/String;

    move-result-object v5

    .line 18
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 19
    :cond_2
    iget-object v1, p0, Le/a/a/y0/m;->b:Le/a/p5/g;

    invoke-interface {v1}, Le/a/p5/g;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "notification"

    goto :goto_3

    :cond_3
    const-string v1, "notificationNotDefault"

    .line 20
    :goto_3
    iget-object v5, p0, Le/a/a/y0/m;->c:Le/a/p5/u;

    invoke-interface {v5}, Le/a/p5/u;->d()Z

    move-result v5

    if-nez v5, :cond_4

    .line 21
    iget-object v5, p0, Le/a/a/y0/m;->g:Le/a/a/y0/j;

    .line 22
    iget-object v6, p0, Le/a/a/y0/m;->h:Le/a/k3/j/b;

    iget-wide v7, v3, Lcom/truecaller/data/entity/messaging/Participant;->h:J

    invoke-virtual {v6, v7, v8}, Le/a/k3/j/b;->e(J)Lcom/truecaller/data/entity/Contact;

    move-result-object v6

    .line 23
    new-instance v7, Ls1/k;

    invoke-direct {v7, v3, v6}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v6, "noConnection"

    .line 24
    invoke-interface {v5, v7, v6, v1, v4}, Le/a/a/y0/j;->a(Ls1/k;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto/16 :goto_9

    .line 25
    :cond_4
    iget-object v5, p0, Le/a/a/y0/m;->a:Le/a/o5/f0;

    invoke-interface {v5}, Le/a/o5/f0;->a()Z

    move-result v5

    if-nez v5, :cond_5

    .line 26
    iget-object v5, p0, Le/a/a/y0/m;->g:Le/a/a/y0/j;

    .line 27
    iget-object v6, p0, Le/a/a/y0/m;->h:Le/a/k3/j/b;

    iget-wide v7, v3, Lcom/truecaller/data/entity/messaging/Participant;->h:J

    invoke-virtual {v6, v7, v8}, Le/a/k3/j/b;->e(J)Lcom/truecaller/data/entity/Contact;

    move-result-object v6

    .line 28
    new-instance v7, Ls1/k;

    invoke-direct {v7, v3, v6}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v6, "noAccount"

    .line 29
    invoke-interface {v5, v7, v6, v1, v4}, Le/a/a/y0/j;->a(Ls1/k;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto/16 :goto_9

    .line 30
    :cond_5
    iget v5, v3, Lcom/truecaller/data/entity/messaging/Participant;->b:I

    const/4 v6, 0x1

    if-eqz v5, :cond_6

    if-eq v5, v6, :cond_6

    const/4 v7, 0x3

    if-eq v5, v7, :cond_6

    .line 31
    iget-object v5, p0, Le/a/a/y0/m;->g:Le/a/a/y0/j;

    .line 32
    iget-object v6, p0, Le/a/a/y0/m;->h:Le/a/k3/j/b;

    iget-wide v7, v3, Lcom/truecaller/data/entity/messaging/Participant;->h:J

    invoke-virtual {v6, v7, v8}, Le/a/k3/j/b;->e(J)Lcom/truecaller/data/entity/Contact;

    move-result-object v6

    .line 33
    new-instance v7, Ls1/k;

    invoke-direct {v7, v3, v6}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v6, "notNumber"

    .line 34
    invoke-interface {v5, v7, v6, v1, v4}, Le/a/a/y0/j;->a(Ls1/k;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto/16 :goto_9

    .line 35
    :cond_6
    iget-object v5, p0, Le/a/a/y0/m;->d:Le/a/w4/d;

    invoke-interface {v5, v3}, Le/a/w4/d;->c(Lcom/truecaller/data/entity/messaging/Participant;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 36
    iget-object v5, p0, Le/a/a/y0/m;->g:Le/a/a/y0/j;

    .line 37
    iget-object v6, p0, Le/a/a/y0/m;->h:Le/a/k3/j/b;

    iget-wide v7, v3, Lcom/truecaller/data/entity/messaging/Participant;->h:J

    invoke-virtual {v6, v7, v8}, Le/a/k3/j/b;->e(J)Lcom/truecaller/data/entity/Contact;

    move-result-object v6

    .line 38
    new-instance v7, Ls1/k;

    invoke-direct {v7, v3, v6}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v6, "validCacheResult"

    .line 39
    invoke-interface {v5, v7, v6, v1, v4}, Le/a/a/y0/j;->a(Ls1/k;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto/16 :goto_9

    .line 40
    :cond_7
    iget-object v5, p0, Le/a/a/y0/m;->e:Le/a/a/b1/b;

    invoke-interface {v5, v3, v1, v4}, Le/a/a/b1/b;->b(Lcom/truecaller/data/entity/messaging/Participant;Ljava/lang/String;Ljava/util/List;)Le/a/f4/g/t;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Le/a/f4/g/t;->a()Lcom/truecaller/data/entity/Contact;

    move-result-object v1

    goto :goto_4

    :cond_8
    const/4 v1, 0x0

    :goto_4
    if-eqz v1, :cond_b

    .line 41
    iget v4, v3, Lcom/truecaller/data/entity/messaging/Participant;->b:I

    if-eq v4, v6, :cond_9

    goto :goto_5

    :cond_9
    const/4 v6, 0x0

    .line 42
    :goto_5
    invoke-virtual {v3}, Lcom/truecaller/data/entity/messaging/Participant;->e()Lcom/truecaller/data/entity/messaging/Participant$b;

    move-result-object v4

    if-eqz v6, :cond_a

    .line 43
    invoke-virtual {v1}, Lcom/truecaller/data/entity/Contact;->w()Ljava/lang/String;

    move-result-object v5

    goto :goto_6

    :cond_a
    invoke-static {v3}, Le/a/c/p/a;->v0(Lcom/truecaller/data/entity/messaging/Participant;)Ljava/lang/String;

    move-result-object v5

    .line 44
    :goto_6
    iput-object v5, v4, Lcom/truecaller/data/entity/messaging/Participant$b;->l:Ljava/lang/String;

    .line 45
    iget v3, v3, Lcom/truecaller/data/entity/messaging/Participant;->n:I

    invoke-virtual {v1}, Lcom/truecaller/data/entity/Contact;->getSource()I

    move-result v5

    and-int/2addr v3, v5

    .line 46
    iput v3, v4, Lcom/truecaller/data/entity/messaging/Participant$b;->n:I

    .line 47
    invoke-virtual {v1}, Lcom/truecaller/data/entity/Contact;->B()Ljava/lang/String;

    move-result-object v3

    .line 48
    iput-object v3, v4, Lcom/truecaller/data/entity/messaging/Participant$b;->m:Ljava/lang/String;

    .line 49
    invoke-virtual {v1}, Lcom/truecaller/data/entity/Contact;->a0()I

    move-result v1

    .line 50
    iput v1, v4, Lcom/truecaller/data/entity/messaging/Participant$b;->p:I

    .line 51
    invoke-virtual {v4}, Lcom/truecaller/data/entity/messaging/Participant$b;->a()Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object v3

    goto :goto_9

    .line 52
    :cond_b
    iget-boolean v1, v3, Lcom/truecaller/data/entity/messaging/Participant;->j:Z

    if-eqz v1, :cond_e

    .line 53
    iget-object v1, p0, Le/a/a/y0/m;->f:Le/a/h0/t;

    iget-object v4, v3, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    const-string v5, "participant.normalizedAddress"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Le/a/h0/t;->c(Ljava/lang/String;)Lcom/truecaller/filters/sync/TopSpammer;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 54
    invoke-virtual {v3}, Lcom/truecaller/data/entity/messaging/Participant;->e()Lcom/truecaller/data/entity/messaging/Participant$b;

    move-result-object v4

    .line 55
    invoke-virtual {v1}, Lcom/truecaller/filters/sync/TopSpammer;->getLabel()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_c

    goto :goto_7

    :cond_c
    iget-object v5, v3, Lcom/truecaller/data/entity/messaging/Participant;->l:Ljava/lang/String;

    .line 56
    :goto_7
    iput-object v5, v4, Lcom/truecaller/data/entity/messaging/Participant$b;->l:Ljava/lang/String;

    .line 57
    invoke-virtual {v1}, Lcom/truecaller/filters/sync/TopSpammer;->getReports()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_8

    :cond_d
    iget v1, v3, Lcom/truecaller/data/entity/messaging/Participant;->p:I

    .line 58
    :goto_8
    iput v1, v4, Lcom/truecaller/data/entity/messaging/Participant$b;->p:I

    .line 59
    invoke-virtual {v4}, Lcom/truecaller/data/entity/messaging/Participant$b;->a()Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object v3

    .line 60
    :cond_e
    :goto_9
    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_f
    return-object p1
.end method
