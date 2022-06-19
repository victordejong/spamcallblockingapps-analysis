.class public final Le/a/a/g/j0/e;
.super Landroid/database/CursorWrapper;
.source "SourceFile"

# interfaces
.implements Le/a/a/g/j0/d;


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


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 1

    const-string v0, "cursor"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    const-string p1, "conversation_id"

    .line 2
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/g/j0/e;->a:I

    const-string p1, "group_id"

    .line 3
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/g/j0/e;->b:I

    const-string p1, "group_name"

    .line 4
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/g/j0/e;->c:I

    const-string p1, "group_avatar"

    .line 5
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/g/j0/e;->d:I

    const-string p1, "group_roles"

    .line 6
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/g/j0/e;->e:I

    const-string p1, "participants_names"

    .line 7
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/g/j0/e;->f:I

    const-string p1, "participants_normalized_addresses"

    .line 8
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/g/j0/e;->g:I

    const-string p1, "snippet_text"

    .line 9
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/g/j0/e;->h:I

    const-string p1, "archived_date"

    .line 10
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/g/j0/e;->i:I

    const-string p1, "latest_message_media_count"

    .line 11
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/g/j0/e;->j:I

    const-string p1, "latest_message_media_type"

    .line 12
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/g/j0/e;->k:I

    const-string p1, "latest_message_status"

    .line 13
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/g/j0/e;->l:I

    const-string p1, "latest_message_transport"

    .line 14
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/g/j0/e;->m:I

    const-string p1, "date_sorting"

    .line 15
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/g/j0/e;->n:I

    return-void
.end method


# virtual methods
.method public Q1()Lcom/truecaller/messaging/data/types/Conversation;
    .locals 28

    move-object/from16 v0, p0

    .line 1
    sget-object v1, Ls1/u/s;->a:Ls1/u/s;

    iget v2, v0, Le/a/a/g/j0/e;->b:I

    invoke-virtual {v0, v2}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 2
    new-instance v2, Lcom/truecaller/messaging/data/types/ImGroupInfo;

    move-object v4, v2

    .line 3
    iget v5, v0, Le/a/a/g/j0/e;->b:I

    invoke-virtual {v0, v5}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    const-string v7, "getString(groupId)"

    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget v6, v0, Le/a/a/g/j0/e;->c:I

    invoke-virtual {v0, v6}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 5
    iget v7, v0, Le/a/a/g/j0/e;->d:I

    invoke-virtual {v0, v7}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    .line 6
    iget v11, v0, Le/a/a/g/j0/e;->e:I

    invoke-virtual {v0, v11}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v11

    .line 7
    new-instance v13, Lcom/truecaller/messaging/data/types/ImGroupPermissions;

    move-object v12, v13

    invoke-direct {v13, v3, v3, v3, v3}, Lcom/truecaller/messaging/data/types/ImGroupPermissions;-><init>(IIII)V

    const/4 v13, -0x1

    const/4 v14, -0x1

    const-wide/16 v15, -0x1

    const-wide/16 v17, -0x1

    const/16 v19, 0x0

    const-wide/16 v20, -0x1

    const-wide/16 v22, -0x1

    const/16 v24, 0x0

    const/16 v25, -0x1

    const/16 v26, 0x0

    const/high16 v27, 0x10000

    .line 8
    invoke-direct/range {v4 .. v27}, Lcom/truecaller/messaging/data/types/ImGroupInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ILcom/truecaller/messaging/data/types/ImGroupPermissions;IIJJZJJIILjava/lang/String;I)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_2

    .line 9
    iget v4, v0, Le/a/a/g/j0/e;->f:I

    invoke-virtual {v0, v4}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "getString(participantsNames)"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, ","

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x6

    invoke-static {v4, v6, v3, v3, v7}, Ls1/f0/v;->U(Ljava/lang/CharSequence;[Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object v4

    .line 10
    iget v6, v0, Le/a/a/g/j0/e;->g:I

    invoke-virtual {v0, v6}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v8, "getString(participantsNormalizedAddresses)"

    invoke-static {v6, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5, v3, v3, v7}, Ls1/f0/v;->U(Ljava/lang/CharSequence;[Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object v3

    .line 11
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ne v5, v6, :cond_2

    .line 12
    invoke-static {v4, v3}, Ls1/u/i;->i1(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 13
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v1, v4}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 14
    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 15
    check-cast v4, Ls1/k;

    .line 16
    new-instance v5, Lcom/truecaller/data/entity/messaging/Participant$b;

    const/4 v6, 0x3

    invoke-direct {v5, v6}, Lcom/truecaller/data/entity/messaging/Participant$b;-><init>(I)V

    .line 17
    iget-object v6, v4, Ls1/k;->a:Ljava/lang/Object;

    .line 18
    check-cast v6, Ljava/lang/String;

    .line 19
    iput-object v6, v5, Lcom/truecaller/data/entity/messaging/Participant$b;->l:Ljava/lang/String;

    .line 20
    iget-object v4, v4, Ls1/k;->b:Ljava/lang/Object;

    .line 21
    check-cast v4, Ljava/lang/String;

    .line 22
    iput-object v4, v5, Lcom/truecaller/data/entity/messaging/Participant$b;->e:Ljava/lang/String;

    .line 23
    invoke-virtual {v5}, Lcom/truecaller/data/entity/messaging/Participant$b;->a()Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object v4

    const-string v5, "Participant.Builder(True\u2026                 .build()"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    move-object v1, v3

    .line 24
    :cond_2
    new-instance v3, Lcom/truecaller/messaging/data/types/Conversation$b;

    invoke-direct {v3}, Lcom/truecaller/messaging/data/types/Conversation$b;-><init>()V

    .line 25
    iget v4, v0, Le/a/a/g/j0/e;->a:I

    invoke-virtual {v0, v4}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v4

    .line 26
    iput-wide v4, v3, Lcom/truecaller/messaging/data/types/Conversation$b;->a:J

    .line 27
    iget v4, v0, Le/a/a/g/j0/e;->h:I

    invoke-virtual {v0, v4}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 28
    iput-object v4, v3, Lcom/truecaller/messaging/data/types/Conversation$b;->j:Ljava/lang/String;

    .line 29
    iput-object v2, v3, Lcom/truecaller/messaging/data/types/Conversation$b;->y:Lcom/truecaller/messaging/data/types/ImGroupInfo;

    .line 30
    new-instance v2, Lw3/b/a/b;

    iget v4, v0, Le/a/a/g/j0/e;->i:I

    invoke-virtual {v0, v4}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Lw3/b/a/b;-><init>(J)V

    .line 31
    iput-object v2, v3, Lcom/truecaller/messaging/data/types/Conversation$b;->G:Lw3/b/a/b;

    .line 32
    iget v2, v0, Le/a/a/g/j0/e;->j:I

    invoke-virtual {v0, v2}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v2

    .line 33
    iput v2, v3, Lcom/truecaller/messaging/data/types/Conversation$b;->f:I

    .line 34
    iget v2, v0, Le/a/a/g/j0/e;->k:I

    invoke-virtual {v0, v2}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 35
    iput-object v2, v3, Lcom/truecaller/messaging/data/types/Conversation$b;->g:Ljava/lang/String;

    .line 36
    iget v2, v0, Le/a/a/g/j0/e;->l:I

    invoke-virtual {v0, v2}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v2

    .line 37
    iput v2, v3, Lcom/truecaller/messaging/data/types/Conversation$b;->e:I

    .line 38
    iget v2, v0, Le/a/a/g/j0/e;->m:I

    invoke-virtual {v0, v2}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v2

    .line 39
    iput v2, v3, Lcom/truecaller/messaging/data/types/Conversation$b;->x:I

    .line 40
    iget-object v2, v3, Lcom/truecaller/messaging/data/types/Conversation$b;->m:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 41
    iget-object v2, v3, Lcom/truecaller/messaging/data/types/Conversation$b;->m:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 42
    new-instance v1, Lw3/b/a/b;

    iget v2, v0, Le/a/a/g/j0/e;->n:I

    invoke-virtual {v0, v2}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Lw3/b/a/b;-><init>(J)V

    .line 43
    iput-object v1, v3, Lcom/truecaller/messaging/data/types/Conversation$b;->i:Lw3/b/a/b;

    .line 44
    invoke-virtual {v3}, Lcom/truecaller/messaging/data/types/Conversation$b;->b()Lcom/truecaller/messaging/data/types/Conversation;

    move-result-object v1

    const-string v2, "Conversation.Builder()\n \u2026e)))\n            .build()"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method
