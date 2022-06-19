.class public Le/a/l0/u/d/c;
.super Landroid/database/CursorWrapper;
.source "SourceFile"

# interfaces
.implements Le/a/l0/u/d/b;


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

.field public final r:I

.field public final s:I

.field public final t:I

.field public final u:I

.field public final v:Le/a/k3/j/d;

.field public final w:Le/a/k3/j/c;

.field public final x:Z


# direct methods
.method public constructor <init>(Landroid/database/Cursor;Le/a/k3/j/d;Le/a/k3/j/c;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 2
    iput-object p2, p0, Le/a/l0/u/d/c;->v:Le/a/k3/j/d;

    .line 3
    iput-boolean p4, p0, Le/a/l0/u/d/c;->x:Z

    .line 4
    iput-object p3, p0, Le/a/l0/u/d/c;->w:Le/a/k3/j/c;

    const-string p2, "_id"

    .line 5
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Le/a/l0/u/d/c;->a:I

    const-string p2, "tc_id"

    .line 6
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Le/a/l0/u/d/c;->b:I

    const-string p2, "normalized_number"

    .line 7
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Le/a/l0/u/d/c;->c:I

    const-string p2, "raw_number"

    .line 8
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Le/a/l0/u/d/c;->d:I

    const-string p2, "number_type"

    .line 9
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Le/a/l0/u/d/c;->e:I

    const-string p2, "country_code"

    .line 10
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Le/a/l0/u/d/c;->f:I

    const-string p2, "cached_name"

    .line 11
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Le/a/l0/u/d/c;->g:I

    const-string p2, "type"

    .line 12
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Le/a/l0/u/d/c;->h:I

    const-string p2, "action"

    .line 13
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Le/a/l0/u/d/c;->i:I

    const-string p2, "filter_source"

    .line 14
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Le/a/l0/u/d/c;->j:I

    const-string p2, "ringing_duration"

    .line 15
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Le/a/l0/u/d/c;->k:I

    const-string p2, "call_log_id"

    .line 16
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Le/a/l0/u/d/c;->l:I

    const-string p2, "timestamp"

    .line 17
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Le/a/l0/u/d/c;->m:I

    const-string p2, "duration"

    .line 18
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Le/a/l0/u/d/c;->n:I

    const-string p2, "subscription_id"

    .line 19
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Le/a/l0/u/d/c;->o:I

    const-string p2, "feature"

    .line 20
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Le/a/l0/u/d/c;->p:I

    const-string p2, "new"

    .line 21
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Le/a/l0/u/d/c;->q:I

    const-string p2, "is_read"

    .line 22
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Le/a/l0/u/d/c;->r:I

    const-string p2, "subscription_component_name"

    .line 23
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Le/a/l0/u/d/c;->s:I

    const-string p2, "tc_flag"

    .line 24
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Le/a/l0/u/d/c;->t:I

    const-string p2, "event_id"

    .line 25
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/l0/u/d/c;->u:I

    return-void
.end method


# virtual methods
.method public A0()J
    .locals 3

    .line 1
    iget v0, p0, Le/a/l0/u/d/c;->l:I

    const-wide/16 v1, -0x1

    invoke-virtual {p0, v0, v1, v2}, Le/a/l0/u/d/c;->d(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final b(II)I
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return p2

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result p1

    return p1
.end method

.method public final d(IJ)J
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-wide p2

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide p1

    return-wide p1
.end method

.method public e()J
    .locals 2

    .line 1
    iget v0, p0, Le/a/l0/u/d/c;->m:I

    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getId()J
    .locals 3

    .line 1
    iget v0, p0, Le/a/l0/u/d/c;->a:I

    const-wide/16 v1, -0x1

    invoke-virtual {p0, v0, v1, v2}, Le/a/l0/u/d/c;->d(IJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public n()Lcom/truecaller/data/entity/HistoryEvent;
    .locals 15

    .line 1
    sget-object v0, Ln3/k/e/h;->b:Ljava/lang/reflect/Method;

    const-string v0, "EventsCursor: read"

    .line 2
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 3
    iget v0, p0, Le/a/l0/u/d/c;->a:I

    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->isNull(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_9

    iget v0, p0, Le/a/l0/u/d/c;->h:I

    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 4
    :cond_0
    new-instance v0, Lcom/truecaller/data/entity/HistoryEvent;

    invoke-direct {v0, v1}, Lcom/truecaller/data/entity/HistoryEvent;-><init>(Lcom/truecaller/data/entity/HistoryEvent$a;)V

    .line 5
    iget v1, p0, Le/a/l0/u/d/c;->a:I

    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v1

    .line 6
    iget v3, p0, Le/a/l0/u/d/c;->b:I

    invoke-virtual {p0, v3}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 8
    invoke-virtual {v0, v4}, Lcom/truecaller/data/entity/Entity;->setId(Ljava/lang/Long;)V

    .line 9
    invoke-virtual {v0, v3}, Lcom/truecaller/data/entity/Entity;->setTcId(Ljava/lang/String;)V

    .line 10
    iget v4, p0, Le/a/l0/u/d/c;->u:I

    invoke-virtual {p0, v4}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 11
    iput-object v4, v0, Lcom/truecaller/data/entity/HistoryEvent;->a:Ljava/lang/String;

    .line 12
    iget v4, p0, Le/a/l0/u/d/c;->c:I

    invoke-virtual {p0, v4}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 13
    iget v5, p0, Le/a/l0/u/d/c;->d:I

    invoke-virtual {p0, v5}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 14
    iget v6, p0, Le/a/l0/u/d/c;->f:I

    invoke-virtual {p0, v6}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 15
    iget v7, p0, Le/a/l0/u/d/c;->g:I

    invoke-virtual {p0, v7}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 16
    iget v8, p0, Le/a/l0/u/d/c;->e:I

    invoke-virtual {p0, v8}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Le/m/f/a/j$d;->l:Le/m/f/a/j$d;

    invoke-static {v8, v9}, Le/a/b0/q/c0;->l(Ljava/lang/String;Le/m/f/a/j$d;)Le/m/f/a/j$d;

    move-result-object v8

    .line 17
    iput-object v4, v0, Lcom/truecaller/data/entity/HistoryEvent;->b:Ljava/lang/String;

    .line 18
    iput-object v5, v0, Lcom/truecaller/data/entity/HistoryEvent;->c:Ljava/lang/String;

    .line 19
    iput-object v8, v0, Lcom/truecaller/data/entity/HistoryEvent;->p:Le/m/f/a/j$d;

    .line 20
    iput-object v6, v0, Lcom/truecaller/data/entity/HistoryEvent;->d:Ljava/lang/String;

    .line 21
    iput-object v7, v0, Lcom/truecaller/data/entity/HistoryEvent;->e:Ljava/lang/String;

    .line 22
    iget v9, p0, Le/a/l0/u/d/c;->h:I

    invoke-virtual {p0, v9}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v9

    .line 23
    iput v9, v0, Lcom/truecaller/data/entity/HistoryEvent;->q:I

    .line 24
    iget v9, p0, Le/a/l0/u/d/c;->i:I

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10}, Le/a/l0/u/d/c;->b(II)I

    move-result v9

    .line 25
    iput v9, v0, Lcom/truecaller/data/entity/HistoryEvent;->r:I

    .line 26
    iget v9, p0, Le/a/l0/u/d/c;->j:I

    invoke-virtual {p0, v9}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 27
    iput-object v9, v0, Lcom/truecaller/data/entity/HistoryEvent;->u:Ljava/lang/String;

    .line 28
    iget v9, p0, Le/a/l0/u/d/c;->k:I

    invoke-virtual {p0, v9}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v11

    .line 29
    iput-wide v11, v0, Lcom/truecaller/data/entity/HistoryEvent;->j:J

    .line 30
    iget v9, p0, Le/a/l0/u/d/c;->l:I

    const-wide/16 v11, -0x1

    invoke-virtual {p0, v9, v11, v12}, Le/a/l0/u/d/c;->d(IJ)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 31
    iput-object v9, v0, Lcom/truecaller/data/entity/HistoryEvent;->g:Ljava/lang/Long;

    .line 32
    iget v9, p0, Le/a/l0/u/d/c;->m:I

    invoke-virtual {p0, v9}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v11

    .line 33
    iput-wide v11, v0, Lcom/truecaller/data/entity/HistoryEvent;->h:J

    .line 34
    iget v9, p0, Le/a/l0/u/d/c;->n:I

    const-wide/16 v13, 0x0

    invoke-virtual {p0, v9, v13, v14}, Le/a/l0/u/d/c;->d(IJ)J

    move-result-wide v13

    .line 35
    iput-wide v13, v0, Lcom/truecaller/data/entity/HistoryEvent;->i:J

    .line 36
    iget v9, p0, Le/a/l0/u/d/c;->o:I

    invoke-virtual {p0, v9}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 37
    invoke-static {v9}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 38
    iput-object v9, v0, Lcom/truecaller/data/entity/HistoryEvent;->k:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v9, "-1"

    .line 39
    iput-object v9, v0, Lcom/truecaller/data/entity/HistoryEvent;->k:Ljava/lang/String;

    .line 40
    :goto_0
    iget v9, p0, Le/a/l0/u/d/c;->p:I

    invoke-virtual {p0, v9, v10}, Le/a/l0/u/d/c;->b(II)I

    move-result v9

    .line 41
    iput v9, v0, Lcom/truecaller/data/entity/HistoryEvent;->l:I

    .line 42
    iget v9, p0, Le/a/l0/u/d/c;->q:I

    invoke-virtual {p0, v9, v10}, Le/a/l0/u/d/c;->b(II)I

    move-result v9

    .line 43
    iput v9, v0, Lcom/truecaller/data/entity/HistoryEvent;->o:I

    .line 44
    iget v9, p0, Le/a/l0/u/d/c;->r:I

    invoke-virtual {p0, v9, v10}, Le/a/l0/u/d/c;->b(II)I

    move-result v9

    .line 45
    iput v9, v0, Lcom/truecaller/data/entity/HistoryEvent;->m:I

    .line 46
    iget v9, p0, Le/a/l0/u/d/c;->s:I

    invoke-virtual {p0, v9}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 47
    iput-object v9, v0, Lcom/truecaller/data/entity/HistoryEvent;->s:Ljava/lang/String;

    .line 48
    iget v9, p0, Le/a/l0/u/d/c;->t:I

    invoke-virtual {p0, v9, v10}, Le/a/l0/u/d/c;->b(II)I

    move-result v9

    .line 49
    iput v9, v0, Lcom/truecaller/data/entity/HistoryEvent;->t:I

    .line 50
    iget-object v9, p0, Le/a/l0/u/d/c;->v:Le/a/k3/j/d;

    if-eqz v9, :cond_7

    .line 51
    invoke-virtual {v9, p0}, Le/a/k3/j/d;->g(Landroid/database/Cursor;)Lcom/truecaller/data/entity/Contact;

    move-result-object v9

    if-nez v9, :cond_2

    .line 52
    new-instance v9, Lcom/truecaller/data/entity/Contact;

    invoke-direct {v9}, Lcom/truecaller/data/entity/Contact;-><init>()V

    .line 53
    invoke-virtual {v9, v7}, Lcom/truecaller/data/entity/Contact;->S0(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v9, v3}, Lcom/truecaller/data/entity/Contact;->setTcId(Ljava/lang/String;)V

    .line 55
    invoke-static {}, Le/a/m0/a1$j;->b()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 56
    iput-object v1, v9, Lcom/truecaller/data/entity/Contact;->i:Landroid/net/Uri;

    .line 57
    invoke-virtual {v9, v11, v12}, Lcom/truecaller/data/entity/Contact;->X0(J)V

    goto :goto_1

    .line 58
    :cond_2
    iget-boolean v1, p0, Le/a/l0/u/d/c;->x:Z

    if-eqz v1, :cond_3

    .line 59
    iget-object v1, p0, Le/a/l0/u/d/c;->v:Le/a/k3/j/d;

    invoke-virtual {v1, p0, v9}, Le/a/k3/j/d;->f(Landroid/database/Cursor;Lcom/truecaller/data/entity/Contact;)Lcom/truecaller/data/entity/Entity;

    .line 60
    :cond_3
    :goto_1
    invoke-virtual {v9}, Lcom/truecaller/data/entity/Contact;->h0()Z

    move-result v1

    if-nez v1, :cond_6

    .line 61
    invoke-static {v4, v5, v6}, Lcom/truecaller/data/entity/Number;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/truecaller/data/entity/Number;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 62
    invoke-virtual {v9}, Lcom/truecaller/data/entity/Contact;->getTcId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/truecaller/data/entity/Number;->setTcId(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v1, v8}, Lcom/truecaller/data/entity/Number;->v(Le/m/f/a/j$d;)V

    .line 64
    invoke-virtual {v9}, Lcom/truecaller/data/entity/Contact;->h0()Z

    move-result v2

    if-nez v2, :cond_4

    .line 65
    invoke-virtual {v1}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/truecaller/data/entity/Contact;->O0(Ljava/lang/String;)V

    .line 66
    :cond_4
    invoke-virtual {v9, v1}, Lcom/truecaller/data/entity/Contact;->d(Lcom/truecaller/data/entity/Number;)V

    :cond_5
    const/4 v1, 0x1

    .line 67
    iput-boolean v1, v9, Lcom/truecaller/data/entity/Contact;->j:Z

    .line 68
    :cond_6
    iput-object v9, v0, Lcom/truecaller/data/entity/HistoryEvent;->f:Lcom/truecaller/data/entity/Contact;

    .line 69
    :cond_7
    iget-object v1, p0, Le/a/l0/u/d/c;->w:Le/a/k3/j/c;

    if-eqz v1, :cond_8

    .line 70
    invoke-virtual {v1, p0}, Le/a/k3/j/c;->a(Landroid/database/Cursor;)Lcom/truecaller/data/entity/CallRecording;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 71
    iput-object v1, v0, Lcom/truecaller/data/entity/HistoryEvent;->n:Lcom/truecaller/data/entity/CallRecording;

    .line 72
    :cond_8
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object v0

    .line 73
    :cond_9
    :goto_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object v1
.end method

.method public z()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Le/a/l0/u/d/c;->o:I

    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "-1"

    invoke-static {v0, v1}, Lw3/c/a/a/a/h;->c(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
