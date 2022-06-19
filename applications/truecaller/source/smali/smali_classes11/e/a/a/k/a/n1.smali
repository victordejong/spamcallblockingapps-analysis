.class public final Le/a/a/k/a/n1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/k/a/l1;


# instance fields
.field public final a:Le/a/b0/e/l;

.field public final b:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/a/k/a/e1;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Le/a/o5/f0;

.field public final d:Le/a/a/i0;

.field public final e:Le/a/o5/b0;

.field public final f:Landroid/content/Context;

.field public final g:Le/a/i4/e;

.field public final h:Le/a/i4/q;

.field public final i:Le/a/b0/q/z;

.field public final j:Le/a/b0/q/l0;


# direct methods
.method public constructor <init>(Le/a/b0/e/l;Le/a/r2/f;Le/a/o5/f0;Le/a/a/i0;Le/a/o5/b0;Landroid/content/Context;Le/a/i4/e;Le/a/i4/q;Le/a/b0/q/z;Le/a/b0/q/l0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/b0/e/l;",
            "Le/a/r2/f<",
            "Le/a/a/k/a/e1;",
            ">;",
            "Le/a/o5/f0;",
            "Le/a/a/i0;",
            "Le/a/o5/b0;",
            "Landroid/content/Context;",
            "Le/a/i4/e;",
            "Le/a/i4/q;",
            "Le/a/b0/q/z;",
            "Le/a/b0/q/l0;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "accountManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imUserManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settings"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dateHelper"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationManager"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationIconHelper"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phoneNumberHelper"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timestampUtil"

    invoke-static {p10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/k/a/n1;->a:Le/a/b0/e/l;

    iput-object p2, p0, Le/a/a/k/a/n1;->b:Le/a/r2/f;

    iput-object p3, p0, Le/a/a/k/a/n1;->c:Le/a/o5/f0;

    iput-object p4, p0, Le/a/a/k/a/n1;->d:Le/a/a/i0;

    iput-object p5, p0, Le/a/a/k/a/n1;->e:Le/a/o5/b0;

    iput-object p6, p0, Le/a/a/k/a/n1;->f:Landroid/content/Context;

    iput-object p7, p0, Le/a/a/k/a/n1;->g:Le/a/i4/e;

    iput-object p8, p0, Le/a/a/k/a/n1;->h:Le/a/i4/q;

    iput-object p9, p0, Le/a/a/k/a/n1;->i:Le/a/b0/q/z;

    iput-object p10, p0, Le/a/a/k/a/n1;->j:Le/a/b0/q/l0;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Lw3/b/a/b;

    invoke-direct {v1}, Lw3/b/a/b;-><init>()V

    invoke-virtual {v1}, Lw3/b/a/b;->P()Lw3/b/a/b;

    move-result-object v1

    const-string v2, "DateTime().withTimeAtStartOfDay()"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v2, v0, Le/a/a/k/a/n1;->e:Le/a/o5/b0;

    invoke-interface {v2}, Le/a/o5/b0;->j()Lw3/b/a/b;

    move-result-object v3

    const/16 v4, 0x16

    invoke-virtual {v1, v4}, Lw3/b/a/b;->E(I)Lw3/b/a/b;

    move-result-object v4

    const-string v5, "startOfDay.plusHours(22)"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v3, v4}, Le/a/o5/b0;->f(Lw3/b/a/b;Lw3/b/a/b;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    .line 3
    iget-object v2, v0, Le/a/a/k/a/n1;->e:Le/a/o5/b0;

    invoke-interface {v2}, Le/a/o5/b0;->j()Lw3/b/a/b;

    move-result-object v5

    const/16 v6, 0x12

    invoke-virtual {v1, v6}, Lw3/b/a/b;->E(I)Lw3/b/a/b;

    move-result-object v1

    const-string v6, "startOfDay.plusHours(18)"

    invoke-static {v1, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v5, v1}, Le/a/o5/b0;->g(Lw3/b/a/b;Lw3/b/a/b;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v3

    .line 4
    :goto_0
    iget-object v2, v0, Le/a/a/k/a/n1;->d:Le/a/a/i0;

    invoke-interface {v2}, Le/a/a/i0;->e1()Lw3/b/a/b;

    move-result-object v2

    const-string v5, "settings.lastJoinUserNotificationDate"

    invoke-static {v2, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-wide v5, v2, Lw3/b/a/e0/e;->a:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_2

    .line 6
    iget-object v9, v0, Le/a/a/k/a/n1;->j:Le/a/b0/q/l0;

    .line 7
    iget-wide v10, v2, Lw3/b/a/e0/e;->a:J

    const-wide/16 v12, 0x7

    .line 8
    sget-object v14, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v9 .. v14}, Le/a/b0/q/l0;->a(JJLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    goto :goto_2

    :cond_2
    :goto_1
    move v2, v4

    .line 9
    :goto_2
    iget-object v5, v0, Le/a/a/k/a/n1;->a:Le/a/b0/e/l;

    invoke-interface {v5}, Le/a/b0/e/l;->d()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, v0, Le/a/a/k/a/n1;->c:Le/a/o5/f0;

    invoke-interface {v5}, Le/a/o5/f0;->m()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, v0, Le/a/a/k/a/n1;->d:Le/a/a/i0;

    invoke-interface {v5}, Le/a/a/i0;->j0()J

    move-result-wide v5

    cmp-long v5, v5, v7

    if-lez v5, :cond_3

    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    move v1, v4

    goto :goto_3

    :cond_3
    move v1, v3

    :goto_3
    if-nez v1, :cond_4

    return-void

    .line 10
    :cond_4
    iget-object v1, v0, Le/a/a/k/a/n1;->d:Le/a/a/i0;

    invoke-interface {v1}, Le/a/a/i0;->j0()J

    move-result-wide v1

    .line 11
    iget-object v5, v0, Le/a/a/k/a/n1;->e:Le/a/o5/b0;

    invoke-interface {v5}, Le/a/o5/b0;->b()J

    move-result-wide v5

    cmp-long v5, v1, v5

    if-lez v5, :cond_5

    .line 12
    iget-object v1, v0, Le/a/a/k/a/n1;->d:Le/a/a/i0;

    iget-object v2, v0, Le/a/a/k/a/n1;->e:Le/a/o5/b0;

    invoke-interface {v2}, Le/a/o5/b0;->b()J

    move-result-wide v5

    invoke-interface {v1, v5, v6}, Le/a/a/i0;->i4(J)V

    goto :goto_4

    :cond_5
    move-wide v7, v1

    .line 13
    :goto_4
    iget-object v1, v0, Le/a/a/k/a/n1;->b:Le/a/r2/f;

    invoke-interface {v1}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/a/k/a/e1;

    invoke-interface {v1, v7, v8}, Le/a/a/k/a/e1;->e(J)Le/a/r2/x;

    move-result-object v1

    invoke-virtual {v1}, Le/a/r2/x;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    if-eqz v1, :cond_1d

    .line 14
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v4

    if-ne v2, v4, :cond_1d

    .line 15
    iget-object v2, v0, Le/a/a/k/a/n1;->d:Le/a/a/i0;

    iget-object v5, v0, Le/a/a/k/a/n1;->e:Le/a/o5/b0;

    invoke-interface {v5}, Le/a/o5/b0;->j()Lw3/b/a/b;

    move-result-object v5

    invoke-interface {v2, v5}, Le/a/a/i0;->g0(Lw3/b/a/b;)V

    .line 16
    iget-object v2, v0, Le/a/a/k/a/n1;->f:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 17
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Le/a/a/k/a/k1;

    .line 18
    iget-object v9, v8, Le/a/a/k/a/k1;->d:Ljava/lang/String;

    if-eqz v9, :cond_8

    .line 19
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_7

    goto :goto_5

    :cond_7
    move v9, v3

    goto :goto_6

    :cond_8
    :goto_5
    move v9, v4

    :goto_6
    if-nez v9, :cond_b

    .line 20
    iget-object v8, v8, Le/a/a/k/a/k1;->b:Ljava/lang/String;

    if-eqz v8, :cond_a

    .line 21
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_9

    goto :goto_7

    :cond_9
    move v8, v3

    goto :goto_8

    :cond_a
    :goto_7
    move v8, v4

    :goto_8
    if-nez v8, :cond_b

    move v8, v4

    goto :goto_9

    :cond_b
    move v8, v3

    :goto_9
    if-eqz v8, :cond_6

    goto :goto_a

    :cond_c
    move-object v6, v7

    .line 22
    :goto_a
    check-cast v6, Le/a/a/k/a/k1;

    if-eqz v6, :cond_d

    goto :goto_d

    .line 23
    :cond_d
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Le/a/a/k/a/k1;

    .line 24
    iget-object v8, v8, Le/a/a/k/a/k1;->b:Ljava/lang/String;

    if-eqz v8, :cond_10

    .line 25
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_f

    goto :goto_b

    :cond_f
    move v8, v3

    goto :goto_c

    :cond_10
    :goto_b
    move v8, v4

    :goto_c
    xor-int/2addr v8, v4

    if-eqz v8, :cond_e

    move-object v7, v6

    .line 26
    :cond_11
    move-object v6, v7

    check-cast v6, Le/a/a/k/a/k1;

    :goto_d
    if-eqz v6, :cond_12

    goto :goto_e

    .line 27
    :cond_12
    invoke-static {v1}, Ls1/u/i;->A(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Le/a/a/k/a/k1;

    .line 28
    :goto_e
    iget-object v5, v6, Le/a/a/k/a/k1;->b:Ljava/lang/String;

    if-eqz v5, :cond_13

    const-string v7, " "

    .line 29
    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x6

    invoke-static {v5, v7, v3, v3, v8}, Ls1/f0/v;->U(Ljava/lang/CharSequence;[Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_13

    goto :goto_f

    .line 30
    :cond_13
    iget-object v5, v6, Le/a/a/k/a/k1;->b:Ljava/lang/String;

    :goto_f
    if-eqz v5, :cond_14

    goto :goto_10

    .line 31
    :cond_14
    iget-object v5, v6, Le/a/a/k/a/k1;->c:Ljava/lang/String;

    .line 32
    :goto_10
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v4, :cond_15

    move-object v7, v5

    goto :goto_11

    :cond_15
    const v7, 0x7f120cc9

    new-array v9, v8, [Ljava/lang/Object;

    aput-object v5, v9, v3

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v10

    sub-int/2addr v10, v4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v4

    invoke-virtual {v2, v7, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "resources.getString(R.st\u2026, joinedImUsers.size - 1)"

    invoke-static {v7, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_11
    const v9, 0x7f120cca

    new-array v10, v4, [Ljava/lang/Object;

    aput-object v5, v10, v3

    .line 33
    invoke-virtual {v2, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v9, "resources.getString(R.st\u2026m_users_title, firstName)"

    invoke-static {v5, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v9, 0x7f120cc8

    new-array v8, v8, [Ljava/lang/Object;

    const-string v10, "\ud83d\udc4b"

    aput-object v10, v8, v3

    aput-object v7, v8, v4

    .line 34
    invoke-virtual {v2, v9, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v7, "resources.getString(R.st\u2026, WAVING_EMOJI, textArgs)"

    invoke-static {v2, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v7

    const/high16 v8, 0x10000000

    if-ne v7, v4, :cond_19

    .line 36
    new-instance v7, Landroid/content/Intent;

    iget-object v9, v0, Le/a/a/k/a/n1;->f:Landroid/content/Context;

    const-class v10, Lcom/truecaller/messaging/conversation/ConversationActivity;

    invoke-direct {v7, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 37
    invoke-virtual {v7, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-array v8, v4, [Lcom/truecaller/data/entity/messaging/Participant;

    .line 38
    invoke-static {v1}, Ls1/u/i;->A(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Le/a/a/k/a/k1;

    .line 39
    iget-object v10, v9, Le/a/a/k/a/k1;->c:Ljava/lang/String;

    .line 40
    iget-object v11, v0, Le/a/a/k/a/n1;->i:Le/a/b0/q/z;

    invoke-interface {v11}, Le/a/b0/q/z;->b()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lcom/truecaller/data/entity/messaging/Participant;->a(Ljava/lang/String;Le/a/b0/q/z;Ljava/lang/String;)Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object v10

    invoke-virtual {v10}, Lcom/truecaller/data/entity/messaging/Participant;->e()Lcom/truecaller/data/entity/messaging/Participant$b;

    move-result-object v10

    .line 41
    iget-object v11, v9, Le/a/a/k/a/k1;->e:Ljava/lang/Long;

    if-eqz v11, :cond_16

    .line 42
    invoke-virtual {v11}, Ljava/lang/Number;->longValue()J

    move-result-wide v11

    .line 43
    iput-wide v11, v10, Lcom/truecaller/data/entity/messaging/Participant$b;->o:J

    .line 44
    :cond_16
    iget-object v11, v9, Le/a/a/k/a/k1;->d:Ljava/lang/String;

    if-eqz v11, :cond_17

    .line 45
    iput-object v11, v10, Lcom/truecaller/data/entity/messaging/Participant$b;->m:Ljava/lang/String;

    .line 46
    :cond_17
    iget-object v9, v9, Le/a/a/k/a/k1;->b:Ljava/lang/String;

    if-eqz v9, :cond_18

    .line 47
    iput-object v9, v10, Lcom/truecaller/data/entity/messaging/Participant$b;->l:Ljava/lang/String;

    .line 48
    :cond_18
    invoke-virtual {v10}, Lcom/truecaller/data/entity/messaging/Participant$b;->a()Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object v9

    const-string v10, "with(Participant.buildFr\u2026        build()\n        }"

    .line 49
    invoke-static {v9, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v9, v8, v3

    const-string v9, "participants"

    .line 50
    invoke-virtual {v7, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_12

    .line 51
    :cond_19
    new-instance v7, Landroid/content/Intent;

    iget-object v9, v0, Le/a/a/k/a/n1;->f:Landroid/content/Context;

    const-class v10, Lcom/truecaller/messaging/newconversation/NewConversationActivity;

    invoke-direct {v7, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :goto_12
    const v8, 0x7f0a0aa9

    const-string v9, "tc_notification_id"

    .line 52
    invoke-virtual {v7, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 53
    iget-object v9, v0, Le/a/a/k/a/n1;->f:Landroid/content/Context;

    const/high16 v10, 0x14000000

    invoke-static {v9, v3, v7, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    const-string v9, "PendingIntent.getActivit\u2026ingIntent.FLAG_IMMUTABLE)"

    invoke-static {v7, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iget-object v11, v0, Le/a/a/k/a/n1;->g:Le/a/i4/e;

    const/4 v14, 0x0

    const/4 v15, 0x4

    const/16 v16, 0x0

    const-string v13, "notificationJoinedImUsers"

    move-object v12, v7

    invoke-static/range {v11 .. v16}, Le/a/c/p/a;->x3(Le/a/i4/e;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Landroid/app/PendingIntent;

    move-result-object v9

    .line 55
    iget-object v10, v0, Le/a/a/k/a/n1;->g:Le/a/i4/e;

    const-string v11, "recent_joiners"

    invoke-interface {v10, v11}, Le/a/i4/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 56
    new-instance v11, Ln3/k/a/q;

    iget-object v12, v0, Le/a/a/k/a/n1;->f:Landroid/content/Context;

    invoke-direct {v11, v12, v10}, Ln3/k/a/q;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 57
    invoke-virtual {v11, v5}, Ln3/k/a/q;->n(Ljava/lang/CharSequence;)Ln3/k/a/q;

    .line 58
    invoke-virtual {v11, v2}, Ln3/k/a/q;->m(Ljava/lang/CharSequence;)Ln3/k/a/q;

    .line 59
    new-instance v5, Ln3/k/a/o;

    invoke-direct {v5}, Ln3/k/a/o;-><init>()V

    invoke-virtual {v5, v2}, Ln3/k/a/o;->k(Ljava/lang/CharSequence;)Ln3/k/a/o;

    invoke-virtual {v11, v5}, Ln3/k/a/q;->x(Ln3/k/a/u;)Ln3/k/a/q;

    .line 60
    iget-object v2, v0, Le/a/a/k/a/n1;->f:Landroid/content/Context;

    const v5, 0x7f06068b

    .line 61
    sget-object v10, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 62
    invoke-static {v2, v5}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v2

    .line 63
    iput v2, v11, Ln3/k/a/q;->D:I

    const v2, 0x7f0816fb

    .line 64
    iget-object v5, v11, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput v2, v5, Landroid/app/Notification;->icon:I

    const/4 v2, -0x1

    .line 65
    invoke-virtual {v11, v2}, Ln3/k/a/q;->o(I)Ln3/k/a/q;

    const/16 v2, 0x10

    .line 66
    invoke-virtual {v11, v2, v4}, Ln3/k/a/q;->p(IZ)V

    .line 67
    iput-object v7, v11, Ln3/k/a/q;->g:Landroid/app/PendingIntent;

    .line 68
    iget-object v2, v0, Le/a/a/k/a/n1;->f:Landroid/content/Context;

    const v4, 0x7f120cc7

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v3, v2, v9}, Ln3/k/a/q;->a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Ln3/k/a/q;

    const-string v2, "NotificationCompat.Build\u2026sers_action), wrapIntent)"

    invoke-static {v11, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    iget-object v2, v0, Le/a/a/k/a/n1;->g:Le/a/i4/e;

    .line 70
    iget-object v3, v0, Le/a/a/k/a/n1;->h:Le/a/i4/q;

    new-instance v4, Le/a/a/k/a/m1;

    invoke-direct {v4, v0, v6}, Le/a/a/k/a/m1;-><init>(Le/a/a/k/a/n1;Le/a/a/k/a/k1;)V

    invoke-interface {v3, v11, v4}, Le/a/i4/q;->a(Ln3/k/a/q;Le/a/i4/q$a;)Landroid/app/Notification;

    move-result-object v3

    const-string v4, "notificationIconHelper.c\u2026lder) { getAvatar(user) }"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "notificationJoinedImUsers"

    .line 71
    invoke-interface {v2, v8, v3, v4}, Le/a/i4/e;->j(ILandroid/app/Notification;Ljava/lang/String;)V

    .line 72
    :cond_1a
    iget-object v2, v0, Le/a/a/k/a/n1;->b:Le/a/r2/f;

    invoke-interface {v2}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/a/k/a/e1;

    .line 73
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 74
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1b
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 75
    check-cast v4, Le/a/a/k/a/k1;

    .line 76
    iget-object v4, v4, Le/a/a/k/a/k1;->c:Ljava/lang/String;

    if-eqz v4, :cond_1b

    .line 77
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 78
    :cond_1c
    invoke-interface {v2, v3}, Le/a/a/k/a/e1;->g(Ljava/util/List;)V

    :cond_1d
    return-void
.end method
