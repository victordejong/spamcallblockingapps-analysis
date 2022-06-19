.class public final Le/a/m0/c1/s;
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
    .locals 1

    const-string p6, "provider"

    invoke-static {p1, p6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p6, "helper"

    invoke-static {p2, p6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "uri"

    invoke-static {p3, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$this$parseId"

    .line 1
    invoke-static {p3, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 p6, -0x1

    .line 2
    :try_start_0
    invoke-static {p3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide p2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-wide p2, p6

    :goto_0
    const/4 p8, 0x1

    const/4 v0, 0x0

    if-nez p4, :cond_0

    move p4, p8

    goto :goto_1

    :cond_0
    move p4, v0

    :goto_1
    if-eqz p4, :cond_5

    if-nez p5, :cond_1

    move p4, p8

    goto :goto_2

    :cond_1
    move p4, v0

    :goto_2
    if-eqz p4, :cond_4

    cmp-long p4, p2, p6

    if-eqz p4, :cond_2

    move p4, p8

    goto :goto_3

    :cond_2
    move p4, v0

    :goto_3
    if-eqz p4, :cond_3

    .line 3
    invoke-virtual {p1}, Le/a/b0/i/c;->m()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    new-array p4, p8, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p4, v0

    const-string p2, "\n    SELECT\n        m.raw_id as raw_message_id,\n        m.sequence_number as sequence_number,\n        p.type as participant_type,\n        p.normalized_destination as normalized_destination,\n        p.tc_im_peer_id as im_peer_id,\n        p.filter_action as filter_action,\n        c.tc_group_id as group_id\n    FROM msg_messages m\n        INNER JOIN msg_participants p ON p._id = m.participant_id\n            AND p.tc_im_peer_id NOT NULL\n        INNER JOIN msg_conversations c ON c._id = m.conversation_id\n    WHERE m._id = ? AND m.transport = 2\n"

    invoke-virtual {p1, p2, p4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const-string p2, "provider.database.rawQue\u2026Of(messageId.toString()))"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 4
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Message id must be specified"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Selection not supported"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Project not supported"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
