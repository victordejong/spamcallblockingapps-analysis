.class public final Le/a/m0/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/b0/i/e/a$g;


# instance fields
.field public final a:Le/a/u3/g;

.field public final b:Z


# direct methods
.method public constructor <init>(Le/a/u3/g;Z)V
    .locals 1

    const-string v0, "featuresRegistry"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/m0/h0;->a:Le/a/u3/g;

    iput-boolean p2, p0, Le/a/m0/h0;->b:Z

    return-void
.end method


# virtual methods
.method public c(Le/a/b0/i/a;Le/a/b0/i/e/a;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 6

    const-string p4, "provider"

    invoke-static {p1, p4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "helper"

    invoke-static {p2, p4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "uri"

    invoke-static {p3, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "conversation_id"

    .line 1
    invoke-virtual {p3, p2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    const-string p4, "filter"

    .line 2
    invoke-virtual {p3, p4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const/4 p8, 0x0

    if-eqz p4, :cond_0

    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    goto :goto_0

    :cond_0
    move-object p4, p8

    :goto_0
    invoke-static {p4}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string p4, "split_criteria"

    .line 3
    invoke-virtual {p3, p4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p8

    :cond_1
    invoke-static {p8}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-virtual {p8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string p3, "\n            SELECT\n                m._id                                      AS message_id,\n                m.status                                   AS message_status,\n                m.conversation_id                          AS message_conversation_id,\n                m.transport                                AS message_transport,\n                m.language                                 AS message_language,\n                m.date                                     AS message_date,\n                m.sequence_number                          AS message_sequence_number,\n                m.info11                        AS message_mentions,\n                e.entity_info1                                    AS message_content,\n                e.type                              AS message_content_type\n            FROM msg_messages m\n                LEFT JOIN msg_entities e ON m._id = e.message_id\n        "

    const-string p4, " WHERE "

    const-string p8, "message_conversation_id=?"

    .line 4
    invoke-static {p3, p4, p8}, Le/d/c/a/a;->L(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 5
    iget-object v0, p0, Le/a/m0/h0;->a:Le/a/u3/g;

    iget-boolean v1, p0, Le/a/m0/h0;->b:Z

    const/4 v4, 0x0

    const/16 v5, 0x10

    invoke-static/range {v0 .. v5}, Le/a/b0/q/g0;->b(Le/a/u3/g;ZIIZI)Ljava/lang/String;

    move-result-object p4

    const-string p8, " AND "

    const-string v0, "(message_status & 1)=0"

    invoke-static {p3, p4, p8, v0, p8}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "message_transport IN (0, 4, 1, 7, 2)"

    .line 6
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " AND message_content_type=\'text/plain\'"

    .line 7
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p5, :cond_2

    .line 8
    invoke-static {p8, p5, p3}, Le/d/c/a/a;->L0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_2
    if-eqz p7, :cond_3

    const-string p4, " ORDER BY "

    .line 9
    invoke-static {p4, p7, p3}, Le/d/c/a/a;->L0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 10
    :cond_3
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p3, p4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 12
    invoke-interface {p4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p2, 0x0

    if-eqz p6, :cond_4

    goto :goto_1

    :cond_4
    new-array p6, p2, [Ljava/lang/String;

    .line 13
    :goto_1
    invoke-static {p4, p6}, Ls1/u/i;->c(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 14
    invoke-virtual {p1}, Le/a/b0/i/c;->m()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    new-array p2, p2, [Ljava/lang/String;

    .line 15
    invoke-interface {p4, p2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    const-string p4, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {p2, p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, [Ljava/lang/String;

    .line 16
    invoke-virtual {p1, p3, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const-string p2, "provider.database.rawQue\u2026sql, args.toTypedArray())"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
