.class public Le/a/a/k/y/g;
.super Landroid/database/CursorWrapper;
.source "SourceFile"

# interfaces
.implements Le/a/a/k/y/n$a;


# static fields
.field public static volatile J:[Ljava/lang/String;


# instance fields
.field public final A:I

.field public final B:I

.field public final C:Le/a/p5/c0;

.field public final D:Le/a/a/k/j;

.field public final E:Le/a/a/k/m;

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

.field public final v:I

.field public final w:I

.field public final x:I

.field public final y:I

.field public final z:I


# direct methods
.method public constructor <init>(Le/a/p5/c0;Le/a/a/k/j;Le/a/a/k/m;Landroid/database/Cursor;Le/a/e4/p;)V
    .locals 0

    .line 1
    invoke-direct {p0, p4}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 2
    iput-object p1, p0, Le/a/a/k/y/g;->C:Le/a/p5/c0;

    const-string p1, "_id"

    .line 3
    invoke-interface {p4, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/k/y/g;->a:I

    const-string p1, "thread_id"

    .line 4
    invoke-interface {p4, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/k/y/g;->b:I

    const-string p1, "st"

    .line 5
    invoke-interface {p4, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/k/y/g;->c:I

    const-string p1, "seen"

    .line 6
    invoke-interface {p4, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/k/y/g;->d:I

    const-string p1, "read"

    .line 7
    invoke-interface {p4, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/k/y/g;->e:I

    const-string p1, "locked"

    .line 8
    invoke-interface {p4, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/k/y/g;->f:I

    const-string p1, "date_sent"

    .line 9
    invoke-interface {p4, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/k/y/g;->g:I

    const-string p1, "date"

    .line 10
    invoke-interface {p4, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/k/y/g;->h:I

    const-string p1, "sub"

    .line 11
    invoke-interface {p4, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/k/y/g;->i:I

    const-string p1, "sub_cs"

    .line 12
    invoke-interface {p4, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/k/y/g;->j:I

    const-string p1, "tr_id"

    .line 13
    invoke-interface {p4, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/k/y/g;->k:I

    const-string p1, "ct_l"

    .line 14
    invoke-interface {p4, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/k/y/g;->l:I

    const-string p1, "ct_t"

    .line 15
    invoke-interface {p4, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/k/y/g;->m:I

    const-string p1, "exp"

    .line 16
    invoke-interface {p4, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/k/y/g;->n:I

    const-string p1, "pri"

    .line 17
    invoke-interface {p4, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/k/y/g;->o:I

    const-string p1, "retr_st"

    .line 18
    invoke-interface {p4, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/k/y/g;->p:I

    const-string p1, "resp_st"

    .line 19
    invoke-interface {p4, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/k/y/g;->q:I

    const-string p1, "m_id"

    .line 20
    invoke-interface {p4, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/k/y/g;->r:I

    const-string p1, "msg_box"

    .line 21
    invoke-interface {p4, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/k/y/g;->s:I

    const-string p1, "m_type"

    .line 22
    invoke-interface {p4, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/k/y/g;->t:I

    const-string p1, "m_cls"

    .line 23
    invoke-interface {p4, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/k/y/g;->u:I

    const-string p1, "m_size"

    .line 24
    invoke-interface {p4, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/k/y/g;->v:I

    const-string p1, "d_rpt"

    .line 25
    invoke-interface {p4, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/k/y/g;->w:I

    const-string p1, "d_tm"

    .line 26
    invoke-interface {p4, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/k/y/g;->x:I

    const-string p1, "rr"

    .line 27
    invoke-interface {p4, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/k/y/g;->y:I

    const-string p1, "read_status"

    .line 28
    invoke-interface {p4, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/k/y/g;->z:I

    const-string p1, "rpt_a"

    .line 29
    invoke-interface {p4, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/k/y/g;->A:I

    .line 30
    invoke-interface {p5}, Le/a/e4/p;->f()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 31
    invoke-interface {p4, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    iput p1, p0, Le/a/a/k/y/g;->B:I

    .line 32
    iput-object p2, p0, Le/a/a/k/y/g;->D:Le/a/a/k/j;

    .line 33
    iput-object p3, p0, Le/a/a/k/y/g;->E:Le/a/a/k/m;

    return-void
.end method

.method public static b(Le/a/p5/c0;Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;)Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Le/a/a/k/y/g;->J:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    sget v0, Lcom/truecaller/messaging/R$array;->MmsEmptySubject:I

    invoke-interface {p0, v0}, Le/a/p5/c0;->i(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Le/a/a/k/y/g;->J:[Ljava/lang/String;

    .line 3
    :cond_0
    iget-object p0, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->h:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez p0, :cond_1

    move-object p0, v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x4

    .line 4
    invoke-static {p0, v2}, Ln3/g0/y;->A0(Ljava/lang/String;I)[B

    move-result-object p0

    .line 5
    iget v2, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->i:I

    invoke-static {p0, v2}, Ln3/g0/y;->h0([BI)Ljava/lang/String;

    move-result-object p0

    .line 6
    :goto_0
    iget p1, p1, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->g:I

    const/16 v2, 0x82

    const/4 v3, 0x0

    if-ne p1, v2, :cond_3

    .line 7
    aget-object p1, v0, v3

    .line 8
    invoke-static {p0}, Lw3/c/a/a/a/h;->i(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object p0, p1

    :cond_2
    return-object p0

    .line 9
    :cond_3
    invoke-static {p0}, Lw3/c/a/a/a/h;->i(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    return-object v1

    .line 10
    :cond_4
    array-length p1, v0

    :goto_1
    if-ge v3, p1, :cond_6

    aget-object v2, v0, v3

    .line 11
    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    return-object v1

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    return-object p0
.end method


# virtual methods
.method public F()I
    .locals 1

    .line 1
    iget v0, p0, Le/a/a/k/y/g;->c:I

    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v0

    return v0
.end method

.method public N()I
    .locals 1

    .line 1
    iget v0, p0, Le/a/a/k/y/g;->w:I

    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v0

    return v0
.end method

.method public V0()I
    .locals 1

    .line 1
    iget v0, p0, Le/a/a/k/y/g;->p:I

    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v0

    return v0
.end method

.method public X0()Z
    .locals 1

    .line 1
    iget v0, p0, Le/a/a/k/y/g;->e:I

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
    iget v0, p0, Le/a/a/k/y/g;->d:I

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

.method public g0()J
    .locals 2

    .line 1
    iget v0, p0, Le/a/a/k/y/g;->b:I

    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 2
    :cond_0
    iget v0, p0, Le/a/a/k/y/g;->b:I

    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public g2()J
    .locals 4

    .line 1
    iget v0, p0, Le/a/a/k/y/g;->h:I

    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getId()J
    .locals 2

    .line 1
    iget v0, p0, Le/a/a/k/y/g;->a:I

    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMessage()Lcom/truecaller/messaging/data/types/Message;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;

    invoke-direct {v0}, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;-><init>()V

    .line 2
    invoke-virtual {p0}, Le/a/a/k/y/g;->getId()J

    move-result-wide v1

    .line 3
    iget v3, p0, Le/a/a/k/y/g;->j:I

    invoke-virtual {p0, v3}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v3

    .line 4
    iget v4, p0, Le/a/a/k/y/g;->i:I

    invoke-virtual {p0, v4}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    const-string v4, ""

    .line 5
    :cond_0
    iput-wide v1, v0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->b:J

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->d(J)Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;

    .line 7
    invoke-virtual {p0}, Le/a/a/k/y/g;->F()I

    move-result v1

    .line 8
    iput v1, v0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->c:I

    .line 9
    iget v1, p0, Le/a/a/k/y/g;->b:I

    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->isNull(I)Z

    move-result v1

    const-wide/16 v5, -0x1

    if-eqz v1, :cond_1

    move-wide v1, v5

    goto :goto_0

    .line 10
    :cond_1
    iget v1, p0, Le/a/a/k/y/g;->b:I

    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v1

    .line 11
    :goto_0
    iput-wide v1, v0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->d:J

    .line 12
    iput-object v4, v0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->g:Ljava/lang/String;

    .line 13
    iput v3, v0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->h:I

    .line 14
    iget v1, p0, Le/a/a/k/y/g;->k:I

    .line 15
    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 16
    iput-object v1, v0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->p:Ljava/lang/String;

    .line 17
    iget v1, p0, Le/a/a/k/y/g;->n:I

    .line 18
    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->c(J)Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;

    iget v1, p0, Le/a/a/k/y/g;->o:I

    .line 19
    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v1

    .line 20
    iput v1, v0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->r:I

    .line 21
    iget v1, p0, Le/a/a/k/y/g;->p:I

    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v1

    .line 22
    iput v1, v0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->s:I

    .line 23
    iget v1, p0, Le/a/a/k/y/g;->q:I

    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v1

    .line 24
    iput v1, v0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->t:I

    .line 25
    iget v1, p0, Le/a/a/k/y/g;->r:I

    .line 26
    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 27
    iput-object v1, v0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->u:Ljava/lang/String;

    .line 28
    iget v1, p0, Le/a/a/k/y/g;->s:I

    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v1

    .line 29
    iput v1, v0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->v:I

    .line 30
    iget v1, p0, Le/a/a/k/y/g;->t:I

    .line 31
    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v1

    .line 32
    iput v1, v0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->w:I

    .line 33
    iget v1, p0, Le/a/a/k/y/g;->u:I

    .line 34
    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 35
    iput-object v1, v0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->o:Ljava/lang/String;

    .line 36
    iget v1, p0, Le/a/a/k/y/g;->v:I

    .line 37
    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v1

    .line 38
    iput v1, v0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->x:I

    .line 39
    iget v1, p0, Le/a/a/k/y/g;->w:I

    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v1

    .line 40
    iput v1, v0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->y:I

    .line 41
    iget v1, p0, Le/a/a/k/y/g;->m:I

    .line 42
    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 43
    iput-object v1, v0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->l:Ljava/lang/String;

    .line 44
    iget v1, p0, Le/a/a/k/y/g;->x:I

    .line 45
    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v1

    .line 46
    iput-wide v1, v0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->z:J

    .line 47
    iget v1, p0, Le/a/a/k/y/g;->y:I

    .line 48
    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v1

    .line 49
    iput v1, v0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->A:I

    .line 50
    iget v1, p0, Le/a/a/k/y/g;->z:I

    .line 51
    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v1

    .line 52
    iput v1, v0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->B:I

    .line 53
    iget v1, p0, Le/a/a/k/y/g;->A:I

    .line 54
    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    move v1, v3

    .line 55
    :goto_1
    iput-boolean v1, v0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->C:Z

    .line 56
    iget v1, p0, Le/a/a/k/y/g;->l:I

    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 57
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 58
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 59
    iput-object v1, v0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->k:Landroid/net/Uri;

    .line 60
    :cond_3
    invoke-virtual {v0}, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo$b;->b()Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;

    move-result-object v0

    .line 61
    iget v1, p0, Le/a/a/k/y/g;->b:I

    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v7

    .line 62
    iget v1, p0, Le/a/a/k/y/g;->B:I

    if-ltz v1, :cond_4

    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 63
    iget v1, p0, Le/a/a/k/y/g;->B:I

    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_4
    const-string v1, "-1"

    .line 64
    :goto_2
    new-instance v4, Lcom/truecaller/messaging/data/types/Message$b;

    invoke-direct {v4}, Lcom/truecaller/messaging/data/types/Message$b;-><init>()V

    iget v9, p0, Le/a/a/k/y/g;->g:I

    .line 65
    invoke-virtual {p0, v9}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    mul-long/2addr v9, v11

    invoke-virtual {v4, v9, v10}, Lcom/truecaller/messaging/data/types/Message$b;->d(J)Lcom/truecaller/messaging/data/types/Message$b;

    .line 66
    invoke-virtual {p0}, Le/a/a/k/y/g;->g2()J

    move-result-wide v9

    invoke-virtual {v4, v9, v10}, Lcom/truecaller/messaging/data/types/Message$b;->c(J)Lcom/truecaller/messaging/data/types/Message$b;

    .line 67
    iget v9, v0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->w:I

    iget v10, v0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->g:I

    iget v11, v0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->s:I

    invoke-static {v9, v10, v11}, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->c(III)I

    move-result v9

    .line 68
    iput v9, v4, Lcom/truecaller/messaging/data/types/Message$b;->g:I

    .line 69
    invoke-virtual {p0}, Le/a/a/k/y/g;->Y()Z

    move-result v9

    .line 70
    iput-boolean v9, v4, Lcom/truecaller/messaging/data/types/Message$b;->h:Z

    .line 71
    invoke-virtual {p0}, Le/a/a/k/y/g;->X0()Z

    move-result v9

    .line 72
    iput-boolean v9, v4, Lcom/truecaller/messaging/data/types/Message$b;->i:Z

    .line 73
    invoke-virtual {p0}, Le/a/a/k/y/g;->q1()Z

    move-result v9

    .line 74
    iput-boolean v9, v4, Lcom/truecaller/messaging/data/types/Message$b;->j:Z

    .line 75
    invoke-virtual {v4, v1}, Lcom/truecaller/messaging/data/types/Message$b;->j(Ljava/lang/String;)Lcom/truecaller/messaging/data/types/Message$b;

    .line 76
    iput v2, v4, Lcom/truecaller/messaging/data/types/Message$b;->k:I

    .line 77
    iput-object v0, v4, Lcom/truecaller/messaging/data/types/Message$b;->n:Lcom/truecaller/messaging/data/types/TransportInfo;

    .line 78
    iget-object v1, v0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->e:Landroid/net/Uri;

    const-string v2, "Message URI can not be null"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isNotNull(Ljava/lang/Object;[Ljava/lang/String;)V

    .line 79
    iget-object v1, p0, Le/a/a/k/y/g;->D:Le/a/a/k/j;

    iget-object v2, v0, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->e:Landroid/net/Uri;

    invoke-interface {v1, v7, v8, v2}, Le/a/a/k/j;->b(JLandroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 80
    iget-object v2, p0, Le/a/a/k/y/g;->E:Le/a/a/k/m;

    invoke-interface {v2, v1}, Le/a/a/k/m;->a(Ljava/lang/String;)Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object v1

    .line 81
    iput-object v1, v4, Lcom/truecaller/messaging/data/types/Message$b;->c:Lcom/truecaller/data/entity/messaging/Participant;

    .line 82
    iget-object v1, p0, Le/a/a/k/y/g;->C:Le/a/p5/c0;

    invoke-static {v1, v0}, Le/a/a/k/y/g;->b(Le/a/p5/c0;Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v1, "text/plain"

    .line 83
    invoke-static {v5, v6, v1, v3, v0}, Lcom/truecaller/messaging/data/types/Entity;->a(JLjava/lang/String;ILjava/lang/String;)Lcom/truecaller/messaging/data/types/Entity;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/truecaller/messaging/data/types/Message$b;->g(Lcom/truecaller/messaging/data/types/Entity;)Lcom/truecaller/messaging/data/types/Message$b;

    .line 84
    :cond_5
    invoke-virtual {v4}, Lcom/truecaller/messaging/data/types/Message$b;->a()Lcom/truecaller/messaging/data/types/Message;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()I
    .locals 3

    .line 1
    iget v0, p0, Le/a/a/k/y/g;->s:I

    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v0

    .line 2
    iget v1, p0, Le/a/a/k/y/g;->t:I

    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v1

    iget v2, p0, Le/a/a/k/y/g;->q:I

    invoke-virtual {p0, v2}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/truecaller/messaging/transport/mms/MmsTransportInfo;->c(III)I

    move-result v0

    return v0
.end method

.method public m0()I
    .locals 1

    .line 1
    iget v0, p0, Le/a/a/k/y/g;->q:I

    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v0

    return v0
.end method

.method public q1()Z
    .locals 1

    .line 1
    iget v0, p0, Le/a/a/k/y/g;->f:I

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
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
