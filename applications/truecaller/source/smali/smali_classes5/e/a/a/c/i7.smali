.class public final Le/a/a/c/i7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/c/h7;


# instance fields
.field public final a:Le/a/o5/f0;

.field public final b:Le/a/a/g1/b;

.field public final c:Landroid/content/ContentResolver;

.field public final d:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/a/g/m;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Le/a/q2/i0;


# direct methods
.method public constructor <init>(Le/a/o5/f0;Le/a/a/g1/b;Landroid/content/ContentResolver;Le/a/r2/f;Le/a/q2/i0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/o5/f0;",
            "Le/a/a/g1/b;",
            "Landroid/content/ContentResolver;",
            "Le/a/r2/f<",
            "Le/a/a/g/m;",
            ">;",
            "Le/a/q2/i0;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "deviceManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "translateManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentResolver"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messagesStorage"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageAnalytics"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/c/i7;->a:Le/a/o5/f0;

    iput-object p2, p0, Le/a/a/c/i7;->b:Le/a/a/g1/b;

    iput-object p3, p0, Le/a/a/c/i7;->c:Landroid/content/ContentResolver;

    iput-object p4, p0, Le/a/a/c/i7;->d:Le/a/r2/f;

    iput-object p5, p0, Le/a/a/c/i7;->e:Le/a/q2/i0;

    return-void
.end method


# virtual methods
.method public a(JIILs1/w/d;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Le/a/a/c/i7;->b:Le/a/a/g1/b;

    invoke-interface {v1}, Le/a/a/g1/b;->h()Ljava/util/List;

    move-result-object v1

    .line 2
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    .line 4
    invoke-virtual/range {p0 .. p0}, Le/a/a/c/i7;->c()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v0, Le/a/a/c/i7;->a:Le/a/o5/f0;

    invoke-interface {v4}, Le/a/o5/f0;->d()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    goto :goto_1

    :cond_1
    const-string v4, "en"

    .line 5
    invoke-static {v3, v4}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    .line 6
    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 7
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v10, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string v1, "message_language IN ("

    .line 8
    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget-object v8, Le/a/a/c/i7$a;->b:Le/a/a/c/i7$a;

    const/16 v9, 0x1e

    const-string v3, ", "

    move-object v2, v10

    invoke-static/range {v2 .. v9}, Ls1/u/i;->O(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x29

    const-string v4, " AND length(message_content) > 2"

    invoke-static {v1, v2, v3, v4}, Le/d/c/a/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 9
    iget-object v11, v0, Le/a/a/c/i7;->c:Landroid/content/ContentResolver;

    .line 10
    new-instance v1, Ljava/lang/Long;

    move-wide/from16 v2, p1

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    move/from16 v2, p3

    move/from16 v3, p4

    .line 11
    invoke-static {v1, v2, v3}, Le/a/b0/q/g0;->j(Ljava/lang/Long;II)Landroid/net/Uri;

    move-result-object v12

    const-string v1, "MessagesToTranslateQuery\u2026d, filter, splitCriteria)"

    invoke-static {v12, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    .line 12
    invoke-interface {v10, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v15, v1

    check-cast v15, [Ljava/lang/String;

    const-string v13, "message_id"

    const-string v16, "message_sequence_number DESC, message_date DESC LIMIT 1"

    .line 13
    invoke-static/range {v11 .. v16}, Le/a/p5/s0/f;->E(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public b(Lcom/truecaller/messaging/data/types/Message;)Z
    .locals 5

    const-string v0, "message"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Lcom/truecaller/messaging/data/types/Message;->z:Ljava/lang/String;

    const-string v1, "en"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Le/a/a/c/i7;->c()Z

    move-result v1

    if-nez v1, :cond_0

    return v2

    .line 3
    :cond_0
    invoke-static {p1}, Le/a/c/p/a;->s1(Lcom/truecaller/messaging/data/types/Message;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 4
    invoke-virtual {p1}, Lcom/truecaller/messaging/data/types/Message;->a()Ljava/lang/String;

    move-result-object v1

    const-string v4, "message.buildMessageText()"

    invoke-static {v1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    if-eqz v1, :cond_2

    iget p1, p1, Lcom/truecaller/messaging/data/types/Message;->k:I

    const/4 v1, 0x5

    if-eq p1, v1, :cond_2

    const-string p1, "und"

    invoke-static {v0, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v3

    if-eqz p1, :cond_2

    iget-object p1, p0, Le/a/a/c/i7;->a:Le/a/o5/f0;

    invoke-interface {p1}, Le/a/o5/f0;->d()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v3

    if-eqz p1, :cond_2

    .line 5
    iget-object p1, p0, Le/a/a/c/i7;->b:Le/a/a/g1/b;

    invoke-interface {p1}, Le/a/a/g1/b;->h()Ljava/util/List;

    move-result-object p1

    invoke-static {p1, v0}, Ls1/u/i;->l(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    move v2, v3

    :cond_2
    return v2
.end method

.method public c()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/c/i7;->b:Le/a/a/g1/b;

    invoke-interface {v0}, Le/a/a/g1/b;->h()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Le/a/a/c/i7;->a:Le/a/o5/f0;

    invoke-interface {v1}, Le/a/o5/f0;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public d(JLjava/lang/Integer;IILs1/w/d;)Ljava/lang/Object;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/Integer;",
            "II",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    move-object/from16 v2, p6

    instance-of v3, v2, Le/a/a/c/i7$b;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Le/a/a/c/i7$b;

    iget v4, v3, Le/a/a/c/i7$b;->e:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Le/a/a/c/i7$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v3, Le/a/a/c/i7$b;

    invoke-direct {v3, v1, v2}, Le/a/a/c/i7$b;-><init>(Le/a/a/c/i7;Ls1/w/d;)V

    :goto_0
    iget-object v2, v3, Le/a/a/c/i7$b;->d:Ljava/lang/Object;

    sget-object v4, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v5, v3, Le/a/a/c/i7$b;->e:I

    const-string v6, "it"

    const/4 v8, 0x1

    if-eqz v5, :cond_2

    if-ne v5, v8, :cond_1

    iget-wide v9, v3, Le/a/a/c/i7$b;->m:J

    iget-object v0, v3, Le/a/a/c/i7$b;->l:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iget-object v5, v3, Le/a/a/c/i7$b;->k:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    iget-object v11, v3, Le/a/a/c/i7$b;->j:Ljava/lang/Object;

    check-cast v11, Landroid/database/Cursor;

    iget-object v12, v3, Le/a/a/c/i7$b;->i:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Throwable;

    iget-object v13, v3, Le/a/a/c/i7$b;->h:Ljava/lang/Object;

    check-cast v13, Ljava/io/Closeable;

    iget-object v14, v3, Le/a/a/c/i7$b;->g:Ljava/lang/Object;

    check-cast v14, Le/a/a/c/i7;

    :try_start_0
    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_5

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_2
    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "message_sequence_number DESC, message_date DESC"

    .line 5
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_3

    .line 6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " LIMIT "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object v2, v1, Le/a/a/c/i7;->c:Landroid/content/ContentResolver;

    .line 9
    new-instance v5, Ljava/lang/Long;

    move-wide/from16 v9, p1

    invoke-direct {v5, v9, v10}, Ljava/lang/Long;-><init>(J)V

    move/from16 v9, p4

    move/from16 v10, p5

    .line 10
    invoke-static {v5, v9, v10}, Le/a/b0/q/g0;->j(Ljava/lang/Long;II)Landroid/net/Uri;

    move-result-object v5

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, "message_language IS NULL"

    move-object/from16 p1, v2

    move-object/from16 p2, v5

    move-object/from16 p3, v9

    move-object/from16 p4, v11

    move-object/from16 p5, v10

    move-object/from16 p6, v0

    .line 11
    invoke-virtual/range {p1 .. p6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    if-eqz v13, :cond_10

    .line 12
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v1

    move-object v5, v2

    move-object v11, v13

    const/4 v12, 0x0

    .line 14
    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 15
    invoke-static {v11, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "message_id"

    invoke-static {v11, v2}, Le/a/p5/s0/g;->E0(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v9

    const-string v2, "message_content"

    .line 16
    invoke-static {v11, v2}, Le/a/p5/s0/g;->F1(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    const-string v2, ""

    :goto_2
    const-string v15, "message_mentions"

    .line 17
    invoke-static {v11, v15}, Le/a/p5/s0/g;->F1(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Le/a/c/p/a;->S1(Ljava/lang/String;)[Lcom/truecaller/messaging/data/types/Mention;

    move-result-object v15

    .line 18
    invoke-static {v14}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v16, 0x0

    move/from16 v7, v16

    move/from16 v17, v7

    .line 19
    :goto_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_6

    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 20
    invoke-static {v8}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v8

    if-nez v8, :cond_5

    add-int/lit8 v17, v17, 0x1

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 21
    :cond_6
    array-length v7, v15

    move/from16 v8, v16

    move/from16 v19, v8

    :goto_4
    if-ge v8, v7, :cond_7

    aget-object v20, v15, v8

    .line 22
    invoke-virtual/range {v20 .. v20}, Lcom/truecaller/messaging/data/types/Mention;->getLength()I

    move-result v20

    const/16 v18, 0x1

    add-int/lit8 v20, v20, 0x1

    add-int v19, v20, v19

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_7
    sub-int v17, v17, v19

    if-lez v17, :cond_8

    const/16 v16, 0x1

    :cond_8
    if-eqz v16, :cond_c

    .line 23
    iget-object v7, v14, Le/a/a/c/i7;->b:Le/a/a/g1/b;

    iput-object v14, v3, Le/a/a/c/i7$b;->g:Ljava/lang/Object;

    iput-object v13, v3, Le/a/a/c/i7$b;->h:Ljava/lang/Object;

    iput-object v12, v3, Le/a/a/c/i7$b;->i:Ljava/lang/Object;

    iput-object v11, v3, Le/a/a/c/i7$b;->j:Ljava/lang/Object;

    iput-object v5, v3, Le/a/a/c/i7$b;->k:Ljava/lang/Object;

    iput-object v0, v3, Le/a/a/c/i7$b;->l:Ljava/lang/Object;

    iput-wide v9, v3, Le/a/a/c/i7$b;->m:J

    const/4 v8, 0x1

    iput v8, v3, Le/a/a/c/i7$b;->e:I

    invoke-interface {v7, v2, v3}, Le/a/a/g1/b;->g(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_9

    return-object v4

    .line 24
    :cond_9
    :goto_5
    move-object v7, v2

    check-cast v7, Le/a/a/g1/a;

    .line 25
    new-instance v8, Ls1/k;

    .line 26
    iget-object v15, v7, Le/a/a/g1/a;->a:Ljava/lang/String;

    .line 27
    iget v7, v7, Le/a/a/g1/a;->b:F

    move-object/from16 p1, v0

    .line 28
    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, v7}, Ljava/lang/Float;-><init>(F)V

    .line 29
    invoke-direct {v8, v15, v0}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    const/16 v7, 0x64

    if-gt v0, v7, :cond_a

    invoke-static {v11, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v11}, Landroid/database/Cursor;->isLast()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 31
    :cond_a
    invoke-virtual {v14, v5}, Le/a/a/c/i7;->e(Ljava/util/List;)V

    .line 32
    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 33
    :cond_b
    check-cast v2, Le/a/a/g1/a;

    .line 34
    iget-object v0, v2, Le/a/a/g1/a;->a:Ljava/lang/String;

    move-object/from16 v2, p1

    goto :goto_6

    :cond_c
    const-string v2, "und"

    move-object/from16 v21, v2

    move-object v2, v0

    move-object/from16 v0, v21

    .line 35
    :goto_6
    invoke-static {}, Le/a/b0/q/g0;->y()Landroid/net/Uri;

    move-result-object v7

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    const-string v8, "language"

    .line 36
    invoke-virtual {v7, v8, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 37
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    const-string v7, "ContentProviderOperation\u2026                 .build()"

    invoke-static {v0, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v7, 0x28

    if-ne v0, v7, :cond_d

    .line 41
    iget-object v0, v14, Le/a/a/c/i7;->d:Le/a/r2/f;

    invoke-interface {v0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a/g/m;

    invoke-interface {v0, v2}, Le/a/a/g/m;->r(Ljava/util/ArrayList;)Le/a/r2/x;

    move-result-object v0

    invoke-virtual {v0}, Le/a/r2/x;->c()Ljava/lang/Object;

    .line 42
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_d
    move-object v0, v2

    const/4 v8, 0x1

    goto/16 :goto_1

    .line 43
    :cond_e
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    if-eqz v2, :cond_f

    .line 44
    iget-object v2, v14, Le/a/a/c/i7;->d:Le/a/r2/f;

    invoke-interface {v2}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/a/g/m;

    invoke-interface {v2, v0}, Le/a/a/g/m;->r(Ljava/util/ArrayList;)Le/a/r2/x;

    move-result-object v0

    invoke-virtual {v0}, Le/a/r2/x;->c()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    :cond_f
    invoke-static {v13, v12}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_7

    :catchall_0
    move-exception v0

    move-object v2, v0

    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    move-object v3, v0

    invoke-static {v13, v2}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3

    .line 46
    :cond_10
    :goto_7
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method

.method public e(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ls1/k<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "results"

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
    check-cast v1, Ls1/k;

    .line 4
    iget-object v2, v1, Ls1/k;->a:Ljava/lang/Object;

    .line 5
    check-cast v2, Ljava/lang/String;

    .line 6
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 7
    invoke-static {v0, v2}, Le/d/c/a/a;->R(Ljava/util/LinkedHashMap;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    :cond_0
    check-cast v3, Ljava/util/List;

    .line 8
    iget-object v1, v1, Ls1/k;->b:Ljava/lang/Object;

    .line 9
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 11
    iget-object v1, p0, Le/a/a/c/i7;->e:Le/a/q2/i0;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Le/a/a/c/i7;->a:Le/a/o5/f0;

    invoke-interface {v3}, Le/a/o5/f0;->d()Ljava/lang/String;

    move-result-object v3

    const-string v4, "deviceManager.languageIso"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v2, v0, v3}, Le/a/q2/i0;->o(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-void
.end method
