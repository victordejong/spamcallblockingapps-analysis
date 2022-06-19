.class public final Le/a/c/c/d/p0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/c/d/o0;


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

    iput-object v0, p0, Le/a/c/c/d/p0;->b:Le/a/c/c0/g;

    .line 3
    iput-object p1, p0, Le/a/c/c/d/p0;->a:Ln3/c0/q;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Lq3/a/x2/f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lq3/a/x2/f<",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/models/pdo/ExtendedPdo;",
            ">;>;"
        }
    .end annotation

    const-string v0, "\n            SELECT mct.conversationId as \"conversationId\", mct.transport as \"transport\", final.messageID as \"messageID\", final.d as \"d\", \n            final.k as \"k\", final.p as \"p\", mct.classified_by as \"classified_by\", mct.message as \"message\", mct.updateCategory as \"updateCategory\", \n            mct.no_of_words as \"no_of_words\", mct.confidence_score as \"confidence_score\",\n            final.c as \"c\",final.o as \"o\",final.f as \"f\", final.g as \"g\",final.s as \"s\", final.account_model_id as \"account_model_id\", final.val1 as \"val1\",\n            final.val2 as \"val2\",final.val3 as \"val3\", final.val4 as \"val4\", final.val5 as \"val5\", final.datetime as \"datetime\", final.address as \"address\",\n            final.msg_date as \"msg_date\", final.date as \"date\", final.dff_val1 as \"dff_val1\", final.dff_val2 as \"dff_val2\", \n            final.dff_val3 as \"dff_val3\", final.dff_val4 as \"dff_val4\", final.dff_val5 as \"dff_val5\", final.active as \"active\", final.state as \"state\",\n            final.synthetic_record_id as \"synthetic_record_id\", final.deleted \"deleted\", final.created_at as \"created_at\",\n            final.spam_category as \"spam_category\"\n            FROM (SELECT messageID,d,k, p, c, o, f, g, s, account_model_id, val1, val2, val3, val4, val5, datetime, address, msg_date, date,\n            dff_val1, dff_val2, dff_val3, dff_val4, dff_val5, active, state,synthetic_record_id,deleted,created_at, spam_category\n            FROM parsed_data_object_table as p WHERE messageID >= 0 AND active=1 AND deleted=0 AND d = \'Travel\' \n            AND (datetime < datetime(?) AND datetime >= datetime(?)) \n            UNION ALL SELECT pt.messageID as messageID, pdo.d, pdo.k, pdo.p, pdo.c, pdo.o, \n            pdo.f, pdo.g, pdo.s, pdo.account_model_id, pdo.val1, pdo.val2, pdo.val3, pdo.val4, pdo.val5, pdo.datetime, pdo.address, pdo.msg_date, pdo.date, \n            pdo.dff_val1, pdo.dff_val2, pdo.dff_val3, pdo.dff_val4, pdo.dff_val5, pdo.active, pdo.state, pdo.synthetic_record_id, pdo.deleted, \n            pdo.created_at , pdo.spam_category\n            FROM (select * from parsed_data_object_table where messageID < 0 AND active=1 AND deleted=0 and d= \'Travel\'\n            AND (datetime < datetime(?) AND datetime >= datetime(?))) \n            as pdo LEFT JOIN (select synthetic_record_id,max(messageID) as messageID from parsed_data_object_table where synthetic_record_id IS NOT NULL \n            group by 1) as pt on pdo.messageID = pt.synthetic_record_id) as final JOIN sms_backup_table mct on final.messageID = mct.messageID \n            ORDER BY final.date ASC\n        "

    const/4 v1, 0x4

    .line 1
    invoke-static {v0, v1}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    const/4 v2, 0x1

    .line 2
    invoke-virtual {v0, v2, p1}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    const/4 v2, 0x2

    .line 3
    invoke-virtual {v0, v2, p2}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    const/4 v2, 0x3

    .line 4
    invoke-virtual {v0, v2, p1}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    .line 5
    invoke-virtual {v0, v1, p2}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    .line 6
    iget-object p1, p0, Le/a/c/c/d/p0;->a:Ln3/c0/q;

    const/4 p2, 0x0

    const-string v1, "parsed_data_object_table"

    const-string v2, "sms_backup_table"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Le/a/c/c/d/p0$b;

    invoke-direct {v2, p0, v0}, Le/a/c/c/d/p0$b;-><init>(Le/a/c/c/d/p0;Ln3/c0/y;)V

    invoke-static {p1, p2, v1, v2}, Ln3/c0/g;->a(Ln3/c0/q;Z[Ljava/lang/String;Ljava/util/concurrent/Callable;)Lq3/a/x2/f;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lq3/a/x2/f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lq3/a/x2/f<",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/models/pdo/ExtendedPdo;",
            ">;>;"
        }
    .end annotation

    const-string v0, "\n            SELECT mct.conversationId as \"conversationId\", mct.transport as \"transport\", final.messageID as \"messageID\", final.d as \"d\", \n            final.k as \"k\", final.p as \"p\", mct.classified_by as \"classified_by\", mct.message as \"message\", mct.updateCategory as \"updateCategory\",\n            mct.no_of_words as \"no_of_words\", mct.confidence_score as \"confidence_score\",\n            final.c as \"c\",final.o as \"o\",final.f as \"f\", final.g as \"g\",final.s as \"s\", final.account_model_id as \"account_model_id\", final.val1 as \"val1\",\n            final.val2 as \"val2\",final.val3 as \"val3\", final.val4 as \"val4\", final.val5 as \"val5\", final.datetime as \"datetime\", final.address as \"address\",\n            final.msg_date as \"msg_date\", final.date as \"date\", final.dff_val1 as \"dff_val1\", final.dff_val2 as \"dff_val2\", \n            final.dff_val3 as \"dff_val3\", final.dff_val4 as \"dff_val4\", final.dff_val5 as \"dff_val5\", final.active as \"active\", final.state as \"state\",\n            final.synthetic_record_id as \"synthetic_record_id\", final.deleted \"deleted\", final.created_at as \"created_at\",\n            final.spam_category as \"spam_category\"\n            FROM (SELECT messageID,d,k, p, c, o, f, g, s, account_model_id, val1, val2, val3, val4, val5, datetime, address, msg_date, date, \n            dff_val1, dff_val2, dff_val3, dff_val4, dff_val5, active, state,synthetic_record_id,deleted,created_at, spam_category\n            FROM parsed_data_object_table as p WHERE messageID >= 0 AND active=1 AND deleted=0 AND d = \'Travel\' \n            AND (datetime <= datetime(?) AND datetime >= datetime(?))\n            UNION ALL SELECT pt.messageID as messageID, pdo.d, pdo.k, pdo.p, pdo.c, pdo.o, \n            pdo.f, pdo.g, pdo.s, pdo.account_model_id, pdo.val1, pdo.val2, pdo.val3, pdo.val4, pdo.val5, pdo.datetime, pdo.address, pdo.msg_date, pdo.date, \n            pdo.dff_val1, pdo.dff_val2, pdo.dff_val3, pdo.dff_val4, pdo.dff_val5, pdo.active, pdo.state, pdo.synthetic_record_id, pdo.deleted, \n            pdo.created_at , pdo.spam_category\n            FROM (select * from parsed_data_object_table where messageID < 0 AND active=1 AND deleted=0 and d= \'Travel\'\n            AND (datetime <= datetime(?) AND datetime >= datetime(?))) \n            as pdo LEFT JOIN (select synthetic_record_id,max(messageID) as messageID from parsed_data_object_table where synthetic_record_id IS NOT NULL \n            group by 1) as pt on pdo.messageID = pt.synthetic_record_id) as final JOIN sms_backup_table mct on final.messageID = mct.messageID \n            ORDER BY final.date ASC\n        "

    const/4 v1, 0x4

    .line 1
    invoke-static {v0, v1}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    const/4 v2, 0x1

    .line 2
    invoke-virtual {v0, v2, p1}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    const/4 v2, 0x2

    .line 3
    invoke-virtual {v0, v2, p2}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    const/4 v2, 0x3

    .line 4
    invoke-virtual {v0, v2, p1}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    .line 5
    invoke-virtual {v0, v1, p2}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    .line 6
    iget-object p1, p0, Le/a/c/c/d/p0;->a:Ln3/c0/q;

    const/4 p2, 0x0

    const-string v1, "parsed_data_object_table"

    const-string v2, "sms_backup_table"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Le/a/c/c/d/p0$a;

    invoke-direct {v2, p0, v0}, Le/a/c/c/d/p0$a;-><init>(Le/a/c/c/d/p0;Ln3/c0/y;)V

    invoke-static {p1, p2, v1, v2}, Ln3/c0/g;->a(Ln3/c0/q;Z[Ljava/lang/String;Ljava/util/concurrent/Callable;)Lq3/a/x2/f;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)Lq3/a/x2/f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lq3/a/x2/f<",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/models/pdo/ExtendedPdo;",
            ">;>;"
        }
    .end annotation

    const-string v0, "\n            SELECT mct.conversationId as \"conversationId\", mct.transport as \"transport\", final.messageID as \"messageID\", final.d as \"d\", \n            final.k as \"k\", final.p as \"p\", mct.classified_by as \"classified_by\", mct.message as \"message\", mct.updateCategory as \"updateCategory\", \n            mct.no_of_words as \"no_of_words\", mct.confidence_score as \"confidence_score\",\n            final.c as \"c\",final.o as \"o\",final.f as \"f\", final.g as \"g\",final.s as \"s\", final.account_model_id as \"account_model_id\", final.val1 as \"val1\",\n            final.val2 as \"val2\",final.val3 as \"val3\", final.val4 as \"val4\", final.val5 as \"val5\", final.datetime as \"datetime\", final.address as \"address\",\n            final.msg_date as \"msg_date\", final.date as \"date\", final.dff_val1 as \"dff_val1\", final.dff_val2 as \"dff_val2\", \n            final.dff_val3 as \"dff_val3\", final.dff_val4 as \"dff_val4\", final.dff_val5 as \"dff_val5\", final.active as \"active\", final.state as \"state\",\n            final.synthetic_record_id as \"synthetic_record_id\", final.deleted \"deleted\", final.created_at as \"created_at\",\n            final.spam_category as \"spam_category\"\n            FROM (SELECT messageID,d,k, p, c, o, f, g, s, account_model_id, val1, val2, val3, val4, val5, datetime, address, msg_date, date, \n            dff_val1, dff_val2, dff_val3, dff_val4, dff_val5, active, state,synthetic_record_id,deleted,created_at, spam_category\n            FROM parsed_data_object_table as p WHERE messageID >= 0 AND active=1 AND deleted=0 AND d = \'Travel\' \n            AND (datetime > datetime(?) AND datetime <= datetime(?))\n            UNION ALL SELECT pt.messageID as messageID, pdo.d, pdo.k, pdo.p, pdo.c, pdo.o, \n            pdo.f, pdo.g, pdo.s, pdo.account_model_id, pdo.val1, pdo.val2, pdo.val3, pdo.val4, pdo.val5, pdo.datetime, pdo.address, pdo.msg_date, pdo.date, \n            pdo.dff_val1, pdo.dff_val2, pdo.dff_val3, pdo.dff_val4, pdo.dff_val5, pdo.active, pdo.state, pdo.synthetic_record_id, pdo.deleted, \n            pdo.created_at , pdo.spam_category\n            FROM (select * from parsed_data_object_table where messageID < 0 AND active=1 AND deleted=0 and d= \'Travel\'\n            AND (datetime > datetime(?) AND datetime <= datetime(?))) \n            as pdo LEFT JOIN (select synthetic_record_id,max(messageID) as messageID from parsed_data_object_table where synthetic_record_id IS NOT NULL \n            group by 1) as pt on pdo.messageID = pt.synthetic_record_id) as final JOIN sms_backup_table mct on final.messageID = mct.messageID \n            ORDER BY final.date ASC\n        "

    const/4 v1, 0x4

    .line 1
    invoke-static {v0, v1}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    const/4 v2, 0x1

    .line 2
    invoke-virtual {v0, v2, p1}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    const/4 v2, 0x2

    .line 3
    invoke-virtual {v0, v2, p2}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    const/4 v2, 0x3

    .line 4
    invoke-virtual {v0, v2, p1}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    .line 5
    invoke-virtual {v0, v1, p2}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    .line 6
    iget-object p1, p0, Le/a/c/c/d/p0;->a:Ln3/c0/q;

    const/4 p2, 0x0

    const-string v1, "parsed_data_object_table"

    const-string v2, "sms_backup_table"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Le/a/c/c/d/p0$c;

    invoke-direct {v2, p0, v0}, Le/a/c/c/d/p0$c;-><init>(Le/a/c/c/d/p0;Ln3/c0/y;)V

    invoke-static {p1, p2, v1, v2}, Ln3/c0/g;->a(Ln3/c0/q;Z[Ljava/lang/String;Ljava/util/concurrent/Callable;)Lq3/a/x2/f;

    move-result-object p1

    return-object p1
.end method
