.class public final Le/a/a/k/a/v0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/k/a/r0;


# instance fields
.field public final a:Le/a/u3/g;

.field public final b:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/a/g/w;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Le/a/o5/b0;

.field public final d:Le/a/b0/q/l0;

.field public final e:Landroid/content/Context;

.field public final f:Le/a/i4/e;

.field public final g:Le/a/i4/q;

.field public final h:Le/a/o5/f0;

.field public final i:Le/a/a/i0;

.field public final j:Le/a/q2/a;

.field public final k:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/b0/a/a0/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/u3/g;Lo3/a;Le/a/o5/b0;Le/a/b0/q/l0;Landroid/content/Context;Le/a/i4/e;Le/a/i4/q;Le/a/o5/f0;Le/a/a/i0;Le/a/q2/a;Lo3/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/u3/g;",
            "Lo3/a<",
            "Le/a/a/g/w;",
            ">;",
            "Le/a/o5/b0;",
            "Le/a/b0/q/l0;",
            "Landroid/content/Context;",
            "Le/a/i4/e;",
            "Le/a/i4/q;",
            "Le/a/o5/f0;",
            "Le/a/a/i0;",
            "Le/a/q2/a;",
            "Lo3/a<",
            "Le/a/b0/a/a0/a;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "featuresRegistry"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "readMessageStorage"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dateHelper"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timestampUtil"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationManager"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationIconHelper"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceManager"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settings"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "avatarXPresenter"

    invoke-static {p11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/k/a/v0;->a:Le/a/u3/g;

    iput-object p2, p0, Le/a/a/k/a/v0;->b:Lo3/a;

    iput-object p3, p0, Le/a/a/k/a/v0;->c:Le/a/o5/b0;

    iput-object p4, p0, Le/a/a/k/a/v0;->d:Le/a/b0/q/l0;

    iput-object p5, p0, Le/a/a/k/a/v0;->e:Landroid/content/Context;

    iput-object p6, p0, Le/a/a/k/a/v0;->f:Le/a/i4/e;

    iput-object p7, p0, Le/a/a/k/a/v0;->g:Le/a/i4/q;

    iput-object p8, p0, Le/a/a/k/a/v0;->h:Le/a/o5/f0;

    iput-object p9, p0, Le/a/a/k/a/v0;->i:Le/a/a/i0;

    iput-object p10, p0, Le/a/a/k/a/v0;->j:Le/a/q2/a;

    iput-object p11, p0, Le/a/a/k/a/v0;->k:Lo3/a;

    return-void
.end method


# virtual methods
.method public a([Lcom/truecaller/messaging/data/types/Conversation;)V
    .locals 5

    const-string v0, "conversations"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 2
    iget-object v3, v2, Lcom/truecaller/messaging/data/types/Conversation;->m:[Lcom/truecaller/data/entity/messaging/Participant;

    const-string v4, "conversation.participants"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Le/a/a/i1/h;->f([Lcom/truecaller/data/entity/messaging/Participant;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3
    iget-object v2, p0, Le/a/a/k/a/v0;->e:Landroid/content/Context;

    .line 4
    new-instance v3, Ln3/k/a/x;

    invoke-direct {v3, v2}, Ln3/k/a/x;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a0985

    .line 5
    invoke-virtual {v3, v2}, Ln3/k/a/x;->b(I)V

    goto :goto_1

    .line 6
    :cond_0
    iget v2, v2, Lcom/truecaller/messaging/data/types/Conversation;->y:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 7
    iget-object v2, p0, Le/a/a/k/a/v0;->e:Landroid/content/Context;

    .line 8
    new-instance v3, Ln3/k/a/x;

    invoke-direct {v3, v2}, Ln3/k/a/x;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a0986

    .line 9
    invoke-virtual {v3, v2}, Ln3/k/a/x;->b(I)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public b()V
    .locals 28

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Le/a/a/k/a/v0;->a:Le/a/u3/g;

    .line 2
    iget-object v2, v1, Le/a/u3/g;->f4:Le/a/u3/g$a;

    sget-object v3, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v4, 0x10d

    aget-object v3, v3, v4

    invoke-virtual {v2, v1, v3}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v1

    check-cast v1, Le/a/u3/i;

    const/4 v2, 0x0

    .line 3
    invoke-interface {v1, v2}, Le/a/u3/i;->getInt(I)I

    move-result v1

    .line 4
    iget-object v3, v0, Le/a/a/k/a/v0;->d:Le/a/b0/q/l0;

    .line 5
    iget-object v4, v0, Le/a/a/k/a/v0;->i:Le/a/a/i0;

    invoke-interface {v4}, Le/a/a/i0;->F2()Lw3/b/a/b;

    move-result-object v4

    const-string v9, "settings.lastUnreadReminderShortNotificationDate"

    invoke-static {v4, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-wide v4, v4, Lw3/b/a/e0/e;->a:J

    const/4 v6, 0x3

    new-array v7, v6, [J

    .line 7
    iget-object v8, v0, Le/a/a/k/a/v0;->i:Le/a/a/i0;

    invoke-interface {v8}, Le/a/a/i0;->c0()Lw3/b/a/b;

    move-result-object v8

    const-string v10, "settings.lastUnreadReminderLongNotificationDate"

    invoke-static {v8, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-wide v11, v8, Lw3/b/a/e0/e;->a:J

    aput-wide v11, v7, v2

    .line 9
    iget-object v8, v0, Le/a/a/k/a/v0;->i:Le/a/a/i0;

    invoke-interface {v8}, Le/a/a/i0;->Y2()Lw3/b/a/b;

    move-result-object v8

    const-string v11, "settings.lastGroupUnread\u2026nderShortNotificationDate"

    invoke-static {v8, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-wide v12, v8, Lw3/b/a/e0/e;->a:J

    const/4 v14, 0x1

    aput-wide v12, v7, v14

    const/4 v8, 0x2

    .line 11
    iget-object v12, v0, Le/a/a/k/a/v0;->i:Le/a/a/i0;

    invoke-interface {v12}, Le/a/a/i0;->l3()Lw3/b/a/b;

    move-result-object v12

    const-string v13, "settings.lastGroupUnread\u2026inderLongNotificationDate"

    invoke-static {v12, v13}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget-wide v14, v12, Lw3/b/a/e0/e;->a:J

    aput-wide v14, v7, v8

    const-string v8, "other"

    .line 13
    invoke-static {v7, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move v8, v2

    :goto_0
    if-ge v8, v6, :cond_0

    .line 14
    aget-wide v14, v7, v8

    invoke-static {v4, v5, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v6, 0x1

    .line 15
    sget-object v8, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v3 .. v8}, Le/a/b0/q/l0;->a(JJLjava/util/concurrent/TimeUnit;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 16
    iget-object v3, v0, Le/a/a/k/a/v0;->i:Le/a/a/i0;

    invoke-interface {v3, v2}, Le/a/a/i0;->K(I)V

    :cond_1
    if-eqz v1, :cond_3

    .line 17
    iget-object v3, v0, Le/a/a/k/a/v0;->i:Le/a/a/i0;

    invoke-interface {v3}, Le/a/a/i0;->R0()I

    move-result v3

    if-ge v3, v1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v1, 0x1

    .line 18
    :goto_2
    new-instance v3, Lw3/b/a/b;

    invoke-direct {v3}, Lw3/b/a/b;-><init>()V

    invoke-virtual {v3}, Lw3/b/a/b;->P()Lw3/b/a/b;

    move-result-object v3

    const-string v4, "DateTime().withTimeAtStartOfDay()"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_4

    .line 19
    iget-object v1, v0, Le/a/a/k/a/v0;->c:Le/a/o5/b0;

    invoke-interface {v1}, Le/a/o5/b0;->j()Lw3/b/a/b;

    move-result-object v4

    const/16 v5, 0x16

    invoke-virtual {v3, v5}, Lw3/b/a/b;->E(I)Lw3/b/a/b;

    move-result-object v5

    const-string v6, "startOfDay.plusHours(22)"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v4, v5}, Le/a/o5/b0;->f(Lw3/b/a/b;Lw3/b/a/b;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 20
    iget-object v1, v0, Le/a/a/k/a/v0;->c:Le/a/o5/b0;

    invoke-interface {v1}, Le/a/o5/b0;->j()Lw3/b/a/b;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Lw3/b/a/b;->E(I)Lw3/b/a/b;

    move-result-object v3

    const-string v5, "startOfDay.plusHours(8)"

    invoke-static {v3, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v4, v3}, Le/a/o5/b0;->g(Lw3/b/a/b;Lw3/b/a/b;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v2, 0x1

    :cond_4
    if-nez v2, :cond_5

    return-void

    .line 21
    :cond_5
    iget-object v1, v0, Le/a/a/k/a/v0;->i:Le/a/a/i0;

    invoke-interface {v1}, Le/a/a/i0;->c0()Lw3/b/a/b;

    move-result-object v1

    invoke-static {v1, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iget-wide v1, v1, Lw3/b/a/e0/e;->a:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_6

    .line 23
    iget-object v1, v0, Le/a/a/k/a/v0;->i:Le/a/a/i0;

    iget-object v2, v0, Le/a/a/k/a/v0;->c:Le/a/o5/b0;

    invoke-interface {v2}, Le/a/o5/b0;->j()Lw3/b/a/b;

    move-result-object v2

    invoke-interface {v1, v2}, Le/a/a/i0;->u2(Lw3/b/a/b;)V

    .line 24
    :cond_6
    iget-object v1, v0, Le/a/a/k/a/v0;->i:Le/a/a/i0;

    invoke-interface {v1}, Le/a/a/i0;->F2()Lw3/b/a/b;

    move-result-object v1

    invoke-static {v1, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iget-wide v1, v1, Lw3/b/a/e0/e;->a:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_7

    .line 26
    iget-object v1, v0, Le/a/a/k/a/v0;->i:Le/a/a/i0;

    iget-object v2, v0, Le/a/a/k/a/v0;->c:Le/a/o5/b0;

    invoke-interface {v2}, Le/a/o5/b0;->j()Lw3/b/a/b;

    move-result-object v2

    invoke-interface {v1, v2}, Le/a/a/i0;->C3(Lw3/b/a/b;)V

    .line 27
    :cond_7
    iget-object v1, v0, Le/a/a/k/a/v0;->i:Le/a/a/i0;

    invoke-interface {v1}, Le/a/a/i0;->l3()Lw3/b/a/b;

    move-result-object v1

    invoke-static {v1, v13}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iget-wide v1, v1, Lw3/b/a/e0/e;->a:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_8

    .line 29
    iget-object v1, v0, Le/a/a/k/a/v0;->i:Le/a/a/i0;

    iget-object v2, v0, Le/a/a/k/a/v0;->c:Le/a/o5/b0;

    invoke-interface {v2}, Le/a/o5/b0;->j()Lw3/b/a/b;

    move-result-object v2

    invoke-interface {v1, v2}, Le/a/a/i0;->p1(Lw3/b/a/b;)V

    .line 30
    :cond_8
    iget-object v1, v0, Le/a/a/k/a/v0;->i:Le/a/a/i0;

    invoke-interface {v1}, Le/a/a/i0;->Y2()Lw3/b/a/b;

    move-result-object v1

    invoke-static {v1, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iget-wide v1, v1, Lw3/b/a/e0/e;->a:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_9

    .line 32
    iget-object v1, v0, Le/a/a/k/a/v0;->i:Le/a/a/i0;

    iget-object v2, v0, Le/a/a/k/a/v0;->c:Le/a/o5/b0;

    invoke-interface {v2}, Le/a/o5/b0;->j()Lw3/b/a/b;

    move-result-object v2

    invoke-interface {v1, v2}, Le/a/a/i0;->e(Lw3/b/a/b;)V

    .line 33
    :cond_9
    new-instance v1, Le/a/a/k/a/u0;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Le/a/a/k/a/u0;-><init>(Le/a/a/k/a/v0;Ls1/w/d;)V

    const/4 v3, 0x1

    invoke-static {v2, v1, v3, v2}, Ls1/a/a/a/v0/f/d;->c3(Ls1/w/f;Ls1/z/b/p;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 34
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_a

    goto :goto_3

    .line 35
    :cond_a
    iget-object v3, v0, Le/a/a/k/a/v0;->d:Le/a/b0/q/l0;

    invoke-static {v1}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/a/g/e0;

    .line 36
    iget-wide v4, v4, Le/a/a/g/e0;->b:J

    const-wide/16 v20, 0x30

    .line 37
    sget-object v27, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v17, v3

    move-wide/from16 v18, v4

    move-object/from16 v22, v27

    invoke-virtual/range {v17 .. v22}, Le/a/b0/q/l0;->a(JJLjava/util/concurrent/TimeUnit;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 38
    invoke-static {v1}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/a/g/e0;

    .line 39
    iget-wide v3, v3, Le/a/a/g/e0;->b:J

    .line 40
    iget-object v5, v0, Le/a/a/k/a/v0;->i:Le/a/a/i0;

    invoke-interface {v5}, Le/a/a/i0;->c0()Lw3/b/a/b;

    move-result-object v5

    invoke-static {v5, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iget-wide v5, v5, Lw3/b/a/e0/e;->a:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_b

    .line 42
    sget-object v3, Le/a/a/k/a/b2;->b:Le/a/a/k/a/b2;

    invoke-virtual {v0, v3, v1}, Le/a/a/k/a/v0;->c(Le/a/a/k/a/b2;Ljava/util/List;)V

    goto :goto_3

    .line 43
    :cond_b
    iget-object v3, v0, Le/a/a/k/a/v0;->d:Le/a/b0/q/l0;

    invoke-static {v1}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/a/g/e0;

    .line 44
    iget-wide v4, v4, Le/a/a/g/e0;->b:J

    const-wide/16 v25, 0x6

    move-object/from16 v22, v3

    move-wide/from16 v23, v4

    .line 45
    invoke-virtual/range {v22 .. v27}, Le/a/b0/q/l0;->a(JJLjava/util/concurrent/TimeUnit;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 46
    invoke-static {v1}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/a/g/e0;

    .line 47
    iget-wide v3, v3, Le/a/a/g/e0;->b:J

    .line 48
    iget-object v5, v0, Le/a/a/k/a/v0;->i:Le/a/a/i0;

    invoke-interface {v5}, Le/a/a/i0;->F2()Lw3/b/a/b;

    move-result-object v5

    invoke-static {v5, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iget-wide v5, v5, Lw3/b/a/e0/e;->a:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_c

    .line 50
    sget-object v3, Le/a/a/k/a/b2;->a:Le/a/a/k/a/b2;

    invoke-virtual {v0, v3, v1}, Le/a/a/k/a/v0;->c(Le/a/a/k/a/b2;Ljava/util/List;)V

    .line 51
    :cond_c
    :goto_3
    new-instance v1, Le/a/a/k/a/t0;

    invoke-direct {v1, v0, v2}, Le/a/a/k/a/t0;-><init>(Le/a/a/k/a/v0;Ls1/w/d;)V

    const/4 v3, 0x1

    invoke-static {v2, v1, v3, v2}, Ls1/a/a/a/v0/f/d;->c3(Ls1/w/f;Ls1/z/b/p;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/a/g/e0;

    if-eqz v1, :cond_e

    .line 52
    iget-object v2, v0, Le/a/a/k/a/v0;->d:Le/a/b0/q/l0;

    .line 53
    iget-wide v3, v1, Le/a/a/g/e0;->b:J

    const-wide/16 v5, 0x30

    .line 54
    sget-object v19, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v7, v19

    invoke-virtual/range {v2 .. v7}, Le/a/b0/q/l0;->a(JJLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 55
    iget-wide v2, v1, Le/a/a/g/e0;->b:J

    .line 56
    iget-object v4, v0, Le/a/a/k/a/v0;->i:Le/a/a/i0;

    invoke-interface {v4}, Le/a/a/i0;->l3()Lw3/b/a/b;

    move-result-object v4

    invoke-static {v4, v13}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iget-wide v4, v4, Lw3/b/a/e0/e;->a:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_d

    .line 58
    sget-object v2, Le/a/a/k/a/b2;->d:Le/a/a/k/a/b2;

    invoke-static {v1}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Le/a/a/k/a/v0;->c(Le/a/a/k/a/b2;Ljava/util/List;)V

    goto :goto_4

    .line 59
    :cond_d
    iget-object v14, v0, Le/a/a/k/a/v0;->d:Le/a/b0/q/l0;

    .line 60
    iget-wide v2, v1, Le/a/a/g/e0;->b:J

    const-wide/16 v17, 0x6

    move-wide v15, v2

    .line 61
    invoke-virtual/range {v14 .. v19}, Le/a/b0/q/l0;->a(JJLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 62
    iget-wide v2, v1, Le/a/a/g/e0;->b:J

    .line 63
    iget-object v4, v0, Le/a/a/k/a/v0;->i:Le/a/a/i0;

    invoke-interface {v4}, Le/a/a/i0;->Y2()Lw3/b/a/b;

    move-result-object v4

    invoke-static {v4, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    iget-wide v4, v4, Lw3/b/a/e0/e;->a:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_e

    .line 65
    sget-object v2, Le/a/a/k/a/b2;->c:Le/a/a/k/a/b2;

    invoke-static {v1}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Le/a/a/k/a/v0;->c(Le/a/a/k/a/b2;Ljava/util/List;)V

    :cond_e
    :goto_4
    return-void
.end method

.method public final c(Le/a/a/k/a/b2;Ljava/util/List;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/a/k/a/b2;",
            "Ljava/util/List<",
            "Le/a/a/g/e0;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Le/a/a/k/a/v0;->j:Le/a/q2/a;

    const-string v2, "UnreadImNotification"

    const-string v3, "type"

    .line 2
    invoke-static {v2, v3}, Le/d/c/a/a;->X(Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v3

    const-string v9, "action"

    const-string v11, "name"

    const-string v10, "view"

    const-string v12, "value"

    move-object v4, v9

    move-object v5, v11

    move-object v6, v10

    move-object v7, v12

    move-object v8, v3

    .line 3
    invoke-static/range {v4 .. v10}, Le/d/c/a/a;->Y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v4

    .line 4
    invoke-static/range {p1 .. p1}, Le/a/c/p/a;->i(Le/a/a/k/a/b2;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "peer"

    .line 5
    invoke-static {v6, v11}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v12}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static/range {p1 .. p1}, Le/a/c/p/a;->k(Le/a/a/k/a/b2;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "unreadPeriod"

    .line 8
    invoke-static {v6, v11}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v12}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static {}, Le/a/l5/a/p3;->a()Le/a/l5/a/p3$b;

    move-result-object v5

    invoke-virtual {v5, v2}, Le/a/l5/a/p3$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/p3$b;

    invoke-virtual {v5, v4}, Le/a/l5/a/p3$b;->c(Ljava/util/Map;)Le/a/l5/a/p3$b;

    invoke-virtual {v5, v3}, Le/a/l5/a/p3$b;->d(Ljava/util/Map;)Le/a/l5/a/p3$b;

    invoke-virtual {v5}, Le/a/l5/a/p3$b;->a()Le/a/l5/a/p3;

    move-result-object v2

    const-string v3, "GenericAnalyticsEvent.ne\u2026rties(properties).build()"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-interface {v1, v2}, Le/a/q2/a;->a(Lorg/apache/avro/generic/GenericRecord;)V

    .line 12
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    iget-object v1, v0, Le/a/a/k/a/v0;->i:Le/a/a/i0;

    iget-object v5, v0, Le/a/a/k/a/v0;->c:Le/a/o5/b0;

    invoke-interface {v5}, Le/a/o5/b0;->j()Lw3/b/a/b;

    move-result-object v5

    invoke-interface {v1, v5}, Le/a/a/i0;->p1(Lw3/b/a/b;)V

    goto :goto_0

    .line 14
    :cond_1
    iget-object v1, v0, Le/a/a/k/a/v0;->i:Le/a/a/i0;

    iget-object v5, v0, Le/a/a/k/a/v0;->c:Le/a/o5/b0;

    invoke-interface {v5}, Le/a/o5/b0;->j()Lw3/b/a/b;

    move-result-object v5

    invoke-interface {v1, v5}, Le/a/a/i0;->e(Lw3/b/a/b;)V

    goto :goto_0

    .line 15
    :cond_2
    iget-object v1, v0, Le/a/a/k/a/v0;->i:Le/a/a/i0;

    iget-object v5, v0, Le/a/a/k/a/v0;->c:Le/a/o5/b0;

    invoke-interface {v5}, Le/a/o5/b0;->j()Lw3/b/a/b;

    move-result-object v5

    invoke-interface {v1, v5}, Le/a/a/i0;->u2(Lw3/b/a/b;)V

    goto :goto_0

    .line 16
    :cond_3
    iget-object v1, v0, Le/a/a/k/a/v0;->i:Le/a/a/i0;

    iget-object v5, v0, Le/a/a/k/a/v0;->c:Le/a/o5/b0;

    invoke-interface {v5}, Le/a/o5/b0;->j()Lw3/b/a/b;

    move-result-object v5

    invoke-interface {v1, v5}, Le/a/a/i0;->C3(Lw3/b/a/b;)V

    .line 17
    :goto_0
    iget-object v1, v0, Le/a/a/k/a/v0;->i:Le/a/a/i0;

    invoke-interface {v1}, Le/a/a/i0;->R0()I

    move-result v5

    add-int/2addr v5, v4

    invoke-interface {v1, v5}, Le/a/a/i0;->K(I)V

    .line 18
    invoke-static/range {p2 .. p2}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/a/g/e0;

    .line 19
    iget-wide v5, v1, Le/a/a/g/e0;->a:J

    .line 20
    invoke-static/range {p1 .. p1}, Le/a/c/p/a;->i(Le/a/a/k/a/b2;)Ljava/lang/String;

    move-result-object v1

    .line 21
    invoke-static/range {p1 .. p1}, Le/a/c/p/a;->k(Le/a/a/k/a/b2;)Ljava/lang/String;

    move-result-object v7

    .line 22
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    const-string v9, "PendingIntent.getActivit\u2026ingIntent.FLAG_IMMUTABLE)"

    const/high16 v10, 0x14000000

    const-string v11, "notificationImUnreadReminder"

    const-string v12, "context"

    const/4 v13, 0x0

    if-eqz v8, :cond_6

    if-eq v8, v4, :cond_6

    if-eq v8, v3, :cond_5

    if-ne v8, v2, :cond_4

    goto :goto_1

    .line 23
    :cond_4
    new-instance v1, Ls1/i;

    invoke-direct {v1}, Ls1/i;-><init>()V

    throw v1

    .line 24
    :cond_5
    :goto_1
    iget-object v8, v0, Le/a/a/k/a/v0;->e:Landroid/content/Context;

    .line 25
    new-instance v14, Landroid/content/Intent;

    const-class v15, Lcom/truecaller/messaging/conversation/ConversationActivity;

    invoke-direct {v14, v8, v15}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v15, 0x10000000

    .line 26
    invoke-virtual {v14, v15}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v15, "conversation_id"

    .line 27
    invoke-virtual {v14, v15, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 28
    invoke-static {v14, v1, v7}, Le/a/c/p/a;->y(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    invoke-static {v14, v1}, Le/a/c/p/a;->z(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    long-to-int v1, v5

    .line 30
    invoke-static {v8, v1, v14, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-static {v1, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 31
    :cond_6
    iget-object v5, v0, Le/a/a/k/a/v0;->e:Landroid/content/Context;

    .line 32
    sget-object v6, Le/a/a/r0/j;->l:Le/a/a/r0/j$b;

    .line 33
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v5, v12}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "analyticsContext"

    invoke-static {v11, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "messages"

    .line 34
    invoke-static {v5, v6, v11}, Lcom/truecaller/ui/TruecallerInit;->xa(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    const-string v8, "unread_conv_state"

    .line 35
    invoke-virtual {v6, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v6

    const-string v8, "TruecallerInit.buildInte\u2026UnreadConversationsState)"

    invoke-static {v6, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-static {v6, v1, v7}, Le/a/c/p/a;->y(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    invoke-static {v6, v1}, Le/a/c/p/a;->z(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    invoke-static {v5, v13, v6, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-static {v1, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    move-object v15, v1

    .line 39
    iget-object v14, v0, Le/a/a/k/a/v0;->f:Le/a/i4/e;

    const/16 v17, 0x0

    const/16 v18, 0x4

    const/16 v19, 0x0

    const-string v16, "notificationImUnreadReminder"

    invoke-static/range {v14 .. v19}, Le/a/c/p/a;->x3(Le/a/i4/e;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 40
    invoke-static/range {p1 .. p1}, Le/a/c/p/a;->i(Le/a/a/k/a/b2;)Ljava/lang/String;

    move-result-object v5

    .line 41
    invoke-static/range {p1 .. p1}, Le/a/c/p/a;->k(Le/a/a/k/a/b2;)Ljava/lang/String;

    move-result-object v6

    .line 42
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    const-string v8, "analytics_unread_period"

    const-string v9, "analytics_peer"

    const-string v10, "analyticsUnreadPeriod"

    const-string v14, "analyticsPeer"

    if-eqz v7, :cond_9

    if-eq v7, v4, :cond_9

    if-eq v7, v3, :cond_8

    if-ne v7, v2, :cond_7

    goto :goto_3

    .line 43
    :cond_7
    new-instance v1, Ls1/i;

    invoke-direct {v1}, Ls1/i;-><init>()V

    throw v1

    .line 44
    :cond_8
    :goto_3
    iget-object v7, v0, Le/a/a/k/a/v0;->e:Landroid/content/Context;

    .line 45
    invoke-static {v7, v12}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v14}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 47
    invoke-virtual {v10, v9, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-virtual {v10, v8, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "com.truecaller.maybe_later_groups"

    .line 49
    invoke-static {v7, v5, v10}, Le/a/c/p/a;->U(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v5

    goto :goto_4

    .line 50
    :cond_9
    iget-object v7, v0, Le/a/a/k/a/v0;->e:Landroid/content/Context;

    .line 51
    invoke-static {v7, v12}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v14}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 53
    invoke-virtual {v10, v9, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-virtual {v10, v8, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "com.truecaller.maybe_later_personal"

    .line 55
    invoke-static {v7, v5, v10}, Le/a/c/p/a;->U(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v5

    :goto_4
    move-object v15, v5

    .line 56
    iget-object v14, v0, Le/a/a/k/a/v0;->f:Le/a/i4/e;

    const/16 v17, 0x0

    const/16 v18, 0x4

    const/16 v19, 0x0

    const-string v16, "notificationImUnreadReminderMaybeLater"

    invoke-static/range {v14 .. v19}, Le/a/c/p/a;->x3(Le/a/i4/e;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Landroid/app/PendingIntent;

    move-result-object v5

    .line 57
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_a

    goto/16 :goto_7

    .line 58
    :cond_a
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    if-eqz v6, :cond_e

    if-eq v6, v4, :cond_d

    if-eq v6, v3, :cond_c

    if-ne v6, v2, :cond_b

    .line 59
    iget-object v6, v0, Le/a/a/k/a/v0;->e:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f120790

    new-array v8, v4, [Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Le/a/a/g/e0;

    .line 60
    iget-object v9, v9, Le/a/a/g/e0;->k:Ljava/lang/String;

    aput-object v9, v8, v13

    .line 61
    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_7

    .line 62
    :cond_b
    new-instance v1, Ls1/i;

    invoke-direct {v1}, Ls1/i;-><init>()V

    throw v1

    :cond_c
    iget-object v6, v0, Le/a/a/k/a/v0;->e:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f12078f

    new-array v8, v4, [Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Le/a/a/g/e0;

    .line 63
    iget-object v9, v9, Le/a/a/g/e0;->k:Ljava/lang/String;

    aput-object v9, v8, v13

    .line 64
    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_7

    .line 65
    :cond_d
    iget-object v6, v0, Le/a/a/k/a/v0;->e:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f120795

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    .line 66
    :cond_e
    iget-object v6, v0, Le/a/a/k/a/v0;->e:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f120794

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_5
    const-string v8, "when (unreadReminder) {\n\u2026).imGroupTitle)\n        }"

    .line 67
    invoke-static {v6, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    new-instance v8, Lcom/truecaller/data/entity/messaging/Participant$b;

    invoke-static/range {p2 .. p2}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Le/a/a/g/e0;

    .line 69
    iget v9, v9, Le/a/a/g/e0;->g:I

    .line 70
    invoke-direct {v8, v9}, Lcom/truecaller/data/entity/messaging/Participant$b;-><init>(I)V

    invoke-static/range {p2 .. p2}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Le/a/a/g/e0;

    .line 71
    iget-object v9, v9, Le/a/a/g/e0;->d:Ljava/lang/String;

    .line 72
    iput-object v9, v8, Lcom/truecaller/data/entity/messaging/Participant$b;->e:Ljava/lang/String;

    .line 73
    invoke-static/range {p2 .. p2}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Le/a/a/g/e0;

    .line 74
    iget-object v9, v9, Le/a/a/g/e0;->c:Ljava/lang/String;

    .line 75
    iput-object v9, v8, Lcom/truecaller/data/entity/messaging/Participant$b;->l:Ljava/lang/String;

    .line 76
    invoke-virtual {v8}, Lcom/truecaller/data/entity/messaging/Participant$b;->a()Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object v8

    const-string v9, "Participant.Builder(unre\u2026ons.first().name).build()"

    invoke-static {v8, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8}, Le/a/a/i1/h;->c(Lcom/truecaller/data/entity/messaging/Participant;)Ljava/lang/String;

    move-result-object v8

    .line 77
    invoke-static/range {p2 .. p2}, Le/a/c/p/a;->z2(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Le/a/a/g/e0;

    if-eqz v9, :cond_f

    .line 78
    iget-object v9, v9, Le/a/a/g/e0;->c:Ljava/lang/String;

    if-eqz v9, :cond_f

    move-object v7, v9

    goto :goto_6

    .line 79
    :cond_f
    invoke-static/range {p2 .. p2}, Le/a/c/p/a;->z2(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Le/a/a/g/e0;

    if-eqz v9, :cond_10

    .line 80
    iget-object v7, v9, Le/a/a/g/e0;->d:Ljava/lang/String;

    .line 81
    :cond_10
    :goto_6
    invoke-static {v6}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 82
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v10, 0x20

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v7, :cond_11

    const-string v8, ", "

    .line 83
    invoke-static {v8, v7, v6}, Le/d/c/a/a;->L0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 84
    :cond_11
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v3, :cond_12

    iget-object v7, v0, Le/a/a/k/a/v0;->e:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f120793

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    :cond_12
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v6, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v7, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    :goto_7
    iget-object v6, v0, Le/a/a/k/a/v0;->f:Le/a/i4/e;

    const-string v8, "unread_reminders"

    invoke-interface {v6, v8}, Le/a/i4/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 87
    new-instance v8, Ln3/k/a/q;

    iget-object v9, v0, Le/a/a/k/a/v0;->e:Landroid/content/Context;

    invoke-direct {v8, v9, v6}, Ln3/k/a/q;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 88
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    if-eqz v6, :cond_15

    if-eq v6, v4, :cond_14

    if-eq v6, v3, :cond_14

    if-ne v6, v2, :cond_13

    goto :goto_8

    .line 89
    :cond_13
    new-instance v1, Ls1/i;

    invoke-direct {v1}, Ls1/i;-><init>()V

    throw v1

    .line 90
    :cond_14
    iget-object v6, v0, Le/a/a/k/a/v0;->e:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x7f120791

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v9, "context.resources.getStr\u2026ndersMessagesFromFriends)"

    invoke-static {v6, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_9

    .line 91
    :cond_15
    :goto_8
    iget-object v6, v0, Le/a/a/k/a/v0;->e:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x7f120792

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v9, "context.resources.getStr\u2026nreadRemindersMissingOut)"

    invoke-static {v6, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    :goto_9
    invoke-virtual {v8, v6}, Ln3/k/a/q;->n(Ljava/lang/CharSequence;)Ln3/k/a/q;

    .line 93
    invoke-virtual {v8, v7}, Ln3/k/a/q;->m(Ljava/lang/CharSequence;)Ln3/k/a/q;

    .line 94
    new-instance v6, Ln3/k/a/o;

    invoke-direct {v6}, Ln3/k/a/o;-><init>()V

    invoke-virtual {v6, v7}, Ln3/k/a/o;->k(Ljava/lang/CharSequence;)Ln3/k/a/o;

    invoke-virtual {v8, v6}, Ln3/k/a/q;->x(Ln3/k/a/u;)Ln3/k/a/q;

    const v6, 0x7f080581

    .line 95
    iget-object v7, v8, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput v6, v7, Landroid/app/Notification;->icon:I

    const/4 v6, 0x4

    .line 96
    invoke-virtual {v8, v6}, Ln3/k/a/q;->o(I)Ln3/k/a/q;

    .line 97
    iget-object v6, v0, Le/a/a/k/a/v0;->e:Landroid/content/Context;

    const v7, 0x7f06068b

    .line 98
    sget-object v9, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 99
    invoke-static {v6, v7}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v6

    .line 100
    iput v6, v8, Ln3/k/a/q;->D:I

    const/16 v6, 0x10

    .line 101
    invoke-virtual {v8, v6, v4}, Ln3/k/a/q;->p(IZ)V

    .line 102
    iput-object v1, v8, Ln3/k/a/q;->g:Landroid/app/PendingIntent;

    .line 103
    iget-object v6, v8, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput-object v5, v6, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 104
    iget-object v6, v0, Le/a/a/k/a/v0;->e:Landroid/content/Context;

    const v7, 0x7f12040d

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v13, v6, v1}, Ln3/k/a/q;->a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Ln3/k/a/q;

    .line 105
    iget-object v1, v0, Le/a/a/k/a/v0;->e:Landroid/content/Context;

    const v6, 0x7f120408

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v13, v1, v5}, Ln3/k/a/q;->a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Ln3/k/a/q;

    .line 106
    iput-boolean v4, v8, Ln3/k/a/q;->S:Z

    const-string v1, "NotificationCompat.Build\u2026 .setNotificationSilent()"

    .line 107
    invoke-static {v8, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    iget-object v1, v0, Le/a/a/k/a/v0;->f:Le/a/i4/e;

    .line 109
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    if-eqz v5, :cond_18

    if-eq v5, v4, :cond_18

    if-eq v5, v3, :cond_17

    if-ne v5, v2, :cond_16

    goto :goto_a

    .line 110
    :cond_16
    new-instance v1, Ls1/i;

    invoke-direct {v1}, Ls1/i;-><init>()V

    throw v1

    :cond_17
    :goto_a
    const v2, 0x7f0a0985

    goto :goto_b

    :cond_18
    const v2, 0x7f0a0986

    .line 111
    :goto_b
    iget-object v3, v0, Le/a/a/k/a/v0;->g:Le/a/i4/q;

    new-instance v4, Le/a/a/k/a/v0$a;

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    invoke-direct {v4, v0, v5, v6}, Le/a/a/k/a/v0$a;-><init>(Le/a/a/k/a/v0;Le/a/a/k/a/b2;Ljava/util/List;)V

    invoke-interface {v3, v8, v4}, Le/a/i4/q;->a(Ln3/k/a/q;Le/a/i4/q$a;)Landroid/app/Notification;

    move-result-object v3

    const-string v4, "notificationIconHelper.c\u2026r, unreadConversations) }"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    invoke-interface {v1, v2, v3, v11}, Le/a/i4/e;->j(ILandroid/app/Notification;Ljava/lang/String;)V

    return-void
.end method
