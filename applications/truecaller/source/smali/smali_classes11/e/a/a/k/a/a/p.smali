.class public final Le/a/a/k/a/a/p;
.super Landroid/database/CursorWrapper;
.source "SourceFile"

# interfaces
.implements Le/a/a/k/a/a/o;


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


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 1

    const-string v0, "cursor"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    const-string p1, "im_peer_id"

    .line 2
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/k/a/a/p;->a:I

    const-string p1, "normalized_number"

    .line 3
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/k/a/a/p;->b:I

    const-string p1, "raw_number"

    .line 4
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/k/a/a/p;->c:I

    const-string p1, "name"

    .line 5
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/k/a/a/p;->d:I

    const-string p1, "public_name"

    .line 6
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/k/a/a/p;->e:I

    const-string p1, "image_url"

    .line 7
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/k/a/a/p;->f:I

    const-string p1, "roles"

    .line 8
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/k/a/a/p;->g:I

    const-string p1, "phonebook_id"

    .line 9
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/k/a/a/p;->h:I

    const-string p1, "tc_contact_id"

    .line 10
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/k/a/a/p;->i:I

    const-string p1, "source"

    .line 11
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/k/a/a/p;->j:I

    const-string p1, "search_time"

    .line 12
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/k/a/a/p;->k:I

    const-string p1, "cache_control"

    .line 13
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/k/a/a/p;->l:I

    return-void
.end method


# virtual methods
.method public i1()Le/a/k3/l/k/a;
    .locals 19

    move-object/from16 v0, p0

    .line 1
    new-instance v16, Le/a/k3/l/k/a;

    .line 2
    iget v1, v0, Le/a/a/k/a/a/p;->a:I

    invoke-virtual {v0, v1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v1, "getString(imPeerId)"

    invoke-static {v2, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget v1, v0, Le/a/a/k/a/a/p;->g:I

    invoke-virtual {v0, v1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v3

    .line 4
    iget v1, v0, Le/a/a/k/a/a/p;->b:I

    invoke-virtual {v0, v1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 5
    iget v1, v0, Le/a/a/k/a/a/p;->c:I

    invoke-virtual {v0, v1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 6
    iget v1, v0, Le/a/a/k/a/a/p;->d:I

    invoke-virtual {v0, v1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 7
    iget v1, v0, Le/a/a/k/a/a/p;->e:I

    invoke-virtual {v0, v1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 8
    iget v1, v0, Le/a/a/k/a/a/p;->f:I

    invoke-virtual {v0, v1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 9
    iget v1, v0, Le/a/a/k/a/a/p;->h:I

    invoke-virtual {v0, v1}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v9

    .line 10
    iget v1, v0, Le/a/a/k/a/a/p;->i:I

    invoke-virtual {v0, v1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 11
    iget v1, v0, Le/a/a/k/a/a/p;->j:I

    invoke-virtual {v0, v1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v12

    .line 12
    iget v1, v0, Le/a/a/k/a/a/p;->k:I

    invoke-virtual {v0, v1}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v13

    .line 13
    iget v1, v0, Le/a/a/k/a/a/p;->l:I

    invoke-virtual {v0, v1}, Landroid/database/CursorWrapper;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget v1, v0, Le/a/a/k/a/a/p;->l:I

    invoke-virtual {v0, v1}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_0
    move-object v15, v1

    move-object/from16 v1, v16

    .line 14
    invoke-direct/range {v1 .. v15}, Le/a/k3/l/k/a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;IJLjava/lang/Long;)V

    return-object v16
.end method
