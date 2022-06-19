.class public Le/a/l0/u/d/e;
.super Landroid/database/CursorWrapper;
.source "SourceFile"

# interfaces
.implements Le/a/l0/u/d/d;


# instance fields
.field public final a:[I

.field public final b:Le/a/k3/l/f;

.field public final c:Le/a/e4/l;

.field public final d:Z

.field public final e:Z

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


# direct methods
.method public constructor <init>(Le/a/k3/l/f;Le/a/e4/l;ZZ)V
    .locals 1

    .line 1
    invoke-direct {p0, p2}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_0

    iput-object v0, p0, Le/a/l0/u/d/e;->a:[I

    .line 3
    iput-boolean p3, p0, Le/a/l0/u/d/e;->d:Z

    .line 4
    iput-boolean p4, p0, Le/a/l0/u/d/e;->e:Z

    .line 5
    iput-object p1, p0, Le/a/l0/u/d/e;->b:Le/a/k3/l/f;

    .line 6
    iput-object p2, p0, Le/a/l0/u/d/e;->c:Le/a/e4/l;

    const-string p1, "_id"

    .line 7
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/l0/u/d/e;->f:I

    const-string p1, "date"

    .line 8
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/l0/u/d/e;->g:I

    const-string p1, "number"

    .line 9
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/l0/u/d/e;->h:I

    const-string p1, "normalized_number"

    .line 10
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/l0/u/d/e;->i:I

    const-string p1, "type"

    .line 11
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/l0/u/d/e;->j:I

    const-string p1, "duration"

    .line 12
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/l0/u/d/e;->l:I

    const-string p1, "name"

    .line 13
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/l0/u/d/e;->m:I

    const-string p1, "features"

    .line 14
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/l0/u/d/e;->n:I

    const-string p1, "new"

    .line 15
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/l0/u/d/e;->o:I

    const-string p1, "is_read"

    .line 16
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/l0/u/d/e;->p:I

    const-string p1, "subscription_component_name"

    .line 17
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/l0/u/d/e;->q:I

    const-string p1, "logtype"

    .line 18
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/l0/u/d/e;->k:I

    return-void

    :array_0
    .array-data 4
        0xc8
        0x12c
        0x190
        0x1f4
    .end array-data
.end method

.method public static b(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v1, 0x5

    if-eq p0, v1, :cond_1

    const/4 v1, 0x6

    if-eq p0, v1, :cond_1

    const/16 v1, 0xa

    if-ne p0, v1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid call log type"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method public D1()Z
    .locals 7

    .line 1
    iget v0, p0, Le/a/l0/u/d/e;->k:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_4

    .line 2
    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v0

    .line 3
    iget-object v3, p0, Le/a/l0/u/d/e;->a:[I

    const/4 v4, 0x0

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    move v5, v4

    .line 4
    :goto_0
    array-length v6, v3

    if-ge v5, v6, :cond_2

    .line 5
    aget v6, v3, v5

    if-ne v0, v6, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    move v5, v1

    :goto_2
    if-eq v5, v1, :cond_3

    move v4, v2

    :cond_3
    if-eqz v4, :cond_4

    return v2

    .line 6
    :cond_4
    :try_start_0
    iget v0, p0, Le/a/l0/u/d/e;->j:I

    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v0

    invoke-static {v0}, Le/a/l0/u/d/e;->b(I)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    iget v0, p0, Le/a/l0/u/d/e;->h:I

    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->isNull(I)Z

    move-result v0

    return v0

    :catch_0
    return v2
.end method

.method public e()J
    .locals 2

    .line 1
    iget v0, p0, Le/a/l0/u/d/e;->g:I

    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getId()J
    .locals 2

    .line 1
    iget v0, p0, Le/a/l0/u/d/e;->f:I

    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public n()Lcom/truecaller/data/entity/HistoryEvent;
    .locals 7

    .line 1
    invoke-virtual {p0}, Le/a/l0/u/d/e;->D1()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    new-instance v0, Lcom/truecaller/data/entity/HistoryEvent;

    invoke-direct {v0, v1}, Lcom/truecaller/data/entity/HistoryEvent;-><init>(Lcom/truecaller/data/entity/HistoryEvent$a;)V

    .line 3
    iget v2, p0, Le/a/l0/u/d/e;->h:I

    invoke-virtual {p0, v2}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-static {v2}, Le/a/b0/q/c0;->f(Ljava/lang/String;)Z

    move-result v3

    const-string v4, ""

    if-eqz v3, :cond_1

    .line 5
    iput-object v4, v0, Lcom/truecaller/data/entity/HistoryEvent;->c:Ljava/lang/String;

    .line 6
    iput-object v4, v0, Lcom/truecaller/data/entity/HistoryEvent;->b:Ljava/lang/String;

    goto/16 :goto_4

    .line 7
    :cond_1
    iget-boolean v3, p0, Le/a/l0/u/d/e;->d:Z

    const/4 v5, -0x1

    if-eqz v3, :cond_3

    if-nez v2, :cond_2

    move-object v1, v4

    goto :goto_0

    :cond_2
    move-object v1, v2

    .line 8
    :goto_0
    invoke-static {v1}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget v3, p0, Le/a/l0/u/d/e;->i:I

    if-eq v3, v5, :cond_6

    .line 9
    invoke-virtual {p0, v3}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 10
    :cond_3
    iget v3, p0, Le/a/l0/u/d/e;->i:I

    if-eq v3, v5, :cond_4

    .line 11
    invoke-virtual {p0, v3}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 12
    :cond_4
    invoke-static {v1}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    if-nez v2, :cond_5

    move-object v1, v4

    goto :goto_1

    :cond_5
    move-object v1, v2

    :cond_6
    :goto_1
    const/4 v3, 0x0

    new-array v5, v3, [Ljava/lang/String;

    .line 13
    invoke-static {v1, v5}, Lcom/truecaller/log/AssertionUtil$AlwaysFatal;->isNotNull(Ljava/lang/Object;[Ljava/lang/String;)V

    .line 14
    iget-object v5, p0, Le/a/l0/u/d/e;->b:Le/a/k3/l/f;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    aput-object v1, v6, v3

    const/4 v1, 0x1

    aput-object v2, v6, v1

    invoke-interface {v5, v6}, Le/a/k3/l/f;->d([Ljava/lang/String;)Lcom/truecaller/data/entity/Number;

    move-result-object v1

    .line 15
    iget-boolean v3, p0, Le/a/l0/u/d/e;->e:Z

    const-string v5, "RemoteCallLogCursorImpl: Type: "

    if-eqz v3, :cond_9

    .line 16
    sget-object v3, Le/m/f/a/j$d;->d:Le/m/f/a/j$d;

    invoke-virtual {v1}, Lcom/truecaller/data/entity/Number;->i()Le/m/f/a/j$d;

    move-result-object v6

    if-eq v3, v6, :cond_7

    sget-object v3, Le/m/f/a/j$d;->f:Le/m/f/a/j$d;

    invoke-virtual {v1}, Lcom/truecaller/data/entity/Number;->i()Le/m/f/a/j$d;

    move-result-object v6

    if-ne v3, v6, :cond_9

    .line 17
    :cond_7
    invoke-static {v5}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/truecaller/data/entity/Number;->i()Le/m/f/a/j$d;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ". Using raw number: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-nez v2, :cond_8

    move-object v2, v4

    .line 18
    :cond_8
    iput-object v2, v0, Lcom/truecaller/data/entity/HistoryEvent;->c:Ljava/lang/String;

    goto :goto_2

    .line 19
    :cond_9
    invoke-static {v5}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/truecaller/data/entity/Number;->i()Le/m/f/a/j$d;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ". Using parsed number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/truecaller/data/entity/Number;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    invoke-virtual {v1}, Lcom/truecaller/data/entity/Number;->l()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_a

    move-object v2, v4

    .line 21
    :cond_a
    iput-object v2, v0, Lcom/truecaller/data/entity/HistoryEvent;->c:Ljava/lang/String;

    .line 22
    :goto_2
    invoke-virtual {v1}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_b

    goto :goto_3

    :cond_b
    move-object v4, v2

    .line 23
    :goto_3
    iput-object v4, v0, Lcom/truecaller/data/entity/HistoryEvent;->b:Ljava/lang/String;

    .line 24
    invoke-virtual {v1}, Lcom/truecaller/data/entity/Number;->i()Le/m/f/a/j$d;

    move-result-object v2

    .line 25
    iput-object v2, v0, Lcom/truecaller/data/entity/HistoryEvent;->p:Le/m/f/a/j$d;

    .line 26
    invoke-virtual {v1}, Lcom/truecaller/data/entity/Number;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    .line 27
    iput-object v1, v0, Lcom/truecaller/data/entity/HistoryEvent;->d:Ljava/lang/String;

    .line 28
    :goto_4
    iget v1, p0, Le/a/l0/u/d/e;->j:I

    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v1

    invoke-static {v1}, Le/a/l0/u/d/e;->b(I)I

    move-result v1

    .line 29
    iput v1, v0, Lcom/truecaller/data/entity/HistoryEvent;->q:I

    const/4 v1, 0x4

    .line 30
    iput v1, v0, Lcom/truecaller/data/entity/HistoryEvent;->r:I

    .line 31
    iget v1, p0, Le/a/l0/u/d/e;->g:I

    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v1

    .line 32
    iput-wide v1, v0, Lcom/truecaller/data/entity/HistoryEvent;->h:J

    .line 33
    iget v1, p0, Le/a/l0/u/d/e;->f:I

    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 34
    iput-object v1, v0, Lcom/truecaller/data/entity/HistoryEvent;->g:Ljava/lang/Long;

    .line 35
    iget v1, p0, Le/a/l0/u/d/e;->l:I

    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v1

    .line 36
    iput-wide v1, v0, Lcom/truecaller/data/entity/HistoryEvent;->i:J

    .line 37
    iget v1, p0, Le/a/l0/u/d/e;->m:I

    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 38
    iput-object v1, v0, Lcom/truecaller/data/entity/HistoryEvent;->e:Ljava/lang/String;

    .line 39
    iget-object v1, p0, Le/a/l0/u/d/e;->c:Le/a/e4/l;

    invoke-interface {v1}, Le/a/e4/l;->z()Ljava/lang/String;

    move-result-object v1

    .line 40
    iput-object v1, v0, Lcom/truecaller/data/entity/HistoryEvent;->k:Ljava/lang/String;

    .line 41
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 42
    iput-object v1, v0, Lcom/truecaller/data/entity/HistoryEvent;->a:Ljava/lang/String;

    .line 43
    iget v1, p0, Le/a/l0/u/d/e;->n:I

    if-ltz v1, :cond_c

    .line 44
    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v1

    .line 45
    iput v1, v0, Lcom/truecaller/data/entity/HistoryEvent;->l:I

    .line 46
    :cond_c
    iget v1, p0, Le/a/l0/u/d/e;->o:I

    if-ltz v1, :cond_d

    .line 47
    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v1

    .line 48
    iput v1, v0, Lcom/truecaller/data/entity/HistoryEvent;->o:I

    .line 49
    :cond_d
    iget v1, p0, Le/a/l0/u/d/e;->p:I

    if-ltz v1, :cond_e

    .line 50
    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v1

    .line 51
    iput v1, v0, Lcom/truecaller/data/entity/HistoryEvent;->m:I

    .line 52
    :cond_e
    iget v1, p0, Le/a/l0/u/d/e;->q:I

    if-ltz v1, :cond_f

    .line 53
    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 54
    iput-object v1, v0, Lcom/truecaller/data/entity/HistoryEvent;->s:Ljava/lang/String;

    :cond_f
    return-object v0
.end method

.method public z()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/l0/u/d/e;->c:Le/a/e4/l;

    invoke-interface {v0}, Le/a/e4/l;->z()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
