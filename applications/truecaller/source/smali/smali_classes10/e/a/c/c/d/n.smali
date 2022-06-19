.class public final Le/a/c/c/d/n;
.super Le/a/c/c/d/m;
.source "SourceFile"


# instance fields
.field public final a:Ln3/c0/q;

.field public final b:Le/a/c/c0/g;


# direct methods
.method public constructor <init>(Ln3/c0/q;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Le/a/c/c/d/m;-><init>()V

    .line 2
    new-instance v0, Le/a/c/c0/g;

    invoke-direct {v0}, Le/a/c/c0/g;-><init>()V

    iput-object v0, p0, Le/a/c/c/d/n;->b:Le/a/c/c0/g;

    .line 3
    iput-object p1, p0, Le/a/c/c/d/n;->a:Ln3/c0/q;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Date;)Lq3/a/x2/f;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            ")",
            "Lq3/a/x2/f<",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/models/pdo/ExtendedPdo;",
            ">;>;"
        }
    .end annotation

    const-string v0, "\n        SELECT mct.conversationId, mct.transport, final.messageID, final.d, final.k, final.p, final.c, final.o, final.f, final.g, final.s, \n        final.account_model_id, mct.classified_by, mct.message, mct.updateCategory,\n        final.val1, final.val2, final.val3, final.val4, final.val5, final.datetime, final.address, final.msg_date, final.date, \n        final.dff_val1, final.dff_val2, final.dff_val3, final.dff_val4, final.dff_val5, final.active, final.state, final.synthetic_record_id, final.deleted, \n        final.created_at, final.spam_category, mct.no_of_words as \"no_of_words\", mct.confidence_score as \"confidence_score\" FROM \n        (SELECT messageID,d,k, p, c, o, f, g, s, account_model_id, val1, val2, val3, val4, val5, datetime, address, msg_date, date, dff_val1, \n        dff_val2, dff_val3, dff_val4, dff_val5, active,state,synthetic_record_id, deleted, created_at, spam_category \n        FROM parsed_data_object_table as p \n        WHERE messageID >= 0 AND active=1 AND deleted=0 AND d = \'Bank\' AND msg_date >= ? UNION ALL \n        SELECT pt.messageID as messageID, pdo.d, pdo.k, pdo.p, pdo.c, pdo.o, pdo.f, pdo.g, pdo.s, pdo.account_model_id, pdo.val1, pdo.val2, pdo.val3, \n        pdo.val4, pdo.val5, pdo.datetime, pdo.address, pdo.msg_date, pdo.date, pdo.dff_val1, pdo.dff_val2, pdo.dff_val3, pdo.dff_val4, \n        pdo.dff_val5, pdo.active, pdo.state, pdo.synthetic_record_id, pdo.deleted, pdo.created_at, pdo.spam_category FROM \n        (select * from parsed_data_object_table where messageID < 0 AND active=1 AND deleted=0 and d=\'Bank\' \n        AND msg_date >= ?) as pdo LEFT JOIN (select synthetic_record_id,max(messageID) as messageID from parsed_data_object_table \n        where synthetic_record_id IS NOT NULL group by 1) as pt on pdo.messageID = pt.synthetic_record_id) as final \n        JOIN sms_backup_table mct on final.messageID = mct.messageID ORDER BY final.msg_date DESC\n        "

    const/4 v1, 0x2

    .line 1
    invoke-static {v0, v1}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    .line 2
    iget-object v2, p0, Le/a/c/c/d/n;->b:Le/a/c/c0/g;

    invoke-virtual {v2, p1}, Le/a/c/c0/g;->a(Ljava/util/Date;)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 3
    invoke-virtual {v0, v3}, Ln3/c0/y;->y0(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Ln3/c0/y;->l0(IJ)V

    .line 5
    :goto_0
    iget-object v2, p0, Le/a/c/c/d/n;->b:Le/a/c/c0/g;

    invoke-virtual {v2, p1}, Le/a/c/c0/g;->a(Ljava/util/Date;)Ljava/lang/Long;

    move-result-object p1

    if-nez p1, :cond_1

    .line 6
    invoke-virtual {v0, v1}, Ln3/c0/y;->y0(I)V

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Ln3/c0/y;->l0(IJ)V

    .line 8
    :goto_1
    iget-object p1, p0, Le/a/c/c/d/n;->a:Ln3/c0/q;

    const/4 v1, 0x0

    const-string v2, "parsed_data_object_table"

    const-string v3, "sms_backup_table"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    new-instance v3, Le/a/c/c/d/n$a;

    invoke-direct {v3, p0, v0}, Le/a/c/c/d/n$a;-><init>(Le/a/c/c/d/n;Ln3/c0/y;)V

    invoke-static {p1, v1, v2, v3}, Ln3/c0/g;->a(Ln3/c0/q;Z[Ljava/lang/String;Ljava/util/concurrent/Callable;)Lq3/a/x2/f;

    move-result-object p1

    return-object p1
.end method
