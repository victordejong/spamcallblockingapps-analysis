.class public final Le/a/a/g/j0/p;
.super Landroid/database/CursorWrapper;
.source "SourceFile"

# interfaces
.implements Le/a/a/g/j0/o;


# instance fields
.field public final A:I

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
    .locals 1

    const-string v0, "cursor"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    const-string p1, "message_id"

    .line 2
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/g/j0/p;->a:I

    const-string p1, "message_date"

    .line 3
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/g/j0/p;->b:I

    const-string p1, "message_status"

    .line 4
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/g/j0/p;->c:I

    const-string p1, "message_transport"

    .line 5
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/g/j0/p;->d:I

    const-string p1, "message_important"

    .line 6
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/g/j0/p;->e:I

    const-string p1, "entity_id"

    .line 7
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/g/j0/p;->f:I

    const-string p1, "entity_mime_type"

    .line 8
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/g/j0/p;->g:I

    const-string p1, "entity_content"

    .line 9
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/g/j0/p;->h:I

    const-string p1, "entity_status"

    .line 10
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/g/j0/p;->i:I

    const-string p1, "entity_width"

    .line 11
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/g/j0/p;->j:I

    const-string p1, "entity_height"

    .line 12
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/g/j0/p;->k:I

    const-string p1, "entity_duration"

    .line 13
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/g/j0/p;->l:I

    const-string p1, "entity_thumbnail"

    .line 14
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/g/j0/p;->m:I

    const-string p1, "entity_filename"

    .line 15
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/g/j0/p;->n:I

    const-string p1, "entity_vcard_name"

    .line 16
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/g/j0/p;->o:I

    const-string p1, "entity_vcard_contacts_count"

    .line 17
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/g/j0/p;->p:I

    const-string p1, "entity_description"

    .line 18
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/g/j0/p;->q:I

    const-string p1, "entity_source"

    .line 19
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/g/j0/p;->r:I

    const-string p1, "entity_text"

    .line 20
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/g/j0/p;->s:I

    const-string p1, "entity_link"

    .line 21
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/g/j0/p;->t:I

    const-string p1, "entity_size"

    .line 22
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/g/j0/p;->u:I

    const-string p1, "participant_type"

    .line 23
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/g/j0/p;->v:I

    const-string p1, "participant_normalized_destination"

    .line 24
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/g/j0/p;->w:I

    const-string p1, "participant_name"

    .line 25
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/g/j0/p;->x:I

    const-string p1, "participant_peer_id"

    .line 26
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/g/j0/p;->y:I

    const-string p1, "message_raw_message_id"

    .line 27
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/g/j0/p;->z:I

    const-string p1, "message_forwarding_id"

    .line 28
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/g/j0/p;->A:I

    return-void
.end method


# virtual methods
.method public a0()J
    .locals 2

    .line 1
    iget v0, p0, Le/a/a/g/j0/p;->f:I

    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public f2()Le/a/a/g/l0/c;
    .locals 37

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Le/a/a/g/j0/p;->t:I

    invoke-virtual {v0, v1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 2
    iget v1, v0, Le/a/a/g/j0/p;->a:I

    invoke-virtual {v0, v1}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v3

    .line 3
    iget v1, v0, Le/a/a/g/j0/p;->b:I

    invoke-virtual {v0, v1}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v5

    .line 4
    iget v1, v0, Le/a/a/g/j0/p;->c:I

    invoke-virtual {v0, v1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v7

    .line 5
    iget v1, v0, Le/a/a/g/j0/p;->d:I

    invoke-virtual {v0, v1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v8

    .line 6
    iget v1, v0, Le/a/a/g/j0/p;->e:I

    invoke-virtual {v0, v1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v23, :cond_2

    .line 7
    invoke-interface/range {v23 .. v23}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-nez v10, :cond_1

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v10, 0x1

    :goto_2
    if-nez v10, :cond_3

    invoke-virtual/range {p0 .. p0}, Le/a/a/g/j0/p;->a0()J

    move-result-wide v10

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->hashCode()I

    move-result v12

    int-to-long v12, v12

    add-long/2addr v10, v12

    goto :goto_3

    :cond_3
    invoke-virtual/range {p0 .. p0}, Le/a/a/g/j0/p;->a0()J

    move-result-wide v10

    .line 8
    :goto_3
    iget v12, v0, Le/a/a/g/j0/p;->g:I

    invoke-virtual {v0, v12}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "getString(entityType)"

    invoke-static {v12, v13}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget v13, v0, Le/a/a/g/j0/p;->h:I

    invoke-virtual {v0, v13}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    const-string v14, "Uri.parse(getString(entityContent))"

    invoke-static {v13, v14}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget v14, v0, Le/a/a/g/j0/p;->i:I

    invoke-virtual {v0, v14}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v14

    .line 11
    iget v15, v0, Le/a/a/g/j0/p;->j:I

    invoke-virtual {v0, v15}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v15

    .line 12
    iget v2, v0, Le/a/a/g/j0/p;->k:I

    invoke-virtual {v0, v2}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v17

    .line 13
    iget v2, v0, Le/a/a/g/j0/p;->l:I

    invoke-virtual {v0, v2}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v18

    .line 14
    iget v2, v0, Le/a/a/g/j0/p;->m:I

    invoke-virtual {v0, v2}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v19, 0x0

    if-eqz v2, :cond_4

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v20, v2

    goto :goto_4

    :cond_4
    move-object/from16 v20, v19

    .line 15
    :goto_4
    iget v2, v0, Le/a/a/g/j0/p;->n:I

    invoke-virtual {v0, v2}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 16
    iget v2, v0, Le/a/a/g/j0/p;->o:I

    invoke-virtual {v0, v2}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 17
    iget v2, v0, Le/a/a/g/j0/p;->p:I

    invoke-virtual {v0, v2}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v24

    .line 18
    iget v2, v0, Le/a/a/g/j0/p;->s:I

    invoke-virtual {v0, v2}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 19
    iget v2, v0, Le/a/a/g/j0/p;->u:I

    invoke-virtual {v0, v2}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v26

    .line 20
    iget v2, v0, Le/a/a/g/j0/p;->v:I

    invoke-virtual {v0, v2}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v28

    .line 21
    iget v2, v0, Le/a/a/g/j0/p;->w:I

    invoke-virtual {v0, v2}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v9, "getString(participantNormalizedDestination)"

    invoke-static {v2, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iget v9, v0, Le/a/a/g/j0/p;->x:I

    invoke-virtual {v0, v9}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 23
    iget v9, v0, Le/a/a/g/j0/p;->q:I

    invoke-virtual {v0, v9}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v31

    .line 24
    iget v9, v0, Le/a/a/g/j0/p;->r:I

    invoke-virtual {v0, v9}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v32

    .line 25
    iget v9, v0, Le/a/a/g/j0/p;->y:I

    invoke-virtual {v0, v9}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v33

    .line 26
    iget v9, v0, Le/a/a/g/j0/p;->z:I

    invoke-virtual {v0, v9}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v34

    .line 27
    iget v9, v0, Le/a/a/g/j0/p;->A:I

    invoke-virtual {v0, v9}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v35, v2

    iget v2, v0, Le/a/a/g/j0/p;->d:I

    invoke-virtual {v0, v2}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v2

    const/4 v0, 0x2

    if-ne v2, v0, :cond_5

    const/4 v2, 0x1

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    if-eqz v2, :cond_6

    move-object v0, v9

    goto :goto_6

    :cond_6
    move-object/from16 v0, v19

    .line 28
    :goto_6
    new-instance v36, Le/a/a/g/l0/c;

    move-object/from16 v29, v35

    move-object/from16 v2, v36

    move v9, v1

    move/from16 v16, v17

    move/from16 v17, v18

    move-object/from16 v18, v20

    move-object/from16 v19, v21

    move-object/from16 v20, v22

    move/from16 v21, v24

    move-object/from16 v22, v25

    move-wide/from16 v24, v26

    move/from16 v26, v28

    move-object/from16 v27, v29

    move-object/from16 v28, v30

    move-object/from16 v29, v31

    move-object/from16 v30, v32

    move-object/from16 v31, v34

    move-object/from16 v32, v33

    move-object/from16 v33, v0

    invoke-direct/range {v2 .. v33}, Le/a/a/g/l0/c;-><init>(JJIIZJLjava/lang/String;Landroid/net/Uri;IIIILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v36
.end method
