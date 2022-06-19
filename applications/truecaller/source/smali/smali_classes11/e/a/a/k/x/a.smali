.class public final Le/a/a/k/x/a;
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

.field public final n:Le/a/a/k/m;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;Le/a/a/k/m;)V
    .locals 1

    const-string v0, "cursor"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "participantCache"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    iput-object p2, p0, Le/a/a/k/x/a;->n:Le/a/a/k/m;

    const-string p2, "_id"

    .line 2
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Le/a/a/k/x/a;->a:I

    const-string p2, "timestamp"

    .line 3
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Le/a/a/k/x/a;->b:I

    const-string p2, "new"

    .line 4
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Le/a/a/k/x/a;->c:I

    const-string p2, "is_read"

    .line 5
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Le/a/a/k/x/a;->d:I

    const-string p2, "type"

    .line 6
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Le/a/a/k/x/a;->e:I

    const-string p2, "normalized_number"

    .line 7
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Le/a/a/k/x/a;->f:I

    const-string p2, "call_log_id"

    .line 8
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Le/a/a/k/x/a;->g:I

    const-string p2, "number_type"

    .line 9
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Le/a/a/k/x/a;->h:I

    const-string p2, "subscription_id"

    .line 10
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Le/a/a/k/x/a;->i:I

    const-string p2, "tc_flag"

    .line 11
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Le/a/a/k/x/a;->j:I

    const-string p2, "subscription_component_name"

    .line 12
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Le/a/a/k/x/a;->k:I

    const-string p2, "action"

    .line 13
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Le/a/a/k/x/a;->l:I

    const-string p2, "filter_source"

    .line 14
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/k/x/a;->m:I

    return-void
.end method


# virtual methods
.method public F()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public X0()Z
    .locals 3

    .line 1
    iget v0, p0, Le/a/a/k/x/a;->d:I

    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Le/a/a/k/x/a;->getStatus()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public Y()Z
    .locals 2

    .line 1
    iget v0, p0, Le/a/a/k/x/a;->c:I

    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Le/a/a/k/x/a;->getStatus()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public g2()J
    .locals 2

    .line 1
    iget v0, p0, Le/a/a/k/x/a;->b:I

    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getId()J
    .locals 2

    .line 1
    iget v0, p0, Le/a/a/k/x/a;->a:I

    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMessage()Lcom/truecaller/messaging/data/types/Message;
    .locals 40

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Le/a/a/k/x/a;->f:I

    invoke-virtual {v0, v1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 2
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v3

    :goto_1
    const/4 v5, 0x5

    if-eqz v4, :cond_2

    .line 3
    sget-object v1, Lcom/truecaller/data/entity/messaging/Participant;->B:Lcom/truecaller/data/entity/messaging/Participant;

    .line 4
    new-instance v1, Lcom/truecaller/data/entity/messaging/Participant$b;

    invoke-direct {v1, v5}, Lcom/truecaller/data/entity/messaging/Participant$b;-><init>(I)V

    const-string v4, "hidden"

    .line 5
    iput-object v4, v1, Lcom/truecaller/data/entity/messaging/Participant$b;->e:Ljava/lang/String;

    .line 6
    iput v3, v1, Lcom/truecaller/data/entity/messaging/Participant$b;->i:I

    .line 7
    invoke-virtual {v1}, Lcom/truecaller/data/entity/messaging/Participant$b;->a()Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object v1

    const-string v4, "Participant.buildFromHiddenNumber(true)"

    .line 8
    invoke-static {v1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 9
    :cond_2
    iget-object v4, v0, Le/a/a/k/x/a;->n:Le/a/a/k/m;

    invoke-interface {v4, v1}, Le/a/a/k/m;->a(Ljava/lang/String;)Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object v1

    .line 10
    :goto_2
    new-instance v4, Lcom/truecaller/messaging/data/types/Message$b;

    invoke-direct {v4}, Lcom/truecaller/messaging/data/types/Message$b;-><init>()V

    .line 11
    invoke-virtual/range {p0 .. p0}, Le/a/a/k/x/a;->g2()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/truecaller/messaging/data/types/Message$b;->c(J)Lcom/truecaller/messaging/data/types/Message$b;

    .line 12
    iput-object v1, v4, Lcom/truecaller/messaging/data/types/Message$b;->c:Lcom/truecaller/data/entity/messaging/Participant;

    .line 13
    invoke-virtual/range {p0 .. p0}, Le/a/a/k/x/a;->getStatus()I

    move-result v1

    .line 14
    iput v1, v4, Lcom/truecaller/messaging/data/types/Message$b;->g:I

    .line 15
    new-instance v1, Lcom/truecaller/messaging/transport/history/HistoryTransportInfo;

    const-wide/16 v7, -0x1

    .line 16
    invoke-virtual/range {p0 .. p0}, Le/a/a/k/x/a;->getId()J

    move-result-wide v9

    .line 17
    iget v6, v0, Le/a/a/k/x/a;->g:I

    invoke-virtual {v0, v6}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v11

    .line 18
    iget v6, v0, Le/a/a/k/x/a;->j:I

    invoke-virtual {v0, v6}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v6

    const/4 v12, 0x3

    if-ne v6, v12, :cond_3

    move v12, v3

    goto :goto_5

    .line 19
    :cond_3
    iget v6, v0, Le/a/a/k/x/a;->k:I

    invoke-virtual {v0, v6}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v12

    const v13, -0x5c4004a1

    if-eq v12, v13, :cond_6

    const v13, -0x328219f9    # -2.6623192E8f

    if-eq v12, v13, :cond_5

    goto :goto_4

    :cond_5
    const-string v12, "com.truecaller.voip.manager.VOIP"

    .line 20
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v6, 0x4

    goto :goto_3

    :cond_6
    const-string v12, "com.whatsapp"

    .line 21
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v6, 0x2

    :goto_3
    move v12, v6

    goto :goto_5

    :cond_7
    :goto_4
    move v12, v2

    .line 22
    :goto_5
    iget v6, v0, Le/a/a/k/x/a;->h:I

    invoke-virtual {v0, v6}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 23
    iget v6, v0, Le/a/a/k/x/a;->l:I

    invoke-virtual {v0, v6}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v6

    if-eq v6, v3, :cond_8

    move v14, v2

    goto :goto_6

    :cond_8
    move v14, v3

    .line 24
    :goto_6
    iget v2, v0, Le/a/a/k/x/a;->m:I

    invoke-virtual {v0, v2}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    goto :goto_7

    :cond_9
    sget-object v2, Lcom/truecaller/blocking/ActionSource;->NONE:Lcom/truecaller/blocking/ActionSource;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    :goto_7
    move-object v15, v2

    move-object v6, v1

    .line 25
    invoke-direct/range {v6 .. v15}, Lcom/truecaller/messaging/transport/history/HistoryTransportInfo;-><init>(JJIILjava/lang/String;ILjava/lang/String;)V

    .line 26
    iput v5, v4, Lcom/truecaller/messaging/data/types/Message$b;->k:I

    .line 27
    iput-object v1, v4, Lcom/truecaller/messaging/data/types/Message$b;->n:Lcom/truecaller/messaging/data/types/TransportInfo;

    .line 28
    sget-object v16, Lcom/truecaller/messaging/data/types/Entity;->h:Lcom/truecaller/messaging/data/types/Entity$a;

    const-wide/16 v17, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const-wide/16 v26, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const-wide/16 v35, 0x0

    const-wide/16 v37, 0x0

    const v39, 0x3fff5

    const-string v19, "history"

    const-string v21, ""

    invoke-static/range {v16 .. v39}, Lcom/truecaller/messaging/data/types/Entity$a;->a(Lcom/truecaller/messaging/data/types/Entity$a;JLjava/lang/String;ILjava/lang/String;ZIIIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;DDI)Lcom/truecaller/messaging/data/types/Entity;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/truecaller/messaging/data/types/Message$b;->g(Lcom/truecaller/messaging/data/types/Entity;)Lcom/truecaller/messaging/data/types/Message$b;

    .line 29
    invoke-virtual/range {p0 .. p0}, Le/a/a/k/x/a;->X0()Z

    move-result v1

    .line 30
    iput-boolean v1, v4, Lcom/truecaller/messaging/data/types/Message$b;->i:Z

    .line 31
    invoke-virtual/range {p0 .. p0}, Le/a/a/k/x/a;->Y()Z

    move-result v1

    .line 32
    iput-boolean v1, v4, Lcom/truecaller/messaging/data/types/Message$b;->h:Z

    .line 33
    iget v1, v0, Le/a/a/k/x/a;->i:I

    invoke-virtual {v0, v1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/truecaller/messaging/data/types/Message$b;->j(Ljava/lang/String;)Lcom/truecaller/messaging/data/types/Message$b;

    .line 34
    invoke-virtual {v4}, Lcom/truecaller/messaging/data/types/Message$b;->a()Lcom/truecaller/messaging/data/types/Message;

    move-result-object v1

    const-string v2, "Message.Builder()\n      \u2026Id))\n            .build()"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method public getStatus()I
    .locals 2

    .line 1
    iget v0, p0, Le/a/a/k/x/a;->e:I

    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public q1()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public u1()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
