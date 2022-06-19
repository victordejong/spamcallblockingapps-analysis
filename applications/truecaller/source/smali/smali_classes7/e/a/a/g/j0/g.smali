.class public final Le/a/a/g/j0/g;
.super Landroid/database/CursorWrapper;
.source "SourceFile"

# interfaces
.implements Le/a/a/g/j0/f;


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


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 1

    const-string v0, "cursor"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    const-string p1, "im_group_id"

    .line 2
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/g/j0/g;->a:I

    const-string p1, "title"

    .line 3
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/g/j0/g;->b:I

    const-string p1, "avatar"

    .line 4
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/g/j0/g;->c:I

    const-string p1, "invited_date"

    .line 5
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/g/j0/g;->d:I

    const-string p1, "invited_by"

    .line 6
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/g/j0/g;->e:I

    const-string p1, "roles"

    .line 7
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/g/j0/g;->f:I

    const-string p1, "actions"

    .line 8
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/g/j0/g;->g:I

    const-string p1, "role_update_restriction_mask"

    .line 9
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/g/j0/g;->h:I

    const-string p1, "role_update_mask"

    .line 10
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/g/j0/g;->i:I

    const-string p1, "self_role_update_mask"

    .line 11
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/g/j0/g;->j:I

    const-string p1, "notification_settings"

    .line 12
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/g/j0/g;->k:I

    const-string p1, "history_status"

    .line 13
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/g/j0/g;->l:I

    const-string p1, "history_sequence_num"

    .line 14
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/g/j0/g;->m:I

    const-string p1, "history_message_count"

    .line 15
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/g/j0/g;->n:I

    const-string p1, "are_participants_stale"

    .line 16
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/g/j0/g;->o:I

    const-string p1, "current_sequence_number"

    .line 17
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/g/j0/g;->p:I

    const-string p1, "invite_notification_date"

    .line 18
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/g/j0/g;->q:I

    const-string p1, "invite_notification_count"

    .line 19
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/g/j0/g;->r:I

    const-string p1, "join_mode"

    .line 20
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/g/j0/g;->s:I

    const-string p1, "invite_key"

    .line 21
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/g/j0/g;->t:I

    return-void
.end method


# virtual methods
.method public h()Lcom/truecaller/messaging/data/types/ImGroupInfo;
    .locals 25

    move-object/from16 v0, p0

    .line 1
    new-instance v24, Lcom/truecaller/messaging/data/types/ImGroupInfo;

    .line 2
    iget v1, v0, Le/a/a/g/j0/g;->a:I

    invoke-virtual {v0, v1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v1, "getString(imGroupId)"

    invoke-static {v2, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget v1, v0, Le/a/a/g/j0/g;->b:I

    invoke-virtual {v0, v1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 4
    iget v1, v0, Le/a/a/g/j0/g;->c:I

    invoke-virtual {v0, v1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 5
    iget v1, v0, Le/a/a/g/j0/g;->d:I

    invoke-virtual {v0, v1}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v5

    .line 6
    iget v1, v0, Le/a/a/g/j0/g;->e:I

    invoke-virtual {v0, v1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 7
    iget v1, v0, Le/a/a/g/j0/g;->f:I

    invoke-virtual {v0, v1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v8

    .line 8
    new-instance v9, Lcom/truecaller/messaging/data/types/ImGroupPermissions;

    .line 9
    iget v1, v0, Le/a/a/g/j0/g;->g:I

    invoke-virtual {v0, v1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v1

    .line 10
    iget v10, v0, Le/a/a/g/j0/g;->h:I

    invoke-virtual {v0, v10}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v10

    .line 11
    iget v11, v0, Le/a/a/g/j0/g;->i:I

    invoke-virtual {v0, v11}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v11

    .line 12
    iget v12, v0, Le/a/a/g/j0/g;->j:I

    invoke-virtual {v0, v12}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v12

    .line 13
    invoke-direct {v9, v1, v10, v11, v12}, Lcom/truecaller/messaging/data/types/ImGroupPermissions;-><init>(IIII)V

    .line 14
    iget v1, v0, Le/a/a/g/j0/g;->k:I

    invoke-virtual {v0, v1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v10

    .line 15
    iget v1, v0, Le/a/a/g/j0/g;->l:I

    invoke-virtual {v0, v1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v11

    .line 16
    iget v1, v0, Le/a/a/g/j0/g;->m:I

    invoke-virtual {v0, v1}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v12

    .line 17
    iget v1, v0, Le/a/a/g/j0/g;->n:I

    invoke-virtual {v0, v1}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v14

    .line 18
    iget v1, v0, Le/a/a/g/j0/g;->o:I

    invoke-virtual {v0, v1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move/from16 v16, v1

    .line 19
    iget v1, v0, Le/a/a/g/j0/g;->p:I

    invoke-virtual {v0, v1}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v17

    .line 20
    iget v1, v0, Le/a/a/g/j0/g;->q:I

    invoke-virtual {v0, v1}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v19

    .line 21
    iget v1, v0, Le/a/a/g/j0/g;->r:I

    invoke-virtual {v0, v1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v21

    .line 22
    iget v1, v0, Le/a/a/g/j0/g;->s:I

    invoke-virtual {v0, v1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v22

    .line 23
    iget v1, v0, Le/a/a/g/j0/g;->t:I

    invoke-virtual {v0, v1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v1, v24

    .line 24
    invoke-direct/range {v1 .. v23}, Lcom/truecaller/messaging/data/types/ImGroupInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILcom/truecaller/messaging/data/types/ImGroupPermissions;IIJJZJJIILjava/lang/String;)V

    return-object v24
.end method
