.class public final Le/a/a/g/j0/u;
.super Landroid/database/CursorWrapper;
.source "SourceFile"

# interfaces
.implements Le/a/a/g/j0/t;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I


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

    iput p1, p0, Le/a/a/g/j0/u;->a:I

    const-string p1, "message_conversation_id"

    .line 3
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/g/j0/u;->b:I

    const-string p1, "message_delivery_status"

    .line 4
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/g/j0/u;->c:I

    const-string p1, "participant_name"

    .line 5
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/g/j0/u;->d:I

    return-void
.end method


# virtual methods
.method public C0()Le/a/a/g/l0/e;
    .locals 8

    .line 1
    new-instance v7, Le/a/a/g/l0/e;

    .line 2
    iget v0, p0, Le/a/a/g/j0/u;->a:I

    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v1

    .line 3
    iget v0, p0, Le/a/a/g/j0/u;->b:I

    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v3

    .line 4
    iget v0, p0, Le/a/a/g/j0/u;->c:I

    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v5

    .line 5
    iget v0, p0, Le/a/a/g/j0/u;->d:I

    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v0, v7

    .line 6
    invoke-direct/range {v0 .. v6}, Le/a/a/g/l0/e;-><init>(JJILjava/lang/String;)V

    return-object v7
.end method
