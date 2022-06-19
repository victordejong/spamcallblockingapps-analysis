.class public final Le/a/a/k/a/h2/c;
.super Landroid/database/CursorWrapper;
.source "SourceFile"

# interfaces
.implements Le/a/a/k/a/h2/b;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 1

    const-string v0, "cursor"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    const-string p1, "raw_message_id"

    .line 2
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/k/a/h2/c;->a:I

    const-string p1, "sequence_number"

    .line 3
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/k/a/h2/c;->b:I

    const-string p1, "participant_type"

    .line 4
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/k/a/h2/c;->c:I

    const-string p1, "normalized_destination"

    .line 5
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/k/a/h2/c;->d:I

    const-string p1, "im_peer_id"

    .line 6
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/k/a/h2/c;->e:I

    const-string p1, "group_id"

    .line 7
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/k/a/h2/c;->f:I

    const-string p1, "filter_action"

    .line 8
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/k/a/h2/c;->g:I

    return-void
.end method


# virtual methods
.method public G1()Le/a/a/k/a/h2/a;
    .locals 7

    .line 1
    new-instance v6, Le/a/a/k/a/h2/a;

    .line 2
    iget v0, p0, Le/a/a/k/a/h2/c;->a:I

    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v0, "getString(rawMessageId)"

    invoke-static {v1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget v0, p0, Le/a/a/k/a/h2/c;->b:I

    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v2

    .line 4
    iget v0, p0, Le/a/a/k/a/h2/c;->f:I

    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 5
    new-instance v0, Lcom/truecaller/data/entity/messaging/Participant$b;

    iget v5, p0, Le/a/a/k/a/h2/c;->c:I

    invoke-virtual {p0, v5}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v5

    invoke-direct {v0, v5}, Lcom/truecaller/data/entity/messaging/Participant$b;-><init>(I)V

    .line 6
    iget v5, p0, Le/a/a/k/a/h2/c;->d:I

    invoke-virtual {p0, v5}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 7
    iput-object v5, v0, Lcom/truecaller/data/entity/messaging/Participant$b;->e:Ljava/lang/String;

    .line 8
    iget v5, p0, Le/a/a/k/a/h2/c;->e:I

    invoke-virtual {p0, v5}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 9
    iput-object v5, v0, Lcom/truecaller/data/entity/messaging/Participant$b;->c:Ljava/lang/String;

    .line 10
    iget v5, p0, Le/a/a/k/a/h2/c;->g:I

    invoke-virtual {p0, v5}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v5

    .line 11
    iput v5, v0, Lcom/truecaller/data/entity/messaging/Participant$b;->i:I

    .line 12
    invoke-virtual {v0}, Lcom/truecaller/data/entity/messaging/Participant$b;->a()Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object v5

    const-string v0, "Participant.Builder(getI\u2026Action))\n        .build()"

    invoke-static {v5, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v6

    .line 13
    invoke-direct/range {v0 .. v5}, Le/a/a/k/a/h2/a;-><init>(Ljava/lang/String;JLjava/lang/String;Lcom/truecaller/data/entity/messaging/Participant;)V

    return-object v6
.end method
