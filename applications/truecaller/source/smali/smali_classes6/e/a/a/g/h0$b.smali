.class public final Le/a/a/g/h0$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/g/h0;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.messaging.data.UnreadThreadsCounterImpl$fetch$1"
    f = "UnreadThreadsCounterImpl.kt"
    l = {
        0x6c
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/a/g/h0;


# direct methods
.method public constructor <init>(Le/a/a/g/h0;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/g/h0$b;->f:Le/a/a/g/h0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/a/g/h0$b;

    iget-object v0, p0, Le/a/a/g/h0$b;->f:Le/a/a/g/h0;

    invoke-direct {p1, v0, p2}, Le/a/a/g/h0$b;-><init>(Le/a/a/g/h0;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/a/g/h0$b;

    iget-object v0, p0, Le/a/a/g/h0$b;->f:Le/a/a/g/h0;

    invoke-direct {p1, v0, p2}, Le/a/a/g/h0$b;-><init>(Le/a/a/g/h0;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/a/g/h0$b;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/a/g/h0$b;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v2, p1

    goto :goto_0

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_1
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v2, v0, Le/a/a/g/h0$b;->f:Le/a/a/g/h0;

    .line 5
    iput-boolean v3, v2, Le/a/a/g/h0;->e:Z

    .line 6
    iget-object v2, v2, Le/a/a/g/h0;->p:Lo3/a;

    .line 7
    invoke-interface {v2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/a/g/w;

    iget-object v4, v0, Le/a/a/g/h0$b;->f:Le/a/a/g/h0;

    .line 8
    iget-object v4, v4, Le/a/a/g/h0;->k:Ljava/util/List;

    .line 9
    invoke-static {v4}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v4

    iput v3, v0, Le/a/a/g/h0$b;->e:I

    invoke-interface {v2, v4, v0}, Le/a/a/g/w;->t(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_2

    return-object v1

    .line 10
    :cond_2
    :goto_0
    check-cast v2, Ljava/util/Map;

    .line 11
    iget-object v1, v0, Le/a/a/g/h0$b;->f:Le/a/a/g/h0;

    const/4 v4, 0x0

    .line 12
    iput-boolean v4, v1, Le/a/a/g/h0;->e:Z

    .line 13
    iget-boolean v5, v1, Le/a/a/g/h0;->d:Z

    if-eqz v5, :cond_3

    .line 14
    iput-boolean v4, v1, Le/a/a/g/h0;->d:Z

    .line 15
    invoke-virtual {v1}, Le/a/a/g/h0;->l()V

    :cond_3
    const/4 v5, 0x0

    if-eqz v2, :cond_5

    .line 16
    iget-boolean v6, v1, Le/a/a/g/h0;->j:Z

    if-eqz v6, :cond_4

    sget-object v6, Lcom/truecaller/messaging/data/types/InboxTab;->PROMOTIONAL:Lcom/truecaller/messaging/data/types/InboxTab;

    goto :goto_1

    :cond_4
    sget-object v6, Lcom/truecaller/messaging/data/types/InboxTab;->OTHERS:Lcom/truecaller/messaging/data/types/InboxTab;

    :goto_1
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    goto :goto_2

    :cond_5
    move-object v6, v5

    :goto_2
    if-eqz v6, :cond_8

    .line 17
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 18
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_6
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Le/a/a/g/e0;

    .line 19
    iget-wide v10, v10, Le/a/a/g/e0;->b:J

    .line 20
    iget-object v12, v1, Le/a/a/g/h0;->t:Le/a/a/i0;

    invoke-interface {v12}, Le/a/a/i0;->w()J

    move-result-wide v12

    cmp-long v10, v10, v12

    if-lez v10, :cond_7

    move v10, v3

    goto :goto_4

    :cond_7
    move v10, v4

    :goto_4
    if-eqz v10, :cond_6

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    move-object v7, v5

    .line 21
    :cond_9
    sget-object v8, Lcom/truecaller/messaging/data/types/InboxTab;->PERSONAL:Lcom/truecaller/messaging/data/types/InboxTab;

    invoke-virtual {v1, v2, v8}, Le/a/a/g/h0;->o(Ljava/util/Map;Lcom/truecaller/messaging/data/types/InboxTab;)I

    move-result v10

    .line 22
    iget-boolean v8, v1, Le/a/a/g/h0;->j:Z

    if-eqz v8, :cond_a

    sget-object v8, Lcom/truecaller/messaging/data/types/InboxTab;->PROMOTIONAL:Lcom/truecaller/messaging/data/types/InboxTab;

    goto :goto_5

    :cond_a
    sget-object v8, Lcom/truecaller/messaging/data/types/InboxTab;->OTHERS:Lcom/truecaller/messaging/data/types/InboxTab;

    :goto_5
    invoke-virtual {v1, v2, v8}, Le/a/a/g/h0;->o(Ljava/util/Map;Lcom/truecaller/messaging/data/types/InboxTab;)I

    move-result v11

    .line 23
    sget-object v8, Lcom/truecaller/messaging/data/types/InboxTab;->SPAM:Lcom/truecaller/messaging/data/types/InboxTab;

    invoke-virtual {v1, v2, v8}, Le/a/a/g/h0;->o(Ljava/util/Map;Lcom/truecaller/messaging/data/types/InboxTab;)I

    move-result v12

    .line 24
    iget-object v8, v1, Le/a/a/g/h0;->b:Le/a/a/g/f0;

    .line 25
    iget v13, v8, Le/a/a/g/f0;->d:I

    if-eqz v7, :cond_f

    .line 26
    new-instance v8, Ljava/util/ArrayList;

    const/16 v9, 0xa

    invoke-static {v7, v9}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 27
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .line 28
    check-cast v14, Le/a/a/g/e0;

    .line 29
    iget-object v15, v14, Le/a/a/g/e0;->c:Ljava/lang/String;

    if-eqz v15, :cond_d

    .line 30
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v16

    if-lez v16, :cond_b

    move/from16 v16, v3

    goto :goto_7

    :cond_b
    move/from16 v16, v4

    :goto_7
    if-eqz v16, :cond_c

    goto :goto_8

    :cond_c
    move-object v15, v5

    :goto_8
    if-eqz v15, :cond_d

    goto :goto_9

    .line 31
    :cond_d
    iget-object v15, v14, Le/a/a/g/e0;->d:Ljava/lang/String;

    .line 32
    :goto_9
    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_e
    move-object v14, v8

    goto :goto_a

    :cond_f
    move-object v14, v5

    :goto_a
    if-eqz v7, :cond_11

    .line 33
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 34
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 35
    check-cast v7, Le/a/a/g/e0;

    .line 36
    iget-object v8, v1, Le/a/a/g/h0;->r:Le/a/o5/f0;

    move-object/from16 v16, v1

    .line 37
    iget-wide v0, v7, Le/a/a/g/e0;->e:J

    .line 38
    iget-object v7, v7, Le/a/a/g/e0;->f:Ljava/lang/String;

    .line 39
    invoke-interface {v8, v0, v1, v7, v3}, Le/a/o5/f0;->k(JLjava/lang/String;Z)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 40
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    goto :goto_b

    :cond_11
    move-object/from16 v16, v1

    move-object v15, v5

    .line 41
    new-instance v0, Le/a/a/g/f0;

    move-object v9, v0

    invoke-direct/range {v9 .. v15}, Le/a/a/g/f0;-><init>(IIIILjava/util/List;Ljava/util/List;)V

    move-object/from16 v1, v16

    iput-object v0, v1, Le/a/a/g/h0;->b:Le/a/a/g/f0;

    .line 42
    sget-object v0, Lcom/truecaller/messaging/data/types/InboxTab;->PERSONAL:Lcom/truecaller/messaging/data/types/InboxTab;

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_12

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-eqz v5, :cond_12

    invoke-static {v5}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/a/g/e0;

    if-eqz v5, :cond_12

    .line 43
    iget-wide v7, v5, Le/a/a/g/e0;->b:J

    goto :goto_c

    :cond_12
    move-wide v7, v3

    .line 44
    :goto_c
    invoke-virtual {v1, v0, v7, v8}, Le/a/a/g/h0;->p(Lcom/truecaller/messaging/data/types/InboxTab;J)V

    .line 45
    sget-object v0, Lcom/truecaller/messaging/data/types/InboxTab;->OTHERS:Lcom/truecaller/messaging/data/types/InboxTab;

    if-eqz v6, :cond_13

    invoke-static {v6}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/a/g/e0;

    if-eqz v5, :cond_13

    .line 46
    iget-wide v5, v5, Le/a/a/g/e0;->b:J

    goto :goto_d

    :cond_13
    move-wide v5, v3

    .line 47
    :goto_d
    invoke-virtual {v1, v0, v5, v6}, Le/a/a/g/h0;->p(Lcom/truecaller/messaging/data/types/InboxTab;J)V

    .line 48
    sget-object v0, Lcom/truecaller/messaging/data/types/InboxTab;->SPAM:Lcom/truecaller/messaging/data/types/InboxTab;

    if-eqz v2, :cond_14

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_14

    invoke-static {v2}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/a/g/e0;

    if-eqz v2, :cond_14

    .line 49
    iget-wide v3, v2, Le/a/a/g/e0;->b:J

    .line 50
    :cond_14
    invoke-virtual {v1, v0, v3, v4}, Le/a/a/g/h0;->p(Lcom/truecaller/messaging/data/types/InboxTab;J)V

    .line 51
    invoke-virtual {v1}, Le/a/a/g/h0;->n()V

    .line 52
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
