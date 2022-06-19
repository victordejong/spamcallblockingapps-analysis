.class public final Le/a/a/g/j0/f0;
.super Landroid/database/CursorWrapper;
.source "SourceFile"

# interfaces
.implements Le/a/a/g/j0/e0;


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

    const-string p1, "im_reaction_id"

    .line 2
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/g/j0/f0;->a:I

    const-string p1, "im_reaction_message_id"

    .line 3
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/g/j0/f0;->b:I

    const-string p1, "im_reaction_from_peer_id"

    .line 4
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/g/j0/f0;->c:I

    const-string p1, "im_reaction_emoji"

    .line 5
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/g/j0/f0;->d:I

    const-string p1, "im_reaction_date"

    .line 6
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/g/j0/f0;->e:I

    const-string p1, "im_reaction_status"

    .line 7
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/g/j0/f0;->f:I

    const-string p1, "im_conversation_id"

    .line 8
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/g/j0/f0;->g:I

    const-string p1, "im_group_name"

    .line 9
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/g/j0/f0;->h:I

    const-string p1, "im_participant_number"

    .line 10
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/g/j0/f0;->i:I

    const-string p1, "im_participant_name"

    .line 11
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/g/j0/f0;->j:I

    const-string p1, "im_participant_image_url"

    .line 12
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/g/j0/f0;->k:I

    const-string p1, "im_participant_phonebook_id"

    .line 13
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/g/j0/f0;->l:I

    return-void
.end method


# virtual methods
.method public v1()Ls1/k;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ls1/k<",
            "Lcom/truecaller/messaging/data/types/Reaction;",
            "Lcom/truecaller/data/entity/messaging/Participant;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v13, Lcom/truecaller/messaging/data/types/Reaction;

    .line 2
    iget v0, p0, Le/a/a/g/j0/f0;->a:I

    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v1

    .line 3
    iget v0, p0, Le/a/a/g/j0/f0;->b:I

    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v3

    .line 4
    iget v0, p0, Le/a/a/g/j0/f0;->c:I

    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v0, "getString(fromPeerIdIndex)"

    invoke-static {v5, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget v0, p0, Le/a/a/g/j0/f0;->d:I

    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 6
    iget v0, p0, Le/a/a/g/j0/f0;->e:I

    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v7

    .line 7
    iget v0, p0, Le/a/a/g/j0/f0;->f:I

    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v9

    .line 8
    iget v0, p0, Le/a/a/g/j0/f0;->g:I

    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v10

    .line 9
    iget v0, p0, Le/a/a/g/j0/f0;->h:I

    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object v0, v13

    .line 10
    invoke-direct/range {v0 .. v12}, Lcom/truecaller/messaging/data/types/Reaction;-><init>(JJLjava/lang/String;Ljava/lang/String;JIJLjava/lang/String;)V

    .line 11
    iget-object v0, v13, Lcom/truecaller/messaging/data/types/Reaction;->c:Ljava/lang/String;

    .line 12
    iget v1, p0, Le/a/a/g/j0/f0;->i:I

    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 13
    new-instance v2, Lcom/truecaller/data/entity/messaging/Participant$b;

    if-nez v1, :cond_0

    const/4 v3, 0x3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-direct {v2, v3}, Lcom/truecaller/data/entity/messaging/Participant$b;-><init>(I)V

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v0

    .line 14
    :goto_1
    iput-object v1, v2, Lcom/truecaller/data/entity/messaging/Participant$b;->e:Ljava/lang/String;

    .line 15
    iput-object v0, v2, Lcom/truecaller/data/entity/messaging/Participant$b;->c:Ljava/lang/String;

    .line 16
    iget v0, p0, Le/a/a/g/j0/f0;->j:I

    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 17
    iput-object v0, v2, Lcom/truecaller/data/entity/messaging/Participant$b;->l:Ljava/lang/String;

    .line 18
    iget v0, p0, Le/a/a/g/j0/f0;->k:I

    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const-string v0, ""

    .line 19
    :goto_2
    iput-object v0, v2, Lcom/truecaller/data/entity/messaging/Participant$b;->m:Ljava/lang/String;

    .line 20
    iget v0, p0, Le/a/a/g/j0/f0;->l:I

    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v0

    .line 21
    iput-wide v0, v2, Lcom/truecaller/data/entity/messaging/Participant$b;->o:J

    .line 22
    invoke-virtual {v2}, Lcom/truecaller/data/entity/messaging/Participant$b;->a()Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object v0

    const-string v1, "Participant.Builder(if (\u2026ex))\n            .build()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    new-instance v1, Ls1/k;

    invoke-direct {v1, v13, v0}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method
