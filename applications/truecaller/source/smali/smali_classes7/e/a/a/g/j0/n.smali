.class public final Le/a/a/g/j0/n;
.super Landroid/database/CursorWrapper;
.source "SourceFile"

# interfaces
.implements Le/a/a/g/j0/m;


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


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 1

    const-string v0, "cursor"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    const-string p1, "media_coversation_id"

    .line 2
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/g/j0/n;->a:I

    const-string p1, "media_size"

    .line 3
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/g/j0/n;->b:I

    const-string p1, "participant_type"

    .line 4
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/g/j0/n;->c:I

    const-string p1, "participant_address"

    .line 5
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/g/j0/n;->d:I

    const-string p1, "participant_name"

    .line 6
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/g/j0/n;->e:I

    const-string p1, "participant_avatar"

    .line 7
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/g/j0/n;->f:I

    const-string p1, "participant_pb_id"

    .line 8
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/g/j0/n;->g:I

    const-string p1, "group_title"

    .line 9
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/g/j0/n;->h:I

    const-string p1, "group_avatar"

    .line 10
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/g/j0/n;->i:I

    return-void
.end method


# virtual methods
.method public getItem()Le/a/a/g/j0/l;
    .locals 28

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Lcom/truecaller/data/entity/messaging/Participant$b;

    iget v2, v0, Le/a/a/g/j0/n;->c:I

    invoke-virtual {v0, v2}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v2

    invoke-direct {v1, v2}, Lcom/truecaller/data/entity/messaging/Participant$b;-><init>(I)V

    .line 2
    iget v2, v0, Le/a/a/g/j0/n;->d:I

    invoke-virtual {v0, v2}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3
    iput-object v2, v1, Lcom/truecaller/data/entity/messaging/Participant$b;->e:Ljava/lang/String;

    .line 4
    iget v2, v0, Le/a/a/g/j0/n;->e:I

    invoke-virtual {v0, v2}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 5
    iput-object v2, v1, Lcom/truecaller/data/entity/messaging/Participant$b;->l:Ljava/lang/String;

    .line 6
    iget v2, v0, Le/a/a/g/j0/n;->g:I

    invoke-virtual {v0, v2}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v2

    .line 7
    iput-wide v2, v1, Lcom/truecaller/data/entity/messaging/Participant$b;->o:J

    .line 8
    iget v2, v0, Le/a/a/g/j0/n;->f:I

    invoke-virtual {v0, v2}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 9
    iput-object v2, v1, Lcom/truecaller/data/entity/messaging/Participant$b;->m:Ljava/lang/String;

    .line 10
    invoke-virtual {v1}, Lcom/truecaller/data/entity/messaging/Participant$b;->a()Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object v1

    const-string v2, "Participant.Builder(getI\u2026\n                .build()"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget v2, v1, Lcom/truecaller/data/entity/messaging/Participant;->b:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 12
    new-instance v2, Lcom/truecaller/messaging/data/types/ImGroupInfo;

    move-object v4, v2

    .line 13
    iget-object v3, v1, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    move-object v5, v3

    const-string v6, "participant.normalizedAddress"

    invoke-static {v3, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget v3, v0, Le/a/a/g/j0/n;->h:I

    invoke-virtual {v0, v3}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 15
    iget v3, v0, Le/a/a/g/j0/n;->i:I

    invoke-virtual {v0, v3}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    const/4 v11, -0x1

    .line 16
    new-instance v3, Lcom/truecaller/messaging/data/types/ImGroupPermissions;

    move-object v12, v3

    const/4 v13, -0x1

    const/4 v14, 0x0

    invoke-direct {v3, v13, v13, v14, v14}, Lcom/truecaller/messaging/data/types/ImGroupPermissions;-><init>(IIII)V

    const/4 v14, -0x1

    const-wide/16 v15, -0x1

    const-wide/16 v17, -0x1

    const/16 v19, 0x0

    const-wide/16 v20, -0x1

    const-wide/16 v22, -0x1

    const/16 v24, -0x1

    const/16 v25, -0x1

    const/16 v26, 0x0

    const/high16 v27, 0x10000

    .line 17
    invoke-direct/range {v4 .. v27}, Lcom/truecaller/messaging/data/types/ImGroupInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILcom/truecaller/messaging/data/types/ImGroupPermissions;IIJJZJJIILjava/lang/String;I)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 18
    :goto_0
    new-instance v3, Lcom/truecaller/messaging/data/types/Conversation$b;

    invoke-direct {v3}, Lcom/truecaller/messaging/data/types/Conversation$b;-><init>()V

    .line 19
    iget v4, v0, Le/a/a/g/j0/n;->a:I

    invoke-virtual {v0, v4}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v4

    .line 20
    iput-wide v4, v3, Lcom/truecaller/messaging/data/types/Conversation$b;->a:J

    .line 21
    invoke-static {v1}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 22
    iget-object v4, v3, Lcom/truecaller/messaging/data/types/Conversation$b;->m:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 23
    iget-object v4, v3, Lcom/truecaller/messaging/data/types/Conversation$b;->m:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 24
    iput-object v2, v3, Lcom/truecaller/messaging/data/types/Conversation$b;->y:Lcom/truecaller/messaging/data/types/ImGroupInfo;

    .line 25
    invoke-virtual {v3}, Lcom/truecaller/messaging/data/types/Conversation$b;->b()Lcom/truecaller/messaging/data/types/Conversation;

    move-result-object v1

    const-string v2, "Conversation.Builder()\n \u2026\n                .build()"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    new-instance v2, Le/a/a/g/j0/l;

    .line 27
    iget v3, v0, Le/a/a/g/j0/n;->b:I

    invoke-virtual {v0, v3}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v3

    .line 28
    invoke-direct {v2, v1, v3, v4}, Le/a/a/g/j0/l;-><init>(Lcom/truecaller/messaging/data/types/Conversation;J)V

    return-object v2
.end method
