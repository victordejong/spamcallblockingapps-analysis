.class public final Le/a/m0/y;
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

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-nez p5, :cond_0

    move p5, p2

    goto :goto_0

    :cond_0
    move p5, p3

    :goto_0
    if-eqz p5, :cond_7

    if-nez p6, :cond_1

    move p5, p2

    goto :goto_1

    :cond_1
    move p5, p3

    :goto_1
    if-eqz p5, :cond_6

    if-nez p4, :cond_2

    move p4, p2

    goto :goto_2

    :cond_2
    move p4, p3

    :goto_2
    if-eqz p4, :cond_5

    if-nez p7, :cond_3

    goto :goto_3

    :cond_3
    move p2, p3

    :goto_3
    if-eqz p2, :cond_4

    .line 1
    invoke-virtual {p1}, Le/a/b0/i/c;->m()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string p2, "\n        SELECT date AS business_im_date \n            FROM msg_messages\n            WHERE (status & 1) = 0 AND conversation_id IN \n                (SELECT _id FROM msg_conversations WHERE type=3)\n            ORDER BY date DESC LIMIT 1\n        "

    invoke-virtual {p1, p2, p6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const-string p2, "provider.database.rawQuery(QUERY, selectionArgs)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 2
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "sortOrder is not supported"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "projection is not supported"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "selectionArgs is not supported"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "selection is not supported"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
