.class public final Le/a/m0/n;
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

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\n            SELECT\n                count()                                                     AS count,\n                m.date                                     AS message_date\n            FROM msg_entities e\n                LEFT JOIN msg_messages m ON e.message_id = m._id\n            WHERE (e.type=\'tenor/gif\' OR e.type=\'image/gif\')\n                AND e.entity_info2 = 0\n        "

    .line 2
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p5, :cond_1

    .line 3
    invoke-interface {p5}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p3, 0x1

    :goto_1
    if-nez p3, :cond_2

    const-string p3, " AND "

    .line 4
    invoke-static {p3, p5, p2}, Le/d/c/a/a;->L0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 5
    :cond_2
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p2, p3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Le/a/b0/i/c;->m()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    invoke-virtual {p1, p2, p6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const-string p2, "provider.database.rawQuery(sql, selectionArgs)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
