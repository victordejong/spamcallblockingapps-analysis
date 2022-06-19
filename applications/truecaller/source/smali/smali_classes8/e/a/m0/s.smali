.class public final Le/a/m0/s;
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
    .locals 18

    move-object/from16 v0, p3

    move-object/from16 v1, p5

    move-object/from16 v2, p7

    const-string v3, "provider"

    move-object/from16 v4, p1

    invoke-static {v4, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "helper"

    move-object/from16 v5, p2

    invoke-static {v5, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "uri"

    invoke-static {v0, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "group_id"

    .line 1
    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "peer_id"

    .line 2
    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "self_peer_id"

    .line 3
    invoke-virtual {v0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "filter_out_removed_participants"

    const/4 v8, 0x1

    .line 4
    invoke-virtual {v0, v7, v8}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v0

    .line 5
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "\n    SELECT\n        gp.im_peer_id as im_peer_id,\n        gp.roles as roles,\n        iu.normalized_number as normalized_number,\n        IFNULL(ac.contact_name, iu.fallback_name) as name,\n        IFNULL(rc.contact_name, iu.fallback_name) as public_name,\n        ac.contact_image_url as image_url,\n        IFNULL(ac.contact_phonebook_id, -1) as phonebook_id,\n        IFNULL(ac.contact_source, 0) as source,\n        ac.tc_id as tc_contact_id,\n        ac.contact_search_time AS search_time,\n        ac.cache_control AS cache_control,\n        d.data9 as raw_number,\n        gp.im_peer_id = ? AS is_self\n    FROM msg_im_group_participants gp\n        LEFT JOIN msg_im_users iu ON gp.im_peer_id = iu.im_peer_id\n        LEFT JOIN data d ON d.data_type = 4\n            AND d.data1 = iu.normalized_number\n        LEFT JOIN raw_contact rc on d.data_raw_contact_id = rc._id\n            OR  iu.tc_id = rc.tc_id\n        LEFT JOIN aggregated_contact ac on rc.aggregated_contact_id = ac._id\n"

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-array v8, v8, [Ljava/lang/String;

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    const-string v6, ""

    :goto_0
    const/4 v9, 0x0

    aput-object v6, v8, v9

    .line 6
    invoke-static {v8}, Ls1/u/i;->d0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    if-eqz v3, :cond_1

    const-string v5, "WHERE gp.im_group_id = ?"

    .line 7
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    if-eqz v5, :cond_8

    const-string v3, "WHERE gp.im_peer_id = ?"

    .line 9
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    if-eqz v0, :cond_2

    const-string v0, " AND gp.roles != 0"

    .line 11
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const/16 v0, 0x29

    if-eqz v1, :cond_3

    .line 12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AND ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    if-eqz p6, :cond_4

    move-object/from16 v1, p6

    goto :goto_2

    :cond_4
    new-array v1, v9, [Ljava/lang/String;

    .line 13
    :goto_2
    invoke-static {v6, v1}, Ls1/u/i;->c(Ljava/util/Collection;[Ljava/lang/Object;)Z

    const-string v1, " GROUP BY gp.im_peer_id"

    .line 14
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_5

    const-string v1, " ORDER BY "

    .line 15
    invoke-static {v1, v2, v7}, Le/d/c/a/a;->L0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 16
    :cond_5
    invoke-virtual/range {p1 .. p1}, Le/a/b0/i/c;->m()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "query.toString()"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p4, :cond_6

    goto :goto_3

    :cond_6
    const-string v3, "SELECT "

    .line 17
    invoke-static {v3}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x3f

    move-object/from16 v10, p4

    invoke-static/range {v10 .. v17}, Le/q/f/a/d/a;->M1([Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " FROM ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_3
    new-array v0, v9, [Ljava/lang/String;

    .line 18
    invoke-interface {v6, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    const-string v3, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {v0, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    .line 19
    invoke-virtual {v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 20
    invoke-virtual/range {p1 .. p1}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-eqz v1, :cond_7

    if-eqz v0, :cond_7

    .line 21
    invoke-static {}, Le/a/b0/q/g0;->E()Landroid/net/Uri;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :cond_7
    return-object v0

    :cond_8
    const/4 v0, 0x0

    return-object v0
.end method
