.class public final Le/a/c/c/d/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/c/d/k;


# instance fields
.field public final a:Ln3/c0/q;

.field public final b:Le/a/c/c0/g;


# direct methods
.method public constructor <init>(Ln3/c0/q;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Le/a/c/c0/g;

    invoke-direct {v0}, Le/a/c/c0/g;-><init>()V

    iput-object v0, p0, Le/a/c/c/d/l;->b:Le/a/c/c0/g;

    .line 3
    iput-object p1, p0, Le/a/c/c/d/l;->a:Ln3/c0/q;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;)Lq3/a/x2/f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/lang/String;",
            ")",
            "Lq3/a/x2/f<",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/models/pdo/ExtendedPdo;",
            ">;>;"
        }
    .end annotation

    const-string v0, "\n           SELECT mct.conversationId, mct.transport as \"transport\", final.messageID as \"messageID\", final.d as \"d\", \n            final.k as \"k\", final.p as \"p\", mct.classified_by as \"classified_by\", mct.message as \"message\", mct.updateCategory as \"updateCategory\", \n            mct.no_of_words as \"no_of_words\", mct.confidence_score as \"confidence_score\",\n            final.c as \"c\",final.o as \"o\",final.f as \"f\", final.g as \"g\",final.s as \"s\", final.account_model_id as \"account_model_id\", final.val1 as \"val1\",\n            final.val2 as \"val2\",final.val3 as \"val3\", final.val4 as \"val4\", final.val5 as \"val5\", final.datetime as \"datetime\", final.address as \"address\",\n            final.msg_date as \"msg_date\", final.date as \"date\", final.dff_val1 as \"dff_val1\", final.dff_val2 as \"dff_val2\", \n            final.dff_val3 as \"dff_val3\", final.dff_val4 as \"dff_val4\", final.dff_val5 as \"dff_val5\", final.active as \"active\", final.state as \"state\",\n            final.synthetic_record_id as \"synthetic_record_id\", final.deleted \"deleted\", final.created_at as \"created_at\", \n            final.spam_category as \"spam_category\" FROM\n            (SELECT messageID,d,k, p, c, o, f, g, s, account_model_id, val1,\n           val2, val3, val4, val5, datetime, address, msg_date, date, dff_val1, dff_val2, dff_val3, dff_val4, dff_val5, active,\n           state,synthetic_record_id,deleted,created_at, spam_category FROM parsed_data_object_table as p WHERE messageID >= 0 AND active=1 AND deleted=0\n           AND d = ? AND ((date < date(?) AND date >= date(?)) \n           OR (datetime == \'\' AND msg_date < ? AND msg_date >= ?)) UNION ALL SELECT\n           pt.messageID as messageID, pdo.d, pdo.k, pdo.p, pdo.c, pdo.o, pdo.f, pdo.g, pdo.s, pdo.account_model_id, pdo.val1, pdo.val2, pdo.val3,\n           pdo.val4, pdo.val5, pdo.datetime, pdo.address, pdo.msg_date, pdo.date, pdo.dff_val1, pdo.dff_val2, pdo.dff_val3,\n           pdo.dff_val4, pdo.dff_val5, pdo.active, pdo.state, pdo.synthetic_record_id, pdo.deleted, pdo.created_at, pdo.spam_category FROM (select * from\n           parsed_data_object_table where messageID < 0 AND active=1 AND deleted=0 \n           AND d = ? AND ((date < date(?) AND date >= date(?)) \n           OR (date == \'\' AND msg_date < ? AND msg_date >= ?)))\n           as pdo LEFT JOIN (select synthetic_record_id,max(messageID) as messageID from \n           parsed_data_object_table where synthetic_record_id IS NOT NULL group by 1) as pt on pdo.messageID = pt.synthetic_record_id )as final JOIN \n           sms_backup_table mct on final.messageID = mct.messageID ORDER BY final.date ASC \n        "

    const/16 v1, 0xa

    .line 1
    invoke-static {v0, v1}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    const/4 v2, 0x1

    if-nez p7, :cond_0

    .line 2
    invoke-virtual {v0, v2}, Ln3/c0/y;->y0(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, v2, p7}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    :goto_0
    const/4 v2, 0x2

    if-nez p1, :cond_1

    .line 4
    invoke-virtual {v0, v2}, Ln3/c0/y;->y0(I)V

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {v0, v2, p1}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    :goto_1
    const/4 v2, 0x3

    if-nez p2, :cond_2

    .line 6
    invoke-virtual {v0, v2}, Ln3/c0/y;->y0(I)V

    goto :goto_2

    .line 7
    :cond_2
    invoke-virtual {v0, v2, p2}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    :goto_2
    const/4 v2, 0x4

    .line 8
    invoke-virtual {v0, v2, p3, p4}, Ln3/c0/y;->l0(IJ)V

    const/4 v2, 0x5

    .line 9
    invoke-virtual {v0, v2, p5, p6}, Ln3/c0/y;->l0(IJ)V

    const/4 v2, 0x6

    if-nez p7, :cond_3

    .line 10
    invoke-virtual {v0, v2}, Ln3/c0/y;->y0(I)V

    goto :goto_3

    .line 11
    :cond_3
    invoke-virtual {v0, v2, p7}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    :goto_3
    const/4 p7, 0x7

    if-nez p1, :cond_4

    .line 12
    invoke-virtual {v0, p7}, Ln3/c0/y;->y0(I)V

    goto :goto_4

    .line 13
    :cond_4
    invoke-virtual {v0, p7, p1}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    :goto_4
    const/16 p1, 0x8

    if-nez p2, :cond_5

    .line 14
    invoke-virtual {v0, p1}, Ln3/c0/y;->y0(I)V

    goto :goto_5

    .line 15
    :cond_5
    invoke-virtual {v0, p1, p2}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    :goto_5
    const/16 p1, 0x9

    .line 16
    invoke-virtual {v0, p1, p3, p4}, Ln3/c0/y;->l0(IJ)V

    .line 17
    invoke-virtual {v0, v1, p5, p6}, Ln3/c0/y;->l0(IJ)V

    .line 18
    iget-object p1, p0, Le/a/c/c/d/l;->a:Ln3/c0/q;

    const/4 p2, 0x0

    const-string p3, "parsed_data_object_table"

    const-string p4, "sms_backup_table"

    filled-new-array {p3, p4}, [Ljava/lang/String;

    move-result-object p3

    new-instance p4, Le/a/c/c/d/l$b;

    invoke-direct {p4, p0, v0}, Le/a/c/c/d/l$b;-><init>(Le/a/c/c/d/l;Ln3/c0/y;)V

    invoke-static {p1, p2, p3, p4}, Ln3/c0/g;->a(Ln3/c0/q;Z[Ljava/lang/String;Ljava/util/concurrent/Callable;)Lq3/a/x2/f;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;)Lq3/a/x2/f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/lang/String;",
            ")",
            "Lq3/a/x2/f<",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/models/pdo/ExtendedPdo;",
            ">;>;"
        }
    .end annotation

    const-string v0, "\n           SELECT mct.conversationId, mct.transport as \"transport\", final.messageID as \"messageID\", final.d as \"d\", \n            final.k as \"k\", final.p as \"p\", mct.classified_by as \"classified_by\", mct.message as \"message\", mct.updateCategory as \"updateCategory\", \n            mct.no_of_words as \"no_of_words\", mct.confidence_score as \"confidence_score\",\n            final.c as \"c\",final.o as \"o\",final.f as \"f\", final.g as \"g\",final.s as \"s\", final.account_model_id as \"account_model_id\", final.val1 as \"val1\",\n            final.val2 as \"val2\",final.val3 as \"val3\", final.val4 as \"val4\", final.val5 as \"val5\", final.datetime as \"datetime\", final.address as \"address\",\n            final.msg_date as \"msg_date\", final.date as \"date\", final.dff_val1 as \"dff_val1\", final.dff_val2 as \"dff_val2\", \n            final.dff_val3 as \"dff_val3\", final.dff_val4 as \"dff_val4\", final.dff_val5 as \"dff_val5\", final.active as \"active\", final.state as \"state\",\n            final.synthetic_record_id as \"synthetic_record_id\", final.deleted \"deleted\", final.created_at as \"created_at\", \n            final.spam_category as \"spam_category\" FROM\n            (SELECT messageID,d,k, p, c, o, f, g, s, account_model_id, val1,\n           val2, val3, val4, val5, datetime, address, msg_date, date, dff_val1, dff_val2, dff_val3, dff_val4, dff_val5, active,\n           state,synthetic_record_id,deleted,created_at, spam_category FROM parsed_data_object_table as p WHERE messageID >= 0 AND active=1 AND deleted=0\n           AND d = ? AND ((date > date(?) AND date <= date(?)) \n           OR (date == \'\' AND msg_date > ? AND msg_date <= ?)) UNION ALL SELECT\n           pt.messageID as messageID, pdo.d, pdo.k, pdo.p, pdo.c, pdo.o, pdo.f, pdo.g, pdo.s, pdo.account_model_id, pdo.val1, pdo.val2, pdo.val3,\n           pdo.val4, pdo.val5, pdo.datetime, pdo.address, pdo.msg_date, pdo.date, pdo.dff_val1, pdo.dff_val2, pdo.dff_val3,\n           pdo.dff_val4, pdo.dff_val5, pdo.active, pdo.state, pdo.synthetic_record_id, pdo.deleted, pdo.created_at, pdo.spam_category FROM (select * from\n           parsed_data_object_table where messageID < 0 AND active=1 AND deleted=0 \n           AND d = ? AND ((date > date(?) AND date <= date(?)) \n           OR (date == \'\' AND msg_date > ? AND msg_date <= ?)))\n           as pdo LEFT JOIN (select synthetic_record_id,max(messageID) as messageID from \n           parsed_data_object_table where synthetic_record_id IS NOT NULL group by 1) as pt on pdo.messageID = pt.synthetic_record_id )as final JOIN \n           sms_backup_table mct on final.messageID = mct.messageID ORDER BY final.date ASC \n        "

    const/16 v1, 0xa

    .line 1
    invoke-static {v0, v1}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    const/4 v2, 0x1

    if-nez p7, :cond_0

    .line 2
    invoke-virtual {v0, v2}, Ln3/c0/y;->y0(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, v2, p7}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    :goto_0
    const/4 v2, 0x2

    if-nez p1, :cond_1

    .line 4
    invoke-virtual {v0, v2}, Ln3/c0/y;->y0(I)V

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {v0, v2, p1}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    :goto_1
    const/4 v2, 0x3

    if-nez p2, :cond_2

    .line 6
    invoke-virtual {v0, v2}, Ln3/c0/y;->y0(I)V

    goto :goto_2

    .line 7
    :cond_2
    invoke-virtual {v0, v2, p2}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    :goto_2
    const/4 v2, 0x4

    .line 8
    invoke-virtual {v0, v2, p3, p4}, Ln3/c0/y;->l0(IJ)V

    const/4 v2, 0x5

    .line 9
    invoke-virtual {v0, v2, p5, p6}, Ln3/c0/y;->l0(IJ)V

    const/4 v2, 0x6

    if-nez p7, :cond_3

    .line 10
    invoke-virtual {v0, v2}, Ln3/c0/y;->y0(I)V

    goto :goto_3

    .line 11
    :cond_3
    invoke-virtual {v0, v2, p7}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    :goto_3
    const/4 p7, 0x7

    if-nez p1, :cond_4

    .line 12
    invoke-virtual {v0, p7}, Ln3/c0/y;->y0(I)V

    goto :goto_4

    .line 13
    :cond_4
    invoke-virtual {v0, p7, p1}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    :goto_4
    const/16 p1, 0x8

    if-nez p2, :cond_5

    .line 14
    invoke-virtual {v0, p1}, Ln3/c0/y;->y0(I)V

    goto :goto_5

    .line 15
    :cond_5
    invoke-virtual {v0, p1, p2}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    :goto_5
    const/16 p1, 0x9

    .line 16
    invoke-virtual {v0, p1, p3, p4}, Ln3/c0/y;->l0(IJ)V

    .line 17
    invoke-virtual {v0, v1, p5, p6}, Ln3/c0/y;->l0(IJ)V

    .line 18
    iget-object p1, p0, Le/a/c/c/d/l;->a:Ln3/c0/q;

    const/4 p2, 0x0

    const-string p3, "parsed_data_object_table"

    const-string p4, "sms_backup_table"

    filled-new-array {p3, p4}, [Ljava/lang/String;

    move-result-object p3

    new-instance p4, Le/a/c/c/d/l$c;

    invoke-direct {p4, p0, v0}, Le/a/c/c/d/l$c;-><init>(Le/a/c/c/d/l;Ln3/c0/y;)V

    invoke-static {p1, p2, p3, p4}, Ln3/c0/g;->a(Ln3/c0/q;Z[Ljava/lang/String;Ljava/util/concurrent/Callable;)Lq3/a/x2/f;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;)Lq3/a/x2/f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/lang/String;",
            ")",
            "Lq3/a/x2/f<",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/models/pdo/ExtendedPdo;",
            ">;>;"
        }
    .end annotation

    const-string v0, "\n           SELECT mct.conversationId, mct.transport as \"transport\", final.messageID as \"messageID\", final.d as \"d\", \n            final.k as \"k\", final.p as \"p\", mct.classified_by as \"classified_by\", mct.message as \"message\", mct.updateCategory as \"updateCategory\", \n            mct.no_of_words as \"no_of_words\", mct.confidence_score as \"confidence_score\",\n            final.c as \"c\",final.o as \"o\",final.f as \"f\", final.g as \"g\",final.s as \"s\", final.account_model_id as \"account_model_id\", final.val1 as \"val1\",\n            final.val2 as \"val2\",final.val3 as \"val3\", final.val4 as \"val4\", final.val5 as \"val5\", final.datetime as \"datetime\", final.address as \"address\",\n            final.msg_date as \"msg_date\", final.date as \"date\", final.dff_val1 as \"dff_val1\", final.dff_val2 as \"dff_val2\", \n            final.dff_val3 as \"dff_val3\", final.dff_val4 as \"dff_val4\", final.dff_val5 as \"dff_val5\", final.active as \"active\", final.state as \"state\",\n            final.synthetic_record_id as \"synthetic_record_id\", final.deleted \"deleted\", final.created_at as \"created_at\", \n            final.spam_category as \"spam_category\" FROM\n            (SELECT messageID,d,k, p, c, o, f, g, s, account_model_id, val1,\n           val2, val3, val4, val5, datetime, address, msg_date, date, dff_val1, dff_val2, dff_val3, dff_val4, dff_val5, active,\n           state,synthetic_record_id,deleted,created_at, spam_category FROM parsed_data_object_table as p WHERE messageID >= 0 AND active=1 AND deleted=0\n           AND d = ? AND ((date <= date(?) AND date >= date(?)) \n           OR (date == \'\' AND msg_date <= ? AND msg_date >= ?)) UNION ALL SELECT\n           pt.messageID as messageID, pdo.d, pdo.k, pdo.p, pdo.c, pdo.o, pdo.f, pdo.g, pdo.s, pdo.account_model_id, pdo.val1, pdo.val2, pdo.val3,\n           pdo.val4, pdo.val5, pdo.datetime, pdo.address, pdo.msg_date, pdo.date, pdo.dff_val1, pdo.dff_val2, pdo.dff_val3,\n           pdo.dff_val4, pdo.dff_val5, pdo.active, pdo.state, pdo.synthetic_record_id, pdo.deleted, pdo.created_at, pdo.spam_category FROM (select * from\n           parsed_data_object_table where messageID < 0 AND active=1 AND deleted=0 \n           AND d = ? AND ((date <= date(?) AND date >= date(?)) \n           OR (date == \'\' AND msg_date <= ? AND msg_date >= ?)))\n           as pdo LEFT JOIN (select synthetic_record_id,max(messageID) as messageID from \n           parsed_data_object_table where synthetic_record_id IS NOT NULL group by 1) as pt on pdo.messageID = pt.synthetic_record_id )as final JOIN \n           sms_backup_table mct on final.messageID = mct.messageID ORDER BY final.date ASC \n        "

    const/16 v1, 0xa

    .line 1
    invoke-static {v0, v1}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    const/4 v2, 0x1

    if-nez p7, :cond_0

    .line 2
    invoke-virtual {v0, v2}, Ln3/c0/y;->y0(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, v2, p7}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    :goto_0
    const/4 v2, 0x2

    if-nez p1, :cond_1

    .line 4
    invoke-virtual {v0, v2}, Ln3/c0/y;->y0(I)V

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {v0, v2, p1}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    :goto_1
    const/4 v2, 0x3

    if-nez p2, :cond_2

    .line 6
    invoke-virtual {v0, v2}, Ln3/c0/y;->y0(I)V

    goto :goto_2

    .line 7
    :cond_2
    invoke-virtual {v0, v2, p2}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    :goto_2
    const/4 v2, 0x4

    .line 8
    invoke-virtual {v0, v2, p3, p4}, Ln3/c0/y;->l0(IJ)V

    const/4 v2, 0x5

    .line 9
    invoke-virtual {v0, v2, p5, p6}, Ln3/c0/y;->l0(IJ)V

    const/4 v2, 0x6

    if-nez p7, :cond_3

    .line 10
    invoke-virtual {v0, v2}, Ln3/c0/y;->y0(I)V

    goto :goto_3

    .line 11
    :cond_3
    invoke-virtual {v0, v2, p7}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    :goto_3
    const/4 p7, 0x7

    if-nez p1, :cond_4

    .line 12
    invoke-virtual {v0, p7}, Ln3/c0/y;->y0(I)V

    goto :goto_4

    .line 13
    :cond_4
    invoke-virtual {v0, p7, p1}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    :goto_4
    const/16 p1, 0x8

    if-nez p2, :cond_5

    .line 14
    invoke-virtual {v0, p1}, Ln3/c0/y;->y0(I)V

    goto :goto_5

    .line 15
    :cond_5
    invoke-virtual {v0, p1, p2}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    :goto_5
    const/16 p1, 0x9

    .line 16
    invoke-virtual {v0, p1, p3, p4}, Ln3/c0/y;->l0(IJ)V

    .line 17
    invoke-virtual {v0, v1, p5, p6}, Ln3/c0/y;->l0(IJ)V

    .line 18
    iget-object p1, p0, Le/a/c/c/d/l;->a:Ln3/c0/q;

    const/4 p2, 0x0

    const-string p3, "parsed_data_object_table"

    const-string p4, "sms_backup_table"

    filled-new-array {p3, p4}, [Ljava/lang/String;

    move-result-object p3

    new-instance p4, Le/a/c/c/d/l$a;

    invoke-direct {p4, p0, v0}, Le/a/c/c/d/l$a;-><init>(Le/a/c/c/d/l;Ln3/c0/y;)V

    invoke-static {p1, p2, p3, p4}, Ln3/c0/g;->a(Ln3/c0/q;Z[Ljava/lang/String;Ljava/util/concurrent/Callable;)Lq3/a/x2/f;

    move-result-object p1

    return-object p1
.end method

.method public d(JJLjava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 47
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/models/pdo/ExtendedPdo;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-object/from16 v0, p6

    const-string v6, "\n"

    const-string v7, "           SELECT mct.conversationId as \"conversationId\", mct.transport as \"transport\", final.messageID as \"messageID\", final.d as \"d\", "

    const-string v8, "            final.k as \"k\", final.p as \"p\", mct.classified_by as \"classified_by\", mct.message as \"message\", mct.updateCategory as \"updateCategory\","

    .line 1
    invoke-static {v6, v7, v6, v8, v6}, Le/d/c/a/a;->M(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "            mct.no_of_words as \"no_of_words\", mct.confidence_score as \"confidence_score\","

    const-string v9, "            final.c as \"c\",final.o as \"o\",final.f as \"f\", final.g as \"g\",final.s as \"s\", final.account_model_id as \"account_model_id\", final.val1 as \"val1\","

    .line 2
    invoke-static {v7, v8, v6, v9, v6}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "            final.val2 as \"val2\",final.val3 as \"val3\", final.val4 as \"val4\", final.val5 as \"val5\", final.datetime as \"datetime\", final.address as \"address\","

    const-string v9, "            final.msg_date as \"msg_date\", final.date as \"date\", final.dff_val1 as \"dff_val1\", final.dff_val2 as \"dff_val2\", "

    .line 3
    invoke-static {v7, v8, v6, v9, v6}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "            final.dff_val3 as \"dff_val3\", final.dff_val4 as \"dff_val4\", final.dff_val5 as \"dff_val5\", final.active as \"active\", final.state as \"state\","

    const-string v9, "            final.synthetic_record_id as \"synthetic_record_id\", final.deleted \"deleted\", final.created_at as \"created_at\","

    .line 4
    invoke-static {v7, v8, v6, v9, v6}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "            final.spam_category as \"spam_category\" FROM (SELECT messageID,d,k, p, c, o, f, g, s, account_model_id, val1,"

    const-string v9, "           val2, val3, val4, val5, datetime, address, msg_date, date, dff_val1, dff_val2, dff_val3, dff_val4, dff_val5, active,"

    .line 5
    invoke-static {v7, v8, v6, v9, v6}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "           state,synthetic_record_id,deleted,created_at, spam_category "

    const-string v9, "            FROM parsed_data_object_table as p WHERE messageID >= 0 AND active=1 AND deleted=0"

    .line 6
    invoke-static {v7, v8, v6, v9, v6}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "           AND d = "

    const-string v9, "?"

    const-string v10, " AND ((msg_date BETWEEN "

    .line 7
    invoke-static {v7, v8, v9, v10, v9}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, " AND "

    .line 8
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ") OR messageID IN ("

    .line 10
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v11

    .line 12
    invoke-static {v7, v11}, Ln3/c0/h0/d;->a(Ljava/lang/StringBuilder;I)V

    const-string v12, ")) UNION ALL SELECT"

    .line 13
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "           pt.messageID as messageID, pdo.d, pdo.k, pdo.p, pdo.c, pdo.o, pdo.f, pdo.g, pdo.s, pdo.account_model_id, pdo.val1, pdo.val2,"

    .line 15
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "           pdo.val3, pdo.val4, pdo.val5, pdo.datetime, pdo.address, pdo.msg_date, pdo.date, pdo.dff_val1, pdo.dff_val2, pdo.dff_val3,"

    .line 17
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "           pdo.dff_val4, pdo.dff_val5, pdo.active, pdo.state, pdo.synthetic_record_id, pdo.deleted, pdo.created_at, pdo.spam_category FROM"

    const-string v13, "           (select * from parsed_data_object_table where messageID < 0 AND active=1 AND deleted=0 and d="

    .line 18
    invoke-static {v7, v6, v12, v6, v13}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-static {v7, v9, v10, v9, v6}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "           AND "

    .line 20
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v8

    .line 24
    invoke-static {v7, v8}, Ln3/c0/h0/d;->a(Ljava/lang/StringBuilder;I)V

    const-string v9, "))) as pdo LEFT JOIN (select synthetic_record_id,max(messageID) as messageID"

    .line 25
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "           from parsed_data_object_table where synthetic_record_id IS NOT NULL group by 1) as pt on pdo.messageID = pt.synthetic_record_id) as final JOIN"

    .line 27
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "           sms_backup_table mct on final.messageID = mct.messageID ORDER BY final.date ASC "

    .line 29
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "        "

    .line 30
    invoke-static {v7, v6, v9}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v7, v11, 0x6

    add-int/2addr v8, v7

    .line 31
    invoke-static {v6, v8}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v6

    const/4 v8, 0x1

    if-nez v0, :cond_0

    .line 32
    invoke-virtual {v6, v8}, Ln3/c0/y;->y0(I)V

    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {v6, v8, v0}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    :goto_0
    const/4 v8, 0x2

    .line 34
    invoke-virtual {v6, v8, v2, v3}, Ln3/c0/y;->l0(IJ)V

    const/4 v8, 0x3

    .line 35
    invoke-virtual {v6, v8, v4, v5}, Ln3/c0/y;->l0(IJ)V

    .line 36
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v9, 0x4

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    if-nez v10, :cond_1

    .line 37
    invoke-virtual {v6, v9}, Ln3/c0/y;->y0(I)V

    goto :goto_2

    .line 38
    :cond_1
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v6, v9, v12, v13}, Ln3/c0/y;->l0(IJ)V

    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v8, v11, 0x4

    if-nez v0, :cond_3

    .line 39
    invoke-virtual {v6, v8}, Ln3/c0/y;->y0(I)V

    goto :goto_3

    .line 40
    :cond_3
    invoke-virtual {v6, v8, v0}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    :goto_3
    add-int/lit8 v0, v11, 0x5

    .line 41
    invoke-virtual {v6, v0, v2, v3}, Ln3/c0/y;->l0(IJ)V

    .line 42
    invoke-virtual {v6, v7, v4, v5}, Ln3/c0/y;->l0(IJ)V

    add-int/lit8 v11, v11, 0x7

    .line 43
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-nez v2, :cond_4

    .line 44
    invoke-virtual {v6, v11}, Ln3/c0/y;->y0(I)V

    goto :goto_5

    .line 45
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v6, v11, v2, v3}, Ln3/c0/y;->l0(IJ)V

    :goto_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 46
    :cond_5
    iget-object v0, v1, Le/a/c/c/d/l;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 47
    iget-object v0, v1, Le/a/c/c/d/l;->a:Ln3/c0/q;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v6, v2, v3}, Ln3/c0/h0/b;->b(Ln3/c0/q;Ln3/e0/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v0, "conversationId"

    .line 48
    invoke-static {v2, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v3, "transport"

    .line 49
    invoke-static {v2, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "messageID"

    .line 50
    invoke-static {v2, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "d"

    .line 51
    invoke-static {v2, v5}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v7, "k"

    .line 52
    invoke-static {v2, v7}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "p"

    .line 53
    invoke-static {v2, v8}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "classified_by"

    .line 54
    invoke-static {v2, v9}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "message"

    .line 55
    invoke-static {v2, v10}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "updateCategory"

    .line 56
    invoke-static {v2, v11}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "no_of_words"

    .line 57
    invoke-static {v2, v12}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "confidence_score"

    .line 58
    invoke-static {v2, v13}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "c"

    .line 59
    invoke-static {v2, v14}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "o"

    .line 60
    invoke-static {v2, v15}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v6

    :try_start_1
    const-string v6, "f"

    .line 61
    invoke-static {v2, v6}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    move/from16 p1, v6

    const-string v6, "g"

    .line 62
    invoke-static {v2, v6}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    move/from16 p2, v6

    const-string v6, "s"

    .line 63
    invoke-static {v2, v6}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    move/from16 p3, v6

    const-string v6, "account_model_id"

    .line 64
    invoke-static {v2, v6}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    move/from16 p4, v6

    const-string v6, "val1"

    .line 65
    invoke-static {v2, v6}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    move/from16 p5, v6

    const-string v6, "val2"

    .line 66
    invoke-static {v2, v6}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    move/from16 p6, v6

    const-string v6, "val3"

    .line 67
    invoke-static {v2, v6}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    move/from16 v17, v6

    const-string v6, "val4"

    .line 68
    invoke-static {v2, v6}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    move/from16 v18, v6

    const-string v6, "val5"

    .line 69
    invoke-static {v2, v6}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    move/from16 v19, v6

    const-string v6, "datetime"

    .line 70
    invoke-static {v2, v6}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    move/from16 v20, v6

    const-string v6, "address"

    .line 71
    invoke-static {v2, v6}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    move/from16 v21, v6

    const-string v6, "msg_date"

    .line 72
    invoke-static {v2, v6}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    move/from16 v22, v6

    const-string v6, "date"

    .line 73
    invoke-static {v2, v6}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    move/from16 v23, v6

    const-string v6, "dff_val1"

    .line 74
    invoke-static {v2, v6}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    move/from16 v24, v6

    const-string v6, "dff_val2"

    .line 75
    invoke-static {v2, v6}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    move/from16 v25, v6

    const-string v6, "dff_val3"

    .line 76
    invoke-static {v2, v6}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    move/from16 v26, v6

    const-string v6, "dff_val4"

    .line 77
    invoke-static {v2, v6}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    move/from16 v27, v6

    const-string v6, "dff_val5"

    .line 78
    invoke-static {v2, v6}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    move/from16 v28, v6

    const-string v6, "active"

    .line 79
    invoke-static {v2, v6}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    move/from16 v29, v6

    const-string v6, "state"

    .line 80
    invoke-static {v2, v6}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    move/from16 v30, v6

    const-string v6, "synthetic_record_id"

    .line 81
    invoke-static {v2, v6}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    move/from16 v31, v6

    const-string v6, "deleted"

    .line 82
    invoke-static {v2, v6}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    move/from16 v32, v6

    const-string v6, "created_at"

    .line 83
    invoke-static {v2, v6}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    move/from16 v33, v6

    const-string v6, "spam_category"

    .line 84
    invoke-static {v2, v6}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    move/from16 v34, v6

    .line 85
    new-instance v6, Ljava/util/ArrayList;

    move/from16 v35, v15

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v15

    invoke-direct {v6, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 86
    :goto_6
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15

    if-eqz v15, :cond_24

    .line 87
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v37

    .line 88
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    move/from16 v45, v0

    .line 89
    iget-object v0, v1, Le/a/c/c/d/l;->b:Le/a/c/c0/g;

    invoke-virtual {v0, v15}, Le/a/c/c0/g;->e(I)Lcom/truecaller/insights/commons/model/Transport;

    move-result-object v39

    .line 90
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 91
    iget-object v15, v1, Le/a/c/c/d/l;->b:Le/a/c/c0/g;

    invoke-virtual {v15, v0}, Le/a/c/c0/g;->d(I)Lcom/truecaller/insights/models/pdo/ClassifierType;

    move-result-object v42

    .line 92
    invoke-interface {v2, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    :goto_7
    move-object/from16 v40, v0

    goto :goto_8

    .line 93
    :cond_6
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 94
    :goto_8
    invoke-interface {v2, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    :goto_9
    move-object/from16 v41, v0

    goto :goto_a

    .line 95
    :cond_7
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    .line 96
    :goto_a
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v44

    .line 97
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getFloat(I)F

    move-result v43

    .line 98
    new-instance v0, Lcom/truecaller/insights/models/pdo/ExtendedPdo;

    move-object/from16 v36, v0

    invoke-direct/range {v36 .. v44}, Lcom/truecaller/insights/models/pdo/ExtendedPdo;-><init>(JLcom/truecaller/insights/commons/model/Transport;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/insights/models/pdo/ClassifierType;FI)V

    move v15, v9

    move/from16 v36, v10

    .line 99
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 100
    invoke-virtual {v0, v9, v10}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setMessageID(J)V

    .line 101
    invoke-interface {v2, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_8

    const/4 v9, 0x0

    goto :goto_b

    .line 102
    :cond_8
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 103
    :goto_b
    invoke-virtual {v0, v9}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setD(Ljava/lang/String;)V

    .line 104
    invoke-interface {v2, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_9

    const/4 v9, 0x0

    goto :goto_c

    .line 105
    :cond_9
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 106
    :goto_c
    invoke-virtual {v0, v9}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setK(Ljava/lang/String;)V

    .line 107
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_a

    const/4 v9, 0x0

    goto :goto_d

    .line 108
    :cond_a
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 109
    :goto_d
    invoke-virtual {v0, v9}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setP(Ljava/lang/String;)V

    .line 110
    invoke-interface {v2, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_b

    const/4 v9, 0x0

    goto :goto_e

    .line 111
    :cond_b
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 112
    :goto_e
    invoke-virtual {v0, v9}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setC(Ljava/lang/String;)V

    move/from16 v9, v35

    .line 113
    invoke-interface {v2, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_c

    const/4 v10, 0x0

    goto :goto_f

    .line 114
    :cond_c
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 115
    :goto_f
    invoke-virtual {v0, v10}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setO(Ljava/lang/String;)V

    move/from16 v10, p1

    .line 116
    invoke-interface {v2, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v35

    if-eqz v35, :cond_d

    const/16 v35, 0x0

    :goto_10
    move/from16 p1, v3

    move-object/from16 v3, v35

    goto :goto_11

    .line 117
    :cond_d
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    goto :goto_10

    .line 118
    :goto_11
    invoke-virtual {v0, v3}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setF(Ljava/lang/String;)V

    move/from16 v3, p2

    .line 119
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v35

    if-eqz v35, :cond_e

    const/16 v35, 0x0

    :goto_12
    move/from16 p2, v3

    move-object/from16 v3, v35

    goto :goto_13

    .line 120
    :cond_e
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    goto :goto_12

    .line 121
    :goto_13
    invoke-virtual {v0, v3}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setG(Ljava/lang/String;)V

    move/from16 v3, p3

    .line 122
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v35

    if-eqz v35, :cond_f

    const/16 v35, 0x0

    :goto_14
    move/from16 p3, v3

    move-object/from16 v3, v35

    goto :goto_15

    .line 123
    :cond_f
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    goto :goto_14

    .line 124
    :goto_15
    invoke-virtual {v0, v3}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setS(Ljava/lang/String;)V

    move/from16 v3, p4

    .line 125
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v35

    if-eqz v35, :cond_10

    const/16 v35, 0x0

    :goto_16
    move/from16 p4, v3

    move-object/from16 v3, v35

    goto :goto_17

    .line 126
    :cond_10
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v37

    invoke-static/range {v37 .. v38}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v35

    goto :goto_16

    .line 127
    :goto_17
    invoke-virtual {v0, v3}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setAccountModelId(Ljava/lang/Long;)V

    move/from16 v3, p5

    .line 128
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v35

    if-eqz v35, :cond_11

    const/16 v35, 0x0

    :goto_18
    move/from16 p5, v3

    move-object/from16 v3, v35

    goto :goto_19

    .line 129
    :cond_11
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    goto :goto_18

    .line 130
    :goto_19
    invoke-virtual {v0, v3}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setVal1(Ljava/lang/String;)V

    move/from16 v3, p6

    .line 131
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v35

    if-eqz v35, :cond_12

    const/16 v35, 0x0

    :goto_1a
    move/from16 p6, v3

    move-object/from16 v3, v35

    goto :goto_1b

    .line 132
    :cond_12
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    goto :goto_1a

    .line 133
    :goto_1b
    invoke-virtual {v0, v3}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setVal2(Ljava/lang/String;)V

    move/from16 v3, v17

    .line 134
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_13

    const/16 v17, 0x0

    :goto_1c
    move/from16 v35, v3

    move-object/from16 v3, v17

    goto :goto_1d

    .line 135
    :cond_13
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    goto :goto_1c

    .line 136
    :goto_1d
    invoke-virtual {v0, v3}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setVal3(Ljava/lang/String;)V

    move/from16 v3, v18

    .line 137
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_14

    const/16 v17, 0x0

    :goto_1e
    move/from16 v18, v3

    move-object/from16 v3, v17

    goto :goto_1f

    .line 138
    :cond_14
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    goto :goto_1e

    .line 139
    :goto_1f
    invoke-virtual {v0, v3}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setVal4(Ljava/lang/String;)V

    move/from16 v3, v19

    .line 140
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_15

    const/16 v17, 0x0

    :goto_20
    move/from16 v19, v3

    move-object/from16 v3, v17

    goto :goto_21

    .line 141
    :cond_15
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    goto :goto_20

    .line 142
    :goto_21
    invoke-virtual {v0, v3}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setVal5(Ljava/lang/String;)V

    move/from16 v3, v20

    .line 143
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_16

    const/16 v17, 0x0

    :goto_22
    move/from16 v20, v3

    move-object/from16 v3, v17

    goto :goto_23

    .line 144
    :cond_16
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    goto :goto_22

    .line 145
    :goto_23
    invoke-virtual {v0, v3}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDatetime(Ljava/lang/String;)V

    move/from16 v3, v21

    .line 146
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_17

    const/16 v17, 0x0

    :goto_24
    move/from16 v21, v3

    move-object/from16 v3, v17

    goto :goto_25

    .line 147
    :cond_17
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    goto :goto_24

    .line 148
    :goto_25
    invoke-virtual {v0, v3}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setAddress(Ljava/lang/String;)V

    move/from16 v3, v22

    .line 149
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_18

    const/16 v17, 0x0

    :goto_26
    move/from16 v22, v3

    move-object/from16 v3, v17

    move/from16 v17, v4

    goto :goto_27

    .line 150
    :cond_18
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v37

    invoke-static/range {v37 .. v38}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    goto :goto_26

    .line 151
    :goto_27
    iget-object v4, v1, Le/a/c/c/d/l;->b:Le/a/c/c0/g;

    invoke-virtual {v4, v3}, Le/a/c/c0/g;->c(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object v3

    .line 152
    invoke-virtual {v0, v3}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setMsgDate(Ljava/util/Date;)V

    move/from16 v3, v23

    .line 153
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_19

    const/4 v4, 0x0

    goto :goto_28

    .line 154
    :cond_19
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 155
    :goto_28
    invoke-virtual {v0, v4}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDate(Ljava/lang/String;)V

    move/from16 v4, v24

    .line 156
    invoke-interface {v2, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v23

    if-eqz v23, :cond_1a

    const/16 v23, 0x0

    :goto_29
    move/from16 v24, v3

    move-object/from16 v3, v23

    goto :goto_2a

    .line 157
    :cond_1a
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    goto :goto_29

    .line 158
    :goto_2a
    invoke-virtual {v0, v3}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDffVal1(Ljava/lang/String;)V

    move/from16 v3, v25

    .line 159
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v23

    if-eqz v23, :cond_1b

    const/16 v23, 0x0

    :goto_2b
    move/from16 v25, v3

    move-object/from16 v3, v23

    goto :goto_2c

    .line 160
    :cond_1b
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    goto :goto_2b

    .line 161
    :goto_2c
    invoke-virtual {v0, v3}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDffVal2(Ljava/lang/String;)V

    move/from16 v3, v26

    .line 162
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v23

    if-eqz v23, :cond_1c

    const/16 v23, 0x0

    :goto_2d
    move/from16 v26, v3

    move-object/from16 v3, v23

    goto :goto_2e

    .line 163
    :cond_1c
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    goto :goto_2d

    .line 164
    :goto_2e
    invoke-virtual {v0, v3}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDffVal3(Ljava/lang/String;)V

    move/from16 v3, v27

    .line 165
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v23

    if-eqz v23, :cond_1d

    const/16 v23, 0x0

    :goto_2f
    move/from16 v27, v3

    move-object/from16 v3, v23

    goto :goto_30

    .line 166
    :cond_1d
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    goto :goto_2f

    .line 167
    :goto_30
    invoke-virtual {v0, v3}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDffVal4(Ljava/lang/String;)V

    move/from16 v3, v28

    .line 168
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v23

    if-eqz v23, :cond_1e

    const/16 v23, 0x0

    :goto_31
    move/from16 v28, v3

    move-object/from16 v3, v23

    goto :goto_32

    .line 169
    :cond_1e
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    goto :goto_31

    .line 170
    :goto_32
    invoke-virtual {v0, v3}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDffVal5(Ljava/lang/String;)V

    move/from16 v3, v29

    .line 171
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    if-eqz v23, :cond_1f

    const/16 v23, 0x1

    goto :goto_33

    :cond_1f
    const/16 v23, 0x0

    :goto_33
    move/from16 v29, v3

    move/from16 v3, v23

    .line 172
    invoke-virtual {v0, v3}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setActive(Z)V

    move/from16 v3, v30

    .line 173
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v23

    if-eqz v23, :cond_20

    const/16 v23, 0x0

    :goto_34
    move/from16 v30, v3

    move-object/from16 v3, v23

    goto :goto_35

    .line 174
    :cond_20
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    goto :goto_34

    .line 175
    :goto_35
    invoke-virtual {v0, v3}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setState(Ljava/lang/String;)V

    move/from16 v3, v31

    .line 176
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v23

    if-eqz v23, :cond_21

    const/16 v23, 0x0

    :goto_36
    move/from16 v31, v3

    move-object/from16 v3, v23

    goto :goto_37

    .line 177
    :cond_21
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v37

    invoke-static/range {v37 .. v38}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    goto :goto_36

    .line 178
    :goto_37
    invoke-virtual {v0, v3}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setSyntheticRecordId(Ljava/lang/Long;)V

    move/from16 v3, v32

    .line 179
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    if-eqz v23, :cond_22

    const/16 v23, 0x1

    goto :goto_38

    :cond_22
    const/16 v23, 0x0

    :goto_38
    move/from16 v32, v3

    move/from16 v3, v23

    .line 180
    invoke-virtual {v0, v3}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDeleted(Z)V

    move/from16 v3, v33

    .line 181
    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v23

    if-eqz v23, :cond_23

    const/16 v23, 0x0

    :goto_39
    move/from16 v33, v3

    move-object/from16 v3, v23

    move/from16 v23, v4

    goto :goto_3a

    .line 182
    :cond_23
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v37

    invoke-static/range {v37 .. v38}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    goto :goto_39

    .line 183
    :goto_3a
    iget-object v4, v1, Le/a/c/c/d/l;->b:Le/a/c/c0/g;

    invoke-virtual {v4, v3}, Le/a/c/c0/g;->c(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object v3

    .line 184
    invoke-virtual {v0, v3}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setCreatedAt(Ljava/util/Date;)V

    move/from16 v3, v34

    .line 185
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 186
    invoke-virtual {v0, v4}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setSpamCategory(I)V

    .line 187
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v34, v3

    move/from16 v4, v17

    move/from16 v17, v35

    move/from16 v0, v45

    move/from16 v3, p1

    move/from16 v35, v9

    move/from16 p1, v10

    move v9, v15

    move/from16 v10, v36

    move/from16 v46, v24

    move/from16 v24, v23

    move/from16 v23, v46

    goto/16 :goto_6

    .line 188
    :cond_24
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 189
    invoke-virtual/range {v16 .. v16}, Ln3/c0/y;->l()V

    return-object v6

    :catchall_0
    move-exception v0

    goto :goto_3b

    :catchall_1
    move-exception v0

    move-object/from16 v16, v6

    .line 190
    :goto_3b
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 191
    invoke-virtual/range {v16 .. v16}, Ln3/c0/y;->l()V

    .line 192
    throw v0
.end method
