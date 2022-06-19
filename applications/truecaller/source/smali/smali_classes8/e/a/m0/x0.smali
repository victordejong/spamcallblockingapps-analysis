.class public final Le/a/m0/x0;
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

    const-string p4, "provider"

    invoke-static {p1, p4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "helper"

    invoke-static {p2, p4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "uri"

    invoke-static {p3, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "ids"

    .line 1
    invoke-virtual {p3, p2}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object p3

    .line 2
    invoke-static {p3, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    const/4 p4, 0x0

    new-array p5, p4, [Ljava/lang/String;

    invoke-static {p2, p5}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isTrue(Z[Ljava/lang/String;)V

    .line 3
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    const-string p5, "?"

    const-string p6, ","

    invoke-static {p5, p6, p2}, Lw3/c/a/a/a/h;->u(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    const-string p5, "StringUtils.repeat(\"?\", \",\", ids.size)"

    invoke-static {p2, p5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p5, 0x64

    .line 4
    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p5

    .line 5
    new-instance p6, Ljava/util/ArrayList;

    const/16 p7, 0xa

    invoke-static {p3, p7}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result p7

    invoke-direct {p6, p7}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p7

    if-eqz p7, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p7

    .line 7
    check-cast p7, Ljava/lang/String;

    .line 8
    invoke-virtual {p7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p7

    invoke-interface {p6, p7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {p5, p6}, Ls1/u/i;->l0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p3

    new-array p4, p4, [Ljava/lang/String;

    .line 9
    invoke-interface {p3, p4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    const-string p4, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {p3, p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    check-cast p3, [Ljava/lang/String;

    const-string p4, "m._id IN("

    const-string p5, ") AND m.classification = 0"

    .line 11
    invoke-static {p4, p2, p5}, Le/d/c/a/a;->C2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 12
    invoke-virtual {p1}, Le/a/b0/i/c;->m()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string p4, "\n            SELECT\n            m._id                                      AS message_id,\n            m.status                                   AS message_status,\n            m.raw_address                              AS message_sender_raw_address,\n            m.sim_token                                AS message_sim_token,\n            m.date                                     AS message_date,\n            m.conversation_id                          AS message_conversation_id,\n            m.classification                           AS classification,\n            m.language                                 AS language,\n            m.transport                                AS transport,\n            e.entity_info1                                  AS message_content,\n            c.split_criteria                           AS conversation_split_criteria,\n            ac.data1                       AS message_search_warning,\n            a.contact_badges                  AS contact_badges,\n            a.contact_name                                     AS message_sender_name\n            FROM msg_messages m\n                LEFT JOIN msg_entities e \n                    ON e.message_id = m._id\n                LEFT JOIN msg_conversations c \n                    ON c._id = m.conversation_id\n                LEFT JOIN msg_participants p\n                    ON p._id = m.participant_id\n                LEFT JOIN aggregated_contact a \n                    ON p.aggregated_contact_id = a._id\n                LEFT JOIN (\n                    SELECT data1, aggregated_contact_id FROM aggregated_contact_data \n                        WHERE \n                            data_type = 13 AND \n                            data1 = ? \n                        GROUP BY aggregated_contact_id\n                ) ac \n                    ON ac.aggregated_contact_id = p.aggregated_contact_id\n         WHERE "

    invoke-static {p4, p2}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const-string p2, "provider.database.rawQue\u2026messagesSelection\", args)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
