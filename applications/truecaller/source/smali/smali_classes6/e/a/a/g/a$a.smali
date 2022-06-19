.class public final Le/a/a/g/a$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/g/a;->u([Lcom/truecaller/data/entity/messaging/Participant;ILs1/w/d;)Ljava/lang/Object;
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
        "Lcom/truecaller/messaging/data/types/Draft;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.messaging.data.ReadMessageStorageImpl$readDraft$2"
    f = "ReadMessageStorage.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/a/g/a;

.field public final synthetic f:[Lcom/truecaller/data/entity/messaging/Participant;

.field public final synthetic g:I


# direct methods
.method public constructor <init>(Le/a/a/g/a;[Lcom/truecaller/data/entity/messaging/Participant;ILs1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/g/a$a;->e:Le/a/a/g/a;

    iput-object p2, p0, Le/a/a/g/a$a;->f:[Lcom/truecaller/data/entity/messaging/Participant;

    iput p3, p0, Le/a/a/g/a$a;->g:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 3
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

    new-instance p1, Le/a/a/g/a$a;

    iget-object v0, p0, Le/a/a/g/a$a;->e:Le/a/a/g/a;

    iget-object v1, p0, Le/a/a/g/a$a;->f:[Lcom/truecaller/data/entity/messaging/Participant;

    iget v2, p0, Le/a/a/g/a$a;->g:I

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/a/g/a$a;-><init>(Le/a/a/g/a;[Lcom/truecaller/data/entity/messaging/Participant;ILs1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/a/g/a$a;

    iget-object v0, p0, Le/a/a/g/a$a;->e:Le/a/a/g/a;

    iget-object v1, p0, Le/a/a/g/a$a;->f:[Lcom/truecaller/data/entity/messaging/Participant;

    iget v2, p0, Le/a/a/g/a$a;->g:I

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/a/g/a$a;-><init>(Le/a/a/g/a;[Lcom/truecaller/data/entity/messaging/Participant;ILs1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/a/g/a$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v7, p0

    .line 1
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    new-instance v0, Lcom/truecaller/messaging/data/types/Draft$b;

    invoke-direct {v0}, Lcom/truecaller/messaging/data/types/Draft$b;-><init>()V

    .line 3
    sget-object v1, Le/a/a/g/a$a$a;->c:Le/a/a/g/a$a$a;

    iget-object v2, v7, Le/a/a/g/a$a;->f:[Lcom/truecaller/data/entity/messaging/Participant;

    array-length v3, v2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/truecaller/data/entity/messaging/Participant;

    const-string v3, "comparator"

    .line 4
    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "elements"

    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    invoke-static {v2, v3}, Le/q/f/a/d/a;->b3([Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    .line 6
    invoke-static {v3}, Ls1/u/i;->c1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v8

    .line 7
    new-instance v9, Ljava/util/TreeSet;

    sget-object v1, Le/a/a/g/a$a$a;->b:Le/a/a/g/a$a$a;

    invoke-direct {v9, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 8
    iget-object v1, v7, Le/a/a/g/a$a;->f:[Lcom/truecaller/data/entity/messaging/Participant;

    .line 9
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    array-length v3, v1

    const/4 v10, 0x0

    move v4, v10

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v1, v4

    .line 11
    iget-object v5, v5, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-array v1, v10, [Ljava/lang/String;

    .line 12
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    const-string v11, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {v1, v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    check-cast v1, [Ljava/lang/String;

    .line 14
    iget-object v2, v7, Le/a/a/g/a$a;->e:Le/a/a/g/a;

    .line 15
    iget-object v12, v2, Le/a/a/g/a;->c:Landroid/content/ContentResolver;

    .line 16
    sget-object v2, Le/a/m0/a1;->a:Landroid/net/Uri;

    .line 17
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "msg/msg_participants_with_contact_info"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 18
    array-length v3, v1

    move v4, v10

    :goto_1
    if-ge v4, v3, :cond_1

    aget-object v5, v1, v4

    const-string v6, "number"

    .line 19
    invoke-virtual {v2, v6, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 20
    :cond_1
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-string v17, "_id DESC"

    .line 21
    invoke-virtual/range {v12 .. v17}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const/4 v12, 0x0

    if-eqz v1, :cond_3

    .line 22
    iget-object v2, v7, Le/a/a/g/a$a;->e:Le/a/a/g/a;

    .line 23
    iget-object v2, v2, Le/a/a/g/a;->d:Le/a/a/g/g;

    .line 24
    invoke-interface {v2, v1}, Le/a/a/g/g;->k(Landroid/database/Cursor;)Le/a/a/g/j0/c0;

    move-result-object v13

    if-eqz v13, :cond_3

    .line 25
    :goto_2
    :try_start_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "participantCursor"

    .line 26
    invoke-static {v13, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v13}, Le/a/a/g/j0/c0;->g1()Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object v2

    const-string v1, "participantCursor.participant"

    invoke-static {v2, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    new-instance v14, Le/a/a/g/a$a$b;

    move-object v1, v14

    move-object v3, v13

    move-object/from16 v4, p0

    move-object v5, v8

    move-object v6, v9

    invoke-direct/range {v1 .. v6}, Le/a/a/g/a$a$b;-><init>(Lcom/truecaller/data/entity/messaging/Participant;Le/a/a/g/j0/c0;Le/a/a/g/a$a;Ljava/util/Set;Ljava/util/TreeSet;)V

    const-string v1, "$this$removeAll"

    .line 28
    invoke-static {v8, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "predicate"

    invoke-static {v14, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 29
    invoke-static {v8, v14, v1}, Ls1/u/i;->y(Ljava/lang/Iterable;Ls1/z/b/l;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 30
    :cond_2
    invoke-static {v13, v12}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    invoke-static {v13, v1}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    .line 31
    :cond_3
    :goto_3
    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 32
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v9, v2}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 33
    invoke-virtual {v9}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 34
    check-cast v3, Lcom/truecaller/data/entity/messaging/Participant;

    .line 35
    iget-object v3, v3, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_4
    new-array v2, v10, [Ljava/lang/String;

    .line 36
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 37
    check-cast v1, [Ljava/lang/String;

    .line 38
    iget-object v2, v7, Le/a/a/g/a$a;->e:Le/a/a/g/a;

    .line 39
    iget-object v13, v2, Le/a/a/g/a;->c:Landroid/content/ContentResolver;

    .line 40
    iget v2, v7, Le/a/a/g/a$a;->g:I

    invoke-static {v1, v2}, Le/a/b0/q/g0;->m([Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 41
    invoke-virtual/range {v13 .. v18}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 42
    iget-object v2, v7, Le/a/a/g/a$a;->e:Le/a/a/g/a;

    .line 43
    iget-object v2, v2, Le/a/a/g/a;->d:Le/a/a/g/g;

    .line 44
    invoke-interface {v2, v1}, Le/a/a/g/g;->t(Landroid/database/Cursor;)Le/a/a/g/j0/a;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 45
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Le/a/a/g/j0/a;->p()Lcom/truecaller/messaging/data/types/Conversation;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_5

    :cond_5
    move-object v2, v12

    .line 46
    :goto_5
    invoke-static {v1, v12}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object v2, v0

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    move-exception v0

    move-object v3, v0

    invoke-static {v1, v2}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3

    .line 47
    :cond_6
    invoke-virtual {v9, v8}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    :cond_7
    move-object v2, v12

    :goto_6
    new-array v1, v10, [Lcom/truecaller/data/entity/messaging/Participant;

    .line 48
    invoke-interface {v9, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, [Lcom/truecaller/data/entity/messaging/Participant;

    .line 49
    iget-object v3, v0, Lcom/truecaller/messaging/data/types/Draft$b;->c:Ljava/util/Set;

    invoke-static {v3, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    if-eqz v2, :cond_b

    .line 50
    iput-object v2, v0, Lcom/truecaller/messaging/data/types/Draft$b;->b:Lcom/truecaller/messaging/data/types/Conversation;

    .line 51
    iget-boolean v1, v2, Lcom/truecaller/messaging/data/types/Conversation;->C:Z

    .line 52
    iput-boolean v1, v0, Lcom/truecaller/messaging/data/types/Draft$b;->h:Z

    .line 53
    iget-object v1, v7, Le/a/a/g/a$a;->e:Le/a/a/g/a;

    .line 54
    iget-object v13, v1, Le/a/a/g/a;->c:Landroid/content/ContentResolver;

    .line 55
    iget-wide v1, v2, Lcom/truecaller/messaging/data/types/Conversation;->a:J

    invoke-static {v1, v2}, Le/a/b0/q/g0;->B(J)Landroid/net/Uri;

    move-result-object v14

    const/4 v15, 0x0

    .line 56
    iget-object v1, v7, Le/a/a/g/a$a;->e:Le/a/a/g/a;

    .line 57
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string v16, "(status & 2) = 2"

    .line 58
    invoke-virtual/range {v13 .. v18}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 59
    iget-object v2, v7, Le/a/a/g/a$a;->e:Le/a/a/g/a;

    .line 60
    iget-object v2, v2, Le/a/a/g/a;->d:Le/a/a/g/g;

    .line 61
    invoke-interface {v2, v1}, Le/a/a/g/g;->i(Landroid/database/Cursor;)Le/a/a/g/j0/q;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 62
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "msgCursor"

    .line 63
    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Le/a/a/g/j0/q;->getMessage()Lcom/truecaller/messaging/data/types/Message;

    move-result-object v2

    const-string v3, "msgCursor.message"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    iget-wide v3, v2, Lcom/truecaller/messaging/data/types/Message;->a:J

    .line 65
    iput-wide v3, v0, Lcom/truecaller/messaging/data/types/Draft$b;->a:J

    .line 66
    iget-wide v3, v2, Lcom/truecaller/messaging/data/types/Message;->B:J

    .line 67
    iput-wide v3, v0, Lcom/truecaller/messaging/data/types/Draft$b;->i:J

    .line 68
    iget-object v3, v2, Lcom/truecaller/messaging/data/types/Message;->p:[Lcom/truecaller/messaging/data/types/Mention;

    invoke-virtual {v0, v3}, Lcom/truecaller/messaging/data/types/Draft$b;->g([Lcom/truecaller/messaging/data/types/Mention;)Lcom/truecaller/messaging/data/types/Draft$b;

    .line 69
    iget-wide v3, v2, Lcom/truecaller/messaging/data/types/Message;->S:J

    .line 70
    iput-wide v3, v0, Lcom/truecaller/messaging/data/types/Draft$b;->p:J

    .line 71
    invoke-virtual {v2}, Lcom/truecaller/messaging/data/types/Message;->m()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 72
    iget-object v3, v2, Lcom/truecaller/messaging/data/types/Message;->y:Lcom/truecaller/messaging/data/types/ReplySnippet;

    .line 73
    iput-object v3, v0, Lcom/truecaller/messaging/data/types/Draft$b;->j:Lcom/truecaller/messaging/data/types/ReplySnippet;

    .line 74
    :cond_8
    iget-object v2, v2, Lcom/truecaller/messaging/data/types/Message;->o:[Lcom/truecaller/messaging/data/types/Entity;

    const-string v3, "message.entities"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    array-length v3, v2

    :goto_7
    if-ge v10, v3, :cond_a

    aget-object v4, v2, v10

    .line 76
    invoke-virtual {v4}, Lcom/truecaller/messaging/data/types/Entity;->r()Z

    move-result v5

    if-eqz v5, :cond_9

    check-cast v4, Lcom/truecaller/messaging/data/types/TextEntity;

    iget-object v4, v4, Lcom/truecaller/messaging/data/types/TextEntity;->i:Ljava/lang/String;

    .line 77
    iput-object v4, v0, Lcom/truecaller/messaging/data/types/Draft$b;->e:Ljava/lang/String;

    goto :goto_8

    .line 78
    :cond_9
    check-cast v4, Lcom/truecaller/messaging/data/types/BinaryEntity;

    invoke-virtual {v0, v4}, Lcom/truecaller/messaging/data/types/Draft$b;->b(Lcom/truecaller/messaging/data/types/BinaryEntity;)Lcom/truecaller/messaging/data/types/Draft$b;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :goto_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 79
    :cond_a
    invoke-static {v1, v12}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_9

    :catchall_4
    move-exception v0

    move-object v2, v0

    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    :catchall_5
    move-exception v0

    move-object v3, v0

    invoke-static {v1, v2}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3

    .line 80
    :cond_b
    :goto_9
    invoke-virtual {v0}, Lcom/truecaller/messaging/data/types/Draft$b;->c()Lcom/truecaller/messaging/data/types/Draft;

    move-result-object v0

    return-object v0
.end method
