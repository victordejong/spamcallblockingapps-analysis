.class public final Le/a/m0/t;
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

    const/4 p8, 0x0

    if-nez p4, :cond_0

    move p4, p2

    goto :goto_0

    :cond_0
    move p4, p8

    :goto_0
    if-eqz p4, :cond_7

    if-nez p5, :cond_1

    move p4, p2

    goto :goto_1

    :cond_1
    move p4, p8

    :goto_1
    if-eqz p4, :cond_6

    if-nez p6, :cond_2

    move p4, p2

    goto :goto_2

    :cond_2
    move p4, p8

    :goto_2
    if-eqz p4, :cond_5

    if-nez p7, :cond_3

    move p4, p2

    goto :goto_3

    :cond_3
    move p4, p8

    :goto_3
    if-eqz p4, :cond_4

    const-string p4, "group_id"

    .line 1
    invoke-virtual {p3, p4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    const-string p5, "sequence_number"

    .line 2
    invoke-virtual {p3, p5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p1}, Le/a/b0/i/c;->m()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const/4 p5, 0x2

    new-array p5, p5, [Ljava/lang/String;

    aput-object p4, p5, p8

    aput-object p3, p5, p2

    const-string p2, "\n    SELECT\n        gr.peer_id as im_peer_id,\n        gr.date as date,\n        gr.sequence_number as sequence_number,\n        gr.type as type,\n        iu.normalized_number as normalized_number,\n        ac.contact_name as name,\n        ac.contact_image_url as image_url,\n        IFNULL(ac.contact_phonebook_id, -1) as phonebook_id\n    FROM msg_im_group_reports gr\n        LEFT JOIN msg_im_users iu ON gr.peer_id = iu.im_peer_id\n        LEFT JOIN data d ON d.data_type = 4\n            AND d.data1 = iu.normalized_number\n        LEFT JOIN raw_contact rc on d.data_raw_contact_id = rc._id\n            OR  iu.tc_id = rc.tc_id\n        LEFT JOIN aggregated_contact ac on rc.aggregated_contact_id = ac._id\n    WHERE gr.group_id=? AND gr.sequence_number>=?\n    GROUP BY gr.peer_id, gr.type\n    ORDER BY MIN(gr.sequence_number), gr.type DESC\n"

    invoke-virtual {p1, p2, p5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1

    .line 4
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Sort order is not supported."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Selection args are not supported."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Selection is not supported."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Projection is not supported."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
