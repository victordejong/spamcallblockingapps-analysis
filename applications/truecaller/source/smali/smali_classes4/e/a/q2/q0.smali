.class public final Le/a/q2/q0;
.super Le/a/y2/k;
.source "SourceFile"


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/q2/a;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Le/a/b0/e/l;

.field public final e:Landroid/content/ContentResolver;

.field public final f:Le/a/a/g/g;

.field public final g:Le/a/a/i0;

.field public final h:Le/a/p5/c;


# direct methods
.method public constructor <init>(Lo3/a;Le/a/b0/e/l;Landroid/content/ContentResolver;Le/a/a/g/g;Le/a/a/i0;Le/a/p5/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo3/a<",
            "Le/a/q2/a;",
            ">;",
            "Le/a/b0/e/l;",
            "Landroid/content/ContentResolver;",
            "Le/a/a/g/g;",
            "Le/a/a/i0;",
            "Le/a/p5/c;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "analytics"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentResolver"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cursorsFactory"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settings"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/y2/k;-><init>()V

    iput-object p1, p0, Le/a/q2/q0;->c:Lo3/a;

    iput-object p2, p0, Le/a/q2/q0;->d:Le/a/b0/e/l;

    iput-object p3, p0, Le/a/q2/q0;->e:Landroid/content/ContentResolver;

    iput-object p4, p0, Le/a/q2/q0;->f:Le/a/a/g/g;

    iput-object p5, p0, Le/a/q2/q0;->g:Le/a/a/i0;

    iput-object p6, p0, Le/a/q2/q0;->h:Le/a/p5/c;

    const-string p1, "MessageReceivedStatsWorkAction"

    .line 2
    iput-object p1, p0, Le/a/q2/q0;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Landroidx/work/ListenableWorker$a;
    .locals 15

    const-string v0, "transport IN (2, 0, 4, 1, 7)"

    const-string v1, " AND "

    const-string v2, "(status & 1)=0"

    .line 1
    invoke-static {v0, v1, v2}, Le/d/c/a/a;->L(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Le/a/q2/q0;->g:Le/a/a/i0;

    invoke-interface {v1}, Le/a/a/i0;->M0()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    .line 3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " AND date > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v0, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v5, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v2, p0, Le/a/q2/q0;->e:Landroid/content/ContentResolver;

    .line 6
    invoke-static {}, Le/a/b0/q/g0;->z()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 7
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 8
    iget-object v2, p0, Le/a/q2/q0;->f:Le/a/a/g/g;

    invoke-interface {v2, v0}, Le/a/a/g/g;->i(Landroid/database/Cursor;)Le/a/a/g/j0/q;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_d

    .line 9
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_2

    goto/16 :goto_5

    .line 10
    :cond_2
    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    move v8, v7

    move v9, v8

    move v10, v9

    .line 11
    :cond_3
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 12
    invoke-interface {v0}, Le/a/a/g/j0/q;->getMessage()Lcom/truecaller/messaging/data/types/Message;

    move-result-object v11

    iget-object v11, v11, Lcom/truecaller/messaging/data/types/Message;->c:Lcom/truecaller/data/entity/messaging/Participant;

    const-string v12, "it.message.participant"

    invoke-static {v11, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-interface {v4, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-virtual {v11}, Lcom/truecaller/data/entity/messaging/Participant;->m()Z

    move-result v12

    if-eqz v12, :cond_4

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 15
    :cond_4
    iget v12, v11, Lcom/truecaller/data/entity/messaging/Participant;->i:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_5

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_5
    if-ne v12, v3, :cond_6

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 16
    :cond_6
    iget-boolean v12, v11, Lcom/truecaller/data/entity/messaging/Participant;->j:Z

    if-eqz v12, :cond_7

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 17
    :cond_7
    invoke-virtual {v11}, Lcom/truecaller/data/entity/messaging/Participant;->o()Z

    move-result v11

    if-eqz v11, :cond_3

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 18
    :cond_8
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v3

    .line 19
    new-instance v11, Ljava/util/ArrayList;

    const/16 v12, 0xa

    invoke-static {v4, v12}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 20
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .line 21
    check-cast v12, Lcom/truecaller/data/entity/messaging/Participant;

    .line 22
    iget v12, v12, Lcom/truecaller/data/entity/messaging/Participant;->p:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_9
    const-string v4, "$this$average"

    .line 23
    invoke-static {v11, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const-wide/16 v11, 0x0

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->intValue()I

    move-result v13

    int-to-double v13, v13

    add-double/2addr v11, v13

    add-int/lit8 v5, v5, 0x1

    if-ltz v5, :cond_a

    goto :goto_3

    .line 25
    :cond_a
    invoke-static {}, Ls1/u/i;->M0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_b
    if-nez v5, :cond_c

    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    goto :goto_4

    :cond_c
    int-to-double v4, v5

    div-double v4, v11, v4

    :goto_4
    double-to-int v4, v4

    .line 26
    :try_start_1
    iget-object v5, p0, Le/a/q2/q0;->c:Lo3/a;

    invoke-interface {v5}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/q2/a;

    .line 27
    new-instance v11, Le/a/q2/e0;

    const-string v12, "MessageReceived"

    invoke-direct {v11, v12}, Le/a/q2/e0;-><init>(Ljava/lang/String;)V

    const-string v12, "inPhonebook"

    .line 28
    invoke-virtual {v11, v12, v6}, Le/a/q2/e0;->b(Ljava/lang/CharSequence;I)Le/a/q2/e0;

    const-string v6, "inTopSpammerList"

    .line 29
    invoke-virtual {v11, v6, v9}, Le/a/q2/e0;->b(Ljava/lang/CharSequence;I)Le/a/q2/e0;

    const-string v6, "inUserSpammerList"

    .line 30
    invoke-virtual {v11, v6, v8}, Le/a/q2/e0;->b(Ljava/lang/CharSequence;I)Le/a/q2/e0;

    const-string v6, "inUserWhiteList"

    .line 31
    invoke-virtual {v11, v6, v7}, Le/a/q2/e0;->b(Ljava/lang/CharSequence;I)Le/a/q2/e0;

    const-string v6, "spammerFromServer"

    .line 32
    invoke-virtual {v11, v6, v10}, Le/a/q2/e0;->b(Ljava/lang/CharSequence;I)Le/a/q2/e0;

    const-string v6, "avgSpamScore"

    .line 33
    invoke-virtual {v11, v6, v4}, Le/a/q2/e0;->b(Ljava/lang/CharSequence;I)Le/a/q2/e0;

    const-string v4, "numSenders"

    .line 34
    invoke-virtual {v11, v4, v3}, Le/a/q2/e0;->b(Ljava/lang/CharSequence;I)Le/a/q2/e0;

    const-string v3, "all"

    .line 35
    invoke-virtual {v11, v3, v2}, Le/a/q2/e0;->b(Ljava/lang/CharSequence;I)Le/a/q2/e0;

    .line 36
    invoke-virtual {v11}, Le/a/q2/e0;->a()Le/a/l5/a/p3;

    move-result-object v2

    .line 37
    invoke-interface {v5, v2}, Le/a/q2/a;->a(Lorg/apache/avro/generic/GenericRecord;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    :goto_5
    invoke-static {v0, v1}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_6

    :catchall_0
    move-exception v1

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    .line 39
    :cond_d
    :goto_6
    iget-object v0, p0, Le/a/q2/q0;->g:Le/a/a/i0;

    iget-object v1, p0, Le/a/q2/q0;->h:Le/a/p5/c;

    invoke-interface {v1}, Le/a/p5/c;->c()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Le/a/a/i0;->v2(J)V

    .line 40
    new-instance v0, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    const-string v1, "ListenableWorker.Result.success()"

    .line 41
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/q2/q0;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/q2/q0;->d:Le/a/b0/e/l;

    invoke-interface {v0}, Le/a/b0/e/l;->d()Z

    move-result v0

    return v0
.end method
