.class public final Le/a/m0/b1/n/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/m0/b1/k;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 16

    move-object/from16 v0, p1

    const-string v1, "db"

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "ALTER TABLE msg_messages ADD COLUMN raw_id TEXT"

    .line 1
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2
    new-instance v1, Ls1/d0/i;

    const/4 v2, 0x1

    const/16 v3, 0x1b

    invoke-direct {v1, v2, v3}, Ls1/d0/i;-><init>(II)V

    .line 3
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v1

    check-cast v3, Ls1/u/z;

    invoke-virtual {v3}, Ls1/u/z;->a()I

    move-result v3

    .line 4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ALTER TABLE msg_messages ADD COLUMN info"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " TEXT"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x1c

    new-array v1, v1, [Ls1/k;

    .line 5
    new-instance v3, Ls1/k;

    const-string v4, "raw_id"

    invoke-direct {v3, v4, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v5, 0x0

    aput-object v3, v1, v5

    .line 6
    new-instance v3, Ls1/k;

    const-string v6, "raw_thread_id"

    const-string v7, "info1"

    invoke-direct {v3, v6, v7}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v1, v2

    .line 7
    new-instance v3, Ls1/k;

    const-string v6, "raw_status"

    const-string v8, "info2"

    invoke-direct {v3, v6, v8}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v6, 0x2

    aput-object v3, v1, v6

    .line 8
    new-instance v3, Ls1/k;

    const-string v9, "message_uri"

    const-string v10, "info3"

    invoke-direct {v3, v9, v10}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v9, 0x3

    aput-object v3, v1, v9

    .line 9
    new-instance v3, Ls1/k;

    const-string v11, "version"

    const-string v12, "info4"

    invoke-direct {v3, v11, v12}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v11, 0x4

    aput-object v3, v1, v11

    .line 10
    new-instance v3, Ls1/k;

    const-string v13, "type"

    const-string v14, "info5"

    invoke-direct {v3, v13, v14}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v15, 0x5

    aput-object v3, v1, v15

    .line 11
    new-instance v3, Ls1/k;

    const-string v15, "subject"

    const-string v11, "info6"

    invoke-direct {v3, v15, v11}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v15, 0x6

    aput-object v3, v1, v15

    .line 12
    new-instance v3, Ls1/k;

    const-string v15, "subject_charset"

    const-string v9, "info7"

    invoke-direct {v3, v15, v9}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v15, 0x7

    aput-object v3, v1, v15

    .line 13
    new-instance v3, Ls1/k;

    const-string v15, "retrieve_text"

    const-string v6, "info8"

    invoke-direct {v3, v15, v6}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v15, 0x8

    aput-object v3, v1, v15

    .line 14
    new-instance v3, Ls1/k;

    const-string v15, "retrieve_text_charset"

    const-string v5, "info9"

    invoke-direct {v3, v15, v5}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v15, 0x9

    aput-object v3, v1, v15

    .line 15
    new-instance v3, Ls1/k;

    const-string v15, "content_type"

    const-string v2, "info10"

    invoke-direct {v3, v15, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0xa

    aput-object v3, v1, v2

    .line 16
    new-instance v15, Ls1/k;

    const-string v2, "content_class"

    const-string v3, "info11"

    invoke-direct {v15, v2, v3}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0xb

    aput-object v15, v1, v2

    .line 17
    new-instance v3, Ls1/k;

    const-string v15, "content_location"

    const-string v2, "info12"

    invoke-direct {v3, v15, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0xc

    aput-object v3, v1, v2

    .line 18
    new-instance v3, Ls1/k;

    const-string v15, "transaction_id"

    const-string v2, "info13"

    invoke-direct {v3, v15, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0xd

    aput-object v3, v1, v2

    .line 19
    new-instance v3, Ls1/k;

    const-string v15, "expiry"

    const-string v2, "info14"

    invoke-direct {v3, v15, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0xe

    aput-object v3, v1, v2

    .line 20
    new-instance v3, Ls1/k;

    const-string v15, "priority"

    const-string v2, "info15"

    invoke-direct {v3, v15, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0xf

    aput-object v3, v1, v2

    .line 21
    new-instance v3, Ls1/k;

    const-string v15, "retrieve_status"

    const-string v2, "info16"

    invoke-direct {v3, v15, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x10

    aput-object v3, v1, v2

    .line 22
    new-instance v3, Ls1/k;

    const-string v15, "response_status"

    const-string v2, "info17"

    invoke-direct {v3, v15, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x11

    aput-object v3, v1, v2

    .line 23
    new-instance v3, Ls1/k;

    const-string v15, "response_text"

    const-string v2, "info18"

    invoke-direct {v3, v15, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x12

    aput-object v3, v1, v2

    .line 24
    new-instance v3, Ls1/k;

    const-string v15, "message_class"

    const-string v2, "info19"

    invoke-direct {v3, v15, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x13

    aput-object v3, v1, v2

    .line 25
    new-instance v3, Ls1/k;

    const-string v15, "mms_message_id"

    const-string v2, "info20"

    invoke-direct {v3, v15, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x14

    aput-object v3, v1, v2

    .line 26
    new-instance v3, Ls1/k;

    const-string v15, "message_box"

    const-string v2, "info21"

    invoke-direct {v3, v15, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x15

    aput-object v3, v1, v2

    .line 27
    new-instance v3, Ls1/k;

    const-string v15, "size"

    const-string v2, "info22"

    invoke-direct {v3, v15, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x16

    aput-object v3, v1, v2

    .line 28
    new-instance v3, Ls1/k;

    const-string v15, "delivery_report"

    const-string v2, "info23"

    invoke-direct {v3, v15, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x17

    aput-object v3, v1, v2

    .line 29
    new-instance v3, Ls1/k;

    const-string v15, "delivery_time"

    const-string v2, "info24"

    invoke-direct {v3, v15, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x18

    aput-object v3, v1, v2

    .line 30
    new-instance v3, Ls1/k;

    const-string v15, "read_report"

    const-string v2, "info25"

    invoke-direct {v3, v15, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x19

    aput-object v3, v1, v2

    .line 31
    new-instance v3, Ls1/k;

    const-string v15, "read_status"

    const-string v2, "info26"

    invoke-direct {v3, v15, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x1a

    aput-object v3, v1, v2

    .line 32
    new-instance v3, Ls1/k;

    const-string v15, "report_allowed"

    const-string v2, "info27"

    invoke-direct {v3, v15, v2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x1b

    aput-object v3, v1, v2

    .line 33
    invoke-static {v1}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "msg_mms_transport_info"

    const/4 v3, 0x1

    .line 34
    invoke-static {v0, v2, v3, v1}, Le/a/m0/b1/n/v;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;ILjava/util/List;)V

    const/16 v1, 0xb

    new-array v1, v1, [Ls1/k;

    .line 35
    new-instance v2, Ls1/k;

    invoke-direct {v2, v4, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 36
    new-instance v2, Ls1/k;

    const-string v3, "raw_thread_id"

    invoke-direct {v2, v3, v7}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 37
    new-instance v2, Ls1/k;

    const-string v3, "raw_status"

    invoke-direct {v2, v3, v8}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 38
    new-instance v2, Ls1/k;

    const-string v3, "message_uri"

    invoke-direct {v2, v3, v10}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 39
    new-instance v2, Ls1/k;

    const-string v3, "protocol"

    invoke-direct {v2, v3, v12}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 40
    new-instance v2, Ls1/k;

    invoke-direct {v2, v13, v14}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 41
    new-instance v2, Ls1/k;

    const-string v3, "service_center"

    invoke-direct {v2, v3, v11}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x6

    aput-object v2, v1, v3

    .line 42
    new-instance v2, Ls1/k;

    const-string v3, "subject"

    invoke-direct {v2, v3, v9}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x7

    aput-object v2, v1, v3

    .line 43
    new-instance v2, Ls1/k;

    const-string v3, "error_code"

    invoke-direct {v2, v3, v6}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v3, 0x8

    aput-object v2, v1, v3

    .line 44
    new-instance v2, Ls1/k;

    const-string v3, "reply_path_present"

    invoke-direct {v2, v3, v5}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v3, 0x9

    aput-object v2, v1, v3

    .line 45
    new-instance v2, Ls1/k;

    const-string v3, "stripped_raw_address"

    const-string v15, "info10"

    invoke-direct {v2, v3, v15}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v3, 0xa

    aput-object v2, v1, v3

    .line 46
    invoke-static {v1}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "msg_sms_transport_info"

    const/4 v15, 0x0

    .line 47
    invoke-static {v0, v2, v15, v1}, Le/a/m0/b1/n/v;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;ILjava/util/List;)V

    new-array v1, v3, [Ls1/k;

    .line 48
    new-instance v2, Ls1/k;

    invoke-direct {v2, v4, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v15

    .line 49
    new-instance v2, Ls1/k;

    const-string v3, "delivery_status"

    invoke-direct {v2, v3, v7}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 50
    new-instance v2, Ls1/k;

    const-string v3, "read_status"

    invoke-direct {v2, v3, v8}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 51
    new-instance v2, Ls1/k;

    const-string v3, "delivery_sync_status"

    invoke-direct {v2, v3, v10}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 52
    new-instance v2, Ls1/k;

    const-string v3, "read_sync_status"

    invoke-direct {v2, v3, v12}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 53
    new-instance v2, Ls1/k;

    const-string v3, "im_status"

    invoke-direct {v2, v3, v14}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 54
    new-instance v2, Ls1/k;

    const-string v3, "error_code"

    invoke-direct {v2, v3, v11}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x6

    aput-object v2, v1, v3

    .line 55
    new-instance v2, Ls1/k;

    const-string v3, "api_version"

    invoke-direct {v2, v3, v9}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x7

    aput-object v2, v1, v3

    .line 56
    new-instance v2, Ls1/k;

    const-string v3, "random_id"

    invoke-direct {v2, v3, v6}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v3, 0x8

    aput-object v2, v1, v3

    .line 57
    new-instance v2, Ls1/k;

    const-string v3, "reactions"

    invoke-direct {v2, v3, v5}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v3, 0x9

    aput-object v2, v1, v3

    .line 58
    invoke-static {v1}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "msg_im_transport_info"

    const/4 v3, 0x2

    .line 59
    invoke-static {v0, v2, v3, v1}, Le/a/m0/b1/n/v;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;ILjava/util/List;)V

    const/4 v1, 0x5

    new-array v2, v1, [Ls1/k;

    .line 60
    new-instance v1, Ls1/k;

    invoke-direct {v1, v4, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x0

    aput-object v1, v2, v3

    .line 61
    new-instance v1, Ls1/k;

    const-string v3, "call_log_id"

    invoke-direct {v1, v3, v7}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x1

    aput-object v1, v2, v3

    .line 62
    new-instance v1, Ls1/k;

    invoke-direct {v1, v13, v8}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x2

    aput-object v1, v2, v3

    .line 63
    new-instance v1, Ls1/k;

    const-string v3, "number_type"

    invoke-direct {v1, v3, v10}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x3

    aput-object v1, v2, v3

    .line 64
    new-instance v1, Ls1/k;

    const-string v3, "features"

    invoke-direct {v1, v3, v12}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x4

    aput-object v1, v2, v3

    .line 65
    invoke-static {v2}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "msg_history_transport_info"

    const/4 v3, 0x5

    .line 66
    invoke-static {v0, v2, v3, v1}, Le/a/m0/b1/n/v;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;ILjava/util/List;)V

    .line 67
    new-instance v1, Ls1/k;

    invoke-direct {v1, v4, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 68
    invoke-static {v1}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "msg_status_transport_info"

    const/4 v3, 0x6

    .line 69
    invoke-static {v0, v2, v3, v1}, Le/a/m0/b1/n/v;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;ILjava/util/List;)V

    const-string v1, "CREATE INDEX idx_msg_messages_transport_raw_id ON msg_messages (transport, raw_id)"

    .line 70
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
