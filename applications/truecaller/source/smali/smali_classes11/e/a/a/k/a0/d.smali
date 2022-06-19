.class public Le/a/a/k/a0/d;
.super Landroid/database/CursorWrapper;
.source "SourceFile"

# interfaces
.implements Le/a/a/k/g$a;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:I

.field public final k:I

.field public final l:I

.field public final m:I

.field public final n:I

.field public final o:I

.field public final p:I

.field public final q:I

.field public final r:Le/a/a/k/j;

.field public final s:Le/a/a/k/m;

.field public final t:Z


# direct methods
.method public constructor <init>(Le/a/a/k/j;Le/a/a/k/m;Le/a/e4/p;Landroid/database/Cursor;Z)V
    .locals 1

    .line 1
    invoke-direct {p0, p4}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    const-string v0, "_id"

    .line 2
    invoke-interface {p4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/k/a0/d;->a:I

    const-string v0, "thread_id"

    .line 3
    invoke-interface {p4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/k/a0/d;->b:I

    const-string v0, "status"

    .line 4
    invoke-interface {p4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/k/a0/d;->c:I

    const-string v0, "protocol"

    .line 5
    invoke-interface {p4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/k/a0/d;->d:I

    const-string v0, "type"

    .line 6
    invoke-interface {p4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/k/a0/d;->e:I

    const-string v0, "service_center"

    .line 7
    invoke-interface {p4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/k/a0/d;->f:I

    const-string v0, "error_code"

    .line 8
    invoke-interface {p4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/k/a0/d;->g:I

    const-string v0, "reply_path_present"

    .line 9
    invoke-interface {p4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/k/a0/d;->h:I

    const-string v0, "subject"

    .line 10
    invoke-interface {p4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/k/a0/d;->i:I

    const-string v0, "seen"

    .line 11
    invoke-interface {p4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/k/a0/d;->j:I

    const-string v0, "read"

    .line 12
    invoke-interface {p4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/k/a0/d;->k:I

    const-string v0, "locked"

    .line 13
    invoke-interface {p4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/k/a0/d;->l:I

    const-string v0, "date_sent"

    .line 14
    invoke-interface {p4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/k/a0/d;->m:I

    const-string v0, "date"

    .line 15
    invoke-interface {p4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/k/a0/d;->n:I

    const-string v0, "body"

    .line 16
    invoke-interface {p4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/k/a0/d;->o:I

    const-string v0, "address"

    .line 17
    invoke-interface {p4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/k/a0/d;->p:I

    .line 18
    iput-object p1, p0, Le/a/a/k/a0/d;->r:Le/a/a/k/j;

    .line 19
    iput-object p2, p0, Le/a/a/k/a0/d;->s:Le/a/a/k/m;

    .line 20
    invoke-interface {p3}, Le/a/e4/p;->g()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 21
    invoke-interface {p4, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    iput p1, p0, Le/a/a/k/a0/d;->q:I

    .line 22
    iput-boolean p5, p0, Le/a/a/k/a0/d;->t:Z

    return-void
.end method


# virtual methods
.method public F()I
    .locals 1

    .line 1
    iget v0, p0, Le/a/a/k/a0/d;->c:I

    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v0

    return v0
.end method

.method public X0()Z
    .locals 1

    .line 1
    iget v0, p0, Le/a/a/k/a0/d;->k:I

    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public Y()Z
    .locals 1

    .line 1
    iget v0, p0, Le/a/a/k/a0/d;->j:I

    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/a/a/k/a0/d;->t:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Le/a/b0/q/c0;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public g0()J
    .locals 2

    .line 1
    iget v0, p0, Le/a/a/k/a0/d;->b:I

    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 2
    :cond_0
    iget v0, p0, Le/a/a/k/a0/d;->b:I

    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public g2()J
    .locals 2

    .line 1
    iget v0, p0, Le/a/a/k/a0/d;->n:I

    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getId()J
    .locals 2

    .line 1
    iget v0, p0, Le/a/a/k/a0/d;->a:I

    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMessage()Lcom/truecaller/messaging/data/types/Message;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .line 1
    iget v0, p0, Le/a/a/k/a0/d;->p:I

    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v0, v1

    .line 2
    :cond_0
    iget-boolean v2, p0, Le/a/a/k/a0/d;->t:Z

    if-eqz v2, :cond_1

    invoke-static {v0}, Le/a/b0/q/c0;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v0

    .line 3
    :goto_0
    invoke-virtual {p0}, Le/a/a/k/a0/d;->getId()J

    move-result-wide v3

    .line 4
    new-instance v5, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo$b;

    invoke-direct {v5}, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo$b;-><init>()V

    .line 5
    iput-wide v3, v5, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo$b;->b:J

    .line 6
    invoke-virtual {p0}, Le/a/a/k/a0/d;->F()I

    move-result v6

    .line 7
    iput v6, v5, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo$b;->c:I

    .line 8
    iget v6, p0, Le/a/a/k/a0/d;->b:I

    invoke-virtual {p0, v6}, Landroid/database/CursorWrapper;->isNull(I)Z

    move-result v6

    const-wide/16 v7, -0x1

    if-eqz v6, :cond_2

    move-wide v9, v7

    goto :goto_1

    .line 9
    :cond_2
    iget v6, p0, Le/a/a/k/a0/d;->b:I

    invoke-virtual {p0, v6}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v9

    .line 10
    :goto_1
    iput-wide v9, v5, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo$b;->d:J

    .line 11
    iget v6, p0, Le/a/a/k/a0/d;->d:I

    .line 12
    invoke-virtual {p0, v6}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v6

    .line 13
    iput v6, v5, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo$b;->f:I

    .line 14
    iget v6, p0, Le/a/a/k/a0/d;->e:I

    .line 15
    invoke-virtual {p0, v6}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v6

    .line 16
    iput v6, v5, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo$b;->g:I

    .line 17
    iget v6, p0, Le/a/a/k/a0/d;->f:I

    .line 18
    invoke-virtual {p0, v6}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 19
    iput-object v6, v5, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo$b;->h:Ljava/lang/String;

    .line 20
    iget v6, p0, Le/a/a/k/a0/d;->g:I

    .line 21
    invoke-virtual {p0, v6}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v6

    .line 22
    iput v6, v5, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo$b;->i:I

    .line 23
    iget v6, p0, Le/a/a/k/a0/d;->h:I

    .line 24
    invoke-virtual {p0, v6}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v6

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v6, :cond_3

    move v6, v9

    goto :goto_2

    :cond_3
    move v6, v10

    .line 25
    :goto_2
    iput-boolean v6, v5, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo$b;->j:Z

    .line 26
    sget-object v6, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    .line 27
    invoke-static {v6, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 28
    iput-object v3, v5, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo$b;->e:Landroid/net/Uri;

    .line 29
    iget v3, p0, Le/a/a/k/a0/d;->i:I

    .line 30
    invoke-virtual {p0, v3}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 31
    iput-object v3, v5, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo$b;->k:Ljava/lang/String;

    .line 32
    iput-object v2, v5, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo$b;->l:Ljava/lang/String;

    .line 33
    invoke-virtual {v5}, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo$b;->a()Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;

    move-result-object v3

    .line 34
    iget v4, p0, Le/a/a/k/a0/d;->q:I

    if-ltz v4, :cond_4

    invoke-virtual {p0, v4}, Landroid/database/CursorWrapper;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_4

    .line 35
    iget v4, p0, Le/a/a/k/a0/d;->q:I

    invoke-virtual {p0, v4}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_4
    const-string v4, "-1"

    .line 36
    :goto_3
    new-instance v5, Lcom/truecaller/messaging/data/types/Message$b;

    invoke-direct {v5}, Lcom/truecaller/messaging/data/types/Message$b;-><init>()V

    .line 37
    iget v6, p0, Le/a/a/k/a0/d;->m:I

    invoke-virtual {p0, v6}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v11

    invoke-virtual {v5, v11, v12}, Lcom/truecaller/messaging/data/types/Message$b;->d(J)Lcom/truecaller/messaging/data/types/Message$b;

    .line 38
    invoke-virtual {p0}, Le/a/a/k/a0/d;->g2()J

    move-result-wide v11

    invoke-virtual {v5, v11, v12}, Lcom/truecaller/messaging/data/types/Message$b;->c(J)Lcom/truecaller/messaging/data/types/Message$b;

    .line 39
    iget v6, v3, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->h:I

    invoke-static {v6}, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->b(I)I

    move-result v6

    .line 40
    iput v6, v5, Lcom/truecaller/messaging/data/types/Message$b;->g:I

    .line 41
    invoke-virtual {p0}, Le/a/a/k/a0/d;->Y()Z

    move-result v6

    .line 42
    iput-boolean v6, v5, Lcom/truecaller/messaging/data/types/Message$b;->h:Z

    .line 43
    invoke-virtual {p0}, Le/a/a/k/a0/d;->X0()Z

    move-result v6

    .line 44
    iput-boolean v6, v5, Lcom/truecaller/messaging/data/types/Message$b;->i:Z

    .line 45
    invoke-virtual {p0}, Le/a/a/k/a0/d;->q1()Z

    move-result v6

    .line 46
    iput-boolean v6, v5, Lcom/truecaller/messaging/data/types/Message$b;->j:Z

    .line 47
    iput v10, v5, Lcom/truecaller/messaging/data/types/Message$b;->k:I

    .line 48
    iput-object v3, v5, Lcom/truecaller/messaging/data/types/Message$b;->n:Lcom/truecaller/messaging/data/types/TransportInfo;

    .line 49
    invoke-virtual {v5, v4}, Lcom/truecaller/messaging/data/types/Message$b;->j(Ljava/lang/String;)Lcom/truecaller/messaging/data/types/Message$b;

    iget v3, p0, Le/a/a/k/a0/d;->o:I

    .line 50
    invoke-virtual {p0, v3}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5

    goto :goto_4

    :cond_5
    move-object v1, v3

    :goto_4
    const-string v3, "text/plain"

    invoke-static {v7, v8, v3, v10, v1}, Lcom/truecaller/messaging/data/types/Entity;->a(JLjava/lang/String;ILjava/lang/String;)Lcom/truecaller/messaging/data/types/Entity;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/truecaller/messaging/data/types/Message$b;->g(Lcom/truecaller/messaging/data/types/Entity;)Lcom/truecaller/messaging/data/types/Message$b;

    .line 51
    iput-object v0, v5, Lcom/truecaller/messaging/data/types/Message$b;->r:Ljava/lang/String;

    .line 52
    iget-object v1, p0, Le/a/a/k/a0/d;->s:Le/a/a/k/m;

    invoke-interface {v1, v2}, Le/a/a/k/m;->a(Ljava/lang/String;)Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object v1

    .line 53
    iget v3, v1, Lcom/truecaller/data/entity/messaging/Participant;->b:I

    if-ne v3, v9, :cond_6

    iget v3, p0, Le/a/a/k/a0/d;->b:I

    invoke-virtual {p0, v3}, Landroid/database/CursorWrapper;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_6

    .line 54
    iget-object v3, p0, Le/a/a/k/a0/d;->r:Le/a/a/k/j;

    iget v4, p0, Le/a/a/k/a0/d;->b:I

    invoke-virtual {p0, v4}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v6

    invoke-interface {v3, v6, v7}, Le/a/a/k/j;->a(J)Ljava/util/List;

    move-result-object v3

    .line 55
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v9, :cond_6

    .line 56
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Le/a/a/k/a0/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 57
    iget-object v3, v1, Lcom/truecaller/data/entity/messaging/Participant;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 58
    iget-object v1, p0, Le/a/a/k/a0/d;->s:Le/a/a/k/m;

    invoke-interface {v1, v2}, Le/a/a/k/m;->a(Ljava/lang/String;)Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object v1

    .line 59
    :cond_6
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 60
    invoke-virtual {v1}, Lcom/truecaller/data/entity/messaging/Participant;->e()Lcom/truecaller/data/entity/messaging/Participant$b;

    move-result-object v1

    .line 61
    iput-object v0, v1, Lcom/truecaller/data/entity/messaging/Participant$b;->d:Ljava/lang/String;

    .line 62
    invoke-virtual {v1}, Lcom/truecaller/data/entity/messaging/Participant$b;->a()Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object v1

    .line 63
    :cond_7
    iput-object v1, v5, Lcom/truecaller/messaging/data/types/Message$b;->c:Lcom/truecaller/data/entity/messaging/Participant;

    .line 64
    invoke-virtual {v5}, Lcom/truecaller/messaging/data/types/Message$b;->a()Lcom/truecaller/messaging/data/types/Message;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 1
    iget v0, p0, Le/a/a/k/a0/d;->e:I

    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v0

    .line 2
    invoke-static {v0}, Lcom/truecaller/messaging/transport/sms/SmsTransportInfo;->b(I)I

    move-result v0

    return v0
.end method

.method public q1()Z
    .locals 1

    .line 1
    iget v0, p0, Le/a/a/k/a0/d;->l:I

    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public u1()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Le/a/a/k/a0/d;->p:I

    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    .line 2
    :cond_0
    iget-boolean v1, p0, Le/a/a/k/a0/d;->t:Z

    if-eqz v1, :cond_1

    invoke-static {v0}, Le/a/b0/q/c0;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method
