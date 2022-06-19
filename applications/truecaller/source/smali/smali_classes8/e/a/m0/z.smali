.class public final Le/a/m0/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/b0/i/e/a$g;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Le/a/b0/i/a;Le/a/b0/i/e/a;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 3

    const-string p4, "provider"

    invoke-static {p1, p4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "helper"

    invoke-static {p2, p4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "uri"

    invoke-static {p3, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "filter"

    .line 1
    invoke-virtual {p3, p2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    const-string p4, "\n    SELECT\n        SUM(e.entity_info3) AS media_size,\n        c._id AS media_coversation_id,\n        p.type AS participant_type,\n        p.normalized_destination AS participant_address,\n        a.contact_name AS participant_name,\n        IFNULL(a.contact_phonebook_id, -1) AS participant_pb_id,\n        a.contact_image_url AS participant_avatar,\n        ig.title AS group_title,\n        ig.avatar AS group_avatar\n    FROM msg_entities e\n        LEFT JOIN msg_messages m ON e.message_id = m._id\n        LEFT JOIN msg_conversations c ON c._id = m.conversation_id\n        LEFT JOIN msg_conversation_participants cp on cp.conversation_id = c._id\n        LEFT JOIN msg_participants p on cp.participant_id = p._id\n        LEFT JOIN aggregated_contact a on p.aggregated_contact_id = a._id\n        LEFT JOIN msg_im_group_info ig on p.normalized_destination = ig.im_group_id AND p.type = 4\n    WHERE m.transport = 2 AND e.entity_info2 = 0 AND\n             entity_type IN (4, 1, 2, 5)\n    "

    .line 3
    invoke-static {p4}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const/4 p7, 0x0

    if-eqz p2, :cond_2

    .line 4
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p8

    const/4 v0, 0x1

    if-lez p8, :cond_0

    move p8, v0

    goto :goto_0

    :cond_0
    move p8, p7

    :goto_0
    if-eqz p8, :cond_1

    move-object p8, p2

    goto :goto_1

    :cond_1
    const/4 p8, 0x0

    :goto_1
    if-eqz p8, :cond_2

    const-string p8, " AND (participant_name LIKE ? OR group_title LIKE ?)"

    .line 5
    invoke-virtual {p4, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p8, 0x2

    new-array p8, p8, [Ljava/lang/String;

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x25

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p8, p7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p8, v0

    invoke-static {p8}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    if-eqz p5, :cond_3

    .line 7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p8, " AND ("

    invoke-virtual {p2, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p5, 0x29

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    if-eqz p6, :cond_4

    .line 8
    invoke-static {p3, p6}, Ls1/u/i;->c(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_4
    const-string p2, " GROUP BY c._id"

    .line 9
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " HAVING media_size > 0"

    .line 10
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ORDER BY media_size DESC"

    .line 11
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p4, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p2, p4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1}, Le/a/b0/i/c;->m()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    new-array p4, p7, [Ljava/lang/String;

    .line 14
    invoke-interface {p3, p4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    const-string p4, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {p3, p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p3, [Ljava/lang/String;

    .line 15
    invoke-virtual {p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const-string p2, "provider.database.rawQue\u2026ery, args.toTypedArray())"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
