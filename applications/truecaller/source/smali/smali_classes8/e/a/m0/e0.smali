.class public final Le/a/m0/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/b0/i/e/a$g;


# instance fields
.field public final a:Le/a/u3/g;


# direct methods
.method public constructor <init>(Le/a/u3/g;)V
    .locals 1

    const-string v0, "featuresRegistry"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/m0/e0;->a:Le/a/u3/g;

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

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    sget-object p4, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 p5, 0x18

    invoke-virtual {p4, p5, p6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p4

    sub-long/2addr p2, p4

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p4

    sget-object p6, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    iget-object p7, p0, Le/a/m0/e0;->a:Le/a/u3/g;

    invoke-virtual {p7}, Le/a/u3/g;->b0()Le/a/u3/i;

    move-result-object p7

    const-wide/16 v0, 0x3c

    invoke-interface {p7, v0, v1}, Le/a/u3/i;->d(J)J

    move-result-wide p7

    invoke-virtual {p6, p7, p8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p7

    sub-long/2addr p4, p7

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p7

    iget-object v0, p0, Le/a/m0/e0;->a:Le/a/u3/g;

    invoke-virtual {v0}, Le/a/u3/g;->c0()Le/a/u3/i;

    move-result-object v0

    const-wide/16 v1, 0x2d0

    invoke-interface {v0, v1, v2}, Le/a/u3/i;->d(J)J

    move-result-wide v0

    invoke-virtual {p6, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sub-long/2addr p7, v0

    .line 4
    invoke-virtual {p1}, Le/a/b0/i/c;->m()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const/4 p6, 0x3

    new-array p6, p6, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    aput-object p2, p6, p3

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    aput-object p2, p6, p3

    invoke-static {p7, p8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x2

    aput-object p2, p6, p3

    const-string p2, "\n    SELECT\n        m._id AS message_id,\n        m.conversation_id AS message_conversation_id,\n        m.info1 AS message_delivery_status,\n        ac.contact_name AS participant_name\n    FROM msg_messages m\n        LEFT JOIN msg_messages m2 ON m2.conversation_id = m.conversation_id \n            AND m2._id < m._id\n        LEFT JOIN msg_participants p ON p._id = m.participant_id\n        LEFT JOIN aggregated_contact ac ON ac._id = p.aggregated_contact_id\n    WHERE m.transport = 2 \n        AND m.status = 1\n        AND m.info16 IS NULL\n        AND m.date > ?\n        AND ((\n            m.info1 = 3 \n            AND m.info2 != 3 \n            AND m.date_sent < ?\n        ) OR (\n            m.info1 != 3 \n            AND m.info2 != 3 \n            AND m.date_sent < ?\n        ))\n        AND p.type = 0\n        AND m.conversation_id NOT IN (\n    SELECT DISTINCT conversation_id \n        FROM msg_messages\n        WHERE transport=2 AND (status & 1)=0\n)\n        AND m.conversation_id NOT IN (\n    SELECT DISTINCT conversation_id \n        FROM msg_messages\n        WHERE transport=2 \n            AND status = 1 \n            AND info16 = 0\n)\n        AND m2._id IS NULL\n    ORDER BY m._id\n    "

    invoke-virtual {p1, p2, p6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const-string p2, "provider.database.rawQue\u2026eAfterSentMs.toString()))"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
