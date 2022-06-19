.class public Le/a/a/k/a0/f;
.super Le/a/a/k/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/a/k/g<",
        "Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;",
        "Le/a/a/k/g$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:[Ljava/lang/String;

.field public static final e:[Ljava/lang/String;

.field public static volatile f:I = -0x1

.field public static volatile g:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    const-string v0, "_id"

    const-string v1, "address"

    const-string v2, "body"

    const-string v3, "date"

    const-string v4, "error_code"

    const-string v5, "locked"

    const-string v6, "person"

    const-string v7, "protocol"

    const-string v8, "read"

    const-string v9, "reply_path_present"

    const-string v10, "seen"

    const-string v11, "service_center"

    const-string v12, "status"

    const-string v13, "subject"

    const-string v14, "thread_id"

    const-string v15, "type"

    .line 1
    filled-new-array/range {v0 .. v15}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Le/a/a/k/a0/f;->d:[Ljava/lang/String;

    const-string v0, "date_sent"

    .line 2
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Le/a/a/k/a0/f;->e:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Le/a/e4/p;Le/a/u3/g;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Le/a/a/k/g;-><init>(Landroid/content/Context;Le/a/e4/p;Le/a/u3/g;)V

    return-void
.end method


# virtual methods
.method public c(JLe/a/a/k/j;Le/a/a/k/m;Lcom/truecaller/data/entity/messaging/Participant;Z)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Le/a/a/k/j;",
            "Le/a/a/k/m;",
            "Lcom/truecaller/data/entity/messaging/Participant;",
            "Z)",
            "Ljava/util/Set<",
            "Lcom/truecaller/data/entity/messaging/Participant;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2
    invoke-virtual {v0, p5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-interface {p3, p1, p2}, Le/a/a/k/j;->a(J)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p6, :cond_0

    .line 4
    invoke-static {p2}, Le/a/b0/q/c0;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p4, p3}, Le/a/a/k/m;->a(Ljava/lang/String;)Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object p3

    .line 5
    invoke-virtual {p3}, Lcom/truecaller/data/entity/messaging/Participant;->e()Lcom/truecaller/data/entity/messaging/Participant$b;

    move-result-object p3

    .line 6
    iput-object p2, p3, Lcom/truecaller/data/entity/messaging/Participant$b;->d:Ljava/lang/String;

    .line 7
    invoke-virtual {p3}, Lcom/truecaller/data/entity/messaging/Participant$b;->a()Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object p2

    .line 8
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_0
    invoke-interface {p4, p2}, Le/a/a/k/m;->a(Ljava/lang/String;)Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public d(Landroid/content/ContentResolver;Le/a/a/k/j;Le/a/a/k/m;Lw3/b/a/b;Lw3/b/a/b;Z)Le/a/a/k/g$a;
    .locals 14

    move-object v1, p0

    const/4 v0, 0x2

    new-array v6, v0, [Ljava/lang/String;

    move-object/from16 v0, p4

    .line 1
    iget-wide v2, v0, Lw3/b/a/e0/e;->a:J

    .line 2
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v6, v2

    const/4 v0, 0x1

    move-object/from16 v2, p5

    .line 3
    iget-wide v2, v2, Lw3/b/a/e0/e;->a:J

    .line 4
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v0

    .line 5
    sget-object v3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    .line 6
    sget-object v0, Le/a/a/k/a0/f;->g:[Ljava/lang/String;

    if-nez v0, :cond_3

    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    sget-object v0, Le/a/a/k/a0/f;->g:[Ljava/lang/String;

    if-nez v0, :cond_2

    .line 9
    sget-object v0, Le/a/a/k/a0/f;->d:[Ljava/lang/String;

    .line 10
    invoke-virtual {p0, p1}, Le/a/a/k/a0/f;->m(Landroid/content/ContentResolver;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "date_sent"

    .line 11
    invoke-static {v0, v2}, Lw3/c/a/a/a/a;->a([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 12
    :cond_0
    iget-object v2, v1, Le/a/a/k/g;->b:Le/a/e4/p;

    invoke-interface {v2}, Le/a/e4/p;->g()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 13
    invoke-static {v0, v2}, Lw3/c/a/a/a/a;->a([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 14
    :cond_1
    sput-object v0, Le/a/a/k/a0/f;->g:[Ljava/lang/String;

    .line 15
    :cond_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :goto_0
    move-object v4, v0

    const-string v5, "date>=? AND date<=? AND type != 3"

    const-string v7, "date DESC, _id DESC"

    move-object v2, p1

    .line 16
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    if-nez v12, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 17
    :cond_4
    new-instance v0, Le/a/a/k/a0/d;

    iget-object v11, v1, Le/a/a/k/g;->b:Le/a/e4/p;

    move-object v8, v0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v13, p6

    invoke-direct/range {v8 .. v13}, Le/a/a/k/a0/d;-><init>(Le/a/a/k/j;Le/a/a/k/m;Le/a/e4/p;Landroid/database/Cursor;Z)V

    return-object v0
.end method

.method public f(Le/a/a/k/j;Lcom/truecaller/messaging/data/types/TransportInfo;I)Landroid/content/ContentValues;
    .locals 0

    .line 1
    check-cast p2, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;

    .line 2
    invoke-static {p2}, Le/a/c/p/a;->R0(Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;)Landroid/content/ContentValues;

    move-result-object p1

    return-object p1
.end method

.method public g(Le/a/a/g/j0/g0;Le/a/a/k/g$a;)Z
    .locals 2

    .line 1
    check-cast p1, Le/a/a/g/d0;

    invoke-virtual {p1}, Le/a/a/g/d0;->getStatus()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Le/a/a/g/d0;->u1()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2}, Le/a/a/k/g$a;->u1()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lw3/c/a/a/a/h;->e(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public h(Le/a/a/g/j0/g0;Le/a/a/k/g$a;)Z
    .locals 4

    .line 1
    check-cast p1, Le/a/a/g/d0;

    invoke-virtual {p1}, Le/a/a/g/d0;->getStatus()I

    move-result v0

    .line 2
    invoke-interface {p2}, Le/a/a/k/g$a;->getStatus()I

    move-result v1

    and-int/lit8 v2, v0, 0x20

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    and-int/lit8 v2, v1, 0x4

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    return v3

    :cond_1
    :goto_0
    const/4 v2, 0x1

    if-ne v0, v1, :cond_5

    .line 3
    iget v0, p1, Le/a/a/g/d0;->e:I

    invoke-virtual {p1, v0}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v3

    .line 4
    :goto_1
    invoke-interface {p2}, Le/a/a/k/g$a;->q1()Z

    move-result v1

    if-ne v0, v1, :cond_5

    .line 5
    invoke-virtual {p1}, Le/a/a/g/d0;->k()I

    move-result v0

    if-eq v0, v2, :cond_3

    invoke-virtual {p1}, Le/a/a/g/d0;->X0()Z

    move-result v0

    invoke-interface {p2}, Le/a/a/k/g$a;->X0()Z

    move-result v1

    if-ne v0, v1, :cond_5

    .line 6
    :cond_3
    invoke-virtual {p1}, Le/a/a/g/d0;->k()I

    move-result v0

    if-eq v0, v2, :cond_4

    invoke-virtual {p1}, Le/a/a/g/d0;->Y()Z

    move-result v0

    invoke-interface {p2}, Le/a/a/k/g$a;->Y()Z

    move-result v1

    if-ne v0, v1, :cond_5

    .line 7
    :cond_4
    invoke-virtual {p1}, Le/a/a/g/d0;->j()J

    move-result-wide v0

    invoke-interface {p2}, Le/a/a/k/g$a;->F()I

    move-result p1

    int-to-long p1, p1

    cmp-long p1, v0, p1

    if-eqz p1, :cond_6

    :cond_5
    move v3, v2

    :cond_6
    return v3
.end method

.method public i(I)Z
    .locals 1

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public k(Le/a/a/k/j;Le/a/a/k/m;Ljava/util/List;Le/a/a/g/j0/g0;Le/a/a/k/g$a;Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/a/k/j;",
            "Le/a/a/k/m;",
            "Ljava/util/List<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Le/a/a/g/j0/g0;",
            "Le/a/a/k/g$a;",
            "Z)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p5}, Le/a/a/k/g$a;->getMessage()Lcom/truecaller/messaging/data/types/Message;

    move-result-object p1

    .line 2
    iget-object p2, p1, Lcom/truecaller/messaging/data/types/Message;->n:Lcom/truecaller/messaging/data/types/TransportInfo;

    .line 3
    check-cast p2, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;

    .line 4
    check-cast p4, Le/a/a/g/d0;

    invoke-virtual {p4}, Le/a/a/g/d0;->u()J

    move-result-wide p5

    .line 5
    invoke-virtual {p1}, Lcom/truecaller/messaging/data/types/Message;->b()Lcom/truecaller/messaging/data/types/Message$b;

    move-result-object p1

    .line 6
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v0, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo$b;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo$b;-><init>(Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;Lcom/truecaller/messaging/transport/sms/SmsTransportInfo$a;)V

    .line 8
    iput-wide p5, v0, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo$b;->a:J

    .line 9
    invoke-virtual {v0}, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo$b;->a()Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;

    move-result-object p2

    const/4 v0, 0x0

    .line 10
    iput v0, p1, Lcom/truecaller/messaging/data/types/Message$b;->k:I

    .line 11
    iput-object p2, p1, Lcom/truecaller/messaging/data/types/Message$b;->n:Lcom/truecaller/messaging/data/types/TransportInfo;

    .line 12
    iput-wide p5, p1, Lcom/truecaller/messaging/data/types/Message$b;->a:J

    .line 13
    invoke-virtual {p1}, Lcom/truecaller/messaging/data/types/Message$b;->a()Lcom/truecaller/messaging/data/types/Message;

    move-result-object p1

    .line 14
    invoke-virtual {p4}, Le/a/a/g/d0;->k()I

    move-result p2

    const/4 p5, 0x1

    if-ne p2, p5, :cond_0

    .line 15
    invoke-virtual {p1}, Lcom/truecaller/messaging/data/types/Message;->b()Lcom/truecaller/messaging/data/types/Message$b;

    move-result-object p1

    .line 16
    invoke-virtual {p4}, Le/a/a/g/d0;->Y()Z

    move-result p2

    .line 17
    iput-boolean p2, p1, Lcom/truecaller/messaging/data/types/Message$b;->h:Z

    .line 18
    invoke-virtual {p4}, Le/a/a/g/d0;->X0()Z

    move-result p2

    .line 19
    iput-boolean p2, p1, Lcom/truecaller/messaging/data/types/Message$b;->i:Z

    .line 20
    invoke-virtual {p1}, Lcom/truecaller/messaging/data/types/Message$b;->a()Lcom/truecaller/messaging/data/types/Message;

    move-result-object p1

    :cond_0
    const/4 p2, -0x1

    .line 21
    invoke-static {p3, p1, p2}, Le/a/c/p/a;->w3(Ljava/util/List;Lcom/truecaller/messaging/data/types/Message;I)V

    return p5
.end method

.method public m(Landroid/content/ContentResolver;)Z
    .locals 10

    .line 1
    sget v0, Le/a/a/k/a0/f;->f:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    sget v0, Le/a/a/k/a0/f;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-ne v0, v3, :cond_1

    .line 4
    :try_start_1
    sget-object v5, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Le/a/a/k/a0/f;->e:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "date_sent ASC LIMIT 1"

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_0

    .line 5
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    move p1, v1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 6
    throw p1

    :catch_0
    move p1, v2

    .line 7
    :goto_0
    sput p1, Le/a/a/k/a0/f;->f:I

    move v0, p1

    .line 8
    :cond_1
    monitor-exit p0

    goto :goto_1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    return v1
.end method
