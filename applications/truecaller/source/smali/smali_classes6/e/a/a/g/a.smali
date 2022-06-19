.class public final Le/a/a/g/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/g/w;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Landroid/content/ContentResolver;

.field public final d:Le/a/a/g/g;

.field public final e:Le/a/u3/g;

.field public final f:Le/a/a/g/x;

.field public final g:Ls1/w/f;

.field public final h:Z

.field public final i:Le/a/o5/b0;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Le/a/a/g/g;Le/a/u3/g;Le/a/a/g/x;Ls1/w/f;ZLe/a/o5/b0;)V
    .locals 1
    .param p5    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "contentResolver"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cursorFactory"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selectionProvider"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asyncContext"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dateHelper"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/g/a;->c:Landroid/content/ContentResolver;

    iput-object p2, p0, Le/a/a/g/a;->d:Le/a/a/g/g;

    iput-object p3, p0, Le/a/a/g/a;->e:Le/a/u3/g;

    iput-object p4, p0, Le/a/a/g/a;->f:Le/a/a/g/x;

    iput-object p5, p0, Le/a/a/g/a;->g:Ls1/w/f;

    iput-boolean p6, p0, Le/a/a/g/a;->h:Z

    iput-object p7, p0, Le/a/a/g/a;->i:Le/a/o5/b0;

    const-string p1, "archived_date = 0"

    .line 2
    iput-object p1, p0, Le/a/a/g/a;->a:Ljava/lang/String;

    const-string p1, "pinned_date DESC, date DESC"

    .line 3
    iput-object p1, p0, Le/a/a/g/a;->b:Ljava/lang/String;

    return-void
.end method

.method public static final H(Le/a/a/g/a;Lcom/truecaller/messaging/data/types/InboxTab;)Landroid/database/Cursor;
    .locals 7

    .line 1
    iget-object v0, p0, Le/a/a/g/a;->f:Le/a/a/g/x;

    invoke-interface {v0, p1}, Le/a/a/g/x;->a(Lcom/truecaller/messaging/data/types/InboxTab;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Le/a/a/g/a;->c:Landroid/content/ContentResolver;

    .line 3
    invoke-virtual {p1}, Lcom/truecaller/messaging/data/types/InboxTab;->getConversationFilter()I

    move-result p0

    invoke-static {p0}, Le/a/b0/q/g0;->f(I)Landroid/net/Uri;

    move-result-object v2

    .line 4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 p1, 0x28

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") AND archived_date > 0"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x0

    const/4 v5, 0x0

    const-string v6, "date DESC, archived_date DESC"

    .line 5
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public static final I(Le/a/a/g/a;Lcom/truecaller/messaging/data/types/InboxTab;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 22

    .line 1
    invoke-static/range {p0 .. p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v1, p0

    .line 3
    iget-object v1, v1, Le/a/a/g/a;->c:Landroid/content/ContentResolver;

    .line 4
    invoke-virtual/range {p1 .. p1}, Lcom/truecaller/messaging/data/types/InboxTab;->getConversationFilter()I

    move-result v2

    invoke-static {v2}, Le/a/b0/q/g0;->f(I)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "_id"

    const-string v4, "date"

    const-string v5, "participants_name"

    const-string v6, "participants_normalized_destination"

    const-string v7, "participants_phonebook_id"

    const-string v8, "participants_image_url"

    const-string v9, "filter"

    const-string v10, "split_criteria"

    const-string v11, "im_group_id"

    const-string v12, "im_group_title"

    const-string v13, "im_group_avatar"

    const-string v14, "participants_type"

    .line 5
    filled-new-array/range {v3 .. v14}, [Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move-object/from16 v4, p2

    move-object/from16 v6, p3

    .line 6
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    .line 7
    :try_start_0
    new-instance v3, Le/a/a/g/e;

    invoke-direct {v3, v1}, Le/a/a/g/e;-><init>(Landroid/database/Cursor;)V

    const/4 v4, -0x1

    .line 8
    invoke-virtual {v3, v4}, Landroid/database/CursorWrapper;->moveToPosition(I)Z

    .line 9
    :goto_0
    invoke-virtual {v3}, Landroid/database/CursorWrapper;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "participants_normalized_destination"

    .line 10
    invoke-static {v3, v4}, Le/a/p5/s0/g;->F1(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Le/a/a/g/e;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    const-string v5, "readComposedStrings(stri\u2026_NORMALIZED_DESTINATION))"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    move-object v5, v4

    check-cast v5, Ljava/util/ArrayList;

    :try_start_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    new-instance v5, Le/a/a/g/e0;

    const-string v6, "_id"

    .line 13
    invoke-static {v3, v6}, Le/a/p5/s0/g;->E0(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v7

    const-string v6, "date"

    .line 14
    invoke-static {v3, v6}, Le/a/p5/s0/g;->E0(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v9

    const-string v6, "participants_name"

    .line 15
    invoke-static {v3, v6}, Le/a/p5/s0/g;->F1(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Le/a/a/g/e;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    const-string v11, "readComposedStrings(stri\u2026RTICIPANTS_GROUPED_NAME))"

    invoke-static {v6, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v6

    move-object v11, v6

    check-cast v11, Ljava/lang/String;

    .line 16
    invoke-static {v4}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    const-string v6, "numbers.first()"

    invoke-static {v4, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v12, v4

    check-cast v12, Ljava/lang/String;

    const-string v4, "participants_phonebook_id"

    .line 17
    invoke-static {v3, v4}, Le/a/p5/s0/g;->F1(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Le/a/c/p/a;->x2(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    const-string v4, "participants_image_url"

    .line 18
    invoke-static {v3, v4}, Le/a/p5/s0/g;->F1(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Le/a/a/g/e;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    const-string v6, "readComposedStrings(stri\u2026PANTS_GROUPED_IMAGE_URL))"

    invoke-static {v4, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Ljava/lang/String;

    const-string v4, "participants_type"

    .line 19
    invoke-static {v3, v4}, Le/a/p5/s0/g;->F1(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Le/a/c/p/a;->x2(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    const-string v4, "filter"

    .line 20
    invoke-static {v3, v4}, Le/a/p5/s0/g;->q0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v17

    const-string v4, "split_criteria"

    .line 21
    invoke-static {v3, v4}, Le/a/p5/s0/g;->q0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v18

    const-string v4, "im_group_id"

    .line 22
    invoke-static {v3, v4}, Le/a/p5/s0/g;->F1(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v4, "im_group_title"

    .line 23
    invoke-static {v3, v4}, Le/a/p5/s0/g;->F1(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v4, "im_group_avatar"

    .line 24
    invoke-static {v3, v4}, Le/a/p5/s0/g;->F1(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object v6, v5

    .line 25
    invoke-direct/range {v6 .. v21}, Le/a/a/g/e0;-><init>(JJLjava/lang/String;Ljava/lang/String;JLjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 27
    :cond_1
    invoke-static {v1, v2}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_1

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

    invoke-static {v1, v2}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3

    :cond_2
    :goto_1
    return-object v0
.end method

.method public static final J(Le/a/a/g/a;I)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n                    ("

    .line 3
    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4
    iget-object v2, p0, Le/a/a/g/a;->f:Le/a/a/g/x;

    sget-object v3, Lcom/truecaller/messaging/data/types/InboxTab;->PERSONAL:Lcom/truecaller/messaging/data/types/InboxTab;

    invoke-interface {v2, v3}, Le/a/a/g/x;->a(Lcom/truecaller/messaging/data/types/InboxTab;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")\n                    AND (unread_messages_count > 0 OR marked_unread = 1)\n                    AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-object p0, p0, Le/a/a/g/a;->a:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " \n                    AND type =  "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\n                "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 7
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final K(Le/a/a/g/a;Lcom/truecaller/messaging/data/types/InboxTab;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x28

    .line 3
    invoke-static {v1}, Le/d/c/a/a;->w(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Le/a/a/g/a;->f:Le/a/a/g/x;

    invoke-interface {v2, p1}, Le/a/a/g/x;->a(Lcom/truecaller/messaging/data/types/InboxTab;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " AND (unread_messages_count > 0 OR marked_unread = 1)"

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " AND "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Le/a/a/g/a;->a:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x20

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public A(JIILjava/lang/Integer;Ls1/w/d;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII",
            "Ljava/lang/Integer;",
            "Ls1/w/d<",
            "-",
            "Le/a/a/g/j0/q;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object v8, p0

    .line 1
    iget-object v9, v8, Le/a/a/g/a;->g:Ls1/w/f;

    new-instance v10, Le/a/a/g/a$c0;

    const/4 v7, 0x0

    move-object v0, v10

    move-object v1, p0

    move v2, p3

    move v3, p4

    move-wide v4, p1

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v7}, Le/a/a/g/a$c0;-><init>(Le/a/a/g/a;IIJLjava/lang/Integer;Ls1/w/d;)V

    move-object/from16 v0, p6

    invoke-static {v9, v10, v0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public B(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/g/a;->g:Ls1/w/f;

    new-instance v1, Le/a/a/g/a$d;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Le/a/a/g/a$d;-><init>(Le/a/a/g/a;Ljava/util/List;Ls1/w/d;)V

    invoke-static {v0, v1, p2}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public C(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/g/a;->g:Ls1/w/f;

    new-instance v1, Le/a/a/g/a$v;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Le/a/a/g/a$v;-><init>(Le/a/a/g/a;Ljava/lang/String;Ls1/w/d;)V

    invoke-static {v0, v1, p2}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public D(JLs1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/messaging/data/types/Message;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/g/a;->g:Ls1/w/f;

    new-instance v1, Le/a/a/g/a$q;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Le/a/a/g/a$q;-><init>(Le/a/a/g/a;JLs1/w/d;)V

    invoke-static {v0, v1, p3}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public E(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/messaging/data/types/Message;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/g/a;->g:Ls1/w/f;

    new-instance v1, Le/a/a/g/a$r;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Le/a/a/g/a$r;-><init>(Le/a/a/g/a;Ljava/lang/String;Ls1/w/d;)V

    invoke-static {v0, v1, p2}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public F(JLs1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/g/a;->g:Ls1/w/f;

    new-instance v1, Le/a/a/g/a$w;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Le/a/a/g/a$w;-><init>(Le/a/a/g/a;JLs1/w/d;)V

    invoke-static {v0, v1, p3}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public G(JIIZLjava/lang/Integer;Ls1/w/d;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JIIZ",
            "Ljava/lang/Integer;",
            "Ls1/w/d<",
            "-",
            "Le/a/a/g/j0/q;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object v9, p0

    .line 1
    iget-object v10, v9, Le/a/a/g/a;->g:Ls1/w/f;

    new-instance v11, Le/a/a/g/a$t;

    const/4 v8, 0x0

    move-object v0, v11

    move-object v1, p0

    move/from16 v2, p5

    move-wide v3, p1

    move-object/from16 v5, p6

    move v6, p3

    move/from16 v7, p4

    invoke-direct/range {v0 .. v8}, Le/a/a/g/a$t;-><init>(Le/a/a/g/a;ZJLjava/lang/Integer;IILs1/w/d;)V

    move-object/from16 v0, p7

    invoke-static {v10, v11, v0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Le/a/a/g/e0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/g/a;->g:Ls1/w/f;

    new-instance v1, Le/a/a/g/a$p;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Le/a/a/g/a$p;-><init>(Le/a/a/g/a;Ls1/w/d;)V

    invoke-static {v0, v1, p1}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/util/Collection;Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Long;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/g/a;->g:Ls1/w/f;

    new-instance v1, Le/a/a/g/a$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Le/a/a/g/a$b;-><init>(Le/a/a/g/a;Ljava/util/Collection;Ls1/w/d;)V

    invoke-static {v0, v1, p2}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public c(Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Le/a/a/g/j0/q;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/g/a;->g:Ls1/w/f;

    new-instance v1, Le/a/a/g/a$d0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Le/a/a/g/a$d0;-><init>(Le/a/a/g/a;Ls1/w/d;)V

    invoke-static {v0, v1, p1}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/String;JIILs1/w/d;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JII",
            "Ls1/w/d<",
            "-",
            "Le/a/a/g/j0/q;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object v8, p0

    .line 1
    iget-object v9, v8, Le/a/a/g/a;->g:Ls1/w/f;

    new-instance v10, Le/a/a/g/a$l;

    const/4 v7, 0x0

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move v3, p4

    move/from16 v4, p5

    move-wide v5, p2

    invoke-direct/range {v0 .. v7}, Le/a/a/g/a$l;-><init>(Le/a/a/g/a;Ljava/lang/String;IIJLs1/w/d;)V

    move-object/from16 v0, p6

    invoke-static {v9, v10, v0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public e(Ljava/lang/String;Ljava/lang/Integer;Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ls1/w/d<",
            "-",
            "Le/a/a/g/j0/d;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/g/a;->g:Ls1/w/f;

    new-instance v1, Le/a/a/g/a$m;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, p1, v2}, Le/a/a/g/a$m;-><init>(Le/a/a/g/a;Ljava/lang/Integer;Ljava/lang/String;Ls1/w/d;)V

    invoke-static {v0, v1, p3}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public f(Ljava/lang/Integer;Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ls1/w/d<",
            "-",
            "Le/a/a/g/j0/a;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/g/a;->g:Ls1/w/f;

    new-instance v1, Le/a/a/g/a$g;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Le/a/a/g/a$g;-><init>(Le/a/a/g/a;Ljava/lang/Integer;Ls1/w/d;)V

    invoke-static {v0, v1, p2}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public g(JLs1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ls1/w/d<",
            "-",
            "Le/a/a/g/j0/q;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/g/a;->g:Ls1/w/f;

    new-instance v1, Le/a/a/g/a$u;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Le/a/a/g/a$u;-><init>(Le/a/a/g/a;JLs1/w/d;)V

    invoke-static {v0, v1, p3}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public h(JLjava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Le/a/a/g/j0/q;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/g/a;->g:Ls1/w/f;

    new-instance v7, Le/a/a/g/a$x;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p0

    move-object v3, p3

    move-wide v4, p1

    invoke-direct/range {v1 .. v6}, Le/a/a/g/a$x;-><init>(Le/a/a/g/a;Ljava/lang/String;JLs1/w/d;)V

    invoke-static {v0, v7, p4}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public i(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "+",
            "Lcom/truecaller/messaging/data/types/Conversation;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/g/a;->g:Ls1/w/f;

    new-instance v1, Le/a/a/g/a$i;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Le/a/a/g/a$i;-><init>(Le/a/a/g/a;Ljava/util/List;Ls1/w/d;)V

    invoke-static {v0, v1, p2}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public j(JLs1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/messaging/data/types/Conversation;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/g/a;->g:Ls1/w/f;

    new-instance v1, Le/a/a/g/a$f;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Le/a/a/g/a$f;-><init>(Le/a/a/g/a;JLs1/w/d;)V

    invoke-static {v0, v1, p3}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public k(Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Le/a/a/g/j0/a;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/g/a;->g:Ls1/w/f;

    new-instance v1, Le/a/a/g/a$e0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Le/a/a/g/a$e0;-><init>(Le/a/a/g/a;Ls1/w/d;)V

    invoke-static {v0, v1, p1}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public l(JJJIILs1/w/d;)Ljava/lang/Object;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJII",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/messaging/data/types/Message;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object v11, p0

    .line 1
    iget-object v12, v11, Le/a/a/g/a;->g:Ls1/w/f;

    new-instance v13, Le/a/a/g/a$s;

    const/4 v10, 0x0

    move-object v0, v13

    move-object v1, p0

    move-wide/from16 v2, p5

    move/from16 v4, p7

    move/from16 v5, p8

    move-wide v6, p1

    move-wide/from16 v8, p3

    invoke-direct/range {v0 .. v10}, Le/a/a/g/a$s;-><init>(Le/a/a/g/a;JIIJJLs1/w/d;)V

    move-object/from16 v0, p9

    invoke-static {v12, v13, v0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public m(Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "Le/a/a/g/e0;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/g/a;->g:Ls1/w/f;

    new-instance v1, Le/a/a/g/a$a0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Le/a/a/g/a$a0;-><init>(Le/a/a/g/a;Ls1/w/d;)V

    invoke-static {v0, v1, p1}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public n(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ls1/w/d;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "Lcom/truecaller/messaging/data/types/Message;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/g/a;->g:Ls1/w/f;

    new-instance v7, Le/a/a/g/a$b0;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Le/a/a/g/a$b0;-><init>(Le/a/a/g/a;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ls1/w/d;)V

    invoke-static {v0, v7, p4}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public o(Lcom/truecaller/messaging/data/types/InboxTab;Ljava/util/Set;Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/messaging/data/types/InboxTab;",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Le/a/a/g/j0/a;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/g/a;->g:Ls1/w/f;

    new-instance v1, Le/a/a/g/a$f0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Le/a/a/g/a$f0;-><init>(Le/a/a/g/a;Lcom/truecaller/messaging/data/types/InboxTab;Ljava/util/Set;Ls1/w/d;)V

    invoke-static {v0, v1, p3}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public p(Lcom/truecaller/messaging/data/types/InboxTab;Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/messaging/data/types/InboxTab;",
            "Ls1/w/d<",
            "-",
            "Le/a/a/g/j0/a;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/g/a;->g:Ls1/w/f;

    new-instance v1, Le/a/a/g/a$y;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Le/a/a/g/a$y;-><init>(Le/a/a/g/a;Lcom/truecaller/messaging/data/types/InboxTab;Ls1/w/d;)V

    invoke-static {v0, v1, p2}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public q(Ljava/lang/Long;Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ls1/w/d<",
            "-",
            "Le/a/a/g/j0/q;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/g/a;->g:Ls1/w/f;

    new-instance v1, Le/a/a/g/a$n;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Le/a/a/g/a$n;-><init>(Le/a/a/g/a;Ljava/lang/Long;Ls1/w/d;)V

    invoke-static {v0, v1, p2}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public r(JLs1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ls1/w/d<",
            "-",
            "Le/a/a/g/j0/q;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/g/a;->g:Ls1/w/f;

    new-instance v1, Le/a/a/g/a$z;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Le/a/a/g/a$z;-><init>(Le/a/a/g/a;JLs1/w/d;)V

    invoke-static {v0, v1, p3}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public s(Ls1/w/d;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Le/a/a/g/v;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/16 p1, 0x28

    .line 1
    invoke-static {p1}, Le/d/c/a/a;->w(C)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Le/a/a/g/a;->f:Le/a/a/g/x;

    sget-object v1, Lcom/truecaller/messaging/data/types/InboxTab;->PROMOTIONAL:Lcom/truecaller/messaging/data/types/InboxTab;

    invoke-interface {v0, v1}, Le/a/a/g/x;->a(Lcom/truecaller/messaging/data/types/InboxTab;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") AND "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Le/a/a/g/a;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v1, p0, Le/a/a/g/a;->c:Landroid/content/ContentResolver;

    const/4 v0, 0x4

    .line 3
    invoke-static {v0}, Le/a/b0/q/g0;->f(I)Landroid/net/Uri;

    move-result-object v2

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Le/a/a/g/a;->b:Ljava/lang/String;

    const-string v5, " LIMIT 8"

    invoke-static {v3, v4, v5}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v4, p1

    .line 5
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 6
    iget-object v3, p0, Le/a/a/g/a;->d:Le/a/a/g/g;

    invoke-interface {v3, v1}, Le/a/a/g/g;->t(Landroid/database/Cursor;)Le/a/a/g/j0/a;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 7
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 8
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 9
    invoke-interface {v1}, Le/a/a/g/j0/a;->p()Lcom/truecaller/messaging/data/types/Conversation;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 10
    :cond_0
    invoke-static {v1, v2}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 11
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v1, p1}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    move-object v3, v2

    :goto_1
    if-eqz v3, :cond_3

    .line 12
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v1, 0x1

    :goto_3
    if-eqz v1, :cond_4

    return-object v2

    .line 13
    :cond_4
    iget-object v4, p0, Le/a/a/g/a;->c:Landroid/content/ContentResolver;

    .line 14
    invoke-static {v0}, Le/a/b0/q/g0;->f(I)Landroid/net/Uri;

    move-result-object v5

    const-string v0, "ConversationListView.get\u2026sationFilter.PROMOTIONAL)"

    invoke-static {v5, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " AND unread_messages_count > 0"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x10

    const-string v6, "MAX(date)"

    .line 16
    invoke-static/range {v4 .. v10}, Le/a/p5/s0/f;->F(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_4

    :cond_5
    const-wide/16 v0, 0x0

    .line 17
    :goto_4
    new-instance p1, Le/a/a/g/v;

    invoke-direct {p1, v3, v0, v1}, Le/a/a/g/v;-><init>(Ljava/util/List;J)V

    return-object p1
.end method

.method public t(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/truecaller/messaging/data/types/InboxTab;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ljava/util/Map<",
            "Lcom/truecaller/messaging/data/types/InboxTab;",
            "+",
            "Ljava/util/List<",
            "Le/a/a/g/e0;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/g/a;->g:Ls1/w/f;

    new-instance v1, Le/a/a/g/a$g0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Le/a/a/g/a$g0;-><init>(Le/a/a/g/a;Ljava/util/List;Ls1/w/d;)V

    invoke-static {v0, v1, p2}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public u([Lcom/truecaller/data/entity/messaging/Participant;ILs1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/truecaller/data/entity/messaging/Participant;",
            "I",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/messaging/data/types/Draft;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Le/a/a/g/a$j;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Le/a/a/g/a$j;

    iget v1, v0, Le/a/a/g/a$j;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/a/g/a$j;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/a/g/a$j;

    invoke-direct {v0, p0, p3}, Le/a/a/g/a$j;-><init>(Le/a/a/g/a;Ls1/w/d;)V

    :goto_0
    iget-object p3, v0, Le/a/a/g/a$j;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/a/g/a$j;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    array-length p3, p1

    if-nez p3, :cond_3

    move p3, v3

    goto :goto_1

    :cond_3
    const/4 p3, 0x0

    :goto_1
    xor-int/2addr p3, v3

    const-string v2, "Provide at least one participant"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, v2}, Lcom/truecaller/log/AssertionUtil;->isTrue(Z[Ljava/lang/String;)V

    .line 5
    iget-object p3, p0, Le/a/a/g/a;->g:Ls1/w/f;

    new-instance v2, Le/a/a/g/a$a;

    const/4 v4, 0x0

    invoke-direct {v2, p0, p1, p2, v4}, Le/a/a/g/a$a;-><init>(Le/a/a/g/a;[Lcom/truecaller/data/entity/messaging/Participant;ILs1/w/d;)V

    iput v3, v0, Le/a/a/g/a$j;->e:I

    invoke-static {p3, v2, v0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_4

    return-object v1

    :cond_4
    :goto_2
    const-string p1, "withContext(asyncContext\u2026 result.build()\n        }"

    invoke-static {p3, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p3
.end method

.method public v(Ljava/lang/String;ILs1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ls1/w/d<",
            "-",
            "Le/a/a/g/j0/x;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/g/a;->g:Ls1/w/f;

    new-instance v1, Le/a/a/g/a$k;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Le/a/a/g/a$k;-><init>(Le/a/a/g/a;Ljava/lang/String;ILs1/w/d;)V

    invoke-static {v0, v1, p3}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public w(JLs1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ls1/w/d<",
            "-",
            "Le/a/a/g/f;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/g/a;->g:Ls1/w/f;

    new-instance v1, Le/a/a/g/a$h;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Le/a/a/g/a$h;-><init>(Le/a/a/g/a;JLs1/w/d;)V

    invoke-static {v0, v1, p3}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public x(JIILs1/w/d;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII",
            "Ls1/w/d<",
            "-",
            "Le/a/a/g/j0/q;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/g/a;->g:Ls1/w/f;

    new-instance v8, Le/a/a/g/a$o;

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v7}, Le/a/a/g/a$o;-><init>(Le/a/a/g/a;JIILs1/w/d;)V

    invoke-static {v0, v8, p5}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public y(Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "+",
            "Lcom/truecaller/messaging/data/types/Conversation;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/g/a;->g:Ls1/w/f;

    new-instance v1, Le/a/a/g/a$e;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Le/a/a/g/a$e;-><init>(Le/a/a/g/a;Ls1/w/d;)V

    invoke-static {v0, v1, p1}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public z(JLs1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/a/g/a;->g:Ls1/w/f;

    new-instance v1, Le/a/a/g/a$c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Le/a/a/g/a$c;-><init>(Le/a/a/g/a;JLs1/w/d;)V

    invoke-static {v0, v1, p3}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
