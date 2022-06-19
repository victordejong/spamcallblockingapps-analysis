.class public final Le/a/a/g/j0/k;
.super Landroid/database/CursorWrapper;
.source "SourceFile"

# interfaces
.implements Le/a/a/g/j0/j;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 1

    const-string v0, "cursor"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    const-string p1, "_id"

    .line 2
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/g/j0/k;->a:I

    const-string p1, "event"

    .line 3
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/g/j0/k;->b:I

    const-string p1, "im_group_id"

    .line 4
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/g/j0/k;->c:I

    const-string p1, "reference_raw_id"

    .line 5
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/g/j0/k;->d:I

    const-string p1, "seq_number"

    .line 6
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/g/j0/k;->e:I

    const-string p1, "event_type"

    .line 7
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/g/j0/k;->f:I

    return-void
.end method


# virtual methods
.method public W1()Lcom/truecaller/messaging/data/types/UnprocessedEvent;
    .locals 9

    .line 1
    new-instance v8, Lcom/truecaller/messaging/data/types/UnprocessedEvent;

    .line 2
    iget v0, p0, Le/a/a/g/j0/k;->a:I

    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v1

    .line 3
    iget v0, p0, Le/a/a/g/j0/k;->b:I

    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getBlob(I)[B

    move-result-object v2

    const-string v0, "getBlob(eventData)"

    invoke-static {v2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget v0, p0, Le/a/a/g/j0/k;->c:I

    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v0, "getString(groupId)"

    invoke-static {v3, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget v0, p0, Le/a/a/g/j0/k;->d:I

    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v0, "getString(referenceRawId)"

    invoke-static {v4, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget v0, p0, Le/a/a/g/j0/k;->e:I

    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v5

    .line 7
    iget v0, p0, Le/a/a/g/j0/k;->f:I

    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v7

    move-object v0, v8

    .line 8
    invoke-direct/range {v0 .. v7}, Lcom/truecaller/messaging/data/types/UnprocessedEvent;-><init>(I[BLjava/lang/String;Ljava/lang/String;JI)V

    return-object v8
.end method
