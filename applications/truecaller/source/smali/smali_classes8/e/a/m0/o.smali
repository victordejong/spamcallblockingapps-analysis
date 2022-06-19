.class public final Le/a/m0/o;
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
    .locals 0

    const-string p8, "provider"

    invoke-static {p1, p8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p8, "helper"

    invoke-static {p2, p8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "uri"

    invoke-static {p3, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    if-nez p4, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    move p3, p2

    :goto_0
    if-eqz p3, :cond_4

    const-string p3, "SELECT * FROM (SELECT c.type, c._id AS conversation_id, gp.im_group_id AS group_id, gi.title AS group_name, gi.avatar AS group_avatar, gi.roles AS group_roles, GROUP_CONCAT(ac.contact_name) AS participants_names, GROUP_CONCAT(p.normalized_destination) AS participants_normalized_addresses, ts.archived_date AS archived_date, ts.snippet_text AS snippet_text, ts.latest_message_media_count AS latest_message_media_count, ts.latest_message_media_type AS latest_message_media_type, ts.date_sorting AS date_sorting, ts.latest_message_status AS latest_message_status, ts.latest_message_transport AS latest_message_transport FROM msg_conversations c LEFT JOIN msg_conversation_participants cp ON c._id = cp.conversation_id LEFT JOIN msg_thread_stats ts ON ts.conversation_id = c._id LEFT JOIN msg_im_group_participants gp ON c.tc_group_id = gp.im_group_id LEFT JOIN msg_im_group_info gi ON gp.im_group_id = gi.im_group_id LEFT JOIN msg_participants p ON p.tc_im_peer_id = gp.im_peer_id OR cp.participant_id = p._id LEFT JOIN aggregated_contact ac ON ac._id = p.aggregated_contact_id WHERE ts.filter = 1 GROUP BY c._id ) se WHERE se.type = 1 "

    .line 1
    invoke-static {p3}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    if-eqz p5, :cond_1

    .line 2
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p8, " AND ("

    invoke-virtual {p4, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p5, 0x29

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    if-eqz p7, :cond_2

    const-string p4, " ORDER BY "

    .line 3
    invoke-static {p4, p7, p3}, Le/d/c/a/a;->L0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 4
    :cond_2
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p3, p4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Le/a/b0/i/c;->m()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    if-eqz p6, :cond_3

    goto :goto_1

    :cond_3
    new-array p6, p2, [Ljava/lang/String;

    :goto_1
    invoke-virtual {p1, p3, p6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const-string p2, "provider.database.rawQue\u2026 selectionArgs.orEmpty())"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 6
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "A projection is not supported for this URI"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
