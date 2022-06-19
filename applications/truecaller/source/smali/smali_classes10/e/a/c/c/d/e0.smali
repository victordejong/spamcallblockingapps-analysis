.class public final Le/a/c/c/d/e0;
.super Le/a/c/c/d/d0;
.source "SourceFile"


# instance fields
.field public final a:Ln3/c0/q;

.field public final b:Ln3/c0/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/c0/k<",
            "Lcom/truecaller/insights/models/pdo/ParsedDataObject;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Le/a/c/c0/g;

.field public final d:Ln3/c0/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/c0/k<",
            "Lcom/truecaller/insights/models/enrichment/linking/LinkPruneMap;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ln3/c0/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/c0/k<",
            "Lcom/truecaller/insights/models/pdo/SmsBackup;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ln3/c0/c0;

.field public final g:Ln3/c0/c0;

.field public final h:Ln3/c0/c0;

.field public final i:Ln3/c0/c0;

.field public final j:Ln3/c0/c0;


# direct methods
.method public constructor <init>(Ln3/c0/q;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Le/a/c/c/d/d0;-><init>()V

    .line 2
    new-instance v0, Le/a/c/c0/g;

    invoke-direct {v0}, Le/a/c/c0/g;-><init>()V

    iput-object v0, p0, Le/a/c/c/d/e0;->c:Le/a/c/c0/g;

    .line 3
    iput-object p1, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    .line 4
    new-instance v0, Le/a/c/c/d/e0$j;

    invoke-direct {v0, p0, p1}, Le/a/c/c/d/e0$j;-><init>(Le/a/c/c/d/e0;Ln3/c0/q;)V

    iput-object v0, p0, Le/a/c/c/d/e0;->b:Ln3/c0/k;

    .line 5
    new-instance v0, Le/a/c/c/d/e0$t;

    invoke-direct {v0, p0, p1}, Le/a/c/c/d/e0$t;-><init>(Le/a/c/c/d/e0;Ln3/c0/q;)V

    iput-object v0, p0, Le/a/c/c/d/e0;->d:Ln3/c0/k;

    .line 6
    new-instance v0, Le/a/c/c/d/e0$y;

    invoke-direct {v0, p0, p1}, Le/a/c/c/d/e0$y;-><init>(Le/a/c/c/d/e0;Ln3/c0/q;)V

    iput-object v0, p0, Le/a/c/c/d/e0;->e:Ln3/c0/k;

    .line 7
    new-instance v0, Le/a/c/c/d/e0$f0;

    invoke-direct {v0, p0, p1}, Le/a/c/c/d/e0$f0;-><init>(Le/a/c/c/d/e0;Ln3/c0/q;)V

    iput-object v0, p0, Le/a/c/c/d/e0;->f:Ln3/c0/c0;

    .line 8
    new-instance v0, Le/a/c/c/d/e0$g0;

    invoke-direct {v0, p0, p1}, Le/a/c/c/d/e0$g0;-><init>(Le/a/c/c/d/e0;Ln3/c0/q;)V

    iput-object v0, p0, Le/a/c/c/d/e0;->g:Ln3/c0/c0;

    .line 9
    new-instance v0, Le/a/c/c/d/e0$h0;

    invoke-direct {v0, p0, p1}, Le/a/c/c/d/e0$h0;-><init>(Le/a/c/c/d/e0;Ln3/c0/q;)V

    iput-object v0, p0, Le/a/c/c/d/e0;->h:Ln3/c0/c0;

    .line 10
    new-instance v0, Le/a/c/c/d/e0$i0;

    invoke-direct {v0, p0, p1}, Le/a/c/c/d/e0$i0;-><init>(Le/a/c/c/d/e0;Ln3/c0/q;)V

    iput-object v0, p0, Le/a/c/c/d/e0;->i:Ln3/c0/c0;

    .line 11
    new-instance v0, Le/a/c/c/d/e0$j0;

    invoke-direct {v0, p0, p1}, Le/a/c/c/d/e0$j0;-><init>(Le/a/c/c/d/e0;Ln3/c0/q;)V

    iput-object v0, p0, Le/a/c/c/d/e0;->j:Ln3/c0/c0;

    return-void
.end method


# virtual methods
.method public A(Ljava/util/Date;JLs1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "J",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "\n        SELECT pdo.messageID FROM parsed_data_object_table pdo\n        LEFT JOIN sms_backup_table sbt ON sbt.messageID = pdo.messageID \n        WHERE sbt.conversationId = ?\n        AND pdo.d = \"OTP\"\n        AND pdo.msg_date < ?\n        AND pdo.messageID >= -1\n    "

    const/4 v1, 0x2

    .line 1
    invoke-static {v0, v1}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    const/4 v2, 0x1

    .line 2
    invoke-virtual {v0, v2, p2, p3}, Ln3/c0/y;->l0(IJ)V

    .line 3
    iget-object p2, p0, Le/a/c/c/d/e0;->c:Le/a/c/c0/g;

    invoke-virtual {p2, p1}, Le/a/c/c0/g;->a(Ljava/util/Date;)Ljava/lang/Long;

    move-result-object p1

    if-nez p1, :cond_0

    .line 4
    invoke-virtual {v0, v1}, Ln3/c0/y;->y0(I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {v0, v1, p1, p2}, Ln3/c0/y;->l0(IJ)V

    .line 6
    :goto_0
    new-instance p1, Landroid/os/CancellationSignal;

    invoke-direct {p1}, Landroid/os/CancellationSignal;-><init>()V

    .line 7
    iget-object p2, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    const/4 p3, 0x0

    new-instance v1, Le/a/c/c/d/e0$z;

    invoke-direct {v1, p0, v0}, Le/a/c/c/d/e0$z;-><init>(Le/a/c/c/d/e0;Ln3/c0/y;)V

    invoke-static {p2, p3, p1, v1, p4}, Ln3/c0/g;->b(Ln3/c0/q;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public B(Ljava/util/Date;Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "\n        SELECT messageID FROM parsed_data_object_table \n        WHERE d = \"OTP\"\n        AND msg_date < ?\n        AND messageID >= -1\n    "

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    .line 2
    iget-object v2, p0, Le/a/c/c/d/e0;->c:Le/a/c/c0/g;

    invoke-virtual {v2, p1}, Le/a/c/c0/g;->a(Ljava/util/Date;)Ljava/lang/Long;

    move-result-object p1

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Ln3/c0/y;->y0(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Ln3/c0/y;->l0(IJ)V

    .line 5
    :goto_0
    new-instance p1, Landroid/os/CancellationSignal;

    invoke-direct {p1}, Landroid/os/CancellationSignal;-><init>()V

    .line 6
    iget-object v1, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    const/4 v2, 0x0

    new-instance v3, Le/a/c/c/d/e0$x;

    invoke-direct {v3, p0, v0}, Le/a/c/c/d/e0$x;-><init>(Le/a/c/c/d/e0;Ln3/c0/y;)V

    invoke-static {v1, v2, p1, v3, p2}, Ln3/c0/g;->b(Ln3/c0/q;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public C(Ljava/util/Date;)Lq3/a/x2/f;
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

    const-string v0, "\n        SELECT mct.conversationId as \"conversationId\", mct.transport as \"transport\", final.messageID as \"messageID\", final.d as \"d\", \n            final.k as \"k\", final.p as \"p\", mct.classified_by as \"classified_by\", mct.message as \"message\", mct.updateCategory as \"updateCategory\",\n            final.c as \"c\",final.o as \"o\",final.f as \"f\", final.g as \"g\",final.s as \"s\", final.account_model_id as \"account_model_id\", final.val1 as \"val1\",\n            final.val2 as \"val2\",final.val3 as \"val3\", final.val4 as \"val4\", final.val5 as \"val5\", final.datetime as \"datetime\", final.address as \"address\",\n            final.msg_date as \"msg_date\", final.date as \"date\", final.dff_val1 as \"dff_val1\", final.dff_val2 as \"dff_val2\", \n            final.dff_val3 as \"dff_val3\", final.dff_val4 as \"dff_val4\", final.dff_val5 as \"dff_val5\", final.active as \"active\", final.state as \"state\",\n            final.synthetic_record_id as \"synthetic_record_id\", final.deleted \"deleted\", final.created_at as \"created_at\", \n            final.spam_category as \"spam_category\", mct.no_of_words as \"no_of_words\", mct.confidence_score as \"confidence_score\" \n            FROM (SELECT messageID,d,k, p, c, o, f, g, s, account_model_id, val1, val2, val3, val4, val5, datetime, address, msg_date, date, \n            dff_val1, dff_val2, dff_val3, dff_val4, dff_val5, active,state,synthetic_record_id, deleted, created_at, spam_category\n            FROM parsed_data_object_table as p \n            WHERE messageID >= 0 AND active=1 AND d = \'OTP\' AND msg_date >= ?\n            UNION ALL SELECT pt.messageID as messageID, pdo.d, pdo.k, pdo.p, pdo.c, pdo.o, pdo.f, pdo.g, pdo.s, pdo.account_model_id, pdo.val1, \n            pdo.val2, pdo.val3, pdo.val4, pdo.val5, pdo.datetime, pdo.address, pdo.msg_date, pdo.date, pdo.dff_val1, pdo.dff_val2, pdo.dff_val3, \n            pdo.dff_val4, pdo.dff_val5, pdo.active, pdo.state, pdo.synthetic_record_id, pdo.deleted, pdo.created_at, pdo.spam_category \n            FROM (select * from parsed_data_object_table \n            where messageID < 0 AND active=1 and d=\'OTP\' AND msg_date >= ?)  as pdo \n            LEFT JOIN (select synthetic_record_id,max(messageID) as messageID from parsed_data_object_table where synthetic_record_id IS NOT NULL group by 1) as pt \n            on pdo.messageID = pt.synthetic_record_id) as final JOIN sms_backup_table mct on final.messageID = mct.messageID \n            JOIN pdo_fts ON (final.messageID = pdo_fts.docid) ORDER BY final.msg_date DESC\n    "

    const/4 v1, 0x2

    .line 1
    invoke-static {v0, v1}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    .line 2
    iget-object v2, p0, Le/a/c/c/d/e0;->c:Le/a/c/c0/g;

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
    iget-object v2, p0, Le/a/c/c/d/e0;->c:Le/a/c/c0/g;

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
    iget-object p1, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    const/4 v1, 0x0

    const-string v2, "parsed_data_object_table"

    const-string v3, "sms_backup_table"

    const-string v4, "pdo_fts"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    new-instance v3, Le/a/c/c/d/e0$b0;

    invoke-direct {v3, p0, v0}, Le/a/c/c/d/e0$b0;-><init>(Le/a/c/c/d/e0;Ln3/c0/y;)V

    invoke-static {p1, v1, v2, v3}, Ln3/c0/g;->a(Ln3/c0/q;Z[Ljava/lang/String;Ljava/util/concurrent/Callable;)Lq3/a/x2/f;

    move-result-object p1

    return-object p1
.end method

.method public D(JLs1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/insights/models/pdo/ParsedDataObject;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "SELECT * FROM parsed_data_object_table where messageID is ?"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    .line 2
    invoke-virtual {v0, v1, p1, p2}, Ln3/c0/y;->l0(IJ)V

    .line 3
    new-instance p1, Landroid/os/CancellationSignal;

    invoke-direct {p1}, Landroid/os/CancellationSignal;-><init>()V

    .line 4
    iget-object p2, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    const/4 v1, 0x0

    new-instance v2, Le/a/c/c/d/e0$g;

    invoke-direct {v2, p0, v0}, Le/a/c/c/d/e0$g;-><init>(Le/a/c/c/d/e0;Ln3/c0/y;)V

    invoke-static {p2, v1, p1, v2, p3}, Ln3/c0/g;->b(Ln3/c0/q;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public E(Ljava/util/Set;)Ljava/util/List;
    .locals 40
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/models/pdo/ParsedDataObject;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT * FROM parsed_data_object_table where messageID in ("

    .line 2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-interface/range {p1 .. p1}, Ljava/util/Set;->size()I

    move-result v2

    .line 4
    invoke-static {v0, v2}, Ln3/c0/h0/d;->a(Ljava/lang/StringBuilder;I)V

    const-string v3, ")"

    .line 5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    add-int/2addr v2, v3

    .line 7
    invoke-static {v0, v2}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v2

    .line 8
    invoke-interface/range {p1 .. p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v5, 0x1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    if-nez v6, :cond_0

    .line 9
    invoke-virtual {v2, v5}, Ln3/c0/y;->y0(I)V

    goto :goto_1

    .line 10
    :cond_0
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v2, v5, v6, v7}, Ln3/c0/y;->l0(IJ)V

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 11
    :cond_1
    iget-object v0, v1, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 12
    iget-object v0, v1, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    const/4 v5, 0x0

    invoke-static {v0, v2, v3, v5}, Ln3/c0/h0/b;->b(Ln3/c0/q;Ln3/e0/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v6

    :try_start_0
    const-string v0, "messageID"

    .line 13
    invoke-static {v6, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v7, "d"

    .line 14
    invoke-static {v6, v7}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "k"

    .line 15
    invoke-static {v6, v8}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "p"

    .line 16
    invoke-static {v6, v9}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "c"

    .line 17
    invoke-static {v6, v10}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "o"

    .line 18
    invoke-static {v6, v11}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "f"

    .line 19
    invoke-static {v6, v12}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "g"

    .line 20
    invoke-static {v6, v13}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "s"

    .line 21
    invoke-static {v6, v14}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "account_model_id"

    .line 22
    invoke-static {v6, v15}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v3, "val1"

    .line 23
    invoke-static {v6, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "val2"

    .line 24
    invoke-static {v6, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "val3"

    .line 25
    invoke-static {v6, v5}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-object/from16 v16, v2

    :try_start_1
    const-string v2, "val4"

    .line 26
    invoke-static {v6, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    const-string v1, "val5"

    .line 27
    invoke-static {v6, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v17, v1

    const-string v1, "datetime"

    .line 28
    invoke-static {v6, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v18, v1

    const-string v1, "address"

    .line 29
    invoke-static {v6, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v19, v1

    const-string v1, "date"

    .line 30
    invoke-static {v6, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v20, v1

    const-string v1, "msg_date"

    .line 31
    invoke-static {v6, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v21, v1

    const-string v1, "dff_val1"

    .line 32
    invoke-static {v6, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v22, v1

    const-string v1, "dff_val2"

    .line 33
    invoke-static {v6, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v23, v1

    const-string v1, "dff_val3"

    .line 34
    invoke-static {v6, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v24, v1

    const-string v1, "dff_val4"

    .line 35
    invoke-static {v6, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v25, v1

    const-string v1, "dff_val5"

    .line 36
    invoke-static {v6, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v26, v1

    const-string v1, "active"

    .line 37
    invoke-static {v6, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v27, v1

    const-string v1, "state"

    .line 38
    invoke-static {v6, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v28, v1

    const-string v1, "synthetic_record_id"

    .line 39
    invoke-static {v6, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v29, v1

    const-string v1, "deleted"

    .line 40
    invoke-static {v6, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v30, v1

    const-string v1, "created_at"

    .line 41
    invoke-static {v6, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v31, v1

    const-string v1, "spam_category"

    .line 42
    invoke-static {v6, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v32, v1

    .line 43
    new-instance v1, Ljava/util/ArrayList;

    move/from16 v33, v2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 44
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 45
    new-instance v2, Lcom/truecaller/insights/models/pdo/ParsedDataObject;

    invoke-direct {v2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;-><init>()V

    move/from16 v34, v4

    move/from16 v35, v5

    .line 46
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 47
    invoke-virtual {v2, v4, v5}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setMessageID(J)V

    .line 48
    invoke-interface {v6, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    goto :goto_3

    .line 49
    :cond_2
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 50
    :goto_3
    invoke-virtual {v2, v4}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setD(Ljava/lang/String;)V

    .line 51
    invoke-interface {v6, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    goto :goto_4

    .line 52
    :cond_3
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 53
    :goto_4
    invoke-virtual {v2, v4}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setK(Ljava/lang/String;)V

    .line 54
    invoke-interface {v6, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x0

    goto :goto_5

    .line 55
    :cond_4
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 56
    :goto_5
    invoke-virtual {v2, v4}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setP(Ljava/lang/String;)V

    .line 57
    invoke-interface {v6, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x0

    goto :goto_6

    .line 58
    :cond_5
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 59
    :goto_6
    invoke-virtual {v2, v4}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setC(Ljava/lang/String;)V

    .line 60
    invoke-interface {v6, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x0

    goto :goto_7

    .line 61
    :cond_6
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 62
    :goto_7
    invoke-virtual {v2, v4}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setO(Ljava/lang/String;)V

    .line 63
    invoke-interface {v6, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v4, 0x0

    goto :goto_8

    .line 64
    :cond_7
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 65
    :goto_8
    invoke-virtual {v2, v4}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setF(Ljava/lang/String;)V

    .line 66
    invoke-interface {v6, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, 0x0

    goto :goto_9

    .line 67
    :cond_8
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 68
    :goto_9
    invoke-virtual {v2, v4}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setG(Ljava/lang/String;)V

    .line 69
    invoke-interface {v6, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_9

    const/4 v4, 0x0

    goto :goto_a

    .line 70
    :cond_9
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 71
    :goto_a
    invoke-virtual {v2, v4}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setS(Ljava/lang/String;)V

    .line 72
    invoke-interface {v6, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_a

    const/4 v4, 0x0

    goto :goto_b

    .line 73
    :cond_a
    invoke-interface {v6, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 74
    :goto_b
    invoke-virtual {v2, v4}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setAccountModelId(Ljava/lang/Long;)V

    .line 75
    invoke-interface {v6, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_b

    const/4 v4, 0x0

    goto :goto_c

    .line 76
    :cond_b
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 77
    :goto_c
    invoke-virtual {v2, v4}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setVal1(Ljava/lang/String;)V

    move/from16 v4, v34

    .line 78
    invoke-interface {v6, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_c

    const/4 v5, 0x0

    goto :goto_d

    .line 79
    :cond_c
    invoke-interface {v6, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 80
    :goto_d
    invoke-virtual {v2, v5}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setVal2(Ljava/lang/String;)V

    move/from16 v5, v35

    .line 81
    invoke-interface {v6, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v34

    if-eqz v34, :cond_d

    move/from16 v35, v0

    const/4 v0, 0x0

    goto :goto_e

    .line 82
    :cond_d
    invoke-interface {v6, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v34

    move/from16 v35, v0

    move-object/from16 v0, v34

    .line 83
    :goto_e
    invoke-virtual {v2, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setVal3(Ljava/lang/String;)V

    move/from16 v0, v33

    .line 84
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v33

    if-eqz v33, :cond_e

    move/from16 v34, v0

    const/4 v0, 0x0

    goto :goto_f

    .line 85
    :cond_e
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v33

    move/from16 v34, v0

    move-object/from16 v0, v33

    .line 86
    :goto_f
    invoke-virtual {v2, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setVal4(Ljava/lang/String;)V

    move/from16 v0, v17

    .line 87
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_f

    move/from16 v33, v0

    const/4 v0, 0x0

    goto :goto_10

    .line 88
    :cond_f
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move/from16 v33, v0

    move-object/from16 v0, v17

    .line 89
    :goto_10
    invoke-virtual {v2, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setVal5(Ljava/lang/String;)V

    move/from16 v0, v18

    .line 90
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_10

    move/from16 v18, v0

    const/4 v0, 0x0

    goto :goto_11

    .line 91
    :cond_10
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move/from16 v18, v0

    move-object/from16 v0, v17

    .line 92
    :goto_11
    invoke-virtual {v2, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDatetime(Ljava/lang/String;)V

    move/from16 v0, v19

    .line 93
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_11

    move/from16 v19, v0

    const/4 v0, 0x0

    goto :goto_12

    .line 94
    :cond_11
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move/from16 v19, v0

    move-object/from16 v0, v17

    .line 95
    :goto_12
    invoke-virtual {v2, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setAddress(Ljava/lang/String;)V

    move/from16 v0, v20

    .line 96
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_12

    move/from16 v20, v0

    const/4 v0, 0x0

    goto :goto_13

    .line 97
    :cond_12
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move/from16 v20, v0

    move-object/from16 v0, v17

    .line 98
    :goto_13
    invoke-virtual {v2, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDate(Ljava/lang/String;)V

    move/from16 v0, v21

    .line 99
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_13

    move/from16 v21, v0

    const/4 v0, 0x0

    goto :goto_14

    .line 100
    :cond_13
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v36

    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move/from16 v21, v0

    move-object/from16 v0, v17

    :goto_14
    move/from16 v17, v3

    move/from16 v36, v4

    move-object/from16 v3, p0

    .line 101
    :try_start_3
    iget-object v4, v3, Le/a/c/c/d/e0;->c:Le/a/c/c0/g;

    invoke-virtual {v4, v0}, Le/a/c/c0/g;->c(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object v0

    .line 102
    invoke-virtual {v2, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setMsgDate(Ljava/util/Date;)V

    move/from16 v0, v22

    .line 103
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_14

    const/4 v4, 0x0

    goto :goto_15

    .line 104
    :cond_14
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 105
    :goto_15
    invoke-virtual {v2, v4}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDffVal1(Ljava/lang/String;)V

    move/from16 v4, v23

    .line 106
    invoke-interface {v6, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v22

    if-eqz v22, :cond_15

    move/from16 v23, v0

    const/4 v0, 0x0

    goto :goto_16

    .line 107
    :cond_15
    invoke-interface {v6, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    move/from16 v23, v0

    move-object/from16 v0, v22

    .line 108
    :goto_16
    invoke-virtual {v2, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDffVal2(Ljava/lang/String;)V

    move/from16 v0, v24

    .line 109
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v22

    if-eqz v22, :cond_16

    move/from16 v24, v0

    const/4 v0, 0x0

    goto :goto_17

    .line 110
    :cond_16
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    move/from16 v24, v0

    move-object/from16 v0, v22

    .line 111
    :goto_17
    invoke-virtual {v2, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDffVal3(Ljava/lang/String;)V

    move/from16 v0, v25

    .line 112
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v22

    if-eqz v22, :cond_17

    move/from16 v25, v0

    const/4 v0, 0x0

    goto :goto_18

    .line 113
    :cond_17
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    move/from16 v25, v0

    move-object/from16 v0, v22

    .line 114
    :goto_18
    invoke-virtual {v2, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDffVal4(Ljava/lang/String;)V

    move/from16 v0, v26

    .line 115
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v22

    if-eqz v22, :cond_18

    move/from16 v26, v0

    const/4 v0, 0x0

    goto :goto_19

    .line 116
    :cond_18
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    move/from16 v26, v0

    move-object/from16 v0, v22

    .line 117
    :goto_19
    invoke-virtual {v2, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDffVal5(Ljava/lang/String;)V

    move/from16 v0, v27

    .line 118
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    move/from16 v27, v0

    if-eqz v22, :cond_19

    const/4 v0, 0x1

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    .line 119
    :goto_1a
    invoke-virtual {v2, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setActive(Z)V

    move/from16 v0, v28

    .line 120
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v22

    if-eqz v22, :cond_1a

    move/from16 v28, v0

    const/4 v0, 0x0

    goto :goto_1b

    .line 121
    :cond_1a
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    move/from16 v28, v0

    move-object/from16 v0, v22

    .line 122
    :goto_1b
    invoke-virtual {v2, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setState(Ljava/lang/String;)V

    move/from16 v0, v29

    .line 123
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v22

    if-eqz v22, :cond_1b

    move/from16 v29, v0

    const/4 v0, 0x0

    goto :goto_1c

    .line 124
    :cond_1b
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v37

    invoke-static/range {v37 .. v38}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move/from16 v29, v0

    move-object/from16 v0, v22

    .line 125
    :goto_1c
    invoke-virtual {v2, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setSyntheticRecordId(Ljava/lang/Long;)V

    move/from16 v0, v30

    .line 126
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    move/from16 v30, v0

    if-eqz v22, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    .line 127
    :goto_1d
    invoke-virtual {v2, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDeleted(Z)V

    move/from16 v0, v31

    .line 128
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v22

    if-eqz v22, :cond_1d

    move/from16 v31, v0

    move/from16 v22, v4

    const/4 v0, 0x0

    goto :goto_1e

    .line 129
    :cond_1d
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v37

    invoke-static/range {v37 .. v38}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move/from16 v31, v0

    move-object/from16 v0, v22

    move/from16 v22, v4

    .line 130
    :goto_1e
    iget-object v4, v3, Le/a/c/c/d/e0;->c:Le/a/c/c0/g;

    invoke-virtual {v4, v0}, Le/a/c/c0/g;->c(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object v0

    .line 131
    invoke-virtual {v2, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setCreatedAt(Ljava/util/Date;)V

    move/from16 v0, v32

    .line 132
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 133
    invoke-virtual {v2, v4}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setSpamCategory(I)V

    .line 134
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move/from16 v32, v0

    move/from16 v3, v17

    move/from16 v17, v33

    move/from16 v33, v34

    move/from16 v0, v35

    move/from16 v4, v36

    move/from16 v39, v23

    move/from16 v23, v22

    move/from16 v22, v39

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1f

    :cond_1e
    move-object/from16 v3, p0

    .line 135
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 136
    invoke-virtual/range {v16 .. v16}, Ln3/c0/y;->l()V

    return-object v1

    :catchall_1
    move-exception v0

    move-object/from16 v3, p0

    goto :goto_1f

    :catchall_2
    move-exception v0

    move-object v3, v1

    goto :goto_1f

    :catchall_3
    move-exception v0

    move-object v3, v1

    move-object/from16 v16, v2

    .line 137
    :goto_1f
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 138
    invoke-virtual/range {v16 .. v16}, Ln3/c0/y;->l()V

    .line 139
    throw v0
.end method

.method public F(Ljava/util/Set;)Ljava/util/List;
    .locals 40
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/models/pdo/ParsedDataObject;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT * FROM parsed_data_object_table where messageID in ("

    .line 2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-interface/range {p1 .. p1}, Ljava/util/Set;->size()I

    move-result v2

    .line 4
    invoke-static {v0, v2}, Ln3/c0/h0/d;->a(Ljava/lang/StringBuilder;I)V

    const-string v3, ")"

    .line 5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    add-int/2addr v2, v3

    .line 7
    invoke-static {v0, v2}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v2

    .line 8
    invoke-interface/range {p1 .. p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v5, 0x1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    if-nez v6, :cond_0

    .line 9
    invoke-virtual {v2, v5}, Ln3/c0/y;->y0(I)V

    goto :goto_1

    .line 10
    :cond_0
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v2, v5, v6, v7}, Ln3/c0/y;->l0(IJ)V

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 11
    :cond_1
    iget-object v0, v1, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 12
    iget-object v0, v1, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    const/4 v5, 0x0

    invoke-static {v0, v2, v3, v5}, Ln3/c0/h0/b;->b(Ln3/c0/q;Ln3/e0/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v6

    :try_start_0
    const-string v0, "messageID"

    .line 13
    invoke-static {v6, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v7, "d"

    .line 14
    invoke-static {v6, v7}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "k"

    .line 15
    invoke-static {v6, v8}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "p"

    .line 16
    invoke-static {v6, v9}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "c"

    .line 17
    invoke-static {v6, v10}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "o"

    .line 18
    invoke-static {v6, v11}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "f"

    .line 19
    invoke-static {v6, v12}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "g"

    .line 20
    invoke-static {v6, v13}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "s"

    .line 21
    invoke-static {v6, v14}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "account_model_id"

    .line 22
    invoke-static {v6, v15}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v3, "val1"

    .line 23
    invoke-static {v6, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "val2"

    .line 24
    invoke-static {v6, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "val3"

    .line 25
    invoke-static {v6, v5}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-object/from16 v16, v2

    :try_start_1
    const-string v2, "val4"

    .line 26
    invoke-static {v6, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    const-string v1, "val5"

    .line 27
    invoke-static {v6, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v17, v1

    const-string v1, "datetime"

    .line 28
    invoke-static {v6, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v18, v1

    const-string v1, "address"

    .line 29
    invoke-static {v6, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v19, v1

    const-string v1, "date"

    .line 30
    invoke-static {v6, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v20, v1

    const-string v1, "msg_date"

    .line 31
    invoke-static {v6, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v21, v1

    const-string v1, "dff_val1"

    .line 32
    invoke-static {v6, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v22, v1

    const-string v1, "dff_val2"

    .line 33
    invoke-static {v6, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v23, v1

    const-string v1, "dff_val3"

    .line 34
    invoke-static {v6, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v24, v1

    const-string v1, "dff_val4"

    .line 35
    invoke-static {v6, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v25, v1

    const-string v1, "dff_val5"

    .line 36
    invoke-static {v6, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v26, v1

    const-string v1, "active"

    .line 37
    invoke-static {v6, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v27, v1

    const-string v1, "state"

    .line 38
    invoke-static {v6, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v28, v1

    const-string v1, "synthetic_record_id"

    .line 39
    invoke-static {v6, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v29, v1

    const-string v1, "deleted"

    .line 40
    invoke-static {v6, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v30, v1

    const-string v1, "created_at"

    .line 41
    invoke-static {v6, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v31, v1

    const-string v1, "spam_category"

    .line 42
    invoke-static {v6, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v32, v1

    .line 43
    new-instance v1, Ljava/util/ArrayList;

    move/from16 v33, v2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 44
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 45
    new-instance v2, Lcom/truecaller/insights/models/pdo/ParsedDataObject;

    invoke-direct {v2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;-><init>()V

    move/from16 v34, v4

    move/from16 v35, v5

    .line 46
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 47
    invoke-virtual {v2, v4, v5}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setMessageID(J)V

    .line 48
    invoke-interface {v6, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    goto :goto_3

    .line 49
    :cond_2
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 50
    :goto_3
    invoke-virtual {v2, v4}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setD(Ljava/lang/String;)V

    .line 51
    invoke-interface {v6, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    goto :goto_4

    .line 52
    :cond_3
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 53
    :goto_4
    invoke-virtual {v2, v4}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setK(Ljava/lang/String;)V

    .line 54
    invoke-interface {v6, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x0

    goto :goto_5

    .line 55
    :cond_4
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 56
    :goto_5
    invoke-virtual {v2, v4}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setP(Ljava/lang/String;)V

    .line 57
    invoke-interface {v6, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x0

    goto :goto_6

    .line 58
    :cond_5
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 59
    :goto_6
    invoke-virtual {v2, v4}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setC(Ljava/lang/String;)V

    .line 60
    invoke-interface {v6, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x0

    goto :goto_7

    .line 61
    :cond_6
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 62
    :goto_7
    invoke-virtual {v2, v4}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setO(Ljava/lang/String;)V

    .line 63
    invoke-interface {v6, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v4, 0x0

    goto :goto_8

    .line 64
    :cond_7
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 65
    :goto_8
    invoke-virtual {v2, v4}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setF(Ljava/lang/String;)V

    .line 66
    invoke-interface {v6, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, 0x0

    goto :goto_9

    .line 67
    :cond_8
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 68
    :goto_9
    invoke-virtual {v2, v4}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setG(Ljava/lang/String;)V

    .line 69
    invoke-interface {v6, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_9

    const/4 v4, 0x0

    goto :goto_a

    .line 70
    :cond_9
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 71
    :goto_a
    invoke-virtual {v2, v4}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setS(Ljava/lang/String;)V

    .line 72
    invoke-interface {v6, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_a

    const/4 v4, 0x0

    goto :goto_b

    .line 73
    :cond_a
    invoke-interface {v6, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 74
    :goto_b
    invoke-virtual {v2, v4}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setAccountModelId(Ljava/lang/Long;)V

    .line 75
    invoke-interface {v6, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_b

    const/4 v4, 0x0

    goto :goto_c

    .line 76
    :cond_b
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 77
    :goto_c
    invoke-virtual {v2, v4}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setVal1(Ljava/lang/String;)V

    move/from16 v4, v34

    .line 78
    invoke-interface {v6, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_c

    const/4 v5, 0x0

    goto :goto_d

    .line 79
    :cond_c
    invoke-interface {v6, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 80
    :goto_d
    invoke-virtual {v2, v5}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setVal2(Ljava/lang/String;)V

    move/from16 v5, v35

    .line 81
    invoke-interface {v6, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v34

    if-eqz v34, :cond_d

    move/from16 v35, v0

    const/4 v0, 0x0

    goto :goto_e

    .line 82
    :cond_d
    invoke-interface {v6, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v34

    move/from16 v35, v0

    move-object/from16 v0, v34

    .line 83
    :goto_e
    invoke-virtual {v2, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setVal3(Ljava/lang/String;)V

    move/from16 v0, v33

    .line 84
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v33

    if-eqz v33, :cond_e

    move/from16 v34, v0

    const/4 v0, 0x0

    goto :goto_f

    .line 85
    :cond_e
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v33

    move/from16 v34, v0

    move-object/from16 v0, v33

    .line 86
    :goto_f
    invoke-virtual {v2, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setVal4(Ljava/lang/String;)V

    move/from16 v0, v17

    .line 87
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_f

    move/from16 v33, v0

    const/4 v0, 0x0

    goto :goto_10

    .line 88
    :cond_f
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move/from16 v33, v0

    move-object/from16 v0, v17

    .line 89
    :goto_10
    invoke-virtual {v2, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setVal5(Ljava/lang/String;)V

    move/from16 v0, v18

    .line 90
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_10

    move/from16 v18, v0

    const/4 v0, 0x0

    goto :goto_11

    .line 91
    :cond_10
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move/from16 v18, v0

    move-object/from16 v0, v17

    .line 92
    :goto_11
    invoke-virtual {v2, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDatetime(Ljava/lang/String;)V

    move/from16 v0, v19

    .line 93
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_11

    move/from16 v19, v0

    const/4 v0, 0x0

    goto :goto_12

    .line 94
    :cond_11
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move/from16 v19, v0

    move-object/from16 v0, v17

    .line 95
    :goto_12
    invoke-virtual {v2, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setAddress(Ljava/lang/String;)V

    move/from16 v0, v20

    .line 96
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_12

    move/from16 v20, v0

    const/4 v0, 0x0

    goto :goto_13

    .line 97
    :cond_12
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move/from16 v20, v0

    move-object/from16 v0, v17

    .line 98
    :goto_13
    invoke-virtual {v2, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDate(Ljava/lang/String;)V

    move/from16 v0, v21

    .line 99
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_13

    move/from16 v21, v0

    move/from16 v17, v3

    move/from16 v36, v4

    const/4 v0, 0x0

    :goto_14
    move-object/from16 v3, p0

    goto :goto_15

    .line 100
    :cond_13
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v36

    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move/from16 v21, v0

    move/from16 v36, v4

    move-object/from16 v0, v17

    move/from16 v17, v3

    goto :goto_14

    .line 101
    :goto_15
    :try_start_3
    iget-object v4, v3, Le/a/c/c/d/e0;->c:Le/a/c/c0/g;

    invoke-virtual {v4, v0}, Le/a/c/c0/g;->c(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object v0

    .line 102
    invoke-virtual {v2, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setMsgDate(Ljava/util/Date;)V

    move/from16 v0, v22

    .line 103
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_14

    const/4 v4, 0x0

    goto :goto_16

    .line 104
    :cond_14
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 105
    :goto_16
    invoke-virtual {v2, v4}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDffVal1(Ljava/lang/String;)V

    move/from16 v4, v23

    .line 106
    invoke-interface {v6, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v22

    if-eqz v22, :cond_15

    move/from16 v23, v0

    const/4 v0, 0x0

    goto :goto_17

    .line 107
    :cond_15
    invoke-interface {v6, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    move/from16 v23, v0

    move-object/from16 v0, v22

    .line 108
    :goto_17
    invoke-virtual {v2, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDffVal2(Ljava/lang/String;)V

    move/from16 v0, v24

    .line 109
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v22

    if-eqz v22, :cond_16

    move/from16 v24, v0

    const/4 v0, 0x0

    goto :goto_18

    .line 110
    :cond_16
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    move/from16 v24, v0

    move-object/from16 v0, v22

    .line 111
    :goto_18
    invoke-virtual {v2, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDffVal3(Ljava/lang/String;)V

    move/from16 v0, v25

    .line 112
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v22

    if-eqz v22, :cond_17

    move/from16 v25, v0

    const/4 v0, 0x0

    goto :goto_19

    .line 113
    :cond_17
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    move/from16 v25, v0

    move-object/from16 v0, v22

    .line 114
    :goto_19
    invoke-virtual {v2, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDffVal4(Ljava/lang/String;)V

    move/from16 v0, v26

    .line 115
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v22

    if-eqz v22, :cond_18

    move/from16 v26, v0

    const/4 v0, 0x0

    goto :goto_1a

    .line 116
    :cond_18
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    move/from16 v26, v0

    move-object/from16 v0, v22

    .line 117
    :goto_1a
    invoke-virtual {v2, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDffVal5(Ljava/lang/String;)V

    move/from16 v0, v27

    .line 118
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    move/from16 v27, v0

    if-eqz v22, :cond_19

    const/4 v0, 0x1

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    .line 119
    :goto_1b
    invoke-virtual {v2, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setActive(Z)V

    move/from16 v0, v28

    .line 120
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v22

    if-eqz v22, :cond_1a

    move/from16 v28, v0

    const/4 v0, 0x0

    goto :goto_1c

    .line 121
    :cond_1a
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    move/from16 v28, v0

    move-object/from16 v0, v22

    .line 122
    :goto_1c
    invoke-virtual {v2, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setState(Ljava/lang/String;)V

    move/from16 v0, v29

    .line 123
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v22

    if-eqz v22, :cond_1b

    move/from16 v29, v0

    const/4 v0, 0x0

    goto :goto_1d

    .line 124
    :cond_1b
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v37

    invoke-static/range {v37 .. v38}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move/from16 v29, v0

    move-object/from16 v0, v22

    .line 125
    :goto_1d
    invoke-virtual {v2, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setSyntheticRecordId(Ljava/lang/Long;)V

    move/from16 v0, v30

    .line 126
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    move/from16 v30, v0

    if-eqz v22, :cond_1c

    const/4 v0, 0x1

    goto :goto_1e

    :cond_1c
    const/4 v0, 0x0

    .line 127
    :goto_1e
    invoke-virtual {v2, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDeleted(Z)V

    move/from16 v0, v31

    .line 128
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v22

    if-eqz v22, :cond_1d

    move/from16 v31, v0

    move/from16 v22, v4

    const/4 v0, 0x0

    goto :goto_1f

    .line 129
    :cond_1d
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v37

    invoke-static/range {v37 .. v38}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move/from16 v31, v0

    move-object/from16 v0, v22

    move/from16 v22, v4

    .line 130
    :goto_1f
    iget-object v4, v3, Le/a/c/c/d/e0;->c:Le/a/c/c0/g;

    invoke-virtual {v4, v0}, Le/a/c/c0/g;->c(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object v0

    .line 131
    invoke-virtual {v2, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setCreatedAt(Ljava/util/Date;)V

    move/from16 v0, v32

    .line 132
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 133
    invoke-virtual {v2, v4}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setSpamCategory(I)V

    .line 134
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move/from16 v32, v0

    move/from16 v3, v17

    move/from16 v17, v33

    move/from16 v33, v34

    move/from16 v0, v35

    move/from16 v4, v36

    move/from16 v39, v23

    move/from16 v23, v22

    move/from16 v22, v39

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    goto :goto_20

    :cond_1e
    move-object/from16 v3, p0

    .line 135
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 136
    invoke-virtual/range {v16 .. v16}, Ln3/c0/y;->l()V

    return-object v1

    :catchall_1
    move-exception v0

    move-object/from16 v3, p0

    goto :goto_20

    :catchall_2
    move-exception v0

    move-object v3, v1

    goto :goto_20

    :catchall_3
    move-exception v0

    move-object v3, v1

    move-object/from16 v16, v2

    .line 137
    :goto_20
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 138
    invoke-virtual/range {v16 .. v16}, Ln3/c0/y;->l()V

    .line 139
    throw v0
.end method

.method public G(J)Lcom/truecaller/insights/models/pdo/ExtendedPdo;
    .locals 50

    move-object/from16 v1, p0

    const-string v0, "\n            SELECT p.*, sbt.conversationId as \"conversationId\", sbt.transport as \"transport\", sbt.classified_by, sbt.message, \n            sbt.updateCategory, sbt.no_of_words as \"no_of_words\", sbt.confidence_score as \"confidence_score\" \n            FROM ( SELECT * FROM parsed_data_object_table AS p  WHERE messageID <> - 1 UNION ALL SELECT pt.messageID as \n            messageID, pdo.d, pdo.k, pdo.p, pdo.c, pdo.o, pdo.f, pdo.g, pdo.s, pdo.account_model_id, pdo.val1, pdo.val2, pdo.val3, pdo.val4,\n            pdo.val5, pdo.datetime, pdo.address, pdo.date, pdo.msg_date, pdo.dff_val1, pdo.dff_val2,\n            pdo.dff_val3, pdo.dff_val4, pdo.dff_val5, pdo.active, pdo.state, pdo.synthetic_record_id, pdo.deleted,\n            pdo.created_at, pdo.spam_category FROM ( SELECT * FROM parsed_data_object_table WHERE messageID = - 1)\n            AS pdo LEFT JOIN ( SELECT synthetic_record_id, Max(messageID) AS messageID FROM \n            parsed_data_object_table WHERE synthetic_record_id IS NOT NULL GROUP BY 1 ) AS pt \n            ON pdo.messageID = pt.synthetic_record_id ) AS p LEFT JOIN sms_backup_table sbt\n            ON p.messageID = sbt.messageID\n            WHERE sbt.messageID = ?\n            LIMIT 1\n        "

    const/4 v2, 0x1

    .line 1
    invoke-static {v0, v2}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v3

    move-wide/from16 v4, p1

    .line 2
    invoke-virtual {v3, v2, v4, v5}, Ln3/c0/y;->l0(IJ)V

    .line 3
    iget-object v0, v1, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 4
    iget-object v0, v1, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v3, v4, v5}, Ln3/c0/h0/b;->b(Ln3/c0/q;Ln3/e0/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v6

    :try_start_0
    const-string v0, "messageID"

    .line 5
    invoke-static {v6, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v7, "d"

    .line 6
    invoke-static {v6, v7}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "k"

    .line 7
    invoke-static {v6, v8}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "p"

    .line 8
    invoke-static {v6, v9}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "c"

    .line 9
    invoke-static {v6, v10}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "o"

    .line 10
    invoke-static {v6, v11}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "f"

    .line 11
    invoke-static {v6, v12}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "g"

    .line 12
    invoke-static {v6, v13}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "s"

    .line 13
    invoke-static {v6, v14}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "account_model_id"

    .line 14
    invoke-static {v6, v15}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v2, "val1"

    .line 15
    invoke-static {v6, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v4, "val2"

    .line 16
    invoke-static {v6, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "val3"

    .line 17
    invoke-static {v6, v5}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v3

    :try_start_1
    const-string v3, "val4"

    .line 18
    invoke-static {v6, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v17, v3

    const-string v3, "val5"

    .line 19
    invoke-static {v6, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v18, v3

    const-string v3, "datetime"

    .line 20
    invoke-static {v6, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v19, v3

    const-string v3, "address"

    .line 21
    invoke-static {v6, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v20, v3

    const-string v3, "date"

    .line 22
    invoke-static {v6, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v21, v3

    const-string v3, "msg_date"

    .line 23
    invoke-static {v6, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v22, v3

    const-string v3, "dff_val1"

    .line 24
    invoke-static {v6, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v23, v3

    const-string v3, "dff_val2"

    .line 25
    invoke-static {v6, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v24, v3

    const-string v3, "dff_val3"

    .line 26
    invoke-static {v6, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v25, v3

    const-string v3, "dff_val4"

    .line 27
    invoke-static {v6, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v26, v3

    const-string v3, "dff_val5"

    .line 28
    invoke-static {v6, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v27, v3

    const-string v3, "active"

    .line 29
    invoke-static {v6, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v28, v3

    const-string v3, "state"

    .line 30
    invoke-static {v6, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v29, v3

    const-string v3, "synthetic_record_id"

    .line 31
    invoke-static {v6, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v30, v3

    const-string v3, "deleted"

    .line 32
    invoke-static {v6, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v31, v3

    const-string v3, "created_at"

    .line 33
    invoke-static {v6, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v32, v3

    const-string v3, "spam_category"

    .line 34
    invoke-static {v6, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v33, v3

    const-string v3, "conversationId"

    .line 35
    invoke-static {v6, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    move/from16 v34, v5

    const-string v5, "transport"

    .line 36
    invoke-static {v6, v5}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    move/from16 v35, v4

    const-string v4, "classified_by"

    .line 37
    invoke-static {v6, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    move/from16 v36, v2

    const-string v2, "message"

    .line 38
    invoke-static {v6, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v37, v15

    const-string v15, "updateCategory"

    .line 39
    invoke-static {v6, v15}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    move/from16 v38, v14

    const-string v14, "no_of_words"

    .line 40
    invoke-static {v6, v14}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    move/from16 v39, v13

    const-string v13, "confidence_score"

    .line 41
    invoke-static {v6, v13}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    .line 42
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v40

    if-eqz v40, :cond_1e

    .line 43
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v42

    .line 44
    invoke-interface {v6, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 45
    iget-object v5, v1, Le/a/c/c/d/e0;->c:Le/a/c/c0/g;

    invoke-virtual {v5, v3}, Le/a/c/c0/g;->e(I)Lcom/truecaller/insights/commons/model/Transport;

    move-result-object v44

    .line 46
    invoke-interface {v6, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 47
    iget-object v4, v1, Le/a/c/c/d/e0;->c:Le/a/c/c0/g;

    invoke-virtual {v4, v3}, Le/a/c/c0/g;->d(I)Lcom/truecaller/insights/models/pdo/ClassifierType;

    move-result-object v47

    .line 48
    invoke-interface {v6, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v45, 0x0

    goto :goto_0

    .line 49
    :cond_0
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v45, v2

    .line 50
    :goto_0
    invoke-interface {v6, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v46, 0x0

    goto :goto_1

    .line 51
    :cond_1
    invoke-interface {v6, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v46, v2

    .line 52
    :goto_1
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v49

    .line 53
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getFloat(I)F

    move-result v48

    .line 54
    new-instance v2, Lcom/truecaller/insights/models/pdo/ExtendedPdo;

    move-object/from16 v41, v2

    invoke-direct/range {v41 .. v49}, Lcom/truecaller/insights/models/pdo/ExtendedPdo;-><init>(JLcom/truecaller/insights/commons/model/Transport;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/insights/models/pdo/ClassifierType;FI)V

    .line 55
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 56
    invoke-virtual {v2, v3, v4}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setMessageID(J)V

    .line 57
    invoke-interface {v6, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    .line 58
    :cond_2
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 59
    :goto_2
    invoke-virtual {v2, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setD(Ljava/lang/String;)V

    .line 60
    invoke-interface {v6, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_3

    .line 61
    :cond_3
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 62
    :goto_3
    invoke-virtual {v2, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setK(Ljava/lang/String;)V

    .line 63
    invoke-interface {v6, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    goto :goto_4

    .line 64
    :cond_4
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 65
    :goto_4
    invoke-virtual {v2, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setP(Ljava/lang/String;)V

    .line 66
    invoke-interface {v6, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    goto :goto_5

    .line 67
    :cond_5
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 68
    :goto_5
    invoke-virtual {v2, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setC(Ljava/lang/String;)V

    .line 69
    invoke-interface {v6, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    goto :goto_6

    .line 70
    :cond_6
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 71
    :goto_6
    invoke-virtual {v2, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setO(Ljava/lang/String;)V

    .line 72
    invoke-interface {v6, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto :goto_7

    .line 73
    :cond_7
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 74
    :goto_7
    invoke-virtual {v2, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setF(Ljava/lang/String;)V

    move/from16 v0, v39

    .line 75
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v0, 0x0

    goto :goto_8

    .line 76
    :cond_8
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 77
    :goto_8
    invoke-virtual {v2, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setG(Ljava/lang/String;)V

    move/from16 v0, v38

    .line 78
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v0, 0x0

    goto :goto_9

    .line 79
    :cond_9
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 80
    :goto_9
    invoke-virtual {v2, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setS(Ljava/lang/String;)V

    move/from16 v0, v37

    .line 81
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_a

    const/4 v0, 0x0

    goto :goto_a

    .line 82
    :cond_a
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 83
    :goto_a
    invoke-virtual {v2, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setAccountModelId(Ljava/lang/Long;)V

    move/from16 v0, v36

    .line 84
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_b

    const/4 v0, 0x0

    goto :goto_b

    .line 85
    :cond_b
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 86
    :goto_b
    invoke-virtual {v2, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setVal1(Ljava/lang/String;)V

    move/from16 v0, v35

    .line 87
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_c

    const/4 v0, 0x0

    goto :goto_c

    .line 88
    :cond_c
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 89
    :goto_c
    invoke-virtual {v2, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setVal2(Ljava/lang/String;)V

    move/from16 v0, v34

    .line 90
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_d

    const/4 v0, 0x0

    goto :goto_d

    .line 91
    :cond_d
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 92
    :goto_d
    invoke-virtual {v2, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setVal3(Ljava/lang/String;)V

    move/from16 v0, v17

    .line 93
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 v0, 0x0

    goto :goto_e

    .line 94
    :cond_e
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 95
    :goto_e
    invoke-virtual {v2, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setVal4(Ljava/lang/String;)V

    move/from16 v0, v18

    .line 96
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_f

    const/4 v0, 0x0

    goto :goto_f

    .line 97
    :cond_f
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 98
    :goto_f
    invoke-virtual {v2, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setVal5(Ljava/lang/String;)V

    move/from16 v0, v19

    .line 99
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_10

    const/4 v0, 0x0

    goto :goto_10

    .line 100
    :cond_10
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 101
    :goto_10
    invoke-virtual {v2, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDatetime(Ljava/lang/String;)V

    move/from16 v0, v20

    .line 102
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_11

    const/4 v0, 0x0

    goto :goto_11

    .line 103
    :cond_11
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 104
    :goto_11
    invoke-virtual {v2, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setAddress(Ljava/lang/String;)V

    move/from16 v0, v21

    .line 105
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_12

    const/4 v0, 0x0

    goto :goto_12

    .line 106
    :cond_12
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 107
    :goto_12
    invoke-virtual {v2, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDate(Ljava/lang/String;)V

    move/from16 v0, v22

    .line 108
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_13

    const/4 v0, 0x0

    goto :goto_13

    .line 109
    :cond_13
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 110
    :goto_13
    iget-object v3, v1, Le/a/c/c/d/e0;->c:Le/a/c/c0/g;

    invoke-virtual {v3, v0}, Le/a/c/c0/g;->c(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object v0

    .line 111
    invoke-virtual {v2, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setMsgDate(Ljava/util/Date;)V

    move/from16 v0, v23

    .line 112
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_14

    const/4 v0, 0x0

    goto :goto_14

    .line 113
    :cond_14
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 114
    :goto_14
    invoke-virtual {v2, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDffVal1(Ljava/lang/String;)V

    move/from16 v0, v24

    .line 115
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_15

    const/4 v0, 0x0

    goto :goto_15

    .line 116
    :cond_15
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 117
    :goto_15
    invoke-virtual {v2, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDffVal2(Ljava/lang/String;)V

    move/from16 v0, v25

    .line 118
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_16

    const/4 v0, 0x0

    goto :goto_16

    .line 119
    :cond_16
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 120
    :goto_16
    invoke-virtual {v2, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDffVal3(Ljava/lang/String;)V

    move/from16 v0, v26

    .line 121
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_17

    const/4 v0, 0x0

    goto :goto_17

    .line 122
    :cond_17
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 123
    :goto_17
    invoke-virtual {v2, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDffVal4(Ljava/lang/String;)V

    move/from16 v0, v27

    .line 124
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_18

    const/4 v0, 0x0

    goto :goto_18

    .line 125
    :cond_18
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 126
    :goto_18
    invoke-virtual {v2, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDffVal5(Ljava/lang/String;)V

    move/from16 v0, v28

    .line 127
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    goto :goto_19

    :cond_19
    const/4 v0, 0x0

    .line 128
    :goto_19
    invoke-virtual {v2, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setActive(Z)V

    move/from16 v0, v29

    .line 129
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_1a

    const/4 v0, 0x0

    goto :goto_1a

    .line 130
    :cond_1a
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 131
    :goto_1a
    invoke-virtual {v2, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setState(Ljava/lang/String;)V

    move/from16 v0, v30

    .line 132
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_1b

    const/4 v0, 0x0

    goto :goto_1b

    .line 133
    :cond_1b
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 134
    :goto_1b
    invoke-virtual {v2, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setSyntheticRecordId(Ljava/lang/Long;)V

    move/from16 v0, v31

    .line 135
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_1c

    :cond_1c
    const/4 v0, 0x0

    .line 136
    :goto_1c
    invoke-virtual {v2, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDeleted(Z)V

    move/from16 v0, v32

    .line 137
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_1d

    const/4 v5, 0x0

    goto :goto_1d

    .line 138
    :cond_1d
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 139
    :goto_1d
    iget-object v0, v1, Le/a/c/c/d/e0;->c:Le/a/c/c0/g;

    invoke-virtual {v0, v5}, Le/a/c/c0/g;->c(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object v0

    .line 140
    invoke-virtual {v2, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setCreatedAt(Ljava/util/Date;)V

    move/from16 v0, v33

    .line 141
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 142
    invoke-virtual {v2, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setSpamCategory(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v5, v2

    goto :goto_1e

    :cond_1e
    const/4 v5, 0x0

    .line 143
    :goto_1e
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 144
    invoke-virtual/range {v16 .. v16}, Ln3/c0/y;->l()V

    return-object v5

    :catchall_0
    move-exception v0

    goto :goto_1f

    :catchall_1
    move-exception v0

    move-object/from16 v16, v3

    .line 145
    :goto_1f
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 146
    invoke-virtual/range {v16 .. v16}, Ln3/c0/y;->l()V

    .line 147
    throw v0
.end method

.method public H(JILs1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/models/pdo/ExtendedPdo;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "\n            SELECT sbt.messageID as messageID, sbt.address as address, sbt.spam_category as spam_category, \n                sbt.classified_by as classified_by, sbt.confidence_score as confidence_score, sbt.transport as transport, \n                sbt.conversationId as conversationId, sbt.message as message, sbt.no_of_words as no_of_words, sbt.deleted as deleted, \n                sbt.created_at as created_at, IFNULL(pdo.d, \"\") AS d, IFNULL(pdo.k,\"\") AS k,\n                IFNULL(pdo.p, \"\") AS p, IFNULL(pdo.c, \"\") As c, IFNULL(pdo.o, \"\") as o, IFNULL(pdo.f, \"\") as f, \n                IFNULL(pdo.g, \"\") AS g, IFNULL(pdo.s, \"\") AS s, IFNULL(pdo.val1, \"\") AS val1, IFNULL(pdo.val2, \"\") AS val2, \n                IFNULL(pdo.val3, \"\") AS val3, IFNULL(pdo.val4, \"\") AS val4, IFNULL(pdo.val5, \"\") AS val5, IFNULL(pdo.date, \"\") AS date, \n                IFNULL(pdo.dff_val1, \"\") AS dff_val1, IFNULL(pdo.dff_val2, \"\") AS dff_val2, IFNULL(pdo.dff_val3, \"\") AS dff_val3, \n                IFNULL(pdo.dff_val4, \"\") AS dff_val4, IFNULL(pdo.dff_val5, \"\") AS dff_val5, IFNULL(pdo.datetime, \"\") datetime, \n                IFNULL(pdo.synthetic_record_id, \"\") as synthetic_record_id, IFNULL(pdo.account_model_id, \"\") as account_model_id,\n                IFNULL(sbt.date, \"\") AS msg_date, IFNULL(pdo.active, \"\") AS active, \n                IFNULL(pdo.state, \"\") AS state, IFNULL(sbt.updateCategory, \"\") AS updateCategory FROM sms_backup_table sbt \n            LEFT JOIN parsed_data_object_table pdo\n            ON pdo.messageID = sbt.messageID\n            WHERE sbt.deleted = 0 \n            AND sbt.spam_category != 4\n            AND sbt.conversationId = ?\n            ORDER BY sbt.date DESC LIMIT ?\n        "

    const/4 v1, 0x2

    .line 1
    invoke-static {v0, v1}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    const/4 v2, 0x1

    .line 2
    invoke-virtual {v0, v2, p1, p2}, Ln3/c0/y;->l0(IJ)V

    int-to-long p1, p3

    .line 3
    invoke-virtual {v0, v1, p1, p2}, Ln3/c0/y;->l0(IJ)V

    .line 4
    new-instance p1, Landroid/os/CancellationSignal;

    invoke-direct {p1}, Landroid/os/CancellationSignal;-><init>()V

    .line 5
    iget-object p2, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    new-instance p3, Le/a/c/c/d/e0$k;

    invoke-direct {p3, p0, v0}, Le/a/c/c/d/e0$k;-><init>(Le/a/c/c/d/e0;Ln3/c0/y;)V

    const/4 v0, 0x0

    invoke-static {p2, v0, p1, p3, p4}, Ln3/c0/g;->b(Ln3/c0/q;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public I(JJJLs1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/models/pdo/ExtendedPdo;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "\n            SELECT sbt.messageID as messageID, sbt.address as address, sbt.spam_category as spam_category, \n                sbt.classified_by as classified_by, sbt.confidence_score as confidence_score, sbt.transport as transport, \n                sbt.conversationId as conversationId, sbt.message as message, sbt.no_of_words as no_of_words, sbt.deleted as deleted, \n                sbt.created_at as created_at, IFNULL(pdo.d, \"\") AS d, IFNULL(pdo.k,\"\") AS k,\n                IFNULL(pdo.p, \"\") AS p, IFNULL(pdo.c, \"\") As c, IFNULL(pdo.o, \"\") as o, IFNULL(pdo.f, \"\") as f, \n                IFNULL(pdo.g, \"\") AS g, IFNULL(pdo.s, \"\") AS s, IFNULL(pdo.val1, \"\") AS val1, IFNULL(pdo.val2, \"\") AS val2, \n                IFNULL(pdo.val3, \"\") AS val3, IFNULL(pdo.val4, \"\") AS val4, IFNULL(pdo.val5, \"\") AS val5, IFNULL(pdo.date, \"\") AS date, \n                IFNULL(pdo.dff_val1, \"\") AS dff_val1, IFNULL(pdo.dff_val2, \"\") AS dff_val2, IFNULL(pdo.dff_val3, \"\") AS dff_val3, \n                IFNULL(pdo.dff_val4, \"\") AS dff_val4, IFNULL(pdo.dff_val5, \"\") AS dff_val5, IFNULL(pdo.datetime, \"\") datetime, \n                IFNULL(pdo.synthetic_record_id, \"\") as synthetic_record_id, IFNULL(pdo.account_model_id, \"\") as account_model_id,\n                IFNULL(sbt.date, \"\") AS msg_date, IFNULL(pdo.active, \"\") AS active, \n                IFNULL(pdo.state, \"\") AS state, IFNULL(sbt.updateCategory, \"\") AS updateCategory FROM sms_backup_table sbt \n            LEFT JOIN parsed_data_object_table pdo\n            ON pdo.messageID = sbt.messageID\n            WHERE sbt.deleted = 0 \n            AND sbt.spam_category != 4\n            AND sbt.conversationId = ?\n            AND sbt.date > ? AND sbt.date < ?\n            ORDER BY sbt.date DESC\n        "

    const/4 v1, 0x3

    .line 1
    invoke-static {v0, v1}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    const/4 v2, 0x1

    .line 2
    invoke-virtual {v0, v2, p1, p2}, Ln3/c0/y;->l0(IJ)V

    const/4 p1, 0x2

    .line 3
    invoke-virtual {v0, p1, p3, p4}, Ln3/c0/y;->l0(IJ)V

    .line 4
    invoke-virtual {v0, v1, p5, p6}, Ln3/c0/y;->l0(IJ)V

    .line 5
    new-instance p1, Landroid/os/CancellationSignal;

    invoke-direct {p1}, Landroid/os/CancellationSignal;-><init>()V

    .line 6
    iget-object p2, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    new-instance p3, Le/a/c/c/d/e0$m;

    invoke-direct {p3, p0, v0}, Le/a/c/c/d/e0$m;-><init>(Le/a/c/c/d/e0;Ln3/c0/y;)V

    const/4 p4, 0x0

    invoke-static {p2, p4, p1, p3, p7}, Ln3/c0/g;->b(Ln3/c0/q;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public J(J)Ljava/util/List;
    .locals 40
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/models/pdo/ParsedDataObject;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "SELECT * FROM parsed_data_object_table WHERE account_model_id = ?"

    const/4 v2, 0x1

    .line 1
    invoke-static {v0, v2}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v3

    move-wide/from16 v4, p1

    .line 2
    invoke-virtual {v3, v2, v4, v5}, Ln3/c0/y;->l0(IJ)V

    .line 3
    iget-object v0, v1, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 4
    iget-object v0, v1, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v3, v4, v5}, Ln3/c0/h0/b;->b(Ln3/c0/q;Ln3/e0/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v6

    :try_start_0
    const-string v0, "messageID"

    .line 5
    invoke-static {v6, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v7, "d"

    .line 6
    invoke-static {v6, v7}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "k"

    .line 7
    invoke-static {v6, v8}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "p"

    .line 8
    invoke-static {v6, v9}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "c"

    .line 9
    invoke-static {v6, v10}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "o"

    .line 10
    invoke-static {v6, v11}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "f"

    .line 11
    invoke-static {v6, v12}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "g"

    .line 12
    invoke-static {v6, v13}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "s"

    .line 13
    invoke-static {v6, v14}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "account_model_id"

    .line 14
    invoke-static {v6, v15}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v2, "val1"

    .line 15
    invoke-static {v6, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v4, "val2"

    .line 16
    invoke-static {v6, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "val3"

    .line 17
    invoke-static {v6, v5}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-object/from16 v16, v3

    :try_start_1
    const-string v3, "val4"

    .line 18
    invoke-static {v6, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    const-string v1, "val5"

    .line 19
    invoke-static {v6, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v17, v1

    const-string v1, "datetime"

    .line 20
    invoke-static {v6, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v18, v1

    const-string v1, "address"

    .line 21
    invoke-static {v6, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v19, v1

    const-string v1, "date"

    .line 22
    invoke-static {v6, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v20, v1

    const-string v1, "msg_date"

    .line 23
    invoke-static {v6, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v21, v1

    const-string v1, "dff_val1"

    .line 24
    invoke-static {v6, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v22, v1

    const-string v1, "dff_val2"

    .line 25
    invoke-static {v6, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v23, v1

    const-string v1, "dff_val3"

    .line 26
    invoke-static {v6, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v24, v1

    const-string v1, "dff_val4"

    .line 27
    invoke-static {v6, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v25, v1

    const-string v1, "dff_val5"

    .line 28
    invoke-static {v6, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v26, v1

    const-string v1, "active"

    .line 29
    invoke-static {v6, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v27, v1

    const-string v1, "state"

    .line 30
    invoke-static {v6, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v28, v1

    const-string v1, "synthetic_record_id"

    .line 31
    invoke-static {v6, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v29, v1

    const-string v1, "deleted"

    .line 32
    invoke-static {v6, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v30, v1

    const-string v1, "created_at"

    .line 33
    invoke-static {v6, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v31, v1

    const-string v1, "spam_category"

    .line 34
    invoke-static {v6, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v32, v1

    .line 35
    new-instance v1, Ljava/util/ArrayList;

    move/from16 v33, v3

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 36
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 37
    new-instance v3, Lcom/truecaller/insights/models/pdo/ParsedDataObject;

    invoke-direct {v3}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;-><init>()V

    move/from16 v34, v4

    move/from16 v35, v5

    .line 38
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 39
    invoke-virtual {v3, v4, v5}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setMessageID(J)V

    .line 40
    invoke-interface {v6, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    .line 41
    :cond_0
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 42
    :goto_1
    invoke-virtual {v3, v4}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setD(Ljava/lang/String;)V

    .line 43
    invoke-interface {v6, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    goto :goto_2

    .line 44
    :cond_1
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 45
    :goto_2
    invoke-virtual {v3, v4}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setK(Ljava/lang/String;)V

    .line 46
    invoke-interface {v6, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    goto :goto_3

    .line 47
    :cond_2
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 48
    :goto_3
    invoke-virtual {v3, v4}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setP(Ljava/lang/String;)V

    .line 49
    invoke-interface {v6, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    goto :goto_4

    .line 50
    :cond_3
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 51
    :goto_4
    invoke-virtual {v3, v4}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setC(Ljava/lang/String;)V

    .line 52
    invoke-interface {v6, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x0

    goto :goto_5

    .line 53
    :cond_4
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 54
    :goto_5
    invoke-virtual {v3, v4}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setO(Ljava/lang/String;)V

    .line 55
    invoke-interface {v6, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x0

    goto :goto_6

    .line 56
    :cond_5
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 57
    :goto_6
    invoke-virtual {v3, v4}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setF(Ljava/lang/String;)V

    .line 58
    invoke-interface {v6, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x0

    goto :goto_7

    .line 59
    :cond_6
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 60
    :goto_7
    invoke-virtual {v3, v4}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setG(Ljava/lang/String;)V

    .line 61
    invoke-interface {v6, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v4, 0x0

    goto :goto_8

    .line 62
    :cond_7
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 63
    :goto_8
    invoke-virtual {v3, v4}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setS(Ljava/lang/String;)V

    .line 64
    invoke-interface {v6, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, 0x0

    goto :goto_9

    .line 65
    :cond_8
    invoke-interface {v6, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 66
    :goto_9
    invoke-virtual {v3, v4}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setAccountModelId(Ljava/lang/Long;)V

    .line 67
    invoke-interface {v6, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_9

    const/4 v4, 0x0

    goto :goto_a

    .line 68
    :cond_9
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 69
    :goto_a
    invoke-virtual {v3, v4}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setVal1(Ljava/lang/String;)V

    move/from16 v4, v34

    .line 70
    invoke-interface {v6, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_a

    const/4 v5, 0x0

    goto :goto_b

    .line 71
    :cond_a
    invoke-interface {v6, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 72
    :goto_b
    invoke-virtual {v3, v5}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setVal2(Ljava/lang/String;)V

    move/from16 v5, v35

    .line 73
    invoke-interface {v6, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v34

    if-eqz v34, :cond_b

    move/from16 v35, v0

    const/4 v0, 0x0

    goto :goto_c

    .line 74
    :cond_b
    invoke-interface {v6, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v34

    move/from16 v35, v0

    move-object/from16 v0, v34

    .line 75
    :goto_c
    invoke-virtual {v3, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setVal3(Ljava/lang/String;)V

    move/from16 v0, v33

    .line 76
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v33

    if-eqz v33, :cond_c

    move/from16 v34, v0

    const/4 v0, 0x0

    goto :goto_d

    .line 77
    :cond_c
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v33

    move/from16 v34, v0

    move-object/from16 v0, v33

    .line 78
    :goto_d
    invoke-virtual {v3, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setVal4(Ljava/lang/String;)V

    move/from16 v0, v17

    .line 79
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_d

    move/from16 v33, v0

    const/4 v0, 0x0

    goto :goto_e

    .line 80
    :cond_d
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move/from16 v33, v0

    move-object/from16 v0, v17

    .line 81
    :goto_e
    invoke-virtual {v3, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setVal5(Ljava/lang/String;)V

    move/from16 v0, v18

    .line 82
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_e

    move/from16 v18, v0

    const/4 v0, 0x0

    goto :goto_f

    .line 83
    :cond_e
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move/from16 v18, v0

    move-object/from16 v0, v17

    .line 84
    :goto_f
    invoke-virtual {v3, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDatetime(Ljava/lang/String;)V

    move/from16 v0, v19

    .line 85
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_f

    move/from16 v19, v0

    const/4 v0, 0x0

    goto :goto_10

    .line 86
    :cond_f
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move/from16 v19, v0

    move-object/from16 v0, v17

    .line 87
    :goto_10
    invoke-virtual {v3, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setAddress(Ljava/lang/String;)V

    move/from16 v0, v20

    .line 88
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_10

    move/from16 v20, v0

    const/4 v0, 0x0

    goto :goto_11

    .line 89
    :cond_10
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move/from16 v20, v0

    move-object/from16 v0, v17

    .line 90
    :goto_11
    invoke-virtual {v3, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDate(Ljava/lang/String;)V

    move/from16 v0, v21

    .line 91
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_11

    move/from16 v21, v0

    move/from16 v17, v2

    move/from16 v36, v4

    const/4 v0, 0x0

    :goto_12
    move-object/from16 v2, p0

    goto :goto_13

    .line 92
    :cond_11
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v36

    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move/from16 v21, v0

    move/from16 v36, v4

    move-object/from16 v0, v17

    move/from16 v17, v2

    goto :goto_12

    .line 93
    :goto_13
    :try_start_3
    iget-object v4, v2, Le/a/c/c/d/e0;->c:Le/a/c/c0/g;

    invoke-virtual {v4, v0}, Le/a/c/c0/g;->c(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object v0

    .line 94
    invoke-virtual {v3, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setMsgDate(Ljava/util/Date;)V

    move/from16 v0, v22

    .line 95
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_12

    const/4 v4, 0x0

    goto :goto_14

    .line 96
    :cond_12
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 97
    :goto_14
    invoke-virtual {v3, v4}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDffVal1(Ljava/lang/String;)V

    move/from16 v4, v23

    .line 98
    invoke-interface {v6, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v22

    if-eqz v22, :cond_13

    move/from16 v23, v0

    const/4 v0, 0x0

    goto :goto_15

    .line 99
    :cond_13
    invoke-interface {v6, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    move/from16 v23, v0

    move-object/from16 v0, v22

    .line 100
    :goto_15
    invoke-virtual {v3, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDffVal2(Ljava/lang/String;)V

    move/from16 v0, v24

    .line 101
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v22

    if-eqz v22, :cond_14

    move/from16 v24, v0

    const/4 v0, 0x0

    goto :goto_16

    .line 102
    :cond_14
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    move/from16 v24, v0

    move-object/from16 v0, v22

    .line 103
    :goto_16
    invoke-virtual {v3, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDffVal3(Ljava/lang/String;)V

    move/from16 v0, v25

    .line 104
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v22

    if-eqz v22, :cond_15

    move/from16 v25, v0

    const/4 v0, 0x0

    goto :goto_17

    .line 105
    :cond_15
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    move/from16 v25, v0

    move-object/from16 v0, v22

    .line 106
    :goto_17
    invoke-virtual {v3, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDffVal4(Ljava/lang/String;)V

    move/from16 v0, v26

    .line 107
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v22

    if-eqz v22, :cond_16

    move/from16 v26, v0

    const/4 v0, 0x0

    goto :goto_18

    .line 108
    :cond_16
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    move/from16 v26, v0

    move-object/from16 v0, v22

    .line 109
    :goto_18
    invoke-virtual {v3, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDffVal5(Ljava/lang/String;)V

    move/from16 v0, v27

    .line 110
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    move/from16 v27, v0

    if-eqz v22, :cond_17

    const/4 v0, 0x1

    goto :goto_19

    :cond_17
    const/4 v0, 0x0

    .line 111
    :goto_19
    invoke-virtual {v3, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setActive(Z)V

    move/from16 v0, v28

    .line 112
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v22

    if-eqz v22, :cond_18

    move/from16 v28, v0

    const/4 v0, 0x0

    goto :goto_1a

    .line 113
    :cond_18
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    move/from16 v28, v0

    move-object/from16 v0, v22

    .line 114
    :goto_1a
    invoke-virtual {v3, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setState(Ljava/lang/String;)V

    move/from16 v0, v29

    .line 115
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v22

    if-eqz v22, :cond_19

    move/from16 v29, v0

    const/4 v0, 0x0

    goto :goto_1b

    .line 116
    :cond_19
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v37

    invoke-static/range {v37 .. v38}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move/from16 v29, v0

    move-object/from16 v0, v22

    .line 117
    :goto_1b
    invoke-virtual {v3, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setSyntheticRecordId(Ljava/lang/Long;)V

    move/from16 v0, v30

    .line 118
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    move/from16 v30, v0

    if-eqz v22, :cond_1a

    const/4 v0, 0x1

    goto :goto_1c

    :cond_1a
    const/4 v0, 0x0

    .line 119
    :goto_1c
    invoke-virtual {v3, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDeleted(Z)V

    move/from16 v0, v31

    .line 120
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v22

    if-eqz v22, :cond_1b

    move/from16 v31, v0

    move/from16 v22, v4

    const/4 v0, 0x0

    goto :goto_1d

    .line 121
    :cond_1b
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v37

    invoke-static/range {v37 .. v38}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move/from16 v31, v0

    move-object/from16 v0, v22

    move/from16 v22, v4

    .line 122
    :goto_1d
    iget-object v4, v2, Le/a/c/c/d/e0;->c:Le/a/c/c0/g;

    invoke-virtual {v4, v0}, Le/a/c/c0/g;->c(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object v0

    .line 123
    invoke-virtual {v3, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setCreatedAt(Ljava/util/Date;)V

    move/from16 v0, v32

    .line 124
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 125
    invoke-virtual {v3, v4}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setSpamCategory(I)V

    .line 126
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move/from16 v32, v0

    move/from16 v2, v17

    move/from16 v17, v33

    move/from16 v33, v34

    move/from16 v0, v35

    move/from16 v4, v36

    move/from16 v39, v23

    move/from16 v23, v22

    move/from16 v22, v39

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1e

    :cond_1c
    move-object/from16 v2, p0

    .line 127
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 128
    invoke-virtual/range {v16 .. v16}, Ln3/c0/y;->l()V

    return-object v1

    :catchall_1
    move-exception v0

    move-object/from16 v2, p0

    goto :goto_1e

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_1e

    :catchall_3
    move-exception v0

    move-object v2, v1

    move-object/from16 v16, v3

    .line 129
    :goto_1e
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 130
    invoke-virtual/range {v16 .. v16}, Ln3/c0/y;->l()V

    .line 131
    throw v0
.end method

.method public K(Ljava/util/List;JILs1/w/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;JI",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/models/pdo/ExtendedPdo;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "SELECT final.conversationId as \"conversationId\", final.transport as \"transport\", final.messageID as \"messageID\", final.d as \"d\","

    const-string v1, "\n"

    const-string v2, "            final.k as \"k\", final.p as \"p\", final.classified_by as \"classified_by\", final.message as \"message\", final.updateCategory as \"updateCategory\","

    const-string v3, "            final.c as \"c\",final.o as \"o\",final.f as \"f\", final.g as \"g\",final.s as \"s\", final.account_model_id as \"account_model_id\", final.val1 as \"val1\","

    .line 1
    invoke-static {v0, v1, v2, v1, v3}, Le/d/c/a/a;->M(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "            final.val2 as \"val2\",final.val3 as \"val3\", final.val4 as \"val4\", final.val5 as \"val5\", final.datetime as \"datetime\", final.address as \"address\","

    const-string v3, "            final.msg_date as \"msg_date\", final.date as \"date\", final.dff_val1 as \"dff_val1\", final.dff_val2 as \"dff_val2\", "

    .line 2
    invoke-static {v0, v1, v2, v1, v3}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "            final.dff_val3 as \"dff_val3\", final.dff_val4 as \"dff_val4\", final.dff_val5 as \"dff_val5\", final.active as \"active\", final.state as \"state\","

    const-string v3, "            final.synthetic_record_id as \"synthetic_record_id\", final.deleted \"deleted\", final.created_at as \"created_at\", "

    .line 3
    invoke-static {v0, v1, v2, v1, v3}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "            final.spam_category as \"spam_category\", final.no_of_words as \"no_of_words\", final.confidence_score as \"confidence_score\" FROM "

    const-string v3, "           (SELECT parsed_data_object_table.*, sms_backup_table.*, conversationId FROM parsed_data_object_table"

    .line 4
    invoke-static {v0, v1, v2, v1, v3}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "            INNER JOIN sms_backup_table "

    const-string v3, "            ON parsed_data_object_table.messageID = sms_backup_table.messageID"

    .line 5
    invoke-static {v0, v1, v2, v1, v3}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "            WHERE conversationId = "

    const-string v3, "?"

    .line 6
    invoke-static {v0, v1, v2, v3, v1}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "            AND d in ("

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 9
    invoke-static {v0, v2}, Ln3/c0/h0/d;->a(Ljava/lang/StringBuilder;I)V

    const-string v4, ")"

    .line 10
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "            ORDER BY msg_date DESC"

    const-string v5, "            LIMIT "

    .line 12
    invoke-static {v0, v4, v1, v5, v3}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ") as final"

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    add-int/2addr v2, v1

    .line 15
    invoke-static {v0, v2}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    const/4 v3, 0x1

    .line 16
    invoke-virtual {v0, v3, p2, p3}, Ln3/c0/y;->l0(IJ)V

    .line 17
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-nez p2, :cond_0

    .line 18
    invoke-virtual {v0, v1}, Ln3/c0/y;->y0(I)V

    goto :goto_1

    .line 19
    :cond_0
    invoke-virtual {v0, v1, p2}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    int-to-long p1, p4

    .line 20
    invoke-virtual {v0, v2, p1, p2}, Ln3/c0/y;->l0(IJ)V

    .line 21
    new-instance p1, Landroid/os/CancellationSignal;

    invoke-direct {p1}, Landroid/os/CancellationSignal;-><init>()V

    .line 22
    iget-object p2, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    const/4 p3, 0x0

    new-instance p4, Le/a/c/c/d/e0$i;

    invoke-direct {p4, p0, v0}, Le/a/c/c/d/e0$i;-><init>(Le/a/c/c/d/e0;Ln3/c0/y;)V

    invoke-static {p2, p3, p1, p4, p5}, Ln3/c0/g;->b(Ln3/c0/q;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public L(Ljava/util/List;JJJLs1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;JJJ",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/models/pdo/ExtendedPdo;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "\n"

    const-string v1, "            SELECT final.conversationId as \"conversationId\", final.transport as \"transport\", final.messageID as \"messageID\", final.d as \"d\", "

    const-string v2, "            final.k as \"k\", final.p as \"p\", final.classified_by as \"classified_by\", final.message as \"message\", final.updateCategory as \"updateCategory\","

    .line 1
    invoke-static {v0, v1, v0, v2, v0}, Le/d/c/a/a;->M(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "            final.c as \"c\",final.o as \"o\",final.f as \"f\", final.g as \"g\",final.s as \"s\", final.account_model_id as \"account_model_id\", final.val1 as \"val1\","

    const-string v3, "            final.val2 as \"val2\",final.val3 as \"val3\", final.val4 as \"val4\", final.val5 as \"val5\", final.datetime as \"datetime\", final.address as \"address\","

    .line 2
    invoke-static {v1, v2, v0, v3, v0}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "            final.msg_date as \"msg_date\", final.date as \"date\", final.dff_val1 as \"dff_val1\", final.dff_val2 as \"dff_val2\", "

    const-string v3, "            final.dff_val3 as \"dff_val3\", final.dff_val4 as \"dff_val4\", final.dff_val5 as \"dff_val5\", final.active as \"active\", final.state as \"state\","

    .line 3
    invoke-static {v1, v2, v0, v3, v0}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "            final.synthetic_record_id as \"synthetic_record_id\", final.deleted \"deleted\", final.created_at as \"created_at\", "

    const-string v3, "            final.spam_category as \"spam_category\", final.no_of_words as \"no_of_words\", final.confidence_score as \"confidence_score\" FROM "

    .line 4
    invoke-static {v1, v2, v0, v3, v0}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "           (SELECT * FROM parsed_data_object_table"

    const-string v3, "            INNER JOIN sms_backup_table "

    .line 5
    invoke-static {v1, v2, v0, v3, v0}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "            ON parsed_data_object_table.messageID = sms_backup_table.messageID"

    const-string v3, "            WHERE conversationId = "

    const-string v4, "?"

    .line 6
    invoke-static {v1, v2, v0, v3, v4}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "            AND msg_date > "

    const-string v3, " AND msg_date < "

    .line 7
    invoke-static {v1, v0, v2, v4, v3}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "            AND d in ("

    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 12
    invoke-static {v1, v2}, Ln3/c0/h0/d;->a(Ljava/lang/StringBuilder;I)V

    const-string v3, ")"

    .line 13
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "            ORDER BY msg_date DESC) as final"

    .line 15
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "        "

    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    add-int/2addr v2, v1

    .line 19
    invoke-static {v0, v2}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    const/4 v2, 0x1

    .line 20
    invoke-virtual {v0, v2, p2, p3}, Ln3/c0/y;->l0(IJ)V

    const/4 p2, 0x2

    .line 21
    invoke-virtual {v0, p2, p4, p5}, Ln3/c0/y;->l0(IJ)V

    .line 22
    invoke-virtual {v0, v1, p6, p7}, Ln3/c0/y;->l0(IJ)V

    .line 23
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x4

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    if-nez p3, :cond_0

    .line 24
    invoke-virtual {v0, p2}, Ln3/c0/y;->y0(I)V

    goto :goto_1

    .line 25
    :cond_0
    invoke-virtual {v0, p2, p3}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 26
    :cond_1
    new-instance p1, Landroid/os/CancellationSignal;

    invoke-direct {p1}, Landroid/os/CancellationSignal;-><init>()V

    .line 27
    iget-object p2, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    const/4 p3, 0x0

    new-instance p4, Le/a/c/c/d/e0$l;

    invoke-direct {p4, p0, v0}, Le/a/c/c/d/e0$l;-><init>(Le/a/c/c/d/e0;Ln3/c0/y;)V

    invoke-static {p2, p3, p1, p4, p8}, Ln3/c0/g;->b(Ln3/c0/q;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public M(Ljava/util/List;Ljava/util/Date;ILs1/w/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Date;",
            "I",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "+",
            "Lcom/truecaller/insights/models/pdo/ParsedDataObject;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "\n"

    const-string v1, "            SELECT * FROM parsed_data_object_table"

    const-string v2, "            WHERE "

    .line 1
    invoke-static {v0, v1, v0, v2, v0}, Le/d/c/a/a;->M(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "                d IN ("

    .line 2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 4
    invoke-static {v1, v2}, Ln3/c0/h0/d;->a(Ljava/lang/StringBuilder;I)V

    const-string v3, ") AND "

    .line 5
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "                msg_date > "

    const-string v4, "?"

    const-string v5, " AND"

    .line 7
    invoke-static {v1, v3, v4, v5, v0}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "                state = \'ORIGINAL\'"

    const-string v5, "            ORDER BY msg_date LIMIT "

    .line 8
    invoke-static {v1, v3, v0, v5, v4}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "        "

    .line 9
    invoke-static {v1, v0, v3}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v2, 0x2

    .line 10
    invoke-static {v0, v1}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    .line 11
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v3, 0x1

    move v4, v3

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-nez v5, :cond_0

    .line 12
    invoke-virtual {v0, v4}, Ln3/c0/y;->y0(I)V

    goto :goto_1

    .line 13
    :cond_0
    invoke-virtual {v0, v4, v5}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    add-int/2addr v2, v3

    .line 14
    iget-object p1, p0, Le/a/c/c/d/e0;->c:Le/a/c/c0/g;

    invoke-virtual {p1, p2}, Le/a/c/c0/g;->a(Ljava/util/Date;)Ljava/lang/Long;

    move-result-object p1

    if-nez p1, :cond_2

    .line 15
    invoke-virtual {v0, v2}, Ln3/c0/y;->y0(I)V

    goto :goto_2

    .line 16
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {v0, v2, p1, p2}, Ln3/c0/y;->l0(IJ)V

    :goto_2
    int-to-long p1, p3

    .line 17
    invoke-virtual {v0, v1, p1, p2}, Ln3/c0/y;->l0(IJ)V

    .line 18
    new-instance p1, Landroid/os/CancellationSignal;

    invoke-direct {p1}, Landroid/os/CancellationSignal;-><init>()V

    .line 19
    iget-object p2, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    const/4 p3, 0x0

    new-instance v1, Le/a/c/c/d/e0$d0;

    invoke-direct {v1, p0, v0}, Le/a/c/c/d/e0$d0;-><init>(Le/a/c/c/d/e0;Ln3/c0/y;)V

    invoke-static {p2, p3, p1, v1, p4}, Ln3/c0/g;->b(Ln3/c0/q;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public N(Ljava/lang/String;JLjava/util/List;Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/models/pdo/ExtendedPdo;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "\n"

    const-string v1, "            SELECT final.conversationId as \"conversationId\", final.transport as \"transport\", final.messageID as \"messageID\", final.d as \"d\", "

    const-string v2, "            final.k as \"k\", final.p as \"p\", final.classified_by as \"classified_by\", final.message as \"message\", final.updateCategory as \"updateCategory\","

    .line 1
    invoke-static {v0, v1, v0, v2, v0}, Le/d/c/a/a;->M(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "            final.c as \"c\",final.o as \"o\",final.f as \"f\", final.g as \"g\",final.s as \"s\", final.account_model_id as \"account_model_id\", final.val1 as \"val1\","

    const-string v3, "            final.val2 as \"val2\",final.val3 as \"val3\", final.val4 as \"val4\", final.val5 as \"val5\", final.datetime as \"datetime\", final.address as \"address\","

    .line 2
    invoke-static {v1, v2, v0, v3, v0}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "            final.msg_date as \"msg_date\", final.date as \"date\", final.dff_val1 as \"dff_val1\", final.dff_val2 as \"dff_val2\", "

    const-string v3, "            final.dff_val3 as \"dff_val3\", final.dff_val4 as \"dff_val4\", final.dff_val5 as \"dff_val5\", final.active as \"active\", final.state as \"state\","

    .line 3
    invoke-static {v1, v2, v0, v3, v0}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "            final.synthetic_record_id as \"synthetic_record_id\", final.deleted \"deleted\", final.created_at as \"created_at\", "

    const-string v3, "            final.spam_category as \"spam_category\", final.no_of_words as \"no_of_words\", final.confidence_score as \"confidence_score\" FROM "

    .line 4
    invoke-static {v1, v2, v0, v3, v0}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "           (SELECT * FROM parsed_data_object_table as pdo INNER JOIN sms_backup_table as sbt ON pdo.messageID = sbt.messageID"

    const-string v3, "            WHERE pdo.address = "

    const-string v4, "?"

    .line 5
    invoke-static {v1, v2, v0, v3, v4}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, " AND msg_date > "

    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " AND d = \'Bill\' AND val3 != \"\" AND CAST(val3 AS INTEGER) IN ("

    .line 8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    .line 10
    invoke-static {v1, v2}, Ln3/c0/h0/d;->a(Ljava/lang/StringBuilder;I)V

    const-string v3, ")"

    .line 11
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "            ORDER BY msg_date DESC) as final"

    .line 13
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "        "

    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    add-int/2addr v2, v1

    .line 17
    invoke-static {v0, v2}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    .line 18
    invoke-virtual {v0, v2}, Ln3/c0/y;->y0(I)V

    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {v0, v2, p1}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    .line 20
    :goto_0
    invoke-virtual {v0, v1, p2, p3}, Ln3/c0/y;->l0(IJ)V

    const/4 p1, 0x3

    .line 21
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    if-nez p3, :cond_1

    .line 22
    invoke-virtual {v0, p1}, Ln3/c0/y;->y0(I)V

    goto :goto_2

    .line 23
    :cond_1
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    int-to-long p3, p3

    invoke-virtual {v0, p1, p3, p4}, Ln3/c0/y;->l0(IJ)V

    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 24
    :cond_2
    new-instance p1, Landroid/os/CancellationSignal;

    invoke-direct {p1}, Landroid/os/CancellationSignal;-><init>()V

    .line 25
    iget-object p2, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    const/4 p3, 0x0

    new-instance p4, Le/a/c/c/d/e0$c0;

    invoke-direct {p4, p0, v0}, Le/a/c/c/d/e0$c0;-><init>(Le/a/c/c/d/e0;Ln3/c0/y;)V

    invoke-static {p2, p3, p1, p4, p5}, Ln3/c0/g;->b(Ln3/c0/q;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public O(JLs1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/insights/models/pdo/SmsBackupMessage;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "SELECT messageID, address, message,\n                        date, conversationId  \n                FROM  sms_backup_table WHERE\n                messageID = ?"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    .line 2
    invoke-virtual {v0, v1, p1, p2}, Ln3/c0/y;->l0(IJ)V

    .line 3
    new-instance p1, Landroid/os/CancellationSignal;

    invoke-direct {p1}, Landroid/os/CancellationSignal;-><init>()V

    .line 4
    iget-object p2, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    const/4 v1, 0x0

    new-instance v2, Le/a/c/c/d/e0$f;

    invoke-direct {v2, p0, v0}, Le/a/c/c/d/e0$f;-><init>(Le/a/c/c/d/e0;Ln3/c0/y;)V

    invoke-static {p2, v1, p1, v2, p3}, Ln3/c0/g;->b(Ln3/c0/q;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public P(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/models/enrichment/linking/LinkPruneMap;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 2
    iget-object v0, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->beginTransaction()V

    .line 3
    :try_start_0
    iget-object v0, p0, Le/a/c/c/d/e0;->d:Ln3/c0/k;

    invoke-virtual {v0, p1}, Ln3/c0/k;->insert(Ljava/lang/Iterable;)V

    .line 4
    iget-object p1, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p1, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->endTransaction()V

    .line 6
    throw p1
.end method

.method public Q(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/truecaller/insights/models/pdo/SmsBackup;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 2
    iget-object v0, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->beginTransaction()V

    .line 3
    :try_start_0
    iget-object v0, p0, Le/a/c/c/d/e0;->e:Ln3/c0/k;

    invoke-virtual {v0, p1}, Ln3/c0/k;->insert(Ljava/lang/Iterable;)V

    .line 4
    iget-object p1, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p1, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->endTransaction()V

    .line 6
    throw p1
.end method

.method public R(Lcom/truecaller/insights/models/pdo/ParsedDataObject;)J
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 2
    iget-object v0, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->beginTransaction()V

    .line 3
    :try_start_0
    iget-object v0, p0, Le/a/c/c/d/e0;->b:Ln3/c0/k;

    invoke-virtual {v0, p1}, Ln3/c0/k;->insertAndReturnId(Ljava/lang/Object;)J

    move-result-wide v0

    .line 4
    iget-object p1, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p1, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->endTransaction()V

    return-wide v0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->endTransaction()V

    .line 6
    throw p1
.end method

.method public S(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/truecaller/insights/models/pdo/ParsedDataObject;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 2
    iget-object v0, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->beginTransaction()V

    .line 3
    :try_start_0
    iget-object v0, p0, Le/a/c/c/d/e0;->b:Ln3/c0/k;

    invoke-virtual {v0, p1}, Ln3/c0/k;->insert(Ljava/lang/Iterable;)V

    .line 4
    iget-object p1, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p1, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->endTransaction()V

    .line 6
    throw p1
.end method

.method public T(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/truecaller/insights/models/pdo/ParsedDataObject;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 2
    iget-object v0, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->beginTransaction()V

    .line 3
    :try_start_0
    iget-object v0, p0, Le/a/c/c/d/e0;->b:Ln3/c0/k;

    invoke-virtual {v0, p1}, Ln3/c0/k;->insertAndReturnIdsList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    .line 4
    iget-object v0, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object v0, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->endTransaction()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->endTransaction()V

    .line 6
    throw p1
.end method

.method public U(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/truecaller/insights/models/pdo/ParsedDataObject;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->beginTransaction()V

    :try_start_0
    const-string v0, "pdoList"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, p1}, Le/a/c/c/d/e0;->T(Ljava/util/List;)Ljava/util/List;

    .line 4
    iget-object p1, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p1, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->endTransaction()V

    .line 6
    throw p1
.end method

.method public V(JJLjava/util/List;)Lq3/a/x2/f;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lq3/a/x2/f<",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/models/pdo/ExtendedPdo;",
            ">;>;"
        }
    .end annotation

    const-string v0, "\n"

    const-string v1, "        SELECT sbt.conversationId as \"conversationId\", sbt.transport as \"transport\", final.messageID as \"messageID\", final.d as \"d\", "

    const-string v2, "            final.k as \"k\", final.p as \"p\", sbt.classified_by as \"classified_by\", sbt.message as \"message\", sbt.updateCategory as \"updateCategory\","

    .line 1
    invoke-static {v0, v1, v0, v2, v0}, Le/d/c/a/a;->M(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "            final.c as \"c\",final.o as \"o\",final.f as \"f\", final.g as \"g\",final.s as \"s\", final.account_model_id as \"account_model_id\", final.val1 as \"val1\","

    const-string v3, "            final.val2 as \"val2\",final.val3 as \"val3\", final.val4 as \"val4\", final.val5 as \"val5\", final.datetime as \"datetime\", final.address as \"address\","

    .line 2
    invoke-static {v1, v2, v0, v3, v0}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "            final.msg_date as \"msg_date\", final.date as \"date\", final.dff_val1 as \"dff_val1\", final.dff_val2 as \"dff_val2\", "

    const-string v3, "            final.dff_val3 as \"dff_val3\", final.dff_val4 as \"dff_val4\", final.dff_val5 as \"dff_val5\", final.active as \"active\", final.state as \"state\","

    .line 3
    invoke-static {v1, v2, v0, v3, v0}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "            final.synthetic_record_id as \"synthetic_record_id\", final.deleted \"deleted\", final.created_at as \"created_at\", "

    const-string v3, "            final.spam_category as \"spam_category\", sbt.no_of_words as \"no_of_words\", sbt.confidence_score as \"confidence_score\""

    .line 4
    invoke-static {v1, v2, v0, v3, v0}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "        FROM (SELECT messageID,d,k, p, c, o, f, g, s, account_model_id, val1, val2, val3, val4, val5, datetime, address, msg_date, date, "

    const-string v3, "        dff_val1, dff_val2, dff_val3, dff_val4, dff_val5, active,state,synthetic_record_id, deleted, created_at, spam_category"

    .line 5
    invoke-static {v1, v2, v0, v3, v0}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "        FROM parsed_data_object_table as p "

    const-string v3, "        WHERE messageID >= 0 AND active=1 AND d = \'Bank\' AND msg_date <= "

    const-string v4, "?"

    .line 6
    invoke-static {v1, v2, v0, v3, v4}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, " "

    const-string v3, "        AND msg_date >= "

    .line 7
    invoke-static {v1, v2, v0, v3, v4}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, " AND c IN ("

    .line 8
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v6

    .line 10
    invoke-static {v1, v6}, Ln3/c0/h0/d;->a(Ljava/lang/StringBuilder;I)V

    const-string v7, ") "

    .line 11
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "        UNION ALL SELECT pt.messageID as messageID, pdo.d, pdo.k, pdo.p, pdo.c, pdo.o, pdo.f, pdo.g, pdo.s, pdo.account_model_id, pdo.val1, "

    const-string v8, "        pdo.val2, pdo.val3, pdo.val4, pdo.val5, pdo.datetime, pdo.address, pdo.msg_date, pdo.date, pdo.dff_val1, pdo.dff_val2, pdo.dff_val3, "

    .line 13
    invoke-static {v1, v7, v0, v8, v0}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "        pdo.dff_val4, pdo.dff_val5, pdo.active, pdo.state, pdo.synthetic_record_id, pdo.deleted, pdo.created_at, pdo.spam_category "

    const-string v8, "        FROM (select * from parsed_data_object_table where messageID < 0 AND active=1 and d=\'Bank\' AND msg_date <= "

    .line 14
    invoke-static {v1, v7, v0, v8, v4}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-static {v1, v2, v0, v3, v4}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v2

    .line 18
    invoke-static {v1, v2}, Ln3/c0/h0/d;->a(Ljava/lang/StringBuilder;I)V

    const-string v3, ")) as pdo "

    .line 19
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "        LEFT JOIN (select synthetic_record_id,max(messageID) as messageID from parsed_data_object_table where synthetic_record_id IS NOT NULL group by 1) as pt "

    const-string v4, "        on pdo.messageID = pt.synthetic_record_id) as final JOIN sms_backup_table sbt on final.messageID = sbt.messageID ORDER BY final.msg_date DESC"

    .line 21
    invoke-static {v1, v3, v0, v4, v0}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "    "

    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v6, 0x4

    add-int/2addr v2, v1

    .line 24
    invoke-static {v0, v2}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    const/4 v2, 0x1

    .line 25
    invoke-virtual {v0, v2, p1, p2}, Ln3/c0/y;->l0(IJ)V

    const/4 v2, 0x2

    .line 26
    invoke-virtual {v0, v2, p3, p4}, Ln3/c0/y;->l0(IJ)V

    .line 27
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x3

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_0

    .line 28
    invoke-virtual {v0, v3}, Ln3/c0/y;->y0(I)V

    goto :goto_1

    .line 29
    :cond_0
    invoke-virtual {v0, v3, v4}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v6, 0x3

    .line 30
    invoke-virtual {v0, v2, p1, p2}, Ln3/c0/y;->l0(IJ)V

    .line 31
    invoke-virtual {v0, v1, p3, p4}, Ln3/c0/y;->l0(IJ)V

    add-int/lit8 v6, v6, 0x5

    .line 32
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-nez p2, :cond_2

    .line 33
    invoke-virtual {v0, v6}, Ln3/c0/y;->y0(I)V

    goto :goto_3

    .line 34
    :cond_2
    invoke-virtual {v0, v6, p2}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 35
    :cond_3
    iget-object p1, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    const/4 p2, 0x0

    const-string p3, "parsed_data_object_table"

    const-string p4, "sms_backup_table"

    filled-new-array {p3, p4}, [Ljava/lang/String;

    move-result-object p3

    new-instance p4, Le/a/c/c/d/e0$n;

    invoke-direct {p4, p0, v0}, Le/a/c/c/d/e0$n;-><init>(Le/a/c/c/d/e0;Ln3/c0/y;)V

    invoke-static {p1, p2, p3, p4}, Ln3/c0/g;->a(Ln3/c0/q;Z[Ljava/lang/String;Ljava/util/concurrent/Callable;)Lq3/a/x2/f;

    move-result-object p1

    return-object p1
.end method

.method public W(JJLjava/lang/String;)Lq3/a/x2/f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/lang/String;",
            ")",
            "Lq3/a/x2/f<",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/models/pdo/ExtendedPdo;",
            ">;>;"
        }
    .end annotation

    const-string v0, "\n        SELECT mct.conversationId as \"conversationId\", mct.transport as \"transport\", final.messageID as \"messageID\", final.d as \"d\", \n            final.k as \"k\", final.p as \"p\", mct.classified_by as \"classified_by\", mct.message as \"message\", mct.updateCategory as \"updateCategory\",\n            final.c as \"c\",final.o as \"o\",final.f as \"f\", final.g as \"g\",final.s as \"s\", final.account_model_id as \"account_model_id\", final.val1 as \"val1\",\n            final.val2 as \"val2\",final.val3 as \"val3\", final.val4 as \"val4\", final.val5 as \"val5\", final.datetime as \"datetime\", final.address as \"address\",\n            final.msg_date as \"msg_date\", final.date as \"date\", final.dff_val1 as \"dff_val1\", final.dff_val2 as \"dff_val2\", \n            final.dff_val3 as \"dff_val3\", final.dff_val4 as \"dff_val4\", final.dff_val5 as \"dff_val5\", final.active as \"active\", final.state as \"state\",\n            final.synthetic_record_id as \"synthetic_record_id\", final.deleted \"deleted\", final.created_at as \"created_at\", \n            final.spam_category as \"spam_category\", mct.no_of_words as \"no_of_words\", mct.confidence_score as \"confidence_score\" \n        FROM (SELECT messageID,d,k, p, c, o, f, g, s, account_model_id, val1, val2, val3, val4, val5, datetime, address, msg_date, date, \n        dff_val1, dff_val2, dff_val3, dff_val4, dff_val5, active,state,synthetic_record_id, deleted, created_at, spam_category\n        FROM parsed_data_object_table as p \n        WHERE messageID >= 0 AND active=1 AND d = \'Bank\' AND msg_date <= ? \n        AND msg_date >= ? \n        UNION ALL SELECT pt.messageID as messageID, pdo.d, pdo.k, pdo.p, pdo.c, pdo.o, pdo.f, pdo.g, pdo.s, pdo.account_model_id, pdo.val1, \n        pdo.val2, pdo.val3, pdo.val4, pdo.val5, pdo.datetime, pdo.address, pdo.msg_date, pdo.date, pdo.dff_val1, pdo.dff_val2, pdo.dff_val3, \n        pdo.dff_val4, pdo.dff_val5, pdo.active, pdo.state, pdo.synthetic_record_id, pdo.deleted, pdo.created_at, pdo.spam_category \n        FROM (select * from parsed_data_object_table \n        where messageID < 0 AND active=1 and d=\'Bank\' AND msg_date <= ? \n        AND msg_date >= ?) as pdo \n        LEFT JOIN (select synthetic_record_id,max(messageID) as messageID from parsed_data_object_table where synthetic_record_id IS NOT NULL group by 1) as pt \n        on pdo.messageID = pt.synthetic_record_id) as final JOIN sms_backup_table mct on final.messageID = mct.messageID \n        JOIN pdo_fts ON (final.messageID = pdo_fts.docid) WHERE pdo_fts MATCH ? ORDER BY final.msg_date DESC\n    "

    const/4 v1, 0x5

    .line 1
    invoke-static {v0, v1}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    const/4 v2, 0x1

    .line 2
    invoke-virtual {v0, v2, p1, p2}, Ln3/c0/y;->l0(IJ)V

    const/4 v2, 0x2

    .line 3
    invoke-virtual {v0, v2, p3, p4}, Ln3/c0/y;->l0(IJ)V

    const/4 v2, 0x3

    .line 4
    invoke-virtual {v0, v2, p1, p2}, Ln3/c0/y;->l0(IJ)V

    const/4 p1, 0x4

    .line 5
    invoke-virtual {v0, p1, p3, p4}, Ln3/c0/y;->l0(IJ)V

    if-nez p5, :cond_0

    .line 6
    invoke-virtual {v0, v1}, Ln3/c0/y;->y0(I)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0, v1, p5}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    .line 8
    :goto_0
    iget-object p1, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    const/4 p2, 0x0

    const-string p3, "parsed_data_object_table"

    const-string p4, "sms_backup_table"

    const-string p5, "pdo_fts"

    filled-new-array {p3, p4, p5}, [Ljava/lang/String;

    move-result-object p3

    new-instance p4, Le/a/c/c/d/e0$q;

    invoke-direct {p4, p0, v0}, Le/a/c/c/d/e0$q;-><init>(Le/a/c/c/d/e0;Ln3/c0/y;)V

    invoke-static {p1, p2, p3, p4}, Ln3/c0/g;->a(Ln3/c0/q;Z[Ljava/lang/String;Ljava/util/concurrent/Callable;)Lq3/a/x2/f;

    move-result-object p1

    return-object p1
.end method

.method public X(JJLjava/util/List;)Lq3/a/x2/f;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lq3/a/x2/f<",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/models/pdo/ExtendedPdo;",
            ">;>;"
        }
    .end annotation

    const-string v0, "\n"

    const-string v1, "        SELECT mct.conversationId as \"conversationId\", mct.transport as \"transport\", final.messageID as \"messageID\", final.d as \"d\", "

    const-string v2, "            final.k as \"k\", final.p as \"p\", mct.classified_by as \"classified_by\", mct.message as \"message\", mct.updateCategory as \"updateCategory\","

    .line 1
    invoke-static {v0, v1, v0, v2, v0}, Le/d/c/a/a;->M(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "            final.c as \"c\",final.o as \"o\",final.f as \"f\", final.g as \"g\",final.s as \"s\", final.account_model_id as \"account_model_id\", final.val1 as \"val1\","

    const-string v3, "            final.val2 as \"val2\",final.val3 as \"val3\", final.val4 as \"val4\", final.val5 as \"val5\", final.datetime as \"datetime\", final.address as \"address\","

    .line 2
    invoke-static {v1, v2, v0, v3, v0}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "            final.msg_date as \"msg_date\", final.date as \"date\", final.dff_val1 as \"dff_val1\", final.dff_val2 as \"dff_val2\", "

    const-string v3, "            final.dff_val3 as \"dff_val3\", final.dff_val4 as \"dff_val4\", final.dff_val5 as \"dff_val5\", final.active as \"active\", final.state as \"state\","

    .line 3
    invoke-static {v1, v2, v0, v3, v0}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "            final.synthetic_record_id as \"synthetic_record_id\", final.deleted \"deleted\", final.created_at as \"created_at\", "

    const-string v3, "            final.spam_category as \"spam_category\", mct.no_of_words as \"no_of_words\", mct.confidence_score as \"confidence_score\""

    .line 4
    invoke-static {v1, v2, v0, v3, v0}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "        FROM (SELECT messageID,d,k, p, c, o, f, g, s, account_model_id, val1, val2, val3, val4, val5, datetime, address, msg_date, date, "

    const-string v3, "        dff_val1, dff_val2, dff_val3, dff_val4, dff_val5, active,state,synthetic_record_id, deleted, created_at, spam_category"

    .line 5
    invoke-static {v1, v2, v0, v3, v0}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "        FROM parsed_data_object_table as p "

    const-string v3, "        WHERE messageID >= 0 AND active=1 AND d = \'Bank\' AND msg_date < "

    const-string v4, "?"

    .line 6
    invoke-static {v1, v2, v0, v3, v4}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, " "

    const-string v3, "        AND msg_date >= "

    .line 7
    invoke-static {v1, v2, v0, v3, v4}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, " AND c IN ("

    .line 8
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v6

    .line 10
    invoke-static {v1, v6}, Ln3/c0/h0/d;->a(Ljava/lang/StringBuilder;I)V

    const-string v7, ") "

    .line 11
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "        UNION ALL SELECT pt.messageID as messageID, pdo.d, pdo.k, pdo.p, pdo.c, pdo.o, pdo.f, pdo.g, pdo.s, pdo.account_model_id, pdo.val1, "

    const-string v8, "        pdo.val2, pdo.val3, pdo.val4, pdo.val5, pdo.datetime, pdo.address, pdo.msg_date, pdo.date, pdo.dff_val1, pdo.dff_val2, pdo.dff_val3, "

    .line 13
    invoke-static {v1, v7, v0, v8, v0}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "        pdo.dff_val4, pdo.dff_val5, pdo.active, pdo.state, pdo.synthetic_record_id, pdo.deleted, pdo.created_at, pdo.spam_category "

    const-string v8, "        FROM (select * from parsed_data_object_table "

    .line 14
    invoke-static {v1, v7, v0, v8, v0}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "        where messageID < 0 AND active=1 and d=\'Bank\' AND msg_date < "

    .line 15
    invoke-static {v1, v7, v4, v2, v0}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v2

    .line 20
    invoke-static {v1, v2}, Ln3/c0/h0/d;->a(Ljava/lang/StringBuilder;I)V

    const-string v3, ")) as pdo "

    .line 21
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "        LEFT JOIN (select synthetic_record_id,max(messageID) as messageID from parsed_data_object_table where synthetic_record_id IS NOT NULL group by 1) as pt "

    .line 23
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "        on pdo.messageID = pt.synthetic_record_id) as final JOIN sms_backup_table mct on final.messageID = mct.messageID ORDER BY final.msg_date DESC"

    .line 25
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    "

    .line 26
    invoke-static {v1, v0, v3}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v6, 0x4

    add-int/2addr v2, v1

    .line 27
    invoke-static {v0, v2}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    const/4 v2, 0x1

    .line 28
    invoke-virtual {v0, v2, p1, p2}, Ln3/c0/y;->l0(IJ)V

    const/4 v2, 0x2

    .line 29
    invoke-virtual {v0, v2, p3, p4}, Ln3/c0/y;->l0(IJ)V

    .line 30
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x3

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_0

    .line 31
    invoke-virtual {v0, v3}, Ln3/c0/y;->y0(I)V

    goto :goto_1

    .line 32
    :cond_0
    invoke-virtual {v0, v3, v4}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v6, 0x3

    .line 33
    invoke-virtual {v0, v2, p1, p2}, Ln3/c0/y;->l0(IJ)V

    .line 34
    invoke-virtual {v0, v1, p3, p4}, Ln3/c0/y;->l0(IJ)V

    add-int/lit8 v6, v6, 0x5

    .line 35
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-nez p2, :cond_2

    .line 36
    invoke-virtual {v0, v6}, Ln3/c0/y;->y0(I)V

    goto :goto_3

    .line 37
    :cond_2
    invoke-virtual {v0, v6, p2}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 38
    :cond_3
    iget-object p1, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    const/4 p2, 0x0

    const-string p3, "parsed_data_object_table"

    const-string p4, "sms_backup_table"

    filled-new-array {p3, p4}, [Ljava/lang/String;

    move-result-object p3

    new-instance p4, Le/a/c/c/d/e0$o;

    invoke-direct {p4, p0, v0}, Le/a/c/c/d/e0$o;-><init>(Le/a/c/c/d/e0;Ln3/c0/y;)V

    invoke-static {p1, p2, p3, p4}, Ln3/c0/g;->a(Ln3/c0/q;Z[Ljava/lang/String;Ljava/util/concurrent/Callable;)Lq3/a/x2/f;

    move-result-object p1

    return-object p1
.end method

.method public Y(JJLjava/util/List;)Lq3/a/x2/f;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lq3/a/x2/f<",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/models/pdo/ExtendedPdo;",
            ">;>;"
        }
    .end annotation

    const-string v0, "\n"

    const-string v1, "        SELECT mct.conversationId as \"conversationId\", mct.transport as \"transport\", final.messageID as \"messageID\", final.d as \"d\", "

    const-string v2, "            final.k as \"k\", final.p as \"p\", mct.classified_by as \"classified_by\", mct.message as \"message\", mct.updateCategory as \"updateCategory\","

    .line 1
    invoke-static {v0, v1, v0, v2, v0}, Le/d/c/a/a;->M(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "            final.c as \"c\",final.o as \"o\",final.f as \"f\", final.g as \"g\",final.s as \"s\", final.account_model_id as \"account_model_id\", final.val1 as \"val1\","

    const-string v3, "            final.val2 as \"val2\",final.val3 as \"val3\", final.val4 as \"val4\", final.val5 as \"val5\", final.datetime as \"datetime\", final.address as \"address\","

    .line 2
    invoke-static {v1, v2, v0, v3, v0}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "            final.msg_date as \"msg_date\", final.date as \"date\", final.dff_val1 as \"dff_val1\", final.dff_val2 as \"dff_val2\", "

    const-string v3, "            final.dff_val3 as \"dff_val3\", final.dff_val4 as \"dff_val4\", final.dff_val5 as \"dff_val5\", final.active as \"active\", final.state as \"state\","

    .line 3
    invoke-static {v1, v2, v0, v3, v0}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "            final.synthetic_record_id as \"synthetic_record_id\", final.deleted \"deleted\", final.created_at as \"created_at\", "

    const-string v3, "            final.spam_category as \"spam_category\", mct.no_of_words as \"no_of_words\", mct.confidence_score as \"confidence_score\" "

    .line 4
    invoke-static {v1, v2, v0, v3, v0}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "        FROM (SELECT messageID,d,k, p, c, o, f, g, s, account_model_id, val1, val2, val3, val4, val5, datetime, address, msg_date, date, "

    const-string v3, "        dff_val1, dff_val2, dff_val3, dff_val4, dff_val5, active,state,synthetic_record_id, deleted, created_at, spam_category"

    .line 5
    invoke-static {v1, v2, v0, v3, v0}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "        FROM parsed_data_object_table as p "

    const-string v3, "        WHERE messageID >= 0 AND active=1 AND d = \'Bank\' AND msg_date > "

    const-string v4, "?"

    .line 6
    invoke-static {v1, v2, v0, v3, v4}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, " "

    const-string v3, "        AND msg_date <= "

    .line 7
    invoke-static {v1, v2, v0, v3, v4}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, " AND c IN ("

    .line 8
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v6

    .line 10
    invoke-static {v1, v6}, Ln3/c0/h0/d;->a(Ljava/lang/StringBuilder;I)V

    const-string v7, ") "

    .line 11
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "        UNION ALL SELECT pt.messageID as messageID, pdo.d, pdo.k, pdo.p, pdo.c, pdo.o, pdo.f, pdo.g, pdo.s, pdo.account_model_id, pdo.val1, "

    const-string v8, "        pdo.val2, pdo.val3, pdo.val4, pdo.val5, pdo.datetime, pdo.address, pdo.msg_date, pdo.date, pdo.dff_val1, pdo.dff_val2, pdo.dff_val3, "

    .line 13
    invoke-static {v1, v7, v0, v8, v0}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "        pdo.dff_val4, pdo.dff_val5, pdo.active, pdo.state, pdo.synthetic_record_id, pdo.deleted, pdo.created_at, pdo.spam_category "

    const-string v8, "        FROM (select * from parsed_data_object_table "

    .line 14
    invoke-static {v1, v7, v0, v8, v0}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "        where messageID < 0 AND active=1 and d=\'Bank\' AND msg_date > "

    .line 15
    invoke-static {v1, v7, v4, v2, v0}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v2

    .line 20
    invoke-static {v1, v2}, Ln3/c0/h0/d;->a(Ljava/lang/StringBuilder;I)V

    const-string v3, ")) as pdo "

    .line 21
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "        LEFT JOIN (select synthetic_record_id,max(messageID) as messageID from parsed_data_object_table where synthetic_record_id IS NOT NULL group by 1) as pt "

    .line 23
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "        on pdo.messageID = pt.synthetic_record_id) as final JOIN sms_backup_table mct on final.messageID = mct.messageID ORDER BY final.msg_date DESC"

    .line 25
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    "

    .line 26
    invoke-static {v1, v0, v3}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v6, 0x4

    add-int/2addr v2, v1

    .line 27
    invoke-static {v0, v2}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    const/4 v2, 0x1

    .line 28
    invoke-virtual {v0, v2, p1, p2}, Ln3/c0/y;->l0(IJ)V

    const/4 v2, 0x2

    .line 29
    invoke-virtual {v0, v2, p3, p4}, Ln3/c0/y;->l0(IJ)V

    .line 30
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x3

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_0

    .line 31
    invoke-virtual {v0, v3}, Ln3/c0/y;->y0(I)V

    goto :goto_1

    .line 32
    :cond_0
    invoke-virtual {v0, v3, v4}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v6, 0x3

    .line 33
    invoke-virtual {v0, v2, p1, p2}, Ln3/c0/y;->l0(IJ)V

    .line 34
    invoke-virtual {v0, v1, p3, p4}, Ln3/c0/y;->l0(IJ)V

    add-int/lit8 v6, v6, 0x5

    .line 35
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-nez p2, :cond_2

    .line 36
    invoke-virtual {v0, v6}, Ln3/c0/y;->y0(I)V

    goto :goto_3

    .line 37
    :cond_2
    invoke-virtual {v0, v6, p2}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 38
    :cond_3
    iget-object p1, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    const/4 p2, 0x0

    const-string p3, "parsed_data_object_table"

    const-string p4, "sms_backup_table"

    filled-new-array {p3, p4}, [Ljava/lang/String;

    move-result-object p3

    new-instance p4, Le/a/c/c/d/e0$p;

    invoke-direct {p4, p0, v0}, Le/a/c/c/d/e0$p;-><init>(Le/a/c/c/d/e0;Ln3/c0/y;)V

    invoke-static {p1, p2, p3, p4}, Ln3/c0/g;->a(Ln3/c0/q;Z[Ljava/lang/String;Ljava/util/concurrent/Callable;)Lq3/a/x2/f;

    move-result-object p1

    return-object p1
.end method

.method public Z(JJLjava/lang/String;)Lq3/a/x2/f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/lang/String;",
            ")",
            "Lq3/a/x2/f<",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/models/pdo/ExtendedPdo;",
            ">;>;"
        }
    .end annotation

    const-string v0, "\n        SELECT mct.conversationId as \"conversationId\", mct.transport as \"transport\", final.messageID as \"messageID\", final.d as \"d\", \n            final.k as \"k\", final.p as \"p\", mct.classified_by as \"classified_by\", mct.message as \"message\", mct.updateCategory as \"updateCategory\",\n            final.c as \"c\",final.o as \"o\",final.f as \"f\", final.g as \"g\",final.s as \"s\", final.account_model_id as \"account_model_id\", final.val1 as \"val1\",\n            final.val2 as \"val2\",final.val3 as \"val3\", final.val4 as \"val4\", final.val5 as \"val5\", final.datetime as \"datetime\", final.address as \"address\",\n            final.msg_date as \"msg_date\", final.date as \"date\", final.dff_val1 as \"dff_val1\", final.dff_val2 as \"dff_val2\", \n            final.dff_val3 as \"dff_val3\", final.dff_val4 as \"dff_val4\", final.dff_val5 as \"dff_val5\", final.active as \"active\", final.state as \"state\",\n            final.synthetic_record_id as \"synthetic_record_id\", final.deleted \"deleted\", final.created_at as \"created_at\", \n            final.spam_category as \"spam_category\", mct.no_of_words as \"no_of_words\", mct.confidence_score as \"confidence_score\" \n        FROM (SELECT messageID,d,k, p, c, o, f, g, s, account_model_id, val1, val2, val3, val4, val5, datetime, address, msg_date, date, \n        dff_val1, dff_val2, dff_val3, dff_val4, dff_val5, active,state,synthetic_record_id, deleted, created_at, spam_category \n        FROM parsed_data_object_table as p \n        WHERE messageID >= 0 AND active=1 AND d = \'Bank\' AND msg_date < ? \n        AND msg_date >= ? \n        UNION ALL SELECT pt.messageID as messageID, pdo.d, pdo.k, pdo.p, pdo.c, pdo.o, pdo.f, pdo.g, pdo.s, pdo.account_model_id, pdo.val1, \n        pdo.val2, pdo.val3, pdo.val4, pdo.val5, pdo.datetime, pdo.address, pdo.msg_date, pdo.date, pdo.dff_val1, pdo.dff_val2, pdo.dff_val3, \n        pdo.dff_val4, pdo.dff_val5, pdo.active, pdo.state, pdo.synthetic_record_id, pdo.deleted, pdo.created_at, pdo.spam_category \n        FROM (select * from parsed_data_object_table \n        where messageID < 0 AND active=1 and d=\'Bank\' AND msg_date < ? \n        AND msg_date >= ?) as pdo \n        LEFT JOIN (select synthetic_record_id,max(messageID) as messageID from parsed_data_object_table \n        where synthetic_record_id IS NOT NULL group by 1) as pt \n        on pdo.messageID = pt.synthetic_record_id) as final JOIN sms_backup_table mct on final.messageID = mct.messageID \n        JOIN pdo_fts ON (final.messageID = pdo_fts.docid) WHERE pdo_fts MATCH ? ORDER BY final.msg_date DESC\n    "

    const/4 v1, 0x5

    .line 1
    invoke-static {v0, v1}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    const/4 v2, 0x1

    .line 2
    invoke-virtual {v0, v2, p1, p2}, Ln3/c0/y;->l0(IJ)V

    const/4 v2, 0x2

    .line 3
    invoke-virtual {v0, v2, p3, p4}, Ln3/c0/y;->l0(IJ)V

    const/4 v2, 0x3

    .line 4
    invoke-virtual {v0, v2, p1, p2}, Ln3/c0/y;->l0(IJ)V

    const/4 p1, 0x4

    .line 5
    invoke-virtual {v0, p1, p3, p4}, Ln3/c0/y;->l0(IJ)V

    if-nez p5, :cond_0

    .line 6
    invoke-virtual {v0, v1}, Ln3/c0/y;->y0(I)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0, v1, p5}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    .line 8
    :goto_0
    iget-object p1, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    const/4 p2, 0x0

    const-string p3, "parsed_data_object_table"

    const-string p4, "sms_backup_table"

    const-string p5, "pdo_fts"

    filled-new-array {p3, p4, p5}, [Ljava/lang/String;

    move-result-object p3

    new-instance p4, Le/a/c/c/d/e0$r;

    invoke-direct {p4, p0, v0}, Le/a/c/c/d/e0$r;-><init>(Le/a/c/c/d/e0;Ln3/c0/y;)V

    invoke-static {p1, p2, p3, p4}, Ln3/c0/g;->a(Ln3/c0/q;Z[Ljava/lang/String;Ljava/util/concurrent/Callable;)Lq3/a/x2/f;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/util/Set;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UPDATE parsed_data_object_table SET active = 0, state = "

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " WHERE messageID in ("

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    .line 7
    invoke-static {v0, v1}, Ln3/c0/h0/d;->a(Ljava/lang/StringBuilder;I)V

    const-string v1, ")"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10
    iget-object v1, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {v1, v0}, Ln3/c0/q;->compileStatement(Ljava/lang/String;)Ln3/e0/a/f;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    .line 11
    invoke-interface {v0, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_0

    .line 12
    :cond_0
    invoke-interface {v0, v1, p2}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    :goto_0
    const/4 p2, 0x2

    .line 13
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-nez v1, :cond_1

    .line 14
    invoke-interface {v0, p2}, Ln3/e0/a/d;->y0(I)V

    goto :goto_2

    .line 15
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {v0, p2, v1, v2}, Ln3/e0/a/d;->l0(IJ)V

    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 16
    :cond_2
    iget-object p1, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->beginTransaction()V

    .line 17
    :try_start_0
    invoke-interface {v0}, Ln3/e0/a/f;->A()I

    .line 18
    iget-object p1, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    iget-object p1, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {p2}, Ln3/c0/q;->endTransaction()V

    .line 20
    throw p1
.end method

.method public a0(JJLjava/lang/String;)Lq3/a/x2/f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/lang/String;",
            ")",
            "Lq3/a/x2/f<",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/models/pdo/ExtendedPdo;",
            ">;>;"
        }
    .end annotation

    const-string v0, "\n        SELECT mct.conversationId as \"conversationId\", mct.transport as \"transport\", final.messageID as \"messageID\", final.d as \"d\", \n            final.k as \"k\", final.p as \"p\", mct.classified_by as \"classified_by\", mct.message as \"message\", mct.updateCategory as \"updateCategory\",\n            final.c as \"c\",final.o as \"o\",final.f as \"f\", final.g as \"g\",final.s as \"s\", final.account_model_id as \"account_model_id\", final.val1 as \"val1\",\n            final.val2 as \"val2\",final.val3 as \"val3\", final.val4 as \"val4\", final.val5 as \"val5\", final.datetime as \"datetime\", final.address as \"address\",\n            final.msg_date as \"msg_date\", final.date as \"date\", final.dff_val1 as \"dff_val1\", final.dff_val2 as \"dff_val2\", \n            final.dff_val3 as \"dff_val3\", final.dff_val4 as \"dff_val4\", final.dff_val5 as \"dff_val5\", final.active as \"active\", final.state as \"state\",\n            final.synthetic_record_id as \"synthetic_record_id\", final.deleted \"deleted\", final.created_at as \"created_at\", \n            final.spam_category as \"spam_category\", mct.no_of_words as \"no_of_words\", mct.confidence_score as \"confidence_score\"\n        FROM (SELECT messageID,d,k, p, c, o, f, g, s, account_model_id, val1, val2, val3, val4, val5, datetime, address, msg_date, date, \n        dff_val1, dff_val2, dff_val3, dff_val4, dff_val5, active,state,synthetic_record_id, deleted, created_at, spam_category\n        FROM parsed_data_object_table as p \n        WHERE messageID >= 0 AND active=1 AND d = \'Bank\' AND msg_date > ? \n        AND msg_date <= ? \n        UNION ALL SELECT pt.messageID as messageID, pdo.d, pdo.k, pdo.p, pdo.c, pdo.o, pdo.f, pdo.g, pdo.s, pdo.account_model_id, pdo.val1, \n        pdo.val2, pdo.val3, pdo.val4, pdo.val5, pdo.datetime, pdo.address, pdo.msg_date, pdo.date, pdo.dff_val1, pdo.dff_val2, pdo.dff_val3, \n        pdo.dff_val4, pdo.dff_val5, pdo.active, pdo.state, pdo.synthetic_record_id, pdo.deleted, pdo.created_at, pdo.spam_category\n        FROM (select * from parsed_data_object_table \n        where messageID < 0 AND active=1 and d=\'Bank\' AND msg_date > ? \n        AND msg_date <= ?) as pdo \n        LEFT JOIN (select synthetic_record_id,max(messageID) as messageID from parsed_data_object_table where synthetic_record_id IS NOT NULL group by 1) as pt \n        on pdo.messageID = pt.synthetic_record_id) as final JOIN sms_backup_table mct on final.messageID = mct.messageID \n        JOIN  pdo_fts ON (final.messageID = pdo_fts.docid) WHERE pdo_fts MATCH ? ORDER BY final.msg_date DESC\n    "

    const/4 v1, 0x5

    .line 1
    invoke-static {v0, v1}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    const/4 v2, 0x1

    .line 2
    invoke-virtual {v0, v2, p1, p2}, Ln3/c0/y;->l0(IJ)V

    const/4 v2, 0x2

    .line 3
    invoke-virtual {v0, v2, p3, p4}, Ln3/c0/y;->l0(IJ)V

    const/4 v2, 0x3

    .line 4
    invoke-virtual {v0, v2, p1, p2}, Ln3/c0/y;->l0(IJ)V

    const/4 p1, 0x4

    .line 5
    invoke-virtual {v0, p1, p3, p4}, Ln3/c0/y;->l0(IJ)V

    if-nez p5, :cond_0

    .line 6
    invoke-virtual {v0, v1}, Ln3/c0/y;->y0(I)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0, v1, p5}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    .line 8
    :goto_0
    iget-object p1, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    const/4 p2, 0x0

    const-string p3, "parsed_data_object_table"

    const-string p4, "sms_backup_table"

    const-string p5, "pdo_fts"

    filled-new-array {p3, p4, p5}, [Ljava/lang/String;

    move-result-object p3

    new-instance p4, Le/a/c/c/d/e0$s;

    invoke-direct {p4, p0, v0}, Le/a/c/c/d/e0$s;-><init>(Le/a/c/c/d/e0;Ln3/c0/y;)V

    invoke-static {p1, p2, p3, p4}, Ln3/c0/g;->a(Ln3/c0/q;Z[Ljava/lang/String;Ljava/util/concurrent/Callable;)Lq3/a/x2/f;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DELETE FROM link_prune_table WHERE parent_id IN ("

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 5
    invoke-static {v0, v1}, Ln3/c0/h0/d;->a(Ljava/lang/StringBuilder;I)V

    const-string v2, ") OR child_id IN ("

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 8
    invoke-static {v0, v2}, Ln3/c0/h0/d;->a(Ljava/lang/StringBuilder;I)V

    const-string v2, ")"

    .line 9
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 11
    iget-object v2, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {v2, v0}, Ln3/c0/q;->compileStatement(Ljava/lang/String;)Ln3/e0/a/f;

    move-result-object v0

    .line 12
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x1

    move v4, v3

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    if-nez v5, :cond_0

    .line 13
    invoke-interface {v0, v4}, Ln3/e0/a/d;->y0(I)V

    goto :goto_1

    .line 14
    :cond_0
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-interface {v0, v4, v5, v6}, Ln3/e0/a/d;->l0(IJ)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    add-int/2addr v1, v3

    .line 15
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-nez v2, :cond_2

    .line 16
    invoke-interface {v0, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_3

    .line 17
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Ln3/e0/a/d;->l0(IJ)V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 18
    :cond_3
    iget-object p1, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->beginTransaction()V

    .line 19
    :try_start_0
    invoke-interface {v0}, Ln3/e0/a/f;->A()I

    .line 20
    iget-object p1, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    iget-object p1, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->endTransaction()V

    .line 22
    throw p1
.end method

.method public b0(Le/a/c/c/d/s;Le/a/c/c/d/m0;Ls1/w/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/c/c/d/s;",
            "Le/a/c/c/d/m0;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    new-instance v1, Le/a/c/c/d/e0$a;

    invoke-direct {v1, p0, p1, p2}, Le/a/c/c/d/e0$a;-><init>(Le/a/c/c/d/e0;Le/a/c/c/d/s;Le/a/c/c/d/m0;)V

    invoke-static {v0, v1, p3}, Landroid/support/v4/media/session/MediaSessionCompat;->M1(Ln3/c0/q;Ls1/z/b/l;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "        DELETE FROM account_mapping_rule_model WHERE to_account"

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "        IN ("

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 8
    invoke-static {v0, v2}, Ln3/c0/h0/d;->a(Ljava/lang/StringBuilder;I)V

    const-string v3, ") OR from_account IN ("

    .line 9
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 11
    invoke-static {v0, v3}, Ln3/c0/h0/d;->a(Ljava/lang/StringBuilder;I)V

    const-string v3, ")"

    .line 12
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    "

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 16
    iget-object v1, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {v1, v0}, Ln3/c0/q;->compileStatement(Ljava/lang/String;)Ln3/e0/a/f;

    move-result-object v0

    .line 17
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x1

    move v4, v3

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    if-nez v5, :cond_0

    .line 18
    invoke-interface {v0, v4}, Ln3/e0/a/d;->y0(I)V

    goto :goto_1

    .line 19
    :cond_0
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-interface {v0, v4, v5, v6}, Ln3/e0/a/d;->l0(IJ)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    add-int/2addr v2, v3

    .line 20
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-nez v1, :cond_2

    .line 21
    invoke-interface {v0, v2}, Ln3/e0/a/d;->y0(I)V

    goto :goto_3

    .line 22
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {v0, v2, v3, v4}, Ln3/e0/a/d;->l0(IJ)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 23
    :cond_3
    iget-object p1, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->beginTransaction()V

    .line 24
    :try_start_0
    invoke-interface {v0}, Ln3/e0/a/f;->A()I

    .line 25
    iget-object p1, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    iget-object p1, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->endTransaction()V

    .line 27
    throw p1
.end method

.method public d(Ljava/util/List;Le/a/c/c/d/c;Ls1/w/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Le/a/c/c/d/c;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    new-instance v1, Le/a/c/c/d/e0$k0;

    invoke-direct {v1, p0, p1, p2}, Le/a/c/c/d/e0$k0;-><init>(Le/a/c/c/d/e0;Ljava/util/List;Le/a/c/c/d/c;)V

    invoke-static {v0, v1, p3}, Landroid/support/v4/media/session/MediaSessionCompat;->M1(Ln3/c0/q;Ls1/z/b/l;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public d0(Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    new-instance v1, Le/a/c/c/d/e0$d;

    invoke-direct {v1, p0}, Le/a/c/c/d/e0$d;-><init>(Le/a/c/c/d/e0;)V

    const/4 v2, 0x1

    invoke-static {v0, v2, v1, p1}, Ln3/c0/g;->c(Ln3/c0/q;ZLjava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public e0(Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    new-instance v1, Le/a/c/c/d/e0$e;

    invoke-direct {v1, p0}, Le/a/c/c/d/e0$e;-><init>(Le/a/c/c/d/e0;)V

    const/4 v2, 0x1

    invoke-static {v0, v2, v1, p1}, Ln3/c0/g;->c(Ln3/c0/q;ZLjava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public f(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DELETE FROM parsed_data_object_table WHERE messageID IN ("

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 5
    invoke-static {v0, v1}, Ln3/c0/h0/d;->a(Ljava/lang/StringBuilder;I)V

    const-string v1, ")"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8
    iget-object v1, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {v1, v0}, Ln3/c0/q;->compileStatement(Ljava/lang/String;)Ln3/e0/a/f;

    move-result-object v0

    .line 9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-nez v2, :cond_0

    .line 10
    invoke-interface {v0, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_1

    .line 11
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Ln3/e0/a/d;->l0(IJ)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 12
    :cond_1
    iget-object p1, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->beginTransaction()V

    .line 13
    :try_start_0
    invoke-interface {v0}, Ln3/e0/a/f;->A()I

    .line 14
    iget-object p1, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    iget-object p1, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->endTransaction()V

    .line 16
    throw p1
.end method

.method public f0(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DELETE FROM account_model_table WHERE id IN ("

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 5
    invoke-static {v0, v1}, Ln3/c0/h0/d;->a(Ljava/lang/StringBuilder;I)V

    const-string v1, ")"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8
    iget-object v1, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {v1, v0}, Ln3/c0/q;->compileStatement(Ljava/lang/String;)Ln3/e0/a/f;

    move-result-object v0

    .line 9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-nez v2, :cond_0

    .line 10
    invoke-interface {v0, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_1

    .line 11
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Ln3/e0/a/d;->l0(IJ)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 12
    :cond_1
    iget-object p1, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->beginTransaction()V

    .line 13
    :try_start_0
    invoke-interface {v0}, Ln3/e0/a/f;->A()I

    .line 14
    iget-object p1, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    iget-object p1, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->endTransaction()V

    .line 16
    throw p1
.end method

.method public g(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "        DELETE FROM account_relation_model WHERE to_account"

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "        IN ("

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 8
    invoke-static {v0, v2}, Ln3/c0/h0/d;->a(Ljava/lang/StringBuilder;I)V

    const-string v3, ") OR from_account IN ("

    .line 9
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 11
    invoke-static {v0, v3}, Ln3/c0/h0/d;->a(Ljava/lang/StringBuilder;I)V

    const-string v3, ")"

    .line 12
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    "

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 16
    iget-object v1, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {v1, v0}, Ln3/c0/q;->compileStatement(Ljava/lang/String;)Ln3/e0/a/f;

    move-result-object v0

    .line 17
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x1

    move v4, v3

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    if-nez v5, :cond_0

    .line 18
    invoke-interface {v0, v4}, Ln3/e0/a/d;->y0(I)V

    goto :goto_1

    .line 19
    :cond_0
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-interface {v0, v4, v5, v6}, Ln3/e0/a/d;->l0(IJ)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    add-int/2addr v2, v3

    .line 20
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-nez v1, :cond_2

    .line 21
    invoke-interface {v0, v2}, Ln3/e0/a/d;->y0(I)V

    goto :goto_3

    .line 22
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {v0, v2, v3, v4}, Ln3/e0/a/d;->l0(IJ)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 23
    :cond_3
    iget-object p1, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->beginTransaction()V

    .line 24
    :try_start_0
    invoke-interface {v0}, Ln3/e0/a/f;->A()I

    .line 25
    iget-object p1, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    iget-object p1, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->endTransaction()V

    .line 27
    throw p1
.end method

.method public g0()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 2
    iget-object v0, p0, Le/a/c/c/d/e0;->j:Ln3/c0/c0;

    invoke-virtual {v0}, Ln3/c0/c0;->acquire()Ln3/e0/a/f;

    move-result-object v0

    .line 3
    iget-object v1, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {v1}, Ln3/c0/q;->beginTransaction()V

    .line 4
    :try_start_0
    invoke-interface {v0}, Ln3/e0/a/f;->A()I

    .line 5
    iget-object v1, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {v1}, Ln3/c0/q;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object v1, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {v1}, Ln3/c0/q;->endTransaction()V

    .line 7
    iget-object v1, p0, Le/a/c/c/d/e0;->j:Ln3/c0/c0;

    invoke-virtual {v1, v0}, Ln3/c0/c0;->release(Ln3/e0/a/f;)V

    return-void

    :catchall_0
    move-exception v1

    .line 8
    iget-object v2, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {v2}, Ln3/c0/q;->endTransaction()V

    .line 9
    iget-object v2, p0, Le/a/c/c/d/e0;->j:Ln3/c0/c0;

    invoke-virtual {v2, v0}, Ln3/c0/c0;->release(Ln3/e0/a/f;)V

    .line 10
    throw v1
.end method

.method public h(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DELETE FROM sms_backup_table WHERE messageID IN ("

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 5
    invoke-static {v0, v1}, Ln3/c0/h0/d;->a(Ljava/lang/StringBuilder;I)V

    const-string v1, ")"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8
    iget-object v1, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {v1, v0}, Ln3/c0/q;->compileStatement(Ljava/lang/String;)Ln3/e0/a/f;

    move-result-object v0

    .line 9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-nez v2, :cond_0

    .line 10
    invoke-interface {v0, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_1

    .line 11
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Ln3/e0/a/d;->l0(IJ)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 12
    :cond_1
    iget-object p1, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->beginTransaction()V

    .line 13
    :try_start_0
    invoke-interface {v0}, Ln3/e0/a/f;->A()I

    .line 14
    iget-object p1, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    iget-object p1, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->endTransaction()V

    .line 16
    throw p1
.end method

.method public h0(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    new-instance v1, Le/a/c/c/d/e0$c;

    invoke-direct {v1, p0, p1}, Le/a/c/c/d/e0$c;-><init>(Le/a/c/c/d/e0;Ljava/util/List;)V

    invoke-static {v0, v1, p2}, Landroid/support/v4/media/session/MediaSessionCompat;->M1(Ln3/c0/q;Ls1/z/b/l;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public i(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "        DELETE FROM parsed_data_object_table "

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "            WHERE messageID IN ("

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "                SELECT synthetic_record_id FROM parsed_data_object_table"

    const-string v3, "                    WHERE "

    .line 7
    invoke-static {v0, v1, v2, v1, v3}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "                        messageID IN ("

    .line 9
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 11
    invoke-static {v0, v2}, Ln3/c0/h0/d;->a(Ljava/lang/StringBuilder;I)V

    const-string v2, ")"

    .line 12
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "            )"

    const-string v3, "    "

    .line 13
    invoke-static {v0, v1, v2, v1, v3}, Le/d/c/a/a;->k(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 14
    iget-object v1, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {v1, v0}, Ln3/c0/q;->compileStatement(Ljava/lang/String;)Ln3/e0/a/f;

    move-result-object v0

    .line 15
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-nez v2, :cond_0

    .line 16
    invoke-interface {v0, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_1

    .line 17
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Ln3/e0/a/d;->l0(IJ)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 18
    :cond_1
    iget-object p1, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->beginTransaction()V

    .line 19
    :try_start_0
    invoke-interface {v0}, Ln3/e0/a/f;->A()I

    .line 20
    iget-object p1, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    iget-object p1, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->endTransaction()V

    .line 22
    throw p1
.end method

.method public i0()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 2
    iget-object v0, p0, Le/a/c/c/d/e0;->i:Ln3/c0/c0;

    invoke-virtual {v0}, Ln3/c0/c0;->acquire()Ln3/e0/a/f;

    move-result-object v0

    .line 3
    iget-object v1, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {v1}, Ln3/c0/q;->beginTransaction()V

    .line 4
    :try_start_0
    invoke-interface {v0}, Ln3/e0/a/f;->A()I

    .line 5
    iget-object v1, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {v1}, Ln3/c0/q;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object v1, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {v1}, Ln3/c0/q;->endTransaction()V

    .line 7
    iget-object v1, p0, Le/a/c/c/d/e0;->i:Ln3/c0/c0;

    invoke-virtual {v1, v0}, Ln3/c0/c0;->release(Ln3/e0/a/f;)V

    return-void

    :catchall_0
    move-exception v1

    .line 8
    iget-object v2, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {v2}, Ln3/c0/q;->endTransaction()V

    .line 9
    iget-object v2, p0, Le/a/c/c/d/e0;->i:Ln3/c0/c0;

    invoke-virtual {v2, v0}, Ln3/c0/c0;->release(Ln3/e0/a/f;)V

    .line 10
    throw v1
.end method

.method public j(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "\n"

    const-string v1, "        SELECT id from account_model_table"

    const-string v2, "        WHERE id in (SELECT account_model_id FROM parsed_data_object_table"

    .line 1
    invoke-static {v0, v1, v0, v2, v0}, Le/d/c/a/a;->M(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "        WHERE messageID in("

    .line 2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 4
    invoke-static {v1, v2}, Ln3/c0/h0/d;->a(Ljava/lang/StringBuilder;I)V

    const-string v3, "))"

    .line 5
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "    "

    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    add-int/2addr v2, v1

    .line 9
    invoke-static {v0, v2}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    .line 10
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    if-nez v3, :cond_0

    .line 11
    invoke-virtual {v0, v2}, Ln3/c0/y;->y0(I)V

    goto :goto_1

    .line 12
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Ln3/c0/y;->l0(IJ)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 13
    :cond_1
    new-instance p1, Landroid/os/CancellationSignal;

    invoke-direct {p1}, Landroid/os/CancellationSignal;-><init>()V

    .line 14
    iget-object v2, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    new-instance v3, Le/a/c/c/d/e0$h;

    invoke-direct {v3, p0, v0}, Le/a/c/c/d/e0$h;-><init>(Le/a/c/c/d/e0;Ln3/c0/y;)V

    invoke-static {v2, v1, p1, v3, p2}, Ln3/c0/g;->b(Ln3/c0/q;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public j0(Ls1/w/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    new-instance v1, Le/a/c/c/d/e0$b;

    invoke-direct {v1, p0}, Le/a/c/c/d/e0$b;-><init>(Le/a/c/c/d/e0;)V

    invoke-static {v0, v1, p1}, Landroid/support/v4/media/session/MediaSessionCompat;->M1(Ln3/c0/q;Ls1/z/b/l;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public k(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/List<",
            "Le/a/c/c/d/d0$a;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "        SELECT COUNT(*) as count, account_model_id FROM parsed_data_object_table "

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "        WHERE messageID NOT IN ("

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 7
    invoke-static {v0, v2}, Ln3/c0/h0/d;->a(Ljava/lang/StringBuilder;I)V

    const-string v3, ")"

    .line 8
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "        AND account_model_id in ("

    .line 10
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    .line 12
    invoke-static {v0, v3}, Ln3/c0/h0/d;->a(Ljava/lang/StringBuilder;I)V

    const-string v4, ") GROUP BY account_model_id"

    .line 13
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    "

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v2, 0x0

    add-int/2addr v1, v3

    .line 17
    invoke-static {v0, v1}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    .line 18
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x1

    move v3, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-nez v4, :cond_0

    .line 19
    invoke-virtual {v0, v3}, Ln3/c0/y;->y0(I)V

    goto :goto_1

    .line 20
    :cond_0
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Ln3/c0/y;->l0(IJ)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    add-int/2addr v2, v1

    .line 21
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    if-nez p2, :cond_2

    .line 22
    invoke-virtual {v0, v2}, Ln3/c0/y;->y0(I)V

    goto :goto_3

    .line 23
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Ln3/c0/y;->l0(IJ)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 24
    :cond_3
    iget-object p1, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 25
    iget-object p1, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    const/4 p2, 0x0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, p2}, Ln3/c0/h0/b;->b(Ln3/c0/q;Ln3/e0/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    const-string p2, "count"

    .line 26
    invoke-static {p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result p2

    const-string v1, "account_model_id"

    .line 27
    invoke-static {p1, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    .line 28
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 29
    :goto_4
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 30
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 31
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 32
    new-instance v6, Le/a/c/c/d/d0$a;

    invoke-direct {v6, v3, v4, v5}, Le/a/c/c/d/d0$a;-><init>(IJ)V

    .line 33
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    .line 34
    :cond_4
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 35
    invoke-virtual {v0}, Ln3/c0/y;->l()V

    return-object v2

    :catchall_0
    move-exception p2

    .line 36
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 37
    invoke-virtual {v0}, Ln3/c0/y;->l()V

    .line 38
    throw p2
.end method

.method public k0(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 2
    iget-object v0, p0, Le/a/c/c/d/e0;->h:Ln3/c0/c0;

    invoke-virtual {v0}, Ln3/c0/c0;->acquire()Ln3/e0/a/f;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 3
    invoke-interface {v0, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v0, v1, p1}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 5
    :goto_0
    iget-object p1, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->beginTransaction()V

    .line 6
    :try_start_0
    invoke-interface {v0}, Ln3/e0/a/f;->A()I

    .line 7
    iget-object p1, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iget-object p1, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->endTransaction()V

    .line 9
    iget-object p1, p0, Le/a/c/c/d/e0;->h:Ln3/c0/c0;

    invoke-virtual {p1, v0}, Ln3/c0/c0;->release(Ln3/e0/a/f;)V

    return-void

    :catchall_0
    move-exception p1

    .line 10
    iget-object v1, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {v1}, Ln3/c0/q;->endTransaction()V

    .line 11
    iget-object v1, p0, Le/a/c/c/d/e0;->h:Ln3/c0/c0;

    invoke-virtual {v1, v0}, Ln3/c0/c0;->release(Ln3/e0/a/f;)V

    .line 12
    throw p1
.end method

.method public l(Ljava/util/Date;ILjava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 38
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/models/pdo/ParsedDataObject;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT * FROM parsed_data_object_table WHERE messageID >= 0 and created_at > "

    .line 2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?"

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " and d NOT IN ("

    .line 4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v3

    .line 6
    invoke-static {v0, v3}, Ln3/c0/h0/d;->a(Ljava/lang/StringBuilder;I)V

    const-string v4, ") and state NOT IN ("

    .line 7
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v4

    .line 9
    invoke-static {v0, v4}, Ln3/c0/h0/d;->a(Ljava/lang/StringBuilder;I)V

    const-string v5, ") ORDER BY created_at LIMIT "

    .line 10
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    add-int/2addr v3, v2

    add-int/2addr v4, v3

    .line 13
    invoke-static {v0, v4}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v5

    .line 14
    iget-object v0, v1, Le/a/c/c/d/e0;->c:Le/a/c/c0/g;

    move-object/from16 v6, p1

    invoke-virtual {v0, v6}, Le/a/c/c0/g;->a(Ljava/util/Date;)Ljava/lang/Long;

    move-result-object v0

    const/4 v6, 0x1

    if-nez v0, :cond_0

    .line 15
    invoke-virtual {v5, v6}, Ln3/c0/y;->y0(I)V

    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v5, v6, v7, v8}, Ln3/c0/y;->l0(IJ)V

    .line 17
    :goto_0
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-nez v7, :cond_1

    .line 18
    invoke-virtual {v5, v2}, Ln3/c0/y;->y0(I)V

    goto :goto_2

    .line 19
    :cond_1
    invoke-virtual {v5, v2, v7}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 20
    :cond_2
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_3

    .line 21
    invoke-virtual {v5, v3}, Ln3/c0/y;->y0(I)V

    goto :goto_4

    .line 22
    :cond_3
    invoke-virtual {v5, v3, v2}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    move/from16 v2, p2

    int-to-long v2, v2

    .line 23
    invoke-virtual {v5, v4, v2, v3}, Ln3/c0/y;->l0(IJ)V

    .line 24
    iget-object v0, v1, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 25
    iget-object v0, v1, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v5, v2, v3}, Ln3/c0/h0/b;->b(Ln3/c0/q;Ln3/e0/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v4

    :try_start_0
    const-string v0, "messageID"

    .line 26
    invoke-static {v4, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v7, "d"

    .line 27
    invoke-static {v4, v7}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "k"

    .line 28
    invoke-static {v4, v8}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "p"

    .line 29
    invoke-static {v4, v9}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "c"

    .line 30
    invoke-static {v4, v10}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "o"

    .line 31
    invoke-static {v4, v11}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "f"

    .line 32
    invoke-static {v4, v12}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "g"

    .line 33
    invoke-static {v4, v13}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "s"

    .line 34
    invoke-static {v4, v14}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "account_model_id"

    .line 35
    invoke-static {v4, v15}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v2, "val1"

    .line 36
    invoke-static {v4, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v3, "val2"

    .line 37
    invoke-static {v4, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v6, "val3"

    .line 38
    invoke-static {v4, v6}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object/from16 v16, v5

    :try_start_1
    const-string v5, "val4"

    .line 39
    invoke-static {v4, v5}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    const-string v1, "val5"

    .line 40
    invoke-static {v4, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 p3, v1

    const-string v1, "datetime"

    .line 41
    invoke-static {v4, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 p4, v1

    const-string v1, "address"

    .line 42
    invoke-static {v4, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v17, v1

    const-string v1, "date"

    .line 43
    invoke-static {v4, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v18, v1

    const-string v1, "msg_date"

    .line 44
    invoke-static {v4, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v19, v1

    const-string v1, "dff_val1"

    .line 45
    invoke-static {v4, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v20, v1

    const-string v1, "dff_val2"

    .line 46
    invoke-static {v4, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v21, v1

    const-string v1, "dff_val3"

    .line 47
    invoke-static {v4, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v22, v1

    const-string v1, "dff_val4"

    .line 48
    invoke-static {v4, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v23, v1

    const-string v1, "dff_val5"

    .line 49
    invoke-static {v4, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v24, v1

    const-string v1, "active"

    .line 50
    invoke-static {v4, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v25, v1

    const-string v1, "state"

    .line 51
    invoke-static {v4, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v26, v1

    const-string v1, "synthetic_record_id"

    .line 52
    invoke-static {v4, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v27, v1

    const-string v1, "deleted"

    .line 53
    invoke-static {v4, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v28, v1

    const-string v1, "created_at"

    .line 54
    invoke-static {v4, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v29, v1

    const-string v1, "spam_category"

    .line 55
    invoke-static {v4, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v30, v1

    .line 56
    new-instance v1, Ljava/util/ArrayList;

    move/from16 v31, v5

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 57
    :goto_5
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_21

    .line 58
    new-instance v5, Lcom/truecaller/insights/models/pdo/ParsedDataObject;

    invoke-direct {v5}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;-><init>()V

    move-object/from16 v33, v1

    move/from16 v32, v2

    .line 59
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 60
    invoke-virtual {v5, v1, v2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setMessageID(J)V

    .line 61
    invoke-interface {v4, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    goto :goto_6

    .line 62
    :cond_5
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 63
    :goto_6
    invoke-virtual {v5, v1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setD(Ljava/lang/String;)V

    .line 64
    invoke-interface {v4, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    goto :goto_7

    .line 65
    :cond_6
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 66
    :goto_7
    invoke-virtual {v5, v1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setK(Ljava/lang/String;)V

    .line 67
    invoke-interface {v4, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x0

    goto :goto_8

    .line 68
    :cond_7
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 69
    :goto_8
    invoke-virtual {v5, v1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setP(Ljava/lang/String;)V

    .line 70
    invoke-interface {v4, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x0

    goto :goto_9

    .line 71
    :cond_8
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 72
    :goto_9
    invoke-virtual {v5, v1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setC(Ljava/lang/String;)V

    .line 73
    invoke-interface {v4, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x0

    goto :goto_a

    .line 74
    :cond_9
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 75
    :goto_a
    invoke-virtual {v5, v1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setO(Ljava/lang/String;)V

    .line 76
    invoke-interface {v4, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x0

    goto :goto_b

    .line 77
    :cond_a
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 78
    :goto_b
    invoke-virtual {v5, v1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setF(Ljava/lang/String;)V

    .line 79
    invoke-interface {v4, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x0

    goto :goto_c

    .line 80
    :cond_b
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 81
    :goto_c
    invoke-virtual {v5, v1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setG(Ljava/lang/String;)V

    .line 82
    invoke-interface {v4, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x0

    goto :goto_d

    .line 83
    :cond_c
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 84
    :goto_d
    invoke-virtual {v5, v1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setS(Ljava/lang/String;)V

    .line 85
    invoke-interface {v4, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v1, 0x0

    goto :goto_e

    .line 86
    :cond_d
    invoke-interface {v4, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 87
    :goto_e
    invoke-virtual {v5, v1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setAccountModelId(Ljava/lang/Long;)V

    move/from16 v1, v32

    .line 88
    invoke-interface {v4, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_e

    const/4 v2, 0x0

    goto :goto_f

    .line 89
    :cond_e
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 90
    :goto_f
    invoke-virtual {v5, v2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setVal1(Ljava/lang/String;)V

    .line 91
    invoke-interface {v4, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v2, 0x0

    goto :goto_10

    .line 92
    :cond_f
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 93
    :goto_10
    invoke-virtual {v5, v2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setVal2(Ljava/lang/String;)V

    .line 94
    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v2, 0x0

    goto :goto_11

    .line 95
    :cond_10
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 96
    :goto_11
    invoke-virtual {v5, v2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setVal3(Ljava/lang/String;)V

    move/from16 v2, v31

    .line 97
    invoke-interface {v4, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v31

    if-eqz v31, :cond_11

    move/from16 v32, v0

    const/4 v0, 0x0

    goto :goto_12

    .line 98
    :cond_11
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    move/from16 v32, v0

    move-object/from16 v0, v31

    .line 99
    :goto_12
    invoke-virtual {v5, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setVal4(Ljava/lang/String;)V

    move/from16 v0, p3

    .line 100
    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v31

    if-eqz v31, :cond_12

    move/from16 p3, v0

    const/4 v0, 0x0

    goto :goto_13

    .line 101
    :cond_12
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    move/from16 p3, v0

    move-object/from16 v0, v31

    .line 102
    :goto_13
    invoke-virtual {v5, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setVal5(Ljava/lang/String;)V

    move/from16 v0, p4

    .line 103
    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v31

    if-eqz v31, :cond_13

    move/from16 p4, v0

    const/4 v0, 0x0

    goto :goto_14

    .line 104
    :cond_13
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    move/from16 p4, v0

    move-object/from16 v0, v31

    .line 105
    :goto_14
    invoke-virtual {v5, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDatetime(Ljava/lang/String;)V

    move/from16 v0, v17

    .line 106
    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_14

    move/from16 v31, v0

    const/4 v0, 0x0

    goto :goto_15

    .line 107
    :cond_14
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move/from16 v31, v0

    move-object/from16 v0, v17

    .line 108
    :goto_15
    invoke-virtual {v5, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setAddress(Ljava/lang/String;)V

    move/from16 v0, v18

    .line 109
    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_15

    move/from16 v18, v0

    const/4 v0, 0x0

    goto :goto_16

    .line 110
    :cond_15
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move/from16 v18, v0

    move-object/from16 v0, v17

    .line 111
    :goto_16
    invoke-virtual {v5, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDate(Ljava/lang/String;)V

    move/from16 v0, v19

    .line 112
    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_16

    move/from16 v19, v0

    const/4 v0, 0x0

    goto :goto_17

    .line 113
    :cond_16
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v34

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move/from16 v19, v0

    move-object/from16 v0, v17

    :goto_17
    move/from16 v17, v1

    move/from16 v34, v2

    move-object/from16 v1, p0

    .line 114
    :try_start_3
    iget-object v2, v1, Le/a/c/c/d/e0;->c:Le/a/c/c0/g;

    invoke-virtual {v2, v0}, Le/a/c/c0/g;->c(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object v0

    .line 115
    invoke-virtual {v5, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setMsgDate(Ljava/util/Date;)V

    move/from16 v0, v20

    .line 116
    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_17

    const/4 v2, 0x0

    goto :goto_18

    .line 117
    :cond_17
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 118
    :goto_18
    invoke-virtual {v5, v2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDffVal1(Ljava/lang/String;)V

    move/from16 v2, v21

    .line 119
    invoke-interface {v4, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v20

    if-eqz v20, :cond_18

    move/from16 v21, v0

    const/4 v0, 0x0

    goto :goto_19

    .line 120
    :cond_18
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    move/from16 v21, v0

    move-object/from16 v0, v20

    .line 121
    :goto_19
    invoke-virtual {v5, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDffVal2(Ljava/lang/String;)V

    move/from16 v0, v22

    .line 122
    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v20

    if-eqz v20, :cond_19

    move/from16 v22, v0

    const/4 v0, 0x0

    goto :goto_1a

    .line 123
    :cond_19
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    move/from16 v22, v0

    move-object/from16 v0, v20

    .line 124
    :goto_1a
    invoke-virtual {v5, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDffVal3(Ljava/lang/String;)V

    move/from16 v0, v23

    .line 125
    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v20

    if-eqz v20, :cond_1a

    move/from16 v23, v0

    const/4 v0, 0x0

    goto :goto_1b

    .line 126
    :cond_1a
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    move/from16 v23, v0

    move-object/from16 v0, v20

    .line 127
    :goto_1b
    invoke-virtual {v5, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDffVal4(Ljava/lang/String;)V

    move/from16 v0, v24

    .line 128
    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v20

    if-eqz v20, :cond_1b

    move/from16 v24, v0

    const/4 v0, 0x0

    goto :goto_1c

    .line 129
    :cond_1b
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    move/from16 v24, v0

    move-object/from16 v0, v20

    .line 130
    :goto_1c
    invoke-virtual {v5, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDffVal5(Ljava/lang/String;)V

    move/from16 v0, v25

    .line 131
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    move/from16 v25, v0

    if-eqz v20, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    .line 132
    :goto_1d
    invoke-virtual {v5, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setActive(Z)V

    move/from16 v0, v26

    .line 133
    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v20

    if-eqz v20, :cond_1d

    move/from16 v26, v0

    const/4 v0, 0x0

    goto :goto_1e

    .line 134
    :cond_1d
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    move/from16 v26, v0

    move-object/from16 v0, v20

    .line 135
    :goto_1e
    invoke-virtual {v5, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setState(Ljava/lang/String;)V

    move/from16 v0, v27

    .line 136
    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v20

    if-eqz v20, :cond_1e

    move/from16 v27, v0

    const/4 v0, 0x0

    goto :goto_1f

    .line 137
    :cond_1e
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v35

    invoke-static/range {v35 .. v36}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move/from16 v27, v0

    move-object/from16 v0, v20

    .line 138
    :goto_1f
    invoke-virtual {v5, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setSyntheticRecordId(Ljava/lang/Long;)V

    move/from16 v0, v28

    .line 139
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    move/from16 v28, v0

    if-eqz v20, :cond_1f

    const/4 v0, 0x1

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    .line 140
    :goto_20
    invoke-virtual {v5, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDeleted(Z)V

    move/from16 v0, v29

    .line 141
    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v20

    if-eqz v20, :cond_20

    move/from16 v29, v0

    move/from16 v20, v2

    const/4 v0, 0x0

    goto :goto_21

    .line 142
    :cond_20
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v35

    invoke-static/range {v35 .. v36}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move/from16 v29, v0

    move-object/from16 v0, v20

    move/from16 v20, v2

    .line 143
    :goto_21
    iget-object v2, v1, Le/a/c/c/d/e0;->c:Le/a/c/c0/g;

    invoke-virtual {v2, v0}, Le/a/c/c0/g;->c(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object v0

    .line 144
    invoke-virtual {v5, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setCreatedAt(Ljava/util/Date;)V

    move/from16 v0, v30

    .line 145
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 146
    invoke-virtual {v5, v2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setSpamCategory(I)V

    move-object/from16 v2, v33

    .line 147
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move/from16 v30, v0

    move-object v1, v2

    move/from16 v2, v17

    move/from16 v17, v31

    move/from16 v0, v32

    move/from16 v31, v34

    move/from16 v37, v21

    move/from16 v21, v20

    move/from16 v20, v37

    goto/16 :goto_5

    :cond_21
    move-object v2, v1

    move-object/from16 v1, p0

    .line 148
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 149
    invoke-virtual/range {v16 .. v16}, Ln3/c0/y;->l()V

    return-object v2

    :catchall_0
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_22

    :catchall_1
    move-exception v0

    goto :goto_22

    :catchall_2
    move-exception v0

    move-object/from16 v16, v5

    .line 150
    :goto_22
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 151
    invoke-virtual/range {v16 .. v16}, Ln3/c0/y;->l()V

    .line 152
    throw v0
.end method

.method public l0(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "            UPDATE parsed_data_object_table SET "

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "            account_model_id = NULL "

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "            WHERE account_model_id IN ("

    .line 8
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 10
    invoke-static {v0, v2}, Ln3/c0/h0/d;->a(Ljava/lang/StringBuilder;I)V

    const-string v2, ")"

    .line 11
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "        "

    .line 12
    invoke-static {v0, v1, v2}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 13
    iget-object v1, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {v1, v0}, Ln3/c0/q;->compileStatement(Ljava/lang/String;)Ln3/e0/a/f;

    move-result-object v0

    .line 14
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-nez v2, :cond_0

    .line 15
    invoke-interface {v0, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_1

    .line 16
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Ln3/e0/a/d;->l0(IJ)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 17
    :cond_1
    iget-object p1, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->beginTransaction()V

    .line 18
    :try_start_0
    invoke-interface {v0}, Ln3/e0/a/f;->A()I

    .line 19
    iget-object p1, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    iget-object p1, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->endTransaction()V

    .line 21
    throw p1
.end method

.method public m()Ljava/util/List;
    .locals 39
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/models/pdo/ParsedDataObject;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "\n            SELECT * FROM parsed_data_object_table\n            WHERE d = \"Bank\" AND\n            val1 = \"\"\n        "

    const/4 v2, 0x0

    .line 1
    invoke-static {v0, v2}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v3

    .line 2
    iget-object v0, v1, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 3
    iget-object v0, v1, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    const/4 v4, 0x0

    invoke-static {v0, v3, v2, v4}, Ln3/c0/h0/b;->b(Ln3/c0/q;Ln3/e0/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v5

    :try_start_0
    const-string v0, "messageID"

    .line 4
    invoke-static {v5, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v6, "d"

    .line 5
    invoke-static {v5, v6}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "k"

    .line 6
    invoke-static {v5, v7}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "p"

    .line 7
    invoke-static {v5, v8}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "c"

    .line 8
    invoke-static {v5, v9}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "o"

    .line 9
    invoke-static {v5, v10}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "f"

    .line 10
    invoke-static {v5, v11}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "g"

    .line 11
    invoke-static {v5, v12}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "s"

    .line 12
    invoke-static {v5, v13}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "account_model_id"

    .line 13
    invoke-static {v5, v14}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "val1"

    .line 14
    invoke-static {v5, v15}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v2, "val2"

    .line 15
    invoke-static {v5, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v4, "val3"

    .line 16
    invoke-static {v5, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object/from16 v16, v3

    :try_start_1
    const-string v3, "val4"

    .line 17
    invoke-static {v5, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    const-string v1, "val5"

    .line 18
    invoke-static {v5, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v17, v1

    const-string v1, "datetime"

    .line 19
    invoke-static {v5, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v18, v1

    const-string v1, "address"

    .line 20
    invoke-static {v5, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v19, v1

    const-string v1, "date"

    .line 21
    invoke-static {v5, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v20, v1

    const-string v1, "msg_date"

    .line 22
    invoke-static {v5, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v21, v1

    const-string v1, "dff_val1"

    .line 23
    invoke-static {v5, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v22, v1

    const-string v1, "dff_val2"

    .line 24
    invoke-static {v5, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v23, v1

    const-string v1, "dff_val3"

    .line 25
    invoke-static {v5, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v24, v1

    const-string v1, "dff_val4"

    .line 26
    invoke-static {v5, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v25, v1

    const-string v1, "dff_val5"

    .line 27
    invoke-static {v5, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v26, v1

    const-string v1, "active"

    .line 28
    invoke-static {v5, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v27, v1

    const-string v1, "state"

    .line 29
    invoke-static {v5, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v28, v1

    const-string v1, "synthetic_record_id"

    .line 30
    invoke-static {v5, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v29, v1

    const-string v1, "deleted"

    .line 31
    invoke-static {v5, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v30, v1

    const-string v1, "created_at"

    .line 32
    invoke-static {v5, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v31, v1

    const-string v1, "spam_category"

    .line 33
    invoke-static {v5, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v32, v1

    .line 34
    new-instance v1, Ljava/util/ArrayList;

    move/from16 v33, v3

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 35
    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 36
    new-instance v3, Lcom/truecaller/insights/models/pdo/ParsedDataObject;

    invoke-direct {v3}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;-><init>()V

    move-object/from16 v35, v1

    move/from16 v34, v2

    .line 37
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 38
    invoke-virtual {v3, v1, v2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setMessageID(J)V

    .line 39
    invoke-interface {v5, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    .line 40
    :cond_0
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 41
    :goto_1
    invoke-virtual {v3, v1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setD(Ljava/lang/String;)V

    .line 42
    invoke-interface {v5, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_2

    .line 43
    :cond_1
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 44
    :goto_2
    invoke-virtual {v3, v1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setK(Ljava/lang/String;)V

    .line 45
    invoke-interface {v5, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_3

    .line 46
    :cond_2
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 47
    :goto_3
    invoke-virtual {v3, v1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setP(Ljava/lang/String;)V

    .line 48
    invoke-interface {v5, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    goto :goto_4

    .line 49
    :cond_3
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 50
    :goto_4
    invoke-virtual {v3, v1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setC(Ljava/lang/String;)V

    .line 51
    invoke-interface {v5, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    goto :goto_5

    .line 52
    :cond_4
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 53
    :goto_5
    invoke-virtual {v3, v1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setO(Ljava/lang/String;)V

    .line 54
    invoke-interface {v5, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    goto :goto_6

    .line 55
    :cond_5
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 56
    :goto_6
    invoke-virtual {v3, v1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setF(Ljava/lang/String;)V

    .line 57
    invoke-interface {v5, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    goto :goto_7

    .line 58
    :cond_6
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 59
    :goto_7
    invoke-virtual {v3, v1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setG(Ljava/lang/String;)V

    .line 60
    invoke-interface {v5, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x0

    goto :goto_8

    .line 61
    :cond_7
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 62
    :goto_8
    invoke-virtual {v3, v1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setS(Ljava/lang/String;)V

    .line 63
    invoke-interface {v5, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x0

    goto :goto_9

    .line 64
    :cond_8
    invoke-interface {v5, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 65
    :goto_9
    invoke-virtual {v3, v1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setAccountModelId(Ljava/lang/Long;)V

    .line 66
    invoke-interface {v5, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x0

    goto :goto_a

    .line 67
    :cond_9
    invoke-interface {v5, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 68
    :goto_a
    invoke-virtual {v3, v1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setVal1(Ljava/lang/String;)V

    move/from16 v1, v34

    .line 69
    invoke-interface {v5, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x0

    goto :goto_b

    .line 70
    :cond_a
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 71
    :goto_b
    invoke-virtual {v3, v2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setVal2(Ljava/lang/String;)V

    .line 72
    invoke-interface {v5, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v2, 0x0

    goto :goto_c

    .line 73
    :cond_b
    invoke-interface {v5, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 74
    :goto_c
    invoke-virtual {v3, v2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setVal3(Ljava/lang/String;)V

    move/from16 v2, v33

    .line 75
    invoke-interface {v5, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v33

    if-eqz v33, :cond_c

    move/from16 v34, v0

    const/4 v0, 0x0

    goto :goto_d

    .line 76
    :cond_c
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v33

    move/from16 v34, v0

    move-object/from16 v0, v33

    .line 77
    :goto_d
    invoke-virtual {v3, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setVal4(Ljava/lang/String;)V

    move/from16 v0, v17

    .line 78
    invoke-interface {v5, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_d

    move/from16 v33, v0

    const/4 v0, 0x0

    goto :goto_e

    .line 79
    :cond_d
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move/from16 v33, v0

    move-object/from16 v0, v17

    .line 80
    :goto_e
    invoke-virtual {v3, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setVal5(Ljava/lang/String;)V

    move/from16 v0, v18

    .line 81
    invoke-interface {v5, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_e

    move/from16 v18, v0

    const/4 v0, 0x0

    goto :goto_f

    .line 82
    :cond_e
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move/from16 v18, v0

    move-object/from16 v0, v17

    .line 83
    :goto_f
    invoke-virtual {v3, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDatetime(Ljava/lang/String;)V

    move/from16 v0, v19

    .line 84
    invoke-interface {v5, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_f

    move/from16 v19, v0

    const/4 v0, 0x0

    goto :goto_10

    .line 85
    :cond_f
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move/from16 v19, v0

    move-object/from16 v0, v17

    .line 86
    :goto_10
    invoke-virtual {v3, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setAddress(Ljava/lang/String;)V

    move/from16 v0, v20

    .line 87
    invoke-interface {v5, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_10

    move/from16 v20, v0

    const/4 v0, 0x0

    goto :goto_11

    .line 88
    :cond_10
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move/from16 v20, v0

    move-object/from16 v0, v17

    .line 89
    :goto_11
    invoke-virtual {v3, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDate(Ljava/lang/String;)V

    move/from16 v0, v21

    .line 90
    invoke-interface {v5, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_11

    move/from16 v21, v0

    move/from16 v17, v1

    move/from16 v36, v2

    const/4 v0, 0x0

    :goto_12
    move-object/from16 v1, p0

    goto :goto_13

    .line 91
    :cond_11
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v36

    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move/from16 v21, v0

    move/from16 v36, v2

    move-object/from16 v0, v17

    move/from16 v17, v1

    goto :goto_12

    .line 92
    :goto_13
    :try_start_3
    iget-object v2, v1, Le/a/c/c/d/e0;->c:Le/a/c/c0/g;

    invoke-virtual {v2, v0}, Le/a/c/c0/g;->c(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object v0

    .line 93
    invoke-virtual {v3, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setMsgDate(Ljava/util/Date;)V

    move/from16 v0, v22

    .line 94
    invoke-interface {v5, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_12

    const/4 v2, 0x0

    goto :goto_14

    .line 95
    :cond_12
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 96
    :goto_14
    invoke-virtual {v3, v2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDffVal1(Ljava/lang/String;)V

    move/from16 v2, v23

    .line 97
    invoke-interface {v5, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v22

    if-eqz v22, :cond_13

    move/from16 v23, v0

    const/4 v0, 0x0

    goto :goto_15

    .line 98
    :cond_13
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    move/from16 v23, v0

    move-object/from16 v0, v22

    .line 99
    :goto_15
    invoke-virtual {v3, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDffVal2(Ljava/lang/String;)V

    move/from16 v0, v24

    .line 100
    invoke-interface {v5, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v22

    if-eqz v22, :cond_14

    move/from16 v24, v0

    const/4 v0, 0x0

    goto :goto_16

    .line 101
    :cond_14
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    move/from16 v24, v0

    move-object/from16 v0, v22

    .line 102
    :goto_16
    invoke-virtual {v3, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDffVal3(Ljava/lang/String;)V

    move/from16 v0, v25

    .line 103
    invoke-interface {v5, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v22

    if-eqz v22, :cond_15

    move/from16 v25, v0

    const/4 v0, 0x0

    goto :goto_17

    .line 104
    :cond_15
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    move/from16 v25, v0

    move-object/from16 v0, v22

    .line 105
    :goto_17
    invoke-virtual {v3, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDffVal4(Ljava/lang/String;)V

    move/from16 v0, v26

    .line 106
    invoke-interface {v5, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v22

    if-eqz v22, :cond_16

    move/from16 v26, v0

    const/4 v0, 0x0

    goto :goto_18

    .line 107
    :cond_16
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    move/from16 v26, v0

    move-object/from16 v0, v22

    .line 108
    :goto_18
    invoke-virtual {v3, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDffVal5(Ljava/lang/String;)V

    move/from16 v0, v27

    .line 109
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    const/16 v27, 0x1

    if-eqz v22, :cond_17

    move/from16 v22, v0

    move/from16 v0, v27

    goto :goto_19

    :cond_17
    move/from16 v22, v0

    const/4 v0, 0x0

    .line 110
    :goto_19
    invoke-virtual {v3, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setActive(Z)V

    move/from16 v0, v28

    .line 111
    invoke-interface {v5, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v28

    if-eqz v28, :cond_18

    move/from16 v37, v0

    const/4 v0, 0x0

    goto :goto_1a

    .line 112
    :cond_18
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    move/from16 v37, v0

    move-object/from16 v0, v28

    .line 113
    :goto_1a
    invoke-virtual {v3, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setState(Ljava/lang/String;)V

    move/from16 v0, v29

    .line 114
    invoke-interface {v5, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v28

    if-eqz v28, :cond_19

    move/from16 v29, v0

    const/4 v0, 0x0

    goto :goto_1b

    .line 115
    :cond_19
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    move/from16 v29, v0

    move-object/from16 v0, v28

    .line 116
    :goto_1b
    invoke-virtual {v3, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setSyntheticRecordId(Ljava/lang/Long;)V

    move/from16 v0, v30

    .line 117
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    move/from16 v30, v0

    if-eqz v28, :cond_1a

    move/from16 v0, v27

    goto :goto_1c

    :cond_1a
    const/4 v0, 0x0

    .line 118
    :goto_1c
    invoke-virtual {v3, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDeleted(Z)V

    move/from16 v0, v31

    .line 119
    invoke-interface {v5, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v27

    if-eqz v27, :cond_1b

    move/from16 v31, v0

    move/from16 v27, v2

    const/4 v0, 0x0

    goto :goto_1d

    .line 120
    :cond_1b
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v27

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    move/from16 v31, v0

    move-object/from16 v0, v27

    move/from16 v27, v2

    .line 121
    :goto_1d
    iget-object v2, v1, Le/a/c/c/d/e0;->c:Le/a/c/c0/g;

    invoke-virtual {v2, v0}, Le/a/c/c0/g;->c(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object v0

    .line 122
    invoke-virtual {v3, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setCreatedAt(Ljava/util/Date;)V

    move/from16 v0, v32

    .line 123
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 124
    invoke-virtual {v3, v2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setSpamCategory(I)V

    move-object/from16 v2, v35

    .line 125
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move/from16 v32, v0

    move-object v1, v2

    move/from16 v2, v17

    move/from16 v17, v33

    move/from16 v0, v34

    move/from16 v33, v36

    move/from16 v28, v37

    move/from16 v38, v27

    move/from16 v27, v22

    move/from16 v22, v23

    move/from16 v23, v38

    goto/16 :goto_0

    :cond_1c
    move-object v2, v1

    move-object/from16 v1, p0

    .line 126
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 127
    invoke-virtual/range {v16 .. v16}, Ln3/c0/y;->l()V

    return-object v2

    :catchall_0
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_1e

    :catchall_1
    move-exception v0

    goto :goto_1e

    :catchall_2
    move-exception v0

    move-object/from16 v16, v3

    .line 128
    :goto_1e
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 129
    invoke-virtual/range {v16 .. v16}, Ln3/c0/y;->l()V

    .line 130
    throw v0
.end method

.method public m0(Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;I)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "        UPDATE sms_backup_table SET spam_category = "

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?"

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "        WHERE messageID IN ("

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 9
    invoke-static {v0, v2}, Ln3/c0/h0/d;->a(Ljava/lang/StringBuilder;I)V

    const-string v2, ")"

    .line 10
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "        "

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 14
    iget-object v1, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {v1, v0}, Ln3/c0/q;->compileStatement(Ljava/lang/String;)Ln3/e0/a/f;

    move-result-object v0

    int-to-long v1, p2

    const/4 p2, 0x1

    .line 15
    invoke-interface {v0, p2, v1, v2}, Ln3/e0/a/d;->l0(IJ)V

    const/4 p2, 0x2

    .line 16
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-nez v1, :cond_0

    .line 17
    invoke-interface {v0, p2}, Ln3/e0/a/d;->y0(I)V

    goto :goto_1

    .line 18
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {v0, p2, v1, v2}, Ln3/e0/a/d;->l0(IJ)V

    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 19
    :cond_1
    iget-object p1, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->beginTransaction()V

    .line 20
    :try_start_0
    invoke-interface {v0}, Ln3/e0/a/f;->A()I

    .line 21
    iget-object p1, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    iget-object p1, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {p2}, Ln3/c0/q;->endTransaction()V

    .line 23
    throw p1
.end method

.method public n(Ljava/lang/String;)Ljava/util/List;
    .locals 40
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/models/pdo/ParsedDataObject;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "\n            SELECT * FROM parsed_data_object_table\n            WHERE d = \"Bank\" AND\n            UPPER(address) = ?\n        "

    const/4 v2, 0x1

    .line 1
    invoke-static {v0, v2}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v3

    move-object/from16 v0, p1

    .line 2
    invoke-virtual {v3, v2, v0}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    .line 3
    iget-object v0, v1, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 4
    iget-object v0, v1, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v3, v4, v5}, Ln3/c0/h0/b;->b(Ln3/c0/q;Ln3/e0/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v6

    :try_start_0
    const-string v0, "messageID"

    .line 5
    invoke-static {v6, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v7, "d"

    .line 6
    invoke-static {v6, v7}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "k"

    .line 7
    invoke-static {v6, v8}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "p"

    .line 8
    invoke-static {v6, v9}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "c"

    .line 9
    invoke-static {v6, v10}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "o"

    .line 10
    invoke-static {v6, v11}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "f"

    .line 11
    invoke-static {v6, v12}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "g"

    .line 12
    invoke-static {v6, v13}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "s"

    .line 13
    invoke-static {v6, v14}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "account_model_id"

    .line 14
    invoke-static {v6, v15}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v2, "val1"

    .line 15
    invoke-static {v6, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v4, "val2"

    .line 16
    invoke-static {v6, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "val3"

    .line 17
    invoke-static {v6, v5}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-object/from16 v16, v3

    :try_start_1
    const-string v3, "val4"

    .line 18
    invoke-static {v6, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    const-string v1, "val5"

    .line 19
    invoke-static {v6, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v17, v1

    const-string v1, "datetime"

    .line 20
    invoke-static {v6, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v18, v1

    const-string v1, "address"

    .line 21
    invoke-static {v6, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v19, v1

    const-string v1, "date"

    .line 22
    invoke-static {v6, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v20, v1

    const-string v1, "msg_date"

    .line 23
    invoke-static {v6, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v21, v1

    const-string v1, "dff_val1"

    .line 24
    invoke-static {v6, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v22, v1

    const-string v1, "dff_val2"

    .line 25
    invoke-static {v6, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v23, v1

    const-string v1, "dff_val3"

    .line 26
    invoke-static {v6, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v24, v1

    const-string v1, "dff_val4"

    .line 27
    invoke-static {v6, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v25, v1

    const-string v1, "dff_val5"

    .line 28
    invoke-static {v6, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v26, v1

    const-string v1, "active"

    .line 29
    invoke-static {v6, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v27, v1

    const-string v1, "state"

    .line 30
    invoke-static {v6, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v28, v1

    const-string v1, "synthetic_record_id"

    .line 31
    invoke-static {v6, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v29, v1

    const-string v1, "deleted"

    .line 32
    invoke-static {v6, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v30, v1

    const-string v1, "created_at"

    .line 33
    invoke-static {v6, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v31, v1

    const-string v1, "spam_category"

    .line 34
    invoke-static {v6, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v32, v1

    .line 35
    new-instance v1, Ljava/util/ArrayList;

    move/from16 v33, v3

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 36
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 37
    new-instance v3, Lcom/truecaller/insights/models/pdo/ParsedDataObject;

    invoke-direct {v3}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;-><init>()V

    move/from16 v34, v4

    move/from16 v35, v5

    .line 38
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 39
    invoke-virtual {v3, v4, v5}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setMessageID(J)V

    .line 40
    invoke-interface {v6, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    .line 41
    :cond_0
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 42
    :goto_1
    invoke-virtual {v3, v4}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setD(Ljava/lang/String;)V

    .line 43
    invoke-interface {v6, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    goto :goto_2

    .line 44
    :cond_1
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 45
    :goto_2
    invoke-virtual {v3, v4}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setK(Ljava/lang/String;)V

    .line 46
    invoke-interface {v6, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    goto :goto_3

    .line 47
    :cond_2
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 48
    :goto_3
    invoke-virtual {v3, v4}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setP(Ljava/lang/String;)V

    .line 49
    invoke-interface {v6, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    goto :goto_4

    .line 50
    :cond_3
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 51
    :goto_4
    invoke-virtual {v3, v4}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setC(Ljava/lang/String;)V

    .line 52
    invoke-interface {v6, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x0

    goto :goto_5

    .line 53
    :cond_4
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 54
    :goto_5
    invoke-virtual {v3, v4}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setO(Ljava/lang/String;)V

    .line 55
    invoke-interface {v6, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x0

    goto :goto_6

    .line 56
    :cond_5
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 57
    :goto_6
    invoke-virtual {v3, v4}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setF(Ljava/lang/String;)V

    .line 58
    invoke-interface {v6, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x0

    goto :goto_7

    .line 59
    :cond_6
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 60
    :goto_7
    invoke-virtual {v3, v4}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setG(Ljava/lang/String;)V

    .line 61
    invoke-interface {v6, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v4, 0x0

    goto :goto_8

    .line 62
    :cond_7
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 63
    :goto_8
    invoke-virtual {v3, v4}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setS(Ljava/lang/String;)V

    .line 64
    invoke-interface {v6, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, 0x0

    goto :goto_9

    .line 65
    :cond_8
    invoke-interface {v6, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 66
    :goto_9
    invoke-virtual {v3, v4}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setAccountModelId(Ljava/lang/Long;)V

    .line 67
    invoke-interface {v6, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_9

    const/4 v4, 0x0

    goto :goto_a

    .line 68
    :cond_9
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 69
    :goto_a
    invoke-virtual {v3, v4}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setVal1(Ljava/lang/String;)V

    move/from16 v4, v34

    .line 70
    invoke-interface {v6, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_a

    const/4 v5, 0x0

    goto :goto_b

    .line 71
    :cond_a
    invoke-interface {v6, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 72
    :goto_b
    invoke-virtual {v3, v5}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setVal2(Ljava/lang/String;)V

    move/from16 v5, v35

    .line 73
    invoke-interface {v6, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v34

    if-eqz v34, :cond_b

    move/from16 v35, v0

    const/4 v0, 0x0

    goto :goto_c

    .line 74
    :cond_b
    invoke-interface {v6, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v34

    move/from16 v35, v0

    move-object/from16 v0, v34

    .line 75
    :goto_c
    invoke-virtual {v3, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setVal3(Ljava/lang/String;)V

    move/from16 v0, v33

    .line 76
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v33

    if-eqz v33, :cond_c

    move/from16 v34, v0

    const/4 v0, 0x0

    goto :goto_d

    .line 77
    :cond_c
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v33

    move/from16 v34, v0

    move-object/from16 v0, v33

    .line 78
    :goto_d
    invoke-virtual {v3, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setVal4(Ljava/lang/String;)V

    move/from16 v0, v17

    .line 79
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_d

    move/from16 v33, v0

    const/4 v0, 0x0

    goto :goto_e

    .line 80
    :cond_d
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move/from16 v33, v0

    move-object/from16 v0, v17

    .line 81
    :goto_e
    invoke-virtual {v3, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setVal5(Ljava/lang/String;)V

    move/from16 v0, v18

    .line 82
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_e

    move/from16 v18, v0

    const/4 v0, 0x0

    goto :goto_f

    .line 83
    :cond_e
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move/from16 v18, v0

    move-object/from16 v0, v17

    .line 84
    :goto_f
    invoke-virtual {v3, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDatetime(Ljava/lang/String;)V

    move/from16 v0, v19

    .line 85
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_f

    move/from16 v19, v0

    const/4 v0, 0x0

    goto :goto_10

    .line 86
    :cond_f
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move/from16 v19, v0

    move-object/from16 v0, v17

    .line 87
    :goto_10
    invoke-virtual {v3, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setAddress(Ljava/lang/String;)V

    move/from16 v0, v20

    .line 88
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_10

    move/from16 v20, v0

    const/4 v0, 0x0

    goto :goto_11

    .line 89
    :cond_10
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move/from16 v20, v0

    move-object/from16 v0, v17

    .line 90
    :goto_11
    invoke-virtual {v3, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDate(Ljava/lang/String;)V

    move/from16 v0, v21

    .line 91
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_11

    move/from16 v21, v0

    const/4 v0, 0x0

    goto :goto_12

    .line 92
    :cond_11
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v36

    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move/from16 v21, v0

    move-object/from16 v0, v17

    :goto_12
    move/from16 v17, v2

    move/from16 v36, v4

    move-object/from16 v2, p0

    .line 93
    :try_start_3
    iget-object v4, v2, Le/a/c/c/d/e0;->c:Le/a/c/c0/g;

    invoke-virtual {v4, v0}, Le/a/c/c0/g;->c(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object v0

    .line 94
    invoke-virtual {v3, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setMsgDate(Ljava/util/Date;)V

    move/from16 v0, v22

    .line 95
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_12

    const/4 v4, 0x0

    goto :goto_13

    .line 96
    :cond_12
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 97
    :goto_13
    invoke-virtual {v3, v4}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDffVal1(Ljava/lang/String;)V

    move/from16 v4, v23

    .line 98
    invoke-interface {v6, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v22

    if-eqz v22, :cond_13

    move/from16 v23, v0

    const/4 v0, 0x0

    goto :goto_14

    .line 99
    :cond_13
    invoke-interface {v6, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    move/from16 v23, v0

    move-object/from16 v0, v22

    .line 100
    :goto_14
    invoke-virtual {v3, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDffVal2(Ljava/lang/String;)V

    move/from16 v0, v24

    .line 101
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v22

    if-eqz v22, :cond_14

    move/from16 v24, v0

    const/4 v0, 0x0

    goto :goto_15

    .line 102
    :cond_14
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    move/from16 v24, v0

    move-object/from16 v0, v22

    .line 103
    :goto_15
    invoke-virtual {v3, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDffVal3(Ljava/lang/String;)V

    move/from16 v0, v25

    .line 104
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v22

    if-eqz v22, :cond_15

    move/from16 v25, v0

    const/4 v0, 0x0

    goto :goto_16

    .line 105
    :cond_15
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    move/from16 v25, v0

    move-object/from16 v0, v22

    .line 106
    :goto_16
    invoke-virtual {v3, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDffVal4(Ljava/lang/String;)V

    move/from16 v0, v26

    .line 107
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v22

    if-eqz v22, :cond_16

    move/from16 v26, v0

    const/4 v0, 0x0

    goto :goto_17

    .line 108
    :cond_16
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    move/from16 v26, v0

    move-object/from16 v0, v22

    .line 109
    :goto_17
    invoke-virtual {v3, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDffVal5(Ljava/lang/String;)V

    move/from16 v0, v27

    .line 110
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    move/from16 v27, v0

    if-eqz v22, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    .line 111
    :goto_18
    invoke-virtual {v3, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setActive(Z)V

    move/from16 v0, v28

    .line 112
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v22

    if-eqz v22, :cond_18

    move/from16 v28, v0

    const/4 v0, 0x0

    goto :goto_19

    .line 113
    :cond_18
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    move/from16 v28, v0

    move-object/from16 v0, v22

    .line 114
    :goto_19
    invoke-virtual {v3, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setState(Ljava/lang/String;)V

    move/from16 v0, v29

    .line 115
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v22

    if-eqz v22, :cond_19

    move/from16 v29, v0

    const/4 v0, 0x0

    goto :goto_1a

    .line 116
    :cond_19
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v37

    invoke-static/range {v37 .. v38}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move/from16 v29, v0

    move-object/from16 v0, v22

    .line 117
    :goto_1a
    invoke-virtual {v3, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setSyntheticRecordId(Ljava/lang/Long;)V

    move/from16 v0, v30

    .line 118
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    move/from16 v30, v0

    if-eqz v22, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    .line 119
    :goto_1b
    invoke-virtual {v3, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDeleted(Z)V

    move/from16 v0, v31

    .line 120
    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v22

    if-eqz v22, :cond_1b

    move/from16 v31, v0

    move/from16 v22, v4

    const/4 v0, 0x0

    goto :goto_1c

    .line 121
    :cond_1b
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v37

    invoke-static/range {v37 .. v38}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move/from16 v31, v0

    move-object/from16 v0, v22

    move/from16 v22, v4

    .line 122
    :goto_1c
    iget-object v4, v2, Le/a/c/c/d/e0;->c:Le/a/c/c0/g;

    invoke-virtual {v4, v0}, Le/a/c/c0/g;->c(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object v0

    .line 123
    invoke-virtual {v3, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setCreatedAt(Ljava/util/Date;)V

    move/from16 v0, v32

    .line 124
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 125
    invoke-virtual {v3, v4}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setSpamCategory(I)V

    .line 126
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move/from16 v32, v0

    move/from16 v2, v17

    move/from16 v17, v33

    move/from16 v33, v34

    move/from16 v0, v35

    move/from16 v4, v36

    move/from16 v39, v23

    move/from16 v23, v22

    move/from16 v22, v39

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1d

    :cond_1c
    move-object/from16 v2, p0

    .line 127
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 128
    invoke-virtual/range {v16 .. v16}, Ln3/c0/y;->l()V

    return-object v1

    :catchall_1
    move-exception v0

    move-object/from16 v2, p0

    goto :goto_1d

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_1d

    :catchall_3
    move-exception v0

    move-object v2, v1

    move-object/from16 v16, v3

    .line 129
    :goto_1d
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 130
    invoke-virtual/range {v16 .. v16}, Ln3/c0/y;->l()V

    .line 131
    throw v0
.end method

.method public n0(Ljava/util/List;Ljava/util/List;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;I)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "        UPDATE parsed_data_object_table SET spam_category = "

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?"

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "        WHERE messageID IN ("

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 9
    invoke-static {v0, v2}, Ln3/c0/h0/d;->a(Ljava/lang/StringBuilder;I)V

    const-string v3, ") "

    .line 10
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "        OR messageID IN ("

    .line 12
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    .line 14
    invoke-static {v0, v3}, Ln3/c0/h0/d;->a(Ljava/lang/StringBuilder;I)V

    const-string v3, ")"

    .line 15
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "        "

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 19
    iget-object v1, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {v1, v0}, Ln3/c0/q;->compileStatement(Ljava/lang/String;)Ln3/e0/a/f;

    move-result-object v0

    int-to-long v3, p3

    const/4 p3, 0x1

    .line 20
    invoke-interface {v0, p3, v3, v4}, Ln3/e0/a/d;->l0(IJ)V

    .line 21
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p3, 0x2

    move v1, p3

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    if-nez v3, :cond_0

    .line 22
    invoke-interface {v0, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_1

    .line 23
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {v0, v1, v3, v4}, Ln3/e0/a/d;->l0(IJ)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    add-int/2addr v2, p3

    .line 24
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    if-nez p2, :cond_2

    .line 25
    invoke-interface {v0, v2}, Ln3/e0/a/d;->y0(I)V

    goto :goto_3

    .line 26
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    invoke-interface {v0, v2, p2, p3}, Ln3/e0/a/d;->l0(IJ)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 27
    :cond_3
    iget-object p1, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->beginTransaction()V

    .line 28
    :try_start_0
    invoke-interface {v0}, Ln3/e0/a/f;->A()I

    .line 29
    iget-object p1, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    iget-object p1, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {p2}, Ln3/c0/q;->endTransaction()V

    .line 31
    throw p1
.end method

.method public o()Ljava/util/List;
    .locals 39
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/models/pdo/ParsedDataObject;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "SELECT * FROM parsed_data_object_table"

    const/4 v2, 0x0

    .line 1
    invoke-static {v0, v2}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v3

    .line 2
    iget-object v0, v1, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 3
    iget-object v0, v1, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    const/4 v4, 0x0

    invoke-static {v0, v3, v2, v4}, Ln3/c0/h0/b;->b(Ln3/c0/q;Ln3/e0/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v5

    :try_start_0
    const-string v0, "messageID"

    .line 4
    invoke-static {v5, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v6, "d"

    .line 5
    invoke-static {v5, v6}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "k"

    .line 6
    invoke-static {v5, v7}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "p"

    .line 7
    invoke-static {v5, v8}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "c"

    .line 8
    invoke-static {v5, v9}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "o"

    .line 9
    invoke-static {v5, v10}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "f"

    .line 10
    invoke-static {v5, v11}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "g"

    .line 11
    invoke-static {v5, v12}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "s"

    .line 12
    invoke-static {v5, v13}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "account_model_id"

    .line 13
    invoke-static {v5, v14}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "val1"

    .line 14
    invoke-static {v5, v15}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v2, "val2"

    .line 15
    invoke-static {v5, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v4, "val3"

    .line 16
    invoke-static {v5, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object/from16 v16, v3

    :try_start_1
    const-string v3, "val4"

    .line 17
    invoke-static {v5, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    const-string v1, "val5"

    .line 18
    invoke-static {v5, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v17, v1

    const-string v1, "datetime"

    .line 19
    invoke-static {v5, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v18, v1

    const-string v1, "address"

    .line 20
    invoke-static {v5, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v19, v1

    const-string v1, "date"

    .line 21
    invoke-static {v5, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v20, v1

    const-string v1, "msg_date"

    .line 22
    invoke-static {v5, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v21, v1

    const-string v1, "dff_val1"

    .line 23
    invoke-static {v5, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v22, v1

    const-string v1, "dff_val2"

    .line 24
    invoke-static {v5, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v23, v1

    const-string v1, "dff_val3"

    .line 25
    invoke-static {v5, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v24, v1

    const-string v1, "dff_val4"

    .line 26
    invoke-static {v5, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v25, v1

    const-string v1, "dff_val5"

    .line 27
    invoke-static {v5, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v26, v1

    const-string v1, "active"

    .line 28
    invoke-static {v5, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v27, v1

    const-string v1, "state"

    .line 29
    invoke-static {v5, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v28, v1

    const-string v1, "synthetic_record_id"

    .line 30
    invoke-static {v5, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v29, v1

    const-string v1, "deleted"

    .line 31
    invoke-static {v5, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v30, v1

    const-string v1, "created_at"

    .line 32
    invoke-static {v5, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v31, v1

    const-string v1, "spam_category"

    .line 33
    invoke-static {v5, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v32, v1

    .line 34
    new-instance v1, Ljava/util/ArrayList;

    move/from16 v33, v3

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 35
    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 36
    new-instance v3, Lcom/truecaller/insights/models/pdo/ParsedDataObject;

    invoke-direct {v3}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;-><init>()V

    move-object/from16 v35, v1

    move/from16 v34, v2

    .line 37
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 38
    invoke-virtual {v3, v1, v2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setMessageID(J)V

    .line 39
    invoke-interface {v5, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    .line 40
    :cond_0
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 41
    :goto_1
    invoke-virtual {v3, v1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setD(Ljava/lang/String;)V

    .line 42
    invoke-interface {v5, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_2

    .line 43
    :cond_1
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 44
    :goto_2
    invoke-virtual {v3, v1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setK(Ljava/lang/String;)V

    .line 45
    invoke-interface {v5, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_3

    .line 46
    :cond_2
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 47
    :goto_3
    invoke-virtual {v3, v1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setP(Ljava/lang/String;)V

    .line 48
    invoke-interface {v5, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    goto :goto_4

    .line 49
    :cond_3
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 50
    :goto_4
    invoke-virtual {v3, v1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setC(Ljava/lang/String;)V

    .line 51
    invoke-interface {v5, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    goto :goto_5

    .line 52
    :cond_4
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 53
    :goto_5
    invoke-virtual {v3, v1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setO(Ljava/lang/String;)V

    .line 54
    invoke-interface {v5, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    goto :goto_6

    .line 55
    :cond_5
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 56
    :goto_6
    invoke-virtual {v3, v1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setF(Ljava/lang/String;)V

    .line 57
    invoke-interface {v5, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    goto :goto_7

    .line 58
    :cond_6
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 59
    :goto_7
    invoke-virtual {v3, v1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setG(Ljava/lang/String;)V

    .line 60
    invoke-interface {v5, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x0

    goto :goto_8

    .line 61
    :cond_7
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 62
    :goto_8
    invoke-virtual {v3, v1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setS(Ljava/lang/String;)V

    .line 63
    invoke-interface {v5, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x0

    goto :goto_9

    .line 64
    :cond_8
    invoke-interface {v5, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 65
    :goto_9
    invoke-virtual {v3, v1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setAccountModelId(Ljava/lang/Long;)V

    .line 66
    invoke-interface {v5, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x0

    goto :goto_a

    .line 67
    :cond_9
    invoke-interface {v5, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 68
    :goto_a
    invoke-virtual {v3, v1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setVal1(Ljava/lang/String;)V

    move/from16 v1, v34

    .line 69
    invoke-interface {v5, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x0

    goto :goto_b

    .line 70
    :cond_a
    invoke-interface {v5, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 71
    :goto_b
    invoke-virtual {v3, v2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setVal2(Ljava/lang/String;)V

    .line 72
    invoke-interface {v5, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v2, 0x0

    goto :goto_c

    .line 73
    :cond_b
    invoke-interface {v5, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 74
    :goto_c
    invoke-virtual {v3, v2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setVal3(Ljava/lang/String;)V

    move/from16 v2, v33

    .line 75
    invoke-interface {v5, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v33

    if-eqz v33, :cond_c

    move/from16 v34, v0

    const/4 v0, 0x0

    goto :goto_d

    .line 76
    :cond_c
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v33

    move/from16 v34, v0

    move-object/from16 v0, v33

    .line 77
    :goto_d
    invoke-virtual {v3, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setVal4(Ljava/lang/String;)V

    move/from16 v0, v17

    .line 78
    invoke-interface {v5, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_d

    move/from16 v33, v0

    const/4 v0, 0x0

    goto :goto_e

    .line 79
    :cond_d
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move/from16 v33, v0

    move-object/from16 v0, v17

    .line 80
    :goto_e
    invoke-virtual {v3, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setVal5(Ljava/lang/String;)V

    move/from16 v0, v18

    .line 81
    invoke-interface {v5, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_e

    move/from16 v18, v0

    const/4 v0, 0x0

    goto :goto_f

    .line 82
    :cond_e
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move/from16 v18, v0

    move-object/from16 v0, v17

    .line 83
    :goto_f
    invoke-virtual {v3, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDatetime(Ljava/lang/String;)V

    move/from16 v0, v19

    .line 84
    invoke-interface {v5, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_f

    move/from16 v19, v0

    const/4 v0, 0x0

    goto :goto_10

    .line 85
    :cond_f
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move/from16 v19, v0

    move-object/from16 v0, v17

    .line 86
    :goto_10
    invoke-virtual {v3, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setAddress(Ljava/lang/String;)V

    move/from16 v0, v20

    .line 87
    invoke-interface {v5, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_10

    move/from16 v20, v0

    const/4 v0, 0x0

    goto :goto_11

    .line 88
    :cond_10
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move/from16 v20, v0

    move-object/from16 v0, v17

    .line 89
    :goto_11
    invoke-virtual {v3, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDate(Ljava/lang/String;)V

    move/from16 v0, v21

    .line 90
    invoke-interface {v5, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_11

    move/from16 v21, v0

    move/from16 v17, v1

    move/from16 v36, v2

    const/4 v0, 0x0

    :goto_12
    move-object/from16 v1, p0

    goto :goto_13

    .line 91
    :cond_11
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v36

    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move/from16 v21, v0

    move/from16 v36, v2

    move-object/from16 v0, v17

    move/from16 v17, v1

    goto :goto_12

    .line 92
    :goto_13
    :try_start_3
    iget-object v2, v1, Le/a/c/c/d/e0;->c:Le/a/c/c0/g;

    invoke-virtual {v2, v0}, Le/a/c/c0/g;->c(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object v0

    .line 93
    invoke-virtual {v3, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setMsgDate(Ljava/util/Date;)V

    move/from16 v0, v22

    .line 94
    invoke-interface {v5, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_12

    const/4 v2, 0x0

    goto :goto_14

    .line 95
    :cond_12
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 96
    :goto_14
    invoke-virtual {v3, v2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDffVal1(Ljava/lang/String;)V

    move/from16 v2, v23

    .line 97
    invoke-interface {v5, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v22

    if-eqz v22, :cond_13

    move/from16 v23, v0

    const/4 v0, 0x0

    goto :goto_15

    .line 98
    :cond_13
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    move/from16 v23, v0

    move-object/from16 v0, v22

    .line 99
    :goto_15
    invoke-virtual {v3, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDffVal2(Ljava/lang/String;)V

    move/from16 v0, v24

    .line 100
    invoke-interface {v5, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v22

    if-eqz v22, :cond_14

    move/from16 v24, v0

    const/4 v0, 0x0

    goto :goto_16

    .line 101
    :cond_14
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    move/from16 v24, v0

    move-object/from16 v0, v22

    .line 102
    :goto_16
    invoke-virtual {v3, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDffVal3(Ljava/lang/String;)V

    move/from16 v0, v25

    .line 103
    invoke-interface {v5, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v22

    if-eqz v22, :cond_15

    move/from16 v25, v0

    const/4 v0, 0x0

    goto :goto_17

    .line 104
    :cond_15
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    move/from16 v25, v0

    move-object/from16 v0, v22

    .line 105
    :goto_17
    invoke-virtual {v3, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDffVal4(Ljava/lang/String;)V

    move/from16 v0, v26

    .line 106
    invoke-interface {v5, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v22

    if-eqz v22, :cond_16

    move/from16 v26, v0

    const/4 v0, 0x0

    goto :goto_18

    .line 107
    :cond_16
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    move/from16 v26, v0

    move-object/from16 v0, v22

    .line 108
    :goto_18
    invoke-virtual {v3, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDffVal5(Ljava/lang/String;)V

    move/from16 v0, v27

    .line 109
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    const/16 v27, 0x1

    if-eqz v22, :cond_17

    move/from16 v22, v0

    move/from16 v0, v27

    goto :goto_19

    :cond_17
    move/from16 v22, v0

    const/4 v0, 0x0

    .line 110
    :goto_19
    invoke-virtual {v3, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setActive(Z)V

    move/from16 v0, v28

    .line 111
    invoke-interface {v5, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v28

    if-eqz v28, :cond_18

    move/from16 v37, v0

    const/4 v0, 0x0

    goto :goto_1a

    .line 112
    :cond_18
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    move/from16 v37, v0

    move-object/from16 v0, v28

    .line 113
    :goto_1a
    invoke-virtual {v3, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setState(Ljava/lang/String;)V

    move/from16 v0, v29

    .line 114
    invoke-interface {v5, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v28

    if-eqz v28, :cond_19

    move/from16 v29, v0

    const/4 v0, 0x0

    goto :goto_1b

    .line 115
    :cond_19
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    move/from16 v29, v0

    move-object/from16 v0, v28

    .line 116
    :goto_1b
    invoke-virtual {v3, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setSyntheticRecordId(Ljava/lang/Long;)V

    move/from16 v0, v30

    .line 117
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    move/from16 v30, v0

    if-eqz v28, :cond_1a

    move/from16 v0, v27

    goto :goto_1c

    :cond_1a
    const/4 v0, 0x0

    .line 118
    :goto_1c
    invoke-virtual {v3, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDeleted(Z)V

    move/from16 v0, v31

    .line 119
    invoke-interface {v5, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v27

    if-eqz v27, :cond_1b

    move/from16 v31, v0

    move/from16 v27, v2

    const/4 v0, 0x0

    goto :goto_1d

    .line 120
    :cond_1b
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v27

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    move/from16 v31, v0

    move-object/from16 v0, v27

    move/from16 v27, v2

    .line 121
    :goto_1d
    iget-object v2, v1, Le/a/c/c/d/e0;->c:Le/a/c/c0/g;

    invoke-virtual {v2, v0}, Le/a/c/c0/g;->c(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object v0

    .line 122
    invoke-virtual {v3, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setCreatedAt(Ljava/util/Date;)V

    move/from16 v0, v32

    .line 123
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 124
    invoke-virtual {v3, v2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setSpamCategory(I)V

    move-object/from16 v2, v35

    .line 125
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move/from16 v32, v0

    move-object v1, v2

    move/from16 v2, v17

    move/from16 v17, v33

    move/from16 v0, v34

    move/from16 v33, v36

    move/from16 v28, v37

    move/from16 v38, v27

    move/from16 v27, v22

    move/from16 v22, v23

    move/from16 v23, v38

    goto/16 :goto_0

    :cond_1c
    move-object v2, v1

    move-object/from16 v1, p0

    .line 126
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 127
    invoke-virtual/range {v16 .. v16}, Ln3/c0/y;->l()V

    return-object v2

    :catchall_0
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_1e

    :catchall_1
    move-exception v0

    goto :goto_1e

    :catchall_2
    move-exception v0

    move-object/from16 v16, v3

    .line 128
    :goto_1e
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 129
    invoke-virtual/range {v16 .. v16}, Ln3/c0/y;->l()V

    .line 130
    throw v0
.end method

.method public p(Ljava/util/Date;Ljava/util/List;ILjava/util/List;)Ljava/util/List;
    .locals 38
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/models/pdo/ParsedDataObject;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT * FROM parsed_data_object_table WHERE created_at > "

    .line 2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?"

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " and state NOT IN ("

    .line 4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    .line 6
    invoke-static {v0, v3}, Ln3/c0/h0/d;->a(Ljava/lang/StringBuilder;I)V

    const-string v4, ") and d NOT IN ("

    .line 7
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v4

    .line 9
    invoke-static {v0, v4}, Ln3/c0/h0/d;->a(Ljava/lang/StringBuilder;I)V

    const-string v5, ") ORDER BY created_at LIMIT "

    .line 10
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    add-int/2addr v3, v2

    add-int/2addr v4, v3

    .line 13
    invoke-static {v0, v4}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v5

    .line 14
    iget-object v0, v1, Le/a/c/c/d/e0;->c:Le/a/c/c0/g;

    move-object/from16 v6, p1

    invoke-virtual {v0, v6}, Le/a/c/c0/g;->a(Ljava/util/Date;)Ljava/lang/Long;

    move-result-object v0

    const/4 v6, 0x1

    if-nez v0, :cond_0

    .line 15
    invoke-virtual {v5, v6}, Ln3/c0/y;->y0(I)V

    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v5, v6, v7, v8}, Ln3/c0/y;->l0(IJ)V

    .line 17
    :goto_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-nez v7, :cond_1

    .line 18
    invoke-virtual {v5, v2}, Ln3/c0/y;->y0(I)V

    goto :goto_2

    .line 19
    :cond_1
    invoke-virtual {v5, v2, v7}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 20
    :cond_2
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_3

    .line 21
    invoke-virtual {v5, v3}, Ln3/c0/y;->y0(I)V

    goto :goto_4

    .line 22
    :cond_3
    invoke-virtual {v5, v3, v2}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    move/from16 v2, p3

    int-to-long v2, v2

    .line 23
    invoke-virtual {v5, v4, v2, v3}, Ln3/c0/y;->l0(IJ)V

    .line 24
    iget-object v0, v1, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 25
    iget-object v0, v1, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v5, v2, v3}, Ln3/c0/h0/b;->b(Ln3/c0/q;Ln3/e0/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v4

    :try_start_0
    const-string v0, "messageID"

    .line 26
    invoke-static {v4, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v7, "d"

    .line 27
    invoke-static {v4, v7}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "k"

    .line 28
    invoke-static {v4, v8}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "p"

    .line 29
    invoke-static {v4, v9}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "c"

    .line 30
    invoke-static {v4, v10}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "o"

    .line 31
    invoke-static {v4, v11}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "f"

    .line 32
    invoke-static {v4, v12}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "g"

    .line 33
    invoke-static {v4, v13}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "s"

    .line 34
    invoke-static {v4, v14}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "account_model_id"

    .line 35
    invoke-static {v4, v15}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v2, "val1"

    .line 36
    invoke-static {v4, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v3, "val2"

    .line 37
    invoke-static {v4, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v6, "val3"

    .line 38
    invoke-static {v4, v6}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object/from16 v16, v5

    :try_start_1
    const-string v5, "val4"

    .line 39
    invoke-static {v4, v5}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    const-string v1, "val5"

    .line 40
    invoke-static {v4, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 p3, v1

    const-string v1, "datetime"

    .line 41
    invoke-static {v4, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 p4, v1

    const-string v1, "address"

    .line 42
    invoke-static {v4, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v17, v1

    const-string v1, "date"

    .line 43
    invoke-static {v4, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v18, v1

    const-string v1, "msg_date"

    .line 44
    invoke-static {v4, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v19, v1

    const-string v1, "dff_val1"

    .line 45
    invoke-static {v4, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v20, v1

    const-string v1, "dff_val2"

    .line 46
    invoke-static {v4, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v21, v1

    const-string v1, "dff_val3"

    .line 47
    invoke-static {v4, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v22, v1

    const-string v1, "dff_val4"

    .line 48
    invoke-static {v4, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v23, v1

    const-string v1, "dff_val5"

    .line 49
    invoke-static {v4, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v24, v1

    const-string v1, "active"

    .line 50
    invoke-static {v4, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v25, v1

    const-string v1, "state"

    .line 51
    invoke-static {v4, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v26, v1

    const-string v1, "synthetic_record_id"

    .line 52
    invoke-static {v4, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v27, v1

    const-string v1, "deleted"

    .line 53
    invoke-static {v4, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v28, v1

    const-string v1, "created_at"

    .line 54
    invoke-static {v4, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v29, v1

    const-string v1, "spam_category"

    .line 55
    invoke-static {v4, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v30, v1

    .line 56
    new-instance v1, Ljava/util/ArrayList;

    move/from16 v31, v5

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 57
    :goto_5
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_21

    .line 58
    new-instance v5, Lcom/truecaller/insights/models/pdo/ParsedDataObject;

    invoke-direct {v5}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;-><init>()V

    move-object/from16 v33, v1

    move/from16 v32, v2

    .line 59
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 60
    invoke-virtual {v5, v1, v2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setMessageID(J)V

    .line 61
    invoke-interface {v4, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    goto :goto_6

    .line 62
    :cond_5
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 63
    :goto_6
    invoke-virtual {v5, v1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setD(Ljava/lang/String;)V

    .line 64
    invoke-interface {v4, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    goto :goto_7

    .line 65
    :cond_6
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 66
    :goto_7
    invoke-virtual {v5, v1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setK(Ljava/lang/String;)V

    .line 67
    invoke-interface {v4, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x0

    goto :goto_8

    .line 68
    :cond_7
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 69
    :goto_8
    invoke-virtual {v5, v1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setP(Ljava/lang/String;)V

    .line 70
    invoke-interface {v4, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x0

    goto :goto_9

    .line 71
    :cond_8
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 72
    :goto_9
    invoke-virtual {v5, v1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setC(Ljava/lang/String;)V

    .line 73
    invoke-interface {v4, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x0

    goto :goto_a

    .line 74
    :cond_9
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 75
    :goto_a
    invoke-virtual {v5, v1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setO(Ljava/lang/String;)V

    .line 76
    invoke-interface {v4, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x0

    goto :goto_b

    .line 77
    :cond_a
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 78
    :goto_b
    invoke-virtual {v5, v1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setF(Ljava/lang/String;)V

    .line 79
    invoke-interface {v4, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x0

    goto :goto_c

    .line 80
    :cond_b
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 81
    :goto_c
    invoke-virtual {v5, v1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setG(Ljava/lang/String;)V

    .line 82
    invoke-interface {v4, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x0

    goto :goto_d

    .line 83
    :cond_c
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 84
    :goto_d
    invoke-virtual {v5, v1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setS(Ljava/lang/String;)V

    .line 85
    invoke-interface {v4, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v1, 0x0

    goto :goto_e

    .line 86
    :cond_d
    invoke-interface {v4, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 87
    :goto_e
    invoke-virtual {v5, v1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setAccountModelId(Ljava/lang/Long;)V

    move/from16 v1, v32

    .line 88
    invoke-interface {v4, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_e

    const/4 v2, 0x0

    goto :goto_f

    .line 89
    :cond_e
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 90
    :goto_f
    invoke-virtual {v5, v2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setVal1(Ljava/lang/String;)V

    .line 91
    invoke-interface {v4, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v2, 0x0

    goto :goto_10

    .line 92
    :cond_f
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 93
    :goto_10
    invoke-virtual {v5, v2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setVal2(Ljava/lang/String;)V

    .line 94
    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v2, 0x0

    goto :goto_11

    .line 95
    :cond_10
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 96
    :goto_11
    invoke-virtual {v5, v2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setVal3(Ljava/lang/String;)V

    move/from16 v2, v31

    .line 97
    invoke-interface {v4, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v31

    if-eqz v31, :cond_11

    move/from16 v32, v0

    const/4 v0, 0x0

    goto :goto_12

    .line 98
    :cond_11
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    move/from16 v32, v0

    move-object/from16 v0, v31

    .line 99
    :goto_12
    invoke-virtual {v5, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setVal4(Ljava/lang/String;)V

    move/from16 v0, p3

    .line 100
    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v31

    if-eqz v31, :cond_12

    move/from16 p3, v0

    const/4 v0, 0x0

    goto :goto_13

    .line 101
    :cond_12
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    move/from16 p3, v0

    move-object/from16 v0, v31

    .line 102
    :goto_13
    invoke-virtual {v5, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setVal5(Ljava/lang/String;)V

    move/from16 v0, p4

    .line 103
    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v31

    if-eqz v31, :cond_13

    move/from16 p4, v0

    const/4 v0, 0x0

    goto :goto_14

    .line 104
    :cond_13
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    move/from16 p4, v0

    move-object/from16 v0, v31

    .line 105
    :goto_14
    invoke-virtual {v5, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDatetime(Ljava/lang/String;)V

    move/from16 v0, v17

    .line 106
    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_14

    move/from16 v31, v0

    const/4 v0, 0x0

    goto :goto_15

    .line 107
    :cond_14
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move/from16 v31, v0

    move-object/from16 v0, v17

    .line 108
    :goto_15
    invoke-virtual {v5, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setAddress(Ljava/lang/String;)V

    move/from16 v0, v18

    .line 109
    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_15

    move/from16 v18, v0

    const/4 v0, 0x0

    goto :goto_16

    .line 110
    :cond_15
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move/from16 v18, v0

    move-object/from16 v0, v17

    .line 111
    :goto_16
    invoke-virtual {v5, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDate(Ljava/lang/String;)V

    move/from16 v0, v19

    .line 112
    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_16

    move/from16 v19, v0

    const/4 v0, 0x0

    goto :goto_17

    .line 113
    :cond_16
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v34

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move/from16 v19, v0

    move-object/from16 v0, v17

    :goto_17
    move/from16 v17, v1

    move/from16 v34, v2

    move-object/from16 v1, p0

    .line 114
    :try_start_3
    iget-object v2, v1, Le/a/c/c/d/e0;->c:Le/a/c/c0/g;

    invoke-virtual {v2, v0}, Le/a/c/c0/g;->c(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object v0

    .line 115
    invoke-virtual {v5, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setMsgDate(Ljava/util/Date;)V

    move/from16 v0, v20

    .line 116
    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_17

    const/4 v2, 0x0

    goto :goto_18

    .line 117
    :cond_17
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 118
    :goto_18
    invoke-virtual {v5, v2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDffVal1(Ljava/lang/String;)V

    move/from16 v2, v21

    .line 119
    invoke-interface {v4, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v20

    if-eqz v20, :cond_18

    move/from16 v21, v0

    const/4 v0, 0x0

    goto :goto_19

    .line 120
    :cond_18
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    move/from16 v21, v0

    move-object/from16 v0, v20

    .line 121
    :goto_19
    invoke-virtual {v5, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDffVal2(Ljava/lang/String;)V

    move/from16 v0, v22

    .line 122
    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v20

    if-eqz v20, :cond_19

    move/from16 v22, v0

    const/4 v0, 0x0

    goto :goto_1a

    .line 123
    :cond_19
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    move/from16 v22, v0

    move-object/from16 v0, v20

    .line 124
    :goto_1a
    invoke-virtual {v5, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDffVal3(Ljava/lang/String;)V

    move/from16 v0, v23

    .line 125
    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v20

    if-eqz v20, :cond_1a

    move/from16 v23, v0

    const/4 v0, 0x0

    goto :goto_1b

    .line 126
    :cond_1a
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    move/from16 v23, v0

    move-object/from16 v0, v20

    .line 127
    :goto_1b
    invoke-virtual {v5, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDffVal4(Ljava/lang/String;)V

    move/from16 v0, v24

    .line 128
    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v20

    if-eqz v20, :cond_1b

    move/from16 v24, v0

    const/4 v0, 0x0

    goto :goto_1c

    .line 129
    :cond_1b
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    move/from16 v24, v0

    move-object/from16 v0, v20

    .line 130
    :goto_1c
    invoke-virtual {v5, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDffVal5(Ljava/lang/String;)V

    move/from16 v0, v25

    .line 131
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    move/from16 v25, v0

    if-eqz v20, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    .line 132
    :goto_1d
    invoke-virtual {v5, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setActive(Z)V

    move/from16 v0, v26

    .line 133
    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v20

    if-eqz v20, :cond_1d

    move/from16 v26, v0

    const/4 v0, 0x0

    goto :goto_1e

    .line 134
    :cond_1d
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    move/from16 v26, v0

    move-object/from16 v0, v20

    .line 135
    :goto_1e
    invoke-virtual {v5, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setState(Ljava/lang/String;)V

    move/from16 v0, v27

    .line 136
    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v20

    if-eqz v20, :cond_1e

    move/from16 v27, v0

    const/4 v0, 0x0

    goto :goto_1f

    .line 137
    :cond_1e
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v35

    invoke-static/range {v35 .. v36}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move/from16 v27, v0

    move-object/from16 v0, v20

    .line 138
    :goto_1f
    invoke-virtual {v5, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setSyntheticRecordId(Ljava/lang/Long;)V

    move/from16 v0, v28

    .line 139
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    move/from16 v28, v0

    if-eqz v20, :cond_1f

    const/4 v0, 0x1

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    .line 140
    :goto_20
    invoke-virtual {v5, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setDeleted(Z)V

    move/from16 v0, v29

    .line 141
    invoke-interface {v4, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v20

    if-eqz v20, :cond_20

    move/from16 v29, v0

    move/from16 v20, v2

    const/4 v0, 0x0

    goto :goto_21

    .line 142
    :cond_20
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v35

    invoke-static/range {v35 .. v36}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move/from16 v29, v0

    move-object/from16 v0, v20

    move/from16 v20, v2

    .line 143
    :goto_21
    iget-object v2, v1, Le/a/c/c/d/e0;->c:Le/a/c/c0/g;

    invoke-virtual {v2, v0}, Le/a/c/c0/g;->c(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object v0

    .line 144
    invoke-virtual {v5, v0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setCreatedAt(Ljava/util/Date;)V

    move/from16 v0, v30

    .line 145
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 146
    invoke-virtual {v5, v2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->setSpamCategory(I)V

    move-object/from16 v2, v33

    .line 147
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move/from16 v30, v0

    move-object v1, v2

    move/from16 v2, v17

    move/from16 v17, v31

    move/from16 v0, v32

    move/from16 v31, v34

    move/from16 v37, v21

    move/from16 v21, v20

    move/from16 v20, v37

    goto/16 :goto_5

    :cond_21
    move-object v2, v1

    move-object/from16 v1, p0

    .line 148
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 149
    invoke-virtual/range {v16 .. v16}, Ln3/c0/y;->l()V

    return-object v2

    :catchall_0
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_22

    :catchall_1
    move-exception v0

    goto :goto_22

    :catchall_2
    move-exception v0

    move-object/from16 v16, v5

    .line 150
    :goto_22
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 151
    invoke-virtual/range {v16 .. v16}, Ln3/c0/y;->l()V

    .line 152
    throw v0
.end method

.method public q(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT synthetic_record_id FROM parsed_data_object_table WHERE messageID IN ("

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 4
    invoke-static {v0, v1}, Ln3/c0/h0/d;->a(Ljava/lang/StringBuilder;I)V

    const-string v2, ")"

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    add-int/2addr v1, v2

    .line 7
    invoke-static {v0, v1}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    .line 8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    if-nez v3, :cond_0

    .line 9
    invoke-virtual {v0, v1}, Ln3/c0/y;->y0(I)V

    goto :goto_1

    .line 10
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v1, v3, v4}, Ln3/c0/y;->l0(IJ)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11
    :cond_1
    iget-object p1, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 12
    iget-object p1, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    const/4 v1, 0x0

    invoke-static {p1, v0, v2, v1}, Ln3/c0/h0/b;->b(Ln3/c0/q;Ln3/e0/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    .line 13
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 14
    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 15
    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v1

    goto :goto_3

    .line 16
    :cond_2
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 17
    :goto_3
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 18
    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 19
    invoke-virtual {v0}, Ln3/c0/y;->l()V

    return-object v3

    :catchall_0
    move-exception v1

    .line 20
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 21
    invoke-virtual {v0}, Ln3/c0/y;->l()V

    .line 22
    throw v1
.end method

.method public r(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT synthetic_record_id FROM parsed_data_object_table WHERE messageID IN ("

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 4
    invoke-static {v0, v1}, Ln3/c0/h0/d;->a(Ljava/lang/StringBuilder;I)V

    const-string v2, ")"

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    add-int/2addr v1, v2

    .line 7
    invoke-static {v0, v1}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    .line 8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    if-nez v3, :cond_0

    .line 9
    invoke-virtual {v0, v1}, Ln3/c0/y;->y0(I)V

    goto :goto_1

    .line 10
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v1, v3, v4}, Ln3/c0/y;->l0(IJ)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11
    :cond_1
    iget-object p1, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 12
    iget-object p1, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    const/4 v1, 0x0

    invoke-static {p1, v0, v2, v1}, Ln3/c0/h0/b;->b(Ln3/c0/q;Ln3/e0/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    .line 13
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 14
    :goto_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 15
    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v1

    goto :goto_3

    .line 16
    :cond_2
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 17
    :goto_3
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 18
    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 19
    invoke-virtual {v0}, Ln3/c0/y;->l()V

    return-object v3

    :catchall_0
    move-exception v1

    .line 20
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 21
    invoke-virtual {v0}, Ln3/c0/y;->l()V

    .line 22
    throw v1
.end method

.method public s(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "+",
            "Lcom/truecaller/insights/models/pdo/ParsedDataObject;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "\n        SELECT * \n        FROM parsed_data_object_table \n        WHERE\n        d = \'Bank\' AND\n        datetime(msg_date/1000,\'unixepoch\',\'localtime\') > datetime(?) AND\n        active = 1\n    "

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    .line 2
    invoke-virtual {v0, v1, p1}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    .line 3
    new-instance p1, Landroid/os/CancellationSignal;

    invoke-direct {p1}, Landroid/os/CancellationSignal;-><init>()V

    .line 4
    iget-object v1, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    const/4 v2, 0x0

    new-instance v3, Le/a/c/c/d/e0$w;

    invoke-direct {v3, p0, v0}, Le/a/c/c/d/e0$w;-><init>(Le/a/c/c/d/e0;Ln3/c0/y;)V

    invoke-static {v1, v2, p1, v3, p2}, Ln3/c0/g;->b(Ln3/c0/q;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public t(Ljava/util/Date;Ljava/util/List;Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT count(*) FROM parsed_data_object_table WHERE messageID >= -1 and created_at > "

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " and d NOT IN ("

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    .line 6
    invoke-static {v0, v1}, Ln3/c0/h0/d;->a(Ljava/lang/StringBuilder;I)V

    const-string v2, ") and state NOT IN ("

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    .line 9
    invoke-static {v0, v2}, Ln3/c0/h0/d;->a(Ljava/lang/StringBuilder;I)V

    const-string v3, ") ORDER BY created_at"

    .line 10
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v3, v1, 0x1

    add-int/2addr v3, v2

    .line 12
    invoke-static {v0, v3}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    .line 13
    iget-object v2, p0, Le/a/c/c/d/e0;->c:Le/a/c/c0/g;

    invoke-virtual {v2, p1}, Le/a/c/c0/g;->a(Ljava/util/Date;)Ljava/lang/Long;

    move-result-object p1

    const/4 v2, 0x1

    if-nez p1, :cond_0

    .line 14
    invoke-virtual {v0, v2}, Ln3/c0/y;->y0(I)V

    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Ln3/c0/y;->l0(IJ)V

    .line 16
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p3, 0x2

    move v2, p3

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_1

    .line 17
    invoke-virtual {v0, v2}, Ln3/c0/y;->y0(I)V

    goto :goto_2

    .line 18
    :cond_1
    invoke-virtual {v0, v2, v3}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    add-int/2addr v1, p3

    .line 19
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-nez p2, :cond_3

    .line 20
    invoke-virtual {v0, v1}, Ln3/c0/y;->y0(I)V

    goto :goto_4

    .line 21
    :cond_3
    invoke-virtual {v0, v1, p2}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 22
    :cond_4
    iget-object p1, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 23
    iget-object p1, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    const/4 p2, 0x0

    const/4 p3, 0x0

    invoke-static {p1, v0, p3, p2}, Ln3/c0/h0/b;->b(Ln3/c0/q;Ln3/e0/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    .line 24
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 25
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    :cond_5
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 27
    invoke-virtual {v0}, Ln3/c0/y;->l()V

    return p3

    :catchall_0
    move-exception p2

    .line 28
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 29
    invoke-virtual {v0}, Ln3/c0/y;->l()V

    .line 30
    throw p2
.end method

.method public u(Ljava/util/Date;Ljava/util/List;Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT count(*) FROM parsed_data_object_table WHERE created_at > "

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " and state NOT IN ("

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    .line 6
    invoke-static {v0, v1}, Ln3/c0/h0/d;->a(Ljava/lang/StringBuilder;I)V

    const-string v2, ") and d NOT IN ("

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    .line 9
    invoke-static {v0, v2}, Ln3/c0/h0/d;->a(Ljava/lang/StringBuilder;I)V

    const-string v3, ") ORDER BY created_at"

    .line 10
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v3, v1, 0x1

    add-int/2addr v3, v2

    .line 12
    invoke-static {v0, v3}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    .line 13
    iget-object v2, p0, Le/a/c/c/d/e0;->c:Le/a/c/c0/g;

    invoke-virtual {v2, p1}, Le/a/c/c0/g;->a(Ljava/util/Date;)Ljava/lang/Long;

    move-result-object p1

    const/4 v2, 0x1

    if-nez p1, :cond_0

    .line 14
    invoke-virtual {v0, v2}, Ln3/c0/y;->y0(I)V

    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Ln3/c0/y;->l0(IJ)V

    .line 16
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x2

    move v2, p2

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_1

    .line 17
    invoke-virtual {v0, v2}, Ln3/c0/y;->y0(I)V

    goto :goto_2

    .line 18
    :cond_1
    invoke-virtual {v0, v2, v3}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    add-int/2addr v1, p2

    .line 19
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-nez p2, :cond_3

    .line 20
    invoke-virtual {v0, v1}, Ln3/c0/y;->y0(I)V

    goto :goto_4

    .line 21
    :cond_3
    invoke-virtual {v0, v1, p2}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 22
    :cond_4
    iget-object p1, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {p1}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 23
    iget-object p1, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    const/4 p2, 0x0

    const/4 p3, 0x0

    invoke-static {p1, v0, p3, p2}, Ln3/c0/h0/b;->b(Ln3/c0/q;Ln3/e0/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    .line 24
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 25
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    :cond_5
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 27
    invoke-virtual {v0}, Ln3/c0/y;->l()V

    return p3

    :catchall_0
    move-exception p2

    .line 28
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 29
    invoke-virtual {v0}, Ln3/c0/y;->l()V

    .line 30
    throw p2
.end method

.method public v(Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/util/Date;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "\n        SELECT msg_date \n        FROM parsed_data_object_table \n        WHERE d = \'Bank\' AND \n        active = 1 \n        ORDER BY msg_date DESC LIMIT 1\n    "

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    .line 2
    new-instance v2, Landroid/os/CancellationSignal;

    invoke-direct {v2}, Landroid/os/CancellationSignal;-><init>()V

    .line 3
    iget-object v3, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    new-instance v4, Le/a/c/c/d/e0$v;

    invoke-direct {v4, p0, v0}, Le/a/c/c/d/e0$v;-><init>(Le/a/c/c/d/e0;Ln3/c0/y;)V

    invoke-static {v3, v1, v2, v4, p1}, Ln3/c0/g;->b(Ln3/c0/q;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public w(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ljava/util/Date;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "\n"

    const-string v1, "            SELECT msg_date FROM parsed_data_object_table"

    const-string v2, "            WHERE "

    .line 1
    invoke-static {v0, v1, v0, v2, v0}, Le/d/c/a/a;->M(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "                d in ("

    .line 2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 4
    invoke-static {v1, v2}, Ln3/c0/h0/d;->a(Ljava/lang/StringBuilder;I)V

    const-string v3, ") AND"

    .line 5
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "                state = \'ORIGINAL\'"

    const-string v4, "            ORDER BY msg_date DESC LIMIT 1"

    .line 7
    invoke-static {v1, v3, v0, v4, v0}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "        "

    .line 8
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    add-int/2addr v2, v1

    .line 10
    invoke-static {v0, v2}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    .line 11
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_0

    .line 12
    invoke-virtual {v0, v2}, Ln3/c0/y;->y0(I)V

    goto :goto_1

    .line 13
    :cond_0
    invoke-virtual {v0, v2, v3}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 14
    :cond_1
    new-instance p1, Landroid/os/CancellationSignal;

    invoke-direct {p1}, Landroid/os/CancellationSignal;-><init>()V

    .line 15
    iget-object v2, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    new-instance v3, Le/a/c/c/d/e0$e0;

    invoke-direct {v3, p0, v0}, Le/a/c/c/d/e0$e0;-><init>(Le/a/c/c/d/e0;Ln3/c0/y;)V

    invoke-static {v2, v1, p1, v3, p2}, Ln3/c0/g;->b(Ln3/c0/q;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public x(JJLjava/lang/String;)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/models/enrichment/linking/LinkPruneMap;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "SELECT * FROM link_prune_table WHERE parent_id=? and child_id=? and link_type=?"

    const/4 v2, 0x3

    .line 1
    invoke-static {v0, v2}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v3

    const/4 v0, 0x1

    move-wide/from16 v4, p1

    .line 2
    invoke-virtual {v3, v0, v4, v5}, Ln3/c0/y;->l0(IJ)V

    const/4 v0, 0x2

    move-wide/from16 v4, p3

    .line 3
    invoke-virtual {v3, v0, v4, v5}, Ln3/c0/y;->l0(IJ)V

    move-object/from16 v0, p5

    .line 4
    invoke-virtual {v3, v2, v0}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    .line 5
    iget-object v0, v1, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->assertNotSuspendingTransaction()V

    .line 6
    iget-object v0, v1, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v2, v4}, Ln3/c0/h0/b;->b(Ln3/c0/q;Ln3/e0/a/e;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string v0, "parent_id"

    .line 7
    invoke-static {v2, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v5, "child_id"

    .line 8
    invoke-static {v2, v5}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "link_type"

    .line 9
    invoke-static {v2, v6}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "created_at"

    .line 10
    invoke-static {v2, v7}, Landroid/support/v4/media/session/MediaSessionCompat;->g0(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    .line 11
    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 13
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 14
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 15
    invoke-interface {v2, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_0

    move-object v15, v4

    goto :goto_1

    .line 16
    :cond_0
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object v15, v9

    .line 17
    :goto_1
    invoke-interface {v2, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_1

    move-object v9, v4

    goto :goto_2

    .line 18
    :cond_1
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 19
    :goto_2
    iget-object v10, v1, Le/a/c/c/d/e0;->c:Le/a/c/c0/g;

    invoke-virtual {v10, v9}, Le/a/c/c0/g;->c(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object v16

    .line 20
    new-instance v9, Lcom/truecaller/insights/models/enrichment/linking/LinkPruneMap;

    move-object v10, v9

    invoke-direct/range {v10 .. v16}, Lcom/truecaller/insights/models/enrichment/linking/LinkPruneMap;-><init>(JJLjava/lang/String;Ljava/util/Date;)V

    .line 21
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 22
    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 23
    invoke-virtual {v3}, Ln3/c0/y;->l()V

    return-object v8

    :catchall_0
    move-exception v0

    .line 24
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 25
    invoke-virtual {v3}, Ln3/c0/y;->l()V

    .line 26
    throw v0
.end method

.method public y(Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/util/Date;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "\n        SELECT msg_date \n        FROM parsed_data_object_table \n        WHERE d = \'Bank\' AND \n        active = 1 \n        ORDER BY msg_date LIMIT 1\n    "

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    .line 2
    new-instance v2, Landroid/os/CancellationSignal;

    invoke-direct {v2}, Landroid/os/CancellationSignal;-><init>()V

    .line 3
    iget-object v3, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    new-instance v4, Le/a/c/c/d/e0$u;

    invoke-direct {v4, p0, v0}, Le/a/c/c/d/e0$u;-><init>(Le/a/c/c/d/e0;Ln3/c0/y;)V

    invoke-static {v3, v1, v2, v4, p1}, Ln3/c0/g;->b(Ln3/c0/q;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public z(Ljava/util/Date;Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "\n        SELECT val1 FROM parsed_data_object_table\n        WHERE d = \"OTP\"\n        AND msg_date > ?\n        AND messageID >= -1\n    "

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    .line 2
    iget-object v2, p0, Le/a/c/c/d/e0;->c:Le/a/c/c0/g;

    invoke-virtual {v2, p1}, Le/a/c/c0/g;->a(Ljava/util/Date;)Ljava/lang/Long;

    move-result-object p1

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Ln3/c0/y;->y0(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Ln3/c0/y;->l0(IJ)V

    .line 5
    :goto_0
    new-instance p1, Landroid/os/CancellationSignal;

    invoke-direct {p1}, Landroid/os/CancellationSignal;-><init>()V

    .line 6
    iget-object v1, p0, Le/a/c/c/d/e0;->a:Ln3/c0/q;

    const/4 v2, 0x0

    new-instance v3, Le/a/c/c/d/e0$a0;

    invoke-direct {v3, p0, v0}, Le/a/c/c/d/e0$a0;-><init>(Le/a/c/c/d/e0;Ln3/c0/y;)V

    invoke-static {v1, v2, p1, v3, p2}, Ln3/c0/g;->b(Ln3/c0/q;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
