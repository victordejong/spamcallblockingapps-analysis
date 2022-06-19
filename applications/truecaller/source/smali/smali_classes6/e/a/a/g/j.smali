.class public final Le/a/a/g/j;
.super Landroid/database/CursorWrapper;
.source "SourceFile"

# interfaces
.implements Le/a/a/g/j0/c;


# instance fields
.field public final A:I

.field public final B:I

.field public final C:I

.field public final D:I

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
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 8

    const-string v0, "cursor"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    const-string v0, "_id"

    .line 2
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j;->a:I

    const-string v0, "type"

    .line 3
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j;->b:I

    const-string v0, "entity_type"

    .line 4
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j;->c:I

    const-string v0, "entity_info1"

    .line 5
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Le/a/a/g/j;->d:I

    .line 6
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Le/a/a/g/j;->e:I

    const-string v1, "entity_info2"

    .line 7
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Le/a/a/g/j;->f:I

    const-string v2, "entity_info3"

    .line 8
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Le/a/a/g/j;->g:I

    const-string v3, "entity_info5"

    .line 9
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Le/a/a/g/j;->h:I

    const-string v4, "entity_info6"

    .line 10
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Le/a/a/g/j;->i:I

    const-string v5, "entity_info4"

    .line 11
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Le/a/a/g/j;->j:I

    .line 12
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Le/a/a/g/j;->k:I

    .line 13
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Le/a/a/g/j;->l:I

    const-string v6, "entity_info7"

    .line 14
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Le/a/a/g/j;->m:I

    .line 15
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Le/a/a/g/j;->n:I

    .line 16
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Le/a/a/g/j;->o:I

    .line 17
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Le/a/a/g/j;->p:I

    .line 18
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Le/a/a/g/j;->q:I

    .line 19
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Le/a/a/g/j;->r:I

    .line 20
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Le/a/a/g/j;->s:I

    .line 21
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Le/a/a/g/j;->t:I

    .line 22
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j;->u:I

    .line 23
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j;->v:I

    .line 24
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j;->w:I

    .line 25
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j;->x:I

    .line 26
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j;->y:I

    .line 27
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j;->z:I

    .line 28
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j;->A:I

    .line 29
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j;->B:I

    .line 30
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j;->C:I

    .line 31
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/g/j;->D:I

    return-void
.end method


# virtual methods
.method public getEntity()Lcom/truecaller/messaging/data/types/Entity;
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    sget-object v1, Lcom/truecaller/messaging/data/types/Entity;->h:Lcom/truecaller/messaging/data/types/Entity$a;

    iget v2, v0, Le/a/a/g/j;->a:I

    invoke-virtual {v0, v2}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v2

    .line 2
    iget v4, v0, Le/a/a/g/j;->b:I

    invoke-virtual {v0, v4}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3
    iget v5, v0, Le/a/a/g/j;->c:I

    invoke-virtual {v0, v5}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v5

    const/4 v6, -0x1

    const-wide/16 v7, -0x1

    const/4 v9, 0x0

    const-string v10, "getString(binaryEntityContent)"

    const-string v11, "mimeType"

    packed-switch v5, :pswitch_data_0

    .line 4
    :pswitch_0
    invoke-static {v4, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_f

    .line 5
    :pswitch_1
    invoke-static {v4, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget v5, v0, Le/a/a/g/j;->e:I

    invoke-virtual {v0, v5}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget v5, v0, Le/a/a/g/j;->f:I

    invoke-virtual {v0, v5}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-static {v5}, Ls1/f0/q;->h(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_0

    :cond_0
    move v5, v9

    :goto_0
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 8
    iget v13, v0, Le/a/a/g/j;->g:I

    invoke-virtual {v0, v13}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_1

    invoke-static {v13}, Ls1/f0/q;->j(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v13

    if-eqz v13, :cond_1

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    :cond_1
    move-wide v13, v7

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 9
    iget v7, v0, Le/a/a/g/j;->B:I

    invoke-virtual {v0, v7}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 10
    iget v7, v0, Le/a/a/g/j;->C:I

    invoke-virtual {v0, v7}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "getString(locationEntityLatitude)"

    invoke-static {v7, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7}, Ls1/f0/q;->f(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v7

    const-wide/16 v22, 0x0

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    move-wide/from16 v25, v7

    goto :goto_1

    :cond_2
    move-wide/from16 v25, v22

    .line 11
    :goto_1
    iget v7, v0, Le/a/a/g/j;->D:I

    invoke-virtual {v0, v7}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "getString(locationEntityLongitude)"

    invoke-static {v7, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7}, Ls1/f0/q;->f(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    move-wide/from16 v22, v7

    :cond_3
    const/16 v24, 0x7ef0

    move v7, v9

    move v8, v10

    move v9, v11

    move v10, v12

    move-wide v11, v13

    move-object v13, v15

    move-object/from16 v14, v16

    move-object/from16 v15, v17

    move-object/from16 v16, v18

    move/from16 v17, v19

    move-object/from16 v18, v20

    move-object/from16 v19, v21

    move-wide/from16 v20, v25

    .line 12
    invoke-static/range {v1 .. v24}, Lcom/truecaller/messaging/data/types/Entity$a;->a(Lcom/truecaller/messaging/data/types/Entity$a;JLjava/lang/String;ILjava/lang/String;ZIIIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;DDI)Lcom/truecaller/messaging/data/types/Entity;

    move-result-object v1

    goto/16 :goto_11

    .line 13
    :pswitch_2
    invoke-static {v4, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget v5, v0, Le/a/a/g/j;->y:I

    invoke-virtual {v0, v5}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v15

    const-string v5, "getString(linkEntityFileName)"

    invoke-static {v15, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iget v5, v0, Le/a/a/g/j;->z:I

    invoke-virtual {v0, v5}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string v5, "getString(linkEntitySource)"

    invoke-static {v14, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iget v5, v0, Le/a/a/g/j;->A:I

    invoke-virtual {v0, v5}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v5, "getString(linkEntityDescription)"

    invoke-static {v13, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget v5, v0, Le/a/a/g/j;->x:I

    invoke-virtual {v0, v5}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v5, "getString(linkEntityThumbnail)"

    invoke-static {v9, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iget v5, v0, Le/a/a/g/j;->v:I

    invoke-virtual {v0, v5}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-static {v5}, Ls1/f0/q;->h(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move v8, v5

    goto :goto_2

    :cond_4
    move v8, v6

    .line 19
    :goto_2
    iget v5, v0, Le/a/a/g/j;->w:I

    invoke-virtual {v0, v5}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-static {v5}, Ls1/f0/q;->h(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move/from16 v18, v5

    goto :goto_3

    :cond_5
    move/from16 v18, v6

    :goto_3
    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 20
    iget v5, v0, Le/a/a/g/j;->u:I

    invoke-virtual {v0, v5}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    const-string v7, "getString(linkEntityContent)"

    invoke-static {v5, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const v24, 0x3b194

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    move-object/from16 v25, v9

    move/from16 v9, v18

    move-object/from16 v18, v13

    move-object/from16 v13, v25

    .line 21
    invoke-static/range {v1 .. v24}, Lcom/truecaller/messaging/data/types/Entity$a;->a(Lcom/truecaller/messaging/data/types/Entity$a;JLjava/lang/String;ILjava/lang/String;ZIIIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;DDI)Lcom/truecaller/messaging/data/types/Entity;

    move-result-object v1

    goto/16 :goto_11

    .line 22
    :pswitch_3
    invoke-static {v4, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iget v5, v0, Le/a/a/g/j;->e:I

    invoke-virtual {v0, v5}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iget v5, v0, Le/a/a/g/j;->f:I

    invoke-virtual {v0, v5}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-static {v5}, Ls1/f0/q;->h(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_4

    :cond_6
    move v5, v9

    :goto_4
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    .line 25
    iget v13, v0, Le/a/a/g/j;->g:I

    invoke-virtual {v0, v13}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_7

    invoke-static {v13}, Ls1/f0/q;->j(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v13

    if-eqz v13, :cond_7

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    :cond_7
    move-wide v15, v7

    .line 26
    iget v7, v0, Le/a/a/g/j;->q:I

    invoke-virtual {v0, v7}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v7, "getString(vCardEntityName)"

    invoke-static {v8, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v17, 0x0

    const/16 v25, 0x0

    .line 27
    iget v7, v0, Le/a/a/g/j;->r:I

    invoke-virtual {v0, v7}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_8

    invoke-static {v7}, Ls1/f0/q;->h(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_8

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    :cond_8
    move/from16 v26, v6

    .line 28
    iget v6, v0, Le/a/a/g/j;->s:I

    invoke-virtual {v0, v6}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v13, v6

    const-string v7, "getString(vCardEntityThumbnail)"

    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const v24, 0x3ccf0

    move-object v6, v11

    move v7, v9

    move-object/from16 v27, v8

    move v8, v10

    move v9, v12

    move v10, v14

    move-wide v11, v15

    move-object/from16 v14, v17

    move-object/from16 v15, v25

    move-object/from16 v16, v27

    move/from16 v17, v26

    .line 29
    invoke-static/range {v1 .. v24}, Lcom/truecaller/messaging/data/types/Entity$a;->a(Lcom/truecaller/messaging/data/types/Entity$a;JLjava/lang/String;ILjava/lang/String;ZIIIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;DDI)Lcom/truecaller/messaging/data/types/Entity;

    move-result-object v1

    goto/16 :goto_11

    .line 30
    :pswitch_4
    invoke-static {v4, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iget v5, v0, Le/a/a/g/j;->e:I

    invoke-virtual {v0, v5}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iget v5, v0, Le/a/a/g/j;->f:I

    invoke-virtual {v0, v5}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_9

    invoke-static {v5}, Ls1/f0/q;->h(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_9

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_5

    :cond_9
    move v5, v9

    :goto_5
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 33
    iget v13, v0, Le/a/a/g/j;->g:I

    invoke-virtual {v0, v13}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_a

    invoke-static {v13}, Ls1/f0/q;->j(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v13

    if-eqz v13, :cond_a

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    :cond_a
    move-wide/from16 v25, v7

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 34
    iget v7, v0, Le/a/a/g/j;->t:I

    invoke-virtual {v0, v7}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v15, v7

    const-string v8, "getString(docEntityFileName)"

    invoke-static {v7, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const v24, 0x3f6f0

    move v7, v9

    move v8, v10

    move v9, v11

    move v10, v12

    move-wide/from16 v11, v25

    .line 35
    invoke-static/range {v1 .. v24}, Lcom/truecaller/messaging/data/types/Entity$a;->a(Lcom/truecaller/messaging/data/types/Entity$a;JLjava/lang/String;ILjava/lang/String;ZIIIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;DDI)Lcom/truecaller/messaging/data/types/Entity;

    move-result-object v1

    goto/16 :goto_11

    .line 36
    :pswitch_5
    invoke-static {v4, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iget v5, v0, Le/a/a/g/j;->e:I

    invoke-virtual {v0, v5}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget v5, v0, Le/a/a/g/j;->f:I

    invoke-virtual {v0, v5}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_b

    invoke-static {v5}, Ls1/f0/q;->h(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_b

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_6

    :cond_b
    move v5, v9

    :goto_6
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    .line 39
    iget v13, v0, Le/a/a/g/j;->g:I

    invoke-virtual {v0, v13}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_c

    invoke-static {v13}, Ls1/f0/q;->j(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v13

    if-eqz v13, :cond_c

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    :cond_c
    move-wide/from16 v25, v7

    .line 40
    iget v7, v0, Le/a/a/g/j;->o:I

    invoke-virtual {v0, v7}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_d

    invoke-static {v7}, Ls1/f0/q;->h(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_d

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    :cond_d
    move/from16 v27, v6

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const v24, 0x3fe70

    move-object v6, v11

    move v7, v9

    move v8, v10

    move v9, v12

    move/from16 v10, v27

    move-wide/from16 v11, v25

    .line 41
    invoke-static/range {v1 .. v24}, Lcom/truecaller/messaging/data/types/Entity$a;->a(Lcom/truecaller/messaging/data/types/Entity$a;JLjava/lang/String;ILjava/lang/String;ZIIIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;DDI)Lcom/truecaller/messaging/data/types/Entity;

    move-result-object v1

    goto/16 :goto_11

    .line 42
    :pswitch_6
    invoke-static {v4, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iget v5, v0, Le/a/a/g/j;->e:I

    invoke-virtual {v0, v5}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iget v5, v0, Le/a/a/g/j;->n:I

    invoke-virtual {v0, v5}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v5, "getString(videoEntityThumbnail)"

    invoke-static {v13, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iget v5, v0, Le/a/a/g/j;->k:I

    invoke-virtual {v0, v5}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_e

    invoke-static {v5}, Ls1/f0/q;->h(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_e

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move v10, v5

    goto :goto_7

    :cond_e
    move v10, v6

    .line 46
    :goto_7
    iget v5, v0, Le/a/a/g/j;->l:I

    invoke-virtual {v0, v5}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_f

    invoke-static {v5}, Ls1/f0/q;->h(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_f

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move v12, v5

    goto :goto_8

    :cond_f
    move v12, v6

    .line 47
    :goto_8
    iget v5, v0, Le/a/a/g/j;->f:I

    invoke-virtual {v0, v5}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_10

    invoke-static {v5}, Ls1/f0/q;->h(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_10

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_9

    :cond_10
    move v5, v9

    .line 48
    :goto_9
    iget v9, v0, Le/a/a/g/j;->g:I

    invoke-virtual {v0, v9}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_11

    invoke-static {v9}, Ls1/f0/q;->j(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    if-eqz v9, :cond_11

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    :cond_11
    move-wide/from16 v25, v7

    .line 49
    iget v7, v0, Le/a/a/g/j;->m:I

    invoke-virtual {v0, v7}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_12

    invoke-static {v7}, Ls1/f0/q;->h(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_12

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    :cond_12
    move/from16 v27, v6

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const v24, 0x3fc10

    const/4 v7, 0x0

    move-object v6, v11

    move v8, v10

    move v9, v12

    move/from16 v10, v27

    move-wide/from16 v11, v25

    .line 50
    invoke-static/range {v1 .. v24}, Lcom/truecaller/messaging/data/types/Entity$a;->a(Lcom/truecaller/messaging/data/types/Entity$a;JLjava/lang/String;ILjava/lang/String;ZIIIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;DDI)Lcom/truecaller/messaging/data/types/Entity;

    move-result-object v1

    goto/16 :goto_11

    .line 51
    :pswitch_7
    invoke-static {v4, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iget v5, v0, Le/a/a/g/j;->e:I

    invoke-virtual {v0, v5}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget v5, v0, Le/a/a/g/j;->j:I

    invoke-virtual {v0, v5}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v5, "getString(imageEntityThumbnail)"

    invoke-static {v13, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iget v5, v0, Le/a/a/g/j;->h:I

    invoke-virtual {v0, v5}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_13

    invoke-static {v5}, Ls1/f0/q;->h(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_13

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move v10, v5

    goto :goto_a

    :cond_13
    move v10, v6

    .line 55
    :goto_a
    iget v5, v0, Le/a/a/g/j;->i:I

    invoke-virtual {v0, v5}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_14

    invoke-static {v5}, Ls1/f0/q;->h(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_14

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move v12, v5

    goto :goto_b

    :cond_14
    move v12, v6

    :goto_b
    const/4 v14, 0x0

    .line 56
    iget v5, v0, Le/a/a/g/j;->f:I

    invoke-virtual {v0, v5}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_15

    invoke-static {v5}, Ls1/f0/q;->h(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_15

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_c

    :cond_15
    move v5, v9

    .line 57
    :goto_c
    iget v6, v0, Le/a/a/g/j;->g:I

    invoke-virtual {v0, v6}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_16

    invoke-static {v6}, Ls1/f0/q;->j(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    if-eqz v6, :cond_16

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-wide/from16 v25, v6

    goto :goto_d

    :cond_16
    move-wide/from16 v25, v7

    .line 58
    :goto_d
    invoke-virtual {v1, v4}, Lcom/truecaller/messaging/data/types/Entity$a;->i(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_17

    iget v6, v0, Le/a/a/g/j;->p:I

    invoke-virtual {v0, v6}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_e

    :cond_17
    const-string v6, ""

    :goto_e
    move-object v9, v6

    const-string v6, "if (Entity.isTenorGif(ty\u2026rGifEntitySource) else \"\""

    invoke-static {v9, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const v24, 0x3f890

    const/4 v7, 0x0

    move-object v6, v11

    move v8, v10

    move-object/from16 v27, v9

    move v9, v12

    move v10, v14

    move-wide/from16 v11, v25

    move-object/from16 v14, v27

    .line 59
    invoke-static/range {v1 .. v24}, Lcom/truecaller/messaging/data/types/Entity$a;->a(Lcom/truecaller/messaging/data/types/Entity$a;JLjava/lang/String;ILjava/lang/String;ZIIIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;DDI)Lcom/truecaller/messaging/data/types/Entity;

    move-result-object v1

    goto/16 :goto_11

    .line 60
    :pswitch_8
    invoke-static {v4, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    iget v5, v0, Le/a/a/g/j;->d:I

    invoke-virtual {v0, v5}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    const-string v7, "getString(textEntityContent)"

    invoke-static {v5, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const v24, 0x3fff4

    invoke-static/range {v1 .. v24}, Lcom/truecaller/messaging/data/types/Entity$a;->a(Lcom/truecaller/messaging/data/types/Entity$a;JLjava/lang/String;ILjava/lang/String;ZIIIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;DDI)Lcom/truecaller/messaging/data/types/Entity;

    move-result-object v1

    goto :goto_11

    .line 62
    :goto_f
    iget v5, v0, Le/a/a/g/j;->e:I

    invoke-virtual {v0, v5}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iget v5, v0, Le/a/a/g/j;->f:I

    invoke-virtual {v0, v5}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_18

    invoke-static {v5}, Ls1/f0/q;->h(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_18

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_10

    :cond_18
    move v5, v9

    :goto_10
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 64
    iget v13, v0, Le/a/a/g/j;->g:I

    invoke-virtual {v0, v13}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_19

    invoke-static {v13}, Ls1/f0/q;->j(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v13

    if-eqz v13, :cond_19

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    :cond_19
    move-wide/from16 v25, v7

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const v24, 0x3fef0

    move v7, v9

    move v8, v10

    move v9, v11

    move v10, v12

    move-wide/from16 v11, v25

    .line 65
    invoke-static/range {v1 .. v24}, Lcom/truecaller/messaging/data/types/Entity$a;->a(Lcom/truecaller/messaging/data/types/Entity$a;JLjava/lang/String;ILjava/lang/String;ZIIIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;DDI)Lcom/truecaller/messaging/data/types/Entity;

    move-result-object v1

    :goto_11
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
