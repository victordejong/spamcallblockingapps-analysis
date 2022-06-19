.class public final Le/a/l0/u/d/a;
.super Landroid/database/CursorWrapper;
.source "SourceFile"


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

.field public final s:Le/a/k3/j/d;

.field public final t:Le/a/k3/c;

.field public final u:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/truecaller/data/entity/Contact;",
            ">;"
        }
    .end annotation
.end field

.field public final v:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/truecaller/data/entity/HistoryEvent;",
            ">;"
        }
    .end annotation
.end field

.field public final w:Z

.field public final x:Le/a/k3/l/f;

.field public final y:Le/a/h/b/w;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;Le/a/k3/j/d;Le/a/k3/c;Ljava/util/HashMap;Ljava/util/HashMap;ZLe/a/k3/l/f;Le/a/h/b/w;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Le/a/k3/j/d;",
            "Le/a/k3/c;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/truecaller/data/entity/Contact;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/truecaller/data/entity/HistoryEvent;",
            ">;Z",
            "Le/a/k3/l/f;",
            "Le/a/h/b/w;",
            ")V"
        }
    .end annotation

    const-string v0, "cursor"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contactReader"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metaInfoReader"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contactCache"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "historyCache"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "numberProvider"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dialerPerformanceAnalytics"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    iput-object p2, p0, Le/a/l0/u/d/a;->s:Le/a/k3/j/d;

    iput-object p3, p0, Le/a/l0/u/d/a;->t:Le/a/k3/c;

    iput-object p4, p0, Le/a/l0/u/d/a;->u:Ljava/util/HashMap;

    iput-object p5, p0, Le/a/l0/u/d/a;->v:Ljava/util/HashMap;

    iput-boolean p6, p0, Le/a/l0/u/d/a;->w:Z

    iput-object p7, p0, Le/a/l0/u/d/a;->x:Le/a/k3/l/f;

    iput-object p8, p0, Le/a/l0/u/d/a;->y:Le/a/h/b/w;

    const-string p2, "_id"

    .line 2
    invoke-virtual {p0, p2}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Le/a/l0/u/d/a;->a:I

    const-string p2, "tc_id"

    .line 3
    invoke-virtual {p0, p2}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Le/a/l0/u/d/a;->b:I

    const-string p2, "normalized_number"

    .line 4
    invoke-virtual {p0, p2}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Le/a/l0/u/d/a;->c:I

    const-string p2, "raw_number"

    .line 5
    invoke-virtual {p0, p2}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Le/a/l0/u/d/a;->d:I

    const-string p2, "number_type"

    .line 6
    invoke-virtual {p0, p2}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Le/a/l0/u/d/a;->e:I

    const-string p2, "country_code"

    .line 7
    invoke-virtual {p0, p2}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Le/a/l0/u/d/a;->f:I

    const-string p2, "type"

    .line 8
    invoke-virtual {p0, p2}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Le/a/l0/u/d/a;->g:I

    const-string p2, "action"

    .line 9
    invoke-virtual {p0, p2}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Le/a/l0/u/d/a;->h:I

    const-string p2, "filter_source"

    .line 10
    invoke-virtual {p0, p2}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Le/a/l0/u/d/a;->i:I

    const-string p2, "timestamp"

    .line 11
    invoke-virtual {p0, p2}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Le/a/l0/u/d/a;->j:I

    const-string p2, "subscription_id"

    .line 12
    invoke-virtual {p0, p2}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Le/a/l0/u/d/a;->k:I

    const-string p2, "feature"

    .line 13
    invoke-virtual {p0, p2}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Le/a/l0/u/d/a;->l:I

    const-string p2, "subscription_component_name"

    .line 14
    invoke-virtual {p0, p2}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Le/a/l0/u/d/a;->m:I

    const-string p2, "call_log_id"

    .line 15
    invoke-virtual {p0, p2}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Le/a/l0/u/d/a;->n:I

    const-string p2, "tc_flag"

    .line 16
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Le/a/l0/u/d/a;->o:I

    const-string p2, "spam_categories"

    .line 17
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/l0/u/d/a;->p:I

    const-string p1, "history_aggregated_contact_tc_id"

    .line 18
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/l0/u/d/a;->q:I

    const-string p1, "contact_name"

    .line 19
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/l0/u/d/a;->r:I

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Le/m/f/a/j$d;)Lcom/truecaller/data/entity/Contact;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/l0/u/d/a;->y:Le/a/h/b/w;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Le/a/h/b/w;->c(Z)V

    .line 2
    iget-object v0, p0, Le/a/l0/u/d/a;->s:Le/a/k3/j/d;

    invoke-virtual {v0, p0}, Le/a/k3/j/d;->g(Landroid/database/Cursor;)Lcom/truecaller/data/entity/Contact;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcom/truecaller/data/entity/Contact;

    invoke-direct {v0}, Lcom/truecaller/data/entity/Contact;-><init>()V

    .line 4
    invoke-virtual {v0, p1}, Lcom/truecaller/data/entity/Contact;->setTcId(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Le/a/m0/a1$j;->b()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 6
    iput-object p1, v0, Lcom/truecaller/data/entity/Contact;->i:Landroid/net/Uri;

    .line 7
    iget-object p1, v0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    check-cast p1, Lcom/truecaller/data/dto/ContactDto$Contact;

    iput-wide p4, p1, Lcom/truecaller/data/dto/ContactDto$Contact;->searchTime:J

    :goto_0
    const-string p1, "contactReader.getFromCur\u2026p\n            }\n        }"

    .line 8
    invoke-static {v0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget p1, p0, Le/a/l0/u/d/a;->p:I

    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-eqz p1, :cond_3

    .line 10
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p4

    if-lez p4, :cond_1

    move p4, p3

    goto :goto_1

    :cond_1
    move p4, v1

    :goto_1
    if-eqz p4, :cond_2

    goto :goto_2

    :cond_2
    move-object p1, p2

    :goto_2
    if-eqz p1, :cond_3

    .line 11
    new-instance p4, Lcom/truecaller/data/entity/SpamData;

    iget-object p5, p0, Le/a/l0/u/d/a;->t:Le/a/k3/c;

    invoke-virtual {p5, p1}, Le/a/k3/c;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p4, p1}, Lcom/truecaller/data/entity/SpamData;-><init>(Ljava/util/List;)V

    .line 12
    iput-object p4, v0, Lcom/truecaller/data/entity/Contact;->x:Lcom/truecaller/data/entity/SpamData;

    .line 13
    :cond_3
    invoke-static {p7}, Le/a/b0/q/c0;->f(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "com.truecaller.voip.manager.GROUP_VOIP"

    invoke-static {p1, p9}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, p3

    if-eqz p1, :cond_4

    move p1, p3

    goto :goto_3

    :cond_4
    move p1, v1

    :goto_3
    if-eqz p1, :cond_5

    move-object p1, p2

    goto :goto_6

    :cond_5
    if-eqz p6, :cond_8

    .line 14
    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_6

    move p1, p3

    goto :goto_4

    :cond_6
    move p1, v1

    :goto_4
    if-nez p1, :cond_7

    move-object p1, p6

    goto :goto_5

    :cond_7
    move-object p1, p2

    :goto_5
    if-eqz p1, :cond_8

    goto :goto_6

    :cond_8
    move-object p1, p7

    .line 15
    :goto_6
    iget-object p4, p0, Le/a/l0/u/d/a;->x:Le/a/k3/l/f;

    new-array p3, p3, [Ljava/lang/String;

    aput-object p1, p3, v1

    invoke-interface {p4, p3}, Le/a/k3/l/f;->a([Ljava/lang/String;)Lcom/truecaller/data/entity/Number;

    move-result-object p1

    if-eqz p1, :cond_9

    :goto_7
    move-object p2, p1

    goto :goto_8

    .line 16
    :cond_9
    invoke-static {p6, p7, p8}, Lcom/truecaller/data/entity/Number;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/truecaller/data/entity/Number;

    move-result-object p1

    if-eqz p1, :cond_a

    const-string p2, "this"

    .line 17
    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p10}, Lcom/truecaller/data/entity/Number;->v(Le/m/f/a/j$d;)V

    goto :goto_7

    :cond_a
    :goto_8
    if-eqz p2, :cond_b

    .line 18
    invoke-virtual {v0}, Lcom/truecaller/data/entity/Contact;->getTcId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/truecaller/data/entity/Number;->setTcId(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0, p2}, Lcom/truecaller/data/entity/Contact;->d(Lcom/truecaller/data/entity/Number;)V

    :cond_b
    return-object v0
.end method

.method public final d(II)I
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result p2

    :goto_0
    return p2
.end method

.method public final n()Lcom/truecaller/data/entity/HistoryEvent;
    .locals 20

    move-object/from16 v11, p0

    .line 1
    sget-object v0, Ln3/k/e/h;->b:Ljava/lang/reflect/Method;

    const-string v0, "EventsCursor: read"

    .line 2
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 3
    iget v0, v11, Le/a/l0/u/d/a;->a:I

    invoke-virtual {v11, v0}, Landroid/database/CursorWrapper;->isNull(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_11

    iget v0, v11, Le/a/l0/u/d/a;->g:I

    invoke-virtual {v11, v0}, Landroid/database/CursorWrapper;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_a

    .line 4
    :cond_0
    iget v0, v11, Le/a/l0/u/d/a;->a:I

    invoke-virtual {v11, v0}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v12

    .line 5
    iget v0, v11, Le/a/l0/u/d/a;->q:I

    invoke-virtual {v11, v0}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v14, 0x1

    if-eqz v0, :cond_1

    invoke-static {v0}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/2addr v2, v14

    if-eqz v2, :cond_1

    move-object v15, v0

    goto :goto_0

    :cond_1
    move-object v15, v1

    .line 6
    :goto_0
    iget-object v0, v11, Le/a/l0/u/d/a;->v:Ljava/util/HashMap;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/truecaller/data/entity/HistoryEvent;

    const-string v0, "numberType"

    const-string v2, "it"

    const/4 v3, 0x0

    if-eqz v10, :cond_9

    .line 7
    iget-object v4, v10, Lcom/truecaller/data/entity/HistoryEvent;->f:Lcom/truecaller/data/entity/Contact;

    if-eqz v4, :cond_2

    .line 8
    invoke-virtual {v4}, Lcom/truecaller/data/entity/Contact;->getTcId()Ljava/lang/String;

    .line 9
    :cond_2
    iget-object v4, v11, Le/a/l0/u/d/a;->y:Le/a/h/b/w;

    invoke-interface {v4, v14}, Le/a/h/b/w;->b(Z)V

    .line 10
    iput-boolean v3, v10, Lcom/truecaller/data/entity/HistoryEvent;->w:Z

    .line 11
    iget-boolean v4, v11, Le/a/l0/u/d/a;->w:Z

    if-nez v4, :cond_3

    .line 12
    iget-object v0, v11, Le/a/l0/u/d/a;->y:Le/a/h/b/w;

    invoke-interface {v0}, Le/a/h/b/w;->g()V

    goto :goto_1

    :cond_3
    if-nez v15, :cond_4

    .line 13
    iget-object v0, v11, Le/a/l0/u/d/a;->y:Le/a/h/b/w;

    invoke-interface {v0}, Le/a/h/b/w;->g()V

    :goto_1
    move-object v12, v10

    goto/16 :goto_4

    .line 14
    :cond_4
    iget-object v4, v11, Le/a/l0/u/d/a;->u:Ljava/util/HashMap;

    invoke-virtual {v4, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/truecaller/data/entity/Contact;

    if-eqz v4, :cond_8

    .line 15
    invoke-static {v4, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/truecaller/data/entity/Contact;->G()Ljava/lang/String;

    move-result-object v2

    iget v5, v11, Le/a/l0/u/d/a;->r:I

    invoke-virtual {v11, v5}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v3, v14

    goto :goto_2

    .line 16
    :cond_5
    iget-object v2, v11, Le/a/l0/u/d/a;->y:Le/a/h/b/w;

    invoke-interface {v2}, Le/a/h/b/w;->a()V

    :goto_2
    if-eqz v3, :cond_6

    move-object v1, v4

    :cond_6
    if-eqz v1, :cond_8

    .line 17
    iget-object v0, v11, Le/a/l0/u/d/a;->y:Le/a/h/b/w;

    invoke-interface {v0, v14}, Le/a/h/b/w;->c(Z)V

    .line 18
    iget-object v0, v10, Lcom/truecaller/data/entity/HistoryEvent;->f:Lcom/truecaller/data/entity/Contact;

    .line 19
    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v14

    if-eqz v0, :cond_7

    .line 20
    iput-boolean v14, v10, Lcom/truecaller/data/entity/HistoryEvent;->w:Z

    :cond_7
    move-object v12, v10

    goto :goto_3

    .line 21
    :cond_8
    invoke-virtual {v10}, Lcom/truecaller/data/entity/Entity;->getTcId()Ljava/lang/String;

    move-result-object v1

    .line 22
    iget-wide v4, v10, Lcom/truecaller/data/entity/HistoryEvent;->h:J

    .line 23
    iget-object v6, v10, Lcom/truecaller/data/entity/HistoryEvent;->b:Ljava/lang/String;

    .line 24
    iget-object v7, v10, Lcom/truecaller/data/entity/HistoryEvent;->c:Ljava/lang/String;

    .line 25
    iget-object v8, v10, Lcom/truecaller/data/entity/HistoryEvent;->d:Ljava/lang/String;

    .line 26
    iget-object v9, v10, Lcom/truecaller/data/entity/HistoryEvent;->s:Ljava/lang/String;

    .line 27
    iget-object v2, v10, Lcom/truecaller/data/entity/HistoryEvent;->p:Le/m/f/a/j$d;

    .line 28
    invoke-static {v2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v16, v2

    move-wide v2, v12

    move-object v12, v10

    move-object/from16 v10, v16

    .line 29
    invoke-virtual/range {v0 .. v10}, Le/a/l0/u/d/a;->b(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Le/m/f/a/j$d;)Lcom/truecaller/data/entity/Contact;

    move-result-object v1

    .line 30
    invoke-virtual {v1}, Lcom/truecaller/data/entity/Contact;->G()Ljava/lang/String;

    .line 31
    iget-object v0, v11, Le/a/l0/u/d/a;->u:Ljava/util/HashMap;

    invoke-interface {v0, v15, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iput-boolean v14, v12, Lcom/truecaller/data/entity/HistoryEvent;->w:Z

    :goto_3
    const-string v0, "contactCache[aggregatedC\u2026nged = true\n            }"

    .line 33
    invoke-static {v1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iput-object v1, v12, Lcom/truecaller/data/entity/HistoryEvent;->f:Lcom/truecaller/data/entity/Contact;

    :goto_4
    return-object v12

    .line 35
    :cond_9
    iget-object v4, v11, Le/a/l0/u/d/a;->y:Le/a/h/b/w;

    invoke-interface {v4, v3}, Le/a/h/b/w;->b(Z)V

    .line 36
    new-instance v10, Lcom/truecaller/data/entity/HistoryEvent;

    invoke-direct {v10, v1}, Lcom/truecaller/data/entity/HistoryEvent;-><init>(Lcom/truecaller/data/entity/HistoryEvent$a;)V

    .line 37
    iget v4, v11, Le/a/l0/u/d/a;->b:I

    invoke-virtual {v11, v4}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 38
    iget v5, v11, Le/a/l0/u/d/a;->c:I

    invoke-virtual {v11, v5}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 39
    iget v5, v11, Le/a/l0/u/d/a;->d:I

    invoke-virtual {v11, v5}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 40
    iget v5, v11, Le/a/l0/u/d/a;->f:I

    invoke-virtual {v11, v5}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 41
    iget v5, v11, Le/a/l0/u/d/a;->e:I

    invoke-virtual {v11, v5}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget-object v9, Le/m/f/a/j$d;->l:Le/m/f/a/j$d;

    invoke-static {v5, v9}, Le/a/b0/q/c0;->l(Ljava/lang/String;Le/m/f/a/j$d;)Le/m/f/a/j$d;

    move-result-object v9

    .line 42
    iget v5, v11, Le/a/l0/u/d/a;->j:I

    move-object/from16 v17, v15

    invoke-virtual {v11, v5}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v14

    .line 43
    iget v5, v11, Le/a/l0/u/d/a;->m:I

    invoke-virtual {v11, v5}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 44
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 45
    invoke-virtual {v10, v1}, Lcom/truecaller/data/entity/Entity;->setId(Ljava/lang/Long;)V

    .line 46
    iput-object v6, v10, Lcom/truecaller/data/entity/HistoryEvent;->b:Ljava/lang/String;

    .line 47
    iput-object v7, v10, Lcom/truecaller/data/entity/HistoryEvent;->c:Ljava/lang/String;

    .line 48
    iput-object v9, v10, Lcom/truecaller/data/entity/HistoryEvent;->p:Le/m/f/a/j$d;

    .line 49
    iput-object v8, v10, Lcom/truecaller/data/entity/HistoryEvent;->d:Ljava/lang/String;

    .line 50
    iget v1, v11, Le/a/l0/u/d/a;->g:I

    invoke-virtual {v11, v1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v1

    .line 51
    iput v1, v10, Lcom/truecaller/data/entity/HistoryEvent;->q:I

    .line 52
    iget v1, v11, Le/a/l0/u/d/a;->h:I

    invoke-virtual {v11, v1, v3}, Le/a/l0/u/d/a;->d(II)I

    move-result v1

    .line 53
    iput v1, v10, Lcom/truecaller/data/entity/HistoryEvent;->r:I

    .line 54
    iget v1, v11, Le/a/l0/u/d/a;->i:I

    invoke-virtual {v11, v1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 55
    iput-object v1, v10, Lcom/truecaller/data/entity/HistoryEvent;->u:Ljava/lang/String;

    .line 56
    iput-wide v14, v10, Lcom/truecaller/data/entity/HistoryEvent;->h:J

    .line 57
    iget v1, v11, Le/a/l0/u/d/a;->k:I

    invoke-virtual {v11, v1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_a

    const/4 v2, 0x1

    goto :goto_5

    :cond_a
    move v2, v3

    :goto_5
    if-eqz v2, :cond_b

    goto :goto_6

    :cond_b
    const/4 v1, 0x0

    :goto_6
    if-eqz v1, :cond_c

    goto :goto_7

    :cond_c
    const-string v1, "-1"

    .line 58
    :goto_7
    iput-object v1, v10, Lcom/truecaller/data/entity/HistoryEvent;->k:Ljava/lang/String;

    .line 59
    iget v1, v11, Le/a/l0/u/d/a;->l:I

    invoke-virtual {v11, v1, v3}, Le/a/l0/u/d/a;->d(II)I

    move-result v1

    .line 60
    iput v1, v10, Lcom/truecaller/data/entity/HistoryEvent;->l:I

    .line 61
    iput-object v5, v10, Lcom/truecaller/data/entity/HistoryEvent;->s:Ljava/lang/String;

    .line 62
    iget v1, v11, Le/a/l0/u/d/a;->n:I

    const-wide/16 v18, -0x1

    .line 63
    invoke-virtual {v11, v1}, Landroid/database/CursorWrapper;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_d

    goto :goto_8

    :cond_d
    invoke-virtual {v11, v1}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v18

    .line 64
    :goto_8
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 65
    iput-object v1, v10, Lcom/truecaller/data/entity/HistoryEvent;->g:Ljava/lang/Long;

    .line 66
    iget v1, v11, Le/a/l0/u/d/a;->o:I

    invoke-virtual {v11, v1, v3}, Le/a/l0/u/d/a;->d(II)I

    move-result v1

    .line 67
    iput v1, v10, Lcom/truecaller/data/entity/HistoryEvent;->t:I

    if-eqz v17, :cond_e

    .line 68
    iget-object v1, v11, Le/a/l0/u/d/a;->u:Ljava/util/HashMap;

    move-object/from16 v2, v17

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 69
    iget-object v0, v11, Le/a/l0/u/d/a;->y:Le/a/h/b/w;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Le/a/h/b/w;->c(Z)V

    .line 70
    iget-object v0, v11, Le/a/l0/u/d/a;->u:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/data/entity/Contact;

    move-wide/from16 v16, v12

    move-object v13, v10

    goto :goto_9

    :cond_e
    move-object/from16 v2, v17

    .line 71
    :cond_f
    invoke-static {v9, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object v1, v4

    move-object v4, v2

    move-wide v2, v12

    move-wide/from16 v16, v12

    move-object v12, v4

    move-object v13, v5

    move-wide v4, v14

    move-object v14, v9

    move-object v9, v13

    move-object v13, v10

    move-object v10, v14

    .line 72
    invoke-virtual/range {v0 .. v10}, Le/a/l0/u/d/a;->b(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Le/m/f/a/j$d;)Lcom/truecaller/data/entity/Contact;

    move-result-object v0

    if-eqz v12, :cond_10

    .line 73
    invoke-virtual {v0}, Lcom/truecaller/data/entity/Contact;->G()Ljava/lang/String;

    .line 74
    iget-object v1, v11, Le/a/l0/u/d/a;->u:Ljava/util/HashMap;

    invoke-interface {v1, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    :cond_10
    :goto_9
    iput-object v0, v13, Lcom/truecaller/data/entity/HistoryEvent;->f:Lcom/truecaller/data/entity/Contact;

    .line 76
    iget-object v0, v11, Le/a/l0/u/d/a;->v:Ljava/util/HashMap;

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "historyEvent"

    invoke-static {v13, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object v13

    .line 78
    :cond_11
    :goto_a
    invoke-static {}, Landroid/os/Trace;->endSection()V

    const/4 v0, 0x0

    return-object v0
.end method
