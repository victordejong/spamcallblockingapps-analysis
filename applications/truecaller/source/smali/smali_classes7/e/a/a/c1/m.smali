.class public final Le/a/a/c1/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/c1/l;


# instance fields
.field public final a:Le/a/a/k/t;

.field public final b:Le/a/a/w0/a;

.field public final c:Le/a/q2/i0;

.field public final d:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/r2/f<",
            "Le/a/a/g/m;",
            ">;>;"
        }
    .end annotation
.end field

.field public final e:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/a/g/w;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/a/k/t;Le/a/a/w0/a;Le/a/q2/i0;Lo3/a;Lo3/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/a/k/t;",
            "Le/a/a/w0/a;",
            "Le/a/q2/i0;",
            "Lo3/a<",
            "Le/a/r2/f<",
            "Le/a/a/g/m;",
            ">;>;",
            "Lo3/a<",
            "Le/a/a/g/w;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "transportManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messagesMonitor"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageAnalytics"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messagesStorage"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "readMessageStorage"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/c1/m;->a:Le/a/a/k/t;

    iput-object p2, p0, Le/a/a/c1/m;->b:Le/a/a/w0/a;

    iput-object p3, p0, Le/a/a/c1/m;->c:Le/a/q2/i0;

    iput-object p4, p0, Le/a/a/c1/m;->d:Lo3/a;

    iput-object p5, p0, Le/a/a/c1/m;->e:Lo3/a;

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/messaging/data/types/Draft;Ljava/lang/String;ZLjava/lang/String;)Le/a/r2/x;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/messaging/data/types/Draft;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            ")",
            "Le/a/r2/x<",
            "Le/a/a/c1/a;",
            ">;"
        }
    .end annotation

    sget-object p3, Ls1/u/s;->a:Ls1/u/s;

    const-string v0, "draft"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "simToken"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsContext"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/truecaller/messaging/data/types/Draft;->c()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3
    new-instance v1, Ls1/z/c/b0;

    invoke-direct {v1}, Ls1/z/c/b0;-><init>()V

    iget-wide v2, p1, Lcom/truecaller/messaging/data/types/Draft;->q:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/4 v5, 0x0

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, v5

    :goto_1
    const-string v3, "Promise.wrap(DraftEditRe\u2026iled(emptyList(), draft))"

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v1, Ls1/z/c/b0;->a:J

    .line 4
    new-instance v2, Le/a/a/c1/m$a;

    invoke-direct {v2, p0, v1, v5}, Le/a/a/c1/m$a;-><init>(Le/a/a/c1/m;Ls1/z/c/b0;Ls1/w/d;)V

    invoke-static {v5, v2, v4, v5}, Ls1/a/a/a/v0/f/d;->c3(Ls1/w/f;Ls1/z/b/p;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truecaller/messaging/data/types/Message;

    if-eqz v1, :cond_4

    .line 5
    iget v2, v1, Lcom/truecaller/messaging/data/types/Message;->g:I

    const/16 v4, 0x81

    if-eq v2, v4, :cond_2

    .line 6
    new-instance p2, Le/a/a/c1/a$b;

    invoke-direct {p2, p3, p1}, Le/a/a/c1/a$b;-><init>(Ljava/util/List;Lcom/truecaller/messaging/data/types/Draft;)V

    invoke-static {p2}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    invoke-static {p1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 7
    :cond_2
    invoke-virtual {p0, v1, p1, p4}, Le/a/a/c1/m;->c(Lcom/truecaller/messaging/data/types/Message;Lcom/truecaller/messaging/data/types/Draft;Ljava/lang/String;)Lcom/truecaller/messaging/data/types/Draft;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 8
    invoke-virtual {p1, p2, p4}, Lcom/truecaller/messaging/data/types/Draft;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/truecaller/messaging/data/types/Message;

    move-result-object p2

    const-string p3, "saved.buildMessage(simToken, analyticsContext)"

    invoke-static {p2, p3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-object p3, p0, Le/a/a/c1/m;->a:Le/a/a/k/t;

    invoke-interface {p3, p2}, Le/a/a/k/t;->B(Lcom/truecaller/messaging/data/types/Message;)Le/a/r2/x;

    move-result-object p2

    invoke-virtual {p2}, Le/a/r2/x;->c()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/truecaller/messaging/data/types/Message;

    if-eqz p2, :cond_3

    .line 10
    new-instance p3, Ls1/k;

    invoke-direct {p3, p1, p2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    :cond_3
    iget-object p2, p0, Le/a/a/c1/m;->b:Le/a/a/w0/a;

    invoke-static {p1, v1}, Le/a/c/p/a;->c(Lcom/truecaller/messaging/data/types/Draft;Lcom/truecaller/messaging/data/types/Message;)Lcom/truecaller/messaging/data/types/Message;

    move-result-object p1

    invoke-interface {p2, p1}, Le/a/a/w0/a;->j(Lcom/truecaller/messaging/data/types/Message;)V

    goto :goto_2

    .line 12
    :cond_4
    new-instance p2, Le/a/a/c1/a$b;

    invoke-direct {p2, p3, p1}, Le/a/a/c1/a$b;-><init>(Ljava/util/List;Lcom/truecaller/messaging/data/types/Draft;)V

    invoke-static {p2}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    invoke-static {p1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 13
    :cond_5
    new-instance p2, Le/a/a/c1/a$b;

    invoke-direct {p2, p3, p1}, Le/a/a/c1/a$b;-><init>(Ljava/util/List;Lcom/truecaller/messaging/data/types/Draft;)V

    invoke-static {p2}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    invoke-static {p1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 14
    :cond_6
    :goto_2
    new-instance p1, Le/a/a/c1/a$a;

    invoke-direct {p1, v0}, Le/a/a/c1/a$a;-><init>(Ljava/util/List;)V

    invoke-static {p1}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    const-string p2, "Promise.wrap(DraftEditRe\u2026(editedDraftMessageList))"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public b(Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;J)Le/a/r2/x;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/truecaller/messaging/data/types/Draft;",
            ">;",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/lang/String;",
            "J)",
            "Le/a/r2/x<",
            "Le/a/a/c1/c;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v9, p5

    const-string v2, "draftsList"

    move-object/from16 v10, p1

    invoke-static {v10, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "simToken"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "analyticsContext"

    invoke-static {v9, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v11, 0x0

    if-eqz v2, :cond_0

    .line 2
    invoke-static {v11}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object v1

    const-string v2, "Promise.wrap(null)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1

    .line 3
    :cond_0
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lcom/truecaller/messaging/data/types/Draft;

    .line 5
    invoke-virtual {v14}, Lcom/truecaller/messaging/data/types/Draft;->c()Z

    move-result v2

    const/4 v8, 0x1

    if-eqz v2, :cond_5

    .line 6
    new-instance v2, Ls1/z/c/b0;

    invoke-direct {v2}, Ls1/z/c/b0;-><init>()V

    iget-wide v3, v14, Lcom/truecaller/messaging/data/types/Draft;->q:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    move v15, v8

    goto :goto_1

    :cond_1
    const/4 v15, 0x0

    :goto_1
    if-eqz v15, :cond_2

    goto :goto_2

    :cond_2
    move-object v3, v11

    :goto_2
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, v2, Ls1/z/c/b0;->a:J

    .line 7
    new-instance v3, Le/a/a/c1/m$b;

    invoke-direct {v3, v0, v2, v11}, Le/a/a/c1/m$b;-><init>(Le/a/a/c1/m;Ls1/z/c/b0;Ls1/w/d;)V

    invoke-static {v11, v3, v8, v11}, Ls1/a/a/a/v0/f/d;->c3(Ls1/w/f;Ls1/z/b/p;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/truecaller/messaging/data/types/Message;

    if-eqz v2, :cond_4

    .line 8
    invoke-virtual {v0, v2, v14, v9}, Le/a/a/c1/m;->c(Lcom/truecaller/messaging/data/types/Message;Lcom/truecaller/messaging/data/types/Draft;Ljava/lang/String;)Lcom/truecaller/messaging/data/types/Draft;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 9
    invoke-virtual {v3, v1, v9}, Lcom/truecaller/messaging/data/types/Draft;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/truecaller/messaging/data/types/Message;

    move-result-object v4

    const-string v5, "saved.buildMessage(simToken, analyticsContext)"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object v5, v0, Le/a/a/c1/m;->a:Le/a/a/k/t;

    invoke-interface {v5, v4}, Le/a/a/k/t;->o(Lcom/truecaller/messaging/data/types/Message;)Le/a/r2/x;

    move-result-object v4

    invoke-virtual {v4}, Le/a/r2/x;->c()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/truecaller/messaging/data/types/Message;

    if-eqz v4, :cond_3

    .line 11
    new-instance v5, Ls1/k;

    invoke-direct {v5, v3, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    :cond_3
    iget-object v4, v0, Le/a/a/c1/m;->b:Le/a/a/w0/a;

    invoke-static {v3, v2}, Le/a/c/p/a;->c(Lcom/truecaller/messaging/data/types/Draft;Lcom/truecaller/messaging/data/types/Message;)Lcom/truecaller/messaging/data/types/Message;

    move-result-object v2

    invoke-interface {v4, v2}, Le/a/a/w0/a;->j(Lcom/truecaller/messaging/data/types/Message;)V

    :cond_4
    move/from16 v8, p4

    move-object/from16 v17, v13

    goto/16 :goto_9

    .line 13
    :cond_5
    invoke-virtual {v14, v1, v9}, Lcom/truecaller/messaging/data/types/Draft;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/truecaller/messaging/data/types/Message;

    move-result-object v2

    .line 14
    invoke-virtual {v2}, Lcom/truecaller/messaging/data/types/Message;->b()Lcom/truecaller/messaging/data/types/Message$b;

    move-result-object v2

    move-wide/from16 v6, p6

    .line 15
    invoke-virtual {v2, v6, v7}, Lcom/truecaller/messaging/data/types/Message$b;->i(J)Lcom/truecaller/messaging/data/types/Message$b;

    .line 16
    iget-boolean v3, v14, Lcom/truecaller/messaging/data/types/Draft;->l:Z

    .line 17
    iput-boolean v3, v2, Lcom/truecaller/messaging/data/types/Message$b;->J:Z

    .line 18
    iget-object v3, v14, Lcom/truecaller/messaging/data/types/Draft;->o:Lcom/truecaller/messaging/data/types/ImForwardInfo;

    .line 19
    iput-object v3, v2, Lcom/truecaller/messaging/data/types/Message$b;->L:Lcom/truecaller/messaging/data/types/ImForwardInfo;

    .line 20
    invoke-virtual {v2}, Lcom/truecaller/messaging/data/types/Message$b;->a()Lcom/truecaller/messaging/data/types/Message;

    move-result-object v5

    const-string v2, "draft.buildMessage(simTo\u2026\n                .build()"

    invoke-static {v5, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget v2, v14, Lcom/truecaller/messaging/data/types/Draft;->n:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_6

    if-nez p3, :cond_7

    goto :goto_3

    :cond_6
    if-nez v2, :cond_7

    :goto_3
    move v4, v8

    goto :goto_4

    :cond_7
    const/4 v4, 0x0

    .line 22
    :goto_4
    iget-object v2, v0, Le/a/a/c1/m;->a:Le/a/a/k/t;

    .line 23
    iget-object v3, v14, Lcom/truecaller/messaging/data/types/Draft;->g:[Lcom/truecaller/messaging/data/types/BinaryEntity;

    const-string v11, "draft.media"

    invoke-static {v3, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v3, v3

    if-nez v3, :cond_8

    move v3, v8

    goto :goto_5

    :cond_8
    const/4 v3, 0x0

    :goto_5
    xor-int/2addr v3, v8

    .line 24
    iget-object v8, v14, Lcom/truecaller/messaging/data/types/Draft;->e:[Lcom/truecaller/data/entity/messaging/Participant;

    .line 25
    invoke-interface {v2, v3, v8, v4}, Le/a/a/k/t;->n(Z[Lcom/truecaller/data/entity/messaging/Participant;Z)I

    move-result v8

    .line 26
    iget-object v2, v0, Le/a/a/c1/m;->b:Le/a/a/w0/a;

    .line 27
    iget-object v3, v14, Lcom/truecaller/messaging/data/types/Draft;->i:Ljava/lang/String;

    .line 28
    iget-object v15, v14, Lcom/truecaller/messaging/data/types/Draft;->e:[Lcom/truecaller/data/entity/messaging/Participant;

    const-string v1, "draft.participants"

    invoke-static {v15, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iget-object v7, v14, Lcom/truecaller/messaging/data/types/Draft;->g:[Lcom/truecaller/messaging/data/types/BinaryEntity;

    invoke-static {v7, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iget-boolean v6, v14, Lcom/truecaller/messaging/data/types/Draft;->h:Z

    move v10, v4

    move-object/from16 v4, p5

    move-object/from16 v17, v13

    move-object v13, v5

    move v5, v8

    move/from16 v18, v6

    move-object v6, v15

    move v15, v8

    const/16 v16, 0x1

    move/from16 v8, v18

    .line 31
    invoke-interface/range {v2 .. v8}, Le/a/a/w0/a;->i(Ljava/lang/String;Ljava/lang/String;I[Lcom/truecaller/data/entity/messaging/Participant;[Lcom/truecaller/messaging/data/types/BinaryEntity;Z)V

    .line 32
    iget-object v2, v0, Le/a/a/c1/m;->a:Le/a/a/k/t;

    .line 33
    iget-object v3, v14, Lcom/truecaller/messaging/data/types/Draft;->e:[Lcom/truecaller/data/entity/messaging/Participant;

    move/from16 v8, p4

    .line 34
    invoke-interface {v2, v13, v3, v8, v10}, Le/a/a/k/t;->b(Lcom/truecaller/messaging/data/types/Message;[Lcom/truecaller/data/entity/messaging/Participant;ZZ)Le/a/r2/x;

    move-result-object v2

    .line 35
    invoke-virtual {v2}, Le/a/r2/x;->c()Ljava/lang/Object;

    move-result-object v2

    .line 36
    move-object v10, v2

    check-cast v10, Lcom/truecaller/messaging/data/types/Message;

    const-string v2, "draft.analyticsId"

    const/4 v3, 0x2

    if-ne v15, v3, :cond_b

    .line 37
    iget-object v3, v0, Le/a/a/c1/m;->c:Le/a/q2/i0;

    .line 38
    iget-object v4, v14, Lcom/truecaller/messaging/data/types/Draft;->i:Ljava/lang/String;

    invoke-static {v4, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iget-object v5, v14, Lcom/truecaller/messaging/data/types/Draft;->e:[Lcom/truecaller/data/entity/messaging/Participant;

    invoke-static {v5, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iget-object v1, v14, Lcom/truecaller/messaging/data/types/Draft;->c:Ljava/lang/String;

    const-string v2, "draft.text"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_9

    move/from16 v15, v16

    goto :goto_6

    :cond_9
    const/4 v15, 0x0

    :goto_6
    xor-int/lit8 v6, v15, 0x1

    .line 41
    iget-object v1, v14, Lcom/truecaller/messaging/data/types/Draft;->g:[Lcom/truecaller/messaging/data/types/BinaryEntity;

    invoke-static {v1, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Le/q/f/a/d/a;->v0([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truecaller/messaging/data/types/BinaryEntity;

    if-eqz v1, :cond_a

    iget-object v1, v1, Lcom/truecaller/messaging/data/types/Entity;->b:Ljava/lang/String;

    move-object v7, v1

    goto :goto_7

    :cond_a
    const/4 v7, 0x0

    :goto_7
    move-object v2, v3

    move-object/from16 v3, p5

    .line 42
    invoke-interface/range {v2 .. v7}, Le/a/q2/i0;->q(Ljava/lang/String;Ljava/lang/String;[Lcom/truecaller/data/entity/messaging/Participant;ZLjava/lang/String;)V

    goto :goto_8

    .line 43
    :cond_b
    iget-object v3, v0, Le/a/a/c1/m;->a:Le/a/a/k/t;

    invoke-interface {v3, v15}, Le/a/a/k/t;->x(I)Le/a/a/k/q;

    move-result-object v3

    const-string v4, "transportManager.getTransport(transportType)"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Le/a/a/k/q;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "transportManager.getTransport(transportType).name"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iget-object v4, v0, Le/a/a/c1/m;->c:Le/a/q2/i0;

    .line 45
    iget-object v5, v14, Lcom/truecaller/messaging/data/types/Draft;->i:Ljava/lang/String;

    invoke-static {v5, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iget-object v2, v14, Lcom/truecaller/messaging/data/types/Draft;->e:[Lcom/truecaller/data/entity/messaging/Participant;

    invoke-static {v2, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-interface {v4, v9, v5, v3, v2}, Le/a/q2/i0;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/truecaller/data/entity/messaging/Participant;)V

    :goto_8
    if-eqz v10, :cond_c

    .line 48
    new-instance v1, Ls1/k;

    invoke-direct {v1, v14, v10}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_9
    move-object/from16 v10, p1

    move-object/from16 v1, p2

    move-object/from16 v13, v17

    const/4 v11, 0x0

    goto/16 :goto_0

    .line 49
    :cond_c
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 50
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/truecaller/messaging/data/types/Draft;

    .line 51
    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v12, v6}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 52
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 53
    check-cast v7, Ls1/k;

    .line 54
    iget-object v7, v7, Ls1/k;->a:Ljava/lang/Object;

    .line 55
    check-cast v7, Lcom/truecaller/messaging/data/types/Draft;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_e
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_d

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_f
    new-instance v2, Le/a/a/c1/c$a;

    invoke-direct {v2, v1, v14}, Le/a/a/c1/c$a;-><init>(Ljava/util/List;Lcom/truecaller/messaging/data/types/Draft;)V

    invoke-static {v2}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object v1

    const-string v2, "Promise.wrap(DraftSchedu\u2026p { it.first } }, draft))"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1

    .line 56
    :cond_10
    new-instance v1, Le/a/a/c1/c$b;

    invoke-direct {v1, v12}, Le/a/a/c1/c$b;-><init>(Ljava/util/List;)V

    invoke-static {v1}, Le/a/r2/x;->h(Ljava/lang/Object;)Le/a/r2/x;

    move-result-object v1

    const-string v2, "Promise.wrap(DraftSchedu\u2026heduledDraftMessageList))"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method public final c(Lcom/truecaller/messaging/data/types/Message;Lcom/truecaller/messaging/data/types/Draft;Ljava/lang/String;)Lcom/truecaller/messaging/data/types/Draft;
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 1
    iget-object v2, v1, Lcom/truecaller/messaging/data/types/Draft;->g:[Lcom/truecaller/messaging/data/types/BinaryEntity;

    const-string v3, "draft.media"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual/range {p2 .. p2}, Lcom/truecaller/messaging/data/types/Draft;->b()Lcom/truecaller/messaging/data/types/Draft$b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/truecaller/messaging/data/types/Draft$b;->d()Lcom/truecaller/messaging/data/types/Draft$b;

    const-string v4, "draft.buildUpon().clearMediaEntities()"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    array-length v4, v2

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    :goto_0
    const-string v8, "messageToEdit.entities"

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-ge v6, v4, :cond_9

    aget-object v11, v2, v6

    .line 4
    invoke-virtual {v11}, Lcom/truecaller/messaging/data/types/BinaryEntity;->d()I

    move-result v12

    packed-switch v12, :pswitch_data_0

    goto/16 :goto_7

    .line 5
    :pswitch_0
    iget-object v12, v0, Lcom/truecaller/messaging/data/types/Message;->o:[Lcom/truecaller/messaging/data/types/Entity;

    invoke-static {v12, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v8, v12

    move v13, v5

    :goto_1
    if-ge v13, v8, :cond_1

    aget-object v14, v12, v13

    invoke-virtual {v14}, Lcom/truecaller/messaging/data/types/Entity;->n()Z

    move-result v15

    if-eqz v15, :cond_0

    move-object v9, v14

    goto :goto_2

    :cond_0
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-eqz v9, :cond_2

    .line 6
    check-cast v9, Lcom/truecaller/messaging/data/types/LinkPreviewEntity;

    .line 7
    iget-object v8, v9, Lcom/truecaller/messaging/data/types/LinkPreviewEntity;->A:Ljava/lang/String;

    move-object v9, v11

    check-cast v9, Lcom/truecaller/messaging/data/types/LinkPreviewEntity;

    iget-object v9, v9, Lcom/truecaller/messaging/data/types/LinkPreviewEntity;->A:Ljava/lang/String;

    invoke-static {v8, v9}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    xor-int/2addr v8, v10

    if-eqz v8, :cond_8

    .line 8
    invoke-virtual {v3, v11}, Lcom/truecaller/messaging/data/types/Draft$b;->b(Lcom/truecaller/messaging/data/types/BinaryEntity;)Lcom/truecaller/messaging/data/types/Draft$b;

    goto :goto_6

    .line 9
    :cond_2
    invoke-virtual {v3, v11}, Lcom/truecaller/messaging/data/types/Draft$b;->b(Lcom/truecaller/messaging/data/types/BinaryEntity;)Lcom/truecaller/messaging/data/types/Draft$b;

    goto :goto_6

    .line 10
    :pswitch_1
    iget-object v9, v0, Lcom/truecaller/messaging/data/types/Message;->o:[Lcom/truecaller/messaging/data/types/Entity;

    invoke-static {v9, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 12
    array-length v12, v9

    move v13, v5

    :goto_3
    if-ge v13, v12, :cond_4

    aget-object v14, v9, v13

    .line 13
    invoke-virtual {v14}, Lcom/truecaller/messaging/data/types/Entity;->f()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 14
    :cond_4
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_5

    goto :goto_4

    .line 15
    :cond_5
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/truecaller/messaging/data/types/Entity;

    const-string v12, "null cannot be cast to non-null type com.truecaller.messaging.data.types.BinaryEntity"

    .line 16
    invoke-static {v9, v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v9, Lcom/truecaller/messaging/data/types/BinaryEntity;

    iget-object v9, v9, Lcom/truecaller/messaging/data/types/BinaryEntity;->i:Landroid/net/Uri;

    iget-object v12, v11, Lcom/truecaller/messaging/data/types/BinaryEntity;->i:Landroid/net/Uri;

    invoke-static {v9, v12}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    xor-int/2addr v9, v10

    if-nez v9, :cond_6

    move v8, v5

    goto :goto_5

    :cond_7
    :goto_4
    move v8, v10

    :goto_5
    if-eqz v8, :cond_8

    .line 17
    invoke-virtual {v3, v11}, Lcom/truecaller/messaging/data/types/Draft$b;->b(Lcom/truecaller/messaging/data/types/BinaryEntity;)Lcom/truecaller/messaging/data/types/Draft$b;

    :goto_6
    move v7, v10

    :cond_8
    :goto_7
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 18
    :cond_9
    iget-object v1, v1, Lcom/truecaller/messaging/data/types/Draft;->c:Ljava/lang/String;

    iget-object v0, v0, Lcom/truecaller/messaging/data/types/Message;->o:[Lcom/truecaller/messaging/data/types/Entity;

    invoke-static {v0, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v2, v0

    :goto_8
    if-ge v5, v2, :cond_b

    aget-object v4, v0, v5

    invoke-virtual {v4}, Lcom/truecaller/messaging/data/types/Entity;->r()Z

    move-result v6

    if-eqz v6, :cond_a

    goto :goto_9

    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_b
    move-object v4, v9

    :goto_9
    instance-of v0, v4, Lcom/truecaller/messaging/data/types/TextEntity;

    if-nez v0, :cond_c

    move-object v4, v9

    :cond_c
    check-cast v4, Lcom/truecaller/messaging/data/types/TextEntity;

    if-eqz v4, :cond_d

    iget-object v0, v4, Lcom/truecaller/messaging/data/types/TextEntity;->i:Ljava/lang/String;

    if-eqz v0, :cond_d

    goto :goto_a

    :cond_d
    const-string v0, ""

    :goto_a
    invoke-static {v1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v10

    if-eqz v0, :cond_e

    move v7, v10

    :cond_e
    if-nez v7, :cond_f

    return-object v9

    :cond_f
    move-object/from16 v0, p0

    .line 19
    iget-object v1, v0, Le/a/a/c1/m;->d:Lo3/a;

    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/r2/f;

    invoke-interface {v1}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/a/g/m;

    invoke-virtual {v3}, Lcom/truecaller/messaging/data/types/Draft$b;->c()Lcom/truecaller/messaging/data/types/Draft;

    move-result-object v2

    move-object/from16 v3, p3

    invoke-interface {v1, v2, v3}, Le/a/a/g/m;->B(Lcom/truecaller/messaging/data/types/Draft;Ljava/lang/String;)Le/a/r2/x;

    move-result-object v1

    invoke-virtual {v1}, Le/a/r2/x;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truecaller/messaging/data/types/Draft;

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
