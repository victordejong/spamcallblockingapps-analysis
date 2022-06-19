.class public final Le/a/c/v/i/a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
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
    c = "com.truecaller.insights.reminders.receiver.BillReminderReceiver$showNotification$2"
    f = "BillReminderReceiver.kt"
    l = {
        0x4b,
        0x4e,
        0x4e,
        0x7a
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Lcom/truecaller/insights/reminders/receiver/BillReminderReceiver;

.field public final synthetic h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/truecaller/insights/reminders/receiver/BillReminderReceiver;Ljava/lang/String;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/c/v/i/a;->g:Lcom/truecaller/insights/reminders/receiver/BillReminderReceiver;

    iput-object p2, p0, Le/a/c/v/i/a;->h:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 2
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

    new-instance p1, Le/a/c/v/i/a;

    iget-object v0, p0, Le/a/c/v/i/a;->g:Lcom/truecaller/insights/reminders/receiver/BillReminderReceiver;

    iget-object v1, p0, Le/a/c/v/i/a;->h:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Le/a/c/v/i/a;-><init>(Lcom/truecaller/insights/reminders/receiver/BillReminderReceiver;Ljava/lang/String;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/c/v/i/a;

    iget-object v0, p0, Le/a/c/v/i/a;->g:Lcom/truecaller/insights/reminders/receiver/BillReminderReceiver;

    iget-object v1, p0, Le/a/c/v/i/a;->h:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Le/a/c/v/i/a;-><init>(Lcom/truecaller/insights/reminders/receiver/BillReminderReceiver;Ljava/lang/String;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/c/v/i/a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/c/v/i/a;->f:I

    const/4 v3, 0x0

    const/16 v4, 0xa

    const-string v5, "null cannot be cast to non-null type kotlin.Array<T>"

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v9, :cond_3

    if-eq v2, v8, :cond_2

    if-eq v2, v7, :cond_1

    if-ne v2, v6, :cond_0

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_a

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_1
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v2, p1

    goto/16 :goto_7

    :cond_2
    iget-object v2, v0, Le/a/c/v/i/a;->e:Ljava/lang/Object;

    check-cast v2, Le/a/c/v/a;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v6, v2

    move-object/from16 v2, p1

    goto/16 :goto_6

    :cond_3
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v2, p1

    goto :goto_0

    :cond_4
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v2, v0, Le/a/c/v/i/a;->h:Ljava/lang/String;

    const-string v11, ","

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x6

    invoke-static {v2, v11, v10, v10, v12}, Ls1/f0/v;->U(Ljava/lang/CharSequence;[Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object v2

    new-array v11, v10, [Ljava/lang/String;

    .line 5
    invoke-interface {v2, v11}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    check-cast v2, [Ljava/lang/String;

    .line 7
    iget-object v11, v0, Le/a/c/v/i/a;->g:Lcom/truecaller/insights/reminders/receiver/BillReminderReceiver;

    invoke-virtual {v11}, Lcom/truecaller/insights/reminders/receiver/BillReminderReceiver;->b()Le/a/c/v/a;

    move-result-object v11

    iput v9, v0, Le/a/c/v/i/a;->f:I

    invoke-interface {v11, v2, v0}, Le/a/c/v/a;->h([Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_5

    return-object v1

    .line 8
    :cond_5
    :goto_0
    check-cast v2, Ljava/util/List;

    .line 9
    iget-object v11, v0, Le/a/c/v/i/a;->g:Lcom/truecaller/insights/reminders/receiver/BillReminderReceiver;

    .line 10
    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "reminderList"

    invoke-static {v2, v11}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance v11, Ljava/util/ArrayList;

    invoke-static {v2, v4}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 13
    check-cast v13, Lcom/truecaller/insights/models/InsightsReminder;

    .line 14
    new-instance v14, Ls1/k;

    invoke-virtual {v13}, Lcom/truecaller/insights/models/InsightsReminder;->getMetaJsonString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Le/a/c/p/a;->T1(Ljava/lang/String;)Lcom/truecaller/insights/reminders/actions/binders/BillReminderMeta;

    move-result-object v15

    invoke-direct {v14, v13, v15}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 15
    :cond_6
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 16
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 17
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .line 18
    move-object v15, v14

    check-cast v15, Ls1/k;

    .line 19
    iget-object v15, v15, Ls1/k;->b:Ljava/lang/Object;

    if-eqz v15, :cond_7

    move v15, v9

    goto :goto_3

    :cond_7
    move v15, v10

    :goto_3
    if-eqz v15, :cond_8

    .line 20
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 21
    :cond_8
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 22
    :cond_9
    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    .line 23
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ls1/k;

    .line 24
    iget-object v14, v12, Ls1/k;->b:Ljava/lang/Object;

    if-eqz v14, :cond_a

    .line 25
    new-instance v14, Ls1/k;

    .line 26
    iget-object v15, v12, Ls1/k;->a:Ljava/lang/Object;

    .line 27
    check-cast v15, Lcom/truecaller/insights/models/InsightsReminder;

    invoke-virtual {v15}, Lcom/truecaller/insights/models/InsightsReminder;->getVendorName()Ljava/lang/String;

    move-result-object v15

    .line 28
    iget-object v6, v12, Ls1/k;->b:Ljava/lang/Object;

    const-string v10, "null cannot be cast to non-null type com.truecaller.insights.reminders.actions.binders.BillReminderMeta"

    .line 29
    invoke-static {v6, v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v6, Lcom/truecaller/insights/reminders/actions/binders/BillReminderMeta;

    invoke-virtual {v6}, Lcom/truecaller/insights/reminders/actions/binders/BillReminderMeta;->getAccountNumber()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v14, v15, v6}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 30
    iget-object v6, v12, Ls1/k;->a:Ljava/lang/Object;

    .line 31
    invoke-interface {v9, v14, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x4

    const/4 v10, 0x0

    goto :goto_4

    .line 32
    :cond_a
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Non null meta cannot have null meta"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 33
    :cond_b
    invoke-virtual {v9}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-static {v6}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v6

    .line 34
    new-instance v9, Ljava/util/ArrayList;

    invoke-static {v13, v4}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 35
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 36
    check-cast v11, Ls1/k;

    .line 37
    iget-object v11, v11, Ls1/k;->a:Ljava/lang/Object;

    .line 38
    check-cast v11, Lcom/truecaller/insights/models/InsightsReminder;

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_c
    invoke-static {v6, v9}, Ls1/u/i;->l0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    .line 39
    iget-object v6, v0, Le/a/c/v/i/a;->g:Lcom/truecaller/insights/reminders/receiver/BillReminderReceiver;

    invoke-virtual {v6}, Lcom/truecaller/insights/reminders/receiver/BillReminderReceiver;->b()Le/a/c/v/a;

    move-result-object v6

    iget-object v9, v0, Le/a/c/v/i/a;->g:Lcom/truecaller/insights/reminders/receiver/BillReminderReceiver;

    iput-object v6, v0, Le/a/c/v/i/a;->e:Ljava/lang/Object;

    iput v8, v0, Le/a/c/v/i/a;->f:I

    invoke-virtual {v9, v2, v0}, Lcom/truecaller/insights/reminders/receiver/BillReminderReceiver;->a(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_d

    return-object v1

    :cond_d
    :goto_6
    check-cast v2, Ljava/util/List;

    iput-object v3, v0, Le/a/c/v/i/a;->e:Ljava/lang/Object;

    iput v7, v0, Le/a/c/v/i/a;->f:I

    invoke-interface {v6, v2, v0}, Le/a/c/v/a;->g(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_e

    return-object v1

    .line 40
    :cond_e
    :goto_7
    check-cast v2, Ljava/util/List;

    .line 41
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le/a/c/v/h/g;

    .line 42
    iget-object v8, v0, Le/a/c/v/i/a;->g:Lcom/truecaller/insights/reminders/receiver/BillReminderReceiver;

    .line 43
    iget-object v8, v8, Lcom/truecaller/insights/reminders/receiver/BillReminderReceiver;->d:Le/a/c/i/l/f/a;

    if-eqz v8, :cond_f

    .line 44
    invoke-interface {v8, v7}, Le/a/c/i/l/f/a;->e(Le/a/c/v/h/g;)V

    goto :goto_8

    :cond_f
    const-string v1, "notificationManager"

    .line 45
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3

    .line 46
    :cond_10
    iget-object v3, v0, Le/a/c/v/i/a;->g:Lcom/truecaller/insights/reminders/receiver/BillReminderReceiver;

    invoke-virtual {v3}, Lcom/truecaller/insights/reminders/receiver/BillReminderReceiver;->b()Le/a/c/v/a;

    move-result-object v3

    .line 47
    new-instance v6, Ljava/util/ArrayList;

    invoke-static {v2, v4}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 48
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 49
    check-cast v4, Le/a/c/v/h/g;

    .line 50
    iget-object v4, v4, Le/a/c/v/h/g;->a:Ljava/lang/String;

    .line 51
    invoke-interface {v6, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_11
    const/4 v4, 0x0

    new-array v2, v4, [Ljava/lang/String;

    .line 52
    invoke-interface {v6, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    const/4 v4, 0x4

    iput v4, v0, Le/a/c/v/i/a;->f:I

    .line 53
    invoke-interface {v3, v2, v0}, Le/a/c/v/a;->j([Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_12

    return-object v1

    .line 54
    :cond_12
    :goto_a
    sget-object v1, Ls1/s;->a:Ls1/s;

    return-object v1
.end method
